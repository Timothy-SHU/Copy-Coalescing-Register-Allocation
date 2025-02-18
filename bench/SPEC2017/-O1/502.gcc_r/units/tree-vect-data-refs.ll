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
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.VEC_vec_void_p_base = type { i32, i32, [1 x ptr] }
%struct._stmt_vec_info = type { i32, ptr, ptr, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr, i8, %struct.anon, i32, ptr }
%struct.anon = type { i32, i32 }
%struct._loop_vec_info = type { ptr, ptr, ptr, ptr, i32, i8, i32, ptr, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32 }
%struct._bb_vec_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_dr_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@vect_dump = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [33 x i8] c"=== vect_analyze_dependences ===\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"not vectorized: unsupported unaligned load.\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"not vectorized: unsupported unaligned store.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Vectorizing an unaligned access.\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"=== vect_enhance_data_refs_alignment ===\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"vector alignment may not be reachable\00", align 1
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@.str.6 = private unnamed_addr constant [18 x i8] c"Try peeling by %d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Alignment of access forced using peeling.\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"Peeling for alignment will be applied.\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"tree-vect-data-refs.c\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@flag_tree_vect_loop_version = external local_unnamed_addr global i32, align 4
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [45 x i8] c"Alignment of access forced using versioning.\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Versioning for alignment will be applied.\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"=== vect_analyze_data_refs_alignment ===\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"not vectorized: can't calculate alignment for data ref.\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"=== vect_analyze_data_ref_accesses ===\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"not vectorized: complicated access pattern.\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"=== vect_prune_runtime_alias_test_list ===\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"found equal ranges \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.21 = private unnamed_addr constant [72 x i8] c"disable versioning for alias - max number of generated checks exceeded.\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"=== vect_analyze_data_refs ===\0A\00", align 1
@.str.23 = private unnamed_addr constant [88 x i8] c"not vectorized: loop contains function calls or data references that cannot be analyzed\00", align 1
@.str.24 = private unnamed_addr constant [95 x i8] c"not vectorized: basic block contains function calls or data references that cannot be analyzed\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"not vectorized: unhandled data-ref \00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"not vectorized: data ref analysis failed \00", align 1
@.str.27 = private unnamed_addr constant [46 x i8] c"not vectorized: base addr of dr is a constant\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.28 = private unnamed_addr constant [24 x i8] c"analyze in outer-loop: \00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"failed: bit offset alignment.\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"failed: evolution of base is not affine.\0A\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"evolution of offset is not affine.\0A\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\09outer base_address: \00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"\0A\09outer offset from base address: \00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"\0A\09outer constant offset from base address: \00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"\0A\09outer step: \00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"\0A\09outer aligned to: \00", align 1
@.str.37 = private unnamed_addr constant [49 x i8] c"not vectorized: more than one data ref in stmt: \00", align 1
@.str.38 = private unnamed_addr constant [38 x i8] c"not vectorized: no vectype for stmt: \00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c" scalar_type: \00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"vect_\00", align 1
@.str.41 = private unnamed_addr constant [6 x i8] c"stmp_\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"vect_p\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"batmp\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"base_off\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"created \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.47 = private unnamed_addr constant [41 x i8] c"create vector-pointer variable to type: \00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"  vectorizing an array ref: \00", align 1
@.str.49 = private unnamed_addr constant [41 x i8] c"  vectorizing a record based array ref: \00", align 1
@.str.50 = private unnamed_addr constant [30 x i8] c"  vectorizing a pointer ref: \00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"var_\00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"no optab for interleave.\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"interleave op not supported by target.\00", align 1
@.str.54 = private unnamed_addr constant [16 x i8] c"vect_inter_high\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"vect_inter_low\00", align 1
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@.str.56 = private unnamed_addr constant [24 x i8] c"no optab for perm_even.\00", align 1
@.str.57 = private unnamed_addr constant [38 x i8] c"perm_even op not supported by target.\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"no optab for perm_odd.\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"perm_odd op not supported by target.\00", align 1
@.str.60 = private unnamed_addr constant [15 x i8] c"vect_perm_even\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"vect_perm_odd\00", align 1
@optab_table = external local_unnamed_addr global [159 x %struct.optab_d], align 16
@.str.62 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@stmt_vec_info_vec = external local_unnamed_addr global ptr, align 8
@.str.63 = private unnamed_addr constant [20 x i8] c"./tree-vectorizer.h\00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.64 = private unnamed_addr constant [67 x i8] c"versioning for alias required: can't determine dependence between \00", align 1
@.str.65 = private unnamed_addr constant [36 x i8] c"can't determine dependence between \00", align 1
@.str.66 = private unnamed_addr constant [31 x i8] c"determined dependence between \00", align 1
@.str.67 = private unnamed_addr constant [52 x i8] c"versioning for alias required: bad dist vector for \00", align 1
@.str.68 = private unnamed_addr constant [27 x i8] c"dependence distance  = %d.\00", align 1
@.str.69 = private unnamed_addr constant [34 x i8] c"accesses have the same alignment.\00", align 1
@.str.70 = private unnamed_addr constant [44 x i8] c"dependence distance modulo vf == 0 between \00", align 1
@.str.71 = private unnamed_addr constant [39 x i8] c"dependence distance >= VF or negative.\00", align 1
@.str.72 = private unnamed_addr constant [55 x i8] c"not vectorized, possible dependence between data-refs \00", align 1
@.str.73 = private unnamed_addr constant [23 x i8] c"Detected interleaving \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.74 = private unnamed_addr constant [41 x i8] c"mark for run-time aliasing test between \00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"versioning not supported when optimizing for size.\00", align 1
@.str.76 = private unnamed_addr constant [46 x i8] c"versioning not yet supported for outer-loops.\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"data size =%ld\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c". misalignment = %d. \00", align 1
@.str.79 = private unnamed_addr constant [45 x i8] c"data size does not divide the misalignment.\0A\00", align 1
@.str.80 = private unnamed_addr constant [37 x i8] c"Unknown misalignment, is_packed = %d\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"Setting misalignment to -1.\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"vect_compute_data_ref_alignment:\00", align 1
@.str.83 = private unnamed_addr constant [36 x i8] c"inner step divides the vector-size.\00", align 1
@.str.84 = private unnamed_addr constant [43 x i8] c"inner step doesn't divide the vector-size.\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"Unknown alignment for access: \00", align 1
@flag_section_anchors = external local_unnamed_addr global i32, align 4
@.str.86 = private unnamed_addr constant [31 x i8] c"can't force alignment of ref: \00", align 1
@.str.87 = private unnamed_addr constant [16 x i8] c"force alignment\00", align 1
@.str.88 = private unnamed_addr constant [26 x i8] c"unexpected misalign value\00", align 1
@.str.89 = private unnamed_addr constant [28 x i8] c"misalign = %d bytes of ref \00", align 1
@.str.90 = private unnamed_addr constant [28 x i8] c"bad data-ref access in loop\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"zero step in outer loop.\00", align 1
@.str.92 = private unnamed_addr constant [30 x i8] c"strided access in outer loop.\00", align 1
@.str.93 = private unnamed_addr constant [38 x i8] c"Detected single element interleaving \00", align 1
@.str.94 = private unnamed_addr constant [7 x i8] c" step \00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"not consecutive access\00", align 1
@.str.96 = private unnamed_addr constant [35 x i8] c"Two store stmts share the same dr.\00", align 1
@.str.97 = private unnamed_addr constant [39 x i8] c"READ_WRITE dependence in interleaving.\00", align 1
@.str.98 = private unnamed_addr constant [39 x i8] c"not consecutive access in interleaving\00", align 1
@.str.99 = private unnamed_addr constant [28 x i8] c"interleaved store with gaps\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"interleaving size is greater than step for \00", align 1
@.str.101 = private unnamed_addr constant [43 x i8] c"step is not a multiple of type size: step \00", align 1
@.str.102 = private unnamed_addr constant [7 x i8] c" size \00", align 1
@.str.103 = private unnamed_addr constant [33 x i8] c"interleaving is not a power of 2\00", align 1
@.str.104 = private unnamed_addr constant [33 x i8] c"Detected interleaving of size %d\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@reltable.vect_get_new_vect_var = private unnamed_addr constant [3 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.40 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.42 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.41 to i64), i64 ptrtoint (ptr @reltable.vect_get_new_vect_var to i64)) to i32)], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !47 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !48
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #20
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !47 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !48
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !58

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #20
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !52
  %11 = load i8, ptr %3, align 1, !tbaa !59
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !47 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !47 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !48
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !61
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !58

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #20
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !60
  store i8 %12, ptr %4, align 1, !tbaa !59
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !47 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #20
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !47 {
  %2 = load i32, ptr %0, align 8, !tbaa !62
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !47 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #20
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !63
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !47 {
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
  br i1 %23, label %7, label %24, !llvm.loop !64

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !47 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_get_smallest_scalar_type(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !47 {
  %4 = load i32, ptr %0, align 8
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %76 [
    i8 8, label %6
    i8 6, label %27
    i8 1, label %77
  ]

6:                                                ; preds = %3
  %7 = and i32 %4, 255
  %8 = add nsw i32 %7, -1
  %9 = icmp ult i32 %8, 9
  tail call void @llvm.assume(i1 %9)
  %10 = zext nneg i32 %7 to i64
  %11 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !63
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !67
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %18

18:                                               ; preds = %17, %6
  %19 = getelementptr inbounds i8, ptr %0, i64 %15
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  br label %77

27:                                               ; preds = %3
  %28 = lshr i32 %4, 16
  %29 = zext nneg i32 %28 to i64
  %30 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !59
  %32 = icmp eq i8 %31, 3
  br i1 %32, label %33, label %52

33:                                               ; preds = %27
  %34 = and i32 %4, 255
  %35 = add nsw i32 %34, -1
  %36 = icmp ult i32 %35, 9
  tail call void @llvm.assume(i1 %36)
  %37 = zext nneg i32 %34 to i64
  %38 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !63
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !67
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %45

45:                                               ; preds = %44, %33
  %46 = getelementptr inbounds i8, ptr %0, i64 %42
  %47 = getelementptr inbounds ptr, ptr %46, i64 1
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = load i64, ptr %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = and i32 %50, 65535
  br label %52

52:                                               ; preds = %45, %27
  %53 = phi i32 [ %51, %45 ], [ %28, %27 ]
  %54 = icmp eq i32 %53, 66
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load i32, ptr %0, align 8
  %57 = and i32 %56, 255
  %58 = add nsw i32 %57, -1
  %59 = icmp ult i32 %58, 9
  tail call void @llvm.assume(i1 %59)
  %60 = zext nneg i32 %57 to i64
  %61 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !63
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %63
  %65 = load i64, ptr %64, align 8, !tbaa !67
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %68

68:                                               ; preds = %67, %55
  %69 = getelementptr inbounds i8, ptr %0, i64 %65
  %70 = getelementptr inbounds ptr, ptr %69, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !48
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  br label %77

73:                                               ; preds = %52
  %74 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #20
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  br label %77

76:                                               ; preds = %3
  br label %77

77:                                               ; preds = %3, %18, %68, %73, %76
  %78 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %76 ], [ %26, %18 ], [ %72, %68 ], [ %75, %73 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %3 ]
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  %80 = getelementptr inbounds %struct.tree_type, ptr %79, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !59
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !59
  %84 = load i32, ptr %0, align 8
  %85 = and i32 %84, 255
  %86 = icmp eq i32 %85, 6
  br i1 %86, label %87, label %210

87:                                               ; preds = %77
  %88 = lshr i32 %84, 16
  %89 = zext nneg i32 %88 to i64
  %90 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !59
  %92 = icmp eq i8 %91, 3
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = zext nneg i32 %85 to i64
  %95 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %94
  %96 = load i32, ptr %95, align 4, !tbaa !63
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %97
  %99 = load i64, ptr %98, align 8, !tbaa !67
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %102

102:                                              ; preds = %101, %93
  %103 = getelementptr inbounds i8, ptr %0, i64 %99
  %104 = getelementptr inbounds ptr, ptr %103, i64 1
  %105 = load ptr, ptr %104, align 8, !tbaa !48
  %106 = load i64, ptr %105, align 8
  %107 = trunc i64 %106 to i32
  %108 = and i32 %107, 65535
  br label %109

109:                                              ; preds = %102, %87
  %110 = phi i32 [ %108, %102 ], [ %88, %87 ]
  %111 = freeze i32 %110
  %112 = and i32 %111, 65533
  %113 = icmp eq i32 %112, 116
  br i1 %113, label %185, label %114

114:                                              ; preds = %109
  switch i32 %111, label %115 [
    i32 113, label %185
    i32 77, label %185
  ]

115:                                              ; preds = %114
  %116 = load i32, ptr %0, align 8
  %117 = trunc i32 %116 to i8
  switch i8 %117, label %120 [
    i8 6, label %118
    i8 1, label %118
    i8 8, label %121
  ]

118:                                              ; preds = %115, %115
  %119 = lshr i32 %116, 16
  br label %121

120:                                              ; preds = %115
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.10) #20
  br label %121

121:                                              ; preds = %120, %118, %115
  %122 = phi i32 [ %119, %118 ], [ 0, %120 ], [ 59, %115 ]
  %123 = zext nneg i32 %122 to i64
  %124 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %123
  %125 = load i8, ptr %124, align 1, !tbaa !59
  %126 = icmp eq i8 %125, 3
  br i1 %126, label %127, label %147

127:                                              ; preds = %121
  %128 = load i32, ptr %0, align 8
  %129 = and i32 %128, 255
  %130 = add nsw i32 %129, -1
  %131 = icmp ult i32 %130, 9
  tail call void @llvm.assume(i1 %131)
  %132 = zext nneg i32 %129 to i64
  %133 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !63
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %135
  %137 = load i64, ptr %136, align 8, !tbaa !67
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %140

140:                                              ; preds = %139, %127
  %141 = getelementptr inbounds i8, ptr %0, i64 %137
  %142 = getelementptr inbounds ptr, ptr %141, i64 1
  %143 = load ptr, ptr %142, align 8, !tbaa !48
  %144 = load i64, ptr %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = and i32 %145, 65535
  br label %147

147:                                              ; preds = %121, %140
  %148 = phi i32 [ %146, %140 ], [ %122, %121 ]
  %149 = icmp eq i32 %148, 169
  br i1 %149, label %185, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr %0, align 8
  %152 = trunc i32 %151 to i8
  switch i8 %152, label %155 [
    i8 6, label %153
    i8 1, label %153
    i8 8, label %156
  ]

153:                                              ; preds = %150, %150
  %154 = lshr i32 %151, 16
  br label %156

155:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.10) #20
  br label %156

156:                                              ; preds = %155, %153, %150
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ], [ 59, %150 ]
  %158 = zext nneg i32 %157 to i64
  %159 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %158
  %160 = load i8, ptr %159, align 1, !tbaa !59
  %161 = icmp eq i8 %160, 3
  br i1 %161, label %162, label %182

162:                                              ; preds = %156
  %163 = load i32, ptr %0, align 8
  %164 = and i32 %163, 255
  %165 = add nsw i32 %164, -1
  %166 = icmp ult i32 %165, 9
  tail call void @llvm.assume(i1 %166)
  %167 = zext nneg i32 %164 to i64
  %168 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %167
  %169 = load i32, ptr %168, align 4, !tbaa !63
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %170
  %172 = load i64, ptr %171, align 8, !tbaa !67
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %175

175:                                              ; preds = %174, %162
  %176 = getelementptr inbounds i8, ptr %0, i64 %172
  %177 = getelementptr inbounds ptr, ptr %176, i64 1
  %178 = load ptr, ptr %177, align 8, !tbaa !48
  %179 = load i64, ptr %178, align 8
  %180 = trunc i64 %179 to i32
  %181 = and i32 %180, 65535
  br label %182

182:                                              ; preds = %156, %175
  %183 = phi i32 [ %181, %175 ], [ %157, %156 ]
  %184 = icmp eq i32 %183, 78
  br i1 %184, label %185, label %210

185:                                              ; preds = %114, %114, %109, %182, %147
  %186 = load i32, ptr %0, align 8
  %187 = and i32 %186, 255
  %188 = add nsw i32 %187, -1
  %189 = icmp ult i32 %188, 9
  tail call void @llvm.assume(i1 %189)
  %190 = zext nneg i32 %187 to i64
  %191 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %190
  %192 = load i32, ptr %191, align 4, !tbaa !63
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %193
  %195 = load i64, ptr %194, align 8, !tbaa !67
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %198

198:                                              ; preds = %197, %185
  %199 = getelementptr inbounds i8, ptr %0, i64 %195
  %200 = getelementptr inbounds ptr, ptr %199, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !48
  %202 = getelementptr inbounds %struct.tree_common, ptr %201, i64 0, i32 2
  %203 = load ptr, ptr %202, align 8, !tbaa !59
  %204 = getelementptr inbounds %struct.tree_type, ptr %203, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !59
  %206 = getelementptr inbounds %struct.tree_int_cst, ptr %205, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !59
  %208 = icmp slt i64 %207, %83
  %209 = select i1 %208, ptr %203, ptr %79
  br label %210

210:                                              ; preds = %198, %182, %77
  %211 = phi i64 [ %207, %198 ], [ %83, %182 ], [ %83, %77 ]
  %212 = phi ptr [ %209, %198 ], [ %79, %182 ], [ %79, %77 ]
  store i64 %83, ptr %1, align 8, !tbaa !67
  store i64 %211, ptr %2, align 8, !tbaa !67
  ret ptr %212
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @vect_get_place_in_interleaving_chain(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !47 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %5)
  %6 = load ptr, ptr @stmt_vec_info_vec, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %6, align 8, !tbaa !68
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi i32 [ %9, %8 ], [ 0, %2 ]
  %12 = icmp ugt i32 %4, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %14

14:                                               ; preds = %13, %10
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = add i32 %4, -1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %15, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._stmt_vec_info, ptr %19, i64 0, i32 17
  %21 = load ptr, ptr %20, align 8, !tbaa !70
  %22 = icmp eq ptr %21, %1
  br i1 %22, label %23, label %57

23:                                               ; preds = %14
  %24 = icmp ne ptr %1, null
  %25 = icmp ne ptr %1, %0
  %26 = and i1 %24, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %23, %42
  %28 = phi i32 [ %30, %42 ], [ 0, %23 ]
  %29 = phi ptr [ %49, %42 ], [ %1, %23 ]
  %30 = add nuw nsw i32 %28, 1
  %31 = getelementptr inbounds %struct.gimple_statement_base, ptr %29, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !59
  %33 = icmp ne i32 %32, 0
  tail call void @llvm.assume(i1 %33)
  %34 = load ptr, ptr @stmt_vec_info_vec, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %27
  %37 = load i32, ptr %34, align 8, !tbaa !68
  br label %38

38:                                               ; preds = %36, %27
  %39 = phi i32 [ %37, %36 ], [ 0, %27 ]
  %40 = icmp ugt i32 %32, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %42

42:                                               ; preds = %41, %38
  %43 = load ptr, ptr @stmt_vec_info_vec, align 8
  %44 = add i32 %32, -1
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %43, i64 0, i32 2, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct._stmt_vec_info, ptr %47, i64 0, i32 18
  %49 = load ptr, ptr %48, align 8, !tbaa !73
  %50 = icmp ne ptr %49, null
  %51 = icmp ne ptr %49, %0
  %52 = and i1 %50, %51
  br i1 %52, label %27, label %53, !llvm.loop !74

53:                                               ; preds = %42, %23
  %54 = phi i32 [ 0, %23 ], [ %30, %42 ]
  %55 = phi i1 [ %24, %23 ], [ %50, %42 ]
  %56 = select i1 %55, i32 %54, i32 -1
  br label %57

57:                                               ; preds = %53, %14
  %58 = phi i32 [ -1, %14 ], [ %56, %53 ]
  ret i32 %58
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_ref_dependences(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !75 {
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !76

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %7 = tail call i64 @fwrite(ptr nonnull @.str, i64 32, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %11 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 4
  %12 = select i1 %9, ptr %11, ptr %10, !prof !76
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %355, %8
  %16 = phi i32 [ 0, %8 ], [ %358, %355 ]
  br i1 %14, label %24, label %17, !prof !77

17:                                               ; preds = %15
  %18 = load i32, ptr %13, align 8, !tbaa !78
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %20, label %24, !prof !80

20:                                               ; preds = %17
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %15, %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ], [ null, %15 ]
  %26 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %15 ]
  br i1 %26, label %359, label %27, !prof !80

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !81
  %29 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !83
  %31 = load ptr, ptr %28, align 8, !tbaa !84
  %32 = getelementptr inbounds %struct.gimple_statement_base, ptr %31, i64 0, i32 1
  %33 = load i32, ptr %32, align 4, !tbaa !59
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35, !prof !89

35:                                               ; preds = %27
  %36 = load ptr, ptr @stmt_vec_info_vec, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !89

38:                                               ; preds = %35
  %39 = load i32, ptr %36, align 8, !tbaa !68
  br label %40

40:                                               ; preds = %38, %35
  %41 = phi i32 [ %39, %38 ], [ 0, %35 ]
  %42 = icmp ugt i32 %33, %41
  br i1 %42, label %43, label %44, !prof !89

43:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %44

44:                                               ; preds = %43, %40
  %45 = load ptr, ptr @stmt_vec_info_vec, align 8
  %46 = add i32 %33, -1
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %45, i64 0, i32 2, i64 %47
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  br label %50

50:                                               ; preds = %44, %27
  %51 = phi ptr [ %49, %44 ], [ null, %27 ]
  %52 = load ptr, ptr %30, align 8, !tbaa !84
  %53 = getelementptr inbounds %struct.gimple_statement_base, ptr %52, i64 0, i32 1
  %54 = load i32, ptr %53, align 4, !tbaa !59
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %71, label %56, !prof !89

56:                                               ; preds = %50
  %57 = load ptr, ptr @stmt_vec_info_vec, align 8
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !89

59:                                               ; preds = %56
  %60 = load i32, ptr %57, align 8, !tbaa !68
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i32 [ %60, %59 ], [ 0, %56 ]
  %63 = icmp ugt i32 %54, %62
  br i1 %63, label %64, label %65, !prof !89

64:                                               ; preds = %61
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %65

65:                                               ; preds = %64, %61
  %66 = load ptr, ptr @stmt_vec_info_vec, align 8
  %67 = add i32 %54, -1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %66, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !48
  br label %71

71:                                               ; preds = %65, %50
  %72 = phi ptr [ %70, %65 ], [ null, %50 ]
  %73 = getelementptr inbounds %struct.data_reference, ptr %28, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !90
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !59
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 14
  br i1 %79, label %80, label %82, !prof !89

80:                                               ; preds = %71
  %81 = tail call i32 @vector_type_mode(ptr noundef nonnull %76) #20
  br label %87

82:                                               ; preds = %71
  %83 = getelementptr inbounds %struct.tree_type, ptr %76, i64 0, i32 6
  %84 = load i32, ptr %83, align 4
  %85 = lshr i32 %84, 16
  %86 = and i32 %85, 255
  br label %87

87:                                               ; preds = %82, %80
  %88 = phi i32 [ %81, %80 ], [ %86, %82 ]
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !59
  %92 = getelementptr inbounds %struct.data_reference, ptr %30, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !90
  %94 = getelementptr inbounds %struct.tree_common, ptr %93, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !59
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 14
  br i1 %98, label %99, label %101, !prof !89

99:                                               ; preds = %87
  %100 = tail call i32 @vector_type_mode(ptr noundef nonnull %95) #20
  br label %106

101:                                              ; preds = %87
  %102 = getelementptr inbounds %struct.tree_type, ptr %95, i64 0, i32 6
  %103 = load i32, ptr %102, align 4
  %104 = lshr i32 %103, 16
  %105 = and i32 %104, 255
  br label %106

106:                                              ; preds = %101, %99
  %107 = phi i32 [ %100, %99 ], [ %105, %101 ]
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %108
  %110 = load i8, ptr %109, align 1, !tbaa !59
  %111 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !91
  %113 = load ptr, ptr @chrec_known, align 8, !tbaa !48
  %114 = icmp eq ptr %112, %113
  br i1 %114, label %115, label %117, !prof !89

115:                                              ; preds = %106
  %116 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %28, ptr noundef nonnull %30), !range !92
  br label %355

117:                                              ; preds = %106
  %118 = icmp ne ptr %0, null
  br i1 %118, label %119, label %123, !prof !89

119:                                              ; preds = %117
  %120 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 6
  %121 = load ptr, ptr %0, align 8, !tbaa !93
  %122 = load i32, ptr %120, align 8, !tbaa !95
  br label %123

123:                                              ; preds = %119, %117
  %124 = phi i32 [ %122, %119 ], [ 0, %117 ]
  %125 = phi ptr [ %121, %119 ], [ null, %117 ]
  %126 = getelementptr inbounds %struct.data_reference, ptr %28, i64 0, i32 3
  %127 = load i8, ptr %126, align 8, !tbaa !96
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %136, label %129, !prof !89

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.data_reference, ptr %30, i64 0, i32 3
  %131 = load i8, ptr %130, align 8, !tbaa !96
  %132 = icmp ne i8 %131, 0
  %133 = and i1 %118, %132
  %134 = icmp eq ptr %28, %30
  %135 = select i1 %133, i1 true, i1 %134, !prof !89
  br i1 %135, label %355, label %138, !prof !76

136:                                              ; preds = %123
  %137 = icmp eq ptr %28, %30
  br i1 %137, label %355, label %138

138:                                              ; preds = %136, %129
  %139 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !48
  %140 = icmp eq ptr %112, %139
  br i1 %140, label %141, label %172

141:                                              ; preds = %138
  br i1 %118, label %142, label %157

142:                                              ; preds = %141
  %143 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %154, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %147 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 66, i64 1, ptr %146)
  %148 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %149 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %148, ptr noundef %149, i32 noundef 2) #20
  %150 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %151 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %150)
  %152 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %153 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %152, ptr noundef %153, i32 noundef 2) #20
  br label %154

154:                                              ; preds = %145, %142
  %155 = tail call fastcc zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef nonnull %25, ptr noundef nonnull %0), !range !92
  %156 = xor i8 %155, 1
  br label %355

157:                                              ; preds = %141
  %158 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %28, ptr noundef nonnull %30), !range !92
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %355

160:                                              ; preds = %157
  %161 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %355, label %163

163:                                              ; preds = %160
  %164 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %165 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 35, i64 1, ptr %164)
  %166 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %167 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %166, ptr noundef %167, i32 noundef 2) #20
  %168 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %169 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %168)
  %170 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %171 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %170, ptr noundef %171, i32 noundef 2) #20
  br label %355

172:                                              ; preds = %138
  br i1 %118, label %190, label %173

173:                                              ; preds = %172
  %174 = icmp eq ptr %28, %30
  br i1 %174, label %178, label %175

175:                                              ; preds = %173
  %176 = tail call fastcc zeroext i8 @vect_check_interleaving(ptr noundef nonnull %28, ptr noundef nonnull %30), !range !92
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %355

178:                                              ; preds = %175, %173
  %179 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %355, label %181

181:                                              ; preds = %178
  %182 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %183 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 30, i64 1, ptr %182)
  %184 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %185 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %184, ptr noundef %185, i32 noundef 2) #20
  %186 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %187 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %186)
  %188 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %189 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %188, ptr noundef %189, i32 noundef 2) #20
  br label %355

190:                                              ; preds = %172
  %191 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 6
  %192 = load ptr, ptr %191, align 8, !tbaa !97
  %193 = icmp eq ptr %192, null
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = load i32, ptr %192, align 8, !tbaa !98
  br label %196

196:                                              ; preds = %194, %190
  %197 = phi i32 [ %195, %194 ], [ 0, %190 ]
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %214

199:                                              ; preds = %196
  %200 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %199
  %203 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %204 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 51, i64 1, ptr %203)
  %205 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %206 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %205, ptr noundef %206, i32 noundef 2) #20
  %207 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %208 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %207)
  %209 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %210 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %209, ptr noundef %210, i32 noundef 2) #20
  br label %211

211:                                              ; preds = %202, %199
  %212 = tail call fastcc zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef nonnull %25, ptr noundef nonnull %0), !range !92
  %213 = xor i8 %212, 1
  br label %355

214:                                              ; preds = %196
  %215 = load i32, ptr %125, align 8, !tbaa !100
  %216 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 4
  %217 = load ptr, ptr %216, align 8, !tbaa !104
  %218 = icmp eq ptr %217, null
  br label %219

219:                                              ; preds = %234, %214
  %220 = phi i64 [ %235, %234 ], [ 0, %214 ]
  br i1 %218, label %228, label %221

221:                                              ; preds = %219
  %222 = load i32, ptr %217, align 8, !tbaa !105
  %223 = zext i32 %222 to i64
  %224 = icmp ult i64 %220, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %217, i64 0, i32 2, i64 %220
  %227 = load ptr, ptr %226, align 8, !tbaa !48
  br label %228

228:                                              ; preds = %225, %221, %219
  %229 = phi ptr [ %227, %225 ], [ null, %221 ], [ null, %219 ]
  %230 = phi i1 [ false, %225 ], [ true, %221 ], [ true, %219 ]
  br i1 %230, label %236, label %231

231:                                              ; preds = %228
  %232 = load i32, ptr %229, align 8, !tbaa !100
  %233 = icmp eq i32 %232, %215
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = add nuw i64 %220, 1
  br label %219, !llvm.loop !107

236:                                              ; preds = %231, %228
  %237 = and i64 %220, 4294967295
  %238 = icmp eq i8 %91, %110
  %239 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 8
  %240 = getelementptr inbounds %struct._stmt_vec_info, ptr %51, i64 0, i32 15
  %241 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 15
  %242 = getelementptr inbounds %struct._stmt_vec_info, ptr %51, i64 0, i32 23
  %243 = getelementptr inbounds %struct.data_reference, ptr %30, i64 0, i32 3
  %244 = getelementptr inbounds %struct._stmt_vec_info, ptr %72, i64 0, i32 23
  br label %245

245:                                              ; preds = %353, %236
  %246 = phi i32 [ 0, %236 ], [ %354, %353 ]
  %247 = load ptr, ptr %191, align 8, !tbaa !97
  %248 = icmp eq ptr %247, null
  br i1 %248, label %256, label %249

249:                                              ; preds = %245
  %250 = load i32, ptr %247, align 8, !tbaa !98
  %251 = icmp ugt i32 %250, %246
  br i1 %251, label %252, label %256

252:                                              ; preds = %249
  %253 = zext i32 %246 to i64
  %254 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %247, i64 0, i32 2, i64 %253
  %255 = load ptr, ptr %254, align 8, !tbaa !48
  br label %256

256:                                              ; preds = %252, %249, %245
  %257 = phi ptr [ %255, %252 ], [ null, %249 ], [ null, %245 ]
  %258 = phi i1 [ false, %252 ], [ true, %249 ], [ true, %245 ]
  br i1 %258, label %355, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds i32, ptr %257, i64 %237
  %261 = load i32, ptr %260, align 4, !tbaa !63
  %262 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %259
  %265 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %266 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.68, i32 noundef %261)
  br label %267

267:                                              ; preds = %264, %259
  %268 = srem i32 %261, %124
  %269 = icmp eq i32 %268, 0
  %270 = select i1 %269, i1 %238, i1 false
  br i1 %270, label %271, label %327

271:                                              ; preds = %267
  %272 = load ptr, ptr %240, align 8, !tbaa !48
  %273 = icmp eq ptr %272, null
  br i1 %273, label %279, label %274

274:                                              ; preds = %271
  %275 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %272, i64 0, i32 1
  %276 = load i32, ptr %275, align 4, !tbaa !108
  %277 = load i32, ptr %272, align 8, !tbaa !110
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %274, %271
  %280 = tail call ptr @vec_heap_p_reserve(ptr noundef %272, i32 noundef 1) #20
  store ptr %280, ptr %240, align 8, !tbaa !48
  br label %281

281:                                              ; preds = %279, %274
  %282 = load ptr, ptr %240, align 8, !tbaa !48
  %283 = load i32, ptr %282, align 8, !tbaa !110
  %284 = add i32 %283, 1
  store i32 %284, ptr %282, align 8, !tbaa !110
  %285 = zext i32 %283 to i64
  %286 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %282, i64 0, i32 2, i64 %285
  store ptr %30, ptr %286, align 8, !tbaa !48
  %287 = load ptr, ptr %241, align 8, !tbaa !48
  %288 = icmp eq ptr %287, null
  br i1 %288, label %294, label %289

289:                                              ; preds = %281
  %290 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %287, i64 0, i32 1
  %291 = load i32, ptr %290, align 4, !tbaa !108
  %292 = load i32, ptr %287, align 8, !tbaa !110
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %289, %281
  %295 = tail call ptr @vec_heap_p_reserve(ptr noundef %287, i32 noundef 1) #20
  store ptr %295, ptr %241, align 8, !tbaa !48
  br label %296

296:                                              ; preds = %294, %289
  %297 = load ptr, ptr %241, align 8, !tbaa !48
  %298 = load i32, ptr %297, align 8, !tbaa !110
  %299 = add i32 %298, 1
  store i32 %299, ptr %297, align 8, !tbaa !110
  %300 = zext i32 %298 to i64
  %301 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %297, i64 0, i32 2, i64 %300
  store ptr %28, ptr %301, align 8, !tbaa !48
  %302 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %303 = icmp eq i8 %302, 0
  br i1 %303, label %307, label %304

304:                                              ; preds = %296
  %305 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %306 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 33, i64 1, ptr %305)
  br label %307

307:                                              ; preds = %304, %296
  %308 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %309 = icmp eq i8 %308, 0
  br i1 %309, label %319, label %310

310:                                              ; preds = %307
  %311 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %312 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 43, i64 1, ptr %311)
  %313 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %314 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %313, ptr noundef %314, i32 noundef 2) #20
  %315 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %316 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %315)
  %317 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %318 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %317, ptr noundef %318, i32 noundef 2) #20
  br label %319

319:                                              ; preds = %310, %307
  %320 = load i8, ptr %126, align 8, !tbaa !96
  %321 = icmp eq i8 %320, 0
  br i1 %321, label %323, label %322

322:                                              ; preds = %319
  store i8 1, ptr %242, align 8, !tbaa !111
  br label %353

323:                                              ; preds = %319
  %324 = load i8, ptr %243, align 8, !tbaa !96
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %353, label %326

326:                                              ; preds = %323
  store i8 1, ptr %244, align 8, !tbaa !111
  br label %353

327:                                              ; preds = %267
  %328 = tail call i32 @llvm.abs.i32(i32 %261, i1 true)
  %329 = icmp slt i32 %328, %124
  br i1 %329, label %330, label %335

330:                                              ; preds = %327
  %331 = icmp sgt i32 %261, 0
  br i1 %331, label %332, label %341

332:                                              ; preds = %330
  %333 = load i8, ptr %239, align 4, !tbaa !112
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %341, label %335

335:                                              ; preds = %332, %327
  %336 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %337 = icmp eq i8 %336, 0
  br i1 %337, label %353, label %338

338:                                              ; preds = %335
  %339 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %340 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 38, i64 1, ptr %339)
  br label %353

341:                                              ; preds = %332, %330
  %342 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %343 = icmp eq i8 %342, 0
  br i1 %343, label %355, label %344

344:                                              ; preds = %341
  %345 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %346 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 54, i64 1, ptr %345)
  %347 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %348 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %347, ptr noundef %348, i32 noundef 2) #20
  %349 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %350 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %349)
  %351 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %352 = load ptr, ptr %92, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %351, ptr noundef %352, i32 noundef 2) #20
  br label %355

353:                                              ; preds = %338, %335, %326, %323, %322
  %354 = add i32 %246, 1
  br label %245, !llvm.loop !113

355:                                              ; preds = %256, %178, %136, %115, %129, %154, %157, %160, %163, %175, %181, %211, %341, %344
  %356 = phi i8 [ 0, %115 ], [ %156, %154 ], [ %213, %211 ], [ 0, %129 ], [ 0, %157 ], [ 1, %163 ], [ 1, %160 ], [ 0, %175 ], [ 1, %181 ], [ 1, %341 ], [ 1, %344 ], [ 0, %136 ], [ 1, %178 ], [ 0, %256 ]
  %357 = icmp eq i8 %356, 0
  %358 = add i32 %16, 1
  br i1 %357, label %15, label %359, !prof !76, !llvm.loop !114

359:                                              ; preds = %24, %355
  %360 = phi i8 [ 0, %355 ], [ 1, %24 ]
  ret i8 %360
}

declare zeroext i8 @vect_print_dump_info(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_verify_datarefs_alignment(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !47 {
  %3 = icmp eq ptr %0, null
  %4 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %5 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %6 = select i1 %3, ptr %5, ptr %4
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = icmp eq ptr %7, null
  br label %9

9:                                                ; preds = %67, %2
  %10 = phi i32 [ 0, %2 ], [ %68, %67 ]
  br i1 %8, label %18, label %11

11:                                               ; preds = %9
  %12 = load i32, ptr %7, align 8, !tbaa !115
  %13 = icmp ugt i32 %12, %10
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = zext i32 %10 to i64
  %16 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %7, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !48
  br label %18

18:                                               ; preds = %9, %11, %14
  %19 = phi ptr [ %17, %14 ], [ null, %11 ], [ null, %9 ]
  %20 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %9 ]
  br i1 %20, label %69, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !84
  %23 = getelementptr inbounds %struct.gimple_statement_base, ptr %22, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !59
  %25 = icmp ne i32 %24, 0
  tail call void @llvm.assume(i1 %25)
  %26 = load ptr, ptr @stmt_vec_info_vec, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %21
  %29 = load i32, ptr %26, align 8, !tbaa !68
  br label %30

30:                                               ; preds = %28, %21
  %31 = phi i32 [ %29, %28 ], [ 0, %21 ]
  %32 = icmp ugt i32 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %34

34:                                               ; preds = %33, %30
  %35 = load ptr, ptr @stmt_vec_info_vec, align 8
  %36 = add i32 %24, -1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %35, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !48
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %39, i64 0, i32 17
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = icmp eq ptr %41, null
  %43 = icmp eq ptr %41, %22
  %44 = or i1 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %34
  %46 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %19)
  switch i32 %46, label %59 [
    i32 0, label %47
    i32 4, label %65
  ]

47:                                               ; preds = %45
  %48 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 3
  %52 = load i8, ptr %51, align 8, !tbaa !96
  %53 = icmp eq i8 %52, 0
  %54 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  br i1 %53, label %57, label %55

55:                                               ; preds = %50
  %56 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 43, i64 1, ptr %54)
  br label %65

57:                                               ; preds = %50
  %58 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 44, i64 1, ptr %54)
  br label %65

59:                                               ; preds = %45
  %60 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %64 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 32, i64 1, ptr %63)
  br label %65

65:                                               ; preds = %59, %62, %45, %47, %57, %55, %34
  %66 = phi i32 [ 4, %34 ], [ 1, %55 ], [ 1, %57 ], [ 1, %47 ], [ 0, %45 ], [ 0, %62 ], [ 0, %59 ]
  switch i32 %66, label %69 [
    i32 0, label %67
    i32 4, label %67
  ]

67:                                               ; preds = %65, %65
  %68 = add i32 %10, 1
  br label %9, !llvm.loop !117

69:                                               ; preds = %18, %65
  %70 = phi i8 [ 0, %65 ], [ 1, %18 ]
  ret i8 %70
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef i32 @vect_supportable_dr_alignment(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !47 {
  %2 = load ptr, ptr %0, align 8, !tbaa !84
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !59
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @stmt_vec_info_vec, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, ptr %7, align 8, !tbaa !68
  br label %11

11:                                               ; preds = %9, %6
  %12 = phi i32 [ %10, %9 ], [ 0, %6 ]
  %13 = icmp ugt i32 %4, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %15

15:                                               ; preds = %14, %11
  %16 = load ptr, ptr @stmt_vec_info_vec, align 8
  %17 = add i32 %4, -1
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %16, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %1, %15
  %22 = phi ptr [ %20, %15 ], [ null, %1 ]
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 14
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call i32 @vector_type_mode(ptr noundef nonnull %24) #20
  br label %35

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.tree_type, ptr %24, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 255
  br label %35

35:                                               ; preds = %30, %28
  %36 = phi i32 [ %29, %28 ], [ %34, %30 ]
  %37 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !119
  %39 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !120
  %41 = ptrtoint ptr %40 to i64
  %42 = and i64 %41, 4294967295
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %141, label %44

44:                                               ; preds = %35
  %45 = icmp eq ptr %38, null
  br i1 %45, label %141, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %38, align 8, !tbaa !93
  %48 = getelementptr inbounds %struct.loop, ptr %47, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !121
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !59
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !122
  %56 = icmp ne ptr %49, %55
  br label %57

57:                                               ; preds = %46, %51
  %58 = phi i1 [ true, %46 ], [ %56, %51 ]
  %59 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %60 = load i8, ptr %59, align 8, !tbaa !96
  %61 = icmp eq i8 %60, 0
  %62 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !90
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !59
  br i1 %61, label %124, label %66

66:                                               ; preds = %57
  %67 = sext i32 %36 to i64
  %68 = getelementptr inbounds [159 x %struct.optab_d], ptr @optab_table, i64 0, i64 140, i32 4, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !124
  %70 = icmp eq i32 %69, 2956
  br i1 %70, label %102, label %71

71:                                               ; preds = %66
  %72 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !126
  %73 = icmp eq ptr %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = tail call ptr %72() #20
  %76 = icmp eq ptr %75, null
  br i1 %76, label %102, label %77

77:                                               ; preds = %74, %71
  %78 = load ptr, ptr %23, align 8, !tbaa !118
  br i1 %58, label %101, label %79

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !138
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !59
  %84 = load i64, ptr %78, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 14
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = tail call i32 @vector_type_mode(ptr noundef nonnull %78) #20
  br label %94

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.tree_type, ptr %78, i64 0, i32 6
  %91 = load i32, ptr %90, align 4
  %92 = lshr i32 %91, 16
  %93 = and i32 %92, 255
  br label %94

94:                                               ; preds = %89, %87
  %95 = phi i32 [ %88, %87 ], [ %93, %89 ]
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %96
  %98 = load i8, ptr %97, align 1, !tbaa !59
  %99 = zext i8 %98 to i64
  %100 = icmp eq i64 %83, %99
  br i1 %100, label %101, label %121

101:                                              ; preds = %94, %77
  br label %121

102:                                              ; preds = %74, %66
  %103 = load ptr, ptr %39, align 8, !tbaa !120
  %104 = ptrtoint ptr %103 to i64
  %105 = and i64 %104, 4294967295
  %106 = icmp eq i64 %105, 4294967295
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !139
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %109) #20
  br label %113

113:                                              ; preds = %107, %111, %102
  %114 = phi i8 [ 0, %102 ], [ %112, %111 ], [ 0, %107 ]
  %115 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 9), align 8, !tbaa !140
  %116 = load ptr, ptr %39, align 8, !tbaa !120
  %117 = ptrtoint ptr %116 to i64
  %118 = trunc i64 %117 to i32
  %119 = tail call zeroext i8 %115(i32 noundef %36, ptr noundef %65, i32 noundef %118, i8 noundef zeroext %114) #20
  %120 = icmp eq i8 %119, 0
  br label %121

121:                                              ; preds = %113, %101, %94
  %122 = phi i1 [ false, %94 ], [ false, %101 ], [ %120, %113 ]
  %123 = phi i32 [ 2, %94 ], [ 3, %101 ], [ 1, %113 ]
  br i1 %122, label %140, label %141

124:                                              ; preds = %57
  %125 = icmp eq i64 %42, 4294967295
  br i1 %125, label %126, label %132

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %128 = load ptr, ptr %127, align 8, !tbaa !139
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %128) #20
  br label %132

132:                                              ; preds = %126, %130, %124
  %133 = phi i8 [ 0, %124 ], [ %131, %130 ], [ 0, %126 ]
  %134 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 9), align 8, !tbaa !140
  %135 = load ptr, ptr %39, align 8, !tbaa !120
  %136 = ptrtoint ptr %135 to i64
  %137 = trunc i64 %136 to i32
  %138 = tail call zeroext i8 %134(i32 noundef %36, ptr noundef %65, i32 noundef %137, i8 noundef zeroext %133) #20
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %132, %121
  br label %141

141:                                              ; preds = %44, %35, %121, %132, %140
  %142 = phi i32 [ 0, %140 ], [ %123, %121 ], [ 1, %132 ], [ 4, %35 ], [ 0, %44 ]
  ret i32 %142
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @vect_enhance_data_refs_alignment(ptr noundef %0) local_unnamed_addr #9 !prof !47 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  %4 = load ptr, ptr %0, align 8, !tbaa !93
  %5 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %9 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 40, i64 1, ptr %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = icmp eq ptr %3, null
  br label %12

12:                                               ; preds = %192, %10
  %13 = phi i32 [ 0, %10 ], [ %193, %192 ]
  br i1 %11, label %21, label %14

14:                                               ; preds = %12
  %15 = load i32, ptr %3, align 8, !tbaa !115
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %3, i64 0, i32 2, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !48
  br label %21

21:                                               ; preds = %12, %14, %17
  %22 = phi ptr [ %20, %17 ], [ null, %14 ], [ null, %12 ]
  %23 = phi i1 [ false, %17 ], [ true, %14 ], [ true, %12 ]
  br i1 %23, label %194, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !84
  %26 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !59
  %28 = icmp ne i32 %27, 0
  tail call void @llvm.assume(i1 %28)
  %29 = load ptr, ptr @stmt_vec_info_vec, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %24
  %32 = load i32, ptr %29, align 8, !tbaa !68
  br label %33

33:                                               ; preds = %31, %24
  %34 = phi i32 [ %32, %31 ], [ 0, %24 ]
  %35 = icmp ugt i32 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr @stmt_vec_info_vec, align 8
  %39 = add i32 %27, -1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %38, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %42, i64 0, i32 17
  %44 = load ptr, ptr %43, align 8, !tbaa !70
  %45 = icmp eq ptr %44, null
  %46 = icmp eq ptr %44, %25
  %47 = or i1 %45, %46
  br i1 %47, label %48, label %192

48:                                               ; preds = %37
  %49 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 3
  %50 = load i8, ptr %49, align 8, !tbaa !96
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %192

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !120
  %55 = ptrtoint ptr %54 to i64
  %56 = and i64 %55, 4294967295
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %192, label %58

58:                                               ; preds = %52
  %59 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 2
  %60 = load ptr, ptr %22, align 8, !tbaa !84
  %61 = getelementptr inbounds %struct.gimple_statement_base, ptr %60, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !59
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %78, label %64

64:                                               ; preds = %58
  %65 = icmp eq ptr %38, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %64
  %67 = load i32, ptr %38, align 8, !tbaa !68
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %67, %66 ], [ 0, %64 ]
  %70 = icmp ugt i32 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %72

72:                                               ; preds = %71, %68
  %73 = load ptr, ptr @stmt_vec_info_vec, align 8
  %74 = add i32 %62, -1
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %73, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !48
  br label %78

78:                                               ; preds = %72, %58
  %79 = phi ptr [ %77, %72 ], [ null, %58 ]
  %80 = getelementptr inbounds %struct._stmt_vec_info, ptr %79, i64 0, i32 5
  %81 = load ptr, ptr %80, align 8, !tbaa !118
  %82 = getelementptr inbounds %struct._stmt_vec_info, ptr %79, i64 0, i32 17
  %83 = load ptr, ptr %82, align 8, !tbaa !70
  %84 = icmp eq ptr %83, null
  br i1 %84, label %121, label %85

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = trunc i64 %90 to i32
  %92 = load ptr, ptr %59, align 8, !tbaa !120
  %93 = ptrtoint ptr %92 to i64
  %94 = and i64 %93, 4294967295
  %95 = icmp eq i64 %94, 4294967295
  br i1 %95, label %182, label %96

96:                                               ; preds = %85
  %97 = load i64, ptr %81, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 14
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = tail call i32 @vector_type_mode(ptr noundef nonnull %81) #20
  br label %105

102:                                              ; preds = %96
  %103 = lshr i32 %87, 16
  %104 = and i32 %103, 255
  br label %105

105:                                              ; preds = %102, %100
  %106 = phi i32 [ %101, %100 ], [ %104, %102 ]
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %107
  %109 = load i8, ptr %108, align 1, !tbaa !59
  %110 = zext i8 %109 to i32
  %111 = udiv i32 %110, %91
  %112 = load ptr, ptr %59, align 8, !tbaa !120
  %113 = ptrtoint ptr %112 to i64
  %114 = trunc i64 %113 to i32
  %115 = sdiv i32 %114, %111
  %116 = sub nsw i32 %91, %115
  %117 = getelementptr inbounds %struct._stmt_vec_info, ptr %79, i64 0, i32 19
  %118 = load i32, ptr %117, align 8, !tbaa !142
  %119 = urem i32 %116, %118
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %182

121:                                              ; preds = %105, %78
  %122 = load ptr, ptr %59, align 8, !tbaa !120
  %123 = ptrtoint ptr %122 to i64
  %124 = trunc i64 %123 to i32
  switch i32 %124, label %125 [
    i32 -1, label %154
    i32 0, label %154
  ]

125:                                              ; preds = %121
  %126 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  %128 = getelementptr inbounds %struct.tree_type, ptr %127, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = tail call i64 @int_cst_value(ptr noundef %129) #20
  %131 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %134, ptr noundef nonnull @.str.77, i64 noundef %130)
  %136 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %137 = load ptr, ptr %59, align 8, !tbaa !120
  %138 = ptrtoint ptr %137 to i64
  %139 = trunc i64 %138 to i32
  %140 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef nonnull @.str.78, i32 noundef %139)
  br label %141

141:                                              ; preds = %133, %125
  %142 = load ptr, ptr %59, align 8, !tbaa !120
  %143 = ptrtoint ptr %142 to i64
  %144 = shl i64 %143, 32
  %145 = ashr exact i64 %144, 32
  %146 = srem i64 %145, %130
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %141
  %149 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %182, label %151

151:                                              ; preds = %148
  %152 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %153 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 44, i64 1, ptr %152)
  br label %182

154:                                              ; preds = %121, %121, %141
  %155 = load ptr, ptr %59, align 8, !tbaa !120
  %156 = ptrtoint ptr %155 to i64
  %157 = and i64 %156, 4294967295
  %158 = icmp eq i64 %157, 4294967295
  br i1 %158, label %159, label %182

159:                                              ; preds = %154
  %160 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 1
  %161 = load ptr, ptr %160, align 8, !tbaa !90
  %162 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !59
  %164 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !139
  %166 = icmp eq ptr %165, null
  br i1 %166, label %169, label %167

167:                                              ; preds = %159
  %168 = tail call zeroext i8 @contains_packed_reference(ptr noundef nonnull %165) #20
  br label %169

169:                                              ; preds = %167, %159
  %170 = phi i8 [ %168, %167 ], [ 0, %159 ]
  %171 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %175 = zext i8 %170 to i32
  %176 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef nonnull @.str.80, i32 noundef %175)
  br label %177

177:                                              ; preds = %173, %169
  %178 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2, i32 6), align 8, !tbaa !143
  %179 = tail call zeroext i8 %178(ptr noundef %163, i8 noundef zeroext %170) #20
  %180 = icmp ne i8 %179, 0
  %181 = zext i1 %180 to i8
  br label %182

182:                                              ; preds = %85, %105, %148, %151, %154, %177
  %183 = phi i8 [ %181, %177 ], [ 0, %105 ], [ 1, %154 ], [ 0, %85 ], [ 0, %148 ], [ 0, %151 ]
  %184 = icmp eq i8 %183, 0
  %185 = select i1 %184, ptr null, ptr %22
  br i1 %184, label %186, label %194

186:                                              ; preds = %182
  %187 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %191 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 37, i64 1, ptr %190)
  br label %194

192:                                              ; preds = %37, %48, %52
  %193 = add i32 %13, 1
  br label %12, !llvm.loop !144

194:                                              ; preds = %21, %182, %186, %189
  %195 = phi i8 [ 1, %182 ], [ 0, %189 ], [ 0, %186 ], [ 0, %21 ]
  %196 = phi ptr [ %185, %182 ], [ %185, %189 ], [ %185, %186 ], [ null, %21 ]
  %197 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %198 = load ptr, ptr %197, align 8, !tbaa !145
  %199 = icmp eq ptr %198, null
  br i1 %199, label %202, label %200

200:                                              ; preds = %194
  %201 = load i32, ptr %198, align 8, !tbaa !78
  br label %202

202:                                              ; preds = %194, %200
  %203 = phi i32 [ %201, %200 ], [ 0, %194 ]
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = tail call zeroext i8 @vect_can_advance_ivs_p(ptr noundef nonnull %0) #20
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %212, label %208

208:                                              ; preds = %205
  %209 = tail call ptr @single_exit(ptr noundef %4) #20
  %210 = tail call zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef %4, ptr noundef %209) #20
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %205, %202
  br label %213

213:                                              ; preds = %212, %208
  %214 = phi i8 [ 0, %212 ], [ %195, %208 ]
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %402, label %216

216:                                              ; preds = %213
  %217 = load ptr, ptr %196, align 8, !tbaa !84
  %218 = getelementptr inbounds %struct.gimple_statement_base, ptr %217, i64 0, i32 1
  %219 = load i32, ptr %218, align 4, !tbaa !59
  %220 = icmp ne i32 %219, 0
  tail call void @llvm.assume(i1 %220)
  %221 = load ptr, ptr @stmt_vec_info_vec, align 8
  %222 = icmp eq ptr %221, null
  br i1 %222, label %225, label %223

223:                                              ; preds = %216
  %224 = load i32, ptr %221, align 8, !tbaa !68
  br label %225

225:                                              ; preds = %223, %216
  %226 = phi i32 [ %224, %223 ], [ 0, %216 ]
  %227 = icmp ugt i32 %219, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %225
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %229

229:                                              ; preds = %228, %225
  %230 = load ptr, ptr @stmt_vec_info_vec, align 8
  %231 = add i32 %219, -1
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %230, i64 0, i32 2, i64 %232
  %234 = load ptr, ptr %233, align 8, !tbaa !48
  %235 = getelementptr inbounds %struct._stmt_vec_info, ptr %234, i64 0, i32 5
  %236 = load ptr, ptr %235, align 8, !tbaa !118
  %237 = getelementptr inbounds %struct.tree_type, ptr %236, i64 0, i32 6
  %238 = load i32, ptr %237, align 4
  %239 = and i32 %238, 1023
  %240 = zext nneg i32 %239 to i64
  %241 = shl nuw i64 1, %240
  %242 = trunc i64 %241 to i32
  %243 = getelementptr inbounds %struct.data_reference, ptr %196, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !120
  %245 = ptrtoint ptr %244 to i64
  %246 = and i64 %245, 4294967295
  %247 = icmp eq i64 %246, 4294967295
  br i1 %247, label %304, label %248

248:                                              ; preds = %229
  %249 = trunc i64 %245 to i32
  %250 = getelementptr inbounds %struct.data_reference, ptr %196, i64 0, i32 1
  %251 = load ptr, ptr %250, align 8, !tbaa !90
  %252 = getelementptr inbounds %struct.tree_common, ptr %251, i64 0, i32 2
  %253 = load ptr, ptr %252, align 8, !tbaa !59
  %254 = load i64, ptr %253, align 8
  %255 = and i64 %254, 65535
  %256 = icmp eq i64 %255, 14
  br i1 %256, label %257, label %259

257:                                              ; preds = %248
  %258 = tail call i32 @vector_type_mode(ptr noundef nonnull %253) #20
  br label %264

259:                                              ; preds = %248
  %260 = getelementptr inbounds %struct.tree_type, ptr %253, i64 0, i32 6
  %261 = load i32, ptr %260, align 4
  %262 = lshr i32 %261, 16
  %263 = and i32 %262, 255
  br label %264

264:                                              ; preds = %259, %257
  %265 = phi i32 [ %258, %257 ], [ %263, %259 ]
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !59
  %269 = zext i8 %268 to i32
  %270 = sdiv i32 %249, %269
  %271 = sub nsw i32 %242, %270
  %272 = load ptr, ptr %196, align 8, !tbaa !84
  %273 = getelementptr inbounds %struct.gimple_statement_base, ptr %272, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !59
  %275 = icmp ne i32 %274, 0
  tail call void @llvm.assume(i1 %275)
  %276 = load ptr, ptr @stmt_vec_info_vec, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %280, label %278

278:                                              ; preds = %264
  %279 = load i32, ptr %276, align 8, !tbaa !68
  br label %280

280:                                              ; preds = %278, %264
  %281 = phi i32 [ %279, %278 ], [ 0, %264 ]
  %282 = icmp ugt i32 %274, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %284

284:                                              ; preds = %283, %280
  %285 = load ptr, ptr @stmt_vec_info_vec, align 8
  %286 = add i32 %274, -1
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %285, i64 0, i32 2, i64 %287
  %289 = load ptr, ptr %288, align 8, !tbaa !48
  %290 = getelementptr inbounds %struct._stmt_vec_info, ptr %289, i64 0, i32 17
  %291 = load ptr, ptr %290, align 8, !tbaa !70
  %292 = icmp eq ptr %291, null
  br i1 %292, label %297, label %293

293:                                              ; preds = %284
  %294 = getelementptr inbounds %struct._stmt_vec_info, ptr %289, i64 0, i32 19
  %295 = load i32, ptr %294, align 8, !tbaa !142
  %296 = udiv i32 %271, %295
  br label %297

297:                                              ; preds = %293, %284
  %298 = phi i32 [ %296, %293 ], [ %271, %284 ]
  %299 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %300 = icmp eq i8 %299, 0
  br i1 %300, label %304, label %301

301:                                              ; preds = %297
  %302 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %303 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %302, ptr noundef nonnull @.str.6, i32 noundef %298)
  br label %304

304:                                              ; preds = %297, %301, %229
  %305 = phi i32 [ %298, %301 ], [ %298, %297 ], [ 0, %229 ]
  br label %306

306:                                              ; preds = %355, %304
  %307 = phi i8 [ 1, %304 ], [ %357, %355 ]
  %308 = phi i32 [ 0, %304 ], [ %358, %355 ]
  br i1 %11, label %316, label %309

309:                                              ; preds = %306
  %310 = load i32, ptr %3, align 8, !tbaa !115
  %311 = icmp ugt i32 %310, %308
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = zext i32 %308 to i64
  %314 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %3, i64 0, i32 2, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !48
  br label %316

316:                                              ; preds = %306, %309, %312
  %317 = phi ptr [ %315, %312 ], [ null, %309 ], [ null, %306 ]
  %318 = phi i1 [ false, %312 ], [ true, %309 ], [ true, %306 ]
  br i1 %318, label %359, label %319

319:                                              ; preds = %316
  %320 = icmp eq ptr %317, %196
  br i1 %320, label %355, label %321

321:                                              ; preds = %319
  %322 = load ptr, ptr %317, align 8, !tbaa !84
  %323 = getelementptr inbounds %struct.gimple_statement_base, ptr %322, i64 0, i32 1
  %324 = load i32, ptr %323, align 4, !tbaa !59
  %325 = icmp ne i32 %324, 0
  tail call void @llvm.assume(i1 %325)
  %326 = load ptr, ptr @stmt_vec_info_vec, align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %330, label %328

328:                                              ; preds = %321
  %329 = load i32, ptr %326, align 8, !tbaa !68
  br label %330

330:                                              ; preds = %328, %321
  %331 = phi i32 [ %329, %328 ], [ 0, %321 ]
  %332 = icmp ugt i32 %324, %331
  br i1 %332, label %333, label %334

333:                                              ; preds = %330
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %334

334:                                              ; preds = %333, %330
  %335 = load ptr, ptr @stmt_vec_info_vec, align 8
  %336 = add i32 %324, -1
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %335, i64 0, i32 2, i64 %337
  %339 = load ptr, ptr %338, align 8, !tbaa !48
  %340 = getelementptr inbounds %struct._stmt_vec_info, ptr %339, i64 0, i32 17
  %341 = load ptr, ptr %340, align 8, !tbaa !70
  %342 = icmp eq ptr %341, null
  %343 = icmp eq ptr %341, %322
  %344 = or i1 %342, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %334
  %346 = getelementptr inbounds %struct.data_reference, ptr %317, i64 0, i32 2
  %347 = load ptr, ptr %346, align 8, !tbaa !120
  %348 = ptrtoint ptr %347 to i64
  tail call fastcc void @vect_update_misalignment_for_peel(ptr noundef nonnull %317, ptr noundef nonnull %196, i32 noundef %305)
  %349 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %317)
  %350 = shl i64 %348, 32
  %351 = ashr exact i64 %350, 32
  %352 = inttoptr i64 %351 to ptr
  store ptr %352, ptr %346, align 8, !tbaa !120
  %353 = icmp eq i32 %349, 0
  %354 = select i1 %353, i8 0, i8 %307
  br label %355

355:                                              ; preds = %345, %334, %319
  %356 = phi i1 [ false, %319 ], [ false, %334 ], [ %353, %345 ]
  %357 = phi i8 [ %307, %319 ], [ %307, %334 ], [ %354, %345 ]
  %358 = add i32 %308, 1
  br i1 %356, label %359, label %306, !llvm.loop !146

359:                                              ; preds = %355, %316
  %360 = phi i8 [ %357, %355 ], [ %307, %316 ]
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %400, label %362

362:                                              ; preds = %359, %377
  %363 = phi i32 [ %378, %377 ], [ 0, %359 ]
  br i1 %11, label %371, label %364

364:                                              ; preds = %362
  %365 = load i32, ptr %3, align 8, !tbaa !115
  %366 = icmp ugt i32 %365, %363
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = zext i32 %363 to i64
  %369 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %3, i64 0, i32 2, i64 %368
  %370 = load ptr, ptr %369, align 8, !tbaa !48
  br label %371

371:                                              ; preds = %362, %364, %367
  %372 = phi ptr [ %370, %367 ], [ null, %364 ], [ null, %362 ]
  %373 = phi i1 [ false, %367 ], [ true, %364 ], [ true, %362 ]
  br i1 %373, label %379, label %374

374:                                              ; preds = %371
  %375 = icmp eq ptr %372, %196
  br i1 %375, label %377, label %376

376:                                              ; preds = %374
  tail call fastcc void @vect_update_misalignment_for_peel(ptr noundef %372, ptr noundef nonnull %196, i32 noundef %305)
  br label %377

377:                                              ; preds = %374, %376
  %378 = add i32 %363, 1
  br label %362, !llvm.loop !147

379:                                              ; preds = %371
  %380 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 7
  store ptr %196, ptr %380, align 8, !tbaa !148
  %381 = load ptr, ptr %243, align 8, !tbaa !120
  %382 = ptrtoint ptr %381 to i64
  %383 = trunc i64 %382 to i32
  %384 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 8
  store i32 %383, ptr %384, align 8, !tbaa !149
  store ptr null, ptr %243, align 8, !tbaa !120
  %385 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %390, label %387

387:                                              ; preds = %379
  %388 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %389 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 41, i64 1, ptr %388)
  br label %390

390:                                              ; preds = %387, %379
  %391 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %390
  %394 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %395 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 38, i64 1, ptr %394)
  br label %396

396:                                              ; preds = %393, %390
  %397 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null)
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %396
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1293, ptr noundef nonnull @.str.10) #20
  br label %400

400:                                              ; preds = %359, %399, %396
  %401 = phi i8 [ %397, %396 ], [ %397, %399 ], [ undef, %359 ]
  br i1 %361, label %402, label %613

402:                                              ; preds = %400, %213
  %403 = load i32, ptr @flag_tree_vect_loop_version, align 4, !tbaa !63
  %404 = icmp eq i32 %403, 0
  br i1 %404, label %611, label %405

405:                                              ; preds = %402
  %406 = tail call zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef %4) #20
  %407 = icmp eq i8 %406, 0
  br i1 %407, label %611, label %408

408:                                              ; preds = %405
  %409 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %410 = load ptr, ptr %409, align 8, !tbaa !121
  %411 = icmp eq ptr %410, null
  br i1 %411, label %412, label %611

412:                                              ; preds = %408
  %413 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %414 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 9
  br label %415

415:                                              ; preds = %412, %546
  %416 = phi i8 [ %547, %546 ], [ 1, %412 ]
  %417 = phi i32 [ %548, %546 ], [ 0, %412 ]
  br i1 %11, label %425, label %418

418:                                              ; preds = %415
  %419 = load i32, ptr %3, align 8, !tbaa !115
  %420 = icmp ugt i32 %419, %417
  br i1 %420, label %421, label %425

421:                                              ; preds = %418
  %422 = zext i32 %417 to i64
  %423 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %3, i64 0, i32 2, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !48
  br label %425

425:                                              ; preds = %415, %418, %421
  %426 = phi ptr [ %424, %421 ], [ null, %418 ], [ null, %415 ]
  %427 = phi i1 [ false, %421 ], [ true, %418 ], [ true, %415 ]
  br i1 %427, label %549, label %428

428:                                              ; preds = %425
  %429 = load ptr, ptr %426, align 8, !tbaa !84
  %430 = getelementptr inbounds %struct.gimple_statement_base, ptr %429, i64 0, i32 1
  %431 = load i32, ptr %430, align 4, !tbaa !59
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %448, label %433

433:                                              ; preds = %428
  %434 = load ptr, ptr @stmt_vec_info_vec, align 8
  %435 = icmp eq ptr %434, null
  br i1 %435, label %438, label %436

436:                                              ; preds = %433
  %437 = load i32, ptr %434, align 8, !tbaa !68
  br label %438

438:                                              ; preds = %436, %433
  %439 = phi i32 [ %437, %436 ], [ 0, %433 ]
  %440 = icmp ugt i32 %431, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %442

442:                                              ; preds = %441, %438
  %443 = load ptr, ptr @stmt_vec_info_vec, align 8
  %444 = add i32 %431, -1
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %443, i64 0, i32 2, i64 %445
  %447 = load ptr, ptr %446, align 8, !tbaa !48
  br label %448

448:                                              ; preds = %428, %442
  %449 = phi ptr [ %447, %442 ], [ null, %428 ]
  %450 = getelementptr inbounds %struct.data_reference, ptr %426, i64 0, i32 2
  %451 = load ptr, ptr %450, align 8, !tbaa !120
  %452 = ptrtoint ptr %451 to i64
  %453 = and i64 %452, 4294967295
  %454 = icmp eq i64 %453, 0
  br i1 %454, label %546, label %455

455:                                              ; preds = %448
  %456 = getelementptr inbounds %struct._stmt_vec_info, ptr %449, i64 0, i32 17
  %457 = load ptr, ptr %456, align 8, !tbaa !70
  %458 = icmp eq ptr %457, null
  %459 = icmp eq ptr %457, %429
  %460 = or i1 %458, %459
  br i1 %460, label %461, label %546

461:                                              ; preds = %455
  %462 = tail call i32 @vect_supportable_dr_alignment(ptr noundef nonnull %426)
  %463 = icmp eq i32 %462, 0
  br i1 %463, label %464, label %546

464:                                              ; preds = %461
  %465 = load ptr, ptr %450, align 8, !tbaa !120
  %466 = ptrtoint ptr %465 to i64
  %467 = and i64 %466, 4294967295
  %468 = icmp eq i64 %467, 4294967295
  br i1 %468, label %469, label %543

469:                                              ; preds = %464
  %470 = load ptr, ptr %413, align 8, !tbaa !150
  %471 = icmp eq ptr %470, null
  br i1 %471, label %474, label %472

472:                                              ; preds = %469
  %473 = load i32, ptr %470, align 8, !tbaa !151
  br label %474

474:                                              ; preds = %469, %472
  %475 = phi i32 [ %473, %472 ], [ 0, %469 ]
  %476 = load ptr, ptr @compiler_params, align 8, !tbaa !48
  %477 = getelementptr inbounds %struct.param_info, ptr %476, i64 71, i32 1
  %478 = load i32, ptr %477, align 8, !tbaa !153
  %479 = icmp ult i32 %475, %478
  br i1 %479, label %480, label %543

480:                                              ; preds = %474
  %481 = load ptr, ptr %426, align 8, !tbaa !84
  %482 = getelementptr inbounds %struct.gimple_statement_base, ptr %481, i64 0, i32 1
  %483 = load i32, ptr %482, align 4, !tbaa !59
  %484 = icmp ne i32 %483, 0
  tail call void @llvm.assume(i1 %484)
  %485 = load ptr, ptr @stmt_vec_info_vec, align 8
  %486 = icmp eq ptr %485, null
  br i1 %486, label %489, label %487

487:                                              ; preds = %480
  %488 = load i32, ptr %485, align 8, !tbaa !68
  br label %489

489:                                              ; preds = %487, %480
  %490 = phi i32 [ %488, %487 ], [ 0, %480 ]
  %491 = icmp ugt i32 %483, %490
  br i1 %491, label %492, label %493

492:                                              ; preds = %489
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %493

493:                                              ; preds = %492, %489
  %494 = load ptr, ptr @stmt_vec_info_vec, align 8
  %495 = add i32 %483, -1
  %496 = zext i32 %495 to i64
  %497 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %494, i64 0, i32 2, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !48
  %499 = getelementptr inbounds %struct._stmt_vec_info, ptr %498, i64 0, i32 5
  %500 = load ptr, ptr %499, align 8, !tbaa !118
  %501 = icmp eq ptr %500, null
  br i1 %501, label %502, label %503

502:                                              ; preds = %493
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1347, ptr noundef nonnull @.str.10) #20
  br label %503

503:                                              ; preds = %493, %502
  %504 = load i64, ptr %500, align 8
  %505 = and i64 %504, 65535
  %506 = icmp eq i64 %505, 14
  br i1 %506, label %507, label %509

507:                                              ; preds = %503
  %508 = tail call i32 @vector_type_mode(ptr noundef nonnull %500) #20
  br label %514

509:                                              ; preds = %503
  %510 = getelementptr inbounds %struct.tree_type, ptr %500, i64 0, i32 6
  %511 = load i32, ptr %510, align 4
  %512 = lshr i32 %511, 16
  %513 = and i32 %512, 255
  br label %514

514:                                              ; preds = %509, %507
  %515 = phi i32 [ %508, %507 ], [ %513, %509 ]
  %516 = zext i32 %515 to i64
  %517 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %516
  %518 = load i8, ptr %517, align 1, !tbaa !59
  %519 = zext i8 %518 to i32
  %520 = add nsw i32 %519, -1
  %521 = load i32, ptr %414, align 4, !tbaa !155
  %522 = icmp eq i32 %521, 0
  %523 = icmp eq i32 %521, %520
  %524 = select i1 %522, i1 true, i1 %523
  br i1 %524, label %526, label %525

525:                                              ; preds = %514
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1361, ptr noundef nonnull @.str.10) #20
  br label %526

526:                                              ; preds = %514, %525
  store i32 %520, ptr %414, align 4, !tbaa !155
  %527 = load ptr, ptr %426, align 8, !tbaa !84
  %528 = load ptr, ptr %413, align 8, !tbaa !48
  %529 = icmp eq ptr %528, null
  br i1 %529, label %535, label %530

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.VEC_gimple_base, ptr %528, i64 0, i32 1
  %532 = load i32, ptr %531, align 4, !tbaa !156
  %533 = load i32, ptr %528, align 8, !tbaa !151
  %534 = icmp eq i32 %532, %533
  br i1 %534, label %535, label %537

535:                                              ; preds = %526, %530
  %536 = tail call ptr @vec_heap_p_reserve(ptr noundef %528, i32 noundef 1) #20
  store ptr %536, ptr %413, align 8, !tbaa !48
  br label %537

537:                                              ; preds = %530, %535
  %538 = load ptr, ptr %413, align 8, !tbaa !48
  %539 = load i32, ptr %538, align 8, !tbaa !151
  %540 = add i32 %539, 1
  store i32 %540, ptr %538, align 8, !tbaa !151
  %541 = zext i32 %539 to i64
  %542 = getelementptr inbounds %struct.VEC_gimple_base, ptr %538, i64 0, i32 2, i64 %541
  store ptr %527, ptr %542, align 8, !tbaa !48
  br label %543

543:                                              ; preds = %464, %474, %537
  %544 = phi i8 [ %416, %537 ], [ 0, %474 ], [ 0, %464 ]
  %545 = phi i1 [ true, %537 ], [ false, %474 ], [ false, %464 ]
  br i1 %545, label %546, label %549

546:                                              ; preds = %543, %455, %461, %448
  %547 = phi i8 [ %416, %448 ], [ %416, %461 ], [ %544, %543 ], [ %416, %455 ]
  %548 = add i32 %417, 1
  br label %415, !llvm.loop !157

549:                                              ; preds = %543, %425
  %550 = phi i8 [ %544, %543 ], [ %416, %425 ]
  %551 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 13
  %552 = load ptr, ptr %551, align 8, !tbaa !150
  %553 = icmp eq ptr %552, null
  br i1 %553, label %611, label %554

554:                                              ; preds = %549
  %555 = load i32, ptr %552, align 8, !tbaa !151
  %556 = icmp eq i32 %555, 0
  br i1 %556, label %611, label %557

557:                                              ; preds = %554
  %558 = icmp eq i8 %550, 0
  br i1 %558, label %559, label %561

559:                                              ; preds = %557
  br i1 %553, label %611, label %560

560:                                              ; preds = %559
  store i32 0, ptr %552, align 8, !tbaa !151
  br label %611

561:                                              ; preds = %557, %599
  %562 = phi i32 [ %600, %599 ], [ 0, %557 ]
  br i1 %553, label %570, label %563

563:                                              ; preds = %561
  %564 = load i32, ptr %552, align 8, !tbaa !151
  %565 = icmp ugt i32 %564, %562
  br i1 %565, label %566, label %570

566:                                              ; preds = %563
  %567 = zext i32 %562 to i64
  %568 = getelementptr inbounds %struct.VEC_gimple_base, ptr %552, i64 0, i32 2, i64 %567
  %569 = load ptr, ptr %568, align 8, !tbaa !48
  br label %570

570:                                              ; preds = %561, %563, %566
  %571 = phi ptr [ %569, %566 ], [ null, %563 ], [ null, %561 ]
  %572 = phi i1 [ false, %566 ], [ true, %563 ], [ true, %561 ]
  br i1 %572, label %601, label %573

573:                                              ; preds = %570
  %574 = getelementptr inbounds %struct.gimple_statement_base, ptr %571, i64 0, i32 1
  %575 = load i32, ptr %574, align 4, !tbaa !59
  %576 = icmp ne i32 %575, 0
  tail call void @llvm.assume(i1 %576)
  %577 = load ptr, ptr @stmt_vec_info_vec, align 8
  %578 = icmp eq ptr %577, null
  br i1 %578, label %581, label %579

579:                                              ; preds = %573
  %580 = load i32, ptr %577, align 8, !tbaa !68
  br label %581

581:                                              ; preds = %579, %573
  %582 = phi i32 [ %580, %579 ], [ 0, %573 ]
  %583 = icmp ugt i32 %575, %582
  br i1 %583, label %584, label %585

584:                                              ; preds = %581
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %585

585:                                              ; preds = %584, %581
  %586 = load ptr, ptr @stmt_vec_info_vec, align 8
  %587 = add i32 %575, -1
  %588 = zext i32 %587 to i64
  %589 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %586, i64 0, i32 2, i64 %588
  %590 = load ptr, ptr %589, align 8, !tbaa !48
  %591 = getelementptr inbounds %struct._stmt_vec_info, ptr %590, i64 0, i32 7
  %592 = load ptr, ptr %591, align 8, !tbaa !158
  %593 = getelementptr inbounds %struct.data_reference, ptr %592, i64 0, i32 2
  store ptr null, ptr %593, align 8, !tbaa !120
  %594 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %595 = icmp eq i8 %594, 0
  br i1 %595, label %599, label %596

596:                                              ; preds = %585
  %597 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %598 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 44, i64 1, ptr %597)
  br label %599

599:                                              ; preds = %596, %585
  %600 = add i32 %562, 1
  br label %561, !llvm.loop !159

601:                                              ; preds = %570
  %602 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %603 = icmp eq i8 %602, 0
  br i1 %603, label %607, label %604

604:                                              ; preds = %601
  %605 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %606 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 41, i64 1, ptr %605)
  br label %607

607:                                              ; preds = %601, %604
  %608 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null)
  %609 = icmp eq i8 %608, 0
  br i1 %609, label %610, label %613

610:                                              ; preds = %607
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1401, ptr noundef nonnull @.str.10) #20
  br label %613

611:                                              ; preds = %549, %560, %559, %405, %402, %554, %408
  %612 = tail call zeroext i8 @vect_verify_datarefs_alignment(ptr noundef nonnull %0, ptr noundef null)
  br label %613

613:                                              ; preds = %610, %607, %400, %611
  %614 = phi i8 [ %612, %611 ], [ %401, %400 ], [ %608, %607 ], [ %608, %610 ]
  ret i8 %614
}

declare zeroext i8 @vect_can_advance_ivs_p(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @slpeel_can_duplicate_loop_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @single_exit(ptr noundef) local_unnamed_addr #3

declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_update_misalignment_for_peel(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !47 {
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !90
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !59
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 14
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = tail call i32 @vector_type_mode(ptr noundef nonnull %7) #20
  br label %18

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 16
  %17 = and i32 %16, 255
  br label %18

18:                                               ; preds = %13, %11
  %19 = phi i32 [ %12, %11 ], [ %17, %13 ]
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !59
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !90
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !59
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 14
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = tail call i32 @vector_type_mode(ptr noundef nonnull %27) #20
  br label %38

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  br label %38

38:                                               ; preds = %33, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %33 ]
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %40
  %42 = load i8, ptr %41, align 1, !tbaa !59
  %43 = zext i8 %42 to i32
  %44 = load ptr, ptr %0, align 8, !tbaa !84
  %45 = getelementptr inbounds %struct.gimple_statement_base, ptr %44, i64 0, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !59
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %38
  %49 = load ptr, ptr @stmt_vec_info_vec, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %48
  %52 = load i32, ptr %49, align 8, !tbaa !68
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %52, %51 ], [ 0, %48 ]
  %55 = icmp ugt i32 %46, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %57

57:                                               ; preds = %56, %53
  %58 = load ptr, ptr @stmt_vec_info_vec, align 8
  %59 = add i32 %46, -1
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %58, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !48
  br label %63

63:                                               ; preds = %38, %57
  %64 = phi ptr [ %62, %57 ], [ null, %38 ]
  %65 = load ptr, ptr %1, align 8, !tbaa !84
  %66 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !59
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69

69:                                               ; preds = %63
  %70 = load ptr, ptr @stmt_vec_info_vec, align 8
  %71 = icmp eq ptr %70, null
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i32, ptr %70, align 8, !tbaa !68
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i32 [ %73, %72 ], [ 0, %69 ]
  %76 = icmp ugt i32 %67, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %78

78:                                               ; preds = %77, %74
  %79 = load ptr, ptr @stmt_vec_info_vec, align 8
  %80 = add i32 %67, -1
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %79, i64 0, i32 2, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !48
  br label %84

84:                                               ; preds = %63, %78
  %85 = phi ptr [ %83, %78 ], [ null, %63 ]
  %86 = getelementptr inbounds %struct._stmt_vec_info, ptr %64, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !70
  %88 = icmp eq ptr %87, null
  br i1 %88, label %110, label %89

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.gimple_statement_base, ptr %87, i64 0, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !59
  %92 = icmp ne i32 %91, 0
  tail call void @llvm.assume(i1 %92)
  %93 = load ptr, ptr @stmt_vec_info_vec, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %89
  %96 = load i32, ptr %93, align 8, !tbaa !68
  br label %97

97:                                               ; preds = %95, %89
  %98 = phi i32 [ %96, %95 ], [ 0, %89 ]
  %99 = icmp ugt i32 %91, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %101

101:                                              ; preds = %100, %97
  %102 = load ptr, ptr @stmt_vec_info_vec, align 8
  %103 = add i32 %91, -1
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %102, i64 0, i32 2, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !48
  %107 = getelementptr inbounds %struct._stmt_vec_info, ptr %106, i64 0, i32 19
  %108 = load i32, ptr %107, align 8, !tbaa !142
  %109 = mul i32 %108, %23
  br label %110

110:                                              ; preds = %101, %84
  %111 = phi i32 [ %109, %101 ], [ %23, %84 ]
  %112 = getelementptr inbounds %struct._stmt_vec_info, ptr %85, i64 0, i32 17
  %113 = load ptr, ptr %112, align 8, !tbaa !70
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = getelementptr inbounds %struct._stmt_vec_info, ptr %85, i64 0, i32 19
  %117 = load i32, ptr %116, align 8, !tbaa !142
  %118 = mul i32 %117, %43
  br label %119

119:                                              ; preds = %115, %110
  %120 = phi i32 [ %118, %115 ], [ %43, %110 ]
  %121 = load ptr, ptr %1, align 8, !tbaa !84
  %122 = getelementptr inbounds %struct.gimple_statement_base, ptr %121, i64 0, i32 1
  %123 = load i32, ptr %122, align 4, !tbaa !59
  %124 = icmp ne i32 %123, 0
  tail call void @llvm.assume(i1 %124)
  %125 = load ptr, ptr @stmt_vec_info_vec, align 8
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %119
  %128 = load i32, ptr %125, align 8, !tbaa !68
  br label %129

129:                                              ; preds = %127, %119
  %130 = phi i32 [ %128, %127 ], [ 0, %119 ]
  %131 = icmp ugt i32 %123, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %133

133:                                              ; preds = %132, %129
  %134 = load ptr, ptr @stmt_vec_info_vec, align 8
  %135 = add i32 %123, -1
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %134, i64 0, i32 2, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !48
  %139 = getelementptr inbounds %struct._stmt_vec_info, ptr %138, i64 0, i32 15
  %140 = load ptr, ptr %139, align 8, !tbaa !160
  %141 = icmp eq ptr %140, null
  br label %142

142:                                              ; preds = %154, %133
  %143 = phi i32 [ 0, %133 ], [ %156, %154 ]
  br i1 %141, label %151, label %144

144:                                              ; preds = %142
  %145 = load i32, ptr %140, align 8, !tbaa !110
  %146 = icmp ugt i32 %145, %143
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = zext i32 %143 to i64
  %149 = getelementptr inbounds %struct.VEC_dr_p_base, ptr %140, i64 0, i32 2, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !48
  br label %151

151:                                              ; preds = %142, %144, %147
  %152 = phi ptr [ %150, %147 ], [ null, %144 ], [ null, %142 ]
  %153 = phi i1 [ false, %147 ], [ true, %144 ], [ true, %142 ]
  br i1 %153, label %171, label %154

154:                                              ; preds = %151
  %155 = icmp eq ptr %152, %0
  %156 = add i32 %143, 1
  br i1 %155, label %157, label %142, !llvm.loop !161

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %159 = load ptr, ptr %158, align 8, !tbaa !120
  %160 = ptrtoint ptr %159 to i64
  %161 = trunc i64 %160 to i32
  %162 = sdiv i32 %161, %111
  %163 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 2
  %164 = load ptr, ptr %163, align 8, !tbaa !120
  %165 = ptrtoint ptr %164 to i64
  %166 = trunc i64 %165 to i32
  %167 = sdiv i32 %166, %120
  %168 = icmp eq i32 %162, %167
  br i1 %168, label %170, label %169

169:                                              ; preds = %157
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 889, ptr noundef nonnull @.str.10) #20
  br label %170

170:                                              ; preds = %157, %169
  store ptr null, ptr %158, align 8, !tbaa !120
  br label %215

171:                                              ; preds = %151
  %172 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 2
  %173 = load ptr, ptr %172, align 8, !tbaa !120
  %174 = ptrtoint ptr %173 to i64
  %175 = and i64 %174, 4294967295
  %176 = icmp eq i64 %175, 4294967295
  br i1 %176, label %208, label %177

177:                                              ; preds = %171
  %178 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !120
  %180 = ptrtoint ptr %179 to i64
  %181 = and i64 %180, 4294967295
  %182 = icmp eq i64 %181, 4294967295
  br i1 %182, label %208, label %183

183:                                              ; preds = %177
  %184 = trunc i64 %174 to i32
  %185 = getelementptr inbounds %struct._stmt_vec_info, ptr %64, i64 0, i32 5
  %186 = load ptr, ptr %185, align 8, !tbaa !118
  %187 = mul nsw i32 %111, %2
  %188 = add nsw i32 %187, %184
  %189 = load i64, ptr %186, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 14
  br i1 %191, label %192, label %194

192:                                              ; preds = %183
  %193 = tail call i32 @vector_type_mode(ptr noundef nonnull %186) #20
  br label %199

194:                                              ; preds = %183
  %195 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %196 = load i32, ptr %195, align 4
  %197 = lshr i32 %196, 16
  %198 = and i32 %197, 255
  br label %199

199:                                              ; preds = %194, %192
  %200 = phi i32 [ %193, %192 ], [ %198, %194 ]
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %201
  %203 = load i8, ptr %202, align 1, !tbaa !59
  %204 = zext i8 %203 to i32
  %205 = srem i32 %188, %204
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to ptr
  store ptr %207, ptr %172, align 8, !tbaa !120
  br label %215

208:                                              ; preds = %177, %171
  %209 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %208
  %212 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %213 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 27, i64 1, ptr %212)
  br label %214

214:                                              ; preds = %211, %208
  store ptr inttoptr (i64 -1 to ptr), ptr %172, align 8, !tbaa !120
  br label %215

215:                                              ; preds = %214, %199, %170
  ret void
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @optimize_loop_nest_for_speed_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_refs_alignment(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !75 {
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !76

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %7 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 40, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %12 = select i1 %9, ptr %11, ptr %10, !prof !76
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %254, %8
  %16 = phi i32 [ 0, %8 ], [ %255, %254 ]
  br i1 %14, label %24, label %17, !prof !77

17:                                               ; preds = %15
  %18 = load i32, ptr %13, align 8, !tbaa !115
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %20, label %24, !prof !80

20:                                               ; preds = %17
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %20, %17, %15
  %25 = phi ptr [ %23, %20 ], [ null, %17 ], [ null, %15 ]
  %26 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %15 ]
  br i1 %26, label %263, label %27, !prof !80

27:                                               ; preds = %24
  %28 = load ptr, ptr %25, align 8, !tbaa !84
  %29 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 1
  %30 = load i32, ptr %29, align 4, !tbaa !59
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %47, label %32, !prof !89

32:                                               ; preds = %27
  %33 = load ptr, ptr @stmt_vec_info_vec, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %37, label %35, !prof !89

35:                                               ; preds = %32
  %36 = load i32, ptr %33, align 8, !tbaa !68
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %36, %35 ], [ 0, %32 ]
  %39 = icmp ugt i32 %30, %38
  br i1 %39, label %40, label %41, !prof !89

40:                                               ; preds = %37
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %41

41:                                               ; preds = %40, %37
  %42 = load ptr, ptr @stmt_vec_info_vec, align 8
  %43 = add i32 %30, -1
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %42, i64 0, i32 2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  br label %47

47:                                               ; preds = %41, %27
  %48 = phi ptr [ %46, %41 ], [ null, %27 ]
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !119
  %51 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %58, label %55, !prof !76

55:                                               ; preds = %47
  %56 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %57 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 32, i64 1, ptr %56)
  br label %58

58:                                               ; preds = %55, %47
  %59 = icmp eq ptr %50, null
  br i1 %59, label %62, label %60, !prof !76

60:                                               ; preds = %58
  %61 = load ptr, ptr %50, align 8, !tbaa !93
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi ptr [ %61, %60 ], [ null, %58 ]
  %64 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 2
  store ptr inttoptr (i64 -1 to ptr), ptr %64, align 8, !tbaa !120
  %65 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4
  %66 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !162
  %68 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !163
  %70 = load ptr, ptr %65, align 8, !tbaa !164
  %71 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !118
  %73 = icmp eq ptr %63, null
  br i1 %73, label %128, label %74, !prof !76

74:                                               ; preds = %62
  %75 = getelementptr inbounds %struct.loop, ptr %63, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !121
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.gimple_statement_base, ptr %28, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !59
  %81 = getelementptr inbounds %struct.basic_block_def, ptr %80, i64 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !122
  %83 = icmp eq ptr %76, %82
  %84 = zext i1 %83 to i8
  br label %85

85:                                               ; preds = %78, %74
  %86 = phi i8 [ 0, %74 ], [ %84, %78 ]
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %128, label %88

88:                                               ; preds = %85
  %89 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !138
  %91 = getelementptr inbounds %struct.tree_int_cst, ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !59
  %93 = load i64, ptr %72, align 8
  %94 = and i64 %93, 65535
  %95 = icmp eq i64 %94, 14
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = tail call i32 @vector_type_mode(ptr noundef nonnull %72) #20
  br label %103

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 6
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 255
  br label %103

103:                                              ; preds = %98, %96
  %104 = phi i32 [ %97, %96 ], [ %102, %98 ]
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %105
  %107 = load i8, ptr %106, align 1, !tbaa !59
  %108 = zext i8 %107 to i64
  %109 = srem i64 %92, %108
  %110 = icmp eq i64 %109, 0
  %111 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %112 = icmp eq i8 %111, 0
  br i1 %110, label %113, label %124

113:                                              ; preds = %103
  br i1 %112, label %117, label %114

114:                                              ; preds = %113
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %116 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 35, i64 1, ptr %115)
  br label %117

117:                                              ; preds = %114, %113
  %118 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 9
  %119 = load ptr, ptr %118, align 8, !tbaa !165
  %120 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 12
  %121 = load ptr, ptr %120, align 8, !tbaa !166
  %122 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 8
  %123 = load ptr, ptr %122, align 8, !tbaa !167
  br label %128

124:                                              ; preds = %103
  br i1 %112, label %128, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %127 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 42, i64 1, ptr %126)
  br label %128

128:                                              ; preds = %125, %124, %117, %85, %62
  %129 = phi ptr [ %67, %85 ], [ %67, %62 ], [ %119, %117 ], [ null, %125 ], [ null, %124 ]
  %130 = phi ptr [ %69, %85 ], [ %69, %62 ], [ %121, %117 ], [ %69, %125 ], [ %69, %124 ]
  %131 = phi ptr [ %70, %85 ], [ %70, %62 ], [ %123, %117 ], [ %70, %125 ], [ %70, %124 ]
  %132 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %131) #20
  %133 = getelementptr inbounds %struct.tree_type, ptr %72, i64 0, i32 7
  %134 = load i32, ptr %133, align 8, !tbaa !59
  %135 = lshr i32 %134, 3
  %136 = zext nneg i32 %135 to i64
  %137 = tail call ptr @size_int_kind(i64 noundef %136, i32 noundef 1) #20
  %138 = icmp eq ptr %130, null
  br i1 %138, label %144, label %139, !prof !89

139:                                              ; preds = %128
  %140 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %130, ptr noundef %137) #20
  %141 = icmp sgt i32 %140, -1
  %142 = icmp ne ptr %129, null
  %143 = select i1 %141, i1 %142, i1 false, !prof !76
  br i1 %143, label %152, label %146, !prof !76

144:                                              ; preds = %128
  %145 = icmp eq ptr %129, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %144, %139
  %147 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %254, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %151 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 30, i64 1, ptr %150)
  br label %251

152:                                              ; preds = %144, %139
  %153 = load i64, ptr %132, align 8
  %154 = and i64 %153, 65535
  %155 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %154
  %156 = load i32, ptr %155, align 4, !tbaa !63
  %157 = icmp eq i32 %156, 3
  br i1 %157, label %158, label %166, !prof !76

158:                                              ; preds = %152
  %159 = getelementptr inbounds %struct.tree_decl_common, ptr %132, i64 0, i32 3
  %160 = load i32, ptr %159, align 8, !tbaa !59
  %161 = lshr i32 %160, 3
  %162 = zext nneg i32 %161 to i64
  %163 = tail call ptr @size_int_kind(i64 noundef %162, i32 noundef 1) #20
  %164 = tail call i32 @tree_int_cst_compare(ptr noundef %163, ptr noundef %137) #20
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %183, label %166, !prof !89

166:                                              ; preds = %158, %152
  %167 = load i64, ptr %131, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 141
  br i1 %169, label %170, label %182, !prof !89

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct.tree_common, ptr %131, i64 0, i32 2
  %172 = load ptr, ptr %171, align 8, !tbaa !59
  %173 = getelementptr inbounds %struct.tree_common, ptr %172, i64 0, i32 2
  %174 = load ptr, ptr %173, align 8, !tbaa !59
  %175 = getelementptr inbounds %struct.tree_type, ptr %174, i64 0, i32 7
  %176 = load i32, ptr %175, align 8, !tbaa !59
  %177 = lshr i32 %176, 3
  %178 = zext nneg i32 %177 to i64
  %179 = tail call ptr @size_int_kind(i64 noundef %178, i32 noundef 1) #20
  %180 = tail call i32 @tree_int_cst_compare(ptr noundef %179, ptr noundef %137) #20
  %181 = icmp sgt i32 %180, -1
  br i1 %181, label %183, label %182

182:                                              ; preds = %170, %166
  br label %183

183:                                              ; preds = %182, %170, %158
  %184 = phi i1 [ true, %182 ], [ false, %170 ], [ false, %158 ]
  br i1 %184, label %185, label %229, !prof !76

185:                                              ; preds = %183
  %186 = load i64, ptr %132, align 8
  %187 = and i64 %186, 65535
  %188 = icmp eq i64 %187, 32
  br i1 %188, label %189, label %205, !prof !76

189:                                              ; preds = %185
  %190 = load i32, ptr %133, align 8, !tbaa !59
  %191 = getelementptr inbounds %struct.tree_decl_common, ptr %132, i64 0, i32 2
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 33554432
  %194 = and i64 %186, 4194304
  %195 = or disjoint i64 %193, %194
  %196 = icmp eq i64 %195, 0
  %197 = icmp ult i32 %190, -2147483647
  %198 = select i1 %196, i1 %197, i1 false, !prof !89
  br i1 %198, label %199, label %205, !prof !89

199:                                              ; preds = %189
  %200 = and i64 %186, 67108864
  %201 = icmp ne i64 %200, 0
  %202 = load i32, ptr @flag_section_anchors, align 4
  %203 = icmp ne i32 %202, 0
  %204 = select i1 %201, i1 %203, i1 false
  br i1 %204, label %205, label %211

205:                                              ; preds = %199, %189, %185
  %206 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %254, label %208, !prof !76

208:                                              ; preds = %205
  %209 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %210 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 30, i64 1, ptr %209)
  br label %251

211:                                              ; preds = %199
  %212 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %211
  %215 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %216 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 15, i64 1, ptr %215)
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i32, ptr %133, align 8, !tbaa !59
  %219 = getelementptr inbounds %struct.tree_decl_common, ptr %132, i64 0, i32 3
  store i32 %218, ptr %219, align 8, !tbaa !59
  %220 = load i64, ptr %132, align 8
  %221 = or i64 %220, 4398046511104
  store i64 %221, ptr %132, align 8
  br i1 %184, label %222, label %229

222:                                              ; preds = %217
  %223 = and i64 %220, 65535
  %224 = icmp eq i64 %223, 32
  br i1 %224, label %225, label %228

225:                                              ; preds = %222
  %226 = load i32, ptr %133, align 8, !tbaa !59
  %227 = icmp ult i32 %218, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %225, %222
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 802, ptr noundef nonnull @.str.10) #20
  br label %229

229:                                              ; preds = %228, %225, %217, %183
  %230 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 73, ptr noundef %129, ptr noundef %137) #20
  %231 = tail call i32 @host_integerp(ptr noundef %230, i32 noundef 1) #20
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %256, label %236

236:                                              ; preds = %233
  %237 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %238 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 25, i64 1, ptr %237)
  br label %256

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.tree_int_cst, ptr %230, i64 0, i32 1
  %241 = load i64, ptr %240, align 8, !tbaa !59
  %242 = inttoptr i64 %241 to ptr
  store ptr %242, ptr %64, align 8, !tbaa !120
  %243 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %244 = icmp eq i8 %243, 0
  br i1 %244, label %254, label %245

245:                                              ; preds = %239
  %246 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %247 = load ptr, ptr %64, align 8, !tbaa !120
  %248 = ptrtoint ptr %247 to i64
  %249 = trunc i64 %248 to i32
  %250 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %246, ptr noundef nonnull @.str.89, i32 noundef %249)
  br label %251

251:                                              ; preds = %149, %208, %245
  %252 = phi ptr [ %52, %245 ], [ %52, %208 ], [ %132, %149 ]
  %253 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  tail call void @print_generic_expr(ptr noundef %253, ptr noundef %252, i32 noundef 2) #20
  br label %254

254:                                              ; preds = %251, %239, %205, %146
  %255 = add i32 %16, 1
  br label %15, !llvm.loop !168

256:                                              ; preds = %233, %236
  br i1 %26, label %263, label %257, !prof !76

257:                                              ; preds = %256
  %258 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %259 = icmp eq i8 %258, 0
  br i1 %259, label %263, label %260

260:                                              ; preds = %257
  %261 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %262 = tail call i64 @fwrite(ptr nonnull @.str.14, i64 55, i64 1, ptr %261)
  br label %263

263:                                              ; preds = %24, %256, %257, %260
  %264 = phi i8 [ 0, %260 ], [ 0, %257 ], [ 1, %256 ], [ 1, %24 ]
  ret i8 %264
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_ref_accesses(ptr noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !75 {
  %3 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !76

5:                                                ; preds = %2
  %6 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %7 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 38, i64 1, ptr %6)
  br label %8

8:                                                ; preds = %5, %2
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %11 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %12 = select i1 %9, ptr %11, ptr %10, !prof !76
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br label %15

15:                                               ; preds = %712, %8
  %16 = phi i32 [ 0, %8 ], [ %715, %712 ]
  br i1 %14, label %24, label %17, !prof !89

17:                                               ; preds = %15
  %18 = load i32, ptr %13, align 8, !tbaa !115
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %20, label %24, !prof !76

20:                                               ; preds = %17
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %13, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %15, %17, %20
  %25 = phi ptr [ %23, %20 ], [ null, %17 ], [ null, %15 ]
  %26 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %15 ]
  br i1 %26, label %722, label %27, !prof !89

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !138
  %30 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !90
  %32 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  %34 = load ptr, ptr %25, align 8, !tbaa !84
  %35 = getelementptr inbounds %struct.gimple_statement_base, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !59
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %53, label %38, !prof !89

38:                                               ; preds = %27
  %39 = load ptr, ptr @stmt_vec_info_vec, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !89

41:                                               ; preds = %38
  %42 = load i32, ptr %39, align 8, !tbaa !68
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %42, %41 ], [ 0, %38 ]
  %45 = icmp ugt i32 %36, %44
  br i1 %45, label %46, label %47, !prof !89

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr @stmt_vec_info_vec, align 8
  %49 = add i32 %36, -1
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %48, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !48
  br label %53

53:                                               ; preds = %47, %27
  %54 = phi ptr [ %52, %47 ], [ null, %27 ]
  %55 = getelementptr inbounds %struct._stmt_vec_info, ptr %54, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !119
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %29, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !59
  %59 = icmp ne ptr %56, null
  br i1 %59, label %60, label %62, !prof !89

60:                                               ; preds = %53
  %61 = load ptr, ptr %56, align 8, !tbaa !93
  br label %62

62:                                               ; preds = %60, %53
  %63 = phi ptr [ %61, %60 ], [ null, %53 ]
  %64 = icmp eq ptr %56, null
  %65 = icmp ne ptr %29, null
  %66 = select i1 %64, i1 true, i1 %65, !prof !76
  br i1 %66, label %73, label %67, !prof !76

67:                                               ; preds = %62
  %68 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %712, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %72 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 27, i64 1, ptr %71)
  br label %712

73:                                               ; preds = %62
  %74 = icmp eq i64 %58, 0
  %75 = select i1 %59, i1 %74, i1 false, !prof !89
  br i1 %75, label %712, label %76, !prof !89

76:                                               ; preds = %73
  %77 = icmp eq ptr %63, null
  br i1 %77, label %126, label %78, !prof !76

78:                                               ; preds = %76
  %79 = getelementptr inbounds %struct.loop, ptr %63, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !121
  %81 = icmp eq ptr %80, null
  br i1 %81, label %89, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.gimple_statement_base, ptr %34, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !59
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %84, i64 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !122
  %87 = icmp eq ptr %80, %86
  %88 = zext i1 %87 to i8
  br label %89

89:                                               ; preds = %82, %78
  %90 = phi i8 [ 0, %78 ], [ %88, %82 ]
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %126, label %92

92:                                               ; preds = %89
  %93 = load i32, ptr %35, align 4, !tbaa !59
  %94 = icmp ne i32 %93, 0
  tail call void @llvm.assume(i1 %94)
  %95 = load ptr, ptr @stmt_vec_info_vec, align 8
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92
  %98 = load i32, ptr %95, align 8, !tbaa !68
  br label %99

99:                                               ; preds = %97, %92
  %100 = phi i32 [ %98, %97 ], [ 0, %92 ]
  %101 = icmp ugt i32 %93, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %103

103:                                              ; preds = %102, %99
  %104 = load ptr, ptr @stmt_vec_info_vec, align 8
  %105 = add i32 %93, -1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %104, i64 0, i32 2, i64 %106
  %108 = load ptr, ptr %107, align 8, !tbaa !48
  %109 = getelementptr inbounds %struct._stmt_vec_info, ptr %108, i64 0, i32 17
  store ptr null, ptr %109, align 8, !tbaa !70
  %110 = getelementptr inbounds %struct._stmt_vec_info, ptr %54, i64 0, i32 11
  %111 = load ptr, ptr %110, align 8, !tbaa !169
  %112 = getelementptr inbounds %struct.tree_int_cst, ptr %111, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !59
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %103
  %116 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %120 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 24, i64 1, ptr %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 3
  %123 = load i8, ptr %122, align 8, !tbaa !96
  %124 = icmp ne i8 %123, 0
  %125 = zext i1 %124 to i8
  br label %712

126:                                              ; preds = %103, %89, %76
  %127 = phi ptr [ %111, %103 ], [ %29, %89 ], [ %29, %76 ]
  %128 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !59
  %130 = tail call i32 @tree_int_cst_compare(ptr noundef %127, ptr noundef %129) #20
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %150, !prof !89

132:                                              ; preds = %126
  %133 = load i32, ptr %35, align 4, !tbaa !59
  %134 = icmp ne i32 %133, 0
  tail call void @llvm.assume(i1 %134)
  %135 = load ptr, ptr @stmt_vec_info_vec, align 8
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %132
  %138 = load i32, ptr %135, align 8, !tbaa !68
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi i32 [ %138, %137 ], [ 0, %132 ]
  %141 = icmp ugt i32 %133, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %143

143:                                              ; preds = %142, %139
  %144 = load ptr, ptr @stmt_vec_info_vec, align 8
  %145 = add i32 %133, -1
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %144, i64 0, i32 2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !48
  %149 = getelementptr inbounds %struct._stmt_vec_info, ptr %148, i64 0, i32 17
  store ptr null, ptr %149, align 8, !tbaa !70
  br label %712

150:                                              ; preds = %126
  br i1 %77, label %171, label %151, !prof !76

151:                                              ; preds = %150
  %152 = getelementptr inbounds %struct.loop, ptr %63, i64 0, i32 8
  %153 = load ptr, ptr %152, align 8, !tbaa !121
  %154 = icmp eq ptr %153, null
  br i1 %154, label %162, label %155

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.gimple_statement_base, ptr %34, i64 0, i32 4
  %157 = load ptr, ptr %156, align 8, !tbaa !59
  %158 = getelementptr inbounds %struct.basic_block_def, ptr %157, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !122
  %160 = icmp eq ptr %153, %159
  %161 = zext i1 %160 to i8
  br label %162

162:                                              ; preds = %155, %151
  %163 = phi i8 [ 0, %151 ], [ %161, %155 ]
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 4) #20
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %712, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %170 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 29, i64 1, ptr %169)
  br label %712

171:                                              ; preds = %162, %150
  %172 = load ptr, ptr %28, align 8, !tbaa !138
  %173 = load ptr, ptr %30, align 8, !tbaa !90
  %174 = getelementptr inbounds %struct.tree_common, ptr %173, i64 0, i32 2
  %175 = load ptr, ptr %174, align 8, !tbaa !59
  %176 = getelementptr inbounds %struct.tree_type, ptr %175, i64 0, i32 3
  %177 = load ptr, ptr %176, align 8, !tbaa !59
  %178 = getelementptr inbounds %struct.tree_int_cst, ptr %177, i64 0, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !59
  %180 = load ptr, ptr %25, align 8, !tbaa !84
  %181 = getelementptr inbounds %struct.gimple_statement_base, ptr %180, i64 0, i32 1
  %182 = load i32, ptr %181, align 4, !tbaa !59
  %183 = icmp ne i32 %182, 0
  tail call void @llvm.assume(i1 %183)
  %184 = load ptr, ptr @stmt_vec_info_vec, align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186, !prof !89

186:                                              ; preds = %171
  %187 = load i32, ptr %184, align 8, !tbaa !68
  br label %188

188:                                              ; preds = %186, %171
  %189 = phi i32 [ %187, %186 ], [ 0, %171 ]
  %190 = icmp ugt i32 %182, %189
  br i1 %190, label %191, label %192, !prof !89

191:                                              ; preds = %188
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %192

192:                                              ; preds = %191, %188
  %193 = load ptr, ptr @stmt_vec_info_vec, align 8
  %194 = add i32 %182, -1
  %195 = zext i32 %194 to i64
  %196 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %193, i64 0, i32 2, i64 %195
  %197 = load ptr, ptr %196, align 8, !tbaa !48
  %198 = getelementptr inbounds %struct._stmt_vec_info, ptr %197, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !119
  %200 = getelementptr inbounds %struct._stmt_vec_info, ptr %197, i64 0, i32 26
  %201 = load ptr, ptr %200, align 8, !tbaa !170
  %202 = getelementptr inbounds %struct.tree_int_cst, ptr %172, i64 0, i32 1
  %203 = load i64, ptr %202, align 8, !tbaa !59
  %204 = sdiv i64 %203, %179
  %205 = srem i64 %203, %179
  %206 = load i32, ptr %181, align 4, !tbaa !59
  %207 = icmp ne i32 %206, 0
  tail call void @llvm.assume(i1 %207)
  %208 = icmp eq ptr %193, null
  br i1 %208, label %211, label %209, !prof !89

209:                                              ; preds = %192
  %210 = load i32, ptr %193, align 8, !tbaa !68
  br label %211

211:                                              ; preds = %209, %192
  %212 = phi i32 [ %210, %209 ], [ 0, %192 ]
  %213 = icmp ugt i32 %206, %212
  br i1 %213, label %214, label %215, !prof !89

214:                                              ; preds = %211
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %215

215:                                              ; preds = %214, %211
  %216 = load ptr, ptr @stmt_vec_info_vec, align 8
  %217 = add i32 %206, -1
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %216, i64 0, i32 2, i64 %218
  %220 = load ptr, ptr %219, align 8, !tbaa !48
  %221 = getelementptr inbounds %struct._stmt_vec_info, ptr %220, i64 0, i32 17
  %222 = load ptr, ptr %221, align 8, !tbaa !70
  %223 = icmp eq ptr %222, null
  br i1 %223, label %224, label %287, !prof !76

224:                                              ; preds = %215
  %225 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 3
  %226 = load i8, ptr %225, align 8, !tbaa !96
  %227 = icmp eq i8 %226, 0
  br i1 %227, label %281, label %228, !prof !89

228:                                              ; preds = %224
  %229 = srem i64 %203, %179
  %230 = icmp eq i64 %229, 0
  %231 = icmp sgt i64 %204, 0
  %232 = and i1 %231, %230
  br i1 %232, label %233, label %281, !prof !89

233:                                              ; preds = %228
  %234 = tail call i32 @exact_log2(i64 noundef %204) #20
  %235 = icmp eq i32 %234, -1
  br i1 %235, label %281, label %236

236:                                              ; preds = %233
  %237 = load i32, ptr %181, align 4, !tbaa !59
  %238 = icmp ne i32 %237, 0
  tail call void @llvm.assume(i1 %238)
  %239 = load ptr, ptr @stmt_vec_info_vec, align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %243, label %241

241:                                              ; preds = %236
  %242 = load i32, ptr %239, align 8, !tbaa !68
  br label %243

243:                                              ; preds = %241, %236
  %244 = phi i32 [ %242, %241 ], [ 0, %236 ]
  %245 = icmp ugt i32 %237, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %243
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %247

247:                                              ; preds = %246, %243
  %248 = load ptr, ptr @stmt_vec_info_vec, align 8
  %249 = add i32 %237, -1
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %248, i64 0, i32 2, i64 %250
  %252 = load ptr, ptr %251, align 8, !tbaa !48
  %253 = getelementptr inbounds %struct._stmt_vec_info, ptr %252, i64 0, i32 17
  store ptr %180, ptr %253, align 8, !tbaa !70
  %254 = trunc i64 %204 to i32
  %255 = load i32, ptr %181, align 4, !tbaa !59
  %256 = icmp ne i32 %255, 0
  tail call void @llvm.assume(i1 %256)
  %257 = icmp eq ptr %248, null
  br i1 %257, label %260, label %258

258:                                              ; preds = %247
  %259 = load i32, ptr %248, align 8, !tbaa !68
  br label %260

260:                                              ; preds = %258, %247
  %261 = phi i32 [ %259, %258 ], [ 0, %247 ]
  %262 = icmp ugt i32 %255, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %260
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %264

264:                                              ; preds = %263, %260
  %265 = load ptr, ptr @stmt_vec_info_vec, align 8
  %266 = add i32 %255, -1
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %265, i64 0, i32 2, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !48
  %270 = getelementptr inbounds %struct._stmt_vec_info, ptr %269, i64 0, i32 19
  store i32 %254, ptr %270, align 8, !tbaa !142
  %271 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %712, label %273

273:                                              ; preds = %264
  %274 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %275 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 37, i64 1, ptr %274)
  %276 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %277 = load ptr, ptr %30, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %276, ptr noundef %277, i32 noundef 2) #20
  %278 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %279 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 6, i64 1, ptr %278)
  %280 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  tail call void @print_generic_expr(ptr noundef %280, ptr noundef %172, i32 noundef 2) #20
  br label %712

281:                                              ; preds = %233, %228, %224
  %282 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %712, label %284, !prof !76

284:                                              ; preds = %281
  %285 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %286 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 22, i64 1, ptr %285)
  br label %712

287:                                              ; preds = %215
  %288 = load i32, ptr %181, align 4, !tbaa !59
  %289 = icmp ne i32 %288, 0
  tail call void @llvm.assume(i1 %289)
  %290 = icmp eq ptr %216, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %287
  %292 = load i32, ptr %216, align 8, !tbaa !68
  br label %293

293:                                              ; preds = %291, %287
  %294 = phi i32 [ %292, %291 ], [ 0, %287 ]
  %295 = icmp ugt i32 %288, %294
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %297

297:                                              ; preds = %296, %293
  %298 = load ptr, ptr @stmt_vec_info_vec, align 8
  %299 = add i32 %288, -1
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %298, i64 0, i32 2, i64 %300
  %302 = load ptr, ptr %301, align 8, !tbaa !48
  %303 = getelementptr inbounds %struct._stmt_vec_info, ptr %302, i64 0, i32 17
  %304 = load ptr, ptr %303, align 8, !tbaa !70
  %305 = icmp eq ptr %304, %180
  br i1 %305, label %306, label %712

306:                                              ; preds = %297
  %307 = load i32, ptr %181, align 4, !tbaa !59
  %308 = icmp ne i32 %307, 0
  tail call void @llvm.assume(i1 %308)
  %309 = icmp eq ptr %298, null
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  %311 = load i32, ptr %298, align 8, !tbaa !68
  br label %312

312:                                              ; preds = %310, %306
  %313 = phi i32 [ %311, %310 ], [ 0, %306 ]
  %314 = icmp ugt i32 %307, %313
  br i1 %314, label %315, label %316

315:                                              ; preds = %312
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %316

316:                                              ; preds = %315, %312
  %317 = load ptr, ptr @stmt_vec_info_vec, align 8
  %318 = add i32 %307, -1
  %319 = zext i32 %318 to i64
  %320 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %317, i64 0, i32 2, i64 %319
  %321 = load ptr, ptr %320, align 8, !tbaa !48
  %322 = getelementptr inbounds %struct._stmt_vec_info, ptr %321, i64 0, i32 18
  %323 = load ptr, ptr %322, align 8, !tbaa !73
  %324 = icmp eq ptr %323, null
  br i1 %324, label %565, label %325

325:                                              ; preds = %316
  %326 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 4, i32 2
  %327 = load ptr, ptr %326, align 8, !tbaa !162
  br label %328

328:                                              ; preds = %325, %555
  %329 = phi ptr [ %563, %555 ], [ %323, %325 ]
  %330 = phi i64 [ %527, %555 ], [ 0, %325 ]
  %331 = phi ptr [ %339, %555 ], [ %180, %325 ]
  %332 = phi ptr [ %545, %555 ], [ %327, %325 ]
  %333 = phi i8 [ %526, %555 ], [ 0, %325 ]
  %334 = phi i32 [ %562, %555 ], [ 1, %325 ]
  %335 = phi ptr [ %502, %555 ], [ %25, %325 ]
  %336 = getelementptr inbounds %struct.data_reference, ptr %335, i64 0, i32 4, i32 2
  %337 = getelementptr inbounds %struct.data_reference, ptr %335, i64 0, i32 3
  br label %338

338:                                              ; preds = %328, %446
  %339 = phi ptr [ %329, %328 ], [ %453, %446 ]
  %340 = phi ptr [ %331, %328 ], [ %339, %446 ]
  %341 = load ptr, ptr %336, align 8, !tbaa !162
  %342 = getelementptr inbounds %struct.gimple_statement_base, ptr %339, i64 0, i32 1
  %343 = load i32, ptr %342, align 4, !tbaa !59
  %344 = icmp ne i32 %343, 0
  tail call void @llvm.assume(i1 %344)
  %345 = load ptr, ptr @stmt_vec_info_vec, align 8
  %346 = icmp eq ptr %345, null
  br i1 %346, label %349, label %347

347:                                              ; preds = %338
  %348 = load i32, ptr %345, align 8, !tbaa !68
  br label %349

349:                                              ; preds = %347, %338
  %350 = phi i32 [ %348, %347 ], [ 0, %338 ]
  %351 = icmp ugt i32 %343, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %353

353:                                              ; preds = %352, %349
  %354 = load ptr, ptr @stmt_vec_info_vec, align 8
  %355 = add i32 %343, -1
  %356 = zext i32 %355 to i64
  %357 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %354, i64 0, i32 2, i64 %356
  %358 = load ptr, ptr %357, align 8, !tbaa !48
  %359 = getelementptr inbounds %struct._stmt_vec_info, ptr %358, i64 0, i32 7
  %360 = load ptr, ptr %359, align 8, !tbaa !158
  %361 = getelementptr inbounds %struct.data_reference, ptr %360, i64 0, i32 4, i32 2
  %362 = load ptr, ptr %361, align 8, !tbaa !162
  %363 = tail call i32 @tree_int_cst_compare(ptr noundef %341, ptr noundef %362) #20
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %455

365:                                              ; preds = %353
  %366 = load i8, ptr %337, align 8, !tbaa !96
  %367 = icmp eq i8 %366, 0
  br i1 %367, label %368, label %374

368:                                              ; preds = %365
  %369 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %370 = icmp eq i8 %369, 0
  br i1 %370, label %712, label %371

371:                                              ; preds = %368
  %372 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %373 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 34, i64 1, ptr %372)
  br label %712

374:                                              ; preds = %365
  %375 = load i32, ptr %342, align 4, !tbaa !59
  %376 = icmp ne i32 %375, 0
  tail call void @llvm.assume(i1 %376)
  %377 = load ptr, ptr @stmt_vec_info_vec, align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %381, label %379

379:                                              ; preds = %374
  %380 = load i32, ptr %377, align 8, !tbaa !68
  br label %381

381:                                              ; preds = %379, %374
  %382 = phi i32 [ %380, %379 ], [ 0, %374 ]
  %383 = icmp ugt i32 %375, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %381
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %385

385:                                              ; preds = %384, %381
  %386 = load ptr, ptr @stmt_vec_info_vec, align 8
  %387 = add i32 %375, -1
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %386, i64 0, i32 2, i64 %388
  %390 = load ptr, ptr %389, align 8, !tbaa !48
  %391 = getelementptr inbounds %struct._stmt_vec_info, ptr %390, i64 0, i32 23
  %392 = load i8, ptr %391, align 8, !tbaa !111
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %394, label %414

394:                                              ; preds = %385
  %395 = getelementptr inbounds %struct.gimple_statement_base, ptr %340, i64 0, i32 1
  %396 = load i32, ptr %395, align 4, !tbaa !59
  %397 = icmp ne i32 %396, 0
  tail call void @llvm.assume(i1 %397)
  %398 = icmp eq ptr %386, null
  br i1 %398, label %401, label %399

399:                                              ; preds = %394
  %400 = load i32, ptr %386, align 8, !tbaa !68
  br label %401

401:                                              ; preds = %399, %394
  %402 = phi i32 [ %400, %399 ], [ 0, %394 ]
  %403 = icmp ugt i32 %396, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %401
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %405

405:                                              ; preds = %404, %401
  %406 = load ptr, ptr @stmt_vec_info_vec, align 8
  %407 = add i32 %396, -1
  %408 = zext i32 %407 to i64
  %409 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %406, i64 0, i32 2, i64 %408
  %410 = load ptr, ptr %409, align 8, !tbaa !48
  %411 = getelementptr inbounds %struct._stmt_vec_info, ptr %410, i64 0, i32 23
  %412 = load i8, ptr %411, align 8, !tbaa !111
  %413 = icmp eq i8 %412, 0
  br i1 %413, label %420, label %414

414:                                              ; preds = %405, %385
  %415 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %416 = icmp eq i8 %415, 0
  br i1 %416, label %712, label %417

417:                                              ; preds = %414
  %418 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %419 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 38, i64 1, ptr %418)
  br label %712

420:                                              ; preds = %405
  %421 = load i32, ptr %342, align 4, !tbaa !59
  %422 = icmp ne i32 %421, 0
  tail call void @llvm.assume(i1 %422)
  %423 = icmp eq ptr %406, null
  br i1 %423, label %426, label %424

424:                                              ; preds = %420
  %425 = load i32, ptr %406, align 8, !tbaa !68
  br label %426

426:                                              ; preds = %424, %420
  %427 = phi i32 [ %425, %424 ], [ 0, %420 ]
  %428 = icmp ugt i32 %421, %427
  br i1 %428, label %429, label %430

429:                                              ; preds = %426
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %430

430:                                              ; preds = %429, %426
  %431 = load ptr, ptr @stmt_vec_info_vec, align 8
  %432 = add i32 %421, -1
  %433 = zext i32 %432 to i64
  %434 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %431, i64 0, i32 2, i64 %433
  %435 = load ptr, ptr %434, align 8, !tbaa !48
  %436 = getelementptr inbounds %struct._stmt_vec_info, ptr %435, i64 0, i32 22
  store ptr %340, ptr %436, align 8, !tbaa !171
  %437 = load i32, ptr %342, align 4, !tbaa !59
  %438 = icmp ne i32 %437, 0
  tail call void @llvm.assume(i1 %438)
  %439 = icmp eq ptr %431, null
  br i1 %439, label %442, label %440

440:                                              ; preds = %430
  %441 = load i32, ptr %431, align 8, !tbaa !68
  br label %442

442:                                              ; preds = %440, %430
  %443 = phi i32 [ %441, %440 ], [ 0, %430 ]
  %444 = icmp ugt i32 %437, %443
  br i1 %444, label %445, label %446

445:                                              ; preds = %442
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %446

446:                                              ; preds = %445, %442
  %447 = load ptr, ptr @stmt_vec_info_vec, align 8
  %448 = add i32 %437, -1
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %447, i64 0, i32 2, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !48
  %452 = getelementptr inbounds %struct._stmt_vec_info, ptr %451, i64 0, i32 18
  %453 = load ptr, ptr %452, align 8, !tbaa !73
  %454 = icmp eq ptr %453, null
  br i1 %454, label %565, label %338, !llvm.loop !172

455:                                              ; preds = %353
  %456 = load i32, ptr %342, align 4, !tbaa !59
  %457 = icmp ne i32 %456, 0
  tail call void @llvm.assume(i1 %457)
  %458 = load ptr, ptr @stmt_vec_info_vec, align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %462, label %460

460:                                              ; preds = %455
  %461 = load i32, ptr %458, align 8, !tbaa !68
  br label %462

462:                                              ; preds = %460, %455
  %463 = phi i32 [ %461, %460 ], [ 0, %455 ]
  %464 = icmp ugt i32 %456, %463
  br i1 %464, label %465, label %466

465:                                              ; preds = %462
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %466

466:                                              ; preds = %465, %462
  %467 = load ptr, ptr @stmt_vec_info_vec, align 8
  %468 = add i32 %456, -1
  %469 = zext i32 %468 to i64
  %470 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %467, i64 0, i32 2, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !48
  %472 = getelementptr inbounds %struct._stmt_vec_info, ptr %471, i64 0, i32 7
  %473 = load ptr, ptr %472, align 8, !tbaa !158
  %474 = getelementptr inbounds %struct.data_reference, ptr %473, i64 0, i32 4, i32 3
  %475 = load ptr, ptr %474, align 8, !tbaa !138
  %476 = tail call i32 @tree_int_cst_compare(ptr noundef %172, ptr noundef %475) #20
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %484, label %478

478:                                              ; preds = %466
  %479 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %480 = icmp eq i8 %479, 0
  br i1 %480, label %712, label %481

481:                                              ; preds = %478
  %482 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %483 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 38, i64 1, ptr %482)
  br label %712

484:                                              ; preds = %466
  %485 = load i32, ptr %342, align 4, !tbaa !59
  %486 = icmp ne i32 %485, 0
  tail call void @llvm.assume(i1 %486)
  %487 = load ptr, ptr @stmt_vec_info_vec, align 8
  %488 = icmp eq ptr %487, null
  br i1 %488, label %491, label %489

489:                                              ; preds = %484
  %490 = load i32, ptr %487, align 8, !tbaa !68
  br label %491

491:                                              ; preds = %489, %484
  %492 = phi i32 [ %490, %489 ], [ 0, %484 ]
  %493 = icmp ugt i32 %485, %492
  br i1 %493, label %494, label %495

494:                                              ; preds = %491
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %495

495:                                              ; preds = %494, %491
  %496 = load ptr, ptr @stmt_vec_info_vec, align 8
  %497 = add i32 %485, -1
  %498 = zext i32 %497 to i64
  %499 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %496, i64 0, i32 2, i64 %498
  %500 = load ptr, ptr %499, align 8, !tbaa !48
  %501 = getelementptr inbounds %struct._stmt_vec_info, ptr %500, i64 0, i32 7
  %502 = load ptr, ptr %501, align 8, !tbaa !158
  %503 = getelementptr inbounds %struct.data_reference, ptr %502, i64 0, i32 4, i32 2
  %504 = load ptr, ptr %503, align 8, !tbaa !162
  %505 = getelementptr inbounds %struct.tree_int_cst, ptr %504, i64 0, i32 1
  %506 = load i64, ptr %505, align 8, !tbaa !59
  %507 = getelementptr inbounds %struct.tree_int_cst, ptr %332, i64 0, i32 1
  %508 = load i64, ptr %507, align 8, !tbaa !59
  %509 = sub i64 %506, %508
  %510 = udiv i64 %509, %179
  %511 = icmp eq i64 %510, 1
  br i1 %511, label %525, label %512

512:                                              ; preds = %495
  %513 = getelementptr inbounds %struct.data_reference, ptr %502, i64 0, i32 3
  %514 = load i8, ptr %513, align 8, !tbaa !96
  %515 = icmp eq i8 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %512
  %517 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %518 = icmp eq i8 %517, 0
  br i1 %518, label %712, label %519

519:                                              ; preds = %516
  %520 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %521 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 27, i64 1, ptr %520)
  br label %712

522:                                              ; preds = %512
  %523 = add i64 %330, -1
  %524 = add i64 %523, %510
  br label %525

525:                                              ; preds = %522, %495
  %526 = phi i8 [ 1, %522 ], [ %333, %495 ]
  %527 = phi i64 [ %524, %522 ], [ %330, %495 ]
  %528 = trunc i64 %510 to i32
  %529 = load i32, ptr %342, align 4, !tbaa !59
  %530 = icmp ne i32 %529, 0
  tail call void @llvm.assume(i1 %530)
  %531 = icmp eq ptr %496, null
  br i1 %531, label %534, label %532

532:                                              ; preds = %525
  %533 = load i32, ptr %496, align 8, !tbaa !68
  br label %534

534:                                              ; preds = %532, %525
  %535 = phi i32 [ %533, %532 ], [ 0, %525 ]
  %536 = icmp ugt i32 %529, %535
  br i1 %536, label %537, label %538

537:                                              ; preds = %534
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %538

538:                                              ; preds = %537, %534
  %539 = load ptr, ptr @stmt_vec_info_vec, align 8
  %540 = add i32 %529, -1
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %539, i64 0, i32 2, i64 %541
  %543 = load ptr, ptr %542, align 8, !tbaa !48
  %544 = getelementptr inbounds %struct._stmt_vec_info, ptr %543, i64 0, i32 21
  store i32 %528, ptr %544, align 8, !tbaa !173
  %545 = load ptr, ptr %503, align 8, !tbaa !162
  %546 = load i32, ptr %342, align 4, !tbaa !59
  %547 = icmp ne i32 %546, 0
  tail call void @llvm.assume(i1 %547)
  %548 = icmp eq ptr %539, null
  br i1 %548, label %551, label %549

549:                                              ; preds = %538
  %550 = load i32, ptr %539, align 8, !tbaa !68
  br label %551

551:                                              ; preds = %549, %538
  %552 = phi i32 [ %550, %549 ], [ 0, %538 ]
  %553 = icmp ugt i32 %546, %552
  br i1 %553, label %554, label %555

554:                                              ; preds = %551
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %555

555:                                              ; preds = %554, %551
  %556 = load ptr, ptr @stmt_vec_info_vec, align 8
  %557 = add i32 %546, -1
  %558 = zext i32 %557 to i64
  %559 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %556, i64 0, i32 2, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !48
  %561 = getelementptr inbounds %struct._stmt_vec_info, ptr %560, i64 0, i32 18
  %562 = add i32 %334, 1
  %563 = load ptr, ptr %561, align 8, !tbaa !73
  %564 = icmp eq ptr %563, null
  br i1 %564, label %565, label %328, !llvm.loop !172

565:                                              ; preds = %555, %446, %316
  %566 = phi i32 [ 1, %316 ], [ %334, %446 ], [ %562, %555 ]
  %567 = phi i8 [ 0, %316 ], [ %333, %446 ], [ %526, %555 ]
  %568 = phi i64 [ 0, %316 ], [ %330, %446 ], [ %527, %555 ]
  %569 = zext i32 %566 to i64
  %570 = mul nsw i64 %179, %569
  %571 = icmp eq i64 %203, 0
  br i1 %571, label %616, label %572

572:                                              ; preds = %565
  %573 = add i64 %568, %569
  %574 = mul i64 %573, %179
  %575 = icmp slt i64 %203, %574
  br i1 %575, label %576, label %584

576:                                              ; preds = %572
  %577 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %578 = icmp eq i8 %577, 0
  br i1 %578, label %712, label %579

579:                                              ; preds = %576
  %580 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %581 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 43, i64 1, ptr %580)
  %582 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %583 = load ptr, ptr %30, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %582, ptr noundef %583, i32 noundef 2) #20
  br label %712

584:                                              ; preds = %572
  %585 = icmp eq i64 %203, %570
  br i1 %585, label %616, label %586

586:                                              ; preds = %584
  %587 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 3
  %588 = load i8, ptr %587, align 8, !tbaa !96
  %589 = icmp eq i8 %588, 0
  br i1 %589, label %610, label %590

590:                                              ; preds = %586
  %591 = trunc i64 %204 to i32
  %592 = sub i32 %591, %566
  %593 = load i32, ptr %181, align 4, !tbaa !59
  %594 = icmp ne i32 %593, 0
  tail call void @llvm.assume(i1 %594)
  %595 = load ptr, ptr @stmt_vec_info_vec, align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %599, label %597

597:                                              ; preds = %590
  %598 = load i32, ptr %595, align 8, !tbaa !68
  br label %599

599:                                              ; preds = %597, %590
  %600 = phi i32 [ %598, %597 ], [ 0, %590 ]
  %601 = icmp ugt i32 %593, %600
  br i1 %601, label %602, label %603

602:                                              ; preds = %599
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %603

603:                                              ; preds = %602, %599
  %604 = load ptr, ptr @stmt_vec_info_vec, align 8
  %605 = add i32 %593, -1
  %606 = zext i32 %605 to i64
  %607 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %604, i64 0, i32 2, i64 %606
  %608 = load ptr, ptr %607, align 8, !tbaa !48
  %609 = getelementptr inbounds %struct._stmt_vec_info, ptr %608, i64 0, i32 21
  store i32 %592, ptr %609, align 8, !tbaa !173
  br label %616

610:                                              ; preds = %586
  %611 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %612 = icmp eq i8 %611, 0
  br i1 %612, label %712, label %613

613:                                              ; preds = %610
  %614 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %615 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 27, i64 1, ptr %614)
  br label %712

616:                                              ; preds = %603, %584, %565
  %617 = phi i8 [ 1, %603 ], [ %567, %584 ], [ %567, %565 ]
  %618 = icmp eq i64 %205, 0
  %619 = select i1 %571, i1 true, i1 %618
  br i1 %619, label %631, label %620

620:                                              ; preds = %616
  %621 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %622 = icmp eq i8 %621, 0
  br i1 %622, label %712, label %623

623:                                              ; preds = %620
  %624 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %625 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 42, i64 1, ptr %624)
  %626 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  tail call void @print_generic_expr(ptr noundef %626, ptr noundef %172, i32 noundef 2) #20
  %627 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %628 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 6, i64 1, ptr %627)
  %629 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %630 = load ptr, ptr %176, align 8, !tbaa !59
  tail call void @print_generic_expr(ptr noundef %629, ptr noundef %630, i32 noundef 2) #20
  br label %712

631:                                              ; preds = %616
  %632 = tail call i32 @exact_log2(i64 noundef %204) #20
  %633 = icmp eq i32 %632, -1
  br i1 %633, label %634, label %642

634:                                              ; preds = %631
  %635 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %636 = icmp eq i8 %635, 0
  br i1 %636, label %640, label %637

637:                                              ; preds = %634
  %638 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %639 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 32, i64 1, ptr %638)
  br label %640

640:                                              ; preds = %637, %634
  %641 = icmp eq i8 %617, 0
  br i1 %641, label %642, label %712

642:                                              ; preds = %640, %631
  %643 = icmp eq i64 %204, 0
  %644 = select i1 %643, i64 %569, i64 %204
  %645 = trunc i64 %644 to i32
  %646 = load i32, ptr %181, align 4, !tbaa !59
  %647 = icmp ne i32 %646, 0
  tail call void @llvm.assume(i1 %647)
  %648 = load ptr, ptr @stmt_vec_info_vec, align 8
  %649 = icmp eq ptr %648, null
  br i1 %649, label %652, label %650

650:                                              ; preds = %642
  %651 = load i32, ptr %648, align 8, !tbaa !68
  br label %652

652:                                              ; preds = %650, %642
  %653 = phi i32 [ %651, %650 ], [ 0, %642 ]
  %654 = icmp ugt i32 %646, %653
  br i1 %654, label %655, label %656

655:                                              ; preds = %652
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %656

656:                                              ; preds = %655, %652
  %657 = load ptr, ptr @stmt_vec_info_vec, align 8
  %658 = add i32 %646, -1
  %659 = zext i32 %658 to i64
  %660 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %657, i64 0, i32 2, i64 %659
  %661 = load ptr, ptr %660, align 8, !tbaa !48
  %662 = getelementptr inbounds %struct._stmt_vec_info, ptr %661, i64 0, i32 19
  store i32 %645, ptr %662, align 8, !tbaa !142
  %663 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %664 = icmp eq i8 %663, 0
  br i1 %664, label %668, label %665

665:                                              ; preds = %656
  %666 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %667 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %666, ptr noundef nonnull @.str.104, i32 noundef %645)
  br label %668

668:                                              ; preds = %665, %656
  %669 = getelementptr inbounds %struct.data_reference, ptr %25, i64 0, i32 3
  %670 = load i8, ptr %669, align 8, !tbaa !96
  %671 = icmp ne i8 %670, 0
  %672 = icmp ne i8 %617, 0
  %673 = select i1 %671, i1 true, i1 %672
  br i1 %673, label %712, label %674

674:                                              ; preds = %668
  %675 = icmp eq ptr %199, null
  br i1 %675, label %693, label %676

676:                                              ; preds = %674
  %677 = getelementptr inbounds %struct._loop_vec_info, ptr %199, i64 0, i32 15
  %678 = load ptr, ptr %677, align 8, !tbaa !48
  %679 = icmp eq ptr %678, null
  br i1 %679, label %685, label %680

680:                                              ; preds = %676
  %681 = getelementptr inbounds %struct.VEC_gimple_base, ptr %678, i64 0, i32 1
  %682 = load i32, ptr %681, align 4, !tbaa !156
  %683 = load i32, ptr %678, align 8, !tbaa !151
  %684 = icmp eq i32 %682, %683
  br i1 %684, label %685, label %687

685:                                              ; preds = %680, %676
  %686 = tail call ptr @vec_heap_p_reserve(ptr noundef %678, i32 noundef 1) #20
  store ptr %686, ptr %677, align 8, !tbaa !48
  br label %687

687:                                              ; preds = %685, %680
  %688 = load ptr, ptr %677, align 8, !tbaa !48
  %689 = load i32, ptr %688, align 8, !tbaa !151
  %690 = add i32 %689, 1
  store i32 %690, ptr %688, align 8, !tbaa !151
  %691 = zext i32 %689 to i64
  %692 = getelementptr inbounds %struct.VEC_gimple_base, ptr %688, i64 0, i32 2, i64 %691
  store ptr %180, ptr %692, align 8, !tbaa !48
  br label %693

693:                                              ; preds = %687, %674
  %694 = icmp eq ptr %201, null
  br i1 %694, label %712, label %695

695:                                              ; preds = %693
  %696 = getelementptr inbounds %struct._bb_vec_info, ptr %201, i64 0, i32 1
  %697 = load ptr, ptr %696, align 8, !tbaa !48
  %698 = icmp eq ptr %697, null
  br i1 %698, label %704, label %699

699:                                              ; preds = %695
  %700 = getelementptr inbounds %struct.VEC_gimple_base, ptr %697, i64 0, i32 1
  %701 = load i32, ptr %700, align 4, !tbaa !156
  %702 = load i32, ptr %697, align 8, !tbaa !151
  %703 = icmp eq i32 %701, %702
  br i1 %703, label %704, label %706

704:                                              ; preds = %699, %695
  %705 = tail call ptr @vec_heap_p_reserve(ptr noundef %697, i32 noundef 1) #20
  store ptr %705, ptr %696, align 8, !tbaa !48
  br label %706

706:                                              ; preds = %704, %699
  %707 = load ptr, ptr %696, align 8, !tbaa !48
  %708 = load i32, ptr %707, align 8, !tbaa !151
  %709 = add i32 %708, 1
  store i32 %709, ptr %707, align 8, !tbaa !151
  %710 = zext i32 %708 to i64
  %711 = getelementptr inbounds %struct.VEC_gimple_base, ptr %707, i64 0, i32 2, i64 %710
  store ptr %180, ptr %711, align 8, !tbaa !48
  br label %712

712:                                              ; preds = %67, %70, %73, %121, %143, %165, %168, %264, %273, %281, %284, %297, %368, %371, %414, %417, %478, %481, %516, %519, %576, %579, %610, %613, %620, %623, %640, %668, %693, %706
  %713 = phi i8 [ 1, %143 ], [ 0, %70 ], [ 0, %67 ], [ 0, %73 ], [ %125, %121 ], [ 0, %168 ], [ 0, %165 ], [ 1, %273 ], [ 1, %264 ], [ 0, %284 ], [ 0, %281 ], [ 1, %693 ], [ 1, %706 ], [ 1, %668 ], [ 1, %297 ], [ 0, %640 ], [ 0, %620 ], [ 0, %623 ], [ 0, %610 ], [ 0, %613 ], [ 0, %576 ], [ 0, %579 ], [ 0, %516 ], [ 0, %519 ], [ 0, %478 ], [ 0, %481 ], [ 0, %414 ], [ 0, %417 ], [ 0, %368 ], [ 0, %371 ]
  %714 = icmp eq i8 %713, 0
  %715 = add i32 %16, 1
  br i1 %714, label %716, label %15, !prof !76, !llvm.loop !174

716:                                              ; preds = %712
  %717 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %718 = icmp eq i8 %717, 0
  br i1 %718, label %722, label %719, !prof !76

719:                                              ; preds = %716
  %720 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %721 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 43, i64 1, ptr %720)
  br label %722

722:                                              ; preds = %24, %716, %719
  %723 = phi i8 [ 0, %719 ], [ 0, %716 ], [ 1, %24 ]
  ret i8 %723
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_prune_runtime_alias_test_list(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !47 {
  %2 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !145
  %4 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %8 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 42, i64 1, ptr %7)
  br label %9

9:                                                ; preds = %6, %1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %102, %9
  %12 = phi i32 [ %103, %102 ], [ 0, %9 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %3, i64 0, i32 2, i64 %13
  %15 = icmp eq i32 %12, 0
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds ptr, ptr %14, i64 1
  br label %18

18:                                               ; preds = %11, %96
  br i1 %10, label %21, label %19

19:                                               ; preds = %18
  %20 = load i32, ptr %3, align 8, !tbaa !78
  br label %21

21:                                               ; preds = %18, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %18 ]
  %23 = icmp ult i32 %12, %22
  br i1 %23, label %24, label %104

24:                                               ; preds = %21
  %25 = load ptr, ptr %14, align 8, !tbaa !48
  br i1 %15, label %93, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 1
  br label %28

28:                                               ; preds = %88, %26
  %29 = phi i64 [ %90, %88 ], [ 0, %26 ]
  %30 = phi i8 [ %89, %88 ], [ 0, %26 ]
  %31 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %3, i64 0, i32 2, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !48
  %33 = load ptr, ptr %25, align 8, !tbaa !81
  %34 = load ptr, ptr %32, align 8, !tbaa !81
  %35 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %33, ptr noundef %34), !range !92
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %28
  %38 = load ptr, ptr %27, align 8, !tbaa !83
  %39 = getelementptr inbounds %struct.data_dependence_relation, ptr %32, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !83
  %41 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %38, ptr noundef %40), !range !92
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %37, %28
  %44 = load ptr, ptr %25, align 8, !tbaa !81
  %45 = getelementptr inbounds %struct.data_dependence_relation, ptr %32, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !83
  %47 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %44, ptr noundef %46), !range !92
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !83
  %52 = load ptr, ptr %32, align 8, !tbaa !81
  %53 = tail call fastcc zeroext i8 @vect_same_range_drs(ptr noundef %51, ptr noundef %52), !range !92
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %37, %49, %55
  %57 = phi i1 [ true, %55 ], [ false, %49 ], [ false, %37 ]
  br i1 %57, label %88, label %58

58:                                               ; preds = %56
  %59 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %88, label %61

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 1
  %63 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %64 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 19, i64 1, ptr %63)
  %65 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %66 = load ptr, ptr %25, align 8, !tbaa !81
  %67 = getelementptr inbounds %struct.data_reference, ptr %66, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %65, ptr noundef %68, i32 noundef 2) #20
  %69 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %70 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %69)
  %71 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %72 = load ptr, ptr %62, align 8, !tbaa !83
  %73 = getelementptr inbounds %struct.data_reference, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %71, ptr noundef %74, i32 noundef 2) #20
  %75 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %76 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %75)
  %77 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %78 = load ptr, ptr %32, align 8, !tbaa !81
  %79 = getelementptr inbounds %struct.data_reference, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %77, ptr noundef %80, i32 noundef 2) #20
  %81 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %82 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 2, i64 1, ptr %81)
  %83 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %84 = getelementptr inbounds %struct.data_dependence_relation, ptr %32, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !83
  %86 = getelementptr inbounds %struct.data_reference, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %83, ptr noundef %87, i32 noundef 2) #20
  br label %88

88:                                               ; preds = %56, %58, %61
  %89 = phi i8 [ 1, %61 ], [ 1, %58 ], [ %30, %56 ]
  %90 = add nuw nsw i64 %29, 1
  %91 = icmp ult i64 %90, %16
  %92 = select i1 %57, i1 %91, i1 false
  br i1 %92, label %28, label %93, !llvm.loop !175

93:                                               ; preds = %88, %24
  %94 = phi i8 [ 0, %24 ], [ %89, %88 ]
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load i32, ptr %3, align 8, !tbaa !78
  %98 = add i32 %97, -1
  store i32 %98, ptr %3, align 8, !tbaa !78
  %99 = sub i32 %98, %12
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %14, ptr nonnull align 8 %17, i64 %101, i1 false)
  br label %18, !llvm.loop !176

102:                                              ; preds = %93
  %103 = add i32 %12, 1
  br label %11

104:                                              ; preds = %21
  br i1 %10, label %107, label %105

105:                                              ; preds = %104
  %106 = load i32, ptr %3, align 8, !tbaa !78
  br label %107

107:                                              ; preds = %104, %105
  %108 = phi i32 [ %106, %105 ], [ 0, %104 ]
  %109 = load ptr, ptr @compiler_params, align 8, !tbaa !48
  %110 = getelementptr inbounds %struct.param_info, ptr %109, i64 72, i32 1
  %111 = load i32, ptr %110, align 8, !tbaa !153
  %112 = icmp ugt i32 %108, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %119, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %118 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 71, i64 1, ptr %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = load ptr, ptr %2, align 8, !tbaa !145
  %121 = icmp eq ptr %120, null
  br i1 %121, label %123, label %122

122:                                              ; preds = %119
  store i32 0, ptr %120, align 8, !tbaa !78
  br label %123

123:                                              ; preds = %122, %119, %107
  %124 = phi i8 [ 1, %107 ], [ 0, %119 ], [ 0, %122 ]
  ret i8 %124
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @vect_analyze_data_refs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 !prof !177 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.affine_iv, align 8
  %10 = alloca %struct.affine_iv, align 8
  %11 = alloca ptr, align 8
  %12 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %17, label %14, !prof !178

14:                                               ; preds = %2
  %15 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %16 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 31, i64 1, ptr %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = icmp eq ptr %0, null
  br i1 %18, label %31, label %19, !prof !178

19:                                               ; preds = %17
  %20 = load ptr, ptr %0, align 8, !tbaa !93
  %21 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 10
  %22 = getelementptr inbounds %struct._loop_vec_info, ptr %0, i64 0, i32 11
  %23 = tail call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %20, i8 noundef zeroext 1, ptr noundef nonnull %21, ptr noundef nonnull %22) #20
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %19
  %26 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %310, label %28

28:                                               ; preds = %25
  %29 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %30 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 87, i64 1, ptr %29)
  br label %310

31:                                               ; preds = %17
  %32 = load ptr, ptr %1, align 8, !tbaa !179
  %33 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 3
  %34 = getelementptr inbounds %struct._bb_vec_info, ptr %1, i64 0, i32 4
  %35 = tail call zeroext i8 @compute_data_dependences_for_bb(ptr noundef %32, i8 noundef zeroext 1, ptr noundef nonnull %33, ptr noundef nonnull %34) #20
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %43, !prof !181

37:                                               ; preds = %31
  %38 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %310, label %40, !prof !182

40:                                               ; preds = %37
  %41 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %42 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 94, i64 1, ptr %41)
  br label %310

43:                                               ; preds = %31, %19
  %44 = phi ptr [ %21, %19 ], [ %33, %31 ]
  %45 = phi ptr [ %20, %19 ], [ null, %31 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br label %48

48:                                               ; preds = %291, %43
  %49 = phi i32 [ 0, %43 ], [ %298, %291 ]
  br i1 %47, label %57, label %50, !prof !183

50:                                               ; preds = %48
  %51 = load i32, ptr %46, align 8, !tbaa !115
  %52 = icmp ugt i32 %51, %49
  br i1 %52, label %53, label %57, !prof !184

53:                                               ; preds = %50
  %54 = zext i32 %49 to i64
  %55 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %46, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  br label %57

57:                                               ; preds = %48, %50, %53
  %58 = phi ptr [ %56, %53 ], [ null, %50 ], [ null, %48 ]
  %59 = phi i1 [ false, %53 ], [ true, %50 ], [ true, %48 ]
  br i1 %59, label %310, label %60, !prof !185

60:                                               ; preds = %57
  %61 = icmp eq ptr %58, null
  br i1 %61, label %66, label %62, !prof !186

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !90
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %72, !prof !186

66:                                               ; preds = %62, %60
  %67 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %310, label %69

69:                                               ; preds = %66
  %70 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %71 = call i64 @fwrite(ptr nonnull @.str.25, i64 35, i64 1, ptr %70)
  br label %310

72:                                               ; preds = %62
  %73 = load ptr, ptr %58, align 8, !tbaa !84
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !59
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %92, label %77, !prof !186

77:                                               ; preds = %72
  %78 = load ptr, ptr @stmt_vec_info_vec, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %82, label %80, !prof !186

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8, !tbaa !68
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ 0, %77 ]
  %84 = icmp ugt i32 %75, %83
  br i1 %84, label %85, label %86, !prof !186

85:                                               ; preds = %82
  call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %86

86:                                               ; preds = %85, %82
  %87 = load ptr, ptr @stmt_vec_info_vec, align 8
  %88 = add i32 %75, -1
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %87, i64 0, i32 2, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !48
  br label %92

92:                                               ; preds = %72, %86
  %93 = phi ptr [ %91, %86 ], [ null, %72 ]
  %94 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 4
  %95 = load ptr, ptr %94, align 8, !tbaa !164
  %96 = icmp eq ptr %95, null
  br i1 %96, label %109, label %97, !prof !186

97:                                               ; preds = %92
  %98 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 4, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !187
  %100 = icmp eq ptr %99, null
  br i1 %100, label %109, label %101, !prof !186

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 4, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !162
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105, !prof !186

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.data_reference, ptr %58, i64 0, i32 4, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !138
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %116, !prof !186

109:                                              ; preds = %105, %101, %97, %92
  %110 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %310, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %114 = call i64 @fwrite(ptr nonnull @.str.26, i64 41, i64 1, ptr %113)
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_gimple_stmt(ptr noundef %115, ptr noundef %73, i32 noundef 0, i32 noundef 2) #20
  br label %310

116:                                              ; preds = %105
  %117 = load i64, ptr %95, align 8
  %118 = and i64 %117, 65535
  %119 = icmp eq i64 %118, 23
  br i1 %119, label %120, label %126, !prof !186

120:                                              ; preds = %116
  %121 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %310, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %125 = call i64 @fwrite(ptr nonnull @.str.27, i64 45, i64 1, ptr %124)
  br label %310

126:                                              ; preds = %116
  %127 = icmp eq ptr %45, null
  %128 = call ptr @unshare_expr(ptr noundef nonnull %95) #20
  %129 = load ptr, ptr %98, align 8, !tbaa !187
  %130 = call ptr @unshare_expr(ptr noundef %129) #20
  %131 = load ptr, ptr %102, align 8, !tbaa !162
  %132 = call ptr @unshare_expr(ptr noundef %131) #20
  br i1 %127, label %280, label %133, !prof !188

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.loop, ptr %45, i64 0, i32 8
  %135 = load ptr, ptr %134, align 8, !tbaa !121
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 4
  %139 = load ptr, ptr %138, align 8, !tbaa !59
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %139, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !122
  %142 = icmp eq ptr %135, %141
  %143 = zext i1 %142 to i8
  br label %144

144:                                              ; preds = %133, %137
  %145 = phi i8 [ 0, %133 ], [ %143, %137 ]
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %280, label %147

147:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  %148 = getelementptr inbounds %struct.tree_common, ptr %128, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !59
  %150 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %151 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %150, ptr noundef %132) #20
  %152 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %149, ptr noundef %128, ptr noundef %151) #20
  %153 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %152) #20
  %154 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %160, label %156

156:                                              ; preds = %147
  %157 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %158 = call i64 @fwrite(ptr nonnull @.str.28, i64 23, i64 1, ptr %157)
  %159 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %159, ptr noundef %153, i32 noundef 2) #20
  br label %160

160:                                              ; preds = %156, %147
  %161 = call ptr @get_inner_reference(ptr noundef %153, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 0) #20
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 1979, ptr noundef nonnull @.str.10) #20
  br label %164

164:                                              ; preds = %160, %163
  %165 = load i64, ptr %4, align 8, !tbaa !67
  %166 = and i64 %165, 7
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %164
  %169 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %309, label %171

171:                                              ; preds = %168
  %172 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %173 = call i64 @fwrite(ptr nonnull @.str.29, i64 30, i64 1, ptr %172)
  br label %309

174:                                              ; preds = %164
  %175 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %161) #20
  %176 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 4
  %177 = load ptr, ptr %176, align 8, !tbaa !59
  %178 = icmp eq ptr %177, null
  br i1 %178, label %182, label %179

179:                                              ; preds = %174
  %180 = getelementptr inbounds %struct.basic_block_def, ptr %177, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !122
  br label %182

182:                                              ; preds = %174, %179
  %183 = phi ptr [ %181, %179 ], [ null, %174 ]
  %184 = call zeroext i8 @simple_iv(ptr noundef nonnull %45, ptr noundef %183, ptr noundef %175, ptr noundef nonnull %9, i8 noundef zeroext 0) #20
  %185 = icmp eq i8 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %182
  %187 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %309, label %189

189:                                              ; preds = %186
  %190 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %191 = call i64 @fwrite(ptr nonnull @.str.30, i64 41, i64 1, ptr %190)
  br label %309

192:                                              ; preds = %182
  %193 = icmp eq ptr %130, null
  br i1 %193, label %202, label %194

194:                                              ; preds = %192
  %195 = load ptr, ptr %5, align 8, !tbaa !48
  %196 = icmp eq ptr %195, null
  br i1 %196, label %201, label %197

197:                                              ; preds = %194
  %198 = getelementptr inbounds %struct.tree_common, ptr %130, i64 0, i32 2
  %199 = load ptr, ptr %198, align 8, !tbaa !59
  %200 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %199, ptr noundef nonnull %130, ptr noundef nonnull %195) #20
  store ptr %200, ptr %5, align 8, !tbaa !48
  br label %202

201:                                              ; preds = %194
  store ptr %130, ptr %5, align 8, !tbaa !48
  br label %202

202:                                              ; preds = %197, %201, %192
  %203 = load ptr, ptr %5, align 8, !tbaa !48
  %204 = icmp eq ptr %203, null
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 1
  %207 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  store ptr %207, ptr %10, align 8, !tbaa !189
  %208 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  store ptr %208, ptr %206, align 8, !tbaa !191
  br label %225

209:                                              ; preds = %202
  %210 = load ptr, ptr %176, align 8, !tbaa !59
  %211 = icmp eq ptr %210, null
  br i1 %211, label %215, label %212

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.basic_block_def, ptr %210, i64 0, i32 3
  %214 = load ptr, ptr %213, align 8, !tbaa !122
  br label %215

215:                                              ; preds = %209, %212
  %216 = phi ptr [ %214, %212 ], [ null, %209 ]
  %217 = call zeroext i8 @simple_iv(ptr noundef nonnull %45, ptr noundef %216, ptr noundef nonnull %203, ptr noundef nonnull %10, i8 noundef zeroext 0) #20
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %215
  %220 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %221 = icmp eq i8 %220, 0
  br i1 %221, label %309, label %222

222:                                              ; preds = %219
  %223 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %224 = call i64 @fwrite(ptr nonnull @.str.31, i64 35, i64 1, ptr %223)
  br label %309

225:                                              ; preds = %215, %205
  %226 = getelementptr inbounds %struct.affine_iv, ptr %9, i64 0, i32 1
  %227 = getelementptr inbounds %struct.affine_iv, ptr %10, i64 0, i32 1
  %228 = load i64, ptr %4, align 8, !tbaa !67
  %229 = sdiv i64 %228, 8
  %230 = call ptr @size_int_kind(i64 noundef %229, i32 noundef 1) #20
  %231 = load ptr, ptr %9, align 8, !tbaa !189
  call void @split_constant_offset(ptr noundef %231, ptr noundef nonnull %9, ptr noundef nonnull %11) #20
  %232 = load ptr, ptr %11, align 8, !tbaa !48
  %233 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %230, ptr noundef %232) #20
  %234 = load ptr, ptr %10, align 8, !tbaa !189
  call void @split_constant_offset(ptr noundef %234, ptr noundef nonnull %10, ptr noundef nonnull %11) #20
  %235 = load ptr, ptr %11, align 8, !tbaa !48
  %236 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %233, ptr noundef %235) #20
  %237 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !48
  %238 = load ptr, ptr %226, align 8, !tbaa !191
  %239 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %237, ptr noundef %238) #20
  %240 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !48
  %241 = load ptr, ptr %227, align 8, !tbaa !191
  %242 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %240, ptr noundef %241) #20
  %243 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %239, ptr noundef %242) #20
  %244 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 11
  store ptr %243, ptr %244, align 8, !tbaa !169
  %245 = load ptr, ptr %9, align 8, !tbaa !189
  %246 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 8
  store ptr %245, ptr %246, align 8, !tbaa !167
  %247 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 9
  store ptr %236, ptr %247, align 8, !tbaa !165
  %248 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !48
  %249 = load ptr, ptr %10, align 8, !tbaa !189
  %250 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %248, ptr noundef %249) #20
  %251 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 10
  store ptr %250, ptr %251, align 8, !tbaa !192
  %252 = load ptr, ptr %10, align 8, !tbaa !189
  %253 = call i64 @highest_pow2_factor(ptr noundef %252) #20
  %254 = call ptr @size_int_kind(i64 noundef %253, i32 noundef 0) #20
  %255 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 12
  store ptr %254, ptr %255, align 8, !tbaa !166
  %256 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %279, label %258

258:                                              ; preds = %225
  %259 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %260 = call i64 @fwrite(ptr nonnull @.str.32, i64 21, i64 1, ptr %259)
  %261 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %262 = load ptr, ptr %246, align 8, !tbaa !167
  call void @print_generic_expr(ptr noundef %261, ptr noundef %262, i32 noundef 2) #20
  %263 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %264 = call i64 @fwrite(ptr nonnull @.str.33, i64 34, i64 1, ptr %263)
  %265 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %266 = load ptr, ptr %251, align 8, !tbaa !192
  call void @print_generic_expr(ptr noundef %265, ptr noundef %266, i32 noundef 2) #20
  %267 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %268 = call i64 @fwrite(ptr nonnull @.str.34, i64 43, i64 1, ptr %267)
  %269 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %270 = load ptr, ptr %247, align 8, !tbaa !165
  call void @print_generic_expr(ptr noundef %269, ptr noundef %270, i32 noundef 2) #20
  %271 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %272 = call i64 @fwrite(ptr nonnull @.str.35, i64 14, i64 1, ptr %271)
  %273 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %274 = load ptr, ptr %244, align 8, !tbaa !169
  call void @print_generic_expr(ptr noundef %273, ptr noundef %274, i32 noundef 2) #20
  %275 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %276 = call i64 @fwrite(ptr nonnull @.str.36, i64 20, i64 1, ptr %275)
  %277 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %278 = load ptr, ptr %255, align 8, !tbaa !166
  call void @print_generic_expr(ptr noundef %277, ptr noundef %278, i32 noundef 2) #20
  br label %279

279:                                              ; preds = %225, %258
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %280

280:                                              ; preds = %279, %144, %126
  %281 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 7
  %282 = load ptr, ptr %281, align 8, !tbaa !158
  %283 = icmp eq ptr %282, null
  br i1 %283, label %291, label %284, !prof !188

284:                                              ; preds = %280
  %285 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %310, label %287

287:                                              ; preds = %284
  %288 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %289 = call i64 @fwrite(ptr nonnull @.str.37, i64 48, i64 1, ptr %288)
  %290 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_gimple_stmt(ptr noundef %290, ptr noundef %73, i32 noundef 0, i32 noundef 2) #20
  br label %310

291:                                              ; preds = %280
  store ptr %58, ptr %281, align 8, !tbaa !158
  %292 = load ptr, ptr %63, align 8, !tbaa !90
  %293 = getelementptr inbounds %struct.tree_common, ptr %292, i64 0, i32 2
  %294 = load ptr, ptr %293, align 8, !tbaa !59
  %295 = call ptr @get_vectype_for_scalar_type(ptr noundef %294) #20
  %296 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 5
  store ptr %295, ptr %296, align 8, !tbaa !118
  %297 = icmp eq ptr %295, null
  %298 = add i32 %49, 1
  br i1 %297, label %299, label %48, !prof !193, !llvm.loop !194

299:                                              ; preds = %291
  %300 = call zeroext i8 @vect_print_dump_info(i32 noundef 2) #20
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %310, label %302, !prof !195

302:                                              ; preds = %299
  %303 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %304 = call i64 @fwrite(ptr nonnull @.str.38, i64 37, i64 1, ptr %303)
  %305 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_gimple_stmt(ptr noundef %305, ptr noundef %73, i32 noundef 0, i32 noundef 2) #20
  %306 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %307 = call i64 @fwrite(ptr nonnull @.str.39, i64 14, i64 1, ptr %306)
  %308 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %308, ptr noundef %294, i32 noundef 8) #20
  br label %310

309:                                              ; preds = %219, %222, %186, %189, %168, %171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #20
  br label %310

310:                                              ; preds = %57, %69, %66, %112, %109, %123, %120, %309, %287, %284, %302, %299, %37, %40, %25, %28
  %311 = phi i8 [ 0, %28 ], [ 0, %25 ], [ 0, %40 ], [ 0, %37 ], [ 0, %299 ], [ 0, %302 ], [ 0, %284 ], [ 0, %287 ], [ 0, %309 ], [ 0, %120 ], [ 0, %123 ], [ 0, %109 ], [ 0, %112 ], [ 0, %66 ], [ 0, %69 ], [ 1, %57 ]
  ret i8 %311
}

declare zeroext i8 @compute_data_dependences_for_loop(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @compute_data_dependences_for_bb(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_indirect_ref_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @split_constant_offset(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @highest_pow2_factor(ptr noundef) local_unnamed_addr #3

declare ptr @get_vectype_for_scalar_type(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_get_new_vect_var(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #9 !prof !47 {
  %4 = icmp ult i32 %1, 3
  br i1 %4, label %6, label %5

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2113, ptr noundef nonnull @.str.10) #20
  br label %10

6:                                                ; preds = %3
  %7 = zext nneg i32 %1 to i64
  %8 = shl i64 %7, 2
  %9 = call ptr @llvm.load.relative.i64(ptr @reltable.vect_get_new_vect_var, i64 %8)
  br label %10

10:                                               ; preds = %6, %5
  %11 = phi ptr [ undef, %5 ], [ %9, %6 ]
  %12 = icmp eq ptr %2, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = tail call ptr (ptr, ...) @concat(ptr noundef %11, ptr noundef nonnull %2, ptr noundef null) #20
  %15 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %14) #20
  tail call void @free(ptr noundef %14)
  br label %18

16:                                               ; preds = %10
  %17 = tail call ptr @create_tmp_var(ptr noundef %0, ptr noundef %11) #20
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi ptr [ %15, %13 ], [ %17, %16 ]
  %20 = load i64, ptr %0, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_decl_common, ptr %19, i64 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = or i64 %25, 134217728
  store i64 %26, ptr %24, align 8
  br label %27

27:                                               ; preds = %23, %18
  ret ptr %19
}

declare ptr @concat(ptr noundef, ...) local_unnamed_addr #3

declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_create_addr_base_for_vector_ref(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef readnone %3) local_unnamed_addr #9 !prof !47 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %4
  %10 = load ptr, ptr @stmt_vec_info_vec, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %10, align 8, !tbaa !68
  br label %14

14:                                               ; preds = %12, %9
  %15 = phi i32 [ %13, %12 ], [ 0, %9 ]
  %16 = icmp ugt i32 %7, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr @stmt_vec_info_vec, align 8
  %20 = add i32 %7, -1
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %19, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !48
  br label %24

24:                                               ; preds = %4, %18
  %25 = phi ptr [ %23, %18 ], [ null, %4 ]
  %26 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !158
  %28 = getelementptr inbounds %struct.data_reference, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !164
  %30 = tail call ptr @unshare_expr(ptr noundef %29) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !48
  %31 = getelementptr inbounds %struct.data_reference, ptr %27, i64 0, i32 4, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !187
  %33 = tail call ptr @unshare_expr(ptr noundef %32) #20
  %34 = getelementptr inbounds %struct.data_reference, ptr %27, i64 0, i32 4, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = tail call ptr @unshare_expr(ptr noundef %35) #20
  %37 = getelementptr inbounds %struct.data_reference, ptr %27, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !90
  %39 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = getelementptr inbounds %struct.tree_type, ptr %40, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !59
  %43 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !119
  %45 = icmp ne ptr %44, null
  %46 = icmp ne ptr %3, null
  %47 = and i1 %46, %45
  br i1 %47, label %48, label %72

48:                                               ; preds = %24
  %49 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !122
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %72, label %54

54:                                               ; preds = %48
  %55 = load ptr, ptr %44, align 8, !tbaa !93
  %56 = getelementptr inbounds %struct.loop, ptr %55, i64 0, i32 8
  %57 = load ptr, ptr %56, align 8, !tbaa !121
  %58 = icmp eq ptr %57, null
  %59 = icmp ne ptr %57, %52
  %60 = or i1 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2189, ptr noundef nonnull @.str.10) #20
  br label %62

62:                                               ; preds = %54, %61
  %63 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !167
  %65 = tail call ptr @unshare_expr(ptr noundef %64) #20
  %66 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !192
  %68 = tail call ptr @unshare_expr(ptr noundef %67) #20
  %69 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 9
  %70 = load ptr, ptr %69, align 8, !tbaa !165
  %71 = tail call ptr @unshare_expr(ptr noundef %70) #20
  br label %72

72:                                               ; preds = %62, %48, %24
  %73 = phi ptr [ %68, %62 ], [ %33, %48 ], [ %33, %24 ]
  %74 = phi ptr [ %71, %62 ], [ %36, %48 ], [ %36, %24 ]
  %75 = phi ptr [ %65, %62 ], [ %30, %48 ], [ %30, %24 ]
  br i1 %45, label %81, label %76

76:                                               ; preds = %72
  %77 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  %78 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #20
  %79 = load ptr, ptr %37, align 8, !tbaa !90
  %80 = tail call ptr @unshare_expr(ptr noundef %79) #20
  br label %81

81:                                               ; preds = %72, %76
  %82 = phi ptr [ %80, %76 ], [ %75, %72 ]
  %83 = phi ptr [ %77, %76 ], [ %73, %72 ]
  %84 = phi ptr [ %78, %76 ], [ %74, %72 ]
  %85 = tail call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %82) #20
  %86 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !59
  %88 = tail call ptr @create_tmp_var(ptr noundef %87, ptr noundef nonnull @.str.43) #20
  %89 = tail call zeroext i8 @add_referenced_var(ptr noundef %88) #20
  %90 = call ptr @force_gimple_operand(ptr noundef %75, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef %88) #20
  %91 = load ptr, ptr %5, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %91) #20
  %92 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %93 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %92, ptr noundef %83) #20
  %94 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %95 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %94, ptr noundef %84) #20
  %96 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %93, ptr noundef %95) #20
  %97 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %98 = call ptr @create_tmp_var(ptr noundef %97, ptr noundef nonnull @.str.44) #20
  %99 = call zeroext i8 @add_referenced_var(ptr noundef %98) #20
  %100 = call ptr @force_gimple_operand(ptr noundef %96, ptr noundef nonnull %5, i8 noundef zeroext 1, ptr noundef %98) #20
  %101 = load ptr, ptr %5, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %101) #20
  %102 = icmp eq ptr %2, null
  br i1 %102, label %114, label %103

103:                                              ; preds = %81
  %104 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %105 = call ptr @create_tmp_var(ptr noundef %104, ptr noundef nonnull @.str.45) #20
  %106 = call zeroext i8 @add_referenced_var(ptr noundef %105) #20
  %107 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %108 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %107, ptr noundef nonnull %2) #20
  %109 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %107, ptr noundef %108, ptr noundef %42) #20
  %110 = load ptr, ptr @sizetype_tab, align 16, !tbaa !48
  %111 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef %110, ptr noundef %100, ptr noundef %109) #20
  %112 = call ptr @force_gimple_operand(ptr noundef %111, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef %105) #20
  %113 = load ptr, ptr %5, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %113) #20
  br label %114

114:                                              ; preds = %103, %81
  %115 = phi ptr [ %112, %103 ], [ %100, %81 ]
  br i1 %45, label %116, label %120

116:                                              ; preds = %114
  %117 = getelementptr inbounds %struct.tree_common, ptr %90, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !59
  %119 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef %118, ptr noundef %90, ptr noundef %115) #20
  br label %136

120:                                              ; preds = %114
  %121 = load ptr, ptr %37, align 8, !tbaa !90
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 65535
  %124 = icmp eq i64 %123, 47
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %127 = load ptr, ptr %126, align 8, !tbaa !59
  %128 = call ptr @unshare_expr(ptr noundef %127) #20
  br label %136

129:                                              ; preds = %120
  %130 = getelementptr inbounds %struct.tree_common, ptr %121, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !59
  %132 = call ptr @build_pointer_type(ptr noundef %131) #20
  %133 = load ptr, ptr %37, align 8, !tbaa !90
  %134 = call ptr @unshare_expr(ptr noundef %133) #20
  %135 = call ptr @build1_stat(i32 noundef 121, ptr noundef %132, ptr noundef %134) #20
  br label %136

136:                                              ; preds = %125, %129, %116
  %137 = phi ptr [ %119, %116 ], [ %128, %125 ], [ %135, %129 ]
  %138 = getelementptr inbounds %struct._stmt_vec_info, ptr %25, i64 0, i32 5
  %139 = load ptr, ptr %138, align 8, !tbaa !118
  %140 = call ptr @build_pointer_type(ptr noundef %139) #20
  %141 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %140, ptr noundef %137) #20
  %142 = call ptr @get_name(ptr noundef %85) #20
  %143 = call ptr @vect_get_new_vect_var(ptr noundef %140, i32 noundef 1, ptr noundef %142)
  %144 = call zeroext i8 @add_referenced_var(ptr noundef %143) #20
  %145 = call ptr @force_gimple_operand(ptr noundef %141, ptr noundef nonnull %5, i8 noundef zeroext 0, ptr noundef %143) #20
  %146 = load ptr, ptr %5, align 8, !tbaa !48
  call void @gimple_seq_add_seq(ptr noundef %1, ptr noundef %146) #20
  %147 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %136
  %150 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %151 = call i64 @fwrite(ptr nonnull @.str.46, i64 8, i64 1, ptr %150)
  %152 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %152, ptr noundef %145, i32 noundef 2) #20
  br label %153

153:                                              ; preds = %149, %136
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret ptr %145
}

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

declare ptr @force_gimple_operand(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

declare void @gimple_seq_add_seq(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build1_stat(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type(ptr noundef) local_unnamed_addr #3

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @vect_create_data_ref_ptr(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, i8 noundef zeroext %5, ptr nocapture noundef %6) local_unnamed_addr #9 !prof !47 {
  %8 = alloca ptr, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca i8, align 1
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.gimple_stmt_iterator, align 8
  %14 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !59
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %7
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr %18, align 8, !tbaa !68
  br label %22

22:                                               ; preds = %20, %17
  %23 = phi i32 [ %21, %20 ], [ 0, %17 ]
  %24 = icmp ugt i32 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @stmt_vec_info_vec, align 8
  %28 = add i32 %15, -1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %27, i64 0, i32 2, i64 %29
  %31 = load ptr, ptr %30, align 8, !tbaa !48
  br label %32

32:                                               ; preds = %7, %26
  %33 = phi ptr [ %31, %26 ], [ null, %7 ]
  %34 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !119
  %36 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  store ptr null, ptr %8, align 8, !tbaa !48
  %38 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !158
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  %40 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 26
  %41 = load ptr, ptr %40, align 8, !tbaa !170
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #20
  call void @gsi_for_stmt(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %13, ptr noundef %0) #20
  %42 = icmp eq ptr %35, null
  br i1 %42, label %62, label %43

43:                                               ; preds = %32
  %44 = load ptr, ptr %35, align 8, !tbaa !93
  %45 = getelementptr inbounds %struct.loop, ptr %44, i64 0, i32 8
  %46 = load ptr, ptr %45, align 8, !tbaa !121
  %47 = icmp eq ptr %46, null
  br i1 %47, label %55, label %48

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !122
  %53 = icmp eq ptr %46, %52
  %54 = zext i1 %53 to i8
  br label %55

55:                                               ; preds = %43, %48
  %56 = phi i8 [ 0, %43 ], [ %54, %48 ]
  %57 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %58 = load ptr, ptr %57, align 8, !tbaa !59
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !122
  %61 = call ptr @loop_preheader_edge(ptr noundef %44) #20
  br label %66

62:                                               ; preds = %32
  %63 = icmp eq ptr %41, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %62
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2350, ptr noundef nonnull @.str.10) #20
  br label %65

65:                                               ; preds = %62, %64
  store ptr null, ptr %4, align 8, !tbaa !48
  br label %66

66:                                               ; preds = %65, %55
  %67 = phi ptr [ %61, %55 ], [ null, %65 ]
  %68 = phi ptr [ %60, %55 ], [ null, %65 ]
  %69 = phi i8 [ %56, %55 ], [ 0, %65 ]
  %70 = phi ptr [ %44, %55 ], [ null, %65 ]
  %71 = phi i8 [ %5, %55 ], [ 1, %65 ]
  %72 = icmp eq i8 %69, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 11
  br label %78

75:                                               ; preds = %66
  %76 = load ptr, ptr %38, align 8, !tbaa !158
  %77 = getelementptr inbounds %struct.data_reference, ptr %76, i64 0, i32 4, i32 3
  br label %78

78:                                               ; preds = %75, %73
  %79 = phi ptr [ %74, %73 ], [ %77, %75 ]
  %80 = load ptr, ptr %79, align 8, !tbaa !48
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !48
  %82 = call i32 @tree_int_cst_compare(ptr noundef %80, ptr noundef %81) #20
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i8
  store i8 %84, ptr %6, align 1, !tbaa !59
  %85 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 4
  %86 = load ptr, ptr %85, align 8, !tbaa !164
  %87 = call ptr @unshare_expr(ptr noundef %86) #20
  %88 = call ptr @build_fold_indirect_ref_loc(i32 noundef 0, ptr noundef %87) #20
  %89 = call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %78
  %92 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %93 = call i64 @fwrite(ptr nonnull @.str.47, i64 40, i64 1, ptr %92)
  %94 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %94, ptr noundef %37, i32 noundef 2) #20
  %95 = load i64, ptr %88, align 8
  %96 = trunc i64 %95 to i16
  switch i16 %96, label %106 [
    i16 32, label %97
    i16 45, label %97
    i16 41, label %100
    i16 141, label %103
  ]

97:                                               ; preds = %91, %91
  %98 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %99 = call i64 @fwrite(ptr nonnull @.str.48, i64 28, i64 1, ptr %98)
  br label %106

100:                                              ; preds = %91
  %101 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %102 = call i64 @fwrite(ptr nonnull @.str.49, i64 40, i64 1, ptr %101)
  br label %106

103:                                              ; preds = %91
  %104 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %105 = call i64 @fwrite(ptr nonnull @.str.50, i64 29, i64 1, ptr %104)
  br label %106

106:                                              ; preds = %91, %100, %103, %97
  %107 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  call void @print_generic_expr(ptr noundef %107, ptr noundef nonnull %88, i32 noundef 2) #20
  br label %108

108:                                              ; preds = %106, %78
  %109 = call ptr @build_pointer_type(ptr noundef %37) #20
  %110 = call ptr @get_name(ptr noundef %88) #20
  %111 = call ptr @vect_get_new_vect_var(ptr noundef %109, i32 noundef 1, ptr noundef %110)
  %112 = call i32 @get_deref_alias_set(ptr noundef %111) #20
  %113 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !90
  %115 = call i32 @get_alias_set(ptr noundef %114) #20
  %116 = call i32 @alias_sets_conflict_p(i32 noundef %112, i32 noundef %115) #20
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %134

118:                                              ; preds = %108
  %119 = load i64, ptr %109, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 14
  br i1 %121, label %122, label %124

122:                                              ; preds = %118
  %123 = call i32 @vector_type_mode(ptr noundef nonnull %109) #20
  br label %129

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 6
  %126 = load i32, ptr %125, align 4
  %127 = lshr i32 %126, 16
  %128 = and i32 %127, 255
  br label %129

129:                                              ; preds = %124, %122
  %130 = phi i32 [ %123, %122 ], [ %128, %124 ]
  %131 = call ptr @build_pointer_type_for_mode(ptr noundef %37, i32 noundef %130, i8 noundef zeroext 1) #20
  %132 = call ptr @get_name(ptr noundef %88) #20
  %133 = call ptr @vect_get_new_vect_var(ptr noundef %131, i32 noundef 1, ptr noundef %132)
  br label %209

134:                                              ; preds = %108
  %135 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 19
  %136 = load i32, ptr %135, align 8, !tbaa !142
  %137 = icmp ugt i32 %136, 1
  br i1 %137, label %138, label %209

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct._stmt_vec_info, ptr %33, i64 0, i32 17
  %140 = load ptr, ptr %139, align 8, !tbaa !70
  br label %141

141:                                              ; preds = %203, %138
  %142 = phi ptr [ %111, %138 ], [ %204, %203 ]
  %143 = phi ptr [ %109, %138 ], [ %205, %203 ]
  %144 = phi ptr [ %140, %138 ], [ %206, %203 ]
  %145 = load i32, ptr %144, align 8
  %146 = and i32 %145, 255
  %147 = add nsw i32 %146, -10
  %148 = icmp ult i32 %147, -9
  br i1 %148, label %161, label %149

149:                                              ; preds = %141
  %150 = zext nneg i32 %146 to i64
  %151 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %150
  %152 = load i32, ptr %151, align 4, !tbaa !63
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %153
  %155 = load i64, ptr %154, align 8, !tbaa !67
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %158

158:                                              ; preds = %157, %149
  %159 = getelementptr inbounds i8, ptr %144, i64 %155
  %160 = load ptr, ptr %159, align 8, !tbaa !48
  br label %161

161:                                              ; preds = %141, %158
  %162 = phi ptr [ %160, %158 ], [ null, %141 ]
  %163 = call i32 @get_deref_alias_set(ptr noundef %142) #20
  %164 = call i32 @get_alias_set(ptr noundef %162) #20
  %165 = call i32 @alias_sets_conflict_p(i32 noundef %163, i32 noundef %164) #20
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %161
  %168 = load i64, ptr %143, align 8
  %169 = and i64 %168, 65535
  %170 = icmp eq i64 %169, 14
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = call i32 @vector_type_mode(ptr noundef nonnull %143) #20
  br label %178

173:                                              ; preds = %167
  %174 = getelementptr inbounds %struct.tree_type, ptr %143, i64 0, i32 6
  %175 = load i32, ptr %174, align 4
  %176 = lshr i32 %175, 16
  %177 = and i32 %176, 255
  br label %178

178:                                              ; preds = %173, %171
  %179 = phi i32 [ %172, %171 ], [ %177, %173 ]
  %180 = call ptr @build_pointer_type_for_mode(ptr noundef %37, i32 noundef %179, i8 noundef zeroext 1) #20
  %181 = call ptr @get_name(ptr noundef %88) #20
  %182 = call ptr @vect_get_new_vect_var(ptr noundef %180, i32 noundef 1, ptr noundef %181)
  br label %203

183:                                              ; preds = %161
  %184 = getelementptr inbounds %struct.gimple_statement_base, ptr %144, i64 0, i32 1
  %185 = load i32, ptr %184, align 4, !tbaa !59
  %186 = icmp ne i32 %185, 0
  call void @llvm.assume(i1 %186)
  %187 = load ptr, ptr @stmt_vec_info_vec, align 8
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %183
  %190 = load i32, ptr %187, align 8, !tbaa !68
  br label %191

191:                                              ; preds = %189, %183
  %192 = phi i32 [ %190, %189 ], [ 0, %183 ]
  %193 = icmp ugt i32 %185, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %195

195:                                              ; preds = %194, %191
  %196 = load ptr, ptr @stmt_vec_info_vec, align 8
  %197 = add i32 %185, -1
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %196, i64 0, i32 2, i64 %198
  %200 = load ptr, ptr %199, align 8, !tbaa !48
  %201 = getelementptr inbounds %struct._stmt_vec_info, ptr %200, i64 0, i32 18
  %202 = load ptr, ptr %201, align 8, !tbaa !73
  br label %203

203:                                              ; preds = %195, %178
  %204 = phi ptr [ %142, %195 ], [ %182, %178 ]
  %205 = phi ptr [ %143, %195 ], [ %180, %178 ]
  %206 = phi ptr [ %202, %195 ], [ %144, %178 ]
  %207 = icmp eq ptr %206, null
  %208 = select i1 %166, i1 true, i1 %207
  br i1 %208, label %209, label %141, !llvm.loop !196

209:                                              ; preds = %203, %134, %129
  %210 = phi ptr [ %111, %134 ], [ %133, %129 ], [ %204, %203 ]
  %211 = phi ptr [ %109, %134 ], [ %131, %129 ], [ %205, %203 ]
  %212 = call zeroext i8 @add_referenced_var(ptr noundef %210) #20
  %213 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef %0, ptr noundef nonnull %8, ptr noundef %2, ptr noundef %70)
  %214 = load ptr, ptr %8, align 8, !tbaa !48
  %215 = icmp eq ptr %214, null
  br i1 %215, label %223, label %216

216:                                              ; preds = %209
  %217 = icmp eq ptr %67, null
  br i1 %217, label %222, label %218

218:                                              ; preds = %216
  %219 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef nonnull %67, ptr noundef nonnull %214) #20
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %218
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2473, ptr noundef nonnull @.str.10) #20
  br label %223

222:                                              ; preds = %216
  call void @gsi_insert_seq_before(ptr noundef nonnull %13, ptr noundef nonnull %214, i32 noundef 1) #20
  br label %223

223:                                              ; preds = %221, %218, %222, %209
  store ptr %213, ptr %3, align 8, !tbaa !48
  %224 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %211, ptr noundef %213) #20
  %225 = call ptr @gimple_build_assign_stat(ptr noundef %210, ptr noundef %224) #20
  %226 = load ptr, ptr @cfun, align 8, !tbaa !48
  %227 = call ptr @make_ssa_name_fn(ptr noundef %226, ptr noundef %210, ptr noundef %225) #20
  %228 = load i32, ptr %225, align 8
  %229 = and i32 %228, 255
  %230 = add nsw i32 %229, -10
  %231 = icmp ult i32 %230, -9
  br i1 %231, label %236, label %232

232:                                              ; preds = %223
  %233 = getelementptr inbounds %struct.gimple_statement_base, ptr %225, i64 0, i32 3
  %234 = load i32, ptr %233, align 4, !tbaa !59
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %232, %223
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %237

237:                                              ; preds = %236, %232
  %238 = load i32, ptr %225, align 8
  %239 = and i32 %238, 255
  %240 = zext nneg i32 %239 to i64
  %241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %240
  %242 = load i32, ptr %241, align 4, !tbaa !63
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !67
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %248

248:                                              ; preds = %247, %237
  %249 = getelementptr inbounds i8, ptr %225, i64 %245
  store ptr %227, ptr %249, align 8, !tbaa !48
  %250 = icmp eq ptr %227, null
  br i1 %250, label %257, label %251

251:                                              ; preds = %248
  %252 = load i64, ptr %227, align 8
  %253 = and i64 %252, 65535
  %254 = icmp eq i64 %253, 141
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = getelementptr inbounds %struct.tree_ssa_name, ptr %227, i64 0, i32 2
  store ptr %225, ptr %256, align 8, !tbaa !59
  br label %257

257:                                              ; preds = %248, %251, %255
  %258 = icmp eq ptr %67, null
  br i1 %258, label %263, label %259

259:                                              ; preds = %257
  %260 = call ptr @gsi_insert_on_edge_immediate(ptr noundef nonnull %67, ptr noundef nonnull %225) #20
  %261 = icmp eq ptr %260, null
  br i1 %261, label %264, label %262

262:                                              ; preds = %259
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2489, ptr noundef nonnull @.str.10) #20
  br label %264

263:                                              ; preds = %257
  call void @gsi_insert_before(ptr noundef nonnull %13, ptr noundef nonnull %225, i32 noundef 1) #20
  br label %264

264:                                              ; preds = %262, %259, %263
  %265 = icmp ne i8 %71, 0
  %266 = icmp eq ptr %70, %1
  %267 = or i1 %42, %266
  %268 = and i1 %265, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %264
  %270 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 6
  %271 = load ptr, ptr %270, align 8, !tbaa !197
  %272 = icmp eq ptr %271, null
  br i1 %272, label %332, label %273

273:                                              ; preds = %269
  call void @duplicate_ssa_name_ptr_info(ptr noundef %227, ptr noundef nonnull %271) #20
  br label %332

274:                                              ; preds = %264
  %275 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 3
  %276 = load i8, ptr %6, align 1, !tbaa !59
  %277 = icmp eq i8 %276, 0
  %278 = select i1 %277, ptr %275, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17)
  %279 = load ptr, ptr %278, align 8, !tbaa !59
  call void @standard_iv_increment_position(ptr noundef %70, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %280 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %211, ptr noundef %279) #20
  %281 = load i8, ptr %10, align 1, !tbaa !59
  call void @create_iv(ptr noundef %227, ptr noundef %280, ptr noundef %210, ptr noundef %70, ptr noundef nonnull %9, i8 noundef zeroext %281, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %282 = load ptr, ptr %9, align 8
  %283 = load ptr, ptr %282, align 8, !tbaa !198
  %284 = call ptr @new_stmt_vec_info(ptr noundef %283, ptr noundef %35, ptr noundef null) #20
  %285 = getelementptr inbounds %struct.gimple_statement_base, ptr %283, i64 0, i32 1
  %286 = load i32, ptr %285, align 4, !tbaa !59
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %312

288:                                              ; preds = %274
  %289 = icmp eq ptr %284, null
  br i1 %289, label %290, label %291

290:                                              ; preds = %288
  call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 639, ptr noundef nonnull @.str.10) #20
  br label %291

291:                                              ; preds = %290, %288
  %292 = load ptr, ptr @stmt_vec_info_vec, align 8
  %293 = icmp eq ptr %292, null
  br i1 %293, label %297, label %294

294:                                              ; preds = %291
  %295 = load i32, ptr %292, align 8, !tbaa !68
  %296 = add i32 %295, 1
  br label %297

297:                                              ; preds = %294, %291
  %298 = phi i32 [ %296, %294 ], [ 1, %291 ]
  store i32 %298, ptr %285, align 4, !tbaa !59
  %299 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  %300 = icmp eq ptr %299, null
  br i1 %300, label %306, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %299, i64 0, i32 1
  %303 = load i32, ptr %302, align 4, !tbaa !200
  %304 = load i32, ptr %299, align 8, !tbaa !68
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %308

306:                                              ; preds = %301, %297
  %307 = call ptr @vec_heap_p_reserve(ptr noundef %299, i32 noundef 1) #20
  store ptr %307, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  br label %308

308:                                              ; preds = %306, %301
  %309 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  %310 = load i32, ptr %309, align 8, !tbaa !68
  %311 = add i32 %310, 1
  store i32 %311, ptr %309, align 8, !tbaa !68
  br label %315

312:                                              ; preds = %274
  %313 = load ptr, ptr @stmt_vec_info_vec, align 8
  %314 = add i32 %286, -1
  br label %315

315:                                              ; preds = %308, %312
  %316 = phi i32 [ %310, %308 ], [ %314, %312 ]
  %317 = phi ptr [ %309, %308 ], [ %313, %312 ]
  %318 = zext i32 %316 to i64
  %319 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %317, i64 0, i32 2, i64 %318
  store ptr %284, ptr %319, align 8, !tbaa !48
  %320 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 6
  %321 = load ptr, ptr %320, align 8, !tbaa !197
  %322 = icmp eq ptr %321, null
  br i1 %322, label %327, label %323

323:                                              ; preds = %315
  %324 = load ptr, ptr %11, align 8, !tbaa !48
  call void @duplicate_ssa_name_ptr_info(ptr noundef %324, ptr noundef nonnull %321) #20
  %325 = load ptr, ptr %12, align 8, !tbaa !48
  %326 = load ptr, ptr %320, align 8, !tbaa !197
  call void @duplicate_ssa_name_ptr_info(ptr noundef %325, ptr noundef %326) #20
  br label %327

327:                                              ; preds = %323, %315
  %328 = icmp eq ptr %4, null
  br i1 %328, label %330, label %329

329:                                              ; preds = %327
  store ptr %283, ptr %4, align 8, !tbaa !48
  br label %330

330:                                              ; preds = %329, %327
  %331 = load ptr, ptr %11, align 8, !tbaa !48
  br label %332

332:                                              ; preds = %269, %273, %330
  %333 = phi ptr [ %331, %330 ], [ %227, %273 ], [ %227, %269 ]
  %334 = or i1 %72, %265
  br i1 %334, label %390, label %335

335:                                              ; preds = %332
  call void @standard_iv_increment_position(ptr noundef %68, ptr noundef nonnull %9, ptr noundef nonnull %10) #20
  %336 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 4, i32 3
  %337 = load ptr, ptr %336, align 8, !tbaa !138
  %338 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %211, ptr noundef %337) #20
  %339 = load i8, ptr %10, align 1, !tbaa !59
  call void @create_iv(ptr noundef %333, ptr noundef %338, ptr noundef %210, ptr noundef %68, ptr noundef nonnull %9, i8 noundef zeroext %339, ptr noundef nonnull %11, ptr noundef nonnull %12) #20
  %340 = load ptr, ptr %9, align 8
  %341 = load ptr, ptr %340, align 8, !tbaa !198
  %342 = call ptr @new_stmt_vec_info(ptr noundef %341, ptr noundef %35, ptr noundef null) #20
  %343 = getelementptr inbounds %struct.gimple_statement_base, ptr %341, i64 0, i32 1
  %344 = load i32, ptr %343, align 4, !tbaa !59
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %370

346:                                              ; preds = %335
  %347 = icmp eq ptr %342, null
  br i1 %347, label %348, label %349

348:                                              ; preds = %346
  call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 639, ptr noundef nonnull @.str.10) #20
  br label %349

349:                                              ; preds = %348, %346
  %350 = load ptr, ptr @stmt_vec_info_vec, align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %355, label %352

352:                                              ; preds = %349
  %353 = load i32, ptr %350, align 8, !tbaa !68
  %354 = add i32 %353, 1
  br label %355

355:                                              ; preds = %352, %349
  %356 = phi i32 [ %354, %352 ], [ 1, %349 ]
  store i32 %356, ptr %343, align 4, !tbaa !59
  %357 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  %358 = icmp eq ptr %357, null
  br i1 %358, label %364, label %359

359:                                              ; preds = %355
  %360 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %357, i64 0, i32 1
  %361 = load i32, ptr %360, align 4, !tbaa !200
  %362 = load i32, ptr %357, align 8, !tbaa !68
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %366

364:                                              ; preds = %359, %355
  %365 = call ptr @vec_heap_p_reserve(ptr noundef %357, i32 noundef 1) #20
  store ptr %365, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  br label %366

366:                                              ; preds = %364, %359
  %367 = load ptr, ptr @stmt_vec_info_vec, align 8, !tbaa !48
  %368 = load i32, ptr %367, align 8, !tbaa !68
  %369 = add i32 %368, 1
  store i32 %369, ptr %367, align 8, !tbaa !68
  br label %373

370:                                              ; preds = %335
  %371 = load ptr, ptr @stmt_vec_info_vec, align 8
  %372 = add i32 %344, -1
  br label %373

373:                                              ; preds = %366, %370
  %374 = phi i32 [ %368, %366 ], [ %372, %370 ]
  %375 = phi ptr [ %367, %366 ], [ %371, %370 ]
  %376 = zext i32 %374 to i64
  %377 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %375, i64 0, i32 2, i64 %376
  store ptr %342, ptr %377, align 8, !tbaa !48
  %378 = getelementptr inbounds %struct.data_reference, ptr %39, i64 0, i32 6
  %379 = load ptr, ptr %378, align 8, !tbaa !197
  %380 = icmp eq ptr %379, null
  br i1 %380, label %385, label %381

381:                                              ; preds = %373
  %382 = load ptr, ptr %11, align 8, !tbaa !48
  call void @duplicate_ssa_name_ptr_info(ptr noundef %382, ptr noundef nonnull %379) #20
  %383 = load ptr, ptr %12, align 8, !tbaa !48
  %384 = load ptr, ptr %378, align 8, !tbaa !197
  call void @duplicate_ssa_name_ptr_info(ptr noundef %383, ptr noundef %384) #20
  br label %385

385:                                              ; preds = %381, %373
  %386 = icmp eq ptr %4, null
  br i1 %386, label %388, label %387

387:                                              ; preds = %385
  store ptr %341, ptr %4, align 8, !tbaa !48
  br label %388

388:                                              ; preds = %387, %385
  %389 = load ptr, ptr %11, align 8, !tbaa !48
  br label %390

390:                                              ; preds = %332, %388
  %391 = phi ptr [ %389, %388 ], [ %333, %332 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  ret ptr %391
}

declare void @gsi_for_stmt(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @alias_sets_conflict_p(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @get_deref_alias_set(ptr noundef) local_unnamed_addr #3

declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #3

declare ptr @build_pointer_type_for_mode(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @gsi_insert_seq_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_seq_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gsi_insert_on_edge_immediate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @duplicate_ssa_name_ptr_info(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @standard_iv_increment_position(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @create_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @new_stmt_vec_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @bump_vector_ptr(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #9 !prof !47 {
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %9, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ]
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = add i32 %7, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %18, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !158
  %25 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !118
  %27 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !59
  %29 = getelementptr inbounds %struct.tree_type, ptr %26, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !59
  %31 = icmp eq ptr %4, null
  %32 = select i1 %31, ptr %30, ptr %4
  %33 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 66, ptr noundef %28, ptr noundef %0, ptr noundef %32) #20
  %34 = load ptr, ptr @cfun, align 8, !tbaa !48
  %35 = tail call ptr @make_ssa_name_fn(ptr noundef %34, ptr noundef %28, ptr noundef %33) #20
  %36 = load i32, ptr %33, align 8
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %44, label %40

40:                                               ; preds = %17
  %41 = getelementptr inbounds %struct.gimple_statement_base, ptr %33, i64 0, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !59
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %45

45:                                               ; preds = %44, %40
  %46 = load i32, ptr %33, align 8
  %47 = and i32 %46, 255
  %48 = zext nneg i32 %47 to i64
  %49 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !63
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !67
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %56

56:                                               ; preds = %55, %45
  %57 = getelementptr inbounds i8, ptr %33, i64 %53
  store ptr %35, ptr %57, align 8, !tbaa !48
  %58 = icmp eq ptr %35, null
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load i64, ptr %35, align 8
  %61 = and i64 %60, 65535
  %62 = icmp eq i64 %61, 141
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 2
  store ptr %33, ptr %64, align 8, !tbaa !59
  br label %65

65:                                               ; preds = %56, %59, %63
  tail call void @vect_finish_stmt_generation(ptr noundef %3, ptr noundef nonnull %33, ptr noundef %2) #20
  %66 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 6
  %67 = load ptr, ptr %66, align 8, !tbaa !197
  %68 = icmp eq ptr %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call void @duplicate_ssa_name_ptr_info(ptr noundef %35, ptr noundef nonnull %67) #20
  br label %70

70:                                               ; preds = %69, %65
  %71 = icmp eq ptr %1, null
  br i1 %71, label %146, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %1, align 8
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -10
  %76 = icmp ult i32 %75, -9
  br i1 %76, label %80, label %77

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %1, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !59
  br label %80

80:                                               ; preds = %77, %72
  %81 = phi ptr [ %79, %77 ], [ null, %72 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %80
  %84 = and i32 %73, 254
  %85 = add nsw i32 %84, -10
  %86 = icmp ult i32 %85, -4
  br i1 %86, label %93, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !59
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr %81, align 8, !tbaa !201
  br label %93

93:                                               ; preds = %91, %87, %83, %80
  %94 = phi ptr [ %81, %80 ], [ %81, %83 ], [ %81, %87 ], [ %92, %91 ]
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.use_optype_d, ptr %94, i64 0, i32 1
  %98 = load ptr, ptr %94, align 8, !tbaa !201
  br label %99

99:                                               ; preds = %93, %96
  %100 = phi ptr [ %98, %96 ], [ %94, %93 ]
  %101 = phi i8 [ 0, %96 ], [ 1, %93 ]
  %102 = phi ptr [ %97, %96 ], [ null, %93 ]
  br i1 %95, label %146, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 5
  %105 = getelementptr inbounds %struct.tree_ssa_name, ptr %35, i64 0, i32 5, i32 1
  br label %106

106:                                              ; preds = %103, %141
  %107 = phi ptr [ %102, %103 ], [ %144, %141 ]
  %108 = phi i8 [ %101, %103 ], [ %143, %141 ]
  %109 = phi ptr [ %100, %103 ], [ %142, %141 ]
  %110 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %107, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !204
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = icmp eq ptr %112, %0
  br i1 %113, label %114, label %132

114:                                              ; preds = %106
  %115 = load ptr, ptr %107, align 8, !tbaa !205
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %107, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !206
  %120 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %115, i64 0, i32 1
  store ptr %119, ptr %120, align 8, !tbaa !206
  %121 = load ptr, ptr %118, align 8, !tbaa !206
  store ptr %115, ptr %121, align 8, !tbaa !205
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %107, i8 0, i64 16, i1 false)
  br label %122

122:                                              ; preds = %117, %114
  store ptr %35, ptr %111, align 8, !tbaa !48
  br i1 %58, label %127, label %123

123:                                              ; preds = %122
  %124 = load i64, ptr %35, align 8
  %125 = and i64 %124, 65535
  %126 = icmp eq i64 %125, 141
  br i1 %126, label %128, label %127

127:                                              ; preds = %123, %122
  store ptr null, ptr %107, align 8, !tbaa !205
  br label %136

128:                                              ; preds = %123
  store ptr %104, ptr %107, align 8, !tbaa !205
  %129 = load ptr, ptr %105, align 8, !tbaa !206
  %130 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %107, i64 0, i32 1
  store ptr %129, ptr %130, align 8, !tbaa !206
  %131 = load ptr, ptr %105, align 8, !tbaa !206
  store ptr %107, ptr %131, align 8, !tbaa !205
  store ptr %107, ptr %105, align 8, !tbaa !206
  br label %136

132:                                              ; preds = %106
  %133 = tail call i32 @tree_int_cst_compare(ptr noundef %112, ptr noundef %32) #20
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %132
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2646, ptr noundef nonnull @.str.10) #20
  br label %136

136:                                              ; preds = %128, %127, %135, %132
  %137 = icmp eq ptr %109, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %136
  %139 = getelementptr inbounds %struct.use_optype_d, ptr %109, i64 0, i32 1
  %140 = load ptr, ptr %109, align 8, !tbaa !201
  br label %141

141:                                              ; preds = %136, %138
  %142 = phi ptr [ %140, %138 ], [ %109, %136 ]
  %143 = phi i8 [ %108, %138 ], [ 1, %136 ]
  %144 = phi ptr [ %139, %138 ], [ null, %136 ]
  %145 = icmp eq i8 %143, 0
  br i1 %145, label %106, label %146, !llvm.loop !207

146:                                              ; preds = %141, %99, %70
  ret ptr %35
}

declare ptr @gimple_build_assign_with_ops_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @vect_finish_stmt_generation(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @vect_create_destination_var(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !47 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  br label %7

7:                                                ; preds = %2, %4
  %8 = phi ptr [ %6, %4 ], [ %1, %2 ]
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2668, ptr noundef nonnull @.str.10) #20
  br label %13

13:                                               ; preds = %7, %12
  %14 = select i1 %3, i32 2, i32 0
  %15 = tail call ptr @get_name(ptr noundef nonnull %0) #20
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.51, ptr %15
  %18 = tail call ptr @vect_get_new_vect_var(ptr noundef %8, i32 noundef %14, ptr noundef nonnull %17)
  %19 = tail call zeroext i8 @add_referenced_var(ptr noundef %18) #20
  ret ptr %18
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_strided_store_supported(ptr noundef %0) local_unnamed_addr #9 !prof !47 {
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
  %23 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %24 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 24, i64 1, ptr %23)
  br label %40

25:                                               ; preds = %12
  %26 = sext i32 %13 to i64
  %27 = getelementptr inbounds %struct.optab_d, ptr %14, i64 0, i32 4, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !124
  %29 = icmp eq i32 %28, 2956
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.optab_d, ptr %15, i64 0, i32 4, i64 %26
  %32 = load i32, ptr %31, align 4, !tbaa !124
  %33 = icmp eq i32 %32, 2956
  br i1 %33, label %34, label %40

34:                                               ; preds = %30, %25
  %35 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %39 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 38, i64 1, ptr %38)
  br label %40

40:                                               ; preds = %30, %34, %37, %19, %22
  %41 = phi i8 [ 0, %22 ], [ 0, %19 ], [ 0, %37 ], [ 0, %34 ], [ 1, %30 ]
  ret i8 %41
}

declare ptr @optab_for_tree_code(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_permute_store_chain(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #9 !prof !47 {
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %9, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ]
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = add i32 %7, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %18, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = tail call zeroext i8 @vect_strided_store_supported(ptr noundef %24), !range !92
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %163, label %27

27:                                               ; preds = %17
  %28 = icmp eq ptr %0, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 8, !tbaa !208
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = zext i32 %32 to i64
  %36 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %32) #20
  store i32 %32, ptr %36, align 8, !tbaa !210
  %37 = getelementptr inbounds %struct.VEC_tree_base, ptr %36, i64 0, i32 2
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %39 = shl nuw nsw i64 %35, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %37, ptr nonnull align 8 %38, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %31, %34
  %41 = phi ptr [ %36, %34 ], [ null, %31 ]
  store ptr %41, ptr %4, align 8, !tbaa !48
  %42 = zext i32 %1 to i64
  %43 = tail call i32 @exact_log2(i64 noundef %42) #20
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %163

45:                                               ; preds = %40
  %46 = lshr i32 %1, 1
  %47 = icmp ult i32 %1, 2
  %48 = zext nneg i32 %46 to i64
  %49 = zext nneg i32 %46 to i64
  br label %50

50:                                               ; preds = %45, %158
  %51 = phi ptr [ %0, %45 ], [ %159, %158 ]
  %52 = phi i32 [ 0, %45 ], [ %160, %158 ]
  br i1 %47, label %144, label %53

53:                                               ; preds = %50, %138
  %54 = phi i64 [ %142, %138 ], [ 0, %50 ]
  %55 = getelementptr inbounds %struct.VEC_tree_base, ptr %51, i64 0, i32 2, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !48
  %57 = add nuw nsw i64 %54, %48
  %58 = getelementptr inbounds %struct.VEC_tree_base, ptr %51, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = tail call ptr @create_tmp_var(ptr noundef %24, ptr noundef nonnull @.str.54) #20
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = or i64 %62, 134217728
  store i64 %63, ptr %61, align 8
  %64 = tail call zeroext i8 @add_referenced_var(ptr noundef %60) #20
  %65 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 184, ptr noundef %60, ptr noundef %56, ptr noundef %59) #20
  %66 = load ptr, ptr @cfun, align 8, !tbaa !48
  %67 = tail call ptr @make_ssa_name_fn(ptr noundef %66, ptr noundef %60, ptr noundef %65) #20
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -9
  br i1 %71, label %76, label %72

72:                                               ; preds = %53
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !59
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, ptr %65, align 8
  %79 = and i32 %78, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !63
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !67
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %88

88:                                               ; preds = %87, %77
  %89 = getelementptr inbounds i8, ptr %65, i64 %85
  store ptr %67, ptr %89, align 8, !tbaa !48
  %90 = icmp eq ptr %67, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i64, ptr %67, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 141
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 2
  store ptr %65, ptr %96, align 8, !tbaa !59
  br label %97

97:                                               ; preds = %88, %91, %95
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef nonnull %65, ptr noundef %3) #20
  %98 = load ptr, ptr %4, align 8, !tbaa !48
  %99 = shl nuw i64 %54, 1
  %100 = getelementptr inbounds %struct.VEC_tree_base, ptr %98, i64 0, i32 2, i64 %99
  store ptr %67, ptr %100, align 8, !tbaa !48
  %101 = tail call ptr @create_tmp_var(ptr noundef %24, ptr noundef nonnull @.str.55) #20
  %102 = getelementptr inbounds %struct.tree_decl_common, ptr %101, i64 0, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = or i64 %103, 134217728
  store i64 %104, ptr %102, align 8
  %105 = tail call zeroext i8 @add_referenced_var(ptr noundef %101) #20
  %106 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 183, ptr noundef %101, ptr noundef %56, ptr noundef %59) #20
  %107 = load ptr, ptr @cfun, align 8, !tbaa !48
  %108 = tail call ptr @make_ssa_name_fn(ptr noundef %107, ptr noundef %101, ptr noundef %106) #20
  %109 = load i32, ptr %106, align 8
  %110 = and i32 %109, 255
  %111 = add nsw i32 %110, -10
  %112 = icmp ult i32 %111, -9
  br i1 %112, label %117, label %113

113:                                              ; preds = %97
  %114 = getelementptr inbounds %struct.gimple_statement_base, ptr %106, i64 0, i32 3
  %115 = load i32, ptr %114, align 4, !tbaa !59
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113, %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %118

118:                                              ; preds = %117, %113
  %119 = load i32, ptr %106, align 8
  %120 = and i32 %119, 255
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !63
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !67
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %129

129:                                              ; preds = %128, %118
  %130 = getelementptr inbounds i8, ptr %106, i64 %126
  store ptr %108, ptr %130, align 8, !tbaa !48
  %131 = icmp eq ptr %108, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %129
  %133 = load i64, ptr %108, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 141
  br i1 %135, label %136, label %138

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_ssa_name, ptr %108, i64 0, i32 2
  store ptr %106, ptr %137, align 8, !tbaa !59
  br label %138

138:                                              ; preds = %129, %132, %136
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef nonnull %106, ptr noundef %3) #20
  %139 = load ptr, ptr %4, align 8, !tbaa !48
  %140 = or disjoint i64 %99, 1
  %141 = getelementptr inbounds %struct.VEC_tree_base, ptr %139, i64 0, i32 2, i64 %140
  store ptr %108, ptr %141, align 8, !tbaa !48
  %142 = add nuw nsw i64 %54, 1
  %143 = icmp eq i64 %142, %49
  br i1 %143, label %144, label %53, !llvm.loop !212

144:                                              ; preds = %138, %50
  %145 = load ptr, ptr %4, align 8, !tbaa !48
  %146 = icmp eq ptr %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i32, ptr %145, align 8, !tbaa !208
  br label %149

149:                                              ; preds = %147, %144
  %150 = phi i32 [ %148, %147 ], [ 0, %144 ]
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %158, label %152

152:                                              ; preds = %149
  %153 = zext i32 %150 to i64
  %154 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %150) #20
  store i32 %150, ptr %154, align 8, !tbaa !210
  %155 = getelementptr inbounds %struct.VEC_tree_base, ptr %154, i64 0, i32 2
  %156 = getelementptr inbounds %struct.VEC_tree_base, ptr %145, i64 0, i32 2
  %157 = shl nuw nsw i64 %153, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %155, ptr nonnull align 8 %156, i64 %157, i1 false)
  br label %158

158:                                              ; preds = %149, %152
  %159 = phi ptr [ %154, %152 ], [ null, %149 ]
  %160 = add nuw nsw i32 %52, 1
  %161 = tail call i32 @exact_log2(i64 noundef %42) #20
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %50, label %163, !llvm.loop !213

163:                                              ; preds = %158, %40, %17
  %164 = phi i8 [ 0, %17 ], [ 1, %40 ], [ 1, %158 ]
  ret i8 %164
}

declare i32 @exact_log2(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef ptr @vect_setup_realignment(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, i32 noundef %3, ptr noundef %4, ptr noundef writeonly %5) local_unnamed_addr #9 !prof !47 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  store ptr %4, ptr %7, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !59
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %17, %14
  %20 = phi i32 [ %18, %17 ], [ 0, %14 ]
  %21 = icmp ugt i32 %12, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @stmt_vec_info_vec, align 8
  %25 = add i32 %12, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %24, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  br label %29

29:                                               ; preds = %6, %23
  %30 = phi ptr [ %28, %23 ], [ null, %6 ]
  %31 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !118
  %33 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = load i32, ptr %0, align 8
  %37 = and i32 %36, 255
  %38 = add nsw i32 %37, -10
  %39 = icmp ult i32 %38, -9
  br i1 %39, label %52, label %40

40:                                               ; preds = %29
  %41 = zext nneg i32 %37 to i64
  %42 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !63
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !67
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %49

49:                                               ; preds = %48, %40
  %50 = getelementptr inbounds i8, ptr %0, i64 %46
  %51 = load ptr, ptr %50, align 8, !tbaa !48
  br label %52

52:                                               ; preds = %29, %49
  %53 = phi ptr [ %51, %49 ], [ null, %29 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #20
  store ptr null, ptr %9, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #20
  %54 = getelementptr inbounds %struct.loop, ptr %35, i64 0, i32 8
  %55 = load ptr, ptr %54, align 8, !tbaa !121
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !59
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !122
  %62 = icmp eq ptr %55, %61
  %63 = zext i1 %62 to i8
  br label %64

64:                                               ; preds = %52, %57
  %65 = phi i8 [ 0, %52 ], [ %63, %57 ]
  %66 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !59
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !122
  %70 = icmp eq i32 %3, 2
  %71 = icmp eq i32 %3, 3
  %72 = and i32 %3, -2
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %75, label %74

74:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2933, ptr noundef nonnull @.str.10) #20
  br label %75

75:                                               ; preds = %64, %74
  %76 = icmp eq ptr %4, null
  %77 = or i1 %70, %76
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 2971, ptr noundef nonnull @.str.10) #20
  br label %79

79:                                               ; preds = %75, %78
  %80 = icmp eq i8 %65, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct._stmt_vec_info, ptr %30, i64 0, i32 11
  %83 = load ptr, ptr %82, align 8, !tbaa !169
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !48
  %85 = tail call i32 @tree_int_cst_compare(ptr noundef %83, ptr noundef %84) #20
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %81
  %88 = load ptr, ptr %54, align 8, !tbaa !121
  br label %89

89:                                               ; preds = %79, %87, %81
  %90 = phi ptr [ %88, %87 ], [ %35, %81 ], [ %35, %79 ]
  %91 = icmp eq ptr %5, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %89
  store ptr %90, ptr %5, align 8, !tbaa !48
  br label %93

93:                                               ; preds = %92, %89
  br i1 %71, label %94, label %154

94:                                               ; preds = %93
  br i1 %76, label %96, label %95

95:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3007, ptr noundef nonnull @.str.10) #20
  br label %96

96:                                               ; preds = %94, %95
  %97 = tail call ptr @loop_preheader_edge(ptr noundef %90) #20
  %98 = tail call ptr @vect_create_destination_var(ptr noundef %53, ptr noundef %32)
  %99 = call ptr @vect_create_data_ref_ptr(ptr noundef nonnull %0, ptr noundef %90, ptr noundef null, ptr noundef nonnull %7, ptr noundef nonnull %8, i8 noundef zeroext 1, ptr noundef nonnull %10)
  %100 = call ptr @build1_stat(i32 noundef 48, ptr noundef %32, ptr noundef %99) #20
  %101 = call ptr @gimple_build_assign_stat(ptr noundef %98, ptr noundef %100) #20
  %102 = load ptr, ptr @cfun, align 8, !tbaa !48
  %103 = call ptr @make_ssa_name_fn(ptr noundef %102, ptr noundef %98, ptr noundef %101) #20
  %104 = load i32, ptr %101, align 8
  %105 = and i32 %104, 255
  %106 = add nsw i32 %105, -10
  %107 = icmp ult i32 %106, -9
  br i1 %107, label %112, label %108

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.gimple_statement_base, ptr %101, i64 0, i32 3
  %110 = load i32, ptr %109, align 4, !tbaa !59
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %108, %96
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %113

113:                                              ; preds = %112, %108
  %114 = load i32, ptr %101, align 8
  %115 = and i32 %114, 255
  %116 = zext nneg i32 %115 to i64
  %117 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !63
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !67
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %124

124:                                              ; preds = %123, %113
  %125 = getelementptr inbounds i8, ptr %101, i64 %121
  store ptr %103, ptr %125, align 8, !tbaa !48
  %126 = icmp eq ptr %103, null
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i64, ptr %103, align 8
  %129 = and i64 %128, 65535
  %130 = icmp eq i64 %129, 141
  br i1 %130, label %131, label %133

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.tree_ssa_name, ptr %103, i64 0, i32 2
  store ptr %101, ptr %132, align 8, !tbaa !59
  br label %133

133:                                              ; preds = %124, %127, %131
  call void @mark_symbols_for_renaming(ptr noundef nonnull %101) #20
  %134 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %97, ptr noundef nonnull %101) #20
  %135 = icmp eq ptr %134, null
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3018, ptr noundef nonnull @.str.10) #20
  br label %137

137:                                              ; preds = %133, %136
  %138 = load i32, ptr %101, align 8
  %139 = and i32 %138, 255
  %140 = add nsw i32 %139, -10
  %141 = icmp ult i32 %140, -9
  br i1 %141, label %154, label %142

142:                                              ; preds = %137
  %143 = zext nneg i32 %139 to i64
  %144 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %143
  %145 = load i32, ptr %144, align 4, !tbaa !63
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %146
  %148 = load i64, ptr %147, align 8, !tbaa !67
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %151

151:                                              ; preds = %150, %142
  %152 = getelementptr inbounds i8, ptr %101, i64 %148
  %153 = load ptr, ptr %152, align 8, !tbaa !48
  br label %154

154:                                              ; preds = %151, %137, %93
  %155 = phi ptr [ null, %93 ], [ %153, %151 ], [ null, %137 ]
  %156 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !126
  %157 = icmp eq ptr %156, null
  br i1 %157, label %259, label %158

158:                                              ; preds = %154
  br i1 %76, label %162, label %159

159:                                              ; preds = %158
  %160 = load ptr, ptr %7, align 8, !tbaa !48
  %161 = icmp eq ptr %160, null
  br i1 %161, label %168, label %170

162:                                              ; preds = %158
  %163 = call ptr @vect_create_addr_base_for_vector_ref(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef null, ptr noundef %35)
  store ptr %163, ptr %7, align 8, !tbaa !48
  %164 = call ptr @loop_preheader_edge(ptr noundef %35) #20
  %165 = load ptr, ptr %9, align 8, !tbaa !48
  %166 = call ptr @gsi_insert_seq_on_edge_immediate(ptr noundef %164, ptr noundef %165) #20
  %167 = icmp eq ptr %166, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %162, %159
  %169 = phi i32 [ 3032, %159 ], [ 3040, %162 ]
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef %169, ptr noundef nonnull @.str.10) #20
  br label %170

170:                                              ; preds = %168, %162, %159
  %171 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 2), align 8, !tbaa !126
  %172 = call ptr %171() #20
  %173 = load ptr, ptr %7, align 8, !tbaa !48
  %174 = call ptr (ptr, i32, ...) @gimple_build_call(ptr noundef %172, i32 noundef 1, ptr noundef %173) #20
  %175 = load i32, ptr %174, align 8
  %176 = and i32 %175, 255
  %177 = add nsw i32 %176, -1
  %178 = icmp ult i32 %177, 9
  call void @llvm.assume(i1 %178)
  %179 = zext nneg i32 %176 to i64
  %180 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %179
  %181 = load i32, ptr %180, align 4, !tbaa !63
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %182
  %184 = load i64, ptr %183, align 8, !tbaa !67
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %170
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %187

187:                                              ; preds = %170, %186
  %188 = getelementptr inbounds i8, ptr %174, i64 %184
  %189 = getelementptr inbounds ptr, ptr %188, i64 1
  %190 = load ptr, ptr %189, align 8, !tbaa !48
  %191 = getelementptr inbounds %struct.tree_common, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !59
  %193 = getelementptr inbounds %struct.tree_common, ptr %192, i64 0, i32 2
  %194 = load ptr, ptr %193, align 8, !tbaa !59
  %195 = getelementptr inbounds %struct.tree_common, ptr %194, i64 0, i32 2
  %196 = load ptr, ptr %195, align 8, !tbaa !59
  %197 = call ptr @vect_create_destination_var(ptr noundef %53, ptr noundef %196)
  %198 = load ptr, ptr @cfun, align 8, !tbaa !48
  %199 = call ptr @make_ssa_name_fn(ptr noundef %198, ptr noundef %197, ptr noundef nonnull %174) #20
  %200 = load i32, ptr %174, align 8
  %201 = and i32 %200, 255
  %202 = add nsw i32 %201, -10
  %203 = icmp ult i32 %202, -9
  br i1 %203, label %208, label %204

204:                                              ; preds = %187
  %205 = getelementptr inbounds %struct.gimple_statement_base, ptr %174, i64 0, i32 3
  %206 = load i32, ptr %205, align 4, !tbaa !59
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204, %187
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %209

209:                                              ; preds = %208, %204
  %210 = load i32, ptr %174, align 8
  %211 = and i32 %210, 255
  %212 = zext nneg i32 %211 to i64
  %213 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !63
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %215
  %217 = load i64, ptr %216, align 8, !tbaa !67
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %220

220:                                              ; preds = %219, %209
  %221 = getelementptr inbounds i8, ptr %174, i64 %217
  store ptr %199, ptr %221, align 8, !tbaa !48
  %222 = icmp eq ptr %199, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %220
  %224 = load i64, ptr %199, align 8
  %225 = and i64 %224, 65535
  %226 = icmp eq i64 %225, 141
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.tree_ssa_name, ptr %199, i64 0, i32 2
  store ptr %174, ptr %228, align 8, !tbaa !59
  br label %229

229:                                              ; preds = %220, %223, %227
  br i1 %76, label %231, label %230

230:                                              ; preds = %229
  call void @gsi_insert_before(ptr noundef %1, ptr noundef nonnull %174, i32 noundef 1) #20
  br label %236

231:                                              ; preds = %229
  %232 = call ptr @loop_preheader_edge(ptr noundef %35) #20
  %233 = call ptr @gsi_insert_on_edge_immediate(ptr noundef %232, ptr noundef nonnull %174) #20
  %234 = icmp eq ptr %233, null
  br i1 %234, label %236, label %235

235:                                              ; preds = %231
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3058, ptr noundef nonnull @.str.10) #20
  br label %236

236:                                              ; preds = %235, %231, %230
  %237 = load i32, ptr %174, align 8
  %238 = and i32 %237, 255
  %239 = add nsw i32 %238, -10
  %240 = icmp ult i32 %239, -9
  br i1 %240, label %253, label %241

241:                                              ; preds = %236
  %242 = zext nneg i32 %238 to i64
  %243 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %242
  %244 = load i32, ptr %243, align 4, !tbaa !63
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %245
  %247 = load i64, ptr %246, align 8, !tbaa !67
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %241
  call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %250

250:                                              ; preds = %249, %241
  %251 = getelementptr inbounds i8, ptr %174, i64 %247
  %252 = load ptr, ptr %251, align 8, !tbaa !48
  br label %253

253:                                              ; preds = %236, %250
  %254 = phi ptr [ %252, %250 ], [ null, %236 ]
  store ptr %254, ptr %2, align 8, !tbaa !48
  %255 = load i64, ptr %172, align 8
  %256 = and i64 %255, 1048576
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %253
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3068, ptr noundef nonnull @.str.10) #20
  br label %259

259:                                              ; preds = %258, %253, %154
  br i1 %70, label %273, label %260

260:                                              ; preds = %259
  br i1 %76, label %262, label %261

261:                                              ; preds = %260
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3074, ptr noundef nonnull @.str.10) #20
  br label %262

262:                                              ; preds = %260, %261
  br i1 %71, label %264, label %263

263:                                              ; preds = %262
  call void @fancy_abort(ptr noundef nonnull @.str.9, i32 noundef 3075, ptr noundef nonnull @.str.10) #20
  br label %264

264:                                              ; preds = %262, %263
  %265 = call ptr @loop_preheader_edge(ptr noundef %69) #20
  %266 = call ptr @vect_create_destination_var(ptr noundef %53, ptr noundef %32)
  %267 = load ptr, ptr @cfun, align 8, !tbaa !48
  %268 = call ptr @make_ssa_name_fn(ptr noundef %267, ptr noundef %266, ptr noundef null) #20
  %269 = getelementptr inbounds %struct.loop, ptr %69, i64 0, i32 2
  %270 = load ptr, ptr %269, align 8, !tbaa !214
  %271 = call ptr @create_phi_node(ptr noundef %268, ptr noundef %270) #20
  %272 = getelementptr inbounds %struct.tree_ssa_name, ptr %268, i64 0, i32 2
  store ptr %271, ptr %272, align 8, !tbaa !59
  call void @add_phi_arg(ptr noundef %271, ptr noundef %155, ptr noundef %265, i32 noundef 0) #20
  br label %273

273:                                              ; preds = %259, %264
  %274 = phi ptr [ %268, %264 ], [ null, %259 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #20
  ret ptr %274
}

declare void @mark_symbols_for_renaming(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_build_call(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_strided_load_supported(ptr noundef %0) local_unnamed_addr #9 !prof !47 {
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
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %21 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 23, i64 1, ptr %20)
  br label %52

22:                                               ; preds = %12
  %23 = sext i32 %13 to i64
  %24 = getelementptr inbounds %struct.optab_d, ptr %14, i64 0, i32 4, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !124
  %26 = icmp eq i32 %25, 2956
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %32 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 37, i64 1, ptr %31)
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
  %40 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %41 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 22, i64 1, ptr %40)
  br label %52

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.optab_d, ptr %34, i64 0, i32 4, i64 %23
  %44 = load i32, ptr %43, align 4, !tbaa !124
  %45 = icmp eq i32 %44, 2956
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 9) #20
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %51 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 36, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %42, %46, %49, %36, %39, %27, %30, %16, %19
  %53 = phi i8 [ 0, %19 ], [ 0, %16 ], [ 0, %30 ], [ 0, %27 ], [ 0, %39 ], [ 0, %36 ], [ 0, %49 ], [ 0, %46 ], [ 1, %42 ]
  ret i8 %53
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_permute_load_chain(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #9 !prof !47 {
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %9, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ 0, %5 ]
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = add i32 %7, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %18, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !118
  %25 = tail call zeroext i8 @vect_strided_load_supported(ptr noundef %24), !range !92
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %165, label %27

27:                                               ; preds = %17
  %28 = icmp eq ptr %0, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %0, align 8, !tbaa !208
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %30, %29 ], [ 0, %27 ]
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %31
  %35 = zext i32 %32 to i64
  %36 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %32) #20
  store i32 %32, ptr %36, align 8, !tbaa !210
  %37 = getelementptr inbounds %struct.VEC_tree_base, ptr %36, i64 0, i32 2
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2
  %39 = shl nuw nsw i64 %35, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %37, ptr nonnull align 8 %38, i64 %39, i1 false)
  br label %40

40:                                               ; preds = %31, %34
  %41 = phi ptr [ %36, %34 ], [ null, %31 ]
  store ptr %41, ptr %4, align 8, !tbaa !48
  %42 = zext i32 %1 to i64
  %43 = tail call i32 @exact_log2(i64 noundef %42) #20
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %165

45:                                               ; preds = %40
  %46 = icmp eq i32 %1, 0
  %47 = lshr i32 %1, 1
  br label %48

48:                                               ; preds = %45, %160
  %49 = phi i32 [ 0, %45 ], [ %162, %160 ]
  %50 = phi ptr [ %0, %45 ], [ %161, %160 ]
  br i1 %46, label %146, label %51

51:                                               ; preds = %48, %139
  %52 = phi i32 [ %144, %139 ], [ 0, %48 ]
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.VEC_tree_base, ptr %50, i64 0, i32 2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !48
  %56 = or disjoint i32 %52, 1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_tree_base, ptr %50, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = tail call ptr @create_tmp_var(ptr noundef %24, ptr noundef nonnull @.str.60) #20
  %61 = getelementptr inbounds %struct.tree_decl_common, ptr %60, i64 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = or i64 %62, 134217728
  store i64 %63, ptr %61, align 8
  %64 = tail call zeroext i8 @add_referenced_var(ptr noundef %60) #20
  %65 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 181, ptr noundef %60, ptr noundef %55, ptr noundef %59) #20
  %66 = load ptr, ptr @cfun, align 8, !tbaa !48
  %67 = tail call ptr @make_ssa_name_fn(ptr noundef %66, ptr noundef %60, ptr noundef %65) #20
  %68 = load i32, ptr %65, align 8
  %69 = and i32 %68, 255
  %70 = add nsw i32 %69, -10
  %71 = icmp ult i32 %70, -9
  br i1 %71, label %76, label %72

72:                                               ; preds = %51
  %73 = getelementptr inbounds %struct.gimple_statement_base, ptr %65, i64 0, i32 3
  %74 = load i32, ptr %73, align 4, !tbaa !59
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, ptr %65, align 8
  %79 = and i32 %78, 255
  %80 = zext nneg i32 %79 to i64
  %81 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !63
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !67
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %88

88:                                               ; preds = %87, %77
  %89 = getelementptr inbounds i8, ptr %65, i64 %85
  store ptr %67, ptr %89, align 8, !tbaa !48
  %90 = icmp eq ptr %67, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i64, ptr %67, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 141
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct.tree_ssa_name, ptr %67, i64 0, i32 2
  store ptr %65, ptr %96, align 8, !tbaa !59
  br label %97

97:                                               ; preds = %88, %91, %95
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef nonnull %65, ptr noundef %3) #20
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %65) #20
  %98 = load ptr, ptr %4, align 8, !tbaa !48
  %99 = lshr exact i32 %52, 1
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds %struct.VEC_tree_base, ptr %98, i64 0, i32 2, i64 %100
  store ptr %67, ptr %101, align 8, !tbaa !48
  %102 = tail call ptr @create_tmp_var(ptr noundef %24, ptr noundef nonnull @.str.61) #20
  %103 = getelementptr inbounds %struct.tree_decl_common, ptr %102, i64 0, i32 2
  %104 = load i64, ptr %103, align 8
  %105 = or i64 %104, 134217728
  store i64 %105, ptr %103, align 8
  %106 = tail call zeroext i8 @add_referenced_var(ptr noundef %102) #20
  %107 = tail call ptr @gimple_build_assign_with_ops_stat(i32 noundef 182, ptr noundef %102, ptr noundef %55, ptr noundef %59) #20
  %108 = load ptr, ptr @cfun, align 8, !tbaa !48
  %109 = tail call ptr @make_ssa_name_fn(ptr noundef %108, ptr noundef %102, ptr noundef %107) #20
  %110 = load i32, ptr %107, align 8
  %111 = and i32 %110, 255
  %112 = add nsw i32 %111, -10
  %113 = icmp ult i32 %112, -9
  br i1 %113, label %118, label %114

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.gimple_statement_base, ptr %107, i64 0, i32 3
  %116 = load i32, ptr %115, align 4, !tbaa !59
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114, %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1665, ptr noundef nonnull @.str.10) #20
  br label %119

119:                                              ; preds = %118, %114
  %120 = load i32, ptr %107, align 8
  %121 = and i32 %120, 255
  %122 = zext nneg i32 %121 to i64
  %123 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %122
  %124 = load i32, ptr %123, align 4, !tbaa !63
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !67
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %119
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.10) #20
  br label %130

130:                                              ; preds = %129, %119
  %131 = getelementptr inbounds i8, ptr %107, i64 %127
  store ptr %109, ptr %131, align 8, !tbaa !48
  %132 = icmp eq ptr %109, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %130
  %134 = load i64, ptr %109, align 8
  %135 = and i64 %134, 65535
  %136 = icmp eq i64 %135, 141
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.tree_ssa_name, ptr %109, i64 0, i32 2
  store ptr %107, ptr %138, align 8, !tbaa !59
  br label %139

139:                                              ; preds = %130, %133, %137
  tail call void @vect_finish_stmt_generation(ptr noundef %2, ptr noundef nonnull %107, ptr noundef %3) #20
  tail call void @mark_symbols_for_renaming(ptr noundef nonnull %107) #20
  %140 = load ptr, ptr %4, align 8, !tbaa !48
  %141 = add nuw i32 %99, %47
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.VEC_tree_base, ptr %140, i64 0, i32 2, i64 %142
  store ptr %109, ptr %143, align 8, !tbaa !48
  %144 = add i32 %52, 2
  %145 = icmp ult i32 %144, %1
  br i1 %145, label %51, label %146, !llvm.loop !215

146:                                              ; preds = %139, %48
  %147 = load ptr, ptr %4, align 8, !tbaa !48
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149

149:                                              ; preds = %146
  %150 = load i32, ptr %147, align 8, !tbaa !208
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32 [ %150, %149 ], [ 0, %146 ]
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %151
  %155 = zext i32 %152 to i64
  %156 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %152) #20
  store i32 %152, ptr %156, align 8, !tbaa !210
  %157 = getelementptr inbounds %struct.VEC_tree_base, ptr %156, i64 0, i32 2
  %158 = getelementptr inbounds %struct.VEC_tree_base, ptr %147, i64 0, i32 2
  %159 = shl nuw nsw i64 %155, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %157, ptr nonnull align 8 %158, i64 %159, i1 false)
  br label %160

160:                                              ; preds = %151, %154
  %161 = phi ptr [ %156, %154 ], [ null, %151 ]
  %162 = add nuw nsw i32 %49, 1
  %163 = tail call i32 @exact_log2(i64 noundef %42) #20
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %48, label %165, !llvm.loop !216

165:                                              ; preds = %160, %40, %17
  %166 = phi i8 [ 0, %17 ], [ 1, %40 ], [ 1, %160 ]
  ret i8 %166
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @vect_transform_strided_load(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !47 {
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !59
  %8 = icmp ne i32 %7, 0
  tail call void @llvm.assume(i1 %8)
  %9 = load ptr, ptr @stmt_vec_info_vec, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = load i32, ptr %9, align 8, !tbaa !68
  br label %13

13:                                               ; preds = %11, %4
  %14 = phi i32 [ %12, %11 ], [ 0, %4 ]
  %15 = icmp ugt i32 %7, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %17

17:                                               ; preds = %16, %13
  %18 = load ptr, ptr @stmt_vec_info_vec, align 8
  %19 = add i32 %7, -1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %18, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !48
  %23 = getelementptr inbounds %struct._stmt_vec_info, ptr %22, i64 0, i32 17
  %24 = load ptr, ptr %23, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #20
  store ptr null, ptr %5, align 8, !tbaa !48
  %25 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %2) #20
  store ptr %25, ptr %5, align 8, !tbaa !48
  %26 = call zeroext i8 @vect_permute_load_chain(ptr noundef %1, i32 noundef %2, ptr noundef %0, ptr noundef %3, ptr noundef nonnull %5), !range !92
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %258, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %5, align 8
  %30 = icmp eq ptr %29, null
  br label %31

31:                                               ; preds = %28, %251
  %32 = phi ptr [ %252, %251 ], [ %24, %28 ]
  %33 = phi i32 [ %254, %251 ], [ 0, %28 ]
  %34 = phi i32 [ %253, %251 ], [ 1, %28 ]
  br i1 %30, label %42, label %35

35:                                               ; preds = %31
  %36 = load i32, ptr %29, align 8, !tbaa !208
  %37 = icmp ugt i32 %36, %33
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = zext i32 %33 to i64
  %40 = getelementptr inbounds %struct.VEC_tree_base, ptr %29, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  br label %42

42:                                               ; preds = %31, %35, %38
  %43 = phi ptr [ %41, %38 ], [ null, %35 ], [ null, %31 ]
  %44 = phi i1 [ true, %38 ], [ false, %35 ], [ false, %31 ]
  %45 = icmp ne ptr %32, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %255

47:                                               ; preds = %42
  %48 = icmp eq ptr %32, %24
  br i1 %48, label %72, label %49

49:                                               ; preds = %47
  %50 = getelementptr inbounds %struct.gimple_statement_base, ptr %32, i64 0, i32 1
  %51 = load i32, ptr %50, align 4, !tbaa !59
  %52 = icmp ne i32 %51, 0
  tail call void @llvm.assume(i1 %52)
  %53 = load ptr, ptr @stmt_vec_info_vec, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32, ptr %53, align 8, !tbaa !68
  br label %57

57:                                               ; preds = %55, %49
  %58 = phi i32 [ %56, %55 ], [ 0, %49 ]
  %59 = icmp ugt i32 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %61

61:                                               ; preds = %60, %57
  %62 = load ptr, ptr @stmt_vec_info_vec, align 8
  %63 = add i32 %51, -1
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %62, i64 0, i32 2, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !48
  %67 = getelementptr inbounds %struct._stmt_vec_info, ptr %66, i64 0, i32 21
  %68 = load i32, ptr %67, align 8, !tbaa !173
  %69 = icmp ult i32 %34, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = add nuw i32 %34, 1
  br label %251

72:                                               ; preds = %61, %47
  %73 = getelementptr inbounds %struct.tree_ssa_name, ptr %43, i64 0, i32 2
  br label %74

74:                                               ; preds = %72, %242
  %75 = phi ptr [ %32, %72 ], [ %229, %242 ]
  %76 = load ptr, ptr %73, align 8, !tbaa !59
  %77 = getelementptr inbounds %struct.gimple_statement_base, ptr %75, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !59
  %79 = icmp ne i32 %78, 0
  tail call void @llvm.assume(i1 %79)
  %80 = load ptr, ptr @stmt_vec_info_vec, align 8
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = load i32, ptr %80, align 8, !tbaa !68
  br label %84

84:                                               ; preds = %82, %74
  %85 = phi i32 [ %83, %82 ], [ 0, %74 ]
  %86 = icmp ugt i32 %78, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %88

88:                                               ; preds = %87, %84
  %89 = load ptr, ptr @stmt_vec_info_vec, align 8
  %90 = add i32 %78, -1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %89, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !48
  %94 = getelementptr inbounds %struct._stmt_vec_info, ptr %93, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !217
  %96 = icmp eq ptr %95, null
  %97 = load i32, ptr %77, align 4, !tbaa !59
  %98 = icmp ne i32 %97, 0
  tail call void @llvm.assume(i1 %98)
  %99 = icmp eq ptr %89, null
  br i1 %96, label %100, label %114

100:                                              ; preds = %88
  br i1 %99, label %103, label %101

101:                                              ; preds = %100
  %102 = load i32, ptr %89, align 8, !tbaa !68
  br label %103

103:                                              ; preds = %101, %100
  %104 = phi i32 [ %102, %101 ], [ 0, %100 ]
  %105 = icmp ugt i32 %97, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %107

107:                                              ; preds = %106, %103
  %108 = load ptr, ptr @stmt_vec_info_vec, align 8
  %109 = add i32 %97, -1
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %108, i64 0, i32 2, i64 %110
  %112 = load ptr, ptr %111, align 8, !tbaa !48
  %113 = getelementptr inbounds %struct._stmt_vec_info, ptr %112, i64 0, i32 6
  br label %209

114:                                              ; preds = %88
  br i1 %99, label %117, label %115

115:                                              ; preds = %114
  %116 = load i32, ptr %89, align 8, !tbaa !68
  br label %117

117:                                              ; preds = %115, %114
  %118 = phi i32 [ %116, %115 ], [ 0, %114 ]
  %119 = icmp ugt i32 %97, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %121

121:                                              ; preds = %120, %117
  %122 = load ptr, ptr @stmt_vec_info_vec, align 8
  %123 = add i32 %97, -1
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %122, i64 0, i32 2, i64 %124
  %126 = load ptr, ptr %125, align 8, !tbaa !48
  %127 = getelementptr inbounds %struct._stmt_vec_info, ptr %126, i64 0, i32 22
  %128 = load ptr, ptr %127, align 8, !tbaa !171
  %129 = icmp eq ptr %128, null
  br i1 %129, label %130, label %211

130:                                              ; preds = %121
  %131 = load i32, ptr %77, align 4, !tbaa !59
  %132 = icmp ne i32 %131, 0
  tail call void @llvm.assume(i1 %132)
  %133 = icmp eq ptr %122, null
  br i1 %133, label %136, label %134

134:                                              ; preds = %130
  %135 = load i32, ptr %122, align 8, !tbaa !68
  br label %136

136:                                              ; preds = %134, %130
  %137 = phi i32 [ %135, %134 ], [ 0, %130 ]
  %138 = icmp ugt i32 %131, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %136
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %140

140:                                              ; preds = %139, %136
  %141 = load ptr, ptr @stmt_vec_info_vec, align 8
  %142 = add i32 %131, -1
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %141, i64 0, i32 2, i64 %143
  %145 = load ptr, ptr %144, align 8, !tbaa !48
  %146 = getelementptr inbounds %struct._stmt_vec_info, ptr %145, i64 0, i32 6
  %147 = load ptr, ptr %146, align 8, !tbaa !217
  %148 = getelementptr inbounds %struct.gimple_statement_base, ptr %147, i64 0, i32 1
  %149 = load i32, ptr %148, align 4, !tbaa !59
  %150 = icmp ne i32 %149, 0
  tail call void @llvm.assume(i1 %150)
  %151 = icmp eq ptr %141, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %140
  %153 = load i32, ptr %141, align 8, !tbaa !68
  br label %154

154:                                              ; preds = %152, %140
  %155 = phi i32 [ %153, %152 ], [ 0, %140 ]
  %156 = icmp ugt i32 %149, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %158

158:                                              ; preds = %157, %154
  %159 = load ptr, ptr @stmt_vec_info_vec, align 8
  %160 = add i32 %149, -1
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %159, i64 0, i32 2, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = getelementptr inbounds %struct._stmt_vec_info, ptr %163, i64 0, i32 14
  %165 = load ptr, ptr %164, align 8, !tbaa !218
  %166 = icmp eq ptr %165, null
  br i1 %166, label %189, label %167

167:                                              ; preds = %158, %180
  %168 = phi ptr [ %187, %180 ], [ %165, %158 ]
  %169 = getelementptr inbounds %struct.gimple_statement_base, ptr %168, i64 0, i32 1
  %170 = load i32, ptr %169, align 4, !tbaa !59
  %171 = icmp ne i32 %170, 0
  tail call void @llvm.assume(i1 %171)
  %172 = load ptr, ptr @stmt_vec_info_vec, align 8
  %173 = icmp eq ptr %172, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %167
  %175 = load i32, ptr %172, align 8, !tbaa !68
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi i32 [ %175, %174 ], [ 0, %167 ]
  %178 = icmp ugt i32 %170, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %180

180:                                              ; preds = %179, %176
  %181 = load ptr, ptr @stmt_vec_info_vec, align 8
  %182 = add i32 %170, -1
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %181, i64 0, i32 2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !48
  %186 = getelementptr inbounds %struct._stmt_vec_info, ptr %185, i64 0, i32 14
  %187 = load ptr, ptr %186, align 8, !tbaa !218
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %167, !llvm.loop !219

189:                                              ; preds = %180, %158
  %190 = phi ptr [ %147, %158 ], [ %168, %180 ]
  %191 = getelementptr inbounds %struct.gimple_statement_base, ptr %190, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !59
  %193 = icmp ne i32 %192, 0
  tail call void @llvm.assume(i1 %193)
  %194 = load ptr, ptr @stmt_vec_info_vec, align 8
  %195 = icmp eq ptr %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  %197 = load i32, ptr %194, align 8, !tbaa !68
  br label %198

198:                                              ; preds = %196, %189
  %199 = phi i32 [ %197, %196 ], [ 0, %189 ]
  %200 = icmp ugt i32 %192, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %202

202:                                              ; preds = %201, %198
  %203 = load ptr, ptr @stmt_vec_info_vec, align 8
  %204 = add i32 %192, -1
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %203, i64 0, i32 2, i64 %205
  %207 = load ptr, ptr %206, align 8, !tbaa !48
  %208 = getelementptr inbounds %struct._stmt_vec_info, ptr %207, i64 0, i32 14
  br label %209

209:                                              ; preds = %107, %202
  %210 = phi ptr [ %208, %202 ], [ %113, %107 ]
  store ptr %76, ptr %210, align 8, !tbaa !48
  br label %211

211:                                              ; preds = %209, %121
  %212 = load i32, ptr %77, align 4, !tbaa !59
  %213 = icmp ne i32 %212, 0
  tail call void @llvm.assume(i1 %213)
  %214 = load ptr, ptr @stmt_vec_info_vec, align 8
  %215 = icmp eq ptr %214, null
  br i1 %215, label %218, label %216

216:                                              ; preds = %211
  %217 = load i32, ptr %214, align 8, !tbaa !68
  br label %218

218:                                              ; preds = %216, %211
  %219 = phi i32 [ %217, %216 ], [ 0, %211 ]
  %220 = icmp ugt i32 %212, %219
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %222

222:                                              ; preds = %221, %218
  %223 = load ptr, ptr @stmt_vec_info_vec, align 8
  %224 = add i32 %212, -1
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %223, i64 0, i32 2, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !48
  %228 = getelementptr inbounds %struct._stmt_vec_info, ptr %227, i64 0, i32 18
  %229 = load ptr, ptr %228, align 8, !tbaa !73
  %230 = icmp eq ptr %229, null
  br i1 %230, label %251, label %231

231:                                              ; preds = %222
  %232 = getelementptr inbounds %struct.gimple_statement_base, ptr %229, i64 0, i32 1
  %233 = load i32, ptr %232, align 4, !tbaa !59
  %234 = icmp ne i32 %233, 0
  tail call void @llvm.assume(i1 %234)
  %235 = icmp eq ptr %223, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = load i32, ptr %223, align 8, !tbaa !68
  br label %238

238:                                              ; preds = %236, %231
  %239 = phi i32 [ %237, %236 ], [ 0, %231 ]
  %240 = icmp ugt i32 %233, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %242

242:                                              ; preds = %241, %238
  %243 = load ptr, ptr @stmt_vec_info_vec, align 8
  %244 = add i32 %233, -1
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %243, i64 0, i32 2, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !48
  %248 = getelementptr inbounds %struct._stmt_vec_info, ptr %247, i64 0, i32 22
  %249 = load ptr, ptr %248, align 8, !tbaa !171
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %74, !llvm.loop !220

251:                                              ; preds = %242, %222, %70
  %252 = phi ptr [ %32, %70 ], [ %229, %242 ], [ null, %222 ]
  %253 = phi i32 [ %71, %70 ], [ 1, %222 ], [ 1, %242 ]
  %254 = add i32 %33, 1
  br label %31, !llvm.loop !221

255:                                              ; preds = %42
  br i1 %30, label %257, label %256

256:                                              ; preds = %255
  tail call void @free(ptr noundef %29)
  br label %257

257:                                              ; preds = %255, %256
  store ptr null, ptr %5, align 8, !tbaa !48
  br label %258

258:                                              ; preds = %17, %257
  %259 = phi i8 [ 1, %257 ], [ 0, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #20
  ret i8 %259
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @vect_can_force_dr_alignment_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #13 !prof !47 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 32
  br i1 %5, label %6, label %16

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

declare zeroext i8 @contains_packed_reference(ptr noundef) local_unnamed_addr #3

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_check_interleaving(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !47 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !164
  %5 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !164
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = load i64, ptr %4, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 121
  br i1 %11, label %12, label %117

12:                                               ; preds = %8
  %13 = load i64, ptr %6, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 121
  br i1 %15, label %16, label %117

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  %19 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !59
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %117

22:                                               ; preds = %16, %2
  %23 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !187
  %25 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = tail call fastcc zeroext i8 @vect_equal_offsets(ptr noundef %24, ptr noundef %26), !range !92
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %117, label %29

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !162
  %34 = tail call i32 @tree_int_cst_compare(ptr noundef %31, ptr noundef %33) #20
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %117, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %38 = load i8, ptr %37, align 8, !tbaa !96
  %39 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %40 = load i8, ptr %39, align 8, !tbaa !96
  %41 = icmp eq i8 %38, %40
  br i1 %41, label %42, label %117

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !90
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !59
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !59
  %51 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !90
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !59
  %55 = getelementptr inbounds %struct.tree_type, ptr %54, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %56, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !59
  %59 = icmp eq i64 %50, %58
  br i1 %59, label %60, label %117

60:                                               ; preds = %42
  %61 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !138
  %63 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !138
  %65 = tail call i32 @tree_int_cst_compare(ptr noundef %62, ptr noundef %64) #20
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %60
  %68 = load ptr, ptr %43, align 8, !tbaa !90
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !59
  %71 = load ptr, ptr %51, align 8, !tbaa !90
  %72 = getelementptr inbounds %struct.tree_common, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !59
  %74 = tail call zeroext i8 @types_compatible_p(ptr noundef %70, ptr noundef %73) #20
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %117, label %76

76:                                               ; preds = %67
  %77 = load ptr, ptr %30, align 8, !tbaa !162
  %78 = getelementptr inbounds %struct.tree_int_cst, ptr %77, i64 0, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !59
  %80 = load ptr, ptr %32, align 8, !tbaa !162
  %81 = getelementptr inbounds %struct.tree_int_cst, ptr %80, i64 0, i32 1
  %82 = load i64, ptr %81, align 8, !tbaa !59
  %83 = load ptr, ptr %61, align 8, !tbaa !138
  %84 = getelementptr inbounds %struct.tree_int_cst, ptr %83, i64 0, i32 1
  %85 = load i64, ptr %84, align 8, !tbaa !59
  %86 = icmp sgt i64 %79, %82
  %87 = icmp eq i64 %85, 0
  br i1 %86, label %88, label %98

88:                                               ; preds = %76
  %89 = sub nsw i64 %79, %82
  %90 = srem i64 %89, %50
  %91 = icmp sle i64 %89, %85
  %92 = select i1 %87, i1 true, i1 %91
  %93 = icmp eq i64 %90, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %95, label %117

95:                                               ; preds = %88
  tail call fastcc void @vect_update_interleaving_chain(ptr noundef %1, ptr noundef %0)
  %96 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %117, label %108

98:                                               ; preds = %76
  %99 = sub nsw i64 %82, %79
  %100 = srem i64 %99, %50
  %101 = icmp sle i64 %99, %85
  %102 = select i1 %87, i1 true, i1 %101
  %103 = icmp eq i64 %100, 0
  %104 = select i1 %102, i1 %103, i1 false
  br i1 %104, label %105, label %117

105:                                              ; preds = %98
  tail call fastcc void @vect_update_interleaving_chain(ptr noundef %0, ptr noundef %1)
  %106 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %117, label %108

108:                                              ; preds = %105, %95
  %109 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %110 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 22, i64 1, ptr %109)
  %111 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %112 = load ptr, ptr %43, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %111, ptr noundef %112, i32 noundef 2) #20
  %113 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %114 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %113)
  %115 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %116 = load ptr, ptr %51, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %115, ptr noundef %116, i32 noundef 2) #20
  br label %117

117:                                              ; preds = %108, %105, %98, %95, %88, %42, %60, %67, %8, %12, %16, %22, %29, %36
  %118 = phi i8 [ 0, %36 ], [ 0, %29 ], [ 0, %22 ], [ 0, %16 ], [ 0, %12 ], [ 0, %8 ], [ 0, %67 ], [ 0, %60 ], [ 0, %42 ], [ 0, %88 ], [ 1, %95 ], [ 0, %98 ], [ 1, %105 ], [ 1, %108 ]
  ret i8 %118
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_mark_for_runtime_alias_test(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !93
  %4 = load ptr, ptr @compiler_params, align 8, !tbaa !48
  %5 = getelementptr inbounds %struct.param_info, ptr %4, i64 72, i32 1
  %6 = load i32, ptr %5, align 8, !tbaa !153
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %61, label %8

8:                                                ; preds = %2
  %9 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %25, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %13 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 40, i64 1, ptr %12)
  %14 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %15 = load ptr, ptr %0, align 8, !tbaa !81
  %16 = getelementptr inbounds %struct.data_reference, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %14, ptr noundef %17, i32 noundef 2) #20
  %18 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %19 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 5, i64 1, ptr %18)
  %20 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !83
  %23 = getelementptr inbounds %struct.data_reference, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %24, i32 noundef 2) #20
  br label %25

25:                                               ; preds = %11, %8
  %26 = tail call zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef %3) #20
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %33 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 50, i64 1, ptr %32)
  br label %61

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.loop, ptr %3, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  %37 = icmp eq ptr %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = tail call zeroext i8 @vect_print_dump_info(i32 noundef 5) #20
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr @vect_dump, align 8, !tbaa !48
  %43 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 45, i64 1, ptr %42)
  br label %61

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct._loop_vec_info, ptr %1, i64 0, i32 12
  %46 = load ptr, ptr %45, align 8, !tbaa !48
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !222
  %51 = load i32, ptr %46, align 8, !tbaa !78
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44, %48
  %54 = tail call ptr @vec_heap_p_reserve(ptr noundef %46, i32 noundef 1) #20
  store ptr %54, ptr %45, align 8, !tbaa !48
  br label %55

55:                                               ; preds = %48, %53
  %56 = load ptr, ptr %45, align 8, !tbaa !48
  %57 = load i32, ptr %56, align 8, !tbaa !78
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !78
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %56, i64 0, i32 2, i64 %59
  store ptr %0, ptr %60, align 8, !tbaa !48
  br label %61

61:                                               ; preds = %38, %41, %28, %31, %2, %55
  %62 = phi i8 [ 1, %55 ], [ 0, %2 ], [ 0, %31 ], [ 0, %28 ], [ 0, %41 ], [ 0, %38 ]
  ret i8 %62
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #14

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @vect_equal_offsets(ptr noundef %0, ptr noundef %1) unnamed_addr #9 !prof !47 {
  br label %3

3:                                                ; preds = %34, %2
  %4 = phi ptr [ %0, %2 ], [ %36, %34 ]
  %5 = phi ptr [ %1, %2 ], [ %38, %34 ]
  %6 = tail call ptr @tree_strip_nop_conversions(ptr noundef %4) #20
  %7 = tail call ptr @tree_strip_nop_conversions(ptr noundef %5) #20
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %39, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = xor i64 %11, %10
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = and i64 %10, 65535
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !63
  %19 = and i32 %18, -2
  %20 = icmp eq i32 %19, 6
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !59
  %24 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !59
  %26 = tail call fastcc zeroext i8 @vect_equal_offsets(ptr noundef %23, ptr noundef %25), !range !92
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %21
  %29 = load i64, ptr %6, align 8
  %30 = and i64 %29, 65535
  %31 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !63
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !59
  %37 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !59
  br label %3

39:                                               ; preds = %15, %21, %28, %9, %3
  %40 = phi i8 [ 1, %3 ], [ 0, %15 ], [ 0, %9 ], [ %26, %28 ], [ %26, %21 ]
  ret i8 %40
}

declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_update_interleaving_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !47 {
  %3 = load ptr, ptr %1, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stmt_vec_info_vec, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp ugt i32 %5, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  %18 = add i32 %5, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %17, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi ptr [ %21, %16 ], [ null, %2 ]
  %24 = load ptr, ptr %0, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.gimple_statement_base, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @stmt_vec_info_vec, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %29, align 8, !tbaa !68
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = icmp ugt i32 %26, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %37

37:                                               ; preds = %36, %33
  %38 = load ptr, ptr @stmt_vec_info_vec, align 8
  %39 = add i32 %26, -1
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %38, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !48
  br label %43

43:                                               ; preds = %22, %37
  %44 = phi ptr [ %42, %37 ], [ null, %22 ]
  %45 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 17
  %46 = load ptr, ptr %45, align 8, !tbaa !70
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load ptr, ptr %0, align 8, !tbaa !84
  store ptr %53, ptr %45, align 8, !tbaa !70
  store ptr %53, ptr %49, align 8, !tbaa !70
  %54 = load ptr, ptr %1, align 8, !tbaa !84
  %55 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 18
  store ptr %54, ptr %55, align 8, !tbaa !73
  br label %393

56:                                               ; preds = %48
  br i1 %47, label %57, label %63

57:                                               ; preds = %56
  %58 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 17
  %59 = load ptr, ptr %58, align 8, !tbaa !70
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store ptr %59, ptr %45, align 8, !tbaa !70
  tail call fastcc void @vect_insert_into_interleaving_chain(ptr noundef nonnull %1, ptr noundef nonnull %0)
  br label %393

62:                                               ; preds = %57
  br i1 %47, label %138, label %63

63:                                               ; preds = %43, %56, %62
  %64 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 17
  %65 = load ptr, ptr %64, align 8, !tbaa !70
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %138

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.gimple_statement_base, ptr %46, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = icmp ne i32 %69, 0
  tail call void @llvm.assume(i1 %70)
  %71 = load ptr, ptr @stmt_vec_info_vec, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %67
  %74 = load i32, ptr %71, align 8, !tbaa !68
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ %74, %73 ], [ 0, %67 ]
  %77 = icmp ugt i32 %69, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr @stmt_vec_info_vec, align 8
  %81 = add i32 %69, -1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %80, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct._stmt_vec_info, ptr %84, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !158
  %87 = getelementptr inbounds %struct.data_reference, ptr %86, i64 0, i32 4, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !162
  %89 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !162
  %91 = tail call i32 @tree_int_cst_compare(ptr noundef %88, ptr noundef %90) #20
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %136

93:                                               ; preds = %79
  %94 = load ptr, ptr %0, align 8, !tbaa !84
  store ptr %94, ptr %64, align 8, !tbaa !70
  %95 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 18
  store ptr %46, ptr %95, align 8, !tbaa !73
  %96 = icmp eq ptr %46, null
  br i1 %96, label %393, label %97

97:                                               ; preds = %93, %127
  %98 = phi ptr [ %134, %127 ], [ %46, %93 ]
  %99 = load ptr, ptr %0, align 8, !tbaa !84
  %100 = getelementptr inbounds %struct.gimple_statement_base, ptr %98, i64 0, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !59
  %102 = icmp ne i32 %101, 0
  tail call void @llvm.assume(i1 %102)
  %103 = load ptr, ptr @stmt_vec_info_vec, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %97
  %106 = load i32, ptr %103, align 8, !tbaa !68
  br label %107

107:                                              ; preds = %105, %97
  %108 = phi i32 [ %106, %105 ], [ 0, %97 ]
  %109 = icmp ugt i32 %101, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %111

111:                                              ; preds = %110, %107
  %112 = load ptr, ptr @stmt_vec_info_vec, align 8
  %113 = add i32 %101, -1
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %112, i64 0, i32 2, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !48
  %117 = getelementptr inbounds %struct._stmt_vec_info, ptr %116, i64 0, i32 17
  store ptr %99, ptr %117, align 8, !tbaa !70
  %118 = load i32, ptr %100, align 4, !tbaa !59
  %119 = icmp ne i32 %118, 0
  tail call void @llvm.assume(i1 %119)
  %120 = icmp eq ptr %112, null
  br i1 %120, label %123, label %121

121:                                              ; preds = %111
  %122 = load i32, ptr %112, align 8, !tbaa !68
  br label %123

123:                                              ; preds = %121, %111
  %124 = phi i32 [ %122, %121 ], [ 0, %111 ]
  %125 = icmp ugt i32 %118, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %127

127:                                              ; preds = %126, %123
  %128 = load ptr, ptr @stmt_vec_info_vec, align 8
  %129 = add i32 %118, -1
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %128, i64 0, i32 2, i64 %130
  %132 = load ptr, ptr %131, align 8, !tbaa !48
  %133 = getelementptr inbounds %struct._stmt_vec_info, ptr %132, i64 0, i32 18
  %134 = load ptr, ptr %133, align 8, !tbaa !73
  %135 = icmp eq ptr %134, null
  br i1 %135, label %393, label %97, !llvm.loop !223

136:                                              ; preds = %79
  tail call fastcc void @vect_insert_into_interleaving_chain(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %137 = load ptr, ptr %45, align 8, !tbaa !70
  store ptr %137, ptr %64, align 8, !tbaa !70
  br label %393

138:                                              ; preds = %63, %62
  %139 = getelementptr inbounds %struct._stmt_vec_info, ptr %44, i64 0, i32 17
  %140 = load ptr, ptr %139, align 8, !tbaa !70
  %141 = icmp eq ptr %46, %140
  br i1 %141, label %393, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.gimple_statement_base, ptr %46, i64 0, i32 1
  %144 = load i32, ptr %143, align 4, !tbaa !59
  %145 = icmp ne i32 %144, 0
  tail call void @llvm.assume(i1 %145)
  %146 = load ptr, ptr @stmt_vec_info_vec, align 8
  %147 = icmp eq ptr %146, null
  br i1 %147, label %150, label %148

148:                                              ; preds = %142
  %149 = load i32, ptr %146, align 8, !tbaa !68
  br label %150

150:                                              ; preds = %148, %142
  %151 = phi i32 [ %149, %148 ], [ 0, %142 ]
  %152 = icmp ugt i32 %144, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %154

154:                                              ; preds = %153, %150
  %155 = load ptr, ptr @stmt_vec_info_vec, align 8
  %156 = add i32 %144, -1
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %155, i64 0, i32 2, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !48
  %160 = getelementptr inbounds %struct._stmt_vec_info, ptr %159, i64 0, i32 7
  %161 = load ptr, ptr %160, align 8, !tbaa !158
  %162 = getelementptr inbounds %struct.data_reference, ptr %161, i64 0, i32 4, i32 2
  %163 = load ptr, ptr %162, align 8, !tbaa !162
  %164 = getelementptr inbounds %struct.gimple_statement_base, ptr %140, i64 0, i32 1
  %165 = load i32, ptr %164, align 4, !tbaa !59
  %166 = icmp ne i32 %165, 0
  tail call void @llvm.assume(i1 %166)
  %167 = icmp eq ptr %155, null
  br i1 %167, label %170, label %168

168:                                              ; preds = %154
  %169 = load i32, ptr %155, align 8, !tbaa !68
  br label %170

170:                                              ; preds = %168, %154
  %171 = phi i32 [ %169, %168 ], [ 0, %154 ]
  %172 = icmp ugt i32 %165, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %174

174:                                              ; preds = %173, %170
  %175 = load ptr, ptr @stmt_vec_info_vec, align 8
  %176 = add i32 %165, -1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %175, i64 0, i32 2, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !48
  %180 = getelementptr inbounds %struct._stmt_vec_info, ptr %179, i64 0, i32 7
  %181 = load ptr, ptr %180, align 8, !tbaa !158
  %182 = getelementptr inbounds %struct.data_reference, ptr %181, i64 0, i32 4, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !162
  %184 = tail call i32 @tree_int_cst_compare(ptr noundef %163, ptr noundef %183) #20
  %185 = icmp sgt i32 %184, 0
  %186 = select i1 %185, ptr %140, ptr %46
  %187 = select i1 %185, ptr %45, ptr %139
  %188 = load ptr, ptr %187, align 8, !tbaa !48
  %189 = icmp eq ptr %188, null
  br i1 %189, label %393, label %190

190:                                              ; preds = %174
  %191 = select i1 %185, ptr %139, ptr %45
  %192 = load ptr, ptr %191, align 8, !tbaa !70
  br label %193

193:                                              ; preds = %190, %384
  %194 = phi ptr [ %391, %384 ], [ %188, %190 ]
  %195 = phi ptr [ %357, %384 ], [ %192, %190 ]
  %196 = getelementptr inbounds %struct.gimple_statement_base, ptr %194, i64 0, i32 1
  %197 = load i32, ptr %196, align 4, !tbaa !59
  %198 = icmp ne i32 %197, 0
  tail call void @llvm.assume(i1 %198)
  %199 = load ptr, ptr @stmt_vec_info_vec, align 8
  %200 = icmp eq ptr %199, null
  br i1 %200, label %203, label %201

201:                                              ; preds = %193
  %202 = load i32, ptr %199, align 8, !tbaa !68
  br label %203

203:                                              ; preds = %201, %193
  %204 = phi i32 [ %202, %201 ], [ 0, %193 ]
  %205 = icmp ugt i32 %197, %204
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %207

207:                                              ; preds = %206, %203
  %208 = load ptr, ptr @stmt_vec_info_vec, align 8
  %209 = add i32 %197, -1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %208, i64 0, i32 2, i64 %210
  %212 = load ptr, ptr %211, align 8, !tbaa !48
  %213 = getelementptr inbounds %struct._stmt_vec_info, ptr %212, i64 0, i32 7
  %214 = load ptr, ptr %213, align 8, !tbaa !158
  %215 = getelementptr inbounds %struct.data_reference, ptr %214, i64 0, i32 4, i32 2
  %216 = load ptr, ptr %215, align 8, !tbaa !162
  %217 = getelementptr inbounds %struct.gimple_statement_base, ptr %195, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !59
  %219 = icmp ne i32 %218, 0
  tail call void @llvm.assume(i1 %219)
  %220 = icmp eq ptr %208, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %207
  %222 = load i32, ptr %208, align 8, !tbaa !68
  br label %223

223:                                              ; preds = %221, %207
  %224 = phi i32 [ %222, %221 ], [ 0, %207 ]
  %225 = icmp ugt i32 %218, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %223
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %227

227:                                              ; preds = %226, %223
  %228 = load ptr, ptr @stmt_vec_info_vec, align 8
  %229 = add i32 %218, -1
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %228, i64 0, i32 2, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !48
  %233 = getelementptr inbounds %struct._stmt_vec_info, ptr %232, i64 0, i32 18
  %234 = load ptr, ptr %233, align 8, !tbaa !73
  %235 = icmp eq ptr %234, null
  br i1 %235, label %318, label %236

236:                                              ; preds = %227, %309
  %237 = phi i1 [ %317, %309 ], [ %235, %227 ]
  %238 = phi ptr [ %316, %309 ], [ %234, %227 ]
  %239 = phi ptr [ %238, %309 ], [ %195, %227 ]
  %240 = getelementptr inbounds %struct.gimple_statement_base, ptr %238, i64 0, i32 1
  %241 = load i32, ptr %240, align 4, !tbaa !59
  %242 = icmp ne i32 %241, 0
  tail call void @llvm.assume(i1 %242)
  %243 = load ptr, ptr @stmt_vec_info_vec, align 8
  %244 = icmp eq ptr %243, null
  br i1 %244, label %247, label %245

245:                                              ; preds = %236
  %246 = load i32, ptr %243, align 8, !tbaa !68
  br label %247

247:                                              ; preds = %245, %236
  %248 = phi i32 [ %246, %245 ], [ 0, %236 ]
  %249 = icmp ugt i32 %241, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %247
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %251

251:                                              ; preds = %250, %247
  %252 = load ptr, ptr @stmt_vec_info_vec, align 8
  %253 = add i32 %241, -1
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %252, i64 0, i32 2, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !48
  %257 = getelementptr inbounds %struct._stmt_vec_info, ptr %256, i64 0, i32 7
  %258 = load ptr, ptr %257, align 8, !tbaa !158
  %259 = getelementptr inbounds %struct.data_reference, ptr %258, i64 0, i32 4, i32 2
  %260 = load ptr, ptr %259, align 8, !tbaa !162
  %261 = tail call i32 @tree_int_cst_compare(ptr noundef %260, ptr noundef %216) #20
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %263, label %298

263:                                              ; preds = %251
  %264 = getelementptr inbounds %struct.gimple_statement_base, ptr %239, i64 0, i32 1
  %265 = load i32, ptr %264, align 4, !tbaa !59
  %266 = icmp ne i32 %265, 0
  tail call void @llvm.assume(i1 %266)
  %267 = load ptr, ptr @stmt_vec_info_vec, align 8
  %268 = icmp eq ptr %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %263
  %270 = load i32, ptr %267, align 8, !tbaa !68
  br label %271

271:                                              ; preds = %269, %263
  %272 = phi i32 [ %270, %269 ], [ 0, %263 ]
  %273 = icmp ugt i32 %265, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %271
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %275

275:                                              ; preds = %274, %271
  %276 = load ptr, ptr @stmt_vec_info_vec, align 8
  %277 = add i32 %265, -1
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %276, i64 0, i32 2, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !48
  %281 = getelementptr inbounds %struct._stmt_vec_info, ptr %280, i64 0, i32 18
  store ptr %194, ptr %281, align 8, !tbaa !73
  %282 = load i32, ptr %196, align 4, !tbaa !59
  %283 = icmp ne i32 %282, 0
  tail call void @llvm.assume(i1 %283)
  %284 = icmp eq ptr %276, null
  br i1 %284, label %287, label %285

285:                                              ; preds = %275
  %286 = load i32, ptr %276, align 8, !tbaa !68
  br label %287

287:                                              ; preds = %285, %275
  %288 = phi i32 [ %286, %285 ], [ 0, %275 ]
  %289 = icmp ugt i32 %282, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %291

291:                                              ; preds = %290, %287
  %292 = load ptr, ptr @stmt_vec_info_vec, align 8
  %293 = add i32 %282, -1
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %292, i64 0, i32 2, i64 %294
  %296 = load ptr, ptr %295, align 8, !tbaa !48
  %297 = getelementptr inbounds %struct._stmt_vec_info, ptr %296, i64 0, i32 18
  store ptr %238, ptr %297, align 8, !tbaa !73
  br label %318

298:                                              ; preds = %251
  %299 = load i32, ptr %240, align 4, !tbaa !59
  %300 = icmp ne i32 %299, 0
  tail call void @llvm.assume(i1 %300)
  %301 = load ptr, ptr @stmt_vec_info_vec, align 8
  %302 = icmp eq ptr %301, null
  br i1 %302, label %305, label %303

303:                                              ; preds = %298
  %304 = load i32, ptr %301, align 8, !tbaa !68
  br label %305

305:                                              ; preds = %303, %298
  %306 = phi i32 [ %304, %303 ], [ 0, %298 ]
  %307 = icmp ugt i32 %299, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %305
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %309

309:                                              ; preds = %308, %305
  %310 = load ptr, ptr @stmt_vec_info_vec, align 8
  %311 = add i32 %299, -1
  %312 = zext i32 %311 to i64
  %313 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %310, i64 0, i32 2, i64 %312
  %314 = load ptr, ptr %313, align 8, !tbaa !48
  %315 = getelementptr inbounds %struct._stmt_vec_info, ptr %314, i64 0, i32 18
  %316 = load ptr, ptr %315, align 8, !tbaa !73
  %317 = icmp eq ptr %316, null
  br i1 %317, label %318, label %236, !llvm.loop !224

318:                                              ; preds = %309, %227, %291
  %319 = phi i1 [ %237, %291 ], [ %235, %227 ], [ %317, %309 ]
  %320 = phi ptr [ %194, %291 ], [ %195, %227 ], [ %238, %309 ]
  br i1 %319, label %321, label %356

321:                                              ; preds = %318
  %322 = getelementptr inbounds %struct.gimple_statement_base, ptr %320, i64 0, i32 1
  %323 = load i32, ptr %322, align 4, !tbaa !59
  %324 = icmp ne i32 %323, 0
  tail call void @llvm.assume(i1 %324)
  %325 = load ptr, ptr @stmt_vec_info_vec, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %329, label %327

327:                                              ; preds = %321
  %328 = load i32, ptr %325, align 8, !tbaa !68
  br label %329

329:                                              ; preds = %327, %321
  %330 = phi i32 [ %328, %327 ], [ 0, %321 ]
  %331 = icmp ugt i32 %323, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %329
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %333

333:                                              ; preds = %332, %329
  %334 = load ptr, ptr @stmt_vec_info_vec, align 8
  %335 = add i32 %323, -1
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %334, i64 0, i32 2, i64 %336
  %338 = load ptr, ptr %337, align 8, !tbaa !48
  %339 = getelementptr inbounds %struct._stmt_vec_info, ptr %338, i64 0, i32 18
  store ptr %194, ptr %339, align 8, !tbaa !73
  %340 = load i32, ptr %196, align 4, !tbaa !59
  %341 = icmp ne i32 %340, 0
  tail call void @llvm.assume(i1 %341)
  %342 = icmp eq ptr %334, null
  br i1 %342, label %345, label %343

343:                                              ; preds = %333
  %344 = load i32, ptr %334, align 8, !tbaa !68
  br label %345

345:                                              ; preds = %343, %333
  %346 = phi i32 [ %344, %343 ], [ 0, %333 ]
  %347 = icmp ugt i32 %340, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %345
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %349

349:                                              ; preds = %348, %345
  %350 = load ptr, ptr @stmt_vec_info_vec, align 8
  %351 = add i32 %340, -1
  %352 = zext i32 %351 to i64
  %353 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %350, i64 0, i32 2, i64 %352
  %354 = load ptr, ptr %353, align 8, !tbaa !48
  %355 = getelementptr inbounds %struct._stmt_vec_info, ptr %354, i64 0, i32 18
  store ptr null, ptr %355, align 8, !tbaa !73
  br label %356

356:                                              ; preds = %349, %318
  %357 = phi ptr [ %320, %318 ], [ %194, %349 ]
  %358 = load i32, ptr %196, align 4, !tbaa !59
  %359 = icmp ne i32 %358, 0
  tail call void @llvm.assume(i1 %359)
  %360 = load ptr, ptr @stmt_vec_info_vec, align 8
  %361 = icmp eq ptr %360, null
  br i1 %361, label %364, label %362

362:                                              ; preds = %356
  %363 = load i32, ptr %360, align 8, !tbaa !68
  br label %364

364:                                              ; preds = %362, %356
  %365 = phi i32 [ %363, %362 ], [ 0, %356 ]
  %366 = icmp ugt i32 %358, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %364
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %368

368:                                              ; preds = %367, %364
  %369 = load ptr, ptr @stmt_vec_info_vec, align 8
  %370 = add i32 %358, -1
  %371 = zext i32 %370 to i64
  %372 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %369, i64 0, i32 2, i64 %371
  %373 = load ptr, ptr %372, align 8, !tbaa !48
  %374 = getelementptr inbounds %struct._stmt_vec_info, ptr %373, i64 0, i32 17
  store ptr %186, ptr %374, align 8, !tbaa !70
  %375 = load i32, ptr %196, align 4, !tbaa !59
  %376 = icmp ne i32 %375, 0
  tail call void @llvm.assume(i1 %376)
  %377 = icmp eq ptr %369, null
  br i1 %377, label %380, label %378

378:                                              ; preds = %368
  %379 = load i32, ptr %369, align 8, !tbaa !68
  br label %380

380:                                              ; preds = %378, %368
  %381 = phi i32 [ %379, %378 ], [ 0, %368 ]
  %382 = icmp ugt i32 %375, %381
  br i1 %382, label %383, label %384

383:                                              ; preds = %380
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %384

384:                                              ; preds = %383, %380
  %385 = load ptr, ptr @stmt_vec_info_vec, align 8
  %386 = add i32 %375, -1
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %385, i64 0, i32 2, i64 %387
  %389 = load ptr, ptr %388, align 8, !tbaa !48
  %390 = getelementptr inbounds %struct._stmt_vec_info, ptr %389, i64 0, i32 18
  %391 = load ptr, ptr %390, align 8, !tbaa !48
  %392 = icmp eq ptr %391, null
  br i1 %392, label %393, label %193, !llvm.loop !225

393:                                              ; preds = %127, %384, %93, %174, %138, %136, %61, %52
  ret void
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @vect_insert_into_interleaving_chain(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !59
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr @stmt_vec_info_vec, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !68
  br label %12

12:                                               ; preds = %10, %7
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp ugt i32 %5, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %16

16:                                               ; preds = %15, %12
  %17 = load ptr, ptr @stmt_vec_info_vec, align 8
  %18 = add i32 %5, -1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %17, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !48
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi ptr [ %21, %16 ], [ null, %2 ]
  %24 = load ptr, ptr %1, align 8, !tbaa !84
  %25 = getelementptr inbounds %struct.gimple_statement_base, ptr %24, i64 0, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !59
  %27 = icmp ne i32 %26, 0
  tail call void @llvm.assume(i1 %27)
  %28 = load ptr, ptr @stmt_vec_info_vec, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %22
  %31 = load i32, ptr %28, align 8, !tbaa !68
  br label %32

32:                                               ; preds = %30, %22
  %33 = phi i32 [ %31, %30 ], [ 0, %22 ]
  %34 = icmp ugt i32 %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %36

36:                                               ; preds = %35, %32
  %37 = load ptr, ptr @stmt_vec_info_vec, align 8
  %38 = add i32 %26, -1
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %37, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !48
  %42 = getelementptr inbounds %struct._stmt_vec_info, ptr %41, i64 0, i32 17
  %43 = load ptr, ptr %42, align 8, !tbaa !70
  %44 = getelementptr inbounds %struct.gimple_statement_base, ptr %43, i64 0, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !59
  %46 = icmp ne i32 %45, 0
  tail call void @llvm.assume(i1 %46)
  %47 = icmp eq ptr %37, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %36
  %49 = load i32, ptr %37, align 8, !tbaa !68
  br label %50

50:                                               ; preds = %48, %36
  %51 = phi i32 [ %49, %48 ], [ 0, %36 ]
  %52 = icmp ugt i32 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %54

54:                                               ; preds = %53, %50
  %55 = load ptr, ptr @stmt_vec_info_vec, align 8
  %56 = add i32 %45, -1
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %55, i64 0, i32 2, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !48
  %60 = getelementptr inbounds %struct._stmt_vec_info, ptr %59, i64 0, i32 18
  %61 = load ptr, ptr %60, align 8, !tbaa !73
  %62 = icmp eq ptr %61, null
  br i1 %62, label %124, label %63

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  br label %65

65:                                               ; preds = %63, %115
  %66 = phi ptr [ %61, %63 ], [ %122, %115 ]
  %67 = phi ptr [ %43, %63 ], [ %66, %115 ]
  %68 = getelementptr inbounds %struct.gimple_statement_base, ptr %66, i64 0, i32 1
  %69 = load i32, ptr %68, align 4, !tbaa !59
  %70 = icmp ne i32 %69, 0
  tail call void @llvm.assume(i1 %70)
  %71 = load ptr, ptr @stmt_vec_info_vec, align 8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %65
  %74 = load i32, ptr %71, align 8, !tbaa !68
  br label %75

75:                                               ; preds = %73, %65
  %76 = phi i32 [ %74, %73 ], [ 0, %65 ]
  %77 = icmp ugt i32 %69, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr @stmt_vec_info_vec, align 8
  %81 = add i32 %69, -1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %80, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct._stmt_vec_info, ptr %84, i64 0, i32 7
  %86 = load ptr, ptr %85, align 8, !tbaa !158
  %87 = getelementptr inbounds %struct.data_reference, ptr %86, i64 0, i32 4, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !162
  %89 = load ptr, ptr %64, align 8, !tbaa !162
  %90 = tail call i32 @tree_int_cst_compare(ptr noundef %88, ptr noundef %89) #20
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %104

92:                                               ; preds = %79
  %93 = load ptr, ptr %0, align 8, !tbaa !84
  %94 = getelementptr inbounds %struct.gimple_statement_base, ptr %67, i64 0, i32 1
  %95 = load i32, ptr %94, align 4, !tbaa !59
  %96 = icmp ne i32 %95, 0
  tail call void @llvm.assume(i1 %96)
  %97 = load ptr, ptr @stmt_vec_info_vec, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %92
  %100 = load i32, ptr %97, align 8, !tbaa !68
  br label %101

101:                                              ; preds = %99, %92
  %102 = phi i32 [ %100, %99 ], [ 0, %92 ]
  %103 = icmp ugt i32 %95, %102
  br i1 %103, label %137, label %141

104:                                              ; preds = %79
  %105 = load i32, ptr %68, align 4, !tbaa !59
  %106 = icmp ne i32 %105, 0
  tail call void @llvm.assume(i1 %106)
  %107 = load ptr, ptr @stmt_vec_info_vec, align 8
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %107, align 8, !tbaa !68
  br label %111

111:                                              ; preds = %109, %104
  %112 = phi i32 [ %110, %109 ], [ 0, %104 ]
  %113 = icmp ugt i32 %105, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %115

115:                                              ; preds = %114, %111
  %116 = load ptr, ptr @stmt_vec_info_vec, align 8
  %117 = add i32 %105, -1
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %116, i64 0, i32 2, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !48
  %121 = getelementptr inbounds %struct._stmt_vec_info, ptr %120, i64 0, i32 18
  %122 = load ptr, ptr %121, align 8, !tbaa !73
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %65, !llvm.loop !226

124:                                              ; preds = %115, %54
  %125 = phi ptr [ %43, %54 ], [ %66, %115 ]
  %126 = load ptr, ptr %0, align 8, !tbaa !84
  %127 = getelementptr inbounds %struct.gimple_statement_base, ptr %125, i64 0, i32 1
  %128 = load i32, ptr %127, align 4, !tbaa !59
  %129 = icmp ne i32 %128, 0
  tail call void @llvm.assume(i1 %129)
  %130 = load ptr, ptr @stmt_vec_info_vec, align 8
  %131 = icmp eq ptr %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = load i32, ptr %130, align 8, !tbaa !68
  br label %134

134:                                              ; preds = %132, %124
  %135 = phi i32 [ %133, %132 ], [ 0, %124 ]
  %136 = icmp ugt i32 %128, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %134, %101
  %138 = phi i32 [ %95, %101 ], [ %128, %134 ]
  %139 = phi ptr [ %93, %101 ], [ %126, %134 ]
  %140 = phi ptr [ %66, %101 ], [ null, %134 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %141

141:                                              ; preds = %137, %134, %101
  %142 = phi i32 [ %95, %101 ], [ %128, %134 ], [ %138, %137 ]
  %143 = phi ptr [ %93, %101 ], [ %126, %134 ], [ %139, %137 ]
  %144 = phi ptr [ %66, %101 ], [ null, %134 ], [ %140, %137 ]
  %145 = load ptr, ptr @stmt_vec_info_vec, align 8
  %146 = add i32 %142, -1
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %145, i64 0, i32 2, i64 %147
  %149 = load ptr, ptr %148, align 8, !tbaa !48
  %150 = getelementptr inbounds %struct._stmt_vec_info, ptr %149, i64 0, i32 18
  store ptr %143, ptr %150, align 8, !tbaa !73
  %151 = getelementptr inbounds %struct._stmt_vec_info, ptr %23, i64 0, i32 18
  store ptr %144, ptr %151, align 8, !tbaa !73
  ret void
}

declare zeroext i8 @optimize_loop_nest_for_size_p(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @vect_same_range_drs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !47 {
  %3 = load ptr, ptr %0, align 8, !tbaa !84
  %4 = load ptr, ptr %1, align 8, !tbaa !84
  %5 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !90
  %7 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !90
  %9 = tail call i32 @operand_equal_p(ptr noundef %6, ptr noundef %8, i32 noundef 0) #20
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %89

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.gimple_statement_base, ptr %3, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !59
  %14 = icmp ne i32 %13, 0
  tail call void @llvm.assume(i1 %14)
  %15 = load ptr, ptr @stmt_vec_info_vec, align 8
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %11
  %18 = load i32, ptr %15, align 8, !tbaa !68
  br label %19

19:                                               ; preds = %17, %11
  %20 = phi i32 [ %18, %17 ], [ 0, %11 ]
  %21 = icmp ugt i32 %13, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %23

23:                                               ; preds = %22, %19
  %24 = load ptr, ptr @stmt_vec_info_vec, align 8
  %25 = add i32 %13, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %24, i64 0, i32 2, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct._stmt_vec_info, ptr %28, i64 0, i32 17
  %30 = load ptr, ptr %29, align 8, !tbaa !70
  %31 = icmp eq ptr %30, null
  br i1 %31, label %88, label %32

32:                                               ; preds = %23
  %33 = getelementptr inbounds %struct.gimple_statement_base, ptr %4, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !59
  %35 = icmp ne i32 %34, 0
  tail call void @llvm.assume(i1 %35)
  %36 = icmp eq ptr %24, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i32, ptr %24, align 8, !tbaa !68
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %38, %37 ], [ 0, %32 ]
  %41 = icmp ugt i32 %34, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %43

43:                                               ; preds = %42, %39
  %44 = load ptr, ptr @stmt_vec_info_vec, align 8
  %45 = add i32 %34, -1
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %44, i64 0, i32 2, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !48
  %49 = getelementptr inbounds %struct._stmt_vec_info, ptr %48, i64 0, i32 17
  %50 = load ptr, ptr %49, align 8, !tbaa !70
  %51 = icmp eq ptr %50, null
  br i1 %51, label %88, label %52

52:                                               ; preds = %43
  %53 = load i32, ptr %12, align 4, !tbaa !59
  %54 = icmp ne i32 %53, 0
  tail call void @llvm.assume(i1 %54)
  %55 = icmp eq ptr %44, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = load i32, ptr %44, align 8, !tbaa !68
  br label %58

58:                                               ; preds = %56, %52
  %59 = phi i32 [ %57, %56 ], [ 0, %52 ]
  %60 = icmp ugt i32 %53, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %62

62:                                               ; preds = %61, %58
  %63 = load ptr, ptr @stmt_vec_info_vec, align 8
  %64 = add i32 %53, -1
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %63, i64 0, i32 2, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !48
  %68 = getelementptr inbounds %struct._stmt_vec_info, ptr %67, i64 0, i32 17
  %69 = load ptr, ptr %68, align 8, !tbaa !70
  %70 = load i32, ptr %33, align 4, !tbaa !59
  %71 = icmp ne i32 %70, 0
  tail call void @llvm.assume(i1 %71)
  %72 = icmp eq ptr %63, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = load i32, ptr %63, align 8, !tbaa !68
  br label %75

75:                                               ; preds = %73, %62
  %76 = phi i32 [ %74, %73 ], [ 0, %62 ]
  %77 = icmp ugt i32 %70, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @fancy_abort(ptr noundef nonnull @.str.63, i32 noundef 629, ptr noundef nonnull @.str.10) #20
  br label %79

79:                                               ; preds = %78, %75
  %80 = load ptr, ptr @stmt_vec_info_vec, align 8
  %81 = add i32 %70, -1
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.VEC_vec_void_p_base, ptr %80, i64 0, i32 2, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !48
  %85 = getelementptr inbounds %struct._stmt_vec_info, ptr %84, i64 0, i32 17
  %86 = load ptr, ptr %85, align 8, !tbaa !70
  %87 = icmp eq ptr %69, %86
  br i1 %87, label %89, label %88

88:                                               ; preds = %79, %43, %23
  br label %89

89:                                               ; preds = %2, %79, %88
  %90 = phi i8 [ 0, %88 ], [ 1, %79 ], [ 1, %2 ]
  ret i8 %90
}

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #19

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
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!46}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!35 = !{ptr @vect_analyze_data_ref_dependences, ptr @vect_print_dump_info, i64 2026}
!36 = !{ptr @vect_analyze_data_refs_alignment, ptr @vect_print_dump_info, i64 6078}
!37 = !{ptr @vect_analyze_data_refs_alignment, ptr @build_fold_indirect_ref_loc, i64 2026}
!38 = !{ptr @vect_analyze_data_refs_alignment, ptr @size_int_kind, i64 4052}
!39 = !{ptr @vect_analyze_data_refs_alignment, ptr @tree_int_cst_compare, i64 4052}
!40 = !{ptr @vect_analyze_data_ref_accesses, ptr @vect_print_dump_info, i64 6078}
!41 = !{ptr @vect_analyze_data_ref_accesses, ptr @tree_int_cst_compare, i64 2026}
!42 = !{ptr @vect_analyze_data_refs, ptr @vect_print_dump_info, i64 283096}
!43 = !{ptr @vect_analyze_data_refs, ptr @compute_data_dependences_for_bb, i64 155395}
!44 = !{ptr @vect_analyze_data_refs, ptr @unshare_expr, i64 184425}
!45 = !{ptr @vect_analyze_data_refs, ptr @get_vectype_for_scalar_type, i64 61475}
!46 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!47 = !{!"function_entry_count", i64 0}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !49, i64 8}
!53 = !{!"_IO_FILE", !54, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !54, i64 112, !54, i64 116, !55, i64 120, !56, i64 128, !50, i64 130, !50, i64 131, !49, i64 136, !55, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !55, i64 184, !54, i64 192, !50, i64 196}
!54 = !{!"int", !50, i64 0}
!55 = !{!"long", !50, i64 0}
!56 = !{!"short", !50, i64 0}
!57 = !{!53, !49, i64 16}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!50, !50, i64 0}
!60 = !{!53, !49, i64 40}
!61 = !{!53, !49, i64 48}
!62 = !{!53, !54, i64 0}
!63 = !{!54, !54, i64 0}
!64 = distinct !{!64, !65, !66}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!55, !55, i64 0}
!68 = !{!69, !54, i64 0}
!69 = !{!"VEC_vec_void_p_base", !54, i64 0, !54, i64 4, !50, i64 8}
!70 = !{!71, !49, i64 128}
!71 = !{!"_stmt_vec_info", !54, i64 0, !49, i64 8, !49, i64 16, !54, i64 24, !50, i64 28, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !50, i64 96, !49, i64 104, !49, i64 112, !54, i64 120, !49, i64 128, !49, i64 136, !54, i64 144, !54, i64 148, !54, i64 152, !49, i64 160, !50, i64 168, !72, i64 172, !54, i64 180, !49, i64 184}
!72 = !{!"", !54, i64 0, !54, i64 4}
!73 = !{!71, !49, i64 136}
!74 = distinct !{!74, !65, !66}
!75 = !{!"function_entry_count", i64 2026}
!76 = !{!"branch_weights", i32 2026, i32 0}
!77 = !{!"branch_weights", i32 0, i32 4052}
!78 = !{!79, !54, i64 0}
!79 = !{!"VEC_ddr_p_base", !54, i64 0, !54, i64 4, !50, i64 8}
!80 = !{!"branch_weights", i32 2026, i32 2026}
!81 = !{!82, !49, i64 0}
!82 = !{!"data_dependence_relation", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !54, i64 56, !50, i64 60, !50, i64 61, !50, i64 62}
!83 = !{!82, !49, i64 8}
!84 = !{!85, !49, i64 0}
!85 = !{!"data_reference", !49, i64 0, !49, i64 8, !49, i64 16, !50, i64 24, !86, i64 32, !87, i64 72, !88, i64 88, !49, i64 104}
!86 = !{!"innermost_loop_behavior", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32}
!87 = !{!"indices", !49, i64 0, !49, i64 8}
!88 = !{!"dr_alias", !49, i64 0, !49, i64 8}
!89 = !{!"branch_weights", i32 0, i32 2026}
!90 = !{!85, !49, i64 8}
!91 = !{!82, !49, i64 16}
!92 = !{i8 0, i8 2}
!93 = !{!94, !49, i64 0}
!94 = !{!"_loop_vec_info", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !54, i64 32, !50, i64 36, !54, i64 40, !49, i64 48, !54, i64 56, !54, i64 60, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !54, i64 96, !49, i64 104, !49, i64 112, !54, i64 120}
!95 = !{!94, !54, i64 40}
!96 = !{!85, !50, i64 24}
!97 = !{!82, !49, i64 48}
!98 = !{!99, !54, i64 0}
!99 = !{!"VEC_lambda_vector_base", !54, i64 0, !54, i64 4, !50, i64 8}
!100 = !{!101, !54, i64 0}
!101 = !{!"loop", !54, i64 0, !54, i64 4, !49, i64 8, !49, i64 16, !102, i64 24, !54, i64 32, !54, i64 36, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !103, i64 80, !103, i64 96, !50, i64 112, !50, i64 113, !54, i64 116, !49, i64 120, !49, i64 128, !50, i64 136, !49, i64 144}
!102 = !{!"lpt_decision", !54, i64 0, !54, i64 4}
!103 = !{!"", !55, i64 0, !55, i64 8}
!104 = !{!82, !49, i64 32}
!105 = !{!106, !54, i64 0}
!106 = !{!"VEC_loop_p_base", !54, i64 0, !54, i64 4, !50, i64 8}
!107 = distinct !{!107, !65, !66}
!108 = !{!109, !54, i64 4}
!109 = !{!"VEC_dr_p_base", !54, i64 0, !54, i64 4, !50, i64 8}
!110 = !{!109, !54, i64 0}
!111 = !{!71, !50, i64 168}
!112 = !{!82, !50, i64 60}
!113 = distinct !{!113, !65, !66}
!114 = distinct !{!114, !65, !66}
!115 = !{!116, !54, i64 0}
!116 = !{!"VEC_data_reference_p_base", !54, i64 0, !54, i64 4, !50, i64 8}
!117 = distinct !{!117, !65, !66}
!118 = !{!71, !49, i64 32}
!119 = !{!71, !49, i64 16}
!120 = !{!85, !49, i64 16}
!121 = !{!101, !49, i64 48}
!122 = !{!123, !49, i64 24}
!123 = !{!"basic_block_def", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !50, i64 32, !49, i64 48, !49, i64 56, !50, i64 64, !55, i64 72, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96}
!124 = !{!125, !54, i64 0}
!125 = !{!"optab_handlers", !54, i64 0}
!126 = !{!127, !49, i64 664}
!127 = !{!"gcc_target", !128, i64 0, !130, i64 368, !131, i64 664, !54, i64 744, !49, i64 752, !49, i64 760, !49, i64 768, !49, i64 776, !49, i64 784, !49, i64 792, !49, i64 800, !49, i64 808, !49, i64 816, !49, i64 824, !49, i64 832, !49, i64 840, !49, i64 848, !49, i64 856, !49, i64 864, !49, i64 872, !49, i64 880, !49, i64 888, !49, i64 896, !49, i64 904, !49, i64 912, !49, i64 920, !49, i64 928, !49, i64 936, !49, i64 944, !49, i64 952, !49, i64 960, !49, i64 968, !49, i64 976, !49, i64 984, !49, i64 992, !49, i64 1000, !49, i64 1008, !49, i64 1016, !49, i64 1024, !49, i64 1032, !49, i64 1040, !49, i64 1048, !49, i64 1056, !55, i64 1064, !55, i64 1072, !49, i64 1080, !49, i64 1088, !49, i64 1096, !49, i64 1104, !49, i64 1112, !49, i64 1120, !49, i64 1128, !49, i64 1136, !49, i64 1144, !49, i64 1152, !49, i64 1160, !49, i64 1168, !132, i64 1176, !49, i64 1232, !49, i64 1240, !49, i64 1248, !49, i64 1256, !49, i64 1264, !49, i64 1272, !49, i64 1280, !49, i64 1288, !49, i64 1296, !49, i64 1304, !49, i64 1312, !49, i64 1320, !49, i64 1328, !49, i64 1336, !49, i64 1344, !49, i64 1352, !49, i64 1360, !49, i64 1368, !49, i64 1376, !49, i64 1384, !49, i64 1392, !49, i64 1400, !49, i64 1408, !49, i64 1416, !49, i64 1424, !49, i64 1432, !49, i64 1440, !49, i64 1448, !49, i64 1456, !55, i64 1464, !133, i64 1472, !49, i64 1664, !49, i64 1672, !49, i64 1680, !49, i64 1688, !49, i64 1696, !49, i64 1704, !49, i64 1712, !49, i64 1720, !49, i64 1728, !49, i64 1736, !49, i64 1744, !49, i64 1752, !49, i64 1760, !49, i64 1768, !49, i64 1776, !134, i64 1784, !135, i64 1792, !136, i64 1896, !137, i64 1968, !49, i64 2016, !50, i64 2024, !50, i64 2025, !50, i64 2026, !50, i64 2027, !50, i64 2028, !50, i64 2029, !50, i64 2030, !50, i64 2031, !50, i64 2032, !50, i64 2033, !50, i64 2034, !50, i64 2035}
!128 = !{!"asm_out", !49, i64 0, !49, i64 8, !49, i64 16, !129, i64 24, !129, i64 56, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !49, i64 184, !49, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !49, i64 272, !49, i64 280, !49, i64 288, !49, i64 296, !49, i64 304, !49, i64 312, !49, i64 320, !49, i64 328, !49, i64 336, !49, i64 344, !49, i64 352, !49, i64 360}
!129 = !{!"asm_int_op", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24}
!130 = !{!"sched", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !49, i64 184, !49, i64 192, !49, i64 200, !49, i64 208, !49, i64 216, !49, i64 224, !49, i64 232, !49, i64 240, !49, i64 248, !49, i64 256, !49, i64 264, !49, i64 272, !49, i64 280, !49, i64 288}
!131 = !{!"vectorize", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72}
!132 = !{!"addr_space", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48}
!133 = !{!"calls", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96, !49, i64 104, !49, i64 112, !49, i64 120, !49, i64 128, !49, i64 136, !49, i64 144, !49, i64 152, !49, i64 160, !49, i64 168, !49, i64 176, !49, i64 184}
!134 = !{!"c", !49, i64 0}
!135 = !{!"cxx", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !49, i64 64, !49, i64 72, !49, i64 80, !49, i64 88, !49, i64 96}
!136 = !{!"emutls", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40, !49, i64 48, !49, i64 56, !50, i64 64, !50, i64 65}
!137 = !{!"target_option_hooks", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32, !49, i64 40}
!138 = !{!85, !49, i64 56}
!139 = !{!85, !49, i64 72}
!140 = !{!127, !49, i64 736}
!141 = !{!94, !49, i64 64}
!142 = !{!71, !54, i64 144}
!143 = !{!127, !49, i64 712}
!144 = distinct !{!144, !65, !66}
!145 = !{!94, !49, i64 80}
!146 = distinct !{!146, !65, !66}
!147 = distinct !{!147, !65, !66}
!148 = !{!94, !49, i64 48}
!149 = !{!94, !54, i64 56}
!150 = !{!94, !49, i64 88}
!151 = !{!152, !54, i64 0}
!152 = !{!"VEC_gimple_base", !54, i64 0, !54, i64 4, !50, i64 8}
!153 = !{!154, !54, i64 8}
!154 = !{!"param_info", !49, i64 0, !54, i64 8, !50, i64 12, !54, i64 16, !54, i64 20, !49, i64 24}
!155 = !{!94, !54, i64 60}
!156 = !{!152, !54, i64 4}
!157 = distinct !{!157, !65, !66}
!158 = !{!71, !49, i64 48}
!159 = distinct !{!159, !65, !66}
!160 = !{!71, !49, i64 112}
!161 = distinct !{!161, !65, !66}
!162 = !{!85, !49, i64 48}
!163 = !{!85, !49, i64 64}
!164 = !{!85, !49, i64 32}
!165 = !{!71, !49, i64 64}
!166 = !{!71, !49, i64 88}
!167 = !{!71, !49, i64 56}
!168 = distinct !{!168, !65, !66}
!169 = !{!71, !49, i64 80}
!170 = !{!71, !49, i64 184}
!171 = !{!71, !49, i64 160}
!172 = distinct !{!172, !65, !66}
!173 = !{!71, !54, i64 152}
!174 = distinct !{!174, !65, !66}
!175 = distinct !{!175, !65, !66}
!176 = distinct !{!176, !65, !66}
!177 = !{!"function_entry_count", i64 155395}
!178 = !{!"branch_weights", i32 155395, i32 0}
!179 = !{!180, !49, i64 0}
!180 = !{!"_bb_vec_info", !49, i64 0, !49, i64 8, !49, i64 16, !49, i64 24, !49, i64 32}
!181 = !{!"branch_weights", i32 68252, i32 87143}
!182 = !{!"branch_weights", i32 68252, i32 0}
!183 = !{!"branch_weights", i32 25668, i32 63501}
!184 = !{!"branch_weights", i32 61475, i32 2026}
!185 = !{!"branch_weights", i32 27694, i32 61475}
!186 = !{!"branch_weights", i32 0, i32 61475}
!187 = !{!85, !49, i64 40}
!188 = !{!"branch_weights", i32 61475, i32 0}
!189 = !{!190, !49, i64 0}
!190 = !{!"", !49, i64 0, !49, i64 8, !50, i64 16}
!191 = !{!190, !49, i64 8}
!192 = !{!71, !49, i64 72}
!193 = !{!"branch_weights", i32 59449, i32 2026}
!194 = distinct !{!194, !65, !66}
!195 = !{!"branch_weights", i32 59449, i32 0}
!196 = distinct !{!196, !65, !66}
!197 = !{!85, !49, i64 88}
!198 = !{!199, !49, i64 0}
!199 = !{!"gimple_seq_node_d", !49, i64 0, !49, i64 8, !49, i64 16}
!200 = !{!69, !54, i64 4}
!201 = !{!202, !49, i64 0}
!202 = !{!"use_optype_d", !49, i64 0, !203, i64 8}
!203 = !{!"ssa_use_operand_d", !49, i64 0, !49, i64 8, !50, i64 16, !49, i64 24}
!204 = !{!203, !49, i64 24}
!205 = !{!203, !49, i64 0}
!206 = !{!203, !49, i64 8}
!207 = distinct !{!207, !65, !66}
!208 = !{!209, !54, i64 0}
!209 = !{!"VEC_tree_base", !54, i64 0, !54, i64 4, !50, i64 8}
!210 = !{!211, !54, i64 0}
!211 = !{!"VEC_tree_heap", !209, i64 0}
!212 = distinct !{!212, !65, !66}
!213 = distinct !{!213, !65, !66}
!214 = !{!101, !49, i64 8}
!215 = distinct !{!215, !65, !66}
!216 = distinct !{!216, !65, !66}
!217 = !{!71, !49, i64 40}
!218 = !{!71, !49, i64 104}
!219 = distinct !{!219, !65, !66}
!220 = distinct !{!220, !65, !66}
!221 = distinct !{!221, !65, !66}
!222 = !{!79, !54, i64 4}
!223 = distinct !{!223, !65, !66}
!224 = distinct !{!224, !65, !66}
!225 = distinct !{!225, !65, !66}
!226 = distinct !{!226, !65, !66}
