; ModuleID = 'tree-data-ref.c'
source_filename = "tree-data-ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.datadep_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_subscript_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.subscript = type { ptr, ptr, ptr, ptr }
%struct.conflict_function = type { i32, [2 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_data_ref_loc_base = type { i32, i32, [1 x %struct.data_ref_loc_d] }
%struct.data_ref_loc_d = type { ptr, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.rdg_vertex = type { ptr, i8, i8 }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.rdg_vertex_info = type { ptr, i32 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.rdg_edge = type { i32, i32, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.def_optype_d = type { ptr, ptr }
%struct.access_matrix = type { ptr, i32, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.omega_pb_d = type { i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.eqn_d = type { i32, i32, i32, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"#(Data Ref: \0A#  stmt: \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"#  ref: \00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"#  base_object: \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"#  Access function %d: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"#)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"\0A (subscript \0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"  iterations_that_access_an_element_twice_in_A: \00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"  last_conflict: \00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"  iterations_that_access_an_element_twice_in_B: \00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"  (Subscript distance: \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"  )\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"    +\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"    -\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"    =\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"   +=\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"   +-\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"   -=\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"    *\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"indep\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"(Data Dep: \0A\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [11 x i8] c"    (nil)\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"    (don't know)\0A)\0A\00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"    (no dependence)\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"  access_fn_A: \00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"  access_fn_B: \00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"  inner loop index: %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"  loop nest: (\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"  distance_vector: \00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"  direction_vector: \00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"DISTANCE_V (\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"DIRECTION_V (\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.43 = private unnamed_addr constant [20 x i8] c"analyze_innermost: \00", align 1
@.str.44 = private unnamed_addr constant [16 x i8] c"tree-data-ref.c\00", align 1
@.str.45 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.46 = private unnamed_addr constant [31 x i8] c"failed: bit offset alignment.\0A\00", align 1
@.str.47 = private unnamed_addr constant [42 x i8] c"failed: evolution of base is not affine.\0A\00", align 1
@.str.48 = private unnamed_addr constant [44 x i8] c"failed: evolution of offset is not affine.\0A\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.49 = private unnamed_addr constant [10 x i8] c"success.\0A\00", align 1
@.str.50 = private unnamed_addr constant [17 x i8] c"Creating dr for \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"\09base_address: \00", align 1
@.str.52 = private unnamed_addr constant [29 x i8] c"\0A\09offset from base address: \00", align 1
@.str.53 = private unnamed_addr constant [38 x i8] c"\0A\09constant offset from base address: \00", align 1
@.str.54 = private unnamed_addr constant [9 x i8] c"\0A\09step: \00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c"\0A\09aligned to: \00", align 1
@.str.56 = private unnamed_addr constant [16 x i8] c"\0A\09base_object: \00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.57 = private unnamed_addr constant [36 x i8] c"\09FAILED as dr address is invariant\0A\00", align 1
@dependence_stats = internal unnamed_addr global %struct.datadep_stats zeroinitializer, align 4
@.str.58 = private unnamed_addr constant [31 x i8] c"Dependence tester statistics:\0A\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"Number of dependence tests: %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [53 x i8] c"Number of dependence tests classified dependent: %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [55 x i8] c"Number of dependence tests classified independent: %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [45 x i8] c"Number of undetermined dependence tests: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [31 x i8] c"Number of subscript tests: %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [44 x i8] c"Number of undetermined subscript tests: %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [39 x i8] c"Number of same subscript function: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [25 x i8] c"Number of ziv tests: %d\0A\00", align 1
@.str.67 = private unnamed_addr constant [45 x i8] c"Number of ziv tests returning dependent: %d\0A\00", align 1
@.str.68 = private unnamed_addr constant [47 x i8] c"Number of ziv tests returning independent: %d\0A\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Number of ziv tests unimplemented: %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [25 x i8] c"Number of siv tests: %d\0A\00", align 1
@.str.71 = private unnamed_addr constant [45 x i8] c"Number of siv tests returning dependent: %d\0A\00", align 1
@.str.72 = private unnamed_addr constant [47 x i8] c"Number of siv tests returning independent: %d\0A\00", align 1
@.str.73 = private unnamed_addr constant [39 x i8] c"Number of siv tests unimplemented: %d\0A\00", align 1
@.str.74 = private unnamed_addr constant [25 x i8] c"Number of miv tests: %d\0A\00", align 1
@.str.75 = private unnamed_addr constant [45 x i8] c"Number of miv tests returning dependent: %d\0A\00", align 1
@.str.76 = private unnamed_addr constant [47 x i8] c"Number of miv tests returning independent: %d\0A\00", align 1
@.str.77 = private unnamed_addr constant [39 x i8] c"Number of miv tests unimplemented: %d\0A\00", align 1
@.str.78 = private unnamed_addr constant [24 x i8] c"(vertex %d: (%s%s) (in:\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.80 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.82 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c") (out:\00", align 1
@.str.84 = private unnamed_addr constant [4 x i8] c") \0A\00", align 1
@.str.85 = private unnamed_addr constant [5 x i8] c"(%d\0A\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"(rdg\0A\00", align 1
@.str.87 = private unnamed_addr constant [15 x i8] c"no dependence\0A\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"not known\0A\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.91 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.92 = private unnamed_addr constant [8 x i8] c" * x_%u\00", align 1
@.str.93 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.94 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.95 = private unnamed_addr constant [28 x i8] c"(compute_affine_dependence\0A\00", align 1
@.str.96 = private unnamed_addr constant [14 x i8] c"  (stmt_a = \0A\00", align 1
@.str.97 = private unnamed_addr constant [16 x i8] c")\0A  (stmt_b = \0A\00", align 1
@flag_check_data_deps = external local_unnamed_addr global i32, align 4
@.str.98 = private unnamed_addr constant [21 x i8] c"\0A\0ABanerjee Analyzer\0A\00", align 1
@.str.99 = private unnamed_addr constant [16 x i8] c"Omega Analyzer\0A\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"Data ref a:\0A\00", align 1
@.str.101 = private unnamed_addr constant [13 x i8] c"Data ref b:\0A\00", align 1
@.str.102 = private unnamed_addr constant [76 x i8] c"affine dependence test not usable: access function not affine or constant.\0A\00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"(subscript_dependence_tester \0A\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"(analyze_overlapping_iterations \0A\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"  (chrec_a = \00", align 1
@.str.106 = private unnamed_addr constant [16 x i8] c")\0A  (chrec_b = \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.107 = private unnamed_addr constant [27 x i8] c"  (overlap_iterations_a = \00", align 1
@.str.108 = private unnamed_addr constant [29 x i8] c")\0A  (overlap_iterations_b = \00", align 1
@.str.109 = private unnamed_addr constant [25 x i8] c"(analyze_ziv_subscript \0A\00", align 1
@.str.110 = private unnamed_addr constant [45 x i8] c"ziv test failed: difference is non-integer.\0A\00", align 1
@.str.111 = private unnamed_addr constant [25 x i8] c"(analyze_siv_subscript \0A\00", align 1
@.str.112 = private unnamed_addr constant [33 x i8] c"siv test failed: unimplemented.\0A\00", align 1
@.str.113 = private unnamed_addr constant [41 x i8] c"siv test failed: chrec is not positive.\0A\00", align 1
@.str.114 = private unnamed_addr constant [38 x i8] c"siv test failed: chrec not positive.\0A\00", align 1
@.str.115 = private unnamed_addr constant [35 x i8] c"(analyze_subscript_affine_affine \0A\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"affine-affine test failed: too many variables.\0A\00", align 1
@.str.117 = private unnamed_addr constant [43 x i8] c"affine-affine test failed: unimplemented.\0A\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"  (overlaps_a = \00", align 1
@.str.119 = private unnamed_addr constant [19 x i8] c")\0A  (overlaps_b = \00", align 1
@.str.120 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@.str.121 = private unnamed_addr constant [49 x i8] c"overlap steps test failed: no iteration counts.\0A\00", align 1
@.str.122 = private unnamed_addr constant [41 x i8] c"can_use_subscript_aff_aff_for_symbolic \0A\00", align 1
@chrec_not_analyzed_yet = external local_unnamed_addr global ptr, align 8
@.str.123 = private unnamed_addr constant [25 x i8] c"(analyze_miv_subscript \0A\00", align 1
@.str.124 = private unnamed_addr constant [51 x i8] c"analyze_miv_subscript test failed: unimplemented.\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.125 = private unnamed_addr constant [28 x i8] c"(build_classic_dist_vector\0A\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"  dist_vector = (\00", align 1
@.str.127 = private unnamed_addr constant [66 x i8] c"(Dependence relation cannot be represented by distance vector.) \0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.128 = private unnamed_addr constant [10 x i8] c"./omega.h\00", align 1
@.str.129 = private unnamed_addr constant [69 x i8] c"\0A(Number of distance vectors differ: Banerjee has %d, Omega has %d.\0A\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"Banerjee dist vectors:\0A\00", align 1
@.str.131 = private unnamed_addr constant [21 x i8] c"Omega dist vectors:\0A\00", align 1
@.str.132 = private unnamed_addr constant [27 x i8] c"data dependence relation:\0A\00", align 1
@.str.133 = private unnamed_addr constant [71 x i8] c"\0A(Number of direction vectors differ: Banerjee has %d, Omega has %d.)\0A\00", align 1
@.str.134 = private unnamed_addr constant [52 x i8] c"\0A(Dist vectors from the first dependence analyzer:\0A\00", align 1
@.str.135 = private unnamed_addr constant [34 x i8] c"not found in Omega dist vectors:\0A\00", align 1
@.str.136 = private unnamed_addr constant [51 x i8] c"\0A(Dir vectors from the first dependence analyzer:\0A\00", align 1
@.str.137 = private unnamed_addr constant [33 x i8] c"not found in Omega dir vectors:\0A\00", align 1
@.str.138 = private unnamed_addr constant [25 x i8] c"(dependence classified: \00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@reltable.print_direction_vector = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.12 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.13 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.14 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.16 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.15 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.17 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32)], align 4

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !84 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !85
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !84 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !85
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #27
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !84 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !85
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !94
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !95

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #27
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !89
  %11 = load i8, ptr %3, align 1, !tbaa !96
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !84 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !85
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !84 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !84 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !84 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !85
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !98
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !95

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #27
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !97
  store i8 %12, ptr %4, align 1, !tbaa !96
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !84 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #27
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !99
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !99
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !84 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !84 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #27
  %6 = load ptr, ptr %5, align 8, !tbaa !85
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !100
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !84 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #27
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
  br i1 %23, label %7, label %24, !llvm.loop !101

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !84 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_data_references(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !104
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !106

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_data_reference(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %0)
  %4 = load ptr, ptr %1, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %4, i32 noundef 0, i32 noundef 0) #27
  %5 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %0)
  %6 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %7, i32 noundef 0) #27
  %8 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %0)
  %9 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %10, i32 noundef 0) #27
  %11 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  br label %12

12:                                               ; preds = %22, %2
  %13 = phi i64 [ %28, %22 ], [ 0, %2 ]
  %14 = load ptr, ptr %11, align 8, !tbaa !114
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %14, align 8, !tbaa !115
  br label %18

18:                                               ; preds = %12, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %12 ]
  %20 = zext i32 %19 to i64
  %21 = icmp ult i64 %13, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = trunc i64 %13 to i32
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %23)
  %25 = load ptr, ptr %11, align 8, !tbaa !114
  %26 = getelementptr inbounds %struct.VEC_tree_base, ptr %25, i64 0, i32 2, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %27, i32 noundef 0) #27
  %28 = add nuw nsw i64 %13, 1
  br label %12, !llvm.loop !117

29:                                               ; preds = %18
  %30 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_data_references(ptr noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  %3 = icmp eq ptr %0, null
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i32 [ 0, %1 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !104
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %9, %6, %4
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_data_reference(ptr noundef %2, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !106

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_data_dependence_relations(ptr noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  %3 = icmp eq ptr %0, null
  br label %4

4:                                                ; preds = %16, %1
  %5 = phi i32 [ 0, %1 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %0, align 8, !tbaa !118
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %9, %6, %4
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_data_dependence_relation(ptr noundef %2, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !120

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_data_dependence_relations(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !118
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_data_dependence_relation(ptr noundef %0, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !120

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_data_dependence_relation(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 12, i64 1, ptr %0)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !121
  %8 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %9 = icmp eq ptr %7, %8
  %10 = load ptr, ptr %1, align 8, !tbaa !123
  %11 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !124
  br i1 %9, label %13, label %25

13:                                               ; preds = %5
  %14 = icmp eq ptr %10, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %13
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef nonnull %10)
  br label %18

16:                                               ; preds = %13
  %17 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %0)
  br label %18

18:                                               ; preds = %16, %15
  %19 = icmp eq ptr %12, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %18
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef nonnull %12)
  br label %23

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.22, i64 10, i64 1, ptr %0)
  br label %23

23:                                               ; preds = %2, %20, %21
  %24 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 19, i64 1, ptr %0)
  br label %148

25:                                               ; preds = %5
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %10)
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %12)
  %26 = load ptr, ptr %6, align 8, !tbaa !121
  %27 = load ptr, ptr @chrec_known, align 8, !tbaa !85
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 20, i64 1, ptr %0)
  br label %146

31:                                               ; preds = %25
  %32 = icmp eq ptr %26, null
  br i1 %32, label %33, label %146

33:                                               ; preds = %31
  %34 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 3
  %35 = getelementptr inbounds %struct.data_reference, ptr %10, i64 0, i32 5, i32 1
  %36 = getelementptr inbounds %struct.data_reference, ptr %12, i64 0, i32 5, i32 1
  br label %37

37:                                               ; preds = %33, %47
  %38 = phi i64 [ 0, %33 ], [ %59, %47 ]
  %39 = load ptr, ptr %34, align 8, !tbaa !125
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = load i32, ptr %39, align 8, !tbaa !126
  br label %43

43:                                               ; preds = %37, %41
  %44 = phi i32 [ %42, %41 ], [ 0, %37 ]
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %38, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 15, i64 1, ptr %0)
  %49 = load ptr, ptr %35, align 8, !tbaa !114
  %50 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %38
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %51, i32 noundef 0) #27
  %52 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 15, i64 1, ptr %0)
  %53 = load ptr, ptr %36, align 8, !tbaa !114
  %54 = getelementptr inbounds %struct.VEC_tree_base, ptr %53, i64 0, i32 2, i64 %38
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %55, i32 noundef 0) #27
  %56 = load ptr, ptr %34, align 8, !tbaa !125
  %57 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %56, i64 0, i32 2, i64 %38
  %58 = load ptr, ptr %57, align 8, !tbaa !85
  tail call void @dump_subscript(ptr noundef %0, ptr noundef %58)
  %59 = add nuw nsw i64 %38, 1
  br label %37, !llvm.loop !128

60:                                               ; preds = %43
  %61 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 7
  %62 = load i32, ptr %61, align 8, !tbaa !129
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %62)
  %64 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 14, i64 1, ptr %0)
  %65 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  br label %66

66:                                               ; preds = %80, %60
  %67 = phi i32 [ 0, %60 ], [ %83, %80 ]
  %68 = load ptr, ptr %65, align 8, !tbaa !130
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !131
  %72 = icmp ugt i32 %71, %67
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = zext i32 %67 to i64
  %75 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %68, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !85
  br label %77

77:                                               ; preds = %66, %70, %73
  %78 = phi ptr [ %76, %73 ], [ null, %70 ], [ null, %66 ]
  %79 = phi i1 [ false, %73 ], [ true, %70 ], [ true, %66 ]
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load i32, ptr %78, align 8, !tbaa !133
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %81)
  %83 = add i32 %67, 1
  br label %66, !llvm.loop !137

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  %86 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  %87 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 6
  br label %88

88:                                               ; preds = %121, %84
  %89 = phi i64 [ %123, %121 ], [ 0, %84 ]
  %90 = load ptr, ptr %87, align 8, !tbaa !138
  %91 = icmp eq ptr %90, null
  br i1 %91, label %94, label %92

92:                                               ; preds = %88
  %93 = load i32, ptr %90, align 8, !tbaa !139
  br label %94

94:                                               ; preds = %88, %92
  %95 = phi i32 [ %93, %92 ], [ 0, %88 ]
  %96 = zext i32 %95 to i64
  %97 = icmp ult i64 %89, %96
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 5
  br label %124

100:                                              ; preds = %94
  %101 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 19, i64 1, ptr %0)
  %102 = load ptr, ptr %87, align 8, !tbaa !138
  %103 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %102, i64 0, i32 2, i64 %89
  %104 = load ptr, ptr %103, align 8, !tbaa !85
  %105 = load ptr, ptr %85, align 8, !tbaa !130
  %106 = icmp eq ptr %105, null
  br i1 %106, label %109, label %107

107:                                              ; preds = %100
  %108 = load i32, ptr %105, align 8, !tbaa !131
  br label %109

109:                                              ; preds = %100, %107
  %110 = phi i32 [ %108, %107 ], [ 0, %100 ]
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = zext nneg i32 %110 to i64
  br label %114

114:                                              ; preds = %112, %114
  %115 = phi i64 [ 0, %112 ], [ %119, %114 ]
  %116 = getelementptr inbounds i32, ptr %104, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !100
  %118 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %117)
  %119 = add nuw nsw i64 %115, 1
  %120 = icmp eq i64 %119, %113
  br i1 %120, label %121, label %114, !llvm.loop !141

121:                                              ; preds = %114, %109
  %122 = tail call i32 @fputc(i32 10, ptr %0)
  %123 = add nuw nsw i64 %89, 1
  br label %88, !llvm.loop !142

124:                                              ; preds = %98, %143
  %125 = phi i64 [ 0, %98 ], [ %145, %143 ]
  %126 = load ptr, ptr %99, align 8, !tbaa !143
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %126, align 8, !tbaa !139
  br label %130

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %129, %128 ], [ 0, %124 ]
  %132 = zext i32 %131 to i64
  %133 = icmp ult i64 %125, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 20, i64 1, ptr %0)
  %136 = load ptr, ptr %99, align 8, !tbaa !143
  %137 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %136, i64 0, i32 2, i64 %125
  %138 = load ptr, ptr %137, align 8, !tbaa !85
  %139 = load ptr, ptr %85, align 8, !tbaa !130
  %140 = icmp eq ptr %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %134
  %142 = load i32, ptr %139, align 8, !tbaa !131
  br label %143

143:                                              ; preds = %134, %141
  %144 = phi i32 [ %142, %141 ], [ 0, %134 ]
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %138, i32 noundef %144)
  %145 = add nuw nsw i64 %125, 1
  br label %124, !llvm.loop !144

146:                                              ; preds = %130, %31, %29
  %147 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  br label %148

148:                                              ; preds = %146, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_data_reference(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_data_reference(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_subscript(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = load ptr, ptr %1, align 8, !tbaa !145
  %4 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 48, i64 1, ptr %0)
  tail call fastcc void @dump_conflict_function(ptr noundef %0, ptr noundef %3)
  %6 = load i32, ptr %3, align 8, !tbaa !147
  switch i32 %6, label %7 [
    i32 0, label %11
    i32 3, label %11
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !149
  %10 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %0)
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %9, i32 noundef 0) #27
  br label %11

11:                                               ; preds = %2, %2, %7
  %12 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !150
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 48, i64 1, ptr %0)
  tail call fastcc void @dump_conflict_function(ptr noundef %0, ptr noundef %13)
  %15 = load i32, ptr %13, align 8, !tbaa !147
  switch i32 %15, label %16 [
    i32 0, label %20
    i32 3, label %20
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !149
  %19 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %0)
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %18, i32 noundef 0) #27
  br label %20

20:                                               ; preds = %11, %11, %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %0)
  %22 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !151
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %23, i32 noundef 0) #27
  %24 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 4, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_conflict_function(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !84 {
  %3 = load i32, ptr %1, align 8, !tbaa !147
  switch i32 %3, label %4 [
    i32 0, label %7
    i32 3, label %9
  ]

4:                                                ; preds = %2
  %5 = load i32, ptr %1, align 8, !tbaa !147
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %41, label %11

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 14, i64 1, ptr %0)
  br label %41

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 10, i64 1, ptr %0)
  br label %41

11:                                               ; preds = %4, %35
  %12 = phi i64 [ %37, %35 ], [ 0, %4 ]
  %13 = tail call i32 @fputc(i32 91, ptr %0)
  %14 = getelementptr inbounds %struct.conflict_function, ptr %1, i64 0, i32 1, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2, i64 0
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %17, i32 noundef 2) #27
  %18 = icmp eq ptr %15, null
  br label %19

19:                                               ; preds = %31, %11
  %20 = phi i32 [ 1, %11 ], [ %34, %31 ]
  br i1 %18, label %28, label %21

21:                                               ; preds = %19
  %22 = load i32, ptr %15, align 8, !tbaa !115
  %23 = icmp ugt i32 %22, %20
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds %struct.VEC_tree_base, ptr %15, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  br label %28

28:                                               ; preds = %24, %21, %19
  %29 = phi ptr [ %27, %24 ], [ null, %21 ], [ null, %19 ]
  %30 = phi i1 [ false, %24 ], [ true, %21 ], [ true, %19 ]
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 3, i64 1, ptr %0)
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %29, i32 noundef 2) #27
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.92, i32 noundef %20)
  %34 = add i32 %20, 1
  br label %19, !llvm.loop !152

35:                                               ; preds = %28
  %36 = tail call i64 @fwrite(ptr nonnull @.str.90, i64 2, i64 1, ptr %0)
  %37 = add nuw nsw i64 %12, 1
  %38 = load i32, ptr %1, align 8, !tbaa !147
  %39 = zext i32 %38 to i64
  %40 = icmp ult i64 %37, %39
  br i1 %40, label %11, label %41, !llvm.loop !153

41:                                               ; preds = %35, %4, %9, %7
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_direction_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !84 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i64 [ 0, %5 ], [ %19, %16 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !100
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.print_direction_vector, i64 %14)
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.19, %7 ]
  %18 = tail call i64 @fwrite(ptr nonnull %17, i64 5, i64 1, ptr %0)
  %19 = add nuw nsw i64 %8, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %7, !llvm.loop !154

21:                                               ; preds = %16, %3
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_dir_vectors(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !84 {
  %4 = icmp eq ptr %1, null
  br label %5

5:                                                ; preds = %17, %3
  %6 = phi i32 [ 0, %3 ], [ %18, %17 ]
  br i1 %4, label %14, label %7

7:                                                ; preds = %5
  %8 = load i32, ptr %1, align 8, !tbaa !139
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %1, i64 0, i32 2, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  br label %14

14:                                               ; preds = %5, %7, %10
  %15 = phi ptr [ %13, %10 ], [ null, %7 ], [ null, %5 ]
  %16 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %5 ]
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %15, i32 noundef %2)
  %18 = add i32 %6, 1
  br label %5, !llvm.loop !155

19:                                               ; preds = %14
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @print_dist_vectors(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #10 !prof !84 {
  %4 = icmp eq ptr %1, null
  %5 = icmp sgt i32 %2, 0
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %27, %3
  %8 = phi i32 [ 0, %3 ], [ %29, %27 ]
  br i1 %4, label %16, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %1, align 8, !tbaa !139
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %1, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  br label %16

16:                                               ; preds = %7, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %7 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %7 ]
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  br i1 %5, label %20, label %27

20:                                               ; preds = %19, %20
  %21 = phi i64 [ %25, %20 ], [ 0, %19 ]
  %22 = getelementptr inbounds i32, ptr %17, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !100
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %23)
  %25 = add nuw nsw i64 %21, 1
  %26 = icmp eq i64 %25, %6
  br i1 %26, label %27, label %20, !llvm.loop !141

27:                                               ; preds = %20, %19
  %28 = tail call i32 @fputc(i32 10, ptr %0)
  %29 = add i32 %8, 1
  br label %7, !llvm.loop !156

30:                                               ; preds = %16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_data_dependence_relation(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_data_dependence_relation(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_data_dependence_direction(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #10 !prof !84 {
  switch i32 %1, label %17 [
    i32 0, label %3
    i32 1, label %5
    i32 2, label %7
    i32 3, label %9
    i32 4, label %11
    i32 5, label %13
    i32 6, label %15
  ]

3:                                                ; preds = %2
  %4 = tail call i32 @fputc(i32 43, ptr %0)
  br label %17

5:                                                ; preds = %2
  %6 = tail call i32 @fputc(i32 45, ptr %0)
  br label %17

7:                                                ; preds = %2
  %8 = tail call i32 @fputc(i32 61, ptr %0)
  br label %17

9:                                                ; preds = %2
  %10 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %0)
  br label %17

11:                                               ; preds = %2
  %12 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  br label %17

13:                                               ; preds = %2
  %14 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 2, i64 1, ptr %0)
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 @fputc(i32 42, ptr %0)
  br label %17

17:                                               ; preds = %2, %15, %13, %11, %9, %7, %5, %3
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_dist_dir_vectors(ptr nocapture noundef %0, ptr noundef readonly %1) local_unnamed_addr #10 !prof !84 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %90, %2
  %5 = phi i32 [ 0, %2 ], [ %91, %90 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !118
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %92, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !121
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %90

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 9
  %22 = load i8, ptr %21, align 1, !tbaa !157
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %90, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 6
  %26 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 4
  br label %27

27:                                               ; preds = %24, %62
  %28 = phi i32 [ %65, %62 ], [ 0, %24 ]
  %29 = load ptr, ptr %25, align 8, !tbaa !138
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %29, align 8, !tbaa !139
  %33 = icmp ugt i32 %32, %28
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = zext i32 %28 to i64
  %36 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %29, i64 0, i32 2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !85
  br label %38

38:                                               ; preds = %27, %31, %34
  %39 = phi ptr [ %37, %34 ], [ null, %31 ], [ null, %27 ]
  %40 = phi i1 [ false, %34 ], [ true, %31 ], [ true, %27 ]
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 5
  %43 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 4
  br label %66

44:                                               ; preds = %38
  %45 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 12, i64 1, ptr %0)
  %46 = load ptr, ptr %26, align 8, !tbaa !130
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 8, !tbaa !131
  br label %50

50:                                               ; preds = %44, %48
  %51 = phi i32 [ %49, %48 ], [ 0, %44 ]
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = zext nneg i32 %51 to i64
  br label %55

55:                                               ; preds = %53, %55
  %56 = phi i64 [ 0, %53 ], [ %60, %55 ]
  %57 = getelementptr inbounds i32, ptr %39, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !100
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %58)
  %60 = add nuw nsw i64 %56, 1
  %61 = icmp eq i64 %60, %54
  br i1 %61, label %62, label %55, !llvm.loop !141

62:                                               ; preds = %55, %50
  %63 = tail call i32 @fputc(i32 10, ptr %0)
  %64 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  %65 = add i32 %28, 1
  br label %27, !llvm.loop !158

66:                                               ; preds = %41, %86
  %67 = phi i32 [ %89, %86 ], [ 0, %41 ]
  %68 = load ptr, ptr %42, align 8, !tbaa !143
  %69 = icmp eq ptr %68, null
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i32, ptr %68, align 8, !tbaa !139
  %72 = icmp ugt i32 %71, %67
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = zext i32 %67 to i64
  %75 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %68, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !85
  br label %77

77:                                               ; preds = %66, %70, %73
  %78 = phi ptr [ %76, %73 ], [ null, %70 ], [ null, %66 ]
  %79 = phi i1 [ false, %73 ], [ true, %70 ], [ true, %66 ]
  br i1 %79, label %90, label %80

80:                                               ; preds = %77
  %81 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 13, i64 1, ptr %0)
  %82 = load ptr, ptr %43, align 8, !tbaa !130
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32, ptr %82, align 8, !tbaa !131
  br label %86

86:                                               ; preds = %80, %84
  %87 = phi i32 [ %85, %84 ], [ 0, %80 ]
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %78, i32 noundef %87)
  %88 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  %89 = add i32 %67, 1
  br label %66, !llvm.loop !159

90:                                               ; preds = %77, %20, %16
  %91 = add i32 %5, 1
  br label %4, !llvm.loop !160

92:                                               ; preds = %13
  %93 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_ddrs(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = icmp eq ptr %1, null
  br label %4

4:                                                ; preds = %16, %2
  %5 = phi i32 [ 0, %2 ], [ %17, %16 ]
  br i1 %3, label %13, label %6

6:                                                ; preds = %4
  %7 = load i32, ptr %1, align 8, !tbaa !118
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %1, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %4, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %4 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %4 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call void @dump_data_dependence_relation(ptr noundef %0, ptr noundef %14)
  %17 = add i32 %5, 1
  br label %4, !llvm.loop !161

18:                                               ; preds = %13
  %19 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @split_constant_offset(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 !prof !162 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #27
  store ptr %0, ptr %1, align 8, !tbaa !85
  %11 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  store ptr %11, ptr %2, align 8, !tbaa !85
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #27
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %14 = icmp ne ptr %13, %12
  %15 = load ptr, ptr @chrec_known, align 8
  %16 = icmp ne ptr %15, %12
  %17 = select i1 %14, i1 %16, i1 false, !prof !163
  br i1 %17, label %18, label %33, !prof !163

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = load i64, ptr %12, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  store i32 %23, ptr %8, align 4, !tbaa !100
  call void @extract_ops_from_tree(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #27
  %24 = load ptr, ptr %4, align 8, !tbaa !85
  %25 = load i32, ptr %8, align 4, !tbaa !100
  %26 = load ptr, ptr %5, align 8, !tbaa !85
  %27 = call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %20, ptr noundef %24, i32 noundef %25, ptr noundef %26, ptr noundef nonnull %6, ptr noundef nonnull %7), !range !164
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29, !prof !165

29:                                               ; preds = %18
  %30 = load ptr, ptr %6, align 8, !tbaa !85
  %31 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %30) #27
  store ptr %31, ptr %1, align 8, !tbaa !85
  %32 = load ptr, ptr %7, align 8, !tbaa !85
  store ptr %32, ptr %2, align 8, !tbaa !85
  br label %33

33:                                               ; preds = %18, %29, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret void
}

declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @split_constant_offset_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #11 !prof !166 !PGOFuncName !167 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  store ptr null, ptr %4, align 8, !tbaa !85
  store ptr null, ptr %5, align 8, !tbaa !85
  switch i32 %2, label %198 [
    i32 23, label %17
    i32 66, label %21
    i32 63, label %22
    i32 64, label %22
    i32 65, label %30
    i32 121, label %41
    i32 141, label %91
    i32 116, label %167
    i32 113, label %167
  ], !prof !168

17:                                               ; preds = %6
  %18 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #27
  store ptr %18, ptr %4, align 8, !tbaa !85
  %19 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !85
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %1) #27
  store ptr %20, ptr %5, align 8, !tbaa !85
  br label %198

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %6, %6, %21
  %23 = phi i32 [ %2, %6 ], [ 63, %21 ], [ %2, %6 ]
  call void @split_constant_offset(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9)
  call void @split_constant_offset(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %10)
  %24 = load ptr, ptr %7, align 8, !tbaa !85
  %25 = load ptr, ptr %8, align 8, !tbaa !85
  %26 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %24, ptr noundef %25) #27
  store ptr %26, ptr %4, align 8, !tbaa !85
  %27 = load ptr, ptr %9, align 8, !tbaa !85
  %28 = load ptr, ptr %10, align 8, !tbaa !85
  %29 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef %23, ptr noundef %27, ptr noundef %28) #27
  store ptr %29, ptr %5, align 8, !tbaa !85
  br label %198

30:                                               ; preds = %6
  %31 = load i64, ptr %3, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %198, !prof !169

34:                                               ; preds = %30
  call void @split_constant_offset(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9)
  %35 = load ptr, ptr %7, align 8, !tbaa !85
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %35, ptr noundef nonnull %3) #27
  store ptr %36, ptr %4, align 8, !tbaa !85
  %37 = load ptr, ptr %9, align 8, !tbaa !85
  %38 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !85
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef nonnull %3) #27
  %40 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %37, ptr noundef %39) #27
  store ptr %40, ptr %5, align 8, !tbaa !85
  br label %198

41:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #27
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %89 [
    i16 42, label %46
    i16 41, label %46
    i16 45, label %46
    i16 46, label %46
    i16 118, label %46
    i16 43, label %46
    i16 44, label %46
  ], !prof !170

46:                                               ; preds = %41, %41, %41, %41, %41, %41, %41
  %47 = call ptr @get_inner_reference(ptr noundef nonnull %43, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i8 noundef zeroext 0) #27
  %48 = load i64, ptr %13, align 8, !tbaa !171
  %49 = and i64 %48, 7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %89

51:                                               ; preds = %46
  %52 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %47) #27
  %53 = load i64, ptr %13, align 8, !tbaa !171
  %54 = sdiv i64 %53, 8
  %55 = call ptr @size_int_kind(i64 noundef %54, i32 noundef 1) #27
  store ptr %55, ptr %9, align 8, !tbaa !85
  %56 = load ptr, ptr %11, align 8, !tbaa !85
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58

58:                                               ; preds = %51
  call void @split_constant_offset(ptr noundef nonnull %56, ptr noundef nonnull %11, ptr noundef nonnull %10)
  %59 = load ptr, ptr %10, align 8, !tbaa !85
  %60 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %55, ptr noundef %59) #27
  store ptr %60, ptr %9, align 8, !tbaa !85
  %61 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !96
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %70 [
    i16 10, label %65
    i16 12, label %65
  ]

65:                                               ; preds = %58, %58
  %66 = load ptr, ptr @sizetype_tab, align 16, !tbaa !85
  %67 = load ptr, ptr %11, align 8, !tbaa !85
  %68 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %66, ptr noundef %67) #27
  %69 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %62, ptr noundef %52, ptr noundef %68) #27
  br label %74

70:                                               ; preds = %58
  %71 = load ptr, ptr %11, align 8, !tbaa !85
  %72 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %62, ptr noundef %71) #27
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %62, ptr noundef %52, ptr noundef %72) #27
  br label %74

74:                                               ; preds = %65, %70, %51
  %75 = phi ptr [ %69, %65 ], [ %73, %70 ], [ %52, %51 ]
  %76 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %75) #27
  store ptr %76, ptr %7, align 8, !tbaa !85
  br label %77

77:                                               ; preds = %81, %74
  %78 = phi ptr [ %0, %74 ], [ %83, %81 ]
  %79 = load i64, ptr %78, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %84 [
    i16 10, label %81
    i16 12, label %81
  ]

81:                                               ; preds = %77, %77
  %82 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !96
  br label %77, !llvm.loop !172

84:                                               ; preds = %77
  %85 = call i64 @int_size_in_bytes(ptr noundef nonnull %78) #27
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  store ptr %76, ptr %4, align 8, !tbaa !85
  %88 = load ptr, ptr %9, align 8, !tbaa !85
  store ptr %88, ptr %5, align 8, !tbaa !85
  br label %89

89:                                               ; preds = %41, %84, %46, %87
  %90 = phi i8 [ 1, %87 ], [ 0, %46 ], [ 0, %84 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  br label %198

91:                                               ; preds = %6
  %92 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !96
  %94 = load i32, ptr %93, align 8
  %95 = and i32 %94, 255
  %96 = icmp eq i32 %95, 6
  br i1 %96, label %97, label %198, !prof !173

97:                                               ; preds = %91
  %98 = zext nneg i32 %95 to i64
  %99 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !100
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !171
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106, !prof !174

105:                                              ; preds = %97
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %106

106:                                              ; preds = %105, %97
  %107 = getelementptr inbounds i8, ptr %93, i64 %103
  %108 = getelementptr inbounds ptr, ptr %107, i64 1
  %109 = load ptr, ptr %108, align 8, !tbaa !85
  store ptr %109, ptr %7, align 8, !tbaa !85
  %110 = load i32, ptr %93, align 8
  %111 = trunc i32 %110 to i8
  switch i8 %111, label %114 [
    i8 6, label %112
    i8 1, label %112
    i8 8, label %115
  ], !prof !175

112:                                              ; preds = %106, %106
  %113 = lshr i32 %110, 16
  br label %115

114:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1446, ptr noundef nonnull @.str.45) #27
  br label %115

115:                                              ; preds = %114, %112, %106
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ], [ 59, %106 ]
  %117 = zext nneg i32 %116 to i64
  %118 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %117
  %119 = load i8, ptr %118, align 1, !tbaa !96
  %120 = icmp eq i8 %119, 3
  br i1 %120, label %121, label %141, !prof !176

121:                                              ; preds = %115
  %122 = load i32, ptr %93, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -1
  %125 = icmp ult i32 %124, 9
  tail call void @llvm.assume(i1 %125)
  %126 = zext nneg i32 %123 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !100
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !171
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !177

133:                                              ; preds = %121
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %134

134:                                              ; preds = %133, %121
  %135 = getelementptr inbounds i8, ptr %93, i64 %131
  %136 = getelementptr inbounds ptr, ptr %135, i64 1
  %137 = load ptr, ptr %136, align 8, !tbaa !85
  %138 = load i64, ptr %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = and i32 %139, 65535
  br label %141

141:                                              ; preds = %115, %134
  %142 = phi i32 [ %140, %134 ], [ %116, %115 ]
  %143 = getelementptr inbounds %struct.gimple_statement_base, ptr %93, i64 0, i32 3
  %144 = load i32, ptr %143, align 4, !tbaa !96
  %145 = icmp ugt i32 %144, 2
  br i1 %145, label %146, label %164, !prof !174

146:                                              ; preds = %141
  %147 = load i32, ptr %93, align 8
  %148 = and i32 %147, 255
  %149 = add nsw i32 %148, -10
  %150 = icmp ult i32 %149, -9
  br i1 %150, label %164, label %151

151:                                              ; preds = %146
  %152 = zext nneg i32 %148 to i64
  %153 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %152
  %154 = load i32, ptr %153, align 4, !tbaa !100
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !171
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %160

160:                                              ; preds = %159, %151
  %161 = getelementptr inbounds i8, ptr %93, i64 %157
  %162 = getelementptr inbounds ptr, ptr %161, i64 2
  %163 = load ptr, ptr %162, align 8, !tbaa !85
  br label %164

164:                                              ; preds = %141, %146, %160
  %165 = phi ptr [ null, %141 ], [ %163, %160 ], [ null, %146 ]
  store ptr %165, ptr %8, align 8, !tbaa !85
  %166 = tail call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %0, ptr noundef %109, i32 noundef %142, ptr noundef %165, ptr noundef nonnull %4, ptr noundef nonnull %5), !range !164
  br label %198

167:                                              ; preds = %6, %6
  %168 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %169 = load ptr, ptr %168, align 8, !tbaa !96
  %170 = load i64, ptr %169, align 8
  %171 = trunc i64 %170 to i16
  switch i16 %171, label %198 [
    i16 10, label %184
    i16 12, label %184
    i16 6, label %172
    i16 7, label %172
    i16 8, label %172
  ], !prof !178

172:                                              ; preds = %167, %167, %167
  %173 = and i64 %170, 2097152
  %174 = icmp eq i64 %173, 0
  %175 = load i32, ptr @flag_wrapv, align 4
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %174, i1 %176, i1 false, !prof !169
  %178 = load i32, ptr @flag_trapv, align 4
  %179 = icmp eq i32 %178, 0
  %180 = select i1 %177, i1 %179, i1 false, !prof !169
  %181 = load i32, ptr @flag_strict_overflow, align 4
  %182 = icmp ne i32 %181, 0
  %183 = select i1 %180, i1 %182, i1 false, !prof !169
  br i1 %183, label %184, label %198, !prof !169

184:                                              ; preds = %172, %167, %167
  %185 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %186 = load i32, ptr %185, align 4
  %187 = and i32 %186, 1023
  %188 = getelementptr inbounds %struct.tree_type, ptr %169, i64 0, i32 6
  %189 = load i32, ptr %188, align 4
  %190 = and i32 %189, 1023
  %191 = icmp ult i32 %187, %190
  br i1 %191, label %198, label %192, !prof !179

192:                                              ; preds = %184
  %193 = load i64, ptr %0, align 8
  %194 = trunc i64 %193 to i16
  switch i16 %194, label %198 [
    i16 10, label %195
    i16 12, label %195
    i16 6, label %195
    i16 7, label %195
    i16 8, label %195
  ], !prof !178

195:                                              ; preds = %192, %192, %192, %192, %192
  call void @split_constant_offset(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %196 = load ptr, ptr %7, align 8, !tbaa !85
  %197 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %196) #27
  store ptr %197, ptr %4, align 8, !tbaa !85
  br label %198

198:                                              ; preds = %184, %172, %167, %6, %195, %192, %164, %91, %30, %89, %34, %22, %17
  %199 = phi i8 [ %90, %89 ], [ 1, %34 ], [ 1, %22 ], [ 1, %17 ], [ 0, %30 ], [ %166, %164 ], [ 0, %91 ], [ 1, %195 ], [ 0, %192 ], [ 0, %6 ], [ 0, %167 ], [ 0, %172 ], [ 0, %184 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  ret i8 %199
}

declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @dr_analyze_innermost(ptr nocapture noundef %0) local_unnamed_addr #12 !prof !180 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.affine_iv, align 8
  %19 = alloca %struct.affine_iv, align 8
  %20 = load ptr, ptr %0, align 8, !tbaa !107
  %21 = getelementptr inbounds %struct.gimple_statement_base, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !96
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !181

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !182
  br label %27

27:                                               ; preds = %1, %24
  %28 = phi ptr [ %26, %24 ], [ null, %1 ]
  %29 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %18) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %19) #27
  %31 = icmp eq ptr %28, null
  br i1 %31, label %35, label %32, !prof !181

32:                                               ; preds = %27
  %33 = load i32, ptr %28, align 8, !tbaa !133
  %34 = icmp eq i32 %33, 0
  br label %35

35:                                               ; preds = %32, %27
  %36 = phi i1 [ true, %27 ], [ %34, %32 ]
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !prof !184

39:                                               ; preds = %35
  %40 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %41 = and i32 %40, 8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 19, i64 1, ptr nonnull %37)
  br label %45

45:                                               ; preds = %43, %39, %35
  %46 = call ptr @get_inner_reference(ptr noundef %30, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef nonnull %17, i8 noundef zeroext 0) #27
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !181

48:                                               ; preds = %45
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 742, ptr noundef nonnull @.str.45) #27
  br label %49

49:                                               ; preds = %45, %48
  %50 = load i64, ptr %13, align 8, !tbaa !171
  %51 = and i64 %50, 7
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %62, label %53, !prof !184

53:                                               ; preds = %49
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %55 = icmp eq ptr %54, null
  br i1 %55, label %220, label %56

56:                                               ; preds = %53
  %57 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %220, label %60

60:                                               ; preds = %56
  %61 = call i64 @fwrite(ptr nonnull @.str.46, i64 30, i64 1, ptr nonnull %54)
  br label %220

62:                                               ; preds = %49
  %63 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %46) #27
  br i1 %36, label %83, label %64, !prof !184

64:                                               ; preds = %62
  %65 = load ptr, ptr %21, align 8, !tbaa !96
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !182
  br label %70

70:                                               ; preds = %64, %67
  %71 = phi ptr [ %69, %67 ], [ null, %64 ]
  %72 = call zeroext i8 @simple_iv(ptr noundef %28, ptr noundef %71, ptr noundef %63, ptr noundef nonnull %18, i8 noundef zeroext 0) #27
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %70
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %76 = icmp eq ptr %75, null
  br i1 %76, label %220, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %220, label %81

81:                                               ; preds = %77
  %82 = call i64 @fwrite(ptr nonnull @.str.47, i64 41, i64 1, ptr nonnull %75)
  br label %220

83:                                               ; preds = %62
  store ptr %63, ptr %18, align 8, !tbaa !185
  %84 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  %85 = getelementptr inbounds %struct.affine_iv, ptr %18, i64 0, i32 1
  store ptr %84, ptr %85, align 8, !tbaa !187
  %86 = getelementptr inbounds %struct.affine_iv, ptr %18, i64 0, i32 2
  store i8 1, ptr %86, align 8, !tbaa !188
  br label %87

87:                                               ; preds = %70, %83
  %88 = load ptr, ptr %14, align 8, !tbaa !85
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %92, !prof !189

90:                                               ; preds = %87
  %91 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  br label %112

92:                                               ; preds = %87
  br i1 %36, label %112, label %93, !prof !169

93:                                               ; preds = %92
  %94 = load ptr, ptr %21, align 8, !tbaa !96
  %95 = icmp eq ptr %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.basic_block_def, ptr %94, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8, !tbaa !182
  br label %99

99:                                               ; preds = %93, %96
  %100 = phi ptr [ %98, %96 ], [ null, %93 ]
  %101 = call zeroext i8 @simple_iv(ptr noundef %28, ptr noundef %100, ptr noundef nonnull %88, ptr noundef nonnull %19, i8 noundef zeroext 0) #27
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %116

103:                                              ; preds = %99
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %105 = icmp eq ptr %104, null
  br i1 %105, label %220, label %106

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %220, label %110

110:                                              ; preds = %106
  %111 = call i64 @fwrite(ptr nonnull @.str.48, i64 43, i64 1, ptr nonnull %104)
  br label %220

112:                                              ; preds = %92, %90
  %113 = phi ptr [ %91, %90 ], [ %88, %92 ]
  store ptr %113, ptr %19, align 8, !tbaa !185
  %114 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  %115 = getelementptr inbounds %struct.affine_iv, ptr %19, i64 0, i32 1
  store ptr %114, ptr %115, align 8, !tbaa !187
  br label %116

116:                                              ; preds = %112, %99
  %117 = load i64, ptr %13, align 8, !tbaa !171
  %118 = sdiv i64 %117, 8
  %119 = call ptr @size_int_kind(i64 noundef %118, i32 noundef 1) #27
  %120 = load ptr, ptr %18, align 8, !tbaa !185
  %121 = getelementptr inbounds %struct.tree_common, ptr %120, i64 0, i32 2
  %122 = load ptr, ptr %121, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #27
  %123 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  %124 = call ptr @tree_strip_nop_conversions(ptr noundef %120) #27
  %125 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %126 = icmp ne ptr %125, %124
  %127 = load ptr, ptr @chrec_known, align 8
  %128 = icmp ne ptr %127, %124
  %129 = select i1 %126, i1 %128, i1 false, !prof !163
  br i1 %129, label %130, label %145, !prof !163

130:                                              ; preds = %116
  %131 = getelementptr inbounds %struct.tree_common, ptr %124, i64 0, i32 2
  %132 = load ptr, ptr %131, align 8, !tbaa !96
  %133 = load i64, ptr %124, align 8
  %134 = trunc i64 %133 to i32
  %135 = and i32 %134, 65535
  store i32 %135, ptr %11, align 4, !tbaa !100
  call void @extract_ops_from_tree(ptr noundef nonnull %124, ptr noundef nonnull %11, ptr noundef nonnull %7, ptr noundef nonnull %8) #27
  %136 = load ptr, ptr %7, align 8, !tbaa !85
  %137 = load i32, ptr %11, align 4, !tbaa !100
  %138 = load ptr, ptr %8, align 8, !tbaa !85
  %139 = call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %132, ptr noundef %136, i32 noundef %137, ptr noundef %138, ptr noundef nonnull %9, ptr noundef nonnull %10) #28, !range !164
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %145, label %141, !prof !165

141:                                              ; preds = %130
  %142 = load ptr, ptr %9, align 8, !tbaa !85
  %143 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %122, ptr noundef %142) #27
  store ptr %143, ptr %18, align 8, !tbaa !85
  %144 = load ptr, ptr %10, align 8, !tbaa !85
  br label %145

145:                                              ; preds = %116, %130, %141
  %146 = phi ptr [ %123, %130 ], [ %144, %141 ], [ %123, %116 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  %147 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %119, ptr noundef %146) #27
  %148 = load ptr, ptr %19, align 8, !tbaa !185
  %149 = getelementptr inbounds %struct.tree_common, ptr %148, i64 0, i32 2
  %150 = load ptr, ptr %149, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %151 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #27
  %152 = call ptr @tree_strip_nop_conversions(ptr noundef %148) #27
  %153 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %154 = icmp ne ptr %153, %152
  %155 = load ptr, ptr @chrec_known, align 8
  %156 = icmp ne ptr %155, %152
  %157 = select i1 %154, i1 %156, i1 false, !prof !163
  br i1 %157, label %158, label %173, !prof !163

158:                                              ; preds = %145
  %159 = getelementptr inbounds %struct.tree_common, ptr %152, i64 0, i32 2
  %160 = load ptr, ptr %159, align 8, !tbaa !96
  %161 = load i64, ptr %152, align 8
  %162 = trunc i64 %161 to i32
  %163 = and i32 %162, 65535
  store i32 %163, ptr %6, align 4, !tbaa !100
  call void @extract_ops_from_tree(ptr noundef nonnull %152, ptr noundef nonnull %6, ptr noundef nonnull %2, ptr noundef nonnull %3) #27
  %164 = load ptr, ptr %2, align 8, !tbaa !85
  %165 = load i32, ptr %6, align 4, !tbaa !100
  %166 = load ptr, ptr %3, align 8, !tbaa !85
  %167 = call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %160, ptr noundef %164, i32 noundef %165, ptr noundef %166, ptr noundef nonnull %4, ptr noundef nonnull %5) #28, !range !164
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %173, label %169, !prof !165

169:                                              ; preds = %158
  %170 = load ptr, ptr %4, align 8, !tbaa !85
  %171 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %150, ptr noundef %170) #27
  store ptr %171, ptr %19, align 8, !tbaa !85
  %172 = load ptr, ptr %5, align 8, !tbaa !85
  br label %173

173:                                              ; preds = %145, %158, %169
  %174 = phi ptr [ %151, %158 ], [ %172, %169 ], [ %151, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  %175 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %147, ptr noundef %174) #27
  %176 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !85
  %177 = getelementptr inbounds %struct.affine_iv, ptr %18, i64 0, i32 1
  %178 = load ptr, ptr %177, align 8, !tbaa !187
  %179 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %176, ptr noundef %178) #27
  %180 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !85
  %181 = getelementptr inbounds %struct.affine_iv, ptr %19, i64 0, i32 1
  %182 = load ptr, ptr %181, align 8, !tbaa !187
  %183 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %180, ptr noundef %182) #27
  %184 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %179, ptr noundef %183) #27
  %185 = load ptr, ptr %18, align 8, !tbaa !185
  %186 = call ptr @tree_strip_nop_conversions(ptr noundef %185) #27
  %187 = getelementptr inbounds %struct.tree_common, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !96
  %189 = load i64, ptr %188, align 8
  %190 = trunc i64 %189 to i16
  switch i16 %190, label %199 [
    i16 10, label %191
    i16 12, label %191
  ], !prof !190

191:                                              ; preds = %173, %173
  %192 = load i64, ptr %186, align 8
  %193 = and i64 %192, 65535
  %194 = icmp eq i64 %193, 121
  br i1 %194, label %195, label %199, !prof !191

195:                                              ; preds = %191
  %196 = getelementptr inbounds %struct.tree_exp, ptr %186, i64 0, i32 3
  %197 = load ptr, ptr %196, align 8, !tbaa !96
  %198 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %197) #27
  br label %199

199:                                              ; preds = %191, %173, %195
  %200 = phi ptr [ %198, %195 ], [ %185, %173 ], [ %186, %191 ]
  %201 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  store ptr %200, ptr %201, align 8, !tbaa !192
  %202 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !85
  %203 = load ptr, ptr %19, align 8, !tbaa !185
  %204 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %202, ptr noundef %203) #27
  %205 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  store ptr %204, ptr %205, align 8, !tbaa !193
  %206 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  store ptr %175, ptr %206, align 8, !tbaa !194
  %207 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  store ptr %184, ptr %207, align 8, !tbaa !195
  %208 = load ptr, ptr %19, align 8, !tbaa !185
  %209 = call i64 @highest_pow2_factor(ptr noundef %208) #27
  %210 = call ptr @size_int_kind(i64 noundef %209, i32 noundef 0) #27
  %211 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 4
  store ptr %210, ptr %211, align 8, !tbaa !196
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %213 = icmp eq ptr %212, null
  br i1 %213, label %220, label %214, !prof !184

214:                                              ; preds = %199
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %216 = and i32 %215, 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %214
  %219 = call i64 @fwrite(ptr nonnull @.str.49, i64 9, i64 1, ptr nonnull %212)
  br label %220

220:                                              ; preds = %199, %214, %218, %103, %106, %110, %74, %77, %81, %53, %56, %60
  %221 = phi i8 [ 0, %60 ], [ 0, %56 ], [ 0, %53 ], [ 0, %81 ], [ 0, %77 ], [ 0, %74 ], [ 0, %110 ], [ 0, %106 ], [ 0, %103 ], [ 1, %218 ], [ 1, %214 ], [ 1, %199 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %19) #27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %18) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  ret i8 %221
}

declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @highest_pow2_factor(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind willreturn uwtable
define dso_local void @free_data_ref(ptr nocapture noundef %0) local_unnamed_addr #13 !prof !84 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef %3)
  br label %6

6:                                                ; preds = %1, %5
  store ptr null, ptr %2, align 8, !tbaa !85
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @create_data_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #12 !prof !180 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9, !prof !184

9:                                                ; preds = %4
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 16, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %15, ptr noundef %1, i32 noundef 2) #27
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %17 = tail call i32 @fputc(i32 10, ptr %16)
  br label %18

18:                                               ; preds = %13, %9, %4
  %19 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #27
  store ptr %2, ptr %19, align 8, !tbaa !107
  %20 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 1
  store ptr %1, ptr %20, align 8, !tbaa !112
  %21 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 3
  store i8 %3, ptr %21, align 8, !tbaa !197
  %22 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %19), !range !164
  %23 = load ptr, ptr %19, align 8, !tbaa !107
  %24 = getelementptr inbounds %struct.gimple_statement_base, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27, !prof !181

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !182
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi ptr [ %29, %27 ], [ null, %18 ]
  %32 = load ptr, ptr %20, align 8, !tbaa !112
  %33 = tail call ptr @unshare_expr(ptr noundef %32) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  %34 = icmp eq ptr %0, null
  br i1 %34, label %45, label %35, !prof !184

35:                                               ; preds = %30
  %36 = tail call ptr @loop_preheader_edge(ptr noundef nonnull %0) #27
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load ptr, ptr @cfun, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !198
  br label %42

42:                                               ; preds = %38, %35
  %43 = phi ptr [ %41, %38 ], [ %36, %35 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !85
  br label %45

45:                                               ; preds = %42, %30
  %46 = phi ptr [ %44, %42 ], [ null, %30 ]
  br label %47

47:                                               ; preds = %81, %45
  %48 = phi ptr [ null, %45 ], [ %82, %81 ]
  %49 = phi ptr [ %33, %45 ], [ %84, %81 ]
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %52 [
    i16 42, label %53
    i16 41, label %53
    i16 45, label %53
    i16 46, label %53
    i16 118, label %53
    i16 43, label %53
    i16 44, label %53
  ], !prof !200

52:                                               ; preds = %47
  br i1 %34, label %116, label %85, !prof !184

53:                                               ; preds = %47, %47, %47, %47, %47, %47, %47
  %54 = and i64 %50, 65535
  %55 = icmp eq i64 %54, 45
  br i1 %55, label %56, label %81, !prof !201

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 1
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  br i1 %34, label %76, label %59, !prof !202

59:                                               ; preds = %56
  %60 = tail call ptr @analyze_scalar_evolution(ptr noundef %31, ptr noundef %58) #27
  %61 = tail call ptr @instantiate_scev(ptr noundef %46, ptr noundef %31, ptr noundef %60) #27
  %62 = icmp eq ptr %48, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.VEC_tree_base, ptr %48, i64 0, i32 1
  %65 = load i32, ptr %64, align 4, !tbaa !203
  %66 = load i32, ptr %48, align 8, !tbaa !115
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63, %59
  %69 = tail call ptr @vec_heap_p_reserve(ptr noundef %48, i32 noundef 1) #27
  br label %70

70:                                               ; preds = %68, %63
  %71 = phi ptr [ %69, %68 ], [ %48, %63 ]
  %72 = load i32, ptr %71, align 8, !tbaa !115
  %73 = add i32 %72, 1
  store i32 %73, ptr %71, align 8, !tbaa !115
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.VEC_tree_base, ptr %71, i64 0, i32 2, i64 %74
  store ptr %61, ptr %75, align 8, !tbaa !85
  br label %76

76:                                               ; preds = %70, %56
  %77 = phi ptr [ %48, %56 ], [ %71, %70 ]
  %78 = getelementptr inbounds %struct.tree_common, ptr %58, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !96
  %80 = tail call ptr @build_int_cst(ptr noundef %79, i64 noundef 0) #27
  store ptr %80, ptr %57, align 8, !tbaa !96
  br label %81

81:                                               ; preds = %76, %53
  %82 = phi ptr [ %77, %76 ], [ %48, %53 ]
  %83 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  br label %47, !llvm.loop !204

85:                                               ; preds = %52
  %86 = trunc i64 %50 to i32
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -47
  %89 = icmp ult i32 %88, 3
  br i1 %89, label %90, label %116

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !96
  %93 = tail call ptr @analyze_scalar_evolution(ptr noundef %31, ptr noundef %92) #27
  %94 = tail call ptr @instantiate_scev(ptr noundef %46, ptr noundef %31, ptr noundef %93) #27
  %95 = tail call ptr @initial_condition(ptr noundef %94) #27
  store ptr %95, ptr %5, align 8, !tbaa !85
  call void @split_constant_offset(ptr noundef %95, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %96 = load ptr, ptr %5, align 8, !tbaa !85
  %97 = getelementptr inbounds %struct.tree_common, ptr %96, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !96
  %99 = load ptr, ptr %6, align 8, !tbaa !85
  %100 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %98, ptr noundef %99) #27
  %101 = tail call ptr @chrec_replace_initial_condition(ptr noundef %94, ptr noundef %100) #27
  store ptr %96, ptr %91, align 8, !tbaa !96
  %102 = icmp eq ptr %48, null
  br i1 %102, label %108, label %103

103:                                              ; preds = %90
  %104 = getelementptr inbounds %struct.VEC_tree_base, ptr %48, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !203
  %106 = load i32, ptr %48, align 8, !tbaa !115
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %90
  %109 = tail call ptr @vec_heap_p_reserve(ptr noundef %48, i32 noundef 1) #27
  br label %110

110:                                              ; preds = %108, %103
  %111 = phi ptr [ %109, %108 ], [ %48, %103 ]
  %112 = load i32, ptr %111, align 8, !tbaa !115
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !115
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds %struct.VEC_tree_base, ptr %111, i64 0, i32 2, i64 %114
  store ptr %101, ptr %115, align 8, !tbaa !85
  br label %116

116:                                              ; preds = %52, %85, %110
  %117 = phi ptr [ %48, %52 ], [ %111, %110 ], [ %48, %85 ]
  %118 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 5
  store ptr %33, ptr %118, align 8, !tbaa !113
  %119 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 5, i32 1
  store ptr %117, ptr %119, align 8, !tbaa !114
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  %120 = load ptr, ptr %20, align 8, !tbaa !112
  %121 = tail call ptr @get_base_address(ptr noundef %120) #27
  %122 = load i64, ptr %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = and i32 %123, 65535
  %125 = add nsw i32 %124, -47
  %126 = icmp ult i32 %125, 3
  br i1 %126, label %127, label %137, !prof !205

127:                                              ; preds = %116
  %128 = getelementptr inbounds %struct.tree_exp, ptr %121, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !96
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 141
  br i1 %132, label %133, label %137, !prof !206

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.tree_ssa_name, ptr %129, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !96
  %136 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 6
  store ptr %135, ptr %136, align 8, !tbaa !207
  br label %137

137:                                              ; preds = %116, %127, %133
  %138 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %139 = icmp eq ptr %138, null
  br i1 %139, label %175, label %140, !prof !184

140:                                              ; preds = %137
  %141 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %142 = and i32 %141, 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %175, label %144

144:                                              ; preds = %140
  %145 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 15, i64 1, ptr nonnull %138)
  %146 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %147 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4
  %148 = load ptr, ptr %147, align 8, !tbaa !192
  tail call void @print_generic_expr(ptr noundef %146, ptr noundef %148, i32 noundef 2) #27
  %149 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %150 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 28, i64 1, ptr %149)
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %152 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !193
  tail call void @print_generic_expr(ptr noundef %151, ptr noundef %153, i32 noundef 2) #27
  %154 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %155 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 37, i64 1, ptr %154)
  %156 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %157 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !194
  tail call void @print_generic_expr(ptr noundef %156, ptr noundef %158, i32 noundef 2) #27
  %159 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %160 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 8, i64 1, ptr %159)
  %161 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %162 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !195
  tail call void @print_generic_expr(ptr noundef %161, ptr noundef %163, i32 noundef 2) #27
  %164 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %165 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 14, i64 1, ptr %164)
  %166 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %167 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 4, i32 4
  %168 = load ptr, ptr %167, align 8, !tbaa !196
  tail call void @print_generic_expr(ptr noundef %166, ptr noundef %168, i32 noundef 2) #27
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %170 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 15, i64 1, ptr %169)
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %172 = load ptr, ptr %118, align 8, !tbaa !113
  tail call void @print_generic_expr(ptr noundef %171, ptr noundef %172, i32 noundef 2) #27
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %174 = tail call i32 @fputc(i32 10, ptr %173)
  br label %175

175:                                              ; preds = %144, %140, %137
  ret ptr %19
}

declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @dr_may_alias_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #12 !prof !208 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !192
  %5 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !192
  %7 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !113
  %9 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !113
  %11 = tail call ptr @get_base_address(ptr noundef %8) #27
  %12 = tail call ptr @get_base_address(ptr noundef %10) #27
  %13 = load i64, ptr %11, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !100
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %18, label %26, !prof !209

18:                                               ; preds = %2
  %19 = load i64, ptr %12, align 8
  %20 = and i64 %19, 65535
  %21 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !100
  %23 = icmp ne i32 %22, 3
  %24 = icmp eq ptr %11, %12
  %25 = select i1 %23, i1 true, i1 %24, !prof !210
  br i1 %25, label %26, label %142, !prof !211

26:                                               ; preds = %18, %2
  %27 = tail call i32 @operand_equal_p(ptr noundef nonnull %11, ptr noundef %12, i32 noundef 0) #27
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %142, label %29, !prof !212

29:                                               ; preds = %26, %43
  %30 = phi ptr [ %44, %43 ], [ null, %26 ]
  %31 = phi ptr [ %50, %43 ], [ %8, %26 ]
  %32 = load i64, ptr %31, align 8
  %33 = trunc i64 %32 to i16
  switch i16 %33, label %51 [
    i16 42, label %34
    i16 41, label %34
    i16 45, label %34
    i16 46, label %34
    i16 118, label %34
    i16 43, label %34
    i16 44, label %34
  ], !prof !213

34:                                               ; preds = %29, %29, %29, %29, %29, %29, %29
  %35 = icmp eq ptr %30, null
  br i1 %35, label %41, label %36, !prof !214

36:                                               ; preds = %34
  %37 = getelementptr inbounds %struct.VEC_tree_base, ptr %30, i64 0, i32 1
  %38 = load i32, ptr %37, align 4, !tbaa !203
  %39 = load i32, ptr %30, align 8, !tbaa !115
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43, !prof !215

41:                                               ; preds = %36, %34
  %42 = tail call ptr @vec_heap_p_reserve(ptr noundef %30, i32 noundef 1) #27
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi ptr [ %42, %41 ], [ %30, %36 ]
  %45 = load i32, ptr %44, align 8, !tbaa !115
  %46 = add i32 %45, 1
  store i32 %46, ptr %44, align 8, !tbaa !115
  %47 = zext i32 %45 to i64
  %48 = getelementptr inbounds %struct.VEC_tree_base, ptr %44, i64 0, i32 2, i64 %47
  store ptr %31, ptr %48, align 8, !tbaa !85
  %49 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !96
  br label %29, !llvm.loop !216

51:                                               ; preds = %29, %67
  %52 = phi ptr [ %68, %67 ], [ null, %29 ]
  %53 = phi ptr [ %74, %67 ], [ %10, %29 ]
  %54 = load i64, ptr %53, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %56 [
    i16 42, label %58
    i16 41, label %58
    i16 45, label %58
    i16 46, label %58
    i16 118, label %58
    i16 43, label %58
    i16 44, label %58
  ], !prof !213

56:                                               ; preds = %51
  %57 = icmp eq ptr %30, null
  br label %75

58:                                               ; preds = %51, %51, %51, %51, %51, %51, %51
  %59 = icmp eq ptr %52, null
  br i1 %59, label %65, label %60, !prof !214

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.VEC_tree_base, ptr %52, i64 0, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !203
  %63 = load i32, ptr %52, align 8, !tbaa !115
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67, !prof !215

65:                                               ; preds = %60, %58
  %66 = tail call ptr @vec_heap_p_reserve(ptr noundef %52, i32 noundef 1) #27
  br label %67

67:                                               ; preds = %65, %60
  %68 = phi ptr [ %66, %65 ], [ %52, %60 ]
  %69 = load i32, ptr %68, align 8, !tbaa !115
  %70 = add i32 %69, 1
  store i32 %70, ptr %68, align 8, !tbaa !115
  %71 = zext i32 %69 to i64
  %72 = getelementptr inbounds %struct.VEC_tree_base, ptr %68, i64 0, i32 2, i64 %71
  store ptr %53, ptr %72, align 8, !tbaa !85
  %73 = getelementptr inbounds %struct.tree_exp, ptr %53, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !96
  br label %51, !llvm.loop !217

75:                                               ; preds = %119, %56
  br i1 %57, label %78, label %76, !prof !218

76:                                               ; preds = %75
  %77 = load i32, ptr %30, align 8, !tbaa !115
  br label %78

78:                                               ; preds = %76, %75
  %79 = phi i32 [ %77, %76 ], [ 0, %75 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %136, label %81, !prof !219

81:                                               ; preds = %78
  %82 = icmp eq ptr %52, null
  br i1 %82, label %85, label %83, !prof !220

83:                                               ; preds = %81
  %84 = load i32, ptr %52, align 8, !tbaa !115
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %84, %83 ], [ 0, %81 ]
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %136, label %88, !prof !220

88:                                               ; preds = %85
  %89 = load i32, ptr %30, align 8, !tbaa !115
  %90 = add i32 %89, -1
  store i32 %90, ptr %30, align 8, !tbaa !115
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.VEC_tree_base, ptr %30, i64 0, i32 2, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !85
  %94 = load i32, ptr %52, align 8, !tbaa !115
  %95 = add i32 %94, -1
  store i32 %95, ptr %52, align 8, !tbaa !115
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds %struct.VEC_tree_base, ptr %52, i64 0, i32 2, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !85
  %99 = load i64, ptr %93, align 8
  %100 = and i64 %99, 65535
  %101 = trunc i64 %99 to i16
  switch i16 %101, label %112 [
    i16 43, label %102
    i16 44, label %108
  ], !prof !221

102:                                              ; preds = %88
  %103 = load i64, ptr %98, align 8
  %104 = and i64 %103, 65535
  %105 = icmp eq i64 %104, 44
  br i1 %105, label %136, label %106

106:                                              ; preds = %102
  %107 = icmp eq i64 %100, 44
  br i1 %107, label %108, label %112, !prof !220

108:                                              ; preds = %88, %106
  %109 = load i64, ptr %98, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 43
  br i1 %111, label %136, label %112

112:                                              ; preds = %88, %108, %106
  %113 = load i64, ptr %98, align 8
  %114 = xor i64 %113, %99
  %115 = and i64 %114, 65535
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %136, !prof !222

117:                                              ; preds = %112
  %118 = trunc i64 %99 to i16
  switch i16 %118, label %136 [
    i16 45, label %119
    i16 41, label %120
  ], !prof !223

119:                                              ; preds = %117, %120
  br label %75, !llvm.loop !224

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !96
  %123 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 1
  %124 = load ptr, ptr %123, align 8, !tbaa !96
  %125 = tail call i32 @operand_equal_p(ptr noundef %122, ptr noundef %124, i32 noundef 0) #27
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %119, !prof !225

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.tree_exp, ptr %93, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !96
  %130 = getelementptr inbounds %struct.tree_common, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !96
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 65535
  %134 = icmp ne i64 %133, 17
  %135 = zext i1 %134 to i8
  br label %136

136:                                              ; preds = %117, %108, %102, %78, %112, %85, %127
  %137 = phi i8 [ %135, %127 ], [ 0, %85 ], [ 0, %112 ], [ 0, %78 ], [ 1, %102 ], [ 1, %108 ], [ 0, %117 ]
  br i1 %57, label %139, label %138, !prof !226

138:                                              ; preds = %136
  tail call void @free(ptr noundef %30)
  br label %139

139:                                              ; preds = %138, %136
  %140 = icmp eq ptr %52, null
  br i1 %140, label %142, label %141, !prof !226

141:                                              ; preds = %139
  tail call void @free(ptr noundef %52)
  br label %142

142:                                              ; preds = %18, %26, %139, %141
  %143 = phi i8 [ 0, %26 ], [ %137, %139 ], [ %137, %141 ], [ 1, %18 ]
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %273, !prof !227

145:                                              ; preds = %142
  %146 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %147 = load i8, ptr %146, align 8, !tbaa !197
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %161, !prof !228

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %151 = load i8, ptr %150, align 8, !tbaa !197
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %155 = load ptr, ptr %154, align 8, !tbaa !112
  %156 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %157 = load ptr, ptr %156, align 8, !tbaa !112
  %158 = tail call zeroext i8 @refs_output_dependent_p(ptr noundef %155, ptr noundef %157) #27
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %273, label %179

160:                                              ; preds = %149
  br i1 %148, label %172, label %161, !prof !228

161:                                              ; preds = %145, %160
  %162 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %163 = load i8, ptr %162, align 8, !tbaa !197
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %172, !prof !228

165:                                              ; preds = %161
  %166 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %167 = load ptr, ptr %166, align 8, !tbaa !112
  %168 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !112
  %170 = tail call zeroext i8 @refs_anti_dependent_p(ptr noundef %167, ptr noundef %169) #27
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %273, label %179

172:                                              ; preds = %161, %160
  %173 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !112
  %175 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !112
  %177 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %174, ptr noundef %176) #27
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %273, label %179, !prof !212

179:                                              ; preds = %165, %172, %153
  %180 = icmp ne ptr %4, null
  %181 = icmp ne ptr %6, null
  %182 = select i1 %180, i1 %181, i1 false, !prof !229
  br i1 %182, label %183, label %273, !prof !229

183:                                              ; preds = %179
  %184 = load i64, ptr %4, align 8
  %185 = and i64 %184, 65535
  %186 = icmp eq i64 %185, 121
  br i1 %186, label %187, label %198, !prof !230

187:                                              ; preds = %183
  %188 = load i64, ptr %6, align 8
  %189 = and i64 %188, 65535
  %190 = icmp eq i64 %189, 121
  br i1 %190, label %191, label %198, !prof !231

191:                                              ; preds = %187
  %192 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !96
  %194 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !96
  %196 = icmp eq ptr %193, %195
  %197 = zext i1 %196 to i8
  br label %273

198:                                              ; preds = %187, %183
  %199 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %200 = load ptr, ptr %199, align 8, !tbaa !96
  %201 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %202 = load ptr, ptr %201, align 8, !tbaa !96
  %203 = load i64, ptr %200, align 8
  %204 = trunc i64 %203 to i16
  switch i16 %204, label %208 [
    i16 10, label %205
    i16 12, label %205
  ], !prof !232

205:                                              ; preds = %198, %198
  %206 = load i64, ptr %202, align 8
  %207 = trunc i64 %206 to i16
  switch i16 %207, label %208 [
    i16 10, label %209
    i16 12, label %209
  ], !prof !232

208:                                              ; preds = %205, %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 1331, ptr noundef nonnull @.str.45) #27
  br label %209

209:                                              ; preds = %205, %205, %208
  %210 = load i64, ptr %4, align 8
  %211 = and i64 %210, 65535
  %212 = icmp eq i64 %211, 141
  br i1 %212, label %213, label %216, !prof !233

213:                                              ; preds = %209
  %214 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %215 = load ptr, ptr %214, align 8, !tbaa !96
  br label %216

216:                                              ; preds = %213, %209
  %217 = phi ptr [ %215, %213 ], [ null, %209 ]
  %218 = load i64, ptr %6, align 8
  %219 = and i64 %218, 65535
  %220 = icmp eq i64 %219, 141
  br i1 %220, label %221, label %224, !prof !233

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %223 = load ptr, ptr %222, align 8, !tbaa !96
  br label %224

224:                                              ; preds = %221, %216
  %225 = phi ptr [ %223, %221 ], [ null, %216 ]
  %226 = getelementptr inbounds %struct.tree_type, ptr %200, i64 0, i32 6
  %227 = load i32, ptr %226, align 4
  %228 = and i32 %227, 8192
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %272, label %230, !prof !233

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.tree_type, ptr %202, i64 0, i32 6
  %232 = load i32, ptr %231, align 4
  %233 = and i32 %232, 8192
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %272, label %235

235:                                              ; preds = %230
  %236 = load i8, ptr %146, align 8, !tbaa !197
  %237 = icmp eq i8 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %240 = load i8, ptr %239, align 8, !tbaa !197
  %241 = icmp eq i8 %240, 0
  %242 = icmp ne ptr %217, null
  %243 = select i1 %241, i1 %242, i1 false
  br i1 %243, label %246, label %272

244:                                              ; preds = %235
  %245 = icmp eq ptr %217, null
  br i1 %245, label %272, label %246

246:                                              ; preds = %238, %244
  %247 = load i64, ptr %217, align 8
  %248 = and i64 %247, 65535
  %249 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %248
  %250 = load i32, ptr %249, align 4, !tbaa !100
  %251 = icmp eq i32 %250, 3
  %252 = icmp ne ptr %225, null
  %253 = select i1 %251, i1 %252, i1 false
  br i1 %253, label %254, label %272

254:                                              ; preds = %246
  %255 = load i64, ptr %225, align 8
  %256 = and i64 %255, 65535
  %257 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %256
  %258 = load i32, ptr %257, align 4, !tbaa !100
  %259 = icmp ne i32 %258, 3
  %260 = icmp eq ptr %217, %225
  %261 = select i1 %259, i1 true, i1 %260
  br i1 %261, label %272, label %262

262:                                              ; preds = %254
  %263 = getelementptr inbounds %struct.tree_decl_minimal, ptr %217, i64 0, i32 4
  %264 = load ptr, ptr %263, align 8, !tbaa !96
  %265 = load i64, ptr %264, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 29
  br i1 %267, label %268, label %272

268:                                              ; preds = %262
  %269 = getelementptr inbounds %struct.tree_decl_minimal, ptr %225, i64 0, i32 4
  %270 = load ptr, ptr %269, align 8, !tbaa !96
  %271 = icmp eq ptr %264, %270
  br i1 %271, label %273, label %272

272:                                              ; preds = %246, %244, %268, %262, %254, %238, %230, %224
  br label %273

273:                                              ; preds = %172, %165, %153, %268, %179, %142, %272, %191
  %274 = phi i8 [ %197, %191 ], [ 1, %272 ], [ 0, %142 ], [ 1, %179 ], [ 0, %268 ], [ 0, %153 ], [ 0, %165 ], [ 0, %172 ]
  ret i8 %274
}

declare zeroext i8 @refs_output_dependent_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @refs_anti_dependent_p(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @estimated_loop_iterations(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 !prof !84 {
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %0) #27
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 8, !tbaa !234
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %13 = load i8, ptr %12, align 1, !tbaa !235
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi ptr [ %10, %9 ], [ %16, %15 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false)
  br label %19

19:                                               ; preds = %17, %11, %5
  %20 = phi i8 [ 0, %5 ], [ 0, %11 ], [ 1, %17 ]
  ret i8 %20
}

declare void @estimate_numbers_of_iterations_loop(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: cold nounwind uwtable
define dso_local i64 @estimated_loop_iterations_int(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #9 !prof !84 {
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %0) #27
  %3 = icmp eq i8 %1, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %6 = load i8, ptr %5, align 8, !tbaa !234
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12, i32 1
  br label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %13 = load i8, ptr %12, align 1, !tbaa !235
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13
  %17 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 13, i32 1
  br label %18

18:                                               ; preds = %15, %8
  %19 = phi ptr [ %10, %8 ], [ %17, %15 ]
  %20 = phi ptr [ %9, %8 ], [ %16, %15 ]
  %21 = load i64, ptr %20, align 8
  %22 = load i64, ptr %19, align 8
  br label %23

23:                                               ; preds = %18, %4, %11
  %24 = phi i64 [ undef, %11 ], [ undef, %4 ], [ %22, %18 ]
  %25 = phi i64 [ undef, %11 ], [ undef, %4 ], [ %21, %18 ]
  %26 = phi i1 [ true, %11 ], [ true, %4 ], [ false, %18 ]
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %25, i64 %24) #27
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = tail call i64 @double_int_to_shwi(i64 %25, i64 %24) #27
  %32 = tail call i64 @llvm.smax.i64(i64 %31, i64 -1)
  br label %33

33:                                               ; preds = %27, %23, %30
  %34 = phi i64 [ %32, %30 ], [ -1, %23 ], [ -1, %27 ]
  ret i64 %34
}

declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #3

declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local void @compute_all_dependences(ptr noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #11 !prof !84 {
  %5 = alloca i8, align 1
  %6 = icmp eq ptr %0, null
  br label %7

7:                                                ; preds = %30, %4
  %8 = phi i32 [ 0, %4 ], [ %20, %30 ]
  br i1 %6, label %16, label %9, !prof !236

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !104
  %11 = icmp ugt i32 %10, %8
  br i1 %11, label %12, label %16, !prof !237

12:                                               ; preds = %9
  %13 = zext i32 %8 to i64
  %14 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  br label %16

16:                                               ; preds = %7, %9, %12
  %17 = phi ptr [ %15, %12 ], [ null, %9 ], [ null, %7 ]
  %18 = phi i1 [ false, %12 ], [ true, %9 ], [ true, %7 ]
  br i1 %18, label %606, label %19, !prof !238

19:                                               ; preds = %16
  %20 = add i32 %8, 1
  br label %21

21:                                               ; preds = %604, %19
  %22 = phi i32 [ %20, %19 ], [ %605, %604 ]
  br i1 %6, label %30, label %23, !prof !239

23:                                               ; preds = %21
  %24 = load i32, ptr %0, align 8, !tbaa !104
  %25 = icmp ugt i32 %24, %22
  br i1 %25, label %26, label %30, !prof !240

26:                                               ; preds = %23
  %27 = zext i32 %22 to i64
  %28 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  br label %30

30:                                               ; preds = %21, %23, %26
  %31 = phi ptr [ %29, %26 ], [ null, %23 ], [ null, %21 ]
  %32 = phi i1 [ false, %26 ], [ true, %23 ], [ true, %21 ]
  br i1 %32, label %7, label %33, !prof !241, !llvm.loop !242

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 3
  %35 = load i8, ptr %34, align 8, !tbaa !197
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37, !prof !243

37:                                               ; preds = %33
  %38 = icmp ne i8 %3, 0
  %39 = getelementptr inbounds %struct.data_reference, ptr %31, i64 0, i32 3
  %40 = load i8, ptr %39, align 8, !tbaa !197
  %41 = icmp eq i8 %40, 0
  %42 = or i1 %38, %41
  br i1 %42, label %43, label %604, !prof !244

43:                                               ; preds = %37, %33
  %44 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef %17, ptr noundef %31, ptr noundef %2)
  %45 = load ptr, ptr %1, align 8, !tbaa !85
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47, !prof !244

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %45, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !245
  %50 = load i32, ptr %45, align 8, !tbaa !118
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %43, %47
  %53 = tail call ptr @vec_heap_p_reserve(ptr noundef %45, i32 noundef 1) #27
  store ptr %53, ptr %1, align 8, !tbaa !85
  br label %54

54:                                               ; preds = %47, %52
  %55 = icmp eq ptr %2, null
  %56 = load ptr, ptr %1, align 8, !tbaa !85
  %57 = load i32, ptr %56, align 8, !tbaa !118
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !118
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %56, i64 0, i32 2, i64 %59
  store ptr %44, ptr %60, align 8, !tbaa !85
  br i1 %55, label %604, label %61, !prof !244

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2, i64 0, i32 2, i64 0
  %63 = load ptr, ptr %62, align 8, !tbaa !85
  %64 = load ptr, ptr %44, align 8, !tbaa !123
  %65 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !124
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %68 = icmp eq ptr %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %61
  %70 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %85, label %73

73:                                               ; preds = %69
  %74 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr nonnull %67)
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %76 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 13, i64 1, ptr %75)
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %78 = load ptr, ptr %64, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %77, ptr noundef %78, i32 noundef 0, i32 noundef 0) #27
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %80 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 15, i64 1, ptr %79)
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %82 = load ptr, ptr %66, align 8, !tbaa !107
  tail call void @print_gimple_stmt(ptr noundef %81, ptr noundef %82, i32 noundef 0, i32 noundef 0) #27
  %83 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %84 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %83)
  br label %85

85:                                               ; preds = %73, %69, %61
  %86 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !121
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %595

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 10
  %91 = load i8, ptr %90, align 2, !tbaa !246
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %595

93:                                               ; preds = %89
  %94 = load i32, ptr @dependence_stats, align 4, !tbaa !247
  %95 = add nsw i32 %94, 1
  store i32 %95, ptr @dependence_stats, align 4, !tbaa !247
  %96 = tail call fastcc zeroext i8 @access_functions_are_affine_or_constant_p(ptr noundef %64, ptr noundef %63), !range !164
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %562, label %98

98:                                               ; preds = %93
  %99 = tail call fastcc zeroext i8 @access_functions_are_affine_or_constant_p(ptr noundef %66, ptr noundef %63), !range !164
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %562, label %101

101:                                              ; preds = %98
  %102 = load i32, ptr @flag_check_data_deps, align 4, !tbaa !100
  %103 = icmp eq i32 %102, 0
  tail call fastcc void @subscript_dependence_tester(ptr noundef nonnull %44, ptr noundef %63)
  br i1 %103, label %595, label %104

104:                                              ; preds = %101
  %105 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %106 = icmp eq ptr %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %109 = and i32 %108, 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %107
  %112 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 20, i64 1, ptr nonnull %105)
  %113 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @dump_data_dependence_relation(ptr noundef %113, ptr noundef nonnull %44)
  br label %114

114:                                              ; preds = %111, %107, %104
  %115 = load ptr, ptr %86, align 8, !tbaa !121
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %595

117:                                              ; preds = %114
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #27
  %118 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !138
  %120 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 5
  %121 = load ptr, ptr %120, align 8, !tbaa !143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %120, i8 0, i64 16, i1 false)
  store i8 1, ptr %5, align 1, !tbaa !96
  %122 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 3
  br label %123

123:                                              ; preds = %133, %117
  %124 = phi i64 [ %146, %133 ], [ 0, %117 ]
  %125 = load ptr, ptr %122, align 8, !tbaa !125
  %126 = icmp eq ptr %125, null
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = load i32, ptr %125, align 8, !tbaa !126
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ %128, %127 ], [ 0, %123 ]
  %131 = zext i32 %130 to i64
  %132 = icmp ult i64 %124, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load ptr, ptr %44, align 8, !tbaa !123
  %135 = getelementptr inbounds %struct.data_reference, ptr %134, i64 0, i32 5, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !114
  %137 = getelementptr inbounds %struct.VEC_tree_base, ptr %136, i64 0, i32 2, i64 %124
  %138 = load ptr, ptr %137, align 8, !tbaa !85
  %139 = load ptr, ptr %65, align 8, !tbaa !124
  %140 = getelementptr inbounds %struct.data_reference, ptr %139, i64 0, i32 5, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !114
  %142 = getelementptr inbounds %struct.VEC_tree_base, ptr %141, i64 0, i32 2, i64 %124
  %143 = load ptr, ptr %142, align 8, !tbaa !85
  %144 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %138, ptr noundef %143) #27
  %145 = icmp eq i8 %144, 0
  %146 = add nuw nsw i64 %124, 1
  br i1 %145, label %193, label %123, !llvm.loop !249

147:                                              ; preds = %129
  %148 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !130
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151

151:                                              ; preds = %147
  %152 = load i32, ptr %149, align 8, !tbaa !131
  %153 = sext i32 %152 to i64
  %154 = shl nsw i64 %153, 2
  br label %155

155:                                              ; preds = %151, %147
  %156 = phi i64 [ %154, %151 ], [ 0, %147 ]
  %157 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %156) #27
  tail call fastcc void @save_dist_v(ptr noundef %44, ptr noundef %157)
  %158 = load ptr, ptr %148, align 8, !tbaa !130
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %155
  %161 = load i32, ptr %158, align 8, !tbaa !131
  %162 = sext i32 %161 to i64
  %163 = shl nsw i64 %162, 2
  br label %164

164:                                              ; preds = %160, %155
  %165 = phi i64 [ %163, %160 ], [ 0, %155 ]
  %166 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %165) #27
  %167 = load ptr, ptr %148, align 8, !tbaa !130
  %168 = icmp eq ptr %167, null
  br label %169

169:                                              ; preds = %177, %164
  %170 = phi i64 [ %179, %177 ], [ 0, %164 ]
  br i1 %168, label %173, label %171

171:                                              ; preds = %169
  %172 = load i32, ptr %167, align 8, !tbaa !131
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %172, %171 ], [ 0, %169 ]
  %175 = zext i32 %174 to i64
  %176 = icmp ult i64 %170, %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %173
  %178 = getelementptr inbounds i32, ptr %166, i64 %170
  store i32 2, ptr %178, align 4, !tbaa !100
  %179 = add nuw nsw i64 %170, 1
  br label %169, !llvm.loop !250

180:                                              ; preds = %173
  tail call fastcc void @save_dir_v(ptr noundef %44, ptr noundef %166)
  %181 = load ptr, ptr %148, align 8, !tbaa !130
  %182 = icmp eq ptr %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %180
  %184 = load i32, ptr %181, align 8, !tbaa !131
  %185 = shl i32 %184, 1
  br label %186

186:                                              ; preds = %183, %180
  %187 = phi i32 [ %185, %183 ], [ 0, %180 ]
  br i1 %182, label %190, label %188

188:                                              ; preds = %186
  %189 = load i32, ptr %181, align 8, !tbaa !131
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i32 [ %189, %188 ], [ 0, %186 ]
  %192 = tail call ptr @omega_alloc_problem(i32 noundef %187, i32 noundef %191) #27
  br label %227

193:                                              ; preds = %133
  %194 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !130
  %196 = icmp eq ptr %195, null
  br i1 %196, label %200, label %197

197:                                              ; preds = %193
  %198 = load i32, ptr %195, align 8, !tbaa !131
  %199 = shl i32 %198, 1
  br label %200

200:                                              ; preds = %197, %193
  %201 = phi i32 [ %199, %197 ], [ 0, %193 ]
  br i1 %196, label %204, label %202

202:                                              ; preds = %200
  %203 = load i32, ptr %195, align 8, !tbaa !131
  br label %204

204:                                              ; preds = %202, %200
  %205 = phi i32 [ %203, %202 ], [ 0, %200 ]
  %206 = tail call ptr @omega_alloc_problem(i32 noundef %201, i32 noundef %205) #27
  %207 = load ptr, ptr %44, align 8, !tbaa !123
  %208 = load ptr, ptr %65, align 8, !tbaa !124
  %209 = call fastcc zeroext i8 @init_omega_for_ddr_1(ptr noundef %207, ptr noundef %208, ptr noundef nonnull %44, ptr noundef %206, ptr noundef nonnull %5), !range !164
  tail call fastcc void @omega_free_problem(ptr noundef %206)
  %210 = icmp eq i8 %209, 0
  %211 = load i8, ptr %5, align 1
  %212 = icmp eq i8 %211, 0
  %213 = select i1 %210, i1 true, i1 %212
  br i1 %213, label %234, label %214

214:                                              ; preds = %204
  %215 = load ptr, ptr %194, align 8, !tbaa !130
  %216 = icmp eq ptr %215, null
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i32, ptr %215, align 8, !tbaa !131
  %219 = shl i32 %218, 1
  br label %220

220:                                              ; preds = %217, %214
  %221 = phi i32 [ %219, %217 ], [ 0, %214 ]
  br i1 %216, label %224, label %222

222:                                              ; preds = %220
  %223 = load i32, ptr %215, align 8, !tbaa !131
  br label %224

224:                                              ; preds = %222, %220
  %225 = phi i32 [ %223, %222 ], [ 0, %220 ]
  %226 = tail call ptr @omega_alloc_problem(i32 noundef %221, i32 noundef %225) #27
  br label %227

227:                                              ; preds = %224, %190
  %228 = phi ptr [ %44, %190 ], [ %65, %224 ]
  %229 = phi ptr [ %65, %190 ], [ %44, %224 ]
  %230 = phi ptr [ %192, %190 ], [ %226, %224 ]
  %231 = load ptr, ptr %228, align 8, !tbaa !85
  %232 = load ptr, ptr %229, align 8, !tbaa !85
  %233 = call fastcc zeroext i8 @init_omega_for_ddr_1(ptr noundef %231, ptr noundef %232, ptr noundef nonnull %44, ptr noundef %230, ptr noundef nonnull %5), !range !164
  tail call fastcc void @omega_free_problem(ptr noundef %230)
  br label %234

234:                                              ; preds = %227, %204
  %235 = phi i8 [ %209, %204 ], [ %233, %227 ]
  %236 = icmp eq i8 %235, 0
  br i1 %236, label %561, label %237

237:                                              ; preds = %234
  %238 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %239 = icmp eq ptr %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %237
  %241 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %242 = and i32 %241, 8
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %240
  %245 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 15, i64 1, ptr nonnull %238)
  %246 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @dump_data_dependence_relation(ptr noundef %246, ptr noundef nonnull %44)
  br label %247

247:                                              ; preds = %244, %240, %237
  %248 = load i8, ptr %5, align 1, !tbaa !96
  %249 = icmp eq i8 %248, 0
  br i1 %249, label %560, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr @stderr, align 8, !tbaa !85
  %252 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %253 = icmp eq ptr %252, null
  %254 = load i32, ptr @dump_flags, align 4
  %255 = and i32 %254, 8
  %256 = icmp eq i32 %255, 0
  %257 = select i1 %253, i1 true, i1 %256
  %258 = select i1 %257, ptr %251, ptr %252
  %259 = icmp eq ptr %119, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %250
  %261 = load i32, ptr %119, align 8, !tbaa !139
  br label %262

262:                                              ; preds = %260, %250
  %263 = phi i32 [ %261, %260 ], [ 0, %250 ]
  %264 = load ptr, ptr %118, align 8, !tbaa !138
  %265 = icmp eq ptr %264, null
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = load i32, ptr %264, align 8, !tbaa !139
  br label %268

268:                                              ; preds = %266, %262
  %269 = phi i32 [ %267, %266 ], [ 0, %262 ]
  %270 = icmp eq i32 %263, %269
  br i1 %270, label %353, label %271

271:                                              ; preds = %268
  br i1 %259, label %274, label %272

272:                                              ; preds = %271
  %273 = load i32, ptr %119, align 8, !tbaa !139
  br label %274

274:                                              ; preds = %272, %271
  %275 = phi i32 [ %273, %272 ], [ 0, %271 ]
  br i1 %265, label %278, label %276

276:                                              ; preds = %274
  %277 = load i32, ptr %264, align 8, !tbaa !139
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %277, %276 ], [ 0, %274 ]
  %280 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.129, i32 noundef %275, i32 noundef %279)
  %281 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 23, i64 1, ptr %258)
  %282 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  br label %283

283:                                              ; preds = %312, %278
  %284 = phi i32 [ 0, %278 ], [ %314, %312 ]
  br i1 %259, label %292, label %285

285:                                              ; preds = %283
  %286 = load i32, ptr %119, align 8, !tbaa !139
  %287 = icmp ugt i32 %286, %284
  br i1 %287, label %288, label %292

288:                                              ; preds = %285
  %289 = zext i32 %284 to i64
  %290 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %119, i64 0, i32 2, i64 %289
  %291 = load ptr, ptr %290, align 8, !tbaa !85
  br label %292

292:                                              ; preds = %288, %285, %283
  %293 = phi ptr [ %291, %288 ], [ null, %285 ], [ null, %283 ]
  %294 = phi i1 [ false, %288 ], [ true, %285 ], [ true, %283 ]
  br i1 %294, label %315, label %295

295:                                              ; preds = %292
  %296 = load ptr, ptr %282, align 8, !tbaa !130
  %297 = icmp eq ptr %296, null
  br i1 %297, label %300, label %298

298:                                              ; preds = %295
  %299 = load i32, ptr %296, align 8, !tbaa !131
  br label %300

300:                                              ; preds = %298, %295
  %301 = phi i32 [ %299, %298 ], [ 0, %295 ]
  %302 = icmp sgt i32 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %300
  %304 = zext nneg i32 %301 to i64
  br label %305

305:                                              ; preds = %303, %305
  %306 = phi i64 [ 0, %303 ], [ %310, %305 ]
  %307 = getelementptr inbounds i32, ptr %293, i64 %306
  %308 = load i32, ptr %307, align 4, !tbaa !100
  %309 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.93, i32 noundef %308)
  %310 = add nuw nsw i64 %306, 1
  %311 = icmp eq i64 %310, %304
  br i1 %311, label %312, label %305, !llvm.loop !141

312:                                              ; preds = %305, %300
  %313 = tail call i32 @fputc(i32 10, ptr %258)
  %314 = add i32 %284, 1
  br label %283, !llvm.loop !251

315:                                              ; preds = %292
  %316 = tail call i64 @fwrite(ptr nonnull @.str.131, i64 20, i64 1, ptr %258)
  %317 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  br label %318

318:                                              ; preds = %347, %315
  %319 = phi i64 [ %349, %347 ], [ 0, %315 ]
  %320 = load ptr, ptr %118, align 8, !tbaa !138
  %321 = icmp eq ptr %320, null
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = load i32, ptr %320, align 8, !tbaa !139
  br label %324

324:                                              ; preds = %322, %318
  %325 = phi i32 [ %323, %322 ], [ 0, %318 ]
  %326 = zext i32 %325 to i64
  %327 = icmp ult i64 %319, %326
  br i1 %327, label %328, label %350

328:                                              ; preds = %324
  %329 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %320, i64 0, i32 2, i64 %319
  %330 = load ptr, ptr %329, align 8, !tbaa !85
  %331 = load ptr, ptr %317, align 8, !tbaa !130
  %332 = icmp eq ptr %331, null
  br i1 %332, label %335, label %333

333:                                              ; preds = %328
  %334 = load i32, ptr %331, align 8, !tbaa !131
  br label %335

335:                                              ; preds = %333, %328
  %336 = phi i32 [ %334, %333 ], [ 0, %328 ]
  %337 = icmp sgt i32 %336, 0
  br i1 %337, label %338, label %347

338:                                              ; preds = %335
  %339 = zext nneg i32 %336 to i64
  br label %340

340:                                              ; preds = %338, %340
  %341 = phi i64 [ 0, %338 ], [ %345, %340 ]
  %342 = getelementptr inbounds i32, ptr %330, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !100
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.93, i32 noundef %343)
  %345 = add nuw nsw i64 %341, 1
  %346 = icmp eq i64 %345, %339
  br i1 %346, label %347, label %340, !llvm.loop !141

347:                                              ; preds = %340, %335
  %348 = tail call i32 @fputc(i32 10, ptr %258)
  %349 = add nuw nsw i64 %319, 1
  br label %318, !llvm.loop !252

350:                                              ; preds = %324
  %351 = tail call i64 @fwrite(ptr nonnull @.str.132, i64 26, i64 1, ptr %258)
  tail call void @dump_data_dependence_relation(ptr noundef %258, ptr noundef %44)
  %352 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %258)
  br label %559

353:                                              ; preds = %268
  %354 = icmp eq ptr %121, null
  br i1 %354, label %357, label %355

355:                                              ; preds = %353
  %356 = load i32, ptr %121, align 8, !tbaa !139
  br label %357

357:                                              ; preds = %355, %353
  %358 = phi i32 [ %356, %355 ], [ 0, %353 ]
  %359 = load ptr, ptr %120, align 8, !tbaa !143
  %360 = icmp eq ptr %359, null
  br i1 %360, label %363, label %361

361:                                              ; preds = %357
  %362 = load i32, ptr %359, align 8, !tbaa !139
  br label %363

363:                                              ; preds = %361, %357
  %364 = phi i32 [ %362, %361 ], [ 0, %357 ]
  %365 = icmp eq i32 %358, %364
  br i1 %365, label %366, label %369

366:                                              ; preds = %363
  %367 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  %368 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  br label %379

369:                                              ; preds = %363
  br i1 %354, label %372, label %370

370:                                              ; preds = %369
  %371 = load i32, ptr %121, align 8, !tbaa !139
  br label %372

372:                                              ; preds = %370, %369
  %373 = phi i32 [ %371, %370 ], [ 0, %369 ]
  br i1 %360, label %376, label %374

374:                                              ; preds = %372
  %375 = load i32, ptr %359, align 8, !tbaa !139
  br label %376

376:                                              ; preds = %374, %372
  %377 = phi i32 [ %375, %374 ], [ 0, %372 ]
  %378 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %258, ptr noundef nonnull @.str.133, i32 noundef %373, i32 noundef %377)
  br label %559

379:                                              ; preds = %366, %453
  %380 = phi i64 [ 0, %366 ], [ %454, %453 ]
  %381 = load ptr, ptr %118, align 8, !tbaa !138
  %382 = icmp eq ptr %381, null
  br i1 %382, label %385, label %383

383:                                              ; preds = %379
  %384 = load i32, ptr %381, align 8, !tbaa !139
  br label %385

385:                                              ; preds = %383, %379
  %386 = phi i32 [ %384, %383 ], [ 0, %379 ]
  %387 = zext i32 %386 to i64
  %388 = icmp ult i64 %380, %387
  br i1 %388, label %392, label %389

389:                                              ; preds = %385
  %390 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  %391 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 4
  br label %455

392:                                              ; preds = %385
  %393 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %381, i64 0, i32 2, i64 %380
  %394 = load ptr, ptr %393, align 8, !tbaa !85
  br label %395

395:                                              ; preds = %427, %392
  %396 = phi i32 [ 0, %392 ], [ %428, %427 ]
  br i1 %259, label %404, label %397

397:                                              ; preds = %395
  %398 = load i32, ptr %119, align 8, !tbaa !139
  %399 = icmp ugt i32 %398, %396
  br i1 %399, label %400, label %404

400:                                              ; preds = %397
  %401 = zext i32 %396 to i64
  %402 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %119, i64 0, i32 2, i64 %401
  %403 = load ptr, ptr %402, align 8, !tbaa !85
  br label %404

404:                                              ; preds = %400, %397, %395
  %405 = phi ptr [ %403, %400 ], [ null, %397 ], [ null, %395 ]
  %406 = phi i1 [ false, %400 ], [ true, %397 ], [ true, %395 ]
  br i1 %406, label %429, label %407

407:                                              ; preds = %404
  %408 = load ptr, ptr %367, align 8, !tbaa !130
  %409 = icmp eq ptr %408, null
  br i1 %409, label %412, label %410

410:                                              ; preds = %407
  %411 = load i32, ptr %408, align 8, !tbaa !131
  br label %412

412:                                              ; preds = %410, %407
  %413 = phi i32 [ %411, %410 ], [ 0, %407 ]
  %414 = icmp sgt i32 %413, 0
  br i1 %414, label %415, label %429

415:                                              ; preds = %412
  %416 = zext nneg i32 %413 to i64
  br label %420

417:                                              ; preds = %420
  %418 = add nuw nsw i64 %421, 1
  %419 = icmp eq i64 %418, %416
  br i1 %419, label %429, label %420, !llvm.loop !253

420:                                              ; preds = %415, %417
  %421 = phi i64 [ 0, %415 ], [ %418, %417 ]
  %422 = getelementptr inbounds i32, ptr %405, i64 %421
  %423 = load i32, ptr %422, align 4, !tbaa !100
  %424 = getelementptr inbounds i32, ptr %394, i64 %421
  %425 = load i32, ptr %424, align 4, !tbaa !100
  %426 = icmp eq i32 %423, %425
  br i1 %426, label %417, label %427

427:                                              ; preds = %420
  %428 = add i32 %396, 1
  br label %395, !llvm.loop !254

429:                                              ; preds = %404, %412, %417
  br i1 %259, label %432, label %430

430:                                              ; preds = %429
  %431 = load i32, ptr %119, align 8, !tbaa !139
  br label %432

432:                                              ; preds = %430, %429
  %433 = phi i32 [ %431, %430 ], [ 0, %429 ]
  %434 = icmp eq i32 %396, %433
  br i1 %434, label %435, label %453

435:                                              ; preds = %432
  %436 = tail call i64 @fwrite(ptr nonnull @.str.134, i64 51, i64 1, ptr %258)
  %437 = load ptr, ptr %368, align 8, !tbaa !130
  %438 = icmp eq ptr %437, null
  br i1 %438, label %441, label %439

439:                                              ; preds = %435
  %440 = load i32, ptr %437, align 8, !tbaa !131
  br label %441

441:                                              ; preds = %439, %435
  %442 = phi i32 [ %440, %439 ], [ 0, %435 ]
  tail call void @print_dist_vectors(ptr noundef %258, ptr noundef %119, i32 noundef %442)
  %443 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 33, i64 1, ptr %258)
  %444 = load ptr, ptr %118, align 8, !tbaa !138
  %445 = load ptr, ptr %368, align 8, !tbaa !130
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447

447:                                              ; preds = %441
  %448 = load i32, ptr %445, align 8, !tbaa !131
  br label %449

449:                                              ; preds = %447, %441
  %450 = phi i32 [ %448, %447 ], [ 0, %441 ]
  tail call void @print_dist_vectors(ptr noundef %258, ptr noundef %444, i32 noundef %450)
  %451 = tail call i64 @fwrite(ptr nonnull @.str.132, i64 26, i64 1, ptr %258)
  tail call void @dump_data_dependence_relation(ptr noundef %258, ptr noundef %44)
  %452 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %258)
  br label %453

453:                                              ; preds = %449, %432
  %454 = add nuw nsw i64 %380, 1
  br label %379, !llvm.loop !255

455:                                              ; preds = %389, %557
  %456 = phi i64 [ 0, %389 ], [ %558, %557 ]
  %457 = load ptr, ptr %120, align 8, !tbaa !143
  %458 = icmp eq ptr %457, null
  br i1 %458, label %461, label %459

459:                                              ; preds = %455
  %460 = load i32, ptr %457, align 8, !tbaa !139
  br label %461

461:                                              ; preds = %459, %455
  %462 = phi i32 [ %460, %459 ], [ 0, %455 ]
  %463 = zext i32 %462 to i64
  %464 = icmp ult i64 %456, %463
  br i1 %464, label %465, label %560

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %457, i64 0, i32 2, i64 %456
  %467 = load ptr, ptr %466, align 8, !tbaa !85
  br label %468

468:                                              ; preds = %500, %465
  %469 = phi i32 [ 0, %465 ], [ %501, %500 ]
  br i1 %354, label %477, label %470

470:                                              ; preds = %468
  %471 = load i32, ptr %121, align 8, !tbaa !139
  %472 = icmp ugt i32 %471, %469
  br i1 %472, label %473, label %477

473:                                              ; preds = %470
  %474 = zext i32 %469 to i64
  %475 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %121, i64 0, i32 2, i64 %474
  %476 = load ptr, ptr %475, align 8, !tbaa !85
  br label %477

477:                                              ; preds = %473, %470, %468
  %478 = phi ptr [ %476, %473 ], [ null, %470 ], [ null, %468 ]
  %479 = phi i1 [ false, %473 ], [ true, %470 ], [ true, %468 ]
  br i1 %479, label %502, label %480

480:                                              ; preds = %477
  %481 = load ptr, ptr %390, align 8, !tbaa !130
  %482 = icmp eq ptr %481, null
  br i1 %482, label %485, label %483

483:                                              ; preds = %480
  %484 = load i32, ptr %481, align 8, !tbaa !131
  br label %485

485:                                              ; preds = %483, %480
  %486 = phi i32 [ %484, %483 ], [ 0, %480 ]
  %487 = icmp sgt i32 %486, 0
  br i1 %487, label %488, label %502

488:                                              ; preds = %485
  %489 = zext nneg i32 %486 to i64
  br label %493

490:                                              ; preds = %493
  %491 = add nuw nsw i64 %494, 1
  %492 = icmp eq i64 %491, %489
  br i1 %492, label %502, label %493, !llvm.loop !253

493:                                              ; preds = %488, %490
  %494 = phi i64 [ 0, %488 ], [ %491, %490 ]
  %495 = getelementptr inbounds i32, ptr %478, i64 %494
  %496 = load i32, ptr %495, align 4, !tbaa !100
  %497 = getelementptr inbounds i32, ptr %467, i64 %494
  %498 = load i32, ptr %497, align 4, !tbaa !100
  %499 = icmp eq i32 %496, %498
  br i1 %499, label %490, label %500

500:                                              ; preds = %493
  %501 = add i32 %469, 1
  br label %468, !llvm.loop !256

502:                                              ; preds = %477, %485, %490
  br i1 %259, label %505, label %503

503:                                              ; preds = %502
  %504 = load i32, ptr %119, align 8, !tbaa !139
  br label %505

505:                                              ; preds = %503, %502
  %506 = phi i32 [ %504, %503 ], [ 0, %502 ]
  %507 = icmp eq i32 %469, %506
  br i1 %507, label %508, label %557

508:                                              ; preds = %505
  %509 = tail call i64 @fwrite(ptr nonnull @.str.136, i64 50, i64 1, ptr %258)
  %510 = load ptr, ptr %391, align 8, !tbaa !130
  %511 = icmp eq ptr %510, null
  br i1 %511, label %514, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %510, align 8, !tbaa !131
  br label %514

514:                                              ; preds = %512, %508
  %515 = phi i32 [ %513, %512 ], [ 0, %508 ]
  br label %516

516:                                              ; preds = %528, %514
  %517 = phi i32 [ 0, %514 ], [ %529, %528 ]
  br i1 %354, label %525, label %518

518:                                              ; preds = %516
  %519 = load i32, ptr %121, align 8, !tbaa !139
  %520 = icmp ugt i32 %519, %517
  br i1 %520, label %521, label %525

521:                                              ; preds = %518
  %522 = zext i32 %517 to i64
  %523 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %121, i64 0, i32 2, i64 %522
  %524 = load ptr, ptr %523, align 8, !tbaa !85
  br label %525

525:                                              ; preds = %521, %518, %516
  %526 = phi ptr [ %524, %521 ], [ null, %518 ], [ null, %516 ]
  %527 = phi i1 [ false, %521 ], [ true, %518 ], [ true, %516 ]
  br i1 %527, label %530, label %528

528:                                              ; preds = %525
  tail call void @print_direction_vector(ptr noundef %258, ptr noundef %526, i32 noundef %515)
  %529 = add i32 %517, 1
  br label %516, !llvm.loop !155

530:                                              ; preds = %525
  %531 = tail call i64 @fwrite(ptr nonnull @.str.137, i64 32, i64 1, ptr %258)
  %532 = load ptr, ptr %120, align 8, !tbaa !143
  %533 = load ptr, ptr %391, align 8, !tbaa !130
  %534 = icmp eq ptr %533, null
  br i1 %534, label %537, label %535

535:                                              ; preds = %530
  %536 = load i32, ptr %533, align 8, !tbaa !131
  br label %537

537:                                              ; preds = %535, %530
  %538 = phi i32 [ %536, %535 ], [ 0, %530 ]
  %539 = icmp eq ptr %532, null
  br label %540

540:                                              ; preds = %552, %537
  %541 = phi i32 [ 0, %537 ], [ %553, %552 ]
  br i1 %539, label %549, label %542

542:                                              ; preds = %540
  %543 = load i32, ptr %532, align 8, !tbaa !139
  %544 = icmp ugt i32 %543, %541
  br i1 %544, label %545, label %549

545:                                              ; preds = %542
  %546 = zext i32 %541 to i64
  %547 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %532, i64 0, i32 2, i64 %546
  %548 = load ptr, ptr %547, align 8, !tbaa !85
  br label %549

549:                                              ; preds = %545, %542, %540
  %550 = phi ptr [ %548, %545 ], [ null, %542 ], [ null, %540 ]
  %551 = phi i1 [ false, %545 ], [ true, %542 ], [ true, %540 ]
  br i1 %551, label %554, label %552

552:                                              ; preds = %549
  tail call void @print_direction_vector(ptr noundef %258, ptr noundef %550, i32 noundef %538)
  %553 = add i32 %541, 1
  br label %540, !llvm.loop !155

554:                                              ; preds = %549
  %555 = tail call i64 @fwrite(ptr nonnull @.str.132, i64 26, i64 1, ptr %258)
  tail call void @dump_data_dependence_relation(ptr noundef %258, ptr noundef %44)
  %556 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %258)
  br label %557

557:                                              ; preds = %554, %505
  %558 = add nuw nsw i64 %456, 1
  br label %455, !llvm.loop !257

559:                                              ; preds = %376, %350
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 3982, ptr noundef nonnull @.str.45) #27
  br label %560

560:                                              ; preds = %461, %559, %247
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  br label %595

561:                                              ; preds = %234
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #27
  br label %562

562:                                              ; preds = %561, %98, %93
  %563 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !258
  %564 = add nsw i32 %563, 1
  store i32 %564, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !258
  %565 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %566 = icmp eq ptr %565, null
  br i1 %566, label %579, label %567

567:                                              ; preds = %562
  %568 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %569 = and i32 %568, 8
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %579, label %571

571:                                              ; preds = %567
  %572 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 12, i64 1, ptr nonnull %565)
  %573 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @dump_data_reference(ptr noundef %573, ptr noundef %64)
  %574 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %575 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 12, i64 1, ptr %574)
  %576 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @dump_data_reference(ptr noundef %576, ptr noundef %66)
  %577 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %578 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 75, i64 1, ptr %577)
  br label %579

579:                                              ; preds = %571, %567, %562
  %580 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %581 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %582 = icmp eq ptr %581, null
  br i1 %582, label %592, label %583

583:                                              ; preds = %579
  %584 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %585 = and i32 %584, 8
  %586 = icmp eq i32 %585, 0
  br i1 %586, label %592, label %587

587:                                              ; preds = %583
  %588 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 24, i64 1, ptr nonnull %581)
  %589 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %589, ptr noundef %580, i32 noundef 0) #27
  %590 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %591 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %590)
  br label %592

592:                                              ; preds = %587, %583, %579
  store ptr %580, ptr %86, align 8, !tbaa !121
  %593 = getelementptr inbounds %struct.data_dependence_relation, ptr %44, i64 0, i32 3
  %594 = load ptr, ptr %593, align 8, !tbaa !125
  tail call fastcc void @free_subscripts(ptr noundef %594)
  store ptr null, ptr %593, align 8, !tbaa !125
  br label %595

595:                                              ; preds = %101, %560, %592, %114, %89, %85
  %596 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %597 = icmp eq ptr %596, null
  br i1 %597, label %604, label %598

598:                                              ; preds = %595
  %599 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %600 = and i32 %599, 8
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %604, label %602

602:                                              ; preds = %598
  %603 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr nonnull %596)
  br label %604

604:                                              ; preds = %602, %598, %595, %37, %54
  %605 = add i32 %22, 1
  br label %21, !llvm.loop !259

606:                                              ; preds = %16
  %607 = icmp eq i8 %3, 0
  br i1 %607, label %638, label %608, !prof !260

608:                                              ; preds = %606, %631
  %609 = phi i32 [ %637, %631 ], [ 0, %606 ]
  br i1 %6, label %617, label %610, !prof !236

610:                                              ; preds = %608
  %611 = load i32, ptr %0, align 8, !tbaa !104
  %612 = icmp ugt i32 %611, %609
  br i1 %612, label %613, label %617, !prof !237

613:                                              ; preds = %610
  %614 = zext i32 %609 to i64
  %615 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %614
  %616 = load ptr, ptr %615, align 8, !tbaa !85
  br label %617

617:                                              ; preds = %608, %610, %613
  %618 = phi ptr [ %616, %613 ], [ null, %610 ], [ null, %608 ]
  %619 = phi i1 [ false, %613 ], [ true, %610 ], [ true, %608 ]
  br i1 %619, label %638, label %620, !prof !238

620:                                              ; preds = %617
  %621 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef %618, ptr noundef %618, ptr noundef %2)
  %622 = load ptr, ptr %1, align 8, !tbaa !85
  %623 = icmp eq ptr %622, null
  br i1 %623, label %629, label %624, !prof !261

624:                                              ; preds = %620
  %625 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %622, i64 0, i32 1
  %626 = load i32, ptr %625, align 4, !tbaa !245
  %627 = load i32, ptr %622, align 8, !tbaa !118
  %628 = icmp eq i32 %626, %627
  br i1 %628, label %629, label %631, !prof !262

629:                                              ; preds = %620, %624
  %630 = tail call ptr @vec_heap_p_reserve(ptr noundef %622, i32 noundef 1) #27
  store ptr %630, ptr %1, align 8, !tbaa !85
  br label %631

631:                                              ; preds = %624, %629
  %632 = load ptr, ptr %1, align 8, !tbaa !85
  %633 = load i32, ptr %632, align 8, !tbaa !118
  %634 = add i32 %633, 1
  store i32 %634, ptr %632, align 8, !tbaa !118
  %635 = zext i32 %633 to i64
  %636 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %632, i64 0, i32 2, i64 %635
  store ptr %621, ptr %636, align 8, !tbaa !85
  tail call fastcc void @compute_self_dependence(ptr noundef %621)
  %637 = add i32 %609, 1
  br label %608, !llvm.loop !263

638:                                              ; preds = %617, %606
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @initialize_data_dependence_relation(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 !prof !208 !PGOFuncName !264 {
  %4 = tail call ptr @xmalloc(i64 noundef 64) #27
  store ptr %0, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !124
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 4
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 8
  store i8 0, ptr %7, align 4, !tbaa !265
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 3
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  br i1 %11, label %12, label %15, !prof !239

12:                                               ; preds = %3
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !121
  br label %157

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @dr_may_alias_p(ptr noundef %0, ptr noundef %1), !range !164
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21, !prof !240

18:                                               ; preds = %15
  %19 = load ptr, ptr @chrec_known, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !121
  br label %157

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !112
  %26 = tail call i32 @operand_equal_p(ptr noundef %23, ptr noundef %25, i32 noundef 0) #27
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %41, label %28, !prof !266

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 9
  store i8 1, ptr %29, align 1, !tbaa !157
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !121
  %31 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !114
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34, !prof !229

34:                                               ; preds = %28
  %35 = load i32, ptr %32, align 8, !tbaa !115
  br label %36

36:                                               ; preds = %28, %34
  %37 = phi i32 [ %35, %34 ], [ 0, %28 ]
  %38 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %37) #27
  store ptr %38, ptr %8, align 8, !tbaa !125
  store ptr %2, ptr %6, align 8, !tbaa !130
  %39 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  store i32 0, ptr %39, align 8, !tbaa !129
  %40 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 10
  store i8 1, ptr %40, align 2, !tbaa !246
  tail call fastcc void @compute_self_dependence(ptr noundef nonnull %4)
  br label %157

41:                                               ; preds = %21
  %42 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !113
  %44 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !113
  %46 = tail call i32 @operand_equal_p(ptr noundef %43, ptr noundef %45, i32 noundef 0) #27
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %50 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %49, ptr %50, align 8, !tbaa !121
  br label %157

51:                                               ; preds = %41
  %52 = icmp eq ptr %2, null
  br i1 %52, label %95, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %2, i64 0, i32 2, i64 0
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  br label %56

56:                                               ; preds = %84, %53
  %57 = phi ptr [ %42, %53 ], [ %85, %84 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !96
  %59 = load i64, ptr %58, align 8
  %60 = trunc i64 %59 to i16
  switch i16 %60, label %61 [
    i16 45, label %66
    i16 41, label %78
    i16 42, label %84
    i16 43, label %84
    i16 44, label %84
    i16 46, label %84
    i16 118, label %84
  ]

61:                                               ; preds = %56
  %62 = trunc i64 %59 to i32
  %63 = and i32 %62, 65535
  %64 = add nsw i32 %63, -47
  %65 = icmp ult i32 %64, 3
  br i1 %65, label %86, label %95

66:                                               ; preds = %56
  %67 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1, i32 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !96
  %69 = load i32, ptr %55, align 8, !tbaa !133
  %70 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %68, i32 noundef %69) #27
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %92

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1, i32 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !96
  %75 = load i32, ptr %55, align 8, !tbaa !133
  %76 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %74, i32 noundef %75) #27
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %84, label %92

78:                                               ; preds = %56
  %79 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 1, i32 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !96
  %81 = load i32, ptr %55, align 8, !tbaa !133
  %82 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %80, i32 noundef %81) #27
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %56, %56, %56, %56, %56, %78, %72
  %85 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  br label %56, !llvm.loop !267

86:                                               ; preds = %61
  %87 = getelementptr inbounds %struct.tree_exp, ptr %58, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !96
  %89 = load i32, ptr %55, align 8, !tbaa !133
  %90 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %88, i32 noundef %89) #27
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %66, %78, %72, %86
  %93 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %94 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %93, ptr %94, align 8, !tbaa !121
  br label %157

95:                                               ; preds = %61, %86, %51
  %96 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !114
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = load i32, ptr %97, align 8, !tbaa !115
  br label %101

101:                                              ; preds = %95, %99
  %102 = phi i32 [ %100, %99 ], [ 0, %95 ]
  %103 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !114
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  %107 = load i32, ptr %104, align 8, !tbaa !115
  br label %108

108:                                              ; preds = %101, %106
  %109 = phi i32 [ %107, %106 ], [ 0, %101 ]
  %110 = icmp eq i32 %102, %109
  br i1 %110, label %112, label %111

111:                                              ; preds = %108
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 1419, ptr noundef nonnull @.str.45) #27
  br label %112

112:                                              ; preds = %108, %111
  %113 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 9
  store i8 1, ptr %113, align 1, !tbaa !157
  %114 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr null, ptr %114, align 8, !tbaa !121
  %115 = load ptr, ptr %96, align 8, !tbaa !114
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  %118 = load i32, ptr %115, align 8, !tbaa !115
  br label %119

119:                                              ; preds = %112, %117
  %120 = phi i32 [ %118, %117 ], [ 0, %112 ]
  %121 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %120) #27
  store ptr %121, ptr %8, align 8, !tbaa !125
  store ptr %2, ptr %6, align 8, !tbaa !130
  %122 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  store i32 0, ptr %122, align 8, !tbaa !129
  %123 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 10
  store i8 0, ptr %123, align 2, !tbaa !246
  br label %124

124:                                              ; preds = %150, %119
  %125 = phi i32 [ 0, %119 ], [ %156, %150 ]
  %126 = load ptr, ptr %96, align 8, !tbaa !114
  %127 = icmp eq ptr %126, null
  br i1 %127, label %130, label %128

128:                                              ; preds = %124
  %129 = load i32, ptr %126, align 8, !tbaa !115
  br label %130

130:                                              ; preds = %124, %128
  %131 = phi i32 [ %129, %128 ], [ 0, %124 ]
  %132 = icmp ult i32 %125, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %130
  %134 = tail call ptr @xmalloc(i64 noundef 32) #27
  %135 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %135, align 8, !tbaa !147
  store ptr %135, ptr %134, align 8, !tbaa !145
  %136 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %136, align 8, !tbaa !147
  %137 = getelementptr inbounds %struct.subscript, ptr %134, i64 0, i32 1
  store ptr %136, ptr %137, align 8, !tbaa !150
  %138 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %139 = getelementptr inbounds %struct.subscript, ptr %134, i64 0, i32 2
  store ptr %138, ptr %139, align 8, !tbaa !149
  %140 = getelementptr inbounds %struct.subscript, ptr %134, i64 0, i32 3
  store ptr %138, ptr %140, align 8, !tbaa !151
  %141 = load ptr, ptr %8, align 8, !tbaa !85
  %142 = icmp eq ptr %141, null
  br i1 %142, label %148, label %143

143:                                              ; preds = %133
  %144 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %141, i64 0, i32 1
  %145 = load i32, ptr %144, align 4, !tbaa !268
  %146 = load i32, ptr %141, align 8, !tbaa !126
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %133, %143
  %149 = tail call ptr @vec_heap_p_reserve(ptr noundef %141, i32 noundef 1) #27
  store ptr %149, ptr %8, align 8, !tbaa !85
  br label %150

150:                                              ; preds = %143, %148
  %151 = load ptr, ptr %8, align 8, !tbaa !85
  %152 = load i32, ptr %151, align 8, !tbaa !126
  %153 = add i32 %152, 1
  store i32 %153, ptr %151, align 8, !tbaa !126
  %154 = zext i32 %152 to i64
  %155 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %151, i64 0, i32 2, i64 %154
  store ptr %134, ptr %155, align 8, !tbaa !85
  %156 = add i32 %125, 1
  br label %124, !llvm.loop !269

157:                                              ; preds = %130, %92, %48, %36, %18, %12
  ret ptr %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @compute_self_dependence(ptr nocapture noundef %0) unnamed_addr #11 !prof !270 !PGOFuncName !271 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %183, !prof !272

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %5, %30
  %8 = phi i32 [ %47, %30 ], [ 0, %5 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !prof !272

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !126
  %13 = icmp ugt i32 %12, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = zext i32 %8 to i64
  %16 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %9, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  br label %18

18:                                               ; preds = %7, %11, %14
  %19 = phi ptr [ %17, %14 ], [ null, %11 ], [ null, %7 ]
  %20 = phi i1 [ false, %14 ], [ true, %11 ], [ true, %7 ]
  br i1 %20, label %48, label %21, !prof !272

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !145
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %22)
  br label %25

25:                                               ; preds = %24, %21
  %26 = getelementptr inbounds %struct.subscript, ptr %19, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !150
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %27)
  br label %30

30:                                               ; preds = %29, %25
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %32 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %33 = load i32, ptr %32, align 8, !tbaa !115
  %34 = add i32 %33, 1
  store i32 %34, ptr %32, align 8, !tbaa !115
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %35
  store ptr %31, ptr %36, align 8, !tbaa !85
  %37 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %32)
  store ptr %37, ptr %19, align 8, !tbaa !145
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %39 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %40 = load i32, ptr %39, align 8, !tbaa !115
  %41 = add i32 %40, 1
  store i32 %41, ptr %39, align 8, !tbaa !115
  %42 = zext i32 %40 to i64
  %43 = getelementptr inbounds %struct.VEC_tree_base, ptr %39, i64 0, i32 2, i64 %42
  store ptr %38, ptr %43, align 8, !tbaa !85
  %44 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %39)
  store ptr %44, ptr %26, align 8, !tbaa !150
  %45 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %46 = getelementptr inbounds %struct.subscript, ptr %19, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !149
  %47 = add i32 %8, 1
  br label %7, !llvm.loop !273

48:                                               ; preds = %18
  %49 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !130
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52, !prof !272

52:                                               ; preds = %48
  %53 = load i32, ptr %50, align 8, !tbaa !131
  %54 = sext i32 %53 to i64
  %55 = shl nsw i64 %54, 2
  br label %56

56:                                               ; preds = %48, %52
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ]
  %58 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %57) #27
  %59 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !85
  %61 = icmp eq ptr %60, null
  br label %62

62:                                               ; preds = %99, %56
  %63 = phi i32 [ 0, %56 ], [ %101, %99 ]
  br i1 %61, label %71, label %64, !prof !274

64:                                               ; preds = %62
  %65 = load i32, ptr %60, align 8, !tbaa !139
  %66 = icmp ugt i32 %65, %63
  br i1 %66, label %67, label %71, !prof !229

67:                                               ; preds = %64
  %68 = zext i32 %63 to i64
  %69 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %60, i64 0, i32 2, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !85
  br label %71

71:                                               ; preds = %67, %64, %62
  %72 = phi ptr [ %70, %67 ], [ null, %64 ], [ null, %62 ]
  %73 = phi i1 [ false, %67 ], [ true, %64 ], [ true, %62 ]
  br i1 %73, label %102, label %74, !prof !274

74:                                               ; preds = %71
  %75 = load ptr, ptr %49, align 8, !tbaa !130
  %76 = icmp eq ptr %75, null
  br i1 %76, label %79, label %77, !prof !229

77:                                               ; preds = %74
  %78 = load i32, ptr %75, align 8, !tbaa !131
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %78, %77 ], [ 0, %74 ]
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %116, !prof !275

82:                                               ; preds = %79
  %83 = zext nneg i32 %80 to i64
  %84 = load i32, ptr %72, align 4, !tbaa !100
  %85 = load i32, ptr %58, align 4, !tbaa !100
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %82, %91
  %88 = phi i64 [ %89, %91 ], [ 0, %82 ]
  %89 = add nuw nsw i64 %88, 1
  %90 = icmp eq i64 %89, %83
  br i1 %90, label %116, label %91, !prof !276, !llvm.loop !253

91:                                               ; preds = %87
  %92 = getelementptr inbounds i32, ptr %72, i64 %89
  %93 = load i32, ptr %92, align 4, !tbaa !100
  %94 = getelementptr inbounds i32, ptr %58, i64 %89
  %95 = load i32, ptr %94, align 4, !tbaa !100
  %96 = icmp eq i32 %93, %95
  br i1 %96, label %87, label %97, !llvm.loop !253

97:                                               ; preds = %91
  %98 = icmp ult i64 %89, %83
  br label %99

99:                                               ; preds = %97, %82
  %100 = phi i1 [ true, %82 ], [ %98, %97 ]
  %101 = add i32 %63, 1
  br i1 %100, label %62, label %116, !prof !266, !llvm.loop !277

102:                                              ; preds = %71
  br i1 %61, label %108, label %103, !prof !229

103:                                              ; preds = %102
  %104 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %60, i64 0, i32 1
  %105 = load i32, ptr %104, align 4, !tbaa !278
  %106 = load i32, ptr %60, align 8, !tbaa !139
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %103, %102
  %109 = tail call ptr @vec_heap_p_reserve(ptr noundef %60, i32 noundef 1) #27
  store ptr %109, ptr %59, align 8, !tbaa !85
  br label %110

110:                                              ; preds = %108, %103
  %111 = load ptr, ptr %59, align 8, !tbaa !85
  %112 = load i32, ptr %111, align 8, !tbaa !139
  %113 = add i32 %112, 1
  store i32 %113, ptr %111, align 8, !tbaa !139
  %114 = zext i32 %112 to i64
  %115 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %111, i64 0, i32 2, i64 %114
  store ptr %58, ptr %115, align 8, !tbaa !85
  br label %116

116:                                              ; preds = %79, %99, %87, %110
  %117 = load ptr, ptr %49, align 8, !tbaa !130
  %118 = icmp eq ptr %117, null
  br i1 %118, label %123, label %119, !prof !272

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !131
  %121 = sext i32 %120 to i64
  %122 = shl nsw i64 %121, 2
  br label %123

123:                                              ; preds = %116, %119
  %124 = phi i64 [ %122, %119 ], [ 0, %116 ]
  %125 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %124) #27
  %126 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %127 = load ptr, ptr %126, align 8, !tbaa !85
  %128 = icmp eq ptr %127, null
  br label %129

129:                                              ; preds = %166, %123
  %130 = phi i32 [ 0, %123 ], [ %168, %166 ]
  br i1 %128, label %138, label %131, !prof !274

131:                                              ; preds = %129
  %132 = load i32, ptr %127, align 8, !tbaa !139
  %133 = icmp ugt i32 %132, %130
  br i1 %133, label %134, label %138, !prof !229

134:                                              ; preds = %131
  %135 = zext i32 %130 to i64
  %136 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %127, i64 0, i32 2, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !85
  br label %138

138:                                              ; preds = %134, %131, %129
  %139 = phi ptr [ %137, %134 ], [ null, %131 ], [ null, %129 ]
  %140 = phi i1 [ false, %134 ], [ true, %131 ], [ true, %129 ]
  br i1 %140, label %169, label %141, !prof !274

141:                                              ; preds = %138
  %142 = load ptr, ptr %49, align 8, !tbaa !130
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144, !prof !229

144:                                              ; preds = %141
  %145 = load i32, ptr %142, align 8, !tbaa !131
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i32 [ %145, %144 ], [ 0, %141 ]
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %183, !prof !275

149:                                              ; preds = %146
  %150 = zext nneg i32 %147 to i64
  %151 = load i32, ptr %139, align 4, !tbaa !100
  %152 = load i32, ptr %125, align 4, !tbaa !100
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %166

154:                                              ; preds = %149, %158
  %155 = phi i64 [ %156, %158 ], [ 0, %149 ]
  %156 = add nuw nsw i64 %155, 1
  %157 = icmp eq i64 %156, %150
  br i1 %157, label %183, label %158, !prof !276, !llvm.loop !253

158:                                              ; preds = %154
  %159 = getelementptr inbounds i32, ptr %139, i64 %156
  %160 = load i32, ptr %159, align 4, !tbaa !100
  %161 = getelementptr inbounds i32, ptr %125, i64 %156
  %162 = load i32, ptr %161, align 4, !tbaa !100
  %163 = icmp eq i32 %160, %162
  br i1 %163, label %154, label %164, !llvm.loop !253

164:                                              ; preds = %158
  %165 = icmp ult i64 %156, %150
  br label %166

166:                                              ; preds = %164, %149
  %167 = phi i1 [ true, %149 ], [ %165, %164 ]
  %168 = add i32 %130, 1
  br i1 %167, label %129, label %183, !prof !266, !llvm.loop !279

169:                                              ; preds = %138
  br i1 %128, label %175, label %170, !prof !229

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %127, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !278
  %173 = load i32, ptr %127, align 8, !tbaa !139
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %170, %169
  %176 = tail call ptr @vec_heap_p_reserve(ptr noundef %127, i32 noundef 1) #27
  store ptr %176, ptr %126, align 8, !tbaa !85
  br label %177

177:                                              ; preds = %175, %170
  %178 = load ptr, ptr %126, align 8, !tbaa !85
  %179 = load i32, ptr %178, align 8, !tbaa !139
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !139
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %178, i64 0, i32 2, i64 %181
  store ptr %125, ptr %182, align 8, !tbaa !85
  br label %183

183:                                              ; preds = %166, %146, %154, %177, %1
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #11 !prof !84 {
  %3 = load i32, ptr %0, align 8
  %4 = and i32 %3, 255
  store ptr null, ptr %1, align 8, !tbaa !85
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %6, label %10, !prof !280

6:                                                ; preds = %2
  %7 = tail call i32 @gimple_call_flags(ptr noundef nonnull %0) #27
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %16, label %10, !prof !281

10:                                               ; preds = %6, %2
  %11 = icmp eq i32 %4, 7
  br i1 %11, label %12, label %17, !prof !282

12:                                               ; preds = %10
  %13 = load i32, ptr %0, align 8
  %14 = and i32 %13, 131072
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %6, %12
  br label %17

17:                                               ; preds = %16, %12, %10
  %18 = phi i8 [ 1, %16 ], [ 0, %12 ], [ 0, %10 ]
  %19 = load i32, ptr %0, align 8
  %20 = and i32 %19, 254
  %21 = add nsw i32 %20, -10
  %22 = icmp ult i32 %21, -4
  br i1 %22, label %174, label %23, !prof !283

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !96
  %26 = icmp eq ptr %25, null
  br i1 %26, label %174, label %27, !prof !284

27:                                               ; preds = %23
  %28 = icmp eq i32 %4, 6
  br i1 %28, label %29, label %119, !prof !285

29:                                               ; preds = %27
  %30 = and i32 %19, 255
  %31 = add nsw i32 %30, -10
  %32 = icmp ult i32 %31, -9
  br i1 %32, label %44, label %33, !prof !181

33:                                               ; preds = %29
  %34 = zext nneg i32 %30 to i64
  %35 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !100
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !171
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42, !prof !181

41:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %42

42:                                               ; preds = %41, %33
  %43 = getelementptr inbounds i8, ptr %0, i64 %39
  br label %44

44:                                               ; preds = %29, %42
  %45 = phi ptr [ %43, %42 ], [ null, %29 ]
  %46 = load i32, ptr %0, align 8
  %47 = and i32 %46, 255
  %48 = add nsw i32 %47, -10
  %49 = icmp ult i32 %48, -9
  br i1 %49, label %62, label %50, !prof !181

50:                                               ; preds = %44
  %51 = zext nneg i32 %47 to i64
  %52 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !100
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %54
  %56 = load i64, ptr %55, align 8, !tbaa !171
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59, !prof !181

58:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %59

59:                                               ; preds = %58, %50
  %60 = getelementptr inbounds i8, ptr %0, i64 %56
  %61 = getelementptr inbounds ptr, ptr %60, i64 1
  br label %62

62:                                               ; preds = %44, %59
  %63 = phi ptr [ %61, %59 ], [ null, %44 ]
  %64 = load ptr, ptr %63, align 8, !tbaa !85
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !100
  switch i32 %68, label %93 [
    i32 3, label %76
    i32 4, label %69
  ], !prof !286

69:                                               ; preds = %62
  %70 = tail call ptr @get_base_address(ptr noundef nonnull %64) #27
  %71 = icmp eq ptr %70, null
  br i1 %71, label %93, label %72, !prof !287

72:                                               ; preds = %69
  %73 = load i64, ptr %70, align 8
  %74 = and i64 %73, 65535
  %75 = icmp eq i64 %74, 141
  br i1 %75, label %93, label %76, !prof !287

76:                                               ; preds = %72, %62
  %77 = load ptr, ptr %1, align 8, !tbaa !85
  %78 = icmp eq ptr %77, null
  br i1 %78, label %84, label %79, !prof !184

79:                                               ; preds = %76
  %80 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %77, i64 0, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !288
  %82 = load i32, ptr %77, align 8, !tbaa !290
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %76, %79
  %85 = tail call ptr @vec_heap_o_reserve(ptr noundef %77, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  store ptr %85, ptr %1, align 8, !tbaa !85
  br label %86

86:                                               ; preds = %79, %84
  %87 = load ptr, ptr %1, align 8, !tbaa !85
  %88 = load i32, ptr %87, align 8, !tbaa !290
  %89 = add i32 %88, 1
  store i32 %89, ptr %87, align 8, !tbaa !290
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %87, i64 0, i32 2, i64 %90
  store ptr %63, ptr %91, align 8, !tbaa !291
  %92 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %87, i64 0, i32 2, i64 %90, i32 1
  store i8 1, ptr %92, align 8, !tbaa !293
  br label %93

93:                                               ; preds = %62, %86, %72, %69
  %94 = load ptr, ptr %45, align 8, !tbaa !85
  %95 = load i64, ptr %94, align 8
  %96 = and i64 %95, 65535
  %97 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !100
  switch i32 %98, label %174 [
    i32 3, label %102
    i32 4, label %99
  ], !prof !294

99:                                               ; preds = %93
  %100 = tail call ptr @get_base_address(ptr noundef nonnull %94) #27
  %101 = icmp eq ptr %100, null
  br i1 %101, label %174, label %102

102:                                              ; preds = %93, %99
  %103 = load ptr, ptr %1, align 8, !tbaa !85
  %104 = icmp eq ptr %103, null
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %103, i64 0, i32 1
  %107 = load i32, ptr %106, align 4, !tbaa !288
  %108 = load i32, ptr %103, align 8, !tbaa !290
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %102, %105
  %111 = tail call ptr @vec_heap_o_reserve(ptr noundef %103, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  store ptr %111, ptr %1, align 8, !tbaa !85
  br label %112

112:                                              ; preds = %105, %110
  %113 = load ptr, ptr %1, align 8, !tbaa !85
  %114 = load i32, ptr %113, align 8, !tbaa !290
  %115 = add i32 %114, 1
  store i32 %115, ptr %113, align 8, !tbaa !290
  %116 = zext i32 %114 to i64
  %117 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %113, i64 0, i32 2, i64 %116
  store ptr %45, ptr %117, align 8, !tbaa !291
  %118 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %113, i64 0, i32 2, i64 %116, i32 1
  store i8 0, ptr %118, align 8, !tbaa !293
  br label %174

119:                                              ; preds = %27
  br i1 %5, label %120, label %174, !prof !281

120:                                              ; preds = %119
  %121 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %122 = load i32, ptr %121, align 4, !tbaa !96
  %123 = add i32 %122, -3
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %174, label %125, !prof !295

125:                                              ; preds = %120
  %126 = zext i32 %123 to i64
  br label %127

127:                                              ; preds = %125, %171
  %128 = phi i64 [ 0, %125 ], [ %172, %171 ]
  %129 = add nuw i64 %128, 3
  %130 = load i32, ptr %0, align 8
  %131 = and i32 %130, 255
  %132 = add nsw i32 %131, -1
  %133 = icmp ult i32 %132, 9
  tail call void @llvm.assume(i1 %133)
  %134 = zext nneg i32 %131 to i64
  %135 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %134
  %136 = load i32, ptr %135, align 4, !tbaa !100
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !171
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142, !prof !296

141:                                              ; preds = %127
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %142

142:                                              ; preds = %141, %127
  %143 = getelementptr inbounds i8, ptr %0, i64 %139
  %144 = and i64 %129, 4294967295
  %145 = getelementptr inbounds ptr, ptr %143, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !85
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !100
  switch i32 %150, label %171 [
    i32 3, label %154
    i32 4, label %151
  ], !prof !297

151:                                              ; preds = %142
  %152 = tail call ptr @get_base_address(ptr noundef nonnull %146) #27
  %153 = icmp eq ptr %152, null
  br i1 %153, label %171, label %154

154:                                              ; preds = %142, %151
  %155 = load ptr, ptr %1, align 8, !tbaa !85
  %156 = icmp eq ptr %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %155, i64 0, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !288
  %160 = load i32, ptr %155, align 8, !tbaa !290
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %154, %157
  %163 = tail call ptr @vec_heap_o_reserve(ptr noundef %155, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  store ptr %163, ptr %1, align 8, !tbaa !85
  br label %164

164:                                              ; preds = %157, %162
  %165 = load ptr, ptr %1, align 8, !tbaa !85
  %166 = load i32, ptr %165, align 8, !tbaa !290
  %167 = add i32 %166, 1
  store i32 %167, ptr %165, align 8, !tbaa !290
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %165, i64 0, i32 2, i64 %168
  store ptr %145, ptr %169, align 8, !tbaa !291
  %170 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %165, i64 0, i32 2, i64 %168, i32 1
  store i8 1, ptr %170, align 8, !tbaa !293
  br label %171

171:                                              ; preds = %151, %142, %164
  %172 = add nuw nsw i64 %128, 1
  %173 = icmp eq i64 %172, %126
  br i1 %173, label %174, label %127, !prof !298, !llvm.loop !299

174:                                              ; preds = %171, %17, %120, %99, %119, %93, %112, %23
  ret i8 %18
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @find_data_references_in_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #11 !prof !84 {
  %4 = load i32, ptr %1, align 8
  %5 = and i32 %4, 255
  %6 = icmp eq i32 %5, 8
  br i1 %6, label %7, label %11, !prof !280

7:                                                ; preds = %3
  %8 = tail call i32 @gimple_call_flags(ptr noundef nonnull %1) #27
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11, !prof !281

11:                                               ; preds = %7, %3
  %12 = icmp eq i32 %5, 7
  br i1 %12, label %13, label %18, !prof !282

13:                                               ; preds = %11
  %14 = load i32, ptr %1, align 8
  %15 = and i32 %14, 131072
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %7
  br label %18

18:                                               ; preds = %17, %13, %11
  %19 = phi i1 [ false, %17 ], [ true, %13 ], [ true, %11 ]
  %20 = load i32, ptr %1, align 8
  %21 = and i32 %20, 254
  %22 = add nsw i32 %21, -10
  %23 = icmp ult i32 %22, -4
  br i1 %23, label %166, label %24, !prof !283

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %1, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !96
  %27 = icmp eq ptr %26, null
  br i1 %27, label %166, label %28, !prof !284

28:                                               ; preds = %24
  %29 = icmp eq i32 %5, 6
  br i1 %29, label %30, label %110, !prof !285

30:                                               ; preds = %28
  %31 = and i32 %20, 255
  %32 = add nsw i32 %31, -10
  %33 = icmp ult i32 %32, -9
  br i1 %33, label %45, label %34, !prof !181

34:                                               ; preds = %30
  %35 = zext nneg i32 %31 to i64
  %36 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !100
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !171
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %43, !prof !181

42:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %43

43:                                               ; preds = %42, %34
  %44 = getelementptr inbounds i8, ptr %1, i64 %40
  br label %45

45:                                               ; preds = %43, %30
  %46 = phi ptr [ %44, %43 ], [ null, %30 ]
  %47 = load i32, ptr %1, align 8
  %48 = and i32 %47, 255
  %49 = add nsw i32 %48, -10
  %50 = icmp ult i32 %49, -9
  br i1 %50, label %63, label %51, !prof !181

51:                                               ; preds = %45
  %52 = zext nneg i32 %48 to i64
  %53 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !100
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !171
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %60, !prof !181

59:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %60

60:                                               ; preds = %59, %51
  %61 = getelementptr inbounds i8, ptr %1, i64 %57
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  br label %63

63:                                               ; preds = %60, %45
  %64 = phi ptr [ %62, %60 ], [ null, %45 ]
  %65 = load ptr, ptr %64, align 8, !tbaa !85
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !100
  switch i32 %69, label %84 [
    i32 3, label %77
    i32 4, label %70
  ], !prof !286

70:                                               ; preds = %63
  %71 = tail call ptr @get_base_address(ptr noundef nonnull %65) #27
  %72 = icmp eq ptr %71, null
  br i1 %72, label %84, label %73, !prof !287

73:                                               ; preds = %70
  %74 = load i64, ptr %71, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 141
  br i1 %76, label %84, label %77, !prof !287

77:                                               ; preds = %63, %73
  %78 = tail call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  %79 = load i32, ptr %78, align 8, !tbaa !290
  %80 = add i32 %79, 1
  store i32 %80, ptr %78, align 8, !tbaa !290
  %81 = zext i32 %79 to i64
  %82 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %78, i64 0, i32 2, i64 %81
  store ptr %64, ptr %82, align 8, !tbaa !291
  %83 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %78, i64 0, i32 2, i64 %81, i32 1
  store i8 1, ptr %83, align 8, !tbaa !293
  br label %84

84:                                               ; preds = %77, %73, %70, %63
  %85 = phi ptr [ null, %63 ], [ null, %70 ], [ null, %73 ], [ %78, %77 ]
  %86 = load ptr, ptr %46, align 8, !tbaa !85
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 65535
  %89 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !100
  switch i32 %90, label %166 [
    i32 3, label %94
    i32 4, label %91
  ], !prof !294

91:                                               ; preds = %84
  %92 = tail call ptr @get_base_address(ptr noundef nonnull %86) #27
  %93 = icmp eq ptr %92, null
  br i1 %93, label %166, label %94

94:                                               ; preds = %91, %84
  %95 = icmp eq ptr %85, null
  br i1 %95, label %101, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %85, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !288
  %99 = load i32, ptr %85, align 8, !tbaa !290
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %96, %94
  %102 = tail call ptr @vec_heap_o_reserve(ptr noundef %85, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  br label %103

103:                                              ; preds = %101, %96
  %104 = phi ptr [ %102, %101 ], [ %85, %96 ]
  %105 = load i32, ptr %104, align 8, !tbaa !290
  %106 = add i32 %105, 1
  store i32 %106, ptr %104, align 8, !tbaa !290
  %107 = zext i32 %105 to i64
  %108 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %104, i64 0, i32 2, i64 %107
  store ptr %46, ptr %108, align 8, !tbaa !291
  %109 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %104, i64 0, i32 2, i64 %107, i32 1
  store i8 0, ptr %109, align 8, !tbaa !293
  br label %166

110:                                              ; preds = %28
  br i1 %6, label %111, label %166, !prof !281

111:                                              ; preds = %110
  %112 = getelementptr inbounds %struct.gimple_statement_base, ptr %1, i64 0, i32 3
  %113 = load i32, ptr %112, align 4, !tbaa !96
  %114 = add i32 %113, -3
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %166, label %116, !prof !295

116:                                              ; preds = %111
  %117 = zext i32 %114 to i64
  br label %118

118:                                              ; preds = %162, %116
  %119 = phi ptr [ null, %116 ], [ %163, %162 ]
  %120 = phi i64 [ 0, %116 ], [ %164, %162 ]
  %121 = add nuw nsw i64 %120, 3
  %122 = load i32, ptr %1, align 8
  %123 = and i32 %122, 255
  %124 = add nsw i32 %123, -1
  %125 = icmp ult i32 %124, 9
  tail call void @llvm.assume(i1 %125)
  %126 = zext nneg i32 %123 to i64
  %127 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !100
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !171
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134, !prof !296

133:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %134

134:                                              ; preds = %133, %118
  %135 = getelementptr inbounds i8, ptr %1, i64 %131
  %136 = and i64 %121, 4294967295
  %137 = getelementptr inbounds ptr, ptr %135, i64 %136
  %138 = load ptr, ptr %137, align 8, !tbaa !85
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 65535
  %141 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %140
  %142 = load i32, ptr %141, align 4, !tbaa !100
  switch i32 %142, label %162 [
    i32 3, label %146
    i32 4, label %143
  ], !prof !297

143:                                              ; preds = %134
  %144 = tail call ptr @get_base_address(ptr noundef nonnull %138) #27
  %145 = icmp eq ptr %144, null
  br i1 %145, label %162, label %146

146:                                              ; preds = %143, %134
  %147 = icmp eq ptr %119, null
  br i1 %147, label %153, label %148

148:                                              ; preds = %146
  %149 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %119, i64 0, i32 1
  %150 = load i32, ptr %149, align 4, !tbaa !288
  %151 = load i32, ptr %119, align 8, !tbaa !290
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %148, %146
  %154 = tail call ptr @vec_heap_o_reserve(ptr noundef %119, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  br label %155

155:                                              ; preds = %153, %148
  %156 = phi ptr [ %154, %153 ], [ %119, %148 ]
  %157 = load i32, ptr %156, align 8, !tbaa !290
  %158 = add i32 %157, 1
  store i32 %158, ptr %156, align 8, !tbaa !290
  %159 = zext i32 %157 to i64
  %160 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %156, i64 0, i32 2, i64 %159
  store ptr %137, ptr %160, align 8, !tbaa !291
  %161 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %156, i64 0, i32 2, i64 %159, i32 1
  store i8 1, ptr %161, align 8, !tbaa !293
  br label %162

162:                                              ; preds = %155, %143, %134
  %163 = phi ptr [ %119, %134 ], [ %119, %143 ], [ %156, %155 ]
  %164 = add nuw nsw i64 %120, 1
  %165 = icmp eq i64 %164, %117
  br i1 %165, label %166, label %118, !prof !298, !llvm.loop !299

166:                                              ; preds = %162, %18, %24, %84, %91, %103, %110, %111
  %167 = phi ptr [ null, %18 ], [ null, %24 ], [ %85, %84 ], [ %85, %91 ], [ %104, %103 ], [ null, %111 ], [ null, %110 ], [ %163, %162 ]
  %168 = icmp eq ptr %167, null
  br i1 %19, label %170, label %169, !prof !300

169:                                              ; preds = %166
  br i1 %168, label %247, label %245, !prof !281

170:                                              ; preds = %166, %236
  %171 = phi i32 [ %242, %236 ], [ 0, %166 ]
  br i1 %168, label %178, label %172, !prof !301

172:                                              ; preds = %170
  %173 = load i32, ptr %167, align 8, !tbaa !290
  %174 = icmp ugt i32 %173, %171
  br i1 %174, label %175, label %178, !prof !302

175:                                              ; preds = %172
  %176 = zext i32 %171 to i64
  %177 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %167, i64 0, i32 2, i64 %176
  br label %178

178:                                              ; preds = %170, %172, %175
  %179 = phi ptr [ %177, %175 ], [ null, %172 ], [ null, %170 ]
  %180 = phi i1 [ false, %175 ], [ true, %172 ], [ true, %170 ]
  br i1 %180, label %243, label %181, !prof !303

181:                                              ; preds = %178
  %182 = load ptr, ptr %179, align 8, !tbaa !291
  %183 = load ptr, ptr %182, align 8, !tbaa !85
  %184 = getelementptr inbounds %struct.data_ref_loc_d, ptr %179, i64 0, i32 1
  %185 = load i8, ptr %184, align 8, !tbaa !293
  %186 = tail call ptr @create_data_ref(ptr noundef %0, ptr noundef %183, ptr noundef nonnull %1, i8 noundef zeroext %185)
  %187 = icmp eq ptr %186, null
  br i1 %187, label %188, label %189, !prof !181

188:                                              ; preds = %181
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 4173, ptr noundef nonnull @.str.45) #27
  br label %189

189:                                              ; preds = %181, %188
  %190 = getelementptr inbounds %struct.data_reference, ptr %186, i64 0, i32 5, i32 1
  br label %191

191:                                              ; preds = %205, %189
  %192 = phi i32 [ 0, %189 ], [ %208, %205 ]
  %193 = load ptr, ptr %190, align 8, !tbaa !114
  %194 = icmp eq ptr %193, null
  br i1 %194, label %202, label %195, !prof !184

195:                                              ; preds = %191
  %196 = load i32, ptr %193, align 8, !tbaa !115
  %197 = icmp ugt i32 %196, %192
  br i1 %197, label %198, label %202

198:                                              ; preds = %195
  %199 = zext i32 %192 to i64
  %200 = getelementptr inbounds %struct.VEC_tree_base, ptr %193, i64 0, i32 2, i64 %199
  %201 = load ptr, ptr %200, align 8, !tbaa !85
  br label %202

202:                                              ; preds = %198, %195, %191
  %203 = phi ptr [ %201, %198 ], [ null, %195 ], [ null, %191 ]
  %204 = phi i1 [ false, %198 ], [ true, %195 ], [ true, %191 ]
  br i1 %204, label %209, label %205, !prof !184

205:                                              ; preds = %202
  %206 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %203, ptr noundef null) #27
  %207 = icmp eq i8 %206, 0
  %208 = add i32 %192, 1
  br i1 %207, label %191, label %209, !llvm.loop !304

209:                                              ; preds = %202, %205
  %210 = icmp ne ptr %0, null
  %211 = and i1 %210, %204
  br i1 %211, label %212, label %226, !prof !181

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.data_reference, ptr %186, i64 0, i32 5, i32 1
  %214 = load ptr, ptr %213, align 8, !tbaa !85
  %215 = icmp eq ptr %214, null
  br i1 %215, label %217, label %216

216:                                              ; preds = %212
  tail call void @free(ptr noundef %214)
  br label %217

217:                                              ; preds = %212, %216
  store ptr null, ptr %213, align 8, !tbaa !85
  tail call void @free(ptr noundef %186)
  %218 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %219 = icmp eq ptr %218, null
  br i1 %219, label %243, label %220

220:                                              ; preds = %217
  %221 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %222 = and i32 %221, 8
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %243, label %224

224:                                              ; preds = %220
  %225 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 35, i64 1, ptr nonnull %218)
  br label %243

226:                                              ; preds = %209
  %227 = load ptr, ptr %2, align 8, !tbaa !85
  %228 = icmp eq ptr %227, null
  br i1 %228, label %234, label %229, !prof !305

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %227, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !306
  %232 = load i32, ptr %227, align 8, !tbaa !104
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %236, !prof !243

234:                                              ; preds = %226, %229
  %235 = tail call ptr @vec_heap_p_reserve(ptr noundef %227, i32 noundef 1) #27
  store ptr %235, ptr %2, align 8, !tbaa !85
  br label %236

236:                                              ; preds = %229, %234
  %237 = load ptr, ptr %2, align 8, !tbaa !85
  %238 = load i32, ptr %237, align 8, !tbaa !104
  %239 = add i32 %238, 1
  store i32 %239, ptr %237, align 8, !tbaa !104
  %240 = zext i32 %238 to i64
  %241 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %237, i64 0, i32 2, i64 %240
  store ptr %186, ptr %241, align 8, !tbaa !85
  %242 = add i32 %171, 1
  br label %170, !llvm.loop !307

243:                                              ; preds = %178, %217, %220, %224
  %244 = phi i8 [ 0, %224 ], [ 0, %220 ], [ 0, %217 ], [ 1, %178 ]
  br i1 %168, label %247, label %245, !prof !308

245:                                              ; preds = %243, %169
  %246 = phi i8 [ 0, %169 ], [ %244, %243 ]
  tail call void @free(ptr noundef %167)
  br label %247

247:                                              ; preds = %245, %243, %169
  %248 = phi i8 [ 0, %169 ], [ %244, %243 ], [ %246, %245 ]
  ret i8 %248
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @graphite_find_data_references_in_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #9 !prof !84 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = call zeroext i8 @get_references_in_stmt(ptr noundef %1, ptr noundef nonnull %4), !range !164
  %6 = icmp eq i8 %5, 0
  %7 = load ptr, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %6, label %10, label %9

9:                                                ; preds = %3
  br i1 %8, label %49, label %47

10:                                               ; preds = %3, %39
  %11 = phi i32 [ %45, %39 ], [ 0, %3 ]
  br i1 %8, label %18, label %12

12:                                               ; preds = %10
  %13 = load i32, ptr %7, align 8, !tbaa !290
  %14 = icmp ugt i32 %13, %11
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = zext i32 %11 to i64
  %17 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %7, i64 0, i32 2, i64 %16
  br label %18

18:                                               ; preds = %10, %12, %15
  %19 = phi ptr [ %17, %15 ], [ null, %12 ], [ null, %10 ]
  %20 = phi i1 [ false, %15 ], [ true, %12 ], [ true, %10 ]
  br i1 %20, label %46, label %21

21:                                               ; preds = %18
  %22 = load ptr, ptr %19, align 8, !tbaa !291
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.data_ref_loc_d, ptr %19, i64 0, i32 1
  %25 = load i8, ptr %24, align 8, !tbaa !293
  %26 = tail call ptr @create_data_ref(ptr noundef %0, ptr noundef %23, ptr noundef %1, i8 noundef zeroext %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 4216, ptr noundef nonnull @.str.45) #27
  br label %29

29:                                               ; preds = %21, %28
  %30 = load ptr, ptr %2, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %30, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !306
  %35 = load i32, ptr %30, align 8, !tbaa !104
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29, %32
  %38 = tail call ptr @vec_heap_p_reserve(ptr noundef %30, i32 noundef 1) #27
  store ptr %38, ptr %2, align 8, !tbaa !85
  br label %39

39:                                               ; preds = %32, %37
  %40 = load ptr, ptr %2, align 8, !tbaa !85
  %41 = load i32, ptr %40, align 8, !tbaa !104
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 8, !tbaa !104
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %40, i64 0, i32 2, i64 %43
  store ptr %26, ptr %44, align 8, !tbaa !85
  %45 = add i32 %11, 1
  br label %10, !llvm.loop !309

46:                                               ; preds = %18
  br i1 %8, label %49, label %47

47:                                               ; preds = %46, %9
  %48 = phi i8 [ 0, %9 ], [ 1, %46 ]
  tail call void @free(ptr noundef %7)
  br label %49

49:                                               ; preds = %47, %46, %9
  %50 = phi i8 [ 0, %9 ], [ 1, %46 ], [ %48, %47 ]
  store ptr null, ptr %4, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  ret i8 %50
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @find_data_references_in_loop(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #27
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !310
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %12

7:                                                ; preds = %12
  %8 = add nuw nsw i64 %13, 1
  %9 = load i32, ptr %4, align 4, !tbaa !310
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %21, !llvm.loop !311

12:                                               ; preds = %2, %7
  %13 = phi i64 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds ptr, ptr %3, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = tail call fastcc ptr @find_data_references_in_bb(ptr noundef %0, ptr noundef %15, ptr noundef %1)
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %7

19:                                               ; preds = %12
  tail call void @free(ptr noundef %3)
  %20 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %22

21:                                               ; preds = %7, %2
  tail call void @free(ptr noundef %3)
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi ptr [ %20, %19 ], [ null, %21 ]
  ret ptr %23
}

declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @find_data_references_in_bb(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #11 !prof !312 !PGOFuncName !313 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 13
  %5 = load i32, ptr %4, align 8, !tbaa !314, !noalias !315
  %6 = and i32 %5, 512
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %14, !prof !318

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !96, !noalias !315
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12, !prof !319

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 8, !tbaa !320, !noalias !315
  br label %14

14:                                               ; preds = %12, %8, %3
  %15 = phi ptr [ %13, %12 ], [ null, %8 ], [ null, %3 ]
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17, !prof !319

17:                                               ; preds = %14
  %18 = load ptr, ptr %15, align 8, !tbaa !322, !noalias !315
  br label %19

19:                                               ; preds = %14, %17
  %20 = phi ptr [ %18, %17 ], [ null, %14 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %295, label %22, !prof !324

22:                                               ; preds = %19, %291
  %23 = phi ptr [ %290, %291 ], [ undef, %19 ]
  %24 = phi ptr [ %293, %291 ], [ %20, %19 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !325
  %26 = load i32, ptr %25, align 8
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 8
  br i1 %28, label %29, label %33, !prof !280

29:                                               ; preds = %22
  %30 = tail call i32 @gimple_call_flags(ptr noundef nonnull %25) #27
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %39, label %33, !prof !281

33:                                               ; preds = %29, %22
  %34 = icmp eq i32 %27, 7
  br i1 %34, label %35, label %40, !prof !282

35:                                               ; preds = %33
  %36 = load i32, ptr %25, align 8
  %37 = and i32 %36, 131072
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %29
  br label %40

40:                                               ; preds = %39, %35, %33
  %41 = phi i1 [ false, %39 ], [ true, %35 ], [ true, %33 ]
  %42 = load i32, ptr %25, align 8
  %43 = and i32 %42, 254
  %44 = add nsw i32 %43, -10
  %45 = icmp ult i32 %44, -4
  br i1 %45, label %188, label %46, !prof !283

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %25, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  %49 = icmp eq ptr %48, null
  br i1 %49, label %188, label %50, !prof !284

50:                                               ; preds = %46
  %51 = icmp eq i32 %27, 6
  br i1 %51, label %52, label %132, !prof !285

52:                                               ; preds = %50
  %53 = and i32 %42, 255
  %54 = add nsw i32 %53, -10
  %55 = icmp ult i32 %54, -9
  br i1 %55, label %67, label %56, !prof !181

56:                                               ; preds = %52
  %57 = zext nneg i32 %53 to i64
  %58 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !100
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !171
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65, !prof !181

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %65

65:                                               ; preds = %64, %56
  %66 = getelementptr inbounds i8, ptr %25, i64 %62
  br label %67

67:                                               ; preds = %65, %52
  %68 = phi ptr [ %66, %65 ], [ null, %52 ]
  %69 = load i32, ptr %25, align 8
  %70 = and i32 %69, 255
  %71 = add nsw i32 %70, -10
  %72 = icmp ult i32 %71, -9
  br i1 %72, label %85, label %73, !prof !181

73:                                               ; preds = %67
  %74 = zext nneg i32 %70 to i64
  %75 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %74
  %76 = load i32, ptr %75, align 4, !tbaa !100
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !171
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82, !prof !181

81:                                               ; preds = %73
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %82

82:                                               ; preds = %81, %73
  %83 = getelementptr inbounds i8, ptr %25, i64 %79
  %84 = getelementptr inbounds ptr, ptr %83, i64 1
  br label %85

85:                                               ; preds = %82, %67
  %86 = phi ptr [ %84, %82 ], [ null, %67 ]
  %87 = load ptr, ptr %86, align 8, !tbaa !85
  %88 = load i64, ptr %87, align 8
  %89 = and i64 %88, 65535
  %90 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !100
  switch i32 %91, label %106 [
    i32 3, label %99
    i32 4, label %92
  ], !prof !286

92:                                               ; preds = %85
  %93 = tail call ptr @get_base_address(ptr noundef nonnull %87) #27
  %94 = icmp eq ptr %93, null
  br i1 %94, label %106, label %95, !prof !287

95:                                               ; preds = %92
  %96 = load i64, ptr %93, align 8
  %97 = and i64 %96, 65535
  %98 = icmp eq i64 %97, 141
  br i1 %98, label %106, label %99, !prof !287

99:                                               ; preds = %95, %85
  %100 = tail call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  %101 = load i32, ptr %100, align 8, !tbaa !290
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8, !tbaa !290
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %100, i64 0, i32 2, i64 %103
  store ptr %86, ptr %104, align 8, !tbaa !291
  %105 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %100, i64 0, i32 2, i64 %103, i32 1
  store i8 1, ptr %105, align 8, !tbaa !293
  br label %106

106:                                              ; preds = %99, %95, %92, %85
  %107 = phi ptr [ null, %85 ], [ null, %92 ], [ null, %95 ], [ %100, %99 ]
  %108 = load ptr, ptr %68, align 8, !tbaa !85
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 65535
  %111 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %110
  %112 = load i32, ptr %111, align 4, !tbaa !100
  switch i32 %112, label %188 [
    i32 3, label %116
    i32 4, label %113
  ], !prof !294

113:                                              ; preds = %106
  %114 = tail call ptr @get_base_address(ptr noundef nonnull %108) #27
  %115 = icmp eq ptr %114, null
  br i1 %115, label %188, label %116

116:                                              ; preds = %113, %106
  %117 = icmp eq ptr %107, null
  br i1 %117, label %123, label %118

118:                                              ; preds = %116
  %119 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %107, i64 0, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !288
  %121 = load i32, ptr %107, align 8, !tbaa !290
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %118, %116
  %124 = tail call ptr @vec_heap_o_reserve(ptr noundef %107, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  br label %125

125:                                              ; preds = %123, %118
  %126 = phi ptr [ %124, %123 ], [ %107, %118 ]
  %127 = load i32, ptr %126, align 8, !tbaa !290
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 8, !tbaa !290
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %126, i64 0, i32 2, i64 %129
  store ptr %68, ptr %130, align 8, !tbaa !291
  %131 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %126, i64 0, i32 2, i64 %129, i32 1
  store i8 0, ptr %131, align 8, !tbaa !293
  br label %188

132:                                              ; preds = %50
  br i1 %28, label %133, label %188, !prof !281

133:                                              ; preds = %132
  %134 = getelementptr inbounds %struct.gimple_statement_base, ptr %25, i64 0, i32 3
  %135 = load i32, ptr %134, align 4, !tbaa !96
  %136 = add i32 %135, -3
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %188, label %138, !prof !295

138:                                              ; preds = %133
  %139 = zext i32 %136 to i64
  br label %140

140:                                              ; preds = %184, %138
  %141 = phi ptr [ null, %138 ], [ %185, %184 ]
  %142 = phi i64 [ 0, %138 ], [ %186, %184 ]
  %143 = add nuw nsw i64 %142, 3
  %144 = load i32, ptr %25, align 8
  %145 = and i32 %144, 255
  %146 = add nsw i32 %145, -1
  %147 = icmp ult i32 %146, 9
  tail call void @llvm.assume(i1 %147)
  %148 = zext nneg i32 %145 to i64
  %149 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %148
  %150 = load i32, ptr %149, align 4, !tbaa !100
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !171
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156, !prof !296

155:                                              ; preds = %140
  tail call void @fancy_abort(ptr noundef nonnull @.str.94, i32 noundef 1622, ptr noundef nonnull @.str.45) #27
  br label %156

156:                                              ; preds = %155, %140
  %157 = getelementptr inbounds i8, ptr %25, i64 %153
  %158 = and i64 %143, 4294967295
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !85
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65535
  %163 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !100
  switch i32 %164, label %184 [
    i32 3, label %168
    i32 4, label %165
  ], !prof !297

165:                                              ; preds = %156
  %166 = tail call ptr @get_base_address(ptr noundef nonnull %160) #27
  %167 = icmp eq ptr %166, null
  br i1 %167, label %184, label %168

168:                                              ; preds = %165, %156
  %169 = icmp eq ptr %141, null
  br i1 %169, label %175, label %170

170:                                              ; preds = %168
  %171 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %141, i64 0, i32 1
  %172 = load i32, ptr %171, align 4, !tbaa !288
  %173 = load i32, ptr %141, align 8, !tbaa !290
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %170, %168
  %176 = tail call ptr @vec_heap_o_reserve(ptr noundef %141, i32 noundef 1, i64 noundef 8, i64 noundef 16) #27
  br label %177

177:                                              ; preds = %175, %170
  %178 = phi ptr [ %176, %175 ], [ %141, %170 ]
  %179 = load i32, ptr %178, align 8, !tbaa !290
  %180 = add i32 %179, 1
  store i32 %180, ptr %178, align 8, !tbaa !290
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %178, i64 0, i32 2, i64 %181
  store ptr %159, ptr %182, align 8, !tbaa !291
  %183 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %178, i64 0, i32 2, i64 %181, i32 1
  store i8 1, ptr %183, align 8, !tbaa !293
  br label %184

184:                                              ; preds = %177, %165, %156
  %185 = phi ptr [ %141, %156 ], [ %141, %165 ], [ %178, %177 ]
  %186 = add nuw nsw i64 %142, 1
  %187 = icmp eq i64 %186, %139
  br i1 %187, label %188, label %140, !prof !298, !llvm.loop !299

188:                                              ; preds = %184, %133, %132, %125, %113, %106, %46, %40
  %189 = phi ptr [ null, %40 ], [ null, %46 ], [ %107, %106 ], [ %107, %113 ], [ %126, %125 ], [ null, %133 ], [ null, %132 ], [ %185, %184 ]
  %190 = icmp eq ptr %189, null
  br i1 %41, label %192, label %191, !prof !300

191:                                              ; preds = %188
  br i1 %190, label %268, label %266, !prof !281

192:                                              ; preds = %188, %257
  %193 = phi i32 [ %263, %257 ], [ 0, %188 ]
  br i1 %190, label %200, label %194, !prof !301

194:                                              ; preds = %192
  %195 = load i32, ptr %189, align 8, !tbaa !290
  %196 = icmp ugt i32 %195, %193
  br i1 %196, label %197, label %200, !prof !302

197:                                              ; preds = %194
  %198 = zext i32 %193 to i64
  %199 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %189, i64 0, i32 2, i64 %198
  br label %200

200:                                              ; preds = %197, %194, %192
  %201 = phi ptr [ %199, %197 ], [ null, %194 ], [ null, %192 ]
  %202 = phi i1 [ false, %197 ], [ true, %194 ], [ true, %192 ]
  br i1 %202, label %264, label %203, !prof !303

203:                                              ; preds = %200
  %204 = load ptr, ptr %201, align 8, !tbaa !291
  %205 = load ptr, ptr %204, align 8, !tbaa !85
  %206 = getelementptr inbounds %struct.data_ref_loc_d, ptr %201, i64 0, i32 1
  %207 = load i8, ptr %206, align 8, !tbaa !293
  %208 = tail call ptr @create_data_ref(ptr noundef %0, ptr noundef %205, ptr noundef nonnull %25, i8 noundef zeroext %207)
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %211, !prof !181

210:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 4173, ptr noundef nonnull @.str.45) #27
  br label %211

211:                                              ; preds = %210, %203
  %212 = getelementptr inbounds %struct.data_reference, ptr %208, i64 0, i32 5, i32 1
  br label %213

213:                                              ; preds = %227, %211
  %214 = phi i32 [ 0, %211 ], [ %230, %227 ]
  %215 = load ptr, ptr %212, align 8, !tbaa !114
  %216 = icmp eq ptr %215, null
  br i1 %216, label %224, label %217, !prof !184

217:                                              ; preds = %213
  %218 = load i32, ptr %215, align 8, !tbaa !115
  %219 = icmp ugt i32 %218, %214
  br i1 %219, label %220, label %224

220:                                              ; preds = %217
  %221 = zext i32 %214 to i64
  %222 = getelementptr inbounds %struct.VEC_tree_base, ptr %215, i64 0, i32 2, i64 %221
  %223 = load ptr, ptr %222, align 8, !tbaa !85
  br label %224

224:                                              ; preds = %220, %217, %213
  %225 = phi ptr [ %223, %220 ], [ null, %217 ], [ null, %213 ]
  %226 = phi i1 [ false, %220 ], [ true, %217 ], [ true, %213 ]
  br i1 %226, label %231, label %227, !prof !184

227:                                              ; preds = %224
  %228 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %225, ptr noundef null) #27
  %229 = icmp eq i8 %228, 0
  %230 = add i32 %214, 1
  br i1 %229, label %213, label %231, !llvm.loop !304

231:                                              ; preds = %227, %224
  %232 = icmp ne ptr %0, null
  %233 = and i1 %232, %226
  br i1 %233, label %234, label %247, !prof !181

234:                                              ; preds = %231
  %235 = load ptr, ptr %212, align 8, !tbaa !85
  %236 = icmp eq ptr %235, null
  br i1 %236, label %238, label %237

237:                                              ; preds = %234
  tail call void @free(ptr noundef %235)
  br label %238

238:                                              ; preds = %237, %234
  store ptr null, ptr %212, align 8, !tbaa !85
  tail call void @free(ptr noundef %208)
  %239 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %240 = icmp eq ptr %239, null
  br i1 %240, label %264, label %241

241:                                              ; preds = %238
  %242 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %243 = and i32 %242, 8
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %264, label %245

245:                                              ; preds = %241
  %246 = tail call i64 @fwrite(ptr nonnull @.str.57, i64 35, i64 1, ptr nonnull %239)
  br label %264

247:                                              ; preds = %231
  %248 = load ptr, ptr %2, align 8, !tbaa !85
  %249 = icmp eq ptr %248, null
  br i1 %249, label %255, label %250, !prof !305

250:                                              ; preds = %247
  %251 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %248, i64 0, i32 1
  %252 = load i32, ptr %251, align 4, !tbaa !306
  %253 = load i32, ptr %248, align 8, !tbaa !104
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %257, !prof !243

255:                                              ; preds = %250, %247
  %256 = tail call ptr @vec_heap_p_reserve(ptr noundef %248, i32 noundef 1) #27
  store ptr %256, ptr %2, align 8, !tbaa !85
  br label %257

257:                                              ; preds = %255, %250
  %258 = load ptr, ptr %2, align 8, !tbaa !85
  %259 = load i32, ptr %258, align 8, !tbaa !104
  %260 = add i32 %259, 1
  store i32 %260, ptr %258, align 8, !tbaa !104
  %261 = zext i32 %259 to i64
  %262 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %258, i64 0, i32 2, i64 %261
  store ptr %208, ptr %262, align 8, !tbaa !85
  %263 = add i32 %193, 1
  br label %192, !llvm.loop !307

264:                                              ; preds = %200, %245, %241, %238
  %265 = phi i8 [ 0, %245 ], [ 0, %241 ], [ 0, %238 ], [ 1, %200 ]
  br i1 %190, label %268, label %266, !prof !308

266:                                              ; preds = %264, %191
  %267 = phi i8 [ 0, %191 ], [ %265, %264 ]
  tail call void @free(ptr noundef %189)
  br label %268

268:                                              ; preds = %266, %191, %264
  %269 = phi i8 [ 0, %191 ], [ %265, %264 ], [ %267, %266 ]
  %270 = icmp eq i8 %269, 0
  br i1 %270, label %271, label %289, !prof !280

271:                                              ; preds = %268
  %272 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #27
  %273 = load ptr, ptr %2, align 8, !tbaa !85
  %274 = icmp eq ptr %273, null
  br i1 %274, label %280, label %275, !prof !327

275:                                              ; preds = %271
  %276 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %273, i64 0, i32 1
  %277 = load i32, ptr %276, align 4, !tbaa !306
  %278 = load i32, ptr %273, align 8, !tbaa !104
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %282, !prof !328

280:                                              ; preds = %271, %275
  %281 = tail call ptr @vec_heap_p_reserve(ptr noundef %273, i32 noundef 1) #27
  store ptr %281, ptr %2, align 8, !tbaa !85
  br label %282

282:                                              ; preds = %275, %280
  %283 = load ptr, ptr %2, align 8, !tbaa !85
  %284 = load i32, ptr %283, align 8, !tbaa !104
  %285 = add i32 %284, 1
  store i32 %285, ptr %283, align 8, !tbaa !104
  %286 = zext i32 %284 to i64
  %287 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %283, i64 0, i32 2, i64 %286
  store ptr %272, ptr %287, align 8, !tbaa !85
  %288 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %289

289:                                              ; preds = %268, %282
  %290 = phi ptr [ %288, %282 ], [ %23, %268 ]
  br i1 %270, label %295, label %291, !prof !280

291:                                              ; preds = %289
  %292 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %24, i64 0, i32 2
  %293 = load ptr, ptr %292, align 8, !tbaa !329
  %294 = icmp eq ptr %293, null
  br i1 %294, label %295, label %22, !prof !330, !llvm.loop !331

295:                                              ; preds = %289, %291, %19
  %296 = phi ptr [ null, %19 ], [ %290, %289 ], [ null, %291 ]
  ret ptr %296
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @find_loop_nest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = load ptr, ptr %1, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %3, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !332
  %8 = load i32, ptr %3, align 8, !tbaa !131
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2, %5
  %11 = tail call ptr @vec_heap_p_reserve(ptr noundef %3, i32 noundef 1) #27
  store ptr %11, ptr %1, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %5, %10
  %13 = load ptr, ptr %1, align 8, !tbaa !85
  %14 = load i32, ptr %13, align 8, !tbaa !131
  %15 = add i32 %14, 1
  store i32 %15, ptr %13, align 8, !tbaa !131
  %16 = zext i32 %14 to i64
  %17 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %13, i64 0, i32 2, i64 %16
  store ptr %0, ptr %17, align 8, !tbaa !85
  %18 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !333
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = tail call fastcc zeroext i8 @find_loop_nest_1(ptr noundef nonnull %19, ptr noundef nonnull %1), !range !164
  br label %23

23:                                               ; preds = %12, %21
  %24 = phi i8 [ %22, %21 ], [ 1, %12 ]
  ret i8 %24
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @find_loop_nest_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #9 !prof !84 {
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi ptr [ %0, %2 ], [ %25, %18 ]
  %5 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !334
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !332
  %14 = load i32, ptr %9, align 8, !tbaa !131
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %8, %11
  %17 = tail call ptr @vec_heap_p_reserve(ptr noundef %9, i32 noundef 1) #27
  store ptr %17, ptr %1, align 8, !tbaa !85
  br label %18

18:                                               ; preds = %11, %16
  %19 = load ptr, ptr %1, align 8, !tbaa !85
  %20 = load i32, ptr %19, align 8, !tbaa !131
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !131
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %19, i64 0, i32 2, i64 %22
  store ptr %4, ptr %23, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !333
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %3

27:                                               ; preds = %18, %3
  %28 = phi i8 [ 0, %3 ], [ 1, %18 ]
  ret i8 %28
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #9 !prof !84 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %6 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #27
  store ptr %6, ptr %5, align 8, !tbaa !85
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) @dependence_stats, i8 0, i64 76, i1 false)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = call zeroext i8 @find_loop_nest(ptr noundef nonnull %0, ptr noundef nonnull %5), !range !164
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = tail call ptr @find_data_references_in_loop(ptr noundef nonnull %0, ptr noundef %2)
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %14 = icmp eq ptr %12, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %11, %8, %4
  %16 = tail call ptr @xmalloc(i64 noundef 64) #27
  %17 = getelementptr inbounds %struct.data_dependence_relation, ptr %16, i64 0, i32 8
  store i8 0, ptr %17, align 4, !tbaa !265
  %18 = getelementptr inbounds %struct.data_dependence_relation, ptr %16, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %18, i8 0, i64 32, i1 false)
  %19 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %20 = getelementptr inbounds %struct.data_dependence_relation, ptr %16, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !121
  %21 = load ptr, ptr %3, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %21, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !245
  %26 = load i32, ptr %21, align 8, !tbaa !118
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %15, %23
  %29 = tail call ptr @vec_heap_p_reserve(ptr noundef %21, i32 noundef 1) #27
  store ptr %29, ptr %3, align 8, !tbaa !85
  br label %30

30:                                               ; preds = %23, %28
  %31 = load ptr, ptr %3, align 8, !tbaa !85
  %32 = load i32, ptr %31, align 8, !tbaa !118
  %33 = add i32 %32, 1
  store i32 %33, ptr %31, align 8, !tbaa !118
  %34 = zext i32 %32 to i64
  %35 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %31, i64 0, i32 2, i64 %34
  store ptr %16, ptr %35, align 8, !tbaa !85
  br label %39

36:                                               ; preds = %11
  %37 = load ptr, ptr %2, align 8, !tbaa !85
  %38 = load ptr, ptr %5, align 8, !tbaa !85
  tail call void @compute_all_dependences(ptr noundef %37, ptr noundef %3, ptr noundef %38, i8 noundef zeroext %1)
  br label %39

39:                                               ; preds = %36, %30
  %40 = phi i8 [ 0, %30 ], [ 1, %36 ]
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %42 = icmp eq ptr %41, null
  br i1 %42, label %106, label %43

43:                                               ; preds = %39
  %44 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %45 = and i32 %44, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %106, label %47

47:                                               ; preds = %43
  %48 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 30, i64 1, ptr nonnull %41)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %50 = load i32, ptr @dependence_stats, align 4, !tbaa !247
  %51 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.59, i32 noundef %50)
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %53 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !335
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.60, i32 noundef %53)
  %55 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %56 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !336
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.61, i32 noundef %56)
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %59 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !258
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef nonnull @.str.62, i32 noundef %59)
  %61 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %62 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !337
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %61, ptr noundef nonnull @.str.63, i32 noundef %62)
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %65 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !338
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.64, i32 noundef %65)
  %67 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %68 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !339
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef nonnull @.str.65, i32 noundef %68)
  %70 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %71 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !340
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %70, ptr noundef nonnull @.str.66, i32 noundef %71)
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %74 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 9), align 4, !tbaa !341
  %75 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.67, i32 noundef %74)
  %76 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %77 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 8), align 4, !tbaa !342
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef nonnull @.str.68, i32 noundef %77)
  %79 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %80 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 10), align 4, !tbaa !343
  %81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.69, i32 noundef %80)
  %82 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %83 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !344
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef nonnull @.str.70, i32 noundef %83)
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %86 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef nonnull @.str.71, i32 noundef %86)
  %88 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %89 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef nonnull @.str.72, i32 noundef %89)
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %92 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %93 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef nonnull @.str.73, i32 noundef %92)
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %95 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !348
  %96 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.74, i32 noundef %95)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %98 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17), align 4, !tbaa !349
  %99 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef nonnull @.str.75, i32 noundef %98)
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %101 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), align 4, !tbaa !350
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.76, i32 noundef %101)
  %103 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %104 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), align 4, !tbaa !351
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %103, ptr noundef nonnull @.str.77, i32 noundef %104)
  br label %106

106:                                              ; preds = %47, %43, %39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  ret i8 %40
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: inlinehint nounwind uwtable
define dso_local noundef zeroext i8 @compute_data_dependences_for_bb(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #11 !prof !312 {
  %5 = tail call fastcc ptr @find_data_references_in_bb(ptr noundef null, ptr noundef %0, ptr noundef %2)
  %6 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %98, label %8, !prof !352

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %34, %8
  %12 = phi i32 [ 0, %8 ], [ %24, %34 ]
  br i1 %10, label %20, label %13, !prof !236

13:                                               ; preds = %11
  %14 = load i32, ptr %9, align 8, !tbaa !104
  %15 = icmp ugt i32 %14, %12
  br i1 %15, label %16, label %20, !prof !237

16:                                               ; preds = %13
  %17 = zext i32 %12 to i64
  %18 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %9, i64 0, i32 2, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  br label %20

20:                                               ; preds = %16, %13, %11
  %21 = phi ptr [ %19, %16 ], [ null, %13 ], [ null, %11 ]
  %22 = phi i1 [ false, %16 ], [ true, %13 ], [ true, %11 ]
  br i1 %22, label %66, label %23, !prof !238

23:                                               ; preds = %20
  %24 = add i32 %12, 1
  br label %25

25:                                               ; preds = %64, %23
  %26 = phi i32 [ %24, %23 ], [ %65, %64 ]
  br i1 %10, label %34, label %27, !prof !239

27:                                               ; preds = %25
  %28 = load i32, ptr %9, align 8, !tbaa !104
  %29 = icmp ugt i32 %28, %26
  br i1 %29, label %30, label %34, !prof !240

30:                                               ; preds = %27
  %31 = zext i32 %26 to i64
  %32 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %9, i64 0, i32 2, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !85
  br label %34

34:                                               ; preds = %30, %27, %25
  %35 = phi ptr [ %33, %30 ], [ null, %27 ], [ null, %25 ]
  %36 = phi i1 [ false, %30 ], [ true, %27 ], [ true, %25 ]
  br i1 %36, label %11, label %37, !prof !241, !llvm.loop !242

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.data_reference, ptr %21, i64 0, i32 3
  %39 = load i8, ptr %38, align 8, !tbaa !197
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %47, label %41, !prof !243

41:                                               ; preds = %37
  %42 = icmp ne i8 %1, 0
  %43 = getelementptr inbounds %struct.data_reference, ptr %35, i64 0, i32 3
  %44 = load i8, ptr %43, align 8, !tbaa !197
  %45 = icmp eq i8 %44, 0
  %46 = or i1 %42, %45
  br i1 %46, label %47, label %64, !prof !244

47:                                               ; preds = %41, %37
  %48 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef %21, ptr noundef %35, ptr noundef null)
  %49 = load ptr, ptr %3, align 8, !tbaa !85
  %50 = icmp eq ptr %49, null
  br i1 %50, label %56, label %51, !prof !244

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %49, i64 0, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !245
  %54 = load i32, ptr %49, align 8, !tbaa !118
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %51, %47
  %57 = tail call ptr @vec_heap_p_reserve(ptr noundef %49, i32 noundef 1) #27
  store ptr %57, ptr %3, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %56, %51
  %59 = load ptr, ptr %3, align 8, !tbaa !85
  %60 = load i32, ptr %59, align 8, !tbaa !118
  %61 = add i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !118
  %62 = zext i32 %60 to i64
  %63 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %59, i64 0, i32 2, i64 %62
  store ptr %48, ptr %63, align 8, !tbaa !85
  br label %64

64:                                               ; preds = %58, %41
  %65 = add i32 %26, 1
  br label %25, !llvm.loop !259

66:                                               ; preds = %20
  %67 = icmp eq i8 %1, 0
  br i1 %67, label %98, label %68, !prof !260

68:                                               ; preds = %66, %91
  %69 = phi i32 [ %97, %91 ], [ 0, %66 ]
  br i1 %10, label %77, label %70, !prof !236

70:                                               ; preds = %68
  %71 = load i32, ptr %9, align 8, !tbaa !104
  %72 = icmp ugt i32 %71, %69
  br i1 %72, label %73, label %77, !prof !237

73:                                               ; preds = %70
  %74 = zext i32 %69 to i64
  %75 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %9, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !85
  br label %77

77:                                               ; preds = %73, %70, %68
  %78 = phi ptr [ %76, %73 ], [ null, %70 ], [ null, %68 ]
  %79 = phi i1 [ false, %73 ], [ true, %70 ], [ true, %68 ]
  br i1 %79, label %98, label %80, !prof !238

80:                                               ; preds = %77
  %81 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef %78, ptr noundef %78, ptr noundef null)
  %82 = load ptr, ptr %3, align 8, !tbaa !85
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84, !prof !261

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %82, i64 0, i32 1
  %86 = load i32, ptr %85, align 4, !tbaa !245
  %87 = load i32, ptr %82, align 8, !tbaa !118
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %91, !prof !262

89:                                               ; preds = %84, %80
  %90 = tail call ptr @vec_heap_p_reserve(ptr noundef %82, i32 noundef 1) #27
  store ptr %90, ptr %3, align 8, !tbaa !85
  br label %91

91:                                               ; preds = %89, %84
  %92 = load ptr, ptr %3, align 8, !tbaa !85
  %93 = load i32, ptr %92, align 8, !tbaa !118
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8, !tbaa !118
  %95 = zext i32 %93 to i64
  %96 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %92, i64 0, i32 2, i64 %95
  store ptr %81, ptr %96, align 8, !tbaa !85
  tail call fastcc void @compute_self_dependence(ptr noundef %81)
  %97 = add i32 %69, 1
  br label %68, !llvm.loop !263

98:                                               ; preds = %77, %66, %4
  %99 = phi i8 [ 0, %4 ], [ 1, %66 ], [ 1, %77 ]
  ret i8 %99
}

; Function Attrs: cold nounwind uwtable
define dso_local void @tree_check_data_deps() local_unnamed_addr #9 !prof !84 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !85
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !353
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %0
  %8 = getelementptr inbounds %struct.loops, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !354
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !131
  br label %13

13:                                               ; preds = %11, %7
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %15 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %14, i64 noundef 8, i64 noundef 4) #27
  %16 = load ptr, ptr @cfun, align 8, !tbaa !85
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !353
  %19 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !356
  br label %21

21:                                               ; preds = %34, %13
  %22 = phi ptr [ %20, %13 ], [ %35, %34 ]
  %23 = load i32, ptr %22, align 8, !tbaa !133
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i32, ptr %15, align 4, !tbaa !357
  %27 = add i32 %26, 1
  store i32 %27, ptr %15, align 4, !tbaa !357
  %28 = zext i32 %26 to i64
  %29 = getelementptr inbounds %struct.VEC_int_base, ptr %15, i64 0, i32 2, i64 %28
  store i32 %23, ptr %29, align 4, !tbaa !100
  br label %30

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.loop, ptr %22, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !333
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %39, %30
  %35 = phi ptr [ %32, %30 ], [ %42, %39 ]
  br label %21, !llvm.loop !359

36:                                               ; preds = %58
  %37 = icmp eq ptr %15, null
  %38 = getelementptr inbounds %struct.loops, ptr %18, i64 0, i32 1
  br label %61

39:                                               ; preds = %30, %58
  %40 = phi ptr [ %59, %58 ], [ %22, %30 ]
  %41 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 9
  %42 = load ptr, ptr %41, align 8, !tbaa !334
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %34, !llvm.loop !359

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.loop, ptr %40, i64 0, i32 7
  %46 = load ptr, ptr %45, align 8, !tbaa !360
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = load i32, ptr %46, align 8, !tbaa !131
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i32 [ %49, %48 ], [ 0, %44 ]
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = add i32 %51, -1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %46, i64 0, i32 2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %53, %50
  %59 = phi ptr [ %57, %53 ], [ null, %50 ]
  %60 = icmp eq ptr %59, null
  br i1 %60, label %36, label %39, !llvm.loop !361

61:                                               ; preds = %36, %73
  %62 = phi i32 [ %74, %73 ], [ 0, %36 ]
  br i1 %37, label %70, label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %15, align 4, !tbaa !357
  %65 = icmp ugt i32 %64, %62
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = zext i32 %62 to i64
  %68 = getelementptr inbounds %struct.VEC_int_base, ptr %15, i64 0, i32 2, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !100
  br label %70

70:                                               ; preds = %66, %63, %61
  %71 = phi i32 [ %69, %66 ], [ 0, %63 ], [ 0, %61 ]
  %72 = phi i1 [ false, %66 ], [ true, %63 ], [ true, %61 ]
  br i1 %72, label %80, label %73

73:                                               ; preds = %70
  %74 = add i32 %62, 1
  %75 = load ptr, ptr %38, align 8, !tbaa !354
  %76 = zext i32 %71 to i64
  %77 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %75, i64 0, i32 2, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  %79 = icmp eq ptr %78, null
  br i1 %79, label %61, label %82, !llvm.loop !362

80:                                               ; preds = %70
  br i1 %37, label %82, label %81

81:                                               ; preds = %80
  tail call void @free(ptr noundef %15)
  br label %82

82:                                               ; preds = %73, %80, %81, %0
  %83 = phi i32 [ 0, %0 ], [ %62, %81 ], [ %62, %80 ], [ %74, %73 ]
  %84 = phi ptr [ null, %0 ], [ null, %81 ], [ null, %80 ], [ %15, %73 ]
  %85 = phi ptr [ null, %0 ], [ null, %81 ], [ null, %80 ], [ %78, %73 ]
  %86 = icmp eq ptr %85, null
  br i1 %86, label %177, label %87

87:                                               ; preds = %82, %172
  %88 = phi ptr [ %175, %172 ], [ %85, %82 ]
  %89 = phi ptr [ %174, %172 ], [ %84, %82 ]
  %90 = phi i32 [ %173, %172 ], [ %83, %82 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #27
  %91 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #27
  store ptr %91, ptr %1, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %92 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #27
  store ptr %92, ptr %2, align 8, !tbaa !85
  %93 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef nonnull %88, i8 noundef zeroext 0, ptr noundef nonnull %1, ptr noundef nonnull %2), !range !164
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %95 = icmp eq ptr %94, null
  br i1 %95, label %143, label %96

96:                                               ; preds = %87
  %97 = load ptr, ptr %2, align 8
  %98 = icmp eq ptr %97, null
  br label %99

99:                                               ; preds = %111, %96
  %100 = phi i32 [ 0, %96 ], [ %112, %111 ]
  br i1 %98, label %108, label %101

101:                                              ; preds = %99
  %102 = load i32, ptr %97, align 8, !tbaa !118
  %103 = icmp ugt i32 %102, %100
  br i1 %103, label %104, label %108

104:                                              ; preds = %101
  %105 = zext i32 %100 to i64
  %106 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %97, i64 0, i32 2, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !85
  br label %108

108:                                              ; preds = %104, %101, %99
  %109 = phi ptr [ %107, %104 ], [ null, %101 ], [ null, %99 ]
  %110 = phi i1 [ false, %104 ], [ true, %101 ], [ true, %99 ]
  br i1 %110, label %113, label %111

111:                                              ; preds = %108
  tail call void @dump_data_dependence_relation(ptr noundef nonnull %94, ptr noundef %109)
  %112 = add i32 %100, 1
  br label %99, !llvm.loop !120

113:                                              ; preds = %108
  %114 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %115 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 2, i64 1, ptr %114)
  %116 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %117 = and i32 %116, 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %113
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @dump_dist_dir_vectors(ptr noundef %120, ptr noundef %97)
  br label %121

121:                                              ; preds = %119, %113
  %122 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %123 = and i32 %122, 16
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %143, label %125

125:                                              ; preds = %121, %137
  %126 = phi i32 [ %141, %137 ], [ 0, %121 ]
  br i1 %98, label %134, label %127

127:                                              ; preds = %125
  %128 = load i32, ptr %97, align 8, !tbaa !118
  %129 = icmp ugt i32 %128, %126
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = zext i32 %126 to i64
  %132 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %97, i64 0, i32 2, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !85
  br label %134

134:                                              ; preds = %130, %127, %125
  %135 = phi ptr [ %133, %130 ], [ null, %127 ], [ null, %125 ]
  %136 = phi i1 [ false, %130 ], [ true, %127 ], [ true, %125 ]
  br i1 %136, label %142, label %137

137:                                              ; preds = %134
  %138 = getelementptr inbounds %struct.data_dependence_relation, ptr %135, i64 0, i32 2
  %139 = load ptr, ptr %138, align 8, !tbaa !121
  %140 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %139) #27
  %141 = add i32 %126, 1
  br label %125, !llvm.loop !363

142:                                              ; preds = %134
  tail call void @gather_stats_on_scev_database() #27
  br label %143

143:                                              ; preds = %87, %121, %142
  %144 = load ptr, ptr %2, align 8, !tbaa !85
  tail call void @free_dependence_relations(ptr noundef %144)
  %145 = load ptr, ptr %1, align 8, !tbaa !85
  tail call void @free_data_refs(ptr noundef %145)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #27
  %146 = icmp eq ptr %89, null
  %147 = load ptr, ptr @cfun, align 8
  %148 = getelementptr inbounds %struct.function, ptr %147, i64 0, i32 4
  br label %149

149:                                              ; preds = %161, %143
  %150 = phi i32 [ %90, %143 ], [ %162, %161 ]
  br i1 %146, label %158, label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %89, align 4, !tbaa !357
  %153 = icmp ugt i32 %152, %150
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = zext i32 %150 to i64
  %156 = getelementptr inbounds %struct.VEC_int_base, ptr %89, i64 0, i32 2, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !100
  br label %158

158:                                              ; preds = %154, %151, %149
  %159 = phi i32 [ %157, %154 ], [ 0, %151 ], [ 0, %149 ]
  %160 = phi i1 [ false, %154 ], [ true, %151 ], [ true, %149 ]
  br i1 %160, label %170, label %161

161:                                              ; preds = %158
  %162 = add i32 %150, 1
  %163 = load ptr, ptr %148, align 8, !tbaa !353
  %164 = getelementptr inbounds %struct.loops, ptr %163, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !354
  %166 = zext i32 %159 to i64
  %167 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %165, i64 0, i32 2, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !85
  %169 = icmp eq ptr %168, null
  br i1 %169, label %149, label %172, !llvm.loop !362

170:                                              ; preds = %158
  br i1 %146, label %172, label %171

171:                                              ; preds = %170
  tail call void @free(ptr noundef %89)
  br label %172

172:                                              ; preds = %161, %170, %171
  %173 = phi i32 [ %150, %171 ], [ %150, %170 ], [ %162, %161 ]
  %174 = phi ptr [ null, %171 ], [ null, %170 ], [ %89, %161 ]
  %175 = phi ptr [ null, %171 ], [ null, %170 ], [ %168, %161 ]
  %176 = icmp eq ptr %175, null
  br i1 %176, label %177, label %87, !llvm.loop !364

177:                                              ; preds = %172, %82
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_dependence_relation(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !125
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call fastcc void @free_subscripts(ptr noundef nonnull %5)
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void @free(ptr noundef %10)
  store ptr null, ptr %9, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  tail call void @free(ptr noundef %15)
  store ptr null, ptr %14, align 8, !tbaa !85
  br label %18

18:                                               ; preds = %17, %13
  tail call void @free(ptr noundef %0)
  br label %19

19:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_subscripts(ptr noundef %0) unnamed_addr #9 !prof !84 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %15, %1
  %4 = phi i32 [ 0, %1 ], [ %19, %15 ]
  br i1 %2, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !126
  %7 = icmp ugt i32 %6, %4
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %3 ]
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 8, !tbaa !145
  tail call fastcc void @free_conflict_function(ptr noundef %16)
  %17 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !150
  tail call fastcc void @free_conflict_function(ptr noundef %18)
  tail call void @free(ptr noundef %13)
  %19 = add i32 %4, 1
  br label %3, !llvm.loop !365

20:                                               ; preds = %12
  br i1 %2, label %22, label %21

21:                                               ; preds = %20
  tail call void @free(ptr noundef %0)
  br label %22

22:                                               ; preds = %20, %21
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_dependence_relations(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %29, %1
  %4 = phi ptr [ null, %1 ], [ %30, %29 ]
  %5 = phi i32 [ 0, %1 ], [ %31, %29 ]
  br i1 %2, label %13, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %0, align 8, !tbaa !118
  %8 = icmp ugt i32 %7, %5
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = zext i32 %5 to i64
  %11 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !85
  br label %13

13:                                               ; preds = %3, %6, %9
  %14 = phi ptr [ %12, %9 ], [ null, %6 ], [ null, %3 ]
  %15 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %3 ]
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = icmp eq ptr %14, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %16
  %19 = icmp eq ptr %4, null
  %20 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !130
  br i1 %19, label %27, label %22

22:                                               ; preds = %18
  %23 = icmp eq ptr %21, null
  %24 = icmp eq ptr %21, %4
  %25 = or i1 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 4551, ptr noundef nonnull @.str.45) #27
  br label %27

27:                                               ; preds = %18, %26, %22
  %28 = phi ptr [ %4, %22 ], [ %4, %26 ], [ %21, %18 ]
  tail call void @free_dependence_relation(ptr noundef nonnull %14)
  br label %29

29:                                               ; preds = %16, %27
  %30 = phi ptr [ %4, %16 ], [ %28, %27 ]
  %31 = add i32 %5, 1
  br label %3, !llvm.loop !366

32:                                               ; preds = %13
  %33 = icmp eq ptr %4, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  tail call void @free(ptr noundef %4)
  br label %35

35:                                               ; preds = %34, %32
  br i1 %2, label %37, label %36

36:                                               ; preds = %35
  tail call void @free(ptr noundef %0)
  br label %37

37:                                               ; preds = %35, %36
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_data_refs(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = icmp eq ptr %0, null
  br label %3

3:                                                ; preds = %20, %1
  %4 = phi i32 [ 0, %1 ], [ %21, %20 ]
  br i1 %2, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !104
  %7 = icmp ugt i32 %6, %4
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %4 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !85
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i1 [ false, %8 ], [ true, %5 ], [ true, %3 ]
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.data_reference, ptr %13, i64 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !85
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @free(ptr noundef %17)
  br label %20

20:                                               ; preds = %15, %19
  store ptr null, ptr %16, align 8, !tbaa !85
  tail call void @free(ptr noundef %13)
  %21 = add i32 %4, 1
  br label %3, !llvm.loop !367

22:                                               ; preds = %12
  br i1 %2, label %24, label %23

23:                                               ; preds = %22
  tail call void @free(ptr noundef %0)
  br label %24

24:                                               ; preds = %22, %23
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_rdg_vertex(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #9 !prof !84 {
  %4 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !368
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !370
  %10 = getelementptr inbounds %struct.rdg_vertex, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !372
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.80, ptr @.str.79
  %14 = getelementptr inbounds %struct.rdg_vertex, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !374
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.80, ptr @.str.81
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.78, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %17)
  %19 = load ptr, ptr %7, align 8, !tbaa !375
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %3 ]
  %23 = load i32, ptr %22, align 8, !tbaa !376
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %23)
  %25 = getelementptr inbounds %struct.graph_edge, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !378
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !379

28:                                               ; preds = %21, %3
  %29 = tail call i64 @fwrite(ptr nonnull @.str.83, i64 7, i64 1, ptr %0)
  %30 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !380
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %39, %33 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.graph_edge, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !381
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %36)
  %38 = getelementptr inbounds %struct.graph_edge, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !382
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33, !llvm.loop !383

41:                                               ; preds = %33, %28
  %42 = tail call i64 @fwrite(ptr nonnull @.str.84, i64 3, i64 1, ptr %0)
  %43 = load ptr, ptr %8, align 8, !tbaa !370
  %44 = load ptr, ptr %43, align 8, !tbaa !384
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %44, i32 noundef 0, i32 noundef 16448) #27
  %45 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rdg_vertex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_rdg_vertex(ptr noundef %3, ptr noundef %0, i32 noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_rdg_component(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #9 !prof !84 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.85, i32 noundef %2)
  %6 = load i32, ptr %1, align 8, !tbaa !385
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %8, %23
  %12 = phi i64 [ 0, %8 ], [ %24, %23 ]
  %13 = load ptr, ptr %9, align 8, !tbaa !368
  %14 = getelementptr inbounds %struct.vertex, ptr %13, i64 %12, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !386
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  br i1 %10, label %21, label %18

18:                                               ; preds = %17
  %19 = trunc i64 %12 to i32
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %19) #27
  br label %21

21:                                               ; preds = %18, %17
  %22 = trunc i64 %12 to i32
  tail call void @dump_rdg_vertex(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %22)
  br label %23

23:                                               ; preds = %11, %21
  %24 = add nuw nsw i64 %12, 1
  %25 = load i32, ptr %1, align 8, !tbaa !385
  %26 = sext i32 %25 to i64
  %27 = icmp slt i64 %24, %26
  br i1 %27, label %11, label %28, !llvm.loop !387

28:                                               ; preds = %23, %4
  %29 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  ret void
}

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rdg_component(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_rdg_component(ptr noundef %3, ptr noundef %0, i32 noundef %1, ptr noundef null)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @dump_rdg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #27
  %4 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 5, i64 1, ptr %0)
  %5 = load i32, ptr %1, align 8, !tbaa !385
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i64 [ 0, %7 ], [ %19, %18 ]
  %11 = trunc i64 %10 to i32
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %11) #27
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %8, align 8, !tbaa !368
  %16 = getelementptr inbounds %struct.vertex, ptr %15, i64 %10, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !386
  tail call void @dump_rdg_component(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17, ptr noundef %3)
  br label %18

18:                                               ; preds = %9, %14
  %19 = add nuw nsw i64 %10, 1
  %20 = load i32, ptr %1, align 8, !tbaa !385
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %9, label %23, !llvm.loop !388

23:                                               ; preds = %18, %2
  %24 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %0)
  tail call void @bitmap_obstack_free(ptr noundef %3) #27
  ret void
}

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_rdg(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !85
  tail call void @dump_rdg(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @rdg_vertex_for_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = alloca %struct.rdg_vertex_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  store ptr %1, ptr %3, align 8, !tbaa !389
  %4 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !391
  %6 = call ptr @htab_find(ptr noundef %5, ptr noundef nonnull %3) #27
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rdg_vertex_info, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !392
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  ret i32 %12
}

declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @create_rdg_vertices(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #9 !prof !84 {
  %3 = alloca ptr, align 8
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  br label %7

7:                                                ; preds = %72, %2
  %8 = phi i64 [ %73, %72 ], [ 0, %2 ]
  br i1 %4, label %16, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %1, align 8, !tbaa !393
  %11 = zext i32 %10 to i64
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.VEC_gimple_base, ptr %1, i64 0, i32 2, i64 %8
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  br label %16

16:                                               ; preds = %7, %9, %13
  %17 = phi ptr [ %15, %13 ], [ null, %9 ], [ null, %7 ]
  %18 = phi i1 [ false, %13 ], [ true, %9 ], [ true, %7 ]
  br i1 %18, label %74, label %19

19:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %20 = load ptr, ptr %5, align 8, !tbaa !368
  %21 = tail call ptr @xmalloc(i64 noundef 16) #27
  store ptr %17, ptr %21, align 8, !tbaa !389
  %22 = getelementptr inbounds %struct.rdg_vertex_info, ptr %21, i64 0, i32 1
  %23 = trunc i64 %8 to i32
  store i32 %23, ptr %22, align 8, !tbaa !392
  %24 = load ptr, ptr %6, align 8, !tbaa !391
  %25 = tail call ptr @htab_find_slot(ptr noundef %24, ptr noundef nonnull %21, i32 noundef 1) #27
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store ptr %21, ptr %25, align 8, !tbaa !85
  br label %30

29:                                               ; preds = %19
  tail call void @free(ptr noundef %21)
  br label %30

30:                                               ; preds = %29, %28
  %31 = tail call ptr @xmalloc(i64 noundef 16) #27
  %32 = getelementptr inbounds %struct.vertex, ptr %20, i64 %8, i32 4
  store ptr %31, ptr %32, align 8, !tbaa !370
  %33 = load ptr, ptr %5, align 8, !tbaa !368
  %34 = getelementptr inbounds %struct.vertex, ptr %33, i64 %8, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !370
  store ptr %17, ptr %35, align 8, !tbaa !384
  %36 = getelementptr inbounds %struct.rdg_vertex, ptr %35, i64 0, i32 1
  store i8 0, ptr %36, align 8, !tbaa !372
  %37 = getelementptr inbounds %struct.rdg_vertex, ptr %35, i64 0, i32 2
  store i8 0, ptr %37, align 1, !tbaa !374
  %38 = load i32, ptr %17, align 8
  %39 = and i32 %38, 255
  %40 = icmp eq i32 %39, 16
  br i1 %40, label %72, label %41

41:                                               ; preds = %30
  %42 = call zeroext i8 @get_references_in_stmt(ptr noundef nonnull %17, ptr noundef nonnull %3), !range !164
  %43 = load ptr, ptr %3, align 8
  %44 = icmp eq ptr %43, null
  br label %45

45:                                               ; preds = %67, %41
  %46 = phi i64 [ %68, %67 ], [ 0, %41 ]
  br i1 %44, label %53, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %43, align 8, !tbaa !290
  %49 = zext i32 %48 to i64
  %50 = icmp uge i64 %46, %49
  %51 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %43, i64 0, i32 2, i64 %46
  %52 = select i1 %50, ptr null, ptr %51
  br label %53

53:                                               ; preds = %47, %45
  %54 = phi ptr [ null, %45 ], [ %52, %47 ]
  %55 = phi i1 [ true, %45 ], [ %50, %47 ]
  br i1 %55, label %69, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.data_ref_loc_d, ptr %54, i64 0, i32 1
  %58 = load i8, ptr %57, align 8, !tbaa !293
  %59 = icmp eq i8 %58, 0
  %60 = load ptr, ptr %5, align 8, !tbaa !368
  %61 = getelementptr inbounds %struct.vertex, ptr %60, i64 %8, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !370
  br i1 %59, label %63, label %65

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.rdg_vertex, ptr %62, i64 0, i32 1
  store i8 1, ptr %64, align 8, !tbaa !372
  br label %67

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.rdg_vertex, ptr %62, i64 0, i32 2
  store i8 1, ptr %66, align 1, !tbaa !374
  br label %67

67:                                               ; preds = %63, %65
  %68 = add nuw i64 %46, 1
  br label %45, !llvm.loop !395

69:                                               ; preds = %53
  br i1 %44, label %71, label %70

70:                                               ; preds = %69
  tail call void @free(ptr noundef %43)
  br label %71

71:                                               ; preds = %69, %70
  store ptr null, ptr %3, align 8, !tbaa !85
  br label %72

72:                                               ; preds = %30, %71
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  %73 = add nuw i64 %8, 1
  br label %7, !llvm.loop !396

74:                                               ; preds = %16
  ret void
}

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_empty_rdg(i32 noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = tail call ptr @new_graph(i32 noundef %0) #27
  %3 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_stmt_vertex_info, ptr noundef nonnull @eq_stmt_vertex_info, ptr noundef nonnull @hash_stmt_vertex_del) #27
  %4 = getelementptr inbounds %struct.graph, ptr %2, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !391
  ret ptr %2
}

declare ptr @new_graph(i32 noundef) local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal i32 @hash_stmt_vertex_info(ptr nocapture noundef readonly %0) #9 !prof !84 {
  %2 = load ptr, ptr %0, align 8, !tbaa !389
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !85
  %4 = tail call i32 %3(ptr noundef %2) #27
  ret i32 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @eq_stmt_vertex_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 !prof !84 {
  %3 = load ptr, ptr %0, align 8, !tbaa !389
  %4 = load ptr, ptr %1, align 8, !tbaa !389
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @hash_stmt_vertex_del(ptr nocapture noundef %0) #18 !prof !84 {
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local ptr @build_rdg(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = alloca %struct.rdg_vertex_info, align 8
  %3 = alloca %struct.rdg_vertex_info, align 8
  %4 = alloca %struct.rdg_vertex_info, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %8 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #27
  %9 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #27
  store ptr %9, ptr %6, align 8, !tbaa !85
  %10 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #27
  store ptr %10, ptr %7, align 8, !tbaa !85
  %11 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %7, ptr noundef nonnull %6), !range !164
  %12 = load ptr, ptr %6, align 8, !tbaa !85
  %13 = icmp eq ptr %12, null
  %14 = load ptr, ptr @chrec_dont_know, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = phi i32 [ 0, %1 ], [ %31, %27 ]
  br i1 %13, label %24, label %17

17:                                               ; preds = %15
  %18 = load i32, ptr %12, align 8, !tbaa !118
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = zext i32 %16 to i64
  %22 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %12, i64 0, i32 2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !85
  br label %24

24:                                               ; preds = %20, %17, %15
  %25 = phi ptr [ %23, %20 ], [ null, %17 ], [ null, %15 ]
  %26 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %15 ]
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.data_dependence_relation, ptr %25, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !121
  %30 = icmp eq ptr %29, %14
  %31 = add i32 %16, 1
  br i1 %30, label %32, label %15, !llvm.loop !397

32:                                               ; preds = %27
  br i1 %26, label %36, label %33

33:                                               ; preds = %32
  tail call void @free_dependence_relations(ptr noundef %12)
  %34 = load ptr, ptr %7, align 8, !tbaa !85
  tail call void @free_data_refs(ptr noundef %34)
  %35 = icmp eq ptr %8, null
  br i1 %35, label %414, label %411

36:                                               ; preds = %24, %32
  %37 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #27
  %38 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4, !tbaa !310
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %122, label %41

41:                                               ; preds = %36, %116
  %42 = phi i64 [ %118, %116 ], [ 0, %36 ]
  %43 = phi ptr [ %117, %116 ], [ %8, %36 ]
  %44 = getelementptr inbounds ptr, ptr %37, i64 %42
  %45 = load ptr, ptr %44, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #27
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %45) #27
  %46 = load ptr, ptr %5, align 8, !tbaa.struct !398
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #27
  %47 = icmp eq ptr %46, null
  br i1 %47, label %69, label %48

48:                                               ; preds = %41, %60
  %49 = phi ptr [ %67, %60 ], [ %46, %41 ]
  %50 = phi ptr [ %61, %60 ], [ %43, %41 ]
  %51 = load ptr, ptr %49, align 8, !tbaa !325
  %52 = icmp eq ptr %50, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.VEC_gimple_base, ptr %50, i64 0, i32 1
  %55 = load i32, ptr %54, align 4, !tbaa !399
  %56 = load i32, ptr %50, align 8, !tbaa !393
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %53, %48
  %59 = call ptr @vec_heap_p_reserve(ptr noundef %50, i32 noundef 1) #27
  br label %60

60:                                               ; preds = %58, %53
  %61 = phi ptr [ %59, %58 ], [ %50, %53 ]
  %62 = load i32, ptr %61, align 8, !tbaa !393
  %63 = add i32 %62, 1
  store i32 %63, ptr %61, align 8, !tbaa !393
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.VEC_gimple_base, ptr %61, i64 0, i32 2, i64 %64
  store ptr %51, ptr %65, align 8, !tbaa !85
  %66 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %49, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !329
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %48, !llvm.loop !400

69:                                               ; preds = %60, %41
  %70 = phi ptr [ %43, %41 ], [ %61, %60 ]
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 13
  %72 = load i32, ptr %71, align 8, !tbaa !314, !noalias !401
  %73 = and i32 %72, 512
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 7
  %77 = load ptr, ptr %76, align 8, !tbaa !96, !noalias !401
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  %80 = load ptr, ptr %77, align 8, !tbaa !320, !noalias !401
  br label %81

81:                                               ; preds = %79, %75, %69
  %82 = phi ptr [ %80, %79 ], [ null, %75 ], [ null, %69 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %82, align 8, !tbaa !322, !noalias !401
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi ptr [ %85, %84 ], [ null, %81 ]
  %88 = icmp eq ptr %87, null
  br i1 %88, label %116, label %89

89:                                               ; preds = %86, %111
  %90 = phi ptr [ %114, %111 ], [ %87, %86 ]
  %91 = phi ptr [ %112, %111 ], [ %70, %86 ]
  %92 = load ptr, ptr %90, align 8, !tbaa !325
  %93 = load i32, ptr %92, align 8
  %94 = and i32 %93, 255
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %111, label %96

96:                                               ; preds = %89
  %97 = icmp eq ptr %91, null
  br i1 %97, label %103, label %98

98:                                               ; preds = %96
  %99 = getelementptr inbounds %struct.VEC_gimple_base, ptr %91, i64 0, i32 1
  %100 = load i32, ptr %99, align 4, !tbaa !399
  %101 = load i32, ptr %91, align 8, !tbaa !393
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %98, %96
  %104 = call ptr @vec_heap_p_reserve(ptr noundef %91, i32 noundef 1) #27
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi ptr [ %104, %103 ], [ %91, %98 ]
  %107 = load i32, ptr %106, align 8, !tbaa !393
  %108 = add i32 %107, 1
  store i32 %108, ptr %106, align 8, !tbaa !393
  %109 = zext i32 %107 to i64
  %110 = getelementptr inbounds %struct.VEC_gimple_base, ptr %106, i64 0, i32 2, i64 %109
  store ptr %92, ptr %110, align 8, !tbaa !85
  br label %111

111:                                              ; preds = %105, %89
  %112 = phi ptr [ %91, %89 ], [ %106, %105 ]
  %113 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %90, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !329
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %89, !llvm.loop !404

116:                                              ; preds = %111, %86
  %117 = phi ptr [ %70, %86 ], [ %112, %111 ]
  %118 = add nuw nsw i64 %42, 1
  %119 = load i32, ptr %38, align 4, !tbaa !310
  %120 = zext i32 %119 to i64
  %121 = icmp ult i64 %118, %120
  br i1 %121, label %41, label %122, !llvm.loop !405

122:                                              ; preds = %116, %36
  %123 = phi ptr [ %8, %36 ], [ %117, %116 ]
  call void @free(ptr noundef %37)
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %122
  %126 = load i32, ptr %123, align 8, !tbaa !393
  br label %127

127:                                              ; preds = %122, %125
  %128 = phi i32 [ %126, %125 ], [ 0, %122 ]
  %129 = call ptr @new_graph(i32 noundef %128) #27
  %130 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_stmt_vertex_info, ptr noundef nonnull @eq_stmt_vertex_info, ptr noundef nonnull @hash_stmt_vertex_del) #27
  %131 = getelementptr inbounds %struct.graph, ptr %129, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !391
  %132 = call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_stmt_vertex_info, ptr noundef nonnull @eq_stmt_vertex_info, ptr noundef nonnull @hash_stmt_vertex_del) #27
  store ptr %132, ptr %131, align 8, !tbaa !391
  call void @create_rdg_vertices(ptr noundef %129, ptr noundef %123)
  %133 = load ptr, ptr %6, align 8, !tbaa !85
  %134 = icmp eq ptr %133, null
  br label %135

135:                                              ; preds = %309, %127
  %136 = phi i64 [ %310, %309 ], [ 0, %127 ]
  br i1 %134, label %144, label %137

137:                                              ; preds = %135
  %138 = load i32, ptr %133, align 8, !tbaa !118
  %139 = zext i32 %138 to i64
  %140 = icmp ult i64 %136, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %133, i64 0, i32 2, i64 %136
  %143 = load ptr, ptr %142, align 8, !tbaa !85
  br label %144

144:                                              ; preds = %141, %137, %135
  %145 = phi ptr [ %143, %141 ], [ null, %137 ], [ null, %135 ]
  %146 = phi i1 [ false, %141 ], [ true, %137 ], [ true, %135 ]
  br i1 %146, label %147, label %152

147:                                              ; preds = %144
  %148 = load i32, ptr %129, align 8, !tbaa !385
  %149 = icmp sgt i32 %148, 0
  br i1 %149, label %150, label %410

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.graph, ptr %129, i64 0, i32 1
  br label %311

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !121
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %309

156:                                              ; preds = %152
  %157 = load ptr, ptr %145, align 8, !tbaa !123
  %158 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !124
  %160 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !138
  %162 = icmp eq ptr %161, null
  br i1 %162, label %187, label %163

163:                                              ; preds = %156
  %164 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %161, i64 0, i32 2, i64 0
  %165 = load ptr, ptr %164, align 8, !tbaa !85
  %166 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 4
  %167 = load ptr, ptr %166, align 8, !tbaa !130
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %163
  %170 = load i32, ptr %167, align 8, !tbaa !131
  br label %171

171:                                              ; preds = %169, %163
  %172 = phi i32 [ %170, %169 ], [ 0, %163 ]
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = zext nneg i32 %172 to i64
  br label %176

176:                                              ; preds = %174, %184
  %177 = phi i64 [ 0, %174 ], [ %185, %184 ]
  %178 = getelementptr inbounds i32, ptr %165, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !100
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %176
  %182 = trunc i64 %177 to i32
  %183 = add nuw nsw i32 %182, 1
  br label %187

184:                                              ; preds = %176
  %185 = add nuw nsw i64 %177, 1
  %186 = icmp eq i64 %185, %175
  br i1 %186, label %187, label %176, !llvm.loop !406

187:                                              ; preds = %184, %171, %181, %156
  %188 = phi i32 [ 0, %156 ], [ %183, %181 ], [ 0, %171 ], [ 0, %184 ]
  %189 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 4
  br label %190

190:                                              ; preds = %244, %187
  %191 = phi i64 [ %246, %244 ], [ 1, %187 ]
  %192 = phi i32 [ %245, %244 ], [ %188, %187 ]
  br i1 %162, label %195, label %193

193:                                              ; preds = %190
  %194 = load i32, ptr %161, align 8, !tbaa !139
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi i32 [ %194, %193 ], [ 0, %190 ]
  %197 = zext i32 %196 to i64
  %198 = icmp ult i64 %191, %197
  br i1 %198, label %199, label %247

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %161, i64 0, i32 2, i64 %191
  %201 = load ptr, ptr %200, align 8, !tbaa !85
  %202 = load ptr, ptr %189, align 8, !tbaa !130
  %203 = icmp eq ptr %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %199
  %205 = load i32, ptr %202, align 8, !tbaa !131
  br label %206

206:                                              ; preds = %204, %199
  %207 = phi i32 [ %205, %204 ], [ 0, %199 ]
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %222

209:                                              ; preds = %206
  %210 = zext nneg i32 %207 to i64
  br label %211

211:                                              ; preds = %209, %219
  %212 = phi i64 [ 0, %209 ], [ %220, %219 ]
  %213 = getelementptr inbounds i32, ptr %201, i64 %212
  %214 = load i32, ptr %213, align 4, !tbaa !100
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = trunc i64 %212 to i32
  %218 = add nuw nsw i32 %217, 1
  br label %222

219:                                              ; preds = %211
  %220 = add nuw nsw i64 %212, 1
  %221 = icmp eq i64 %220, %210
  br i1 %221, label %222, label %211, !llvm.loop !406

222:                                              ; preds = %219, %206, %216
  %223 = phi i32 [ %218, %216 ], [ 0, %206 ], [ 0, %219 ]
  %224 = icmp ult i32 %192, %223
  br i1 %224, label %244, label %225

225:                                              ; preds = %222
  br i1 %203, label %228, label %226

226:                                              ; preds = %225
  %227 = load i32, ptr %202, align 8, !tbaa !131
  br label %228

228:                                              ; preds = %226, %225
  %229 = phi i32 [ %227, %226 ], [ 0, %225 ]
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %244

231:                                              ; preds = %228
  %232 = zext nneg i32 %229 to i64
  br label %233

233:                                              ; preds = %231, %241
  %234 = phi i64 [ 0, %231 ], [ %242, %241 ]
  %235 = getelementptr inbounds i32, ptr %201, i64 %234
  %236 = load i32, ptr %235, align 4, !tbaa !100
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %241, label %238

238:                                              ; preds = %233
  %239 = trunc i64 %234 to i32
  %240 = add nuw nsw i32 %239, 1
  br label %244

241:                                              ; preds = %233
  %242 = add nuw nsw i64 %234, 1
  %243 = icmp eq i64 %242, %232
  br i1 %243, label %244, label %233, !llvm.loop !406

244:                                              ; preds = %241, %228, %238, %222
  %245 = phi i32 [ %192, %222 ], [ %240, %238 ], [ 0, %228 ], [ 0, %241 ]
  %246 = add nuw nsw i64 %191, 1
  br label %190, !llvm.loop !407

247:                                              ; preds = %195
  %248 = icmp eq i32 %192, 0
  br i1 %248, label %255, label %249

249:                                              ; preds = %247
  %250 = getelementptr inbounds %struct.data_dependence_relation, ptr %145, i64 0, i32 8
  %251 = load i8, ptr %250, align 4, !tbaa !265
  %252 = icmp eq i8 %251, 0
  %253 = select i1 %252, ptr %157, ptr %159
  %254 = select i1 %252, ptr %159, ptr %157
  br label %255

255:                                              ; preds = %249, %247
  %256 = phi ptr [ %159, %247 ], [ %253, %249 ]
  %257 = phi ptr [ %157, %247 ], [ %254, %249 ]
  %258 = load ptr, ptr %257, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store ptr %258, ptr %4, align 8, !tbaa !389
  %259 = load ptr, ptr %131, align 8, !tbaa !391
  %260 = call ptr @htab_find(ptr noundef %259, ptr noundef nonnull %4) #27
  %261 = icmp eq ptr %260, null
  br i1 %261, label %265, label %262

262:                                              ; preds = %255
  %263 = getelementptr inbounds %struct.rdg_vertex_info, ptr %260, i64 0, i32 1
  %264 = load i32, ptr %263, align 8, !tbaa !392
  br label %265

265:                                              ; preds = %262, %255
  %266 = phi i32 [ %264, %262 ], [ -1, %255 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  %267 = load ptr, ptr %256, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #27
  store ptr %267, ptr %3, align 8, !tbaa !389
  %268 = load ptr, ptr %131, align 8, !tbaa !391
  %269 = call ptr @htab_find(ptr noundef %268, ptr noundef nonnull %3) #27
  %270 = icmp eq ptr %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.rdg_vertex_info, ptr %269, i64 0, i32 1
  %273 = load i32, ptr %272, align 8, !tbaa !392
  br label %274

274:                                              ; preds = %271, %265
  %275 = phi i32 [ %273, %271 ], [ -1, %265 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #27
  %276 = icmp slt i32 %266, 0
  %277 = icmp slt i32 %275, 0
  %278 = select i1 %276, i1 true, i1 %277
  br i1 %278, label %309, label %279

279:                                              ; preds = %274
  %280 = call ptr @add_edge(ptr noundef %129, i32 noundef %266, i32 noundef %275) #27
  %281 = call ptr @xmalloc(i64 noundef 16) #27
  %282 = getelementptr inbounds %struct.graph_edge, ptr %280, i64 0, i32 4
  store ptr %281, ptr %282, align 8, !tbaa !408
  %283 = getelementptr inbounds %struct.rdg_edge, ptr %281, i64 0, i32 1
  store i32 %192, ptr %283, align 4, !tbaa !409
  %284 = getelementptr inbounds %struct.rdg_edge, ptr %281, i64 0, i32 2
  store ptr %145, ptr %284, align 8, !tbaa !411
  %285 = getelementptr inbounds %struct.data_reference, ptr %257, i64 0, i32 3
  %286 = load i8, ptr %285, align 8, !tbaa !197
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %293, label %288

288:                                              ; preds = %279
  %289 = getelementptr inbounds %struct.data_reference, ptr %256, i64 0, i32 3
  %290 = load i8, ptr %289, align 8, !tbaa !197
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %292, label %307

292:                                              ; preds = %288
  br i1 %287, label %293, label %303

293:                                              ; preds = %279, %292
  %294 = getelementptr inbounds %struct.data_reference, ptr %256, i64 0, i32 3
  %295 = load i8, ptr %294, align 8, !tbaa !197
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %307, label %297

297:                                              ; preds = %293
  br i1 %287, label %298, label %303

298:                                              ; preds = %297
  %299 = getelementptr inbounds %struct.data_reference, ptr %256, i64 0, i32 3
  %300 = load i8, ptr %299, align 8, !tbaa !197
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  br i1 %287, label %309, label %303

303:                                              ; preds = %292, %297, %302
  %304 = getelementptr inbounds %struct.data_reference, ptr %256, i64 0, i32 3
  %305 = load i8, ptr %304, align 8, !tbaa !197
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %303, %298, %293, %288
  %308 = phi i32 [ 105, %288 ], [ 111, %293 ], [ 102, %298 ], [ 97, %303 ]
  store i32 %308, ptr %281, align 8, !tbaa !412
  br label %309

309:                                              ; preds = %307, %303, %302, %274, %152
  %310 = add nuw i64 %136, 1
  br label %135, !llvm.loop !413

311:                                              ; preds = %150, %405
  %312 = phi i64 [ 0, %150 ], [ %406, %405 ]
  %313 = load ptr, ptr %151, align 8, !tbaa !368
  %314 = getelementptr inbounds %struct.vertex, ptr %313, i64 %312, i32 4
  %315 = load ptr, ptr %314, align 8, !tbaa !370
  %316 = load ptr, ptr %315, align 8, !tbaa !384
  %317 = load i32, ptr %316, align 8
  %318 = and i32 %317, 255
  %319 = icmp eq i32 %318, 16
  br i1 %319, label %320, label %327

320:                                              ; preds = %311
  %321 = getelementptr inbounds %struct.gimple_statement_phi, ptr %316, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !85
  %323 = call zeroext i8 @is_gimple_reg(ptr noundef %322) #27
  %324 = icmp eq i8 %323, 0
  %325 = zext i1 %324 to i8
  %326 = select i1 %324, ptr null, ptr %321
  br label %353

327:                                              ; preds = %311
  %328 = add nsw i32 %318, -10
  %329 = icmp ult i32 %328, -9
  br i1 %329, label %333, label %330

330:                                              ; preds = %327
  %331 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %316, i64 0, i32 1
  %332 = load ptr, ptr %331, align 8, !tbaa !96
  br label %333

333:                                              ; preds = %330, %327
  %334 = phi ptr [ %332, %330 ], [ null, %327 ]
  %335 = icmp eq ptr %334, null
  br i1 %335, label %346, label %336

336:                                              ; preds = %333
  %337 = and i32 %317, 254
  %338 = add nsw i32 %337, -10
  %339 = icmp ult i32 %338, -4
  br i1 %339, label %346, label %340

340:                                              ; preds = %336
  %341 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %316, i64 0, i32 1
  %342 = load ptr, ptr %341, align 8, !tbaa !96
  %343 = icmp eq ptr %342, null
  br i1 %343, label %346, label %344

344:                                              ; preds = %340
  %345 = load ptr, ptr %334, align 8, !tbaa !414
  br label %346

346:                                              ; preds = %344, %340, %336, %333
  %347 = phi ptr [ %334, %333 ], [ %334, %336 ], [ %334, %340 ], [ %345, %344 ]
  %348 = icmp eq ptr %347, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %346
  %350 = getelementptr inbounds %struct.def_optype_d, ptr %347, i64 0, i32 1
  %351 = load ptr, ptr %350, align 8, !tbaa !416
  %352 = load ptr, ptr %347, align 8, !tbaa !414
  br label %353

353:                                              ; preds = %349, %346, %320
  %354 = phi ptr [ null, %320 ], [ %352, %349 ], [ %347, %346 ]
  %355 = phi i8 [ %325, %320 ], [ 0, %349 ], [ 1, %346 ]
  %356 = phi ptr [ %326, %320 ], [ %351, %349 ], [ null, %346 ]
  %357 = icmp eq i8 %355, 0
  br i1 %357, label %358, label %405

358:                                              ; preds = %353
  %359 = trunc i64 %312 to i32
  br label %360

360:                                              ; preds = %358, %400
  %361 = phi ptr [ %403, %400 ], [ %356, %358 ]
  %362 = phi i8 [ %402, %400 ], [ %355, %358 ]
  %363 = phi ptr [ %401, %400 ], [ %354, %358 ]
  %364 = load ptr, ptr %361, align 8, !tbaa !85
  %365 = getelementptr inbounds %struct.tree_ssa_name, ptr %364, i64 0, i32 5
  %366 = getelementptr inbounds %struct.tree_ssa_name, ptr %364, i64 0, i32 5, i32 1
  %367 = load ptr, ptr %366, align 8, !tbaa !417
  %368 = icmp eq ptr %367, %365
  br i1 %368, label %394, label %369

369:                                              ; preds = %360, %388
  %370 = phi ptr [ %392, %388 ], [ %367, %360 ]
  %371 = phi ptr [ %390, %388 ], [ %367, %360 ]
  %372 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %370, i64 0, i32 2
  %373 = load ptr, ptr %372, align 8, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #27
  store ptr %373, ptr %2, align 8, !tbaa !389
  %374 = load ptr, ptr %131, align 8, !tbaa !391
  %375 = call ptr @htab_find(ptr noundef %374, ptr noundef nonnull %2) #27
  %376 = icmp eq ptr %375, null
  br i1 %376, label %380, label %377

377:                                              ; preds = %369
  %378 = getelementptr inbounds %struct.rdg_vertex_info, ptr %375, i64 0, i32 1
  %379 = load i32, ptr %378, align 8, !tbaa !392
  br label %380

380:                                              ; preds = %377, %369
  %381 = phi i32 [ %379, %377 ], [ -1, %369 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #27
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %388, label %383

383:                                              ; preds = %380
  %384 = call ptr @add_edge(ptr noundef nonnull %129, i32 noundef %359, i32 noundef %381) #27
  %385 = call ptr @xmalloc(i64 noundef 16) #27
  %386 = getelementptr inbounds %struct.graph_edge, ptr %384, i64 0, i32 4
  store ptr %385, ptr %386, align 8, !tbaa !408
  store i32 102, ptr %385, align 8, !tbaa !412
  %387 = getelementptr inbounds %struct.rdg_edge, ptr %385, i64 0, i32 2
  store ptr null, ptr %387, align 8, !tbaa !411
  br label %388

388:                                              ; preds = %383, %380
  %389 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %371, i64 0, i32 1
  %390 = load ptr, ptr %389, align 8, !tbaa !417
  %391 = icmp eq ptr %390, %365
  %392 = select i1 %391, ptr null, ptr %390
  %393 = icmp eq ptr %390, %365
  br i1 %393, label %394, label %369, !llvm.loop !419

394:                                              ; preds = %388, %360
  %395 = icmp eq ptr %363, null
  br i1 %395, label %400, label %396

396:                                              ; preds = %394
  %397 = getelementptr inbounds %struct.def_optype_d, ptr %363, i64 0, i32 1
  %398 = load ptr, ptr %397, align 8, !tbaa !416
  %399 = load ptr, ptr %363, align 8, !tbaa !414
  br label %400

400:                                              ; preds = %396, %394
  %401 = phi ptr [ %399, %396 ], [ %363, %394 ]
  %402 = phi i8 [ %362, %396 ], [ 1, %394 ]
  %403 = phi ptr [ %398, %396 ], [ null, %394 ]
  %404 = icmp eq i8 %402, 0
  br i1 %404, label %360, label %405, !llvm.loop !420

405:                                              ; preds = %400, %353
  %406 = add nuw nsw i64 %312, 1
  %407 = load i32, ptr %129, align 8, !tbaa !385
  %408 = sext i32 %407 to i64
  %409 = icmp slt i64 %406, %408
  br i1 %409, label %311, label %410, !llvm.loop !421

410:                                              ; preds = %405, %147
  br i1 %124, label %414, label %411

411:                                              ; preds = %410, %33
  %412 = phi ptr [ %8, %33 ], [ %123, %410 ]
  %413 = phi ptr [ null, %33 ], [ %129, %410 ]
  call void @free(ptr noundef %412)
  br label %414

414:                                              ; preds = %411, %410, %33
  %415 = phi ptr [ null, %33 ], [ %129, %410 ], [ %413, %411 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  ret ptr %415
}

; Function Attrs: cold nounwind uwtable
define dso_local void @free_rdg(ptr noundef %0) local_unnamed_addr #9 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !385
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !368
  %9 = getelementptr inbounds %struct.vertex, ptr %8, i64 %7, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !370
  tail call void @free(ptr noundef %10)
  %11 = add nuw nsw i64 %7, 1
  %12 = load i32, ptr %0, align 8, !tbaa !385
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %6, label %15, !llvm.loop !422

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !391
  tail call void @htab_delete(ptr noundef %17) #27
  tail call void @free_graph(ptr noundef nonnull %0) #27
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

declare void @free_graph(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @stores_from_loop(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #27
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !310
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %67, label %7

7:                                                ; preds = %2, %62
  %8 = phi i64 [ %63, %62 ], [ 0, %2 ]
  %9 = getelementptr inbounds ptr, ptr %3, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !85
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 13
  %12 = load i32, ptr %11, align 8, !tbaa !314, !noalias !423
  %13 = and i32 %12, 512
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !96, !noalias !423
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !320, !noalias !423
  br label %21

21:                                               ; preds = %19, %15, %7
  %22 = phi ptr [ %20, %19 ], [ null, %15 ], [ null, %7 ]
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !322, !noalias !423
  br label %26

26:                                               ; preds = %21, %24
  %27 = phi ptr [ %25, %24 ], [ null, %21 ]
  %28 = icmp eq ptr %27, null
  br i1 %28, label %62, label %29

29:                                               ; preds = %26, %58
  %30 = phi ptr [ %60, %58 ], [ %27, %26 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !325
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 254
  %34 = add nsw i32 %33, -10
  %35 = icmp ult i32 %34, -4
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %31, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  br label %39

39:                                               ; preds = %29, %36
  %40 = phi ptr [ %38, %36 ], [ null, %29 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = load ptr, ptr %1, align 8, !tbaa !85
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.VEC_gimple_base, ptr %43, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !399
  %48 = load i32, ptr %43, align 8, !tbaa !393
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %45
  %51 = tail call ptr @vec_heap_p_reserve(ptr noundef %43, i32 noundef 1) #27
  store ptr %51, ptr %1, align 8, !tbaa !85
  br label %52

52:                                               ; preds = %45, %50
  %53 = load ptr, ptr %1, align 8, !tbaa !85
  %54 = load i32, ptr %53, align 8, !tbaa !393
  %55 = add i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !393
  %56 = zext i32 %54 to i64
  %57 = getelementptr inbounds %struct.VEC_gimple_base, ptr %53, i64 0, i32 2, i64 %56
  store ptr %31, ptr %57, align 8, !tbaa !85
  br label %58

58:                                               ; preds = %39, %52
  %59 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %30, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !329
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !llvm.loop !426

62:                                               ; preds = %58, %26
  %63 = add nuw nsw i64 %8, 1
  %64 = load i32, ptr %4, align 4, !tbaa !310
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %7, label %67, !llvm.loop !427

67:                                               ; preds = %62, %2
  tail call void @free(ptr noundef %3)
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local noundef zeroext i8 @rdg_defs_used_in_other_loops_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !368
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.vertex, ptr %4, i64 %5, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !370
  %8 = load ptr, ptr %7, align 8, !tbaa !384
  %9 = getelementptr inbounds %struct.gimple_statement_base, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !182
  br label %15

15:                                               ; preds = %2, %12
  %16 = phi ptr [ %14, %12 ], [ null, %2 ]
  %17 = icmp eq ptr %16, null
  br i1 %17, label %100, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %8, align 8
  %20 = and i32 %19, 255
  %21 = icmp eq i32 %20, 16
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.gimple_statement_phi, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !85
  %25 = tail call zeroext i8 @is_gimple_reg(ptr noundef %24) #27
  %26 = icmp eq i8 %25, 0
  %27 = zext i1 %26 to i8
  %28 = select i1 %26, ptr null, ptr %23
  br label %55

29:                                               ; preds = %18
  %30 = add nsw i32 %20, -10
  %31 = icmp ult i32 %30, -9
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %8, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi ptr [ %34, %32 ], [ null, %29 ]
  %37 = icmp eq ptr %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %35
  %39 = and i32 %19, 254
  %40 = add nsw i32 %39, -10
  %41 = icmp ult i32 %40, -4
  br i1 %41, label %48, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %8, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !96
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %36, align 8, !tbaa !414
  br label %48

48:                                               ; preds = %46, %42, %38, %35
  %49 = phi ptr [ %36, %35 ], [ %36, %38 ], [ %36, %42 ], [ %47, %46 ]
  %50 = icmp eq ptr %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.def_optype_d, ptr %49, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !416
  %54 = load ptr, ptr %49, align 8, !tbaa !414
  br label %55

55:                                               ; preds = %51, %48, %22
  %56 = phi ptr [ null, %22 ], [ %54, %51 ], [ %49, %48 ]
  %57 = phi i8 [ %27, %22 ], [ 0, %51 ], [ 1, %48 ]
  %58 = phi ptr [ %28, %22 ], [ %53, %51 ], [ null, %48 ]
  %59 = icmp eq i8 %57, 0
  br i1 %59, label %60, label %100

60:                                               ; preds = %55, %95
  %61 = phi ptr [ %98, %95 ], [ %58, %55 ]
  %62 = phi i8 [ %97, %95 ], [ %57, %55 ]
  %63 = phi ptr [ %96, %95 ], [ %56, %55 ]
  %64 = load ptr, ptr %61, align 8, !tbaa !85
  %65 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 5
  %66 = getelementptr inbounds %struct.tree_ssa_name, ptr %64, i64 0, i32 5, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !417
  %68 = icmp eq ptr %67, %65
  br i1 %68, label %89, label %69

69:                                               ; preds = %60, %83
  %70 = phi ptr [ %87, %83 ], [ %67, %60 ]
  %71 = phi ptr [ %85, %83 ], [ %67, %60 ]
  %72 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %70, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  %74 = getelementptr inbounds %struct.gimple_statement_base, ptr %73, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !96
  %76 = icmp eq ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %69
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !182
  br label %80

80:                                               ; preds = %69, %77
  %81 = phi ptr [ %79, %77 ], [ null, %69 ]
  %82 = icmp eq ptr %81, %16
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %71, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !417
  %86 = icmp eq ptr %85, %65
  %87 = select i1 %86, ptr null, ptr %85
  %88 = icmp eq ptr %85, %65
  br i1 %88, label %89, label %69, !llvm.loop !428

89:                                               ; preds = %83, %60
  %90 = icmp eq ptr %63, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %89
  %92 = getelementptr inbounds %struct.def_optype_d, ptr %63, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !416
  %94 = load ptr, ptr %63, align 8, !tbaa !414
  br label %95

95:                                               ; preds = %89, %91
  %96 = phi ptr [ %94, %91 ], [ %63, %89 ]
  %97 = phi i8 [ %62, %91 ], [ 1, %89 ]
  %98 = phi ptr [ %93, %91 ], [ null, %89 ]
  %99 = icmp eq i8 %97, 0
  br i1 %99, label %60, label %100, !llvm.loop !429

100:                                              ; preds = %95, %80, %55, %15
  %101 = phi i8 [ 1, %15 ], [ 0, %55 ], [ 1, %80 ], [ 0, %95 ]
  ret i8 %101
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @have_similar_memory_accesses(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 !prof !84 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %5 = call zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr noundef nonnull %3), !range !164
  %6 = call zeroext i8 @get_references_in_stmt(ptr noundef %1, ptr noundef nonnull %4), !range !164
  %7 = load ptr, ptr %3, align 8
  %8 = icmp eq ptr %7, null
  %9 = load ptr, ptr %4, align 8
  %10 = icmp eq ptr %9, null
  br label %11

11:                                               ; preds = %83, %2
  %12 = phi i8 [ 0, %2 ], [ %84, %83 ]
  %13 = phi i32 [ 0, %2 ], [ %86, %83 ]
  br i1 %8, label %20, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 8, !tbaa !290
  %16 = icmp ugt i32 %15, %13
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %7, i64 0, i32 2, i64 %18
  br label %20

20:                                               ; preds = %11, %14, %17
  %21 = phi ptr [ %19, %17 ], [ null, %14 ], [ null, %11 ]
  %22 = phi i1 [ false, %17 ], [ true, %14 ], [ true, %11 ]
  br i1 %22, label %87, label %23

23:                                               ; preds = %20
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #27
  store ptr %0, ptr %24, align 8, !tbaa !107
  %25 = load ptr, ptr %21, align 8, !tbaa !291
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !112
  %28 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %24), !range !164
  %29 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %23
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 121
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  br label %39

39:                                               ; preds = %36, %32, %23
  %40 = phi ptr [ %38, %36 ], [ null, %23 ], [ %30, %32 ]
  %41 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 5, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @free(ptr noundef %42)
  br label %45

45:                                               ; preds = %39, %44
  store ptr null, ptr %41, align 8, !tbaa !85
  tail call void @free(ptr noundef %24)
  %46 = icmp eq ptr %40, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %45, %80
  %48 = phi i32 [ %82, %80 ], [ 0, %45 ]
  br i1 %10, label %55, label %49

49:                                               ; preds = %47
  %50 = load i32, ptr %9, align 8, !tbaa !290
  %51 = icmp ugt i32 %50, %48
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = zext i32 %48 to i64
  %54 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %9, i64 0, i32 2, i64 %53
  br label %55

55:                                               ; preds = %47, %49, %52
  %56 = phi ptr [ %54, %52 ], [ null, %49 ], [ null, %47 ]
  %57 = phi i1 [ false, %52 ], [ true, %49 ], [ true, %47 ]
  br i1 %57, label %83, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #27
  store ptr %1, ptr %59, align 8, !tbaa !107
  %60 = load ptr, ptr %56, align 8, !tbaa !291
  %61 = load ptr, ptr %60, align 8, !tbaa !85
  %62 = getelementptr inbounds %struct.data_reference, ptr %59, i64 0, i32 1
  store ptr %61, ptr %62, align 8, !tbaa !112
  %63 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %59), !range !164
  %64 = getelementptr inbounds %struct.data_reference, ptr %59, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !192
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %58
  %68 = load i64, ptr %65, align 8
  %69 = and i64 %68, 65535
  %70 = icmp eq i64 %69, 121
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.tree_exp, ptr %65, i64 0, i32 3
  %73 = load ptr, ptr %72, align 8, !tbaa !96
  br label %74

74:                                               ; preds = %71, %67, %58
  %75 = phi ptr [ %73, %71 ], [ null, %58 ], [ %65, %67 ]
  %76 = getelementptr inbounds %struct.data_reference, ptr %59, i64 0, i32 5, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !85
  %78 = icmp eq ptr %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  tail call void @free(ptr noundef %77)
  br label %80

80:                                               ; preds = %74, %79
  store ptr null, ptr %76, align 8, !tbaa !85
  tail call void @free(ptr noundef %59)
  %81 = icmp eq ptr %40, %75
  %82 = add i32 %48, 1
  br i1 %81, label %83, label %47, !llvm.loop !430

83:                                               ; preds = %55, %80, %45
  %84 = phi i8 [ %12, %45 ], [ 1, %80 ], [ %12, %55 ]
  %85 = phi i1 [ true, %45 ], [ %57, %80 ], [ %57, %55 ]
  %86 = add i32 %13, 1
  br i1 %85, label %11, label %87, !llvm.loop !431

87:                                               ; preds = %83, %20
  %88 = phi i8 [ %84, %83 ], [ %12, %20 ]
  br i1 %8, label %90, label %89

89:                                               ; preds = %87
  tail call void @free(ptr noundef %7)
  br label %90

90:                                               ; preds = %87, %89
  store ptr null, ptr %3, align 8, !tbaa !85
  %91 = load ptr, ptr %4, align 8, !tbaa !85
  %92 = icmp eq ptr %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  tail call void @free(ptr noundef %91)
  br label %94

94:                                               ; preds = %90, %93
  store ptr null, ptr %4, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  ret i8 %88
}

; Function Attrs: cold nounwind uwtable
define dso_local void @remove_similar_memory_refs(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !84 {
  %2 = load ptr, ptr %0, align 8, !tbaa !85
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr %2, align 8, !tbaa !393
  %6 = zext i32 %5 to i64
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi i64 [ %6, %4 ], [ 0, %1 ]
  %9 = tail call ptr @htab_create(i64 noundef %8, ptr noundef nonnull @ref_base_address_1, ptr noundef nonnull @have_similar_memory_accesses_1, ptr noundef null) #27
  br label %10

10:                                               ; preds = %39, %7
  %11 = phi i32 [ %40, %39 ], [ 0, %7 ]
  %12 = zext i32 %11 to i64
  %13 = zext i32 %11 to i64
  br label %14

14:                                               ; preds = %10, %30
  %15 = load ptr, ptr %0, align 8, !tbaa !85
  %16 = icmp eq ptr %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr %15, align 8, !tbaa !393
  %19 = icmp ugt i32 %18, %11
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.VEC_gimple_base, ptr %15, i64 0, i32 2, i64 %12
  %22 = load ptr, ptr %21, align 8, !tbaa !85
  br label %23

23:                                               ; preds = %14, %17, %20
  %24 = phi ptr [ %22, %20 ], [ null, %17 ], [ null, %14 ]
  %25 = phi i1 [ false, %20 ], [ true, %17 ], [ true, %14 ]
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = tail call ptr @htab_find_slot(ptr noundef %9, ptr noundef %24, i32 noundef 1) #27
  %28 = load ptr, ptr %27, align 8, !tbaa !85
  %29 = icmp eq ptr %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !85
  %32 = load i32, ptr %31, align 8, !tbaa !393
  %33 = getelementptr inbounds %struct.VEC_gimple_base, ptr %31, i64 0, i32 2, i64 %13
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = add i32 %32, -1
  store i32 %35, ptr %31, align 8, !tbaa !393
  %36 = sub i32 %35, %11
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %33, ptr nonnull align 8 %34, i64 %38, i1 false)
  br label %14, !llvm.loop !432

39:                                               ; preds = %26
  store ptr %24, ptr %27, align 8, !tbaa !85
  %40 = add i32 %11, 1
  br label %10, !llvm.loop !432

41:                                               ; preds = %23
  tail call void @htab_delete(ptr noundef %9) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal i32 @ref_base_address_1(ptr noundef %0) #9 !prof !84 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %3 = call zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr noundef nonnull %2), !range !164
  %4 = load ptr, ptr %2, align 8
  %5 = icmp eq ptr %4, null
  br label %6

6:                                                ; preds = %17, %1
  %7 = phi i32 [ 0, %1 ], [ %21, %17 ]
  br i1 %5, label %14, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 8, !tbaa !290
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %4, i64 0, i32 2, i64 %12
  br label %14

14:                                               ; preds = %6, %8, %11
  %15 = phi ptr [ %13, %11 ], [ null, %8 ], [ null, %6 ]
  %16 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %6 ]
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.data_ref_loc_d, ptr %15, i64 0, i32 1
  %19 = load i8, ptr %18, align 8, !tbaa !293
  %20 = icmp eq i8 %19, 0
  %21 = add i32 %7, 1
  br i1 %20, label %22, label %6, !llvm.loop !433

22:                                               ; preds = %17
  %23 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !85
  %24 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #27
  store ptr %0, ptr %24, align 8, !tbaa !107
  %25 = load ptr, ptr %15, align 8, !tbaa !291
  %26 = load ptr, ptr %25, align 8, !tbaa !85
  %27 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 1
  store ptr %26, ptr %27, align 8, !tbaa !112
  %28 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %24), !range !164
  %29 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !192
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %22
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 121
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !96
  br label %39

39:                                               ; preds = %36, %32, %22
  %40 = phi ptr [ %38, %36 ], [ null, %22 ], [ %30, %32 ]
  %41 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 5, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  tail call void @free(ptr noundef %42)
  br label %45

45:                                               ; preds = %39, %44
  store ptr null, ptr %41, align 8, !tbaa !85
  tail call void @free(ptr noundef %24)
  %46 = tail call i32 %23(ptr noundef %40) #27
  br label %47

47:                                               ; preds = %14, %45
  %48 = phi i32 [ %46, %45 ], [ 0, %14 ]
  br i1 %5, label %50, label %49

49:                                               ; preds = %47
  tail call void @free(ptr noundef %4)
  br label %50

50:                                               ; preds = %47, %49
  store ptr null, ptr %2, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  ret i32 %48
}

; Function Attrs: cold nounwind uwtable
define internal i32 @have_similar_memory_accesses_1(ptr noundef %0, ptr noundef %1) #9 !prof !84 {
  %3 = tail call zeroext i8 @have_similar_memory_accesses(ptr noundef %0, ptr noundef %1)
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @access_matrix_get_index_for_parameter(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #19 !prof !84 {
  %3 = getelementptr inbounds %struct.access_matrix, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !434
  %5 = icmp eq ptr %4, null
  br label %6

6:                                                ; preds = %25, %2
  %7 = phi i64 [ %26, %25 ], [ 0, %2 ]
  br i1 %5, label %15, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 8, !tbaa !115
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %7
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %6, %8, %12
  %16 = phi ptr [ %14, %12 ], [ null, %8 ], [ null, %6 ]
  %17 = phi i1 [ false, %12 ], [ true, %8 ], [ true, %6 ]
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = icmp eq ptr %16, %0
  br i1 %19, label %20, label %25

20:                                               ; preds = %18
  %21 = trunc i64 %7 to i32
  %22 = getelementptr inbounds %struct.access_matrix, ptr %1, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !436
  %24 = add nsw i32 %23, %21
  br label %27

25:                                               ; preds = %18
  %26 = add nuw i64 %7, 1
  br label %6, !llvm.loop !437

27:                                               ; preds = %15, %20
  %28 = phi i32 [ %24, %20 ], [ -1, %15 ]
  ret i32 %28
}

declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #3

declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #3

declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @initial_condition(ptr noundef) local_unnamed_addr #3

declare ptr @chrec_replace_initial_condition(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @access_functions_are_affine_or_constant_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !84 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = icmp eq ptr %4, null
  br label %6

6:                                                ; preds = %26, %2
  %7 = phi i32 [ 0, %2 ], [ %27, %26 ]
  br i1 %5, label %15, label %8

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 8, !tbaa !115
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds %struct.VEC_tree_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %6, %8, %11
  %16 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  %17 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %6 ]
  br i1 %17, label %28, label %18

18:                                               ; preds = %15
  %19 = load i32, ptr %1, align 8, !tbaa !133
  %20 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %16, i32 noundef %19) #27
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, ptr %1, align 8, !tbaa !133
  %24 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %16, i32 noundef %23) #27
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %18, %22
  %27 = add i32 %7, 1
  br label %6, !llvm.loop !438

28:                                               ; preds = %15, %22
  %29 = phi i8 [ 0, %22 ], [ 1, %15 ]
  ret i8 %29
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @subscript_dependence_tester(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !84 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.103, i64 30, i64 1, ptr nonnull %5)
  br label %13

13:                                               ; preds = %11, %7, %2
  %14 = load ptr, ptr %0, align 8, !tbaa !123
  %15 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %14, ptr noundef %16, ptr noundef %1)
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !335
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !335
  br label %22

22:                                               ; preds = %19, %13
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #27
  store i8 0, ptr %3, align 1, !tbaa !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #27
  %23 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !130
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load i32, ptr %24, align 8, !tbaa !131
  br label %28

28:                                               ; preds = %26, %22
  %29 = phi i32 [ %27, %26 ], [ 0, %22 ]
  store i32 %29, ptr %4, align 4, !tbaa !100
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !121
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %595

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  br label %35

35:                                               ; preds = %45, %33
  %36 = phi i64 [ %58, %45 ], [ 0, %33 ]
  %37 = load ptr, ptr %34, align 8, !tbaa !125
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %37, align 8, !tbaa !126
  br label %41

41:                                               ; preds = %39, %35
  %42 = phi i32 [ %40, %39 ], [ 0, %35 ]
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %36, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %41
  %46 = load ptr, ptr %0, align 8, !tbaa !123
  %47 = getelementptr inbounds %struct.data_reference, ptr %46, i64 0, i32 5, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !114
  %49 = getelementptr inbounds %struct.VEC_tree_base, ptr %48, i64 0, i32 2, i64 %36
  %50 = load ptr, ptr %49, align 8, !tbaa !85
  %51 = load ptr, ptr %15, align 8, !tbaa !124
  %52 = getelementptr inbounds %struct.data_reference, ptr %51, i64 0, i32 5, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !114
  %54 = getelementptr inbounds %struct.VEC_tree_base, ptr %53, i64 0, i32 2, i64 %36
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  %56 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %50, ptr noundef %55) #27
  %57 = icmp eq i8 %56, 0
  %58 = add nuw nsw i64 %36, 1
  br i1 %57, label %379, label %35, !llvm.loop !249

59:                                               ; preds = %41
  %60 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %23, align 8, !tbaa !130
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !131
  %65 = sext i32 %64 to i64
  %66 = shl nsw i64 %65, 2
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i64 [ %66, %63 ], [ 0, %59 ]
  %69 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %68) #27
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %69)
  %70 = load ptr, ptr %60, align 8, !tbaa !125
  %71 = icmp eq ptr %70, null
  br label %72

72:                                               ; preds = %109, %67
  %73 = phi i64 [ %112, %109 ], [ 0, %67 ]
  br i1 %71, label %76, label %74

74:                                               ; preds = %72
  %75 = load i32, ptr %70, align 8, !tbaa !126
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %75, %74 ], [ 0, %72 ]
  %78 = zext i32 %77 to i64
  %79 = icmp ult i64 %73, %78
  br i1 %79, label %80, label %113

80:                                               ; preds = %76
  %81 = load ptr, ptr %0, align 8, !tbaa !123
  %82 = getelementptr inbounds %struct.data_reference, ptr %81, i64 0, i32 5, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !114
  %84 = getelementptr inbounds %struct.VEC_tree_base, ptr %83, i64 0, i32 2, i64 %73
  %85 = load ptr, ptr %84, align 8, !tbaa !85
  %86 = icmp eq ptr %85, null
  br i1 %86, label %93, label %87

87:                                               ; preds = %80
  %88 = load i64, ptr %85, align 8
  %89 = trunc i64 %88 to i16
  %90 = add i16 %89, -23
  %91 = icmp ult i16 %90, 2
  %92 = zext i1 %91 to i8
  br label %93

93:                                               ; preds = %87, %80
  %94 = phi i8 [ 0, %80 ], [ %92, %87 ]
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %159, label %96

96:                                               ; preds = %93
  %97 = load ptr, ptr %15, align 8, !tbaa !124
  %98 = getelementptr inbounds %struct.data_reference, ptr %97, i64 0, i32 5, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !114
  %100 = getelementptr inbounds %struct.VEC_tree_base, ptr %99, i64 0, i32 2, i64 %73
  %101 = load ptr, ptr %100, align 8, !tbaa !85
  %102 = icmp eq ptr %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %96
  %104 = load i64, ptr %101, align 8
  %105 = trunc i64 %104 to i16
  %106 = add i16 %105, -23
  %107 = icmp ult i16 %106, 2
  %108 = zext i1 %107 to i8
  br label %109

109:                                              ; preds = %103, %96
  %110 = phi i8 [ 0, %96 ], [ %108, %103 ]
  %111 = icmp eq i8 %110, 0
  %112 = add nuw nsw i64 %73, 1
  br i1 %111, label %159, label %72, !llvm.loop !439

113:                                              ; preds = %76, %156
  %114 = phi i64 [ %157, %156 ], [ 0, %76 ]
  %115 = load ptr, ptr %60, align 8, !tbaa !125
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, ptr %115, align 8, !tbaa !126
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i32 [ %118, %117 ], [ 0, %113 ]
  %121 = zext i32 %120 to i64
  %122 = icmp ult i64 %114, %121
  br i1 %122, label %123, label %159

123:                                              ; preds = %119
  %124 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %115, i64 0, i32 2, i64 %114
  %125 = load ptr, ptr %124, align 8, !tbaa !85
  %126 = load ptr, ptr %125, align 8, !tbaa !145
  %127 = getelementptr inbounds %struct.subscript, ptr %125, i64 0, i32 1
  %128 = load ptr, ptr %127, align 8, !tbaa !150
  %129 = load i32, ptr %126, align 8, !tbaa !147
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %136, label %139

131:                                              ; preds = %139
  %132 = add nuw nsw i64 %140, 1
  %133 = load i32, ptr %126, align 8, !tbaa !147
  %134 = zext i32 %133 to i64
  %135 = icmp ult i64 %132, %134
  br i1 %135, label %139, label %136, !llvm.loop !440

136:                                              ; preds = %131, %123
  %137 = load i32, ptr %128, align 8, !tbaa !147
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %156, label %150

139:                                              ; preds = %123, %131
  %140 = phi i64 [ %132, %131 ], [ 0, %123 ]
  %141 = getelementptr inbounds %struct.conflict_function, ptr %126, i64 0, i32 1, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !85
  %143 = tail call fastcc zeroext i8 @affine_function_zero_p(ptr noundef %142), !range !164
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %131, label %158

145:                                              ; preds = %150
  %146 = add nuw nsw i64 %151, 1
  %147 = load i32, ptr %128, align 8, !tbaa !147
  %148 = zext i32 %147 to i64
  %149 = icmp ult i64 %146, %148
  br i1 %149, label %150, label %156, !llvm.loop !441

150:                                              ; preds = %136, %145
  %151 = phi i64 [ %146, %145 ], [ 0, %136 ]
  %152 = getelementptr inbounds %struct.conflict_function, ptr %128, i64 0, i32 1, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !85
  %154 = tail call fastcc zeroext i8 @affine_function_zero_p(ptr noundef %153), !range !164
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %145, label %158

156:                                              ; preds = %145, %136
  %157 = add nuw nsw i64 %114, 1
  br label %113, !llvm.loop !442

158:                                              ; preds = %139, %150
  tail call fastcc void @insert_innermost_unit_dist_vector(ptr noundef %0)
  br label %159

159:                                              ; preds = %93, %109, %119, %158
  %160 = load ptr, ptr %23, align 8, !tbaa !130
  %161 = icmp eq ptr %160, null
  br i1 %161, label %548, label %162

162:                                              ; preds = %159
  %163 = load i32, ptr %160, align 8, !tbaa !131
  %164 = icmp ugt i32 %163, 1
  br i1 %164, label %165, label %548

165:                                              ; preds = %162
  br i1 %161, label %168, label %166

166:                                              ; preds = %165
  %167 = load i32, ptr %160, align 8, !tbaa !131
  br label %168

168:                                              ; preds = %166, %165
  %169 = phi i32 [ %167, %166 ], [ 0, %165 ]
  %170 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  %171 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  br label %172

172:                                              ; preds = %365, %168
  %173 = phi i64 [ %368, %365 ], [ 0, %168 ]
  %174 = phi i32 [ %366, %365 ], [ %169, %168 ]
  %175 = load ptr, ptr %60, align 8, !tbaa !125
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = load i32, ptr %175, align 8, !tbaa !126
  br label %179

179:                                              ; preds = %177, %172
  %180 = phi i32 [ %178, %177 ], [ 0, %172 ]
  %181 = zext i32 %180 to i64
  %182 = icmp ult i64 %173, %181
  br i1 %182, label %183, label %369

183:                                              ; preds = %179
  %184 = load ptr, ptr %0, align 8, !tbaa !123
  %185 = getelementptr inbounds %struct.data_reference, ptr %184, i64 0, i32 5, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !114
  %187 = getelementptr inbounds %struct.VEC_tree_base, ptr %186, i64 0, i32 2, i64 %173
  %188 = load ptr, ptr %187, align 8, !tbaa !85
  %189 = load i64, ptr %188, align 8
  %190 = and i64 %189, 65535
  %191 = icmp eq i64 %190, 146
  br i1 %191, label %192, label %365

192:                                              ; preds = %183
  %193 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %188) #27
  %194 = icmp eq i8 %193, 0
  br i1 %194, label %195, label %320

195:                                              ; preds = %192
  %196 = load ptr, ptr %60, align 8, !tbaa !125
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = load i32, ptr %196, align 8, !tbaa !126
  br label %200

200:                                              ; preds = %198, %195
  %201 = phi i32 [ %199, %198 ], [ 0, %195 ]
  %202 = icmp eq i32 %201, 1
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %204, ptr %30, align 8, !tbaa !121
  br label %365

205:                                              ; preds = %200
  %206 = load ptr, ptr %0, align 8, !tbaa !123
  %207 = getelementptr inbounds %struct.data_reference, ptr %206, i64 0, i32 5, i32 1
  %208 = load ptr, ptr %207, align 8, !tbaa !114
  %209 = getelementptr inbounds %struct.VEC_tree_base, ptr %208, i64 0, i32 2, i64 0
  %210 = load ptr, ptr %209, align 8, !tbaa !85
  %211 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 1
  %212 = load ptr, ptr %211, align 8, !tbaa !96
  %213 = load i64, ptr %212, align 8
  %214 = and i64 %213, 65535
  %215 = icmp eq i64 %214, 146
  br i1 %215, label %216, label %319

216:                                              ; preds = %205
  %217 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 0, i32 3
  %218 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 0, i32 3
  %219 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 1
  %220 = load ptr, ptr %219, align 8, !tbaa !96
  %221 = load i64, ptr %220, align 8
  %222 = and i64 %221, 65535
  %223 = icmp eq i64 %222, 23
  br i1 %223, label %224, label %236

224:                                              ; preds = %216
  %225 = getelementptr inbounds %struct.tree_exp, ptr %212, i64 1, i32 0, i32 1
  %226 = load ptr, ptr %225, align 8, !tbaa !96
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 65535
  %229 = icmp eq i64 %228, 23
  br i1 %229, label %230, label %236

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.tree_exp, ptr %210, i64 1, i32 0, i32 1
  %232 = load ptr, ptr %231, align 8, !tbaa !96
  %233 = load i64, ptr %232, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 23
  br i1 %235, label %237, label %236

236:                                              ; preds = %230, %224, %216
  store i8 0, ptr %171, align 1, !tbaa !157
  br label %365

237:                                              ; preds = %230
  %238 = load ptr, ptr %217, align 8, !tbaa !96
  %239 = getelementptr inbounds %struct.tree_int_cst, ptr %238, i64 0, i32 1
  %240 = load i64, ptr %239, align 8, !tbaa !96
  %241 = trunc i64 %240 to i32
  %242 = load ptr, ptr %23, align 8, !tbaa !130
  %243 = icmp eq ptr %242, null
  br label %244

244:                                              ; preds = %259, %237
  %245 = phi i64 [ %260, %259 ], [ 0, %237 ]
  br i1 %243, label %253, label %246

246:                                              ; preds = %244
  %247 = load i32, ptr %242, align 8, !tbaa !131
  %248 = zext i32 %247 to i64
  %249 = icmp ult i64 %245, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %242, i64 0, i32 2, i64 %245
  %252 = load ptr, ptr %251, align 8, !tbaa !85
  br label %253

253:                                              ; preds = %250, %246, %244
  %254 = phi ptr [ %252, %250 ], [ null, %246 ], [ null, %244 ]
  %255 = phi i1 [ false, %250 ], [ true, %246 ], [ true, %244 ]
  br i1 %255, label %261, label %256

256:                                              ; preds = %253
  %257 = load i32, ptr %254, align 8, !tbaa !133
  %258 = icmp eq i32 %257, %241
  br i1 %258, label %261, label %259

259:                                              ; preds = %256
  %260 = add nuw i64 %245, 1
  br label %244, !llvm.loop !443

261:                                              ; preds = %256, %253
  %262 = load ptr, ptr %218, align 8, !tbaa !96
  %263 = getelementptr inbounds %struct.tree_int_cst, ptr %262, i64 0, i32 1
  %264 = load i64, ptr %263, align 8, !tbaa !96
  %265 = trunc i64 %264 to i32
  br label %266

266:                                              ; preds = %281, %261
  %267 = phi i64 [ %282, %281 ], [ 0, %261 ]
  br i1 %243, label %275, label %268

268:                                              ; preds = %266
  %269 = load i32, ptr %242, align 8, !tbaa !131
  %270 = zext i32 %269 to i64
  %271 = icmp ult i64 %267, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %242, i64 0, i32 2, i64 %267
  %274 = load ptr, ptr %273, align 8, !tbaa !85
  br label %275

275:                                              ; preds = %272, %268, %266
  %276 = phi ptr [ %274, %272 ], [ null, %268 ], [ null, %266 ]
  %277 = phi i1 [ false, %272 ], [ true, %268 ], [ true, %266 ]
  br i1 %277, label %283, label %278

278:                                              ; preds = %275
  %279 = load i32, ptr %276, align 8, !tbaa !133
  %280 = icmp eq i32 %279, %265
  br i1 %280, label %283, label %281

281:                                              ; preds = %278
  %282 = add nuw i64 %267, 1
  br label %266, !llvm.loop !443

283:                                              ; preds = %278, %275
  %284 = trunc i64 %267 to i32
  br i1 %243, label %289, label %285

285:                                              ; preds = %283
  %286 = load i32, ptr %242, align 8, !tbaa !131
  %287 = sext i32 %286 to i64
  %288 = shl nsw i64 %287, 2
  br label %289

289:                                              ; preds = %285, %283
  %290 = phi i64 [ %288, %285 ], [ 0, %283 ]
  %291 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %290) #27
  %292 = load ptr, ptr %225, align 8, !tbaa !96
  %293 = tail call i64 @int_cst_value(ptr noundef %292) #27
  %294 = trunc i64 %293 to i32
  %295 = load ptr, ptr %231, align 8, !tbaa !96
  %296 = tail call i64 @int_cst_value(ptr noundef %295) #27
  %297 = trunc i64 %296 to i32
  %298 = tail call i32 @llvm.abs.i32(i32 %297, i1 true)
  %299 = icmp eq i32 %294, 0
  br i1 %299, label %307, label %300

300:                                              ; preds = %289
  %301 = tail call i32 @llvm.abs.i32(i32 %294, i1 true)
  br label %302

302:                                              ; preds = %300, %302
  %303 = phi i32 [ %305, %302 ], [ %301, %300 ]
  %304 = phi i32 [ %303, %302 ], [ %298, %300 ]
  %305 = urem i32 %304, %303
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %302, !llvm.loop !444

307:                                              ; preds = %302, %289
  %308 = phi i32 [ %298, %289 ], [ %303, %302 ]
  %309 = sdiv i32 %294, %308
  %310 = sdiv i32 %297, %308
  %311 = icmp slt i32 %310, 0
  %312 = sub nsw i32 0, %309
  %313 = tail call i32 @llvm.abs.i32(i32 %310, i1 true)
  %314 = select i1 %311, i32 %309, i32 %312
  %315 = and i64 %267, 4294967295
  %316 = getelementptr inbounds i32, ptr %291, i64 %315
  store i32 %313, ptr %316, align 4, !tbaa !100
  %317 = and i64 %245, 4294967295
  %318 = getelementptr inbounds i32, ptr %291, i64 %317
  store i32 %314, ptr %318, align 4, !tbaa !100
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %291)
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %291, i32 noundef %284)
  br label %365

319:                                              ; preds = %205
  store i8 0, ptr %170, align 1, !tbaa !157
  br label %365

320:                                              ; preds = %192
  %321 = getelementptr inbounds %struct.tree_exp, ptr %188, i64 0, i32 3
  %322 = load ptr, ptr %321, align 8, !tbaa !96
  %323 = getelementptr inbounds %struct.tree_int_cst, ptr %322, i64 0, i32 1
  %324 = load i64, ptr %323, align 8, !tbaa !96
  %325 = trunc i64 %324 to i32
  %326 = load ptr, ptr %23, align 8, !tbaa !130
  %327 = icmp eq ptr %326, null
  br label %328

328:                                              ; preds = %340, %320
  %329 = phi i64 [ %343, %340 ], [ 0, %320 ]
  br i1 %327, label %337, label %330

330:                                              ; preds = %328
  %331 = load i32, ptr %326, align 8, !tbaa !131
  %332 = zext i32 %331 to i64
  %333 = icmp ult i64 %329, %332
  br i1 %333, label %334, label %337

334:                                              ; preds = %330
  %335 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %326, i64 0, i32 2, i64 %329
  %336 = load ptr, ptr %335, align 8, !tbaa !85
  br label %337

337:                                              ; preds = %334, %330, %328
  %338 = phi ptr [ %336, %334 ], [ null, %330 ], [ null, %328 ]
  %339 = phi i1 [ false, %334 ], [ true, %330 ], [ true, %328 ]
  br i1 %339, label %344, label %340

340:                                              ; preds = %337
  %341 = load i32, ptr %338, align 8, !tbaa !133
  %342 = icmp eq i32 %341, %325
  %343 = add nuw i64 %329, 1
  br i1 %342, label %344, label %328, !llvm.loop !443

344:                                              ; preds = %340, %337
  %345 = trunc i64 %329 to i32
  %346 = icmp slt i32 %174, %345
  br i1 %346, label %365, label %347

347:                                              ; preds = %344, %359
  %348 = phi i64 [ %362, %359 ], [ 0, %344 ]
  br i1 %327, label %356, label %349

349:                                              ; preds = %347
  %350 = load i32, ptr %326, align 8, !tbaa !131
  %351 = zext i32 %350 to i64
  %352 = icmp ult i64 %348, %351
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %326, i64 0, i32 2, i64 %348
  %355 = load ptr, ptr %354, align 8, !tbaa !85
  br label %356

356:                                              ; preds = %353, %349, %347
  %357 = phi ptr [ %355, %353 ], [ null, %349 ], [ null, %347 ]
  %358 = phi i1 [ false, %353 ], [ true, %349 ], [ true, %347 ]
  br i1 %358, label %363, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %357, align 8, !tbaa !133
  %361 = icmp eq i32 %360, %325
  %362 = add nuw i64 %348, 1
  br i1 %361, label %363, label %347, !llvm.loop !443

363:                                              ; preds = %356, %359
  %364 = trunc i64 %348 to i32
  br label %365

365:                                              ; preds = %363, %344, %319, %307, %236, %203, %183
  %366 = phi i32 [ %174, %203 ], [ %174, %319 ], [ %174, %183 ], [ %174, %344 ], [ %174, %236 ], [ %174, %307 ], [ %364, %363 ]
  %367 = phi i1 [ false, %203 ], [ false, %319 ], [ true, %183 ], [ true, %344 ], [ false, %236 ], [ false, %307 ], [ true, %363 ]
  %368 = add nuw nsw i64 %173, 1
  br i1 %367, label %172, label %548, !llvm.loop !445

369:                                              ; preds = %179
  %370 = load ptr, ptr %23, align 8, !tbaa !130
  %371 = icmp eq ptr %370, null
  br i1 %371, label %376, label %372

372:                                              ; preds = %369
  %373 = load i32, ptr %370, align 8, !tbaa !131
  %374 = sext i32 %373 to i64
  %375 = shl nsw i64 %374, 2
  br label %376

376:                                              ; preds = %372, %369
  %377 = phi i64 [ %375, %372 ], [ 0, %369 ]
  %378 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %377) #27
  tail call fastcc void @add_outer_distances(ptr noundef %0, ptr noundef %378, i32 noundef %174)
  br label %548

379:                                              ; preds = %45
  %380 = load ptr, ptr %23, align 8, !tbaa !130
  %381 = icmp eq ptr %380, null
  br i1 %381, label %384, label %382

382:                                              ; preds = %379
  %383 = load i32, ptr %380, align 8, !tbaa !131
  br label %384

384:                                              ; preds = %382, %379
  %385 = phi i32 [ %383, %382 ], [ 0, %379 ]
  %386 = sext i32 %385 to i64
  %387 = shl nsw i64 %386, 2
  %388 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %387) #27
  %389 = load ptr, ptr %0, align 8, !tbaa !123
  %390 = load ptr, ptr %15, align 8, !tbaa !124
  %391 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %389, ptr noundef %390, ptr noundef %388, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %392 = icmp eq i8 %391, 0
  br i1 %392, label %595, label %393

393:                                              ; preds = %384
  %394 = load i8, ptr %3, align 1, !tbaa !96
  %395 = icmp eq i8 %394, 0
  %396 = load ptr, ptr %23, align 8, !tbaa !130
  %397 = icmp eq ptr %396, null
  br i1 %395, label %478, label %398

398:                                              ; preds = %393
  br i1 %397, label %401, label %399

399:                                              ; preds = %398
  %400 = load i32, ptr %396, align 8, !tbaa !131
  br label %401

401:                                              ; preds = %399, %398
  %402 = phi i32 [ %400, %399 ], [ 0, %398 ]
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %441, label %407

404:                                              ; preds = %407
  %405 = add nuw i32 %408, 1
  %406 = icmp eq i32 %405, %402
  br i1 %406, label %441, label %407, !llvm.loop !446

407:                                              ; preds = %401, %404
  %408 = phi i32 [ %405, %404 ], [ 0, %401 ]
  %409 = zext i32 %408 to i64
  %410 = getelementptr inbounds i32, ptr %388, i64 %409
  %411 = load i32, ptr %410, align 4, !tbaa !100
  %412 = icmp eq i32 %411, 0
  br i1 %412, label %404, label %413

413:                                              ; preds = %407
  %414 = icmp slt i32 %411, 0
  br i1 %414, label %415, label %441

415:                                              ; preds = %413
  br i1 %397, label %420, label %416

416:                                              ; preds = %415
  %417 = load i32, ptr %396, align 8, !tbaa !131
  %418 = sext i32 %417 to i64
  %419 = shl nsw i64 %418, 2
  br label %420

420:                                              ; preds = %416, %415
  %421 = phi i64 [ %419, %416 ], [ 0, %415 ]
  %422 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %421) #27
  %423 = load ptr, ptr %15, align 8, !tbaa !124
  %424 = load ptr, ptr %0, align 8, !tbaa !123
  %425 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %423, ptr noundef %424, ptr noundef %1)
  %426 = icmp eq i8 %425, 0
  br i1 %426, label %595, label %427

427:                                              ; preds = %420
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0)
  %428 = load ptr, ptr %15, align 8, !tbaa !124
  %429 = load ptr, ptr %0, align 8, !tbaa !123
  %430 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %428, ptr noundef %429, ptr noundef %422, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %595, label %432

432:                                              ; preds = %427
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %422)
  %433 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 8
  store i8 1, ptr %433, align 4, !tbaa !265
  %434 = load ptr, ptr %23, align 8, !tbaa !130
  %435 = icmp eq ptr %434, null
  br i1 %435, label %498, label %436

436:                                              ; preds = %432
  %437 = load i32, ptr %434, align 8, !tbaa !131
  %438 = icmp ugt i32 %437, 1
  br i1 %438, label %439, label %498

439:                                              ; preds = %436
  %440 = load i32, ptr %4, align 4, !tbaa !100
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %422, i32 noundef %440)
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %388, i32 noundef %440)
  br label %498

441:                                              ; preds = %404, %401, %413
  br i1 %397, label %446, label %442

442:                                              ; preds = %441
  %443 = load i32, ptr %396, align 8, !tbaa !131
  %444 = sext i32 %443 to i64
  %445 = shl nsw i64 %444, 2
  br label %446

446:                                              ; preds = %442, %441
  %447 = phi i64 [ %445, %442 ], [ 0, %441 ]
  %448 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %447) #27
  %449 = load ptr, ptr %23, align 8, !tbaa !130
  %450 = icmp eq ptr %449, null
  br i1 %450, label %455, label %451

451:                                              ; preds = %446
  %452 = load i32, ptr %449, align 8, !tbaa !131
  %453 = sext i32 %452 to i64
  %454 = shl nsw i64 %453, 2
  br label %455

455:                                              ; preds = %451, %446
  %456 = phi i64 [ %454, %451 ], [ 0, %446 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %448, ptr align 4 %388, i64 %456, i1 false)
  %457 = load ptr, ptr %23, align 8, !tbaa !130
  %458 = icmp eq ptr %457, null
  br i1 %458, label %477, label %459

459:                                              ; preds = %455
  %460 = load i32, ptr %457, align 8, !tbaa !131
  %461 = icmp ugt i32 %460, 1
  br i1 %461, label %462, label %477

462:                                              ; preds = %459
  %463 = sext i32 %460 to i64
  %464 = shl nsw i64 %463, 2
  %465 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %464) #27
  %466 = load ptr, ptr %15, align 8, !tbaa !124
  %467 = load ptr, ptr %0, align 8, !tbaa !123
  %468 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %466, ptr noundef %467, ptr noundef %1)
  %469 = icmp eq i8 %468, 0
  br i1 %469, label %595, label %470

470:                                              ; preds = %462
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0)
  %471 = load ptr, ptr %15, align 8, !tbaa !124
  %472 = load ptr, ptr %0, align 8, !tbaa !123
  %473 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %471, ptr noundef %472, ptr noundef %465, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %474 = icmp eq i8 %473, 0
  br i1 %474, label %595, label %475

475:                                              ; preds = %470
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %448)
  %476 = load i32, ptr %4, align 4, !tbaa !100
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %388, i32 noundef %476)
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %465, i32 noundef %476)
  br label %498

477:                                              ; preds = %455, %459
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %448)
  br label %498

478:                                              ; preds = %393
  br i1 %397, label %481, label %479

479:                                              ; preds = %478
  %480 = load i32, ptr %396, align 8, !tbaa !131
  br label %481

481:                                              ; preds = %479, %478
  %482 = phi i32 [ %480, %479 ], [ 0, %478 ]
  %483 = icmp sgt i32 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %481
  %485 = zext nneg i32 %482 to i64
  br label %486

486:                                              ; preds = %484, %491
  %487 = phi i64 [ 0, %484 ], [ %492, %491 ]
  %488 = getelementptr inbounds i32, ptr %388, i64 %487
  %489 = load i32, ptr %488, align 4, !tbaa !100
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %494

491:                                              ; preds = %486
  %492 = add nuw nsw i64 %487, 1
  %493 = icmp eq i64 %492, %485
  br i1 %493, label %496, label %486, !llvm.loop !447

494:                                              ; preds = %486
  %495 = trunc i64 %487 to i32
  br label %496

496:                                              ; preds = %494, %491, %481
  %497 = phi i32 [ 0, %481 ], [ %495, %494 ], [ %482, %491 ]
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %388, i32 noundef %497)
  br label %498

498:                                              ; preds = %432, %496, %477, %475, %439, %436
  %499 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %500 = icmp eq ptr %499, null
  br i1 %500, label %548, label %501

501:                                              ; preds = %498
  %502 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %503 = and i32 %502, 8
  %504 = icmp eq i32 %503, 0
  br i1 %504, label %548, label %505

505:                                              ; preds = %501
  %506 = tail call i64 @fwrite(ptr nonnull @.str.125, i64 27, i64 1, ptr nonnull %499)
  %507 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  br label %508

508:                                              ; preds = %541, %505
  %509 = phi i64 [ %545, %541 ], [ 0, %505 ]
  %510 = load ptr, ptr %507, align 8, !tbaa !138
  %511 = icmp eq ptr %510, null
  br i1 %511, label %514, label %512

512:                                              ; preds = %508
  %513 = load i32, ptr %510, align 8, !tbaa !139
  br label %514

514:                                              ; preds = %512, %508
  %515 = phi i32 [ %513, %512 ], [ 0, %508 ]
  %516 = zext i32 %515 to i64
  %517 = icmp ult i64 %509, %516
  %518 = load ptr, ptr @dump_file, align 8, !tbaa !85
  br i1 %517, label %519, label %546

519:                                              ; preds = %514
  %520 = tail call i64 @fwrite(ptr nonnull @.str.126, i64 17, i64 1, ptr %518)
  %521 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %522 = load ptr, ptr %507, align 8, !tbaa !138
  %523 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %522, i64 0, i32 2, i64 %509
  %524 = load ptr, ptr %523, align 8, !tbaa !85
  %525 = load ptr, ptr %23, align 8, !tbaa !130
  %526 = icmp eq ptr %525, null
  br i1 %526, label %529, label %527

527:                                              ; preds = %519
  %528 = load i32, ptr %525, align 8, !tbaa !131
  br label %529

529:                                              ; preds = %527, %519
  %530 = phi i32 [ %528, %527 ], [ 0, %519 ]
  %531 = icmp sgt i32 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %529
  %533 = zext nneg i32 %530 to i64
  br label %534

534:                                              ; preds = %532, %534
  %535 = phi i64 [ 0, %532 ], [ %539, %534 ]
  %536 = getelementptr inbounds i32, ptr %524, i64 %535
  %537 = load i32, ptr %536, align 4, !tbaa !100
  %538 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %521, ptr noundef nonnull @.str.93, i32 noundef %537)
  %539 = add nuw nsw i64 %535, 1
  %540 = icmp eq i64 %539, %533
  br i1 %540, label %541, label %534, !llvm.loop !141

541:                                              ; preds = %534, %529
  %542 = tail call i32 @fputc(i32 10, ptr %521)
  %543 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %544 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 4, i64 1, ptr %543)
  %545 = add nuw nsw i64 %509, 1
  br label %508, !llvm.loop !448

546:                                              ; preds = %514
  %547 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %518)
  br label %548

548:                                              ; preds = %365, %159, %162, %376, %498, %501, %546
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  %549 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  br label %550

550:                                              ; preds = %548, %593
  %551 = phi i32 [ %594, %593 ], [ 0, %548 ]
  %552 = load ptr, ptr %549, align 8, !tbaa !138
  %553 = icmp eq ptr %552, null
  br i1 %553, label %561, label %554

554:                                              ; preds = %550
  %555 = load i32, ptr %552, align 8, !tbaa !139
  %556 = icmp ugt i32 %555, %551
  br i1 %556, label %557, label %561

557:                                              ; preds = %554
  %558 = zext i32 %551 to i64
  %559 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %552, i64 0, i32 2, i64 %558
  %560 = load ptr, ptr %559, align 8, !tbaa !85
  br label %561

561:                                              ; preds = %557, %554, %550
  %562 = phi ptr [ %560, %557 ], [ null, %554 ], [ null, %550 ]
  %563 = phi i1 [ false, %557 ], [ true, %554 ], [ true, %550 ]
  br i1 %563, label %596, label %564

564:                                              ; preds = %561
  %565 = load ptr, ptr %23, align 8, !tbaa !130
  %566 = icmp eq ptr %565, null
  br i1 %566, label %569, label %567

567:                                              ; preds = %564
  %568 = load i32, ptr %565, align 8, !tbaa !131
  br label %569

569:                                              ; preds = %567, %564
  %570 = phi i32 [ %568, %567 ], [ 0, %564 ]
  %571 = sext i32 %570 to i64
  %572 = shl nsw i64 %571, 2
  %573 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %572) #27
  %574 = load ptr, ptr %23, align 8, !tbaa !130
  %575 = icmp eq ptr %574, null
  br label %576

576:                                              ; preds = %584, %569
  %577 = phi i64 [ %592, %584 ], [ 0, %569 ]
  br i1 %575, label %580, label %578

578:                                              ; preds = %576
  %579 = load i32, ptr %574, align 8, !tbaa !131
  br label %580

580:                                              ; preds = %578, %576
  %581 = phi i32 [ %579, %578 ], [ 0, %576 ]
  %582 = zext i32 %581 to i64
  %583 = icmp ult i64 %577, %582
  br i1 %583, label %584, label %593

584:                                              ; preds = %580
  %585 = getelementptr inbounds i32, ptr %562, i64 %577
  %586 = load i32, ptr %585, align 4, !tbaa !100
  %587 = icmp sgt i32 %586, 0
  %588 = icmp slt i32 %586, 0
  %589 = select i1 %588, i32 1, i32 2
  %590 = select i1 %587, i32 0, i32 %589
  %591 = getelementptr inbounds i32, ptr %573, i64 %577
  store i32 %590, ptr %591, align 4, !tbaa !100
  %592 = add nuw nsw i64 %577, 1
  br label %576, !llvm.loop !449

593:                                              ; preds = %580
  tail call fastcc void @save_dir_v(ptr noundef %0, ptr noundef %573)
  %594 = add i32 %551, 1
  br label %550, !llvm.loop !450

595:                                              ; preds = %470, %462, %420, %427, %384, %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #27
  br label %596

596:                                              ; preds = %561, %595
  %597 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %598 = icmp eq ptr %597, null
  br i1 %598, label %605, label %599

599:                                              ; preds = %596
  %600 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %601 = and i32 %600, 8
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %599
  %604 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr nonnull %597)
  br label %605

605:                                              ; preds = %603, %599, %596
  ret void
}

declare zeroext i8 @evolution_function_is_invariant_p(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @subscript_dependence_tester_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #9 !prof !84 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %10 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 5, i32 1
  br label %11

11:                                               ; preds = %704, %4
  %12 = phi i32 [ 0, %4 ], [ %707, %704 ]
  %13 = load ptr, ptr %8, align 8, !tbaa !125
  %14 = icmp eq ptr %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %13, align 8, !tbaa !126
  %17 = icmp ugt i32 %16, %12
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = zext i32 %12 to i64
  %20 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %13, i64 0, i32 2, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !85
  br label %22

22:                                               ; preds = %11, %15, %18
  %23 = phi ptr [ %21, %18 ], [ null, %15 ], [ null, %11 ]
  %24 = phi i1 [ false, %18 ], [ true, %15 ], [ true, %11 ]
  br i1 %24, label %709, label %25

25:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %26 = load ptr, ptr %9, align 8, !tbaa !114
  %27 = zext i32 %12 to i64
  %28 = getelementptr inbounds %struct.VEC_tree_base, ptr %26, i64 0, i32 2, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !85
  %30 = load ptr, ptr %10, align 8, !tbaa !114
  %31 = getelementptr inbounds %struct.VEC_tree_base, ptr %30, i64 0, i32 2, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = load i32, ptr %3, align 8, !tbaa !133
  %34 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !337
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !337
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %37 = icmp eq ptr %36, null
  br i1 %37, label %52, label %38

38:                                               ; preds = %25
  %39 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %40 = and i32 %39, 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 33, i64 1, ptr nonnull %36)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %45 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 13, i64 1, ptr %44)
  %46 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %46, ptr noundef %29, i32 noundef 0) #27
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %48 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 15, i64 1, ptr %47)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %49, ptr noundef %32, i32 noundef 0) #27
  %50 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %51 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %50)
  br label %52

52:                                               ; preds = %42, %38, %25
  %53 = icmp eq ptr %29, null
  %54 = icmp eq ptr %32, null
  %55 = or i1 %53, %54
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %29) #27
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %32) #27
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %59, %56, %52
  %63 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !338
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !338
  %65 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %65, align 8, !tbaa !147
  store ptr %65, ptr %6, align 8, !tbaa !85
  %66 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %66, align 8, !tbaa !147
  store ptr %66, ptr %7, align 8, !tbaa !85
  br label %625

67:                                               ; preds = %59
  %68 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %29, ptr noundef %32) #27
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %91, label %70

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %29, i32 noundef %33) #27
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %91, label %73

73:                                               ; preds = %70
  %74 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !339
  %75 = add nsw i32 %74, 1
  store i32 %75, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !339
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %77 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %78 = load i32, ptr %77, align 8, !tbaa !115
  %79 = add i32 %78, 1
  store i32 %79, ptr %77, align 8, !tbaa !115
  %80 = zext i32 %78 to i64
  %81 = getelementptr inbounds %struct.VEC_tree_base, ptr %77, i64 0, i32 2, i64 %80
  store ptr %76, ptr %81, align 8, !tbaa !85
  %82 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %77)
  store ptr %82, ptr %6, align 8, !tbaa !85
  %83 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %84 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %85 = load i32, ptr %84, align 8, !tbaa !115
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !115
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.VEC_tree_base, ptr %84, i64 0, i32 2, i64 %87
  store ptr %83, ptr %88, align 8, !tbaa !85
  %89 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %84)
  store ptr %89, ptr %7, align 8, !tbaa !85
  %90 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %90, ptr %5, align 8, !tbaa !85
  br label %625

91:                                               ; preds = %70, %67
  %92 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %29) #27
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %32) #27
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %94, %91
  %98 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %29, i32 noundef %33) #27
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %32, i32 noundef %33) #27
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100, %97
  %104 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !338
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !338
  %106 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %106, align 8, !tbaa !147
  store ptr %106, ptr %6, align 8, !tbaa !85
  %107 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %107, align 8, !tbaa !147
  store ptr %107, ptr %7, align 8, !tbaa !85
  br label %625

108:                                              ; preds = %94, %100
  %109 = load i64, ptr %29, align 8
  %110 = trunc i64 %109 to i16
  %111 = add i16 %110, -25
  %112 = icmp ult i16 %111, -2
  br i1 %112, label %201, label %113

113:                                              ; preds = %108
  %114 = load i64, ptr %32, align 8
  %115 = trunc i64 %114 to i16
  %116 = add i16 %115, -25
  %117 = icmp ult i16 %116, -2
  br i1 %117, label %197, label %118

118:                                              ; preds = %113
  %119 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !340
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !340
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 24, i64 1, ptr nonnull %121)
  br label %129

129:                                              ; preds = %127, %123, %118
  %130 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !96
  %132 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %133 = load ptr, ptr %132, align 8, !tbaa !96
  %134 = getelementptr inbounds %struct.tree_type, ptr %131, i64 0, i32 6
  %135 = load i32, ptr %134, align 4
  %136 = and i32 %135, 1023
  %137 = getelementptr inbounds %struct.tree_type, ptr %133, i64 0, i32 6
  %138 = load i32, ptr %137, align 4
  %139 = and i32 %138, 1023
  %140 = icmp ugt i32 %136, %139
  %141 = select i1 %140, ptr %131, ptr %133
  %142 = tail call ptr @signed_type_for(ptr noundef %141) #27
  %143 = tail call ptr @chrec_convert(ptr noundef %142, ptr noundef %29, ptr noundef null) #27
  %144 = tail call ptr @chrec_convert(ptr noundef %142, ptr noundef %32, ptr noundef null) #27
  %145 = tail call ptr @chrec_fold_minus(ptr noundef %142, ptr noundef %143, ptr noundef %144) #27
  %146 = load i64, ptr %145, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 23
  br i1 %148, label %149, label %172

149:                                              ; preds = %129
  %150 = tail call i32 @integer_zerop(ptr noundef nonnull %145) #27
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %168, label %152

152:                                              ; preds = %149
  %153 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %154 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %155 = load i32, ptr %154, align 8, !tbaa !115
  %156 = add i32 %155, 1
  store i32 %156, ptr %154, align 8, !tbaa !115
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds %struct.VEC_tree_base, ptr %154, i64 0, i32 2, i64 %157
  store ptr %153, ptr %158, align 8, !tbaa !85
  %159 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %154)
  store ptr %159, ptr %6, align 8, !tbaa !85
  %160 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %161 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %162 = load i32, ptr %161, align 8, !tbaa !115
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !115
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds %struct.VEC_tree_base, ptr %161, i64 0, i32 2, i64 %164
  store ptr %160, ptr %165, align 8, !tbaa !85
  %166 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %161)
  store ptr %166, ptr %7, align 8, !tbaa !85
  %167 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %167, ptr %5, align 8, !tbaa !85
  br label %185

168:                                              ; preds = %149
  %169 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %169, align 8, !tbaa !147
  store ptr %169, ptr %6, align 8, !tbaa !85
  %170 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %170, align 8, !tbaa !147
  store ptr %170, ptr %7, align 8, !tbaa !85
  %171 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %171, ptr %5, align 8, !tbaa !85
  br label %185

172:                                              ; preds = %129
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %174 = icmp eq ptr %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %177 = and i32 %176, 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 44, i64 1, ptr nonnull %173)
  br label %181

181:                                              ; preds = %179, %175, %172
  %182 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %182, align 8, !tbaa !147
  store ptr %182, ptr %6, align 8, !tbaa !85
  %183 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %183, align 8, !tbaa !147
  store ptr %183, ptr %7, align 8, !tbaa !85
  %184 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %184, ptr %5, align 8, !tbaa !85
  br label %185

185:                                              ; preds = %181, %168, %152
  %186 = phi ptr [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 10), %181 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 8), %168 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 9), %152 ]
  %187 = load i32, ptr %186, align 4, !tbaa !100
  %188 = add nsw i32 %187, 1
  store i32 %188, ptr %186, align 4, !tbaa !100
  %189 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %190 = icmp eq ptr %189, null
  br i1 %190, label %625, label %191

191:                                              ; preds = %185
  %192 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %193 = and i32 %192, 8
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %625, label %195

195:                                              ; preds = %191
  %196 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr nonnull %189)
  br label %625

197:                                              ; preds = %113
  br i1 %112, label %201, label %198

198:                                              ; preds = %197
  %199 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef %32) #27
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %108, %197, %198
  %202 = load i64, ptr %32, align 8
  %203 = trunc i64 %202 to i16
  %204 = add i16 %203, -25
  %205 = icmp ult i16 %204, -2
  br i1 %205, label %209, label %206

206:                                              ; preds = %201
  %207 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %29) #27
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %233

209:                                              ; preds = %206, %201
  %210 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %29) #27
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %443, label %212

212:                                              ; preds = %209
  %213 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %32) #27
  %214 = icmp eq i8 %213, 0
  br i1 %214, label %443, label %215

215:                                              ; preds = %212
  %216 = load i64, ptr %29, align 8
  %217 = and i64 %216, 65535
  %218 = icmp eq i64 %217, 146
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load i64, ptr %32, align 8
  %221 = and i64 %220, 65535
  %222 = icmp eq i64 %221, 146
  br i1 %222, label %223, label %233

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %225 = load ptr, ptr %224, align 8, !tbaa !96
  %226 = getelementptr inbounds %struct.tree_int_cst, ptr %225, i64 0, i32 1
  %227 = load i64, ptr %226, align 8, !tbaa !96
  %228 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !96
  %230 = getelementptr inbounds %struct.tree_int_cst, ptr %229, i64 0, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !96
  %232 = icmp eq i64 %227, %231
  br i1 %232, label %233, label %443

233:                                              ; preds = %219, %223, %215, %198, %206
  %234 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !344
  %235 = add nsw i32 %234, 1
  store i32 %235, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !344
  %236 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %237 = icmp eq ptr %236, null
  br i1 %237, label %244, label %238

238:                                              ; preds = %233
  %239 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %240 = and i32 %239, 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %238
  %243 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 24, i64 1, ptr nonnull %236)
  br label %244

244:                                              ; preds = %233, %238, %242
  %245 = load i64, ptr %29, align 8
  %246 = trunc i64 %245 to i16
  %247 = add i16 %246, -25
  %248 = icmp ult i16 %247, -2
  br i1 %248, label %264, label %249

249:                                              ; preds = %244
  %250 = load i64, ptr %32, align 8
  %251 = and i64 %250, 65535
  %252 = icmp eq i64 %251, 146
  br i1 %252, label %253, label %264

253:                                              ; preds = %249
  %254 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %255 = load ptr, ptr %254, align 8, !tbaa !96
  %256 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %255, i32 noundef %33) #27
  %257 = icmp eq i8 %256, 0
  br i1 %257, label %264, label %258

258:                                              ; preds = %253
  %259 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 1
  %260 = load ptr, ptr %259, align 8, !tbaa !96
  %261 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %260, i32 noundef %33) #27
  %262 = icmp eq i8 %261, 0
  br i1 %262, label %264, label %263

263:                                              ; preds = %258
  call fastcc void @analyze_siv_subscript_cst_affine(ptr noundef nonnull %29, ptr noundef %32, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5)
  br label %434

264:                                              ; preds = %253, %258, %244, %249
  %265 = load i64, ptr %29, align 8
  %266 = and i64 %265, 65535
  %267 = icmp eq i64 %266, 146
  br i1 %267, label %268, label %284

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %270 = load ptr, ptr %269, align 8, !tbaa !96
  %271 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %270, i32 noundef %33) #27
  %272 = icmp eq i8 %271, 0
  br i1 %272, label %284, label %273

273:                                              ; preds = %268
  %274 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %275 = load ptr, ptr %274, align 8, !tbaa !96
  %276 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %275, i32 noundef %33) #27
  %277 = icmp eq i8 %276, 0
  br i1 %277, label %284, label %278

278:                                              ; preds = %273
  %279 = load i64, ptr %32, align 8
  %280 = trunc i64 %279 to i16
  %281 = add i16 %280, -25
  %282 = icmp ult i16 %281, -2
  br i1 %282, label %284, label %283

283:                                              ; preds = %278
  call fastcc void @analyze_siv_subscript_cst_affine(ptr noundef %32, ptr noundef nonnull %29, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %5)
  br label %434

284:                                              ; preds = %268, %273, %278, %264
  %285 = load i64, ptr %29, align 8
  %286 = and i64 %285, 65535
  %287 = icmp eq i64 %286, 146
  br i1 %287, label %288, label %419

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1
  %290 = load ptr, ptr %289, align 8, !tbaa !96
  %291 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %290, i32 noundef %33) #27
  %292 = icmp eq i8 %291, 0
  br i1 %292, label %419, label %293

293:                                              ; preds = %288
  %294 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %295 = load ptr, ptr %294, align 8, !tbaa !96
  %296 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %295, i32 noundef %33) #27
  %297 = icmp eq i8 %296, 0
  br i1 %297, label %419, label %298

298:                                              ; preds = %293
  %299 = load i64, ptr %32, align 8
  %300 = and i64 %299, 65535
  %301 = icmp eq i64 %300, 146
  br i1 %301, label %302, label %419

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1
  %304 = load ptr, ptr %303, align 8, !tbaa !96
  %305 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %304, i32 noundef %33) #27
  %306 = icmp eq i8 %305, 0
  br i1 %306, label %419, label %307

307:                                              ; preds = %302
  %308 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 1, i32 0, i32 1
  %309 = load ptr, ptr %308, align 8, !tbaa !96
  %310 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %309, i32 noundef %33) #27
  %311 = icmp eq i8 %310, 0
  br i1 %311, label %419, label %312

312:                                              ; preds = %307
  %313 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef nonnull %29) #27
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %315, label %339

315:                                              ; preds = %312
  %316 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef nonnull %32) #27
  %317 = icmp eq i8 %316, 0
  br i1 %317, label %318, label %339

318:                                              ; preds = %315
  call fastcc void @analyze_subscript_affine_affine(ptr noundef nonnull %29, ptr noundef nonnull %32, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %319 = load ptr, ptr %6, align 8, !tbaa !85
  %320 = load i32, ptr %319, align 8, !tbaa !147
  %321 = icmp eq i32 %320, 3
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  %323 = load ptr, ptr %7, align 8, !tbaa !85
  %324 = load i32, ptr %323, align 8, !tbaa !147
  %325 = icmp eq i32 %324, 3
  br i1 %325, label %326, label %329

326:                                              ; preds = %322, %318
  %327 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %328 = add nsw i32 %327, 1
  store i32 %328, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  br label %434

329:                                              ; preds = %322
  %330 = icmp eq i32 %320, 0
  %331 = icmp eq i32 %324, 0
  %332 = or i1 %330, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %329
  %334 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %335 = add nsw i32 %334, 1
  store i32 %335, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %434

336:                                              ; preds = %329
  %337 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  %338 = add nsw i32 %337, 1
  store i32 %338, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  br label %434

339:                                              ; preds = %315, %312
  %340 = load ptr, ptr %294, align 8, !tbaa !96
  %341 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %340) #27
  %342 = icmp eq i8 %341, 0
  br i1 %342, label %343, label %394

343:                                              ; preds = %339
  %344 = load ptr, ptr %308, align 8, !tbaa !96
  %345 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %344) #27
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %347, label %394

347:                                              ; preds = %343
  %348 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %349 = icmp ne ptr %348, %29
  %350 = load ptr, ptr @chrec_known, align 8
  %351 = icmp ne ptr %350, %29
  %352 = select i1 %349, i1 %351, i1 false
  br i1 %352, label %353, label %356

353:                                              ; preds = %347
  %354 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %355 = load ptr, ptr %354, align 8, !tbaa !96
  br label %356

356:                                              ; preds = %353, %347
  %357 = phi ptr [ %355, %353 ], [ null, %347 ]
  %358 = load ptr, ptr %289, align 8, !tbaa !96
  %359 = load ptr, ptr %303, align 8, !tbaa !96
  %360 = tail call ptr @chrec_convert(ptr noundef %357, ptr noundef %359, ptr noundef null) #27
  %361 = tail call ptr @chrec_fold_minus(ptr noundef %357, ptr noundef %358, ptr noundef %360) #27
  %362 = icmp eq ptr %361, null
  br i1 %362, label %394, label %363

363:                                              ; preds = %356
  %364 = load i64, ptr %361, align 8
  %365 = trunc i64 %364 to i16
  %366 = add i16 %365, -25
  %367 = icmp ult i16 %366, -2
  br i1 %367, label %394, label %368

368:                                              ; preds = %363
  %369 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %370 = icmp eq ptr %369, null
  br i1 %370, label %377, label %371

371:                                              ; preds = %368
  %372 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %373 = and i32 %372, 8
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %377, label %375

375:                                              ; preds = %371
  %376 = tail call i64 @fwrite(ptr nonnull @.str.122, i64 40, i64 1, ptr nonnull %369)
  br label %377

377:                                              ; preds = %375, %371, %368
  %378 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !96
  %380 = getelementptr inbounds %struct.tree_int_cst, ptr %379, i64 0, i32 1
  %381 = load i64, ptr %380, align 8, !tbaa !96
  %382 = trunc i64 %381 to i32
  %383 = load ptr, ptr %294, align 8, !tbaa !96
  %384 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %382, ptr noundef nonnull %361, ptr noundef %383)
  %385 = load ptr, ptr %308, align 8, !tbaa !96
  %386 = tail call ptr @chrec_convert(ptr noundef %357, ptr noundef %385, ptr noundef null) #27
  %387 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  %388 = load ptr, ptr %387, align 8, !tbaa !96
  %389 = getelementptr inbounds %struct.tree_int_cst, ptr %388, i64 0, i32 1
  %390 = load i64, ptr %389, align 8, !tbaa !96
  %391 = trunc i64 %390 to i32
  %392 = tail call ptr @build_int_cst(ptr noundef %357, i64 noundef 0) #27
  %393 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %391, ptr noundef %392, ptr noundef %386)
  br label %394

394:                                              ; preds = %377, %363, %356, %343, %339
  %395 = phi ptr [ %29, %363 ], [ %384, %377 ], [ %29, %343 ], [ %29, %339 ], [ %29, %356 ]
  %396 = phi ptr [ %32, %363 ], [ %393, %377 ], [ %32, %343 ], [ %32, %339 ], [ %32, %356 ]
  %397 = phi i1 [ true, %363 ], [ false, %377 ], [ true, %343 ], [ true, %339 ], [ true, %356 ]
  br i1 %397, label %419, label %398

398:                                              ; preds = %394
  call fastcc void @analyze_subscript_affine_affine(ptr noundef %395, ptr noundef %396, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %399 = load ptr, ptr %6, align 8, !tbaa !85
  %400 = load i32, ptr %399, align 8, !tbaa !147
  %401 = icmp eq i32 %400, 3
  br i1 %401, label %406, label %402

402:                                              ; preds = %398
  %403 = load ptr, ptr %7, align 8, !tbaa !85
  %404 = load i32, ptr %403, align 8, !tbaa !147
  %405 = icmp eq i32 %404, 3
  br i1 %405, label %406, label %409

406:                                              ; preds = %402, %398
  %407 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %408 = add nsw i32 %407, 1
  store i32 %408, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  br label %434

409:                                              ; preds = %402
  %410 = icmp eq i32 %400, 0
  %411 = icmp eq i32 %404, 0
  %412 = or i1 %410, %411
  br i1 %412, label %413, label %416

413:                                              ; preds = %409
  %414 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %415 = add nsw i32 %414, 1
  store i32 %415, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %434

416:                                              ; preds = %409
  %417 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  %418 = add nsw i32 %417, 1
  store i32 %418, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  br label %434

419:                                              ; preds = %302, %307, %288, %293, %298, %284, %394
  %420 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %421 = icmp eq ptr %420, null
  br i1 %421, label %428, label %422

422:                                              ; preds = %419
  %423 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %424 = and i32 %423, 8
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %428, label %426

426:                                              ; preds = %422
  %427 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 32, i64 1, ptr nonnull %420)
  br label %428

428:                                              ; preds = %426, %422, %419
  %429 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %429, align 8, !tbaa !147
  store ptr %429, ptr %6, align 8, !tbaa !85
  %430 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %430, align 8, !tbaa !147
  store ptr %430, ptr %7, align 8, !tbaa !85
  %431 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %431, ptr %5, align 8, !tbaa !85
  %432 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %433 = add nsw i32 %432, 1
  store i32 %433, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  br label %434

434:                                              ; preds = %428, %416, %413, %406, %336, %333, %326, %283, %263
  %435 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %436 = icmp eq ptr %435, null
  br i1 %436, label %625, label %437

437:                                              ; preds = %434
  %438 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %439 = and i32 %438, 8
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %625, label %441

441:                                              ; preds = %437
  %442 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr nonnull %435)
  br label %625

443:                                              ; preds = %223, %212, %209
  %444 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !348
  %445 = add nsw i32 %444, 1
  store i32 %445, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !348
  %446 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %447 = icmp eq ptr %446, null
  br i1 %447, label %454, label %448

448:                                              ; preds = %443
  %449 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %450 = and i32 %449, 8
  %451 = icmp eq i32 %450, 0
  br i1 %451, label %454, label %452

452:                                              ; preds = %448
  %453 = tail call i64 @fwrite(ptr nonnull @.str.123, i64 24, i64 1, ptr nonnull %446)
  br label %454

454:                                              ; preds = %452, %448, %443
  %455 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %456 = load ptr, ptr %455, align 8, !tbaa !96
  %457 = getelementptr inbounds %struct.tree_common, ptr %32, i64 0, i32 2
  %458 = load ptr, ptr %457, align 8, !tbaa !96
  %459 = getelementptr inbounds %struct.tree_type, ptr %456, i64 0, i32 6
  %460 = load i32, ptr %459, align 4
  %461 = and i32 %460, 1023
  %462 = getelementptr inbounds %struct.tree_type, ptr %458, i64 0, i32 6
  %463 = load i32, ptr %462, align 4
  %464 = and i32 %463, 1023
  %465 = icmp ugt i32 %461, %464
  %466 = select i1 %465, ptr %456, ptr %458
  %467 = tail call ptr @signed_type_for(ptr noundef %466) #27
  %468 = tail call ptr @chrec_convert(ptr noundef %467, ptr noundef nonnull %29, ptr noundef null) #27
  %469 = tail call ptr @chrec_convert(ptr noundef %467, ptr noundef nonnull %32, ptr noundef null) #27
  %470 = tail call ptr @chrec_fold_minus(ptr noundef %467, ptr noundef %468, ptr noundef %469) #27
  %471 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %468, ptr noundef %469) #27
  %472 = icmp eq i8 %471, 0
  br i1 %472, label %524, label %473

473:                                              ; preds = %454
  %474 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %475 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %476 = load i32, ptr %475, align 8, !tbaa !115
  %477 = add i32 %476, 1
  store i32 %477, ptr %475, align 8, !tbaa !115
  %478 = zext i32 %476 to i64
  %479 = getelementptr inbounds %struct.VEC_tree_base, ptr %475, i64 0, i32 2, i64 %478
  store ptr %474, ptr %479, align 8, !tbaa !85
  %480 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %475)
  store ptr %480, ptr %6, align 8, !tbaa !85
  %481 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %482 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %483 = load i32, ptr %482, align 8, !tbaa !115
  %484 = add i32 %483, 1
  store i32 %484, ptr %482, align 8, !tbaa !115
  %485 = zext i32 %483 to i64
  %486 = getelementptr inbounds %struct.VEC_tree_base, ptr %482, i64 0, i32 2, i64 %485
  store ptr %481, ptr %486, align 8, !tbaa !85
  %487 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %482)
  store ptr %487, ptr %7, align 8, !tbaa !85
  %488 = getelementptr inbounds %struct.tree_exp, ptr %468, i64 0, i32 3
  %489 = load ptr, ptr %488, align 8, !tbaa !96
  %490 = getelementptr inbounds %struct.tree_int_cst, ptr %489, i64 0, i32 1
  %491 = load i64, ptr %490, align 8, !tbaa !96
  %492 = load ptr, ptr @cfun, align 8, !tbaa !85
  %493 = getelementptr inbounds %struct.function, ptr %492, i64 0, i32 4
  %494 = load ptr, ptr %493, align 8, !tbaa !353
  %495 = getelementptr inbounds %struct.loops, ptr %494, i64 0, i32 1
  %496 = load ptr, ptr %495, align 8, !tbaa !354
  %497 = and i64 %491, 4294967295
  %498 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %496, i64 0, i32 2, i64 %497
  %499 = load ptr, ptr %498, align 8, !tbaa !85
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %499) #27
  %500 = getelementptr inbounds %struct.loop, ptr %499, i64 0, i32 14
  %501 = load i8, ptr %500, align 8, !tbaa !234
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %508, label %503

503:                                              ; preds = %473
  %504 = getelementptr inbounds %struct.loop, ptr %499, i64 0, i32 12
  %505 = load i64, ptr %504, align 8, !tbaa.struct !451
  %506 = getelementptr inbounds %struct.loop, ptr %499, i64 0, i32 12, i32 1
  %507 = load i64, ptr %506, align 8, !tbaa.struct !452
  br label %508

508:                                              ; preds = %503, %473
  %509 = phi i64 [ undef, %473 ], [ %507, %503 ]
  %510 = phi i64 [ undef, %473 ], [ %505, %503 ]
  br i1 %502, label %511, label %513

511:                                              ; preds = %508
  %512 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %522

513:                                              ; preds = %508
  %514 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !453
  %515 = tail call ptr %514(i32 noundef 32, i32 noundef 1) #27
  %516 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef %515, i64 %510, i64 %509) #27
  %517 = icmp eq i8 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %513
  %519 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %522

520:                                              ; preds = %513
  %521 = tail call ptr @double_int_to_tree(ptr noundef %515, i64 %510, i64 %509) #27
  br label %522

522:                                              ; preds = %520, %518, %511
  %523 = phi ptr [ %521, %520 ], [ %519, %518 ], [ %512, %511 ]
  store ptr %523, ptr %5, align 8, !tbaa !85
  br label %613

524:                                              ; preds = %454
  %525 = icmp eq ptr %470, null
  br i1 %525, label %573, label %526

526:                                              ; preds = %524
  %527 = load i64, ptr %470, align 8
  %528 = trunc i64 %527 to i16
  %529 = add i16 %528, -25
  %530 = icmp ult i16 %529, -2
  br i1 %530, label %573, label %531

531:                                              ; preds = %526
  %532 = tail call i32 @host_integerp(ptr noundef nonnull %470, i32 noundef 0) #27
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %573, label %534

534:                                              ; preds = %531
  %535 = tail call i64 @tree_low_cst(ptr noundef nonnull %470, i32 noundef 0) #27
  %536 = load i64, ptr %468, align 8
  %537 = and i64 %536, 65535
  %538 = icmp eq i64 %537, 146
  br i1 %538, label %539, label %565

539:                                              ; preds = %534, %556
  %540 = phi ptr [ %559, %556 ], [ %468, %534 ]
  %541 = phi i32 [ %557, %556 ], [ 0, %534 ]
  %542 = getelementptr inbounds %struct.tree_exp, ptr %540, i64 1, i32 0, i32 1
  %543 = load ptr, ptr %542, align 8, !tbaa !96
  %544 = tail call i32 @host_integerp(ptr noundef %543, i32 noundef 0) #27
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %573, label %546

546:                                              ; preds = %539
  %547 = tail call i64 @tree_low_cst(ptr noundef %543, i32 noundef 0) #27
  %548 = trunc i64 %547 to i32
  %549 = tail call i32 @llvm.abs.i32(i32 %548, i1 true)
  %550 = icmp sgt i32 %541, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %546, %551
  %552 = phi i32 [ %554, %551 ], [ %541, %546 ]
  %553 = phi i32 [ %552, %551 ], [ %549, %546 ]
  %554 = urem i32 %553, %552
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %551, !llvm.loop !444

556:                                              ; preds = %551, %546
  %557 = phi i32 [ %549, %546 ], [ %552, %551 ]
  %558 = getelementptr inbounds %struct.tree_exp, ptr %540, i64 1
  %559 = load ptr, ptr %558, align 8, !tbaa !96
  %560 = load i64, ptr %559, align 8
  %561 = and i64 %560, 65535
  %562 = icmp eq i64 %561, 146
  br i1 %562, label %539, label %563, !llvm.loop !461

563:                                              ; preds = %556
  %564 = zext nneg i32 %557 to i64
  br label %565

565:                                              ; preds = %563, %534
  %566 = phi i64 [ 0, %534 ], [ %564, %563 ]
  %567 = srem i64 %535, %566
  %568 = icmp eq i64 %567, 0
  br i1 %568, label %573, label %569

569:                                              ; preds = %565
  %570 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %570, align 8, !tbaa !147
  store ptr %570, ptr %6, align 8, !tbaa !85
  %571 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %571, align 8, !tbaa !147
  store ptr %571, ptr %7, align 8, !tbaa !85
  %572 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %572, ptr %5, align 8, !tbaa !85
  br label %613

573:                                              ; preds = %539, %531, %524, %565, %526
  %574 = load i32, ptr %3, align 8, !tbaa !133
  %575 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %468, i32 noundef %574) #27
  %576 = icmp eq i8 %575, 0
  br i1 %576, label %600, label %577

577:                                              ; preds = %573
  %578 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %468) #27
  %579 = icmp eq i8 %578, 0
  br i1 %579, label %580, label %600

580:                                              ; preds = %577
  %581 = load i32, ptr %3, align 8, !tbaa !133
  %582 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %469, i32 noundef %581) #27
  %583 = icmp eq i8 %582, 0
  br i1 %583, label %600, label %584

584:                                              ; preds = %580
  %585 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %469) #27
  %586 = icmp eq i8 %585, 0
  br i1 %586, label %587, label %600

587:                                              ; preds = %584
  call fastcc void @analyze_subscript_affine_affine(ptr noundef %468, ptr noundef %469, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5)
  %588 = load ptr, ptr %6, align 8, !tbaa !85
  %589 = load i32, ptr %588, align 8, !tbaa !147
  %590 = icmp eq i32 %589, 3
  br i1 %590, label %613, label %591

591:                                              ; preds = %587
  %592 = load ptr, ptr %7, align 8, !tbaa !85
  %593 = load i32, ptr %592, align 8, !tbaa !147
  %594 = icmp eq i32 %593, 3
  br i1 %594, label %613, label %595

595:                                              ; preds = %591
  %596 = icmp eq i32 %589, 0
  %597 = icmp eq i32 %593, 0
  %598 = or i1 %596, %597
  %599 = select i1 %598, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17)
  br label %613

600:                                              ; preds = %584, %580, %577, %573
  %601 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %602 = icmp eq ptr %601, null
  br i1 %602, label %609, label %603

603:                                              ; preds = %600
  %604 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %605 = and i32 %604, 8
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %609, label %607

607:                                              ; preds = %603
  %608 = tail call i64 @fwrite(ptr nonnull @.str.124, i64 50, i64 1, ptr nonnull %601)
  br label %609

609:                                              ; preds = %607, %603, %600
  %610 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %610, align 8, !tbaa !147
  store ptr %610, ptr %6, align 8, !tbaa !85
  %611 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %611, align 8, !tbaa !147
  store ptr %611, ptr %7, align 8, !tbaa !85
  %612 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %612, ptr %5, align 8, !tbaa !85
  br label %613

613:                                              ; preds = %595, %587, %591, %609, %569, %522
  %614 = phi ptr [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %609 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), %569 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17), %522 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %591 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %587 ], [ %599, %595 ]
  %615 = load i32, ptr %614, align 4, !tbaa !100
  %616 = add nsw i32 %615, 1
  store i32 %616, ptr %614, align 4, !tbaa !100
  %617 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %618 = icmp eq ptr %617, null
  br i1 %618, label %625, label %619

619:                                              ; preds = %613
  %620 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %621 = and i32 %620, 8
  %622 = icmp eq i32 %621, 0
  br i1 %622, label %625, label %623

623:                                              ; preds = %619
  %624 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr nonnull %617)
  br label %625

625:                                              ; preds = %623, %619, %613, %441, %437, %434, %195, %191, %185, %103, %73, %62
  %626 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %627 = icmp eq ptr %626, null
  br i1 %627, label %644, label %628

628:                                              ; preds = %625
  %629 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %630 = and i32 %629, 8
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %644, label %632

632:                                              ; preds = %628
  %633 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 26, i64 1, ptr nonnull %626)
  %634 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %635 = load ptr, ptr %6, align 8, !tbaa !85
  tail call fastcc void @dump_conflict_function(ptr noundef %634, ptr noundef %635)
  %636 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %637 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 28, i64 1, ptr %636)
  %638 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %639 = load ptr, ptr %7, align 8, !tbaa !85
  tail call fastcc void @dump_conflict_function(ptr noundef %638, ptr noundef %639)
  %640 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %641 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %640)
  %642 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %643 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %642)
  br label %644

644:                                              ; preds = %625, %628, %632
  %645 = load ptr, ptr %6, align 8, !tbaa !85
  %646 = load i32, ptr %645, align 8, !tbaa !147
  %647 = icmp eq i32 %646, 3
  br i1 %647, label %652, label %648

648:                                              ; preds = %644
  %649 = load ptr, ptr %7, align 8, !tbaa !85
  %650 = load i32, ptr %649, align 8, !tbaa !147
  %651 = icmp eq i32 %650, 3
  br i1 %651, label %652, label %672

652:                                              ; preds = %648, %644
  %653 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %654 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %655 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %656 = icmp eq ptr %655, null
  br i1 %656, label %666, label %657

657:                                              ; preds = %652
  %658 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %659 = and i32 %658, 8
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %666, label %661

661:                                              ; preds = %657
  %662 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 24, i64 1, ptr nonnull %655)
  %663 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %663, ptr noundef %654, i32 noundef 0) #27
  %664 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %665 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %664)
  br label %666

666:                                              ; preds = %652, %657, %661
  %667 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  store ptr %654, ptr %667, align 8, !tbaa !121
  %668 = load ptr, ptr %653, align 8, !tbaa !125
  tail call fastcc void @free_subscripts(ptr noundef %668)
  store ptr null, ptr %653, align 8, !tbaa !125
  %669 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !258
  %670 = add nsw i32 %669, 1
  store i32 %670, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !258
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %645)
  %671 = load ptr, ptr %7, align 8, !tbaa !85
  tail call fastcc void @free_conflict_function(ptr noundef %671)
  br label %708

672:                                              ; preds = %648
  %673 = icmp eq i32 %646, 0
  %674 = icmp eq i32 %650, 0
  %675 = or i1 %673, %674
  br i1 %675, label %676, label %695

676:                                              ; preds = %672
  %677 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %678 = load ptr, ptr @chrec_known, align 8, !tbaa !85
  %679 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %680 = icmp eq ptr %679, null
  br i1 %680, label %690, label %681

681:                                              ; preds = %676
  %682 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %683 = and i32 %682, 8
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %690, label %685

685:                                              ; preds = %681
  %686 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 24, i64 1, ptr nonnull %679)
  %687 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %687, ptr noundef %678, i32 noundef 0) #27
  %688 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %689 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %688)
  br label %690

690:                                              ; preds = %676, %681, %685
  %691 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  store ptr %678, ptr %691, align 8, !tbaa !121
  %692 = load ptr, ptr %677, align 8, !tbaa !125
  tail call fastcc void @free_subscripts(ptr noundef %692)
  store ptr null, ptr %677, align 8, !tbaa !125
  %693 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !336
  %694 = add nsw i32 %693, 1
  store i32 %694, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !336
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %645)
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %649)
  br label %708

695:                                              ; preds = %672
  %696 = load ptr, ptr %23, align 8, !tbaa !145
  %697 = icmp eq ptr %696, null
  br i1 %697, label %699, label %698

698:                                              ; preds = %695
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %696)
  br label %699

699:                                              ; preds = %698, %695
  %700 = getelementptr inbounds %struct.subscript, ptr %23, i64 0, i32 1
  %701 = load ptr, ptr %700, align 8, !tbaa !150
  %702 = icmp eq ptr %701, null
  br i1 %702, label %704, label %703

703:                                              ; preds = %699
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %701)
  br label %704

704:                                              ; preds = %703, %699
  store ptr %645, ptr %23, align 8, !tbaa !145
  store ptr %649, ptr %700, align 8, !tbaa !150
  %705 = load ptr, ptr %5, align 8, !tbaa !85
  %706 = getelementptr inbounds %struct.subscript, ptr %23, i64 0, i32 2
  store ptr %705, ptr %706, align 8, !tbaa !149
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  %707 = add i32 %12, 1
  br label %11, !llvm.loop !462

708:                                              ; preds = %690, %666
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %709

709:                                              ; preds = %22, %708
  %710 = phi i8 [ 0, %708 ], [ 1, %22 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  ret i8 %710
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compute_subscript_distance(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !84 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !121
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %60

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %58, %5
  %8 = phi i64 [ %59, %58 ], [ 0, %5 ]
  %9 = load ptr, ptr %6, align 8, !tbaa !125
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !126
  br label %13

13:                                               ; preds = %7, %11
  %14 = phi i32 [ %12, %11 ], [ 0, %7 ]
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %8, %15
  br i1 %16, label %17, label %60

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %9, i64 0, i32 2, i64 %8
  %19 = load ptr, ptr %18, align 8, !tbaa !85
  %20 = load ptr, ptr %19, align 8, !tbaa !145
  %21 = getelementptr inbounds %struct.subscript, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !150
  %23 = tail call fastcc ptr @common_affine_function(ptr noundef %20)
  %24 = tail call fastcc ptr @common_affine_function(ptr noundef %22)
  %25 = icmp ne ptr %23, null
  %26 = icmp ne ptr %24, null
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %30 = getelementptr inbounds %struct.subscript, ptr %19, i64 0, i32 3
  store ptr %29, ptr %30, align 8, !tbaa !151
  br label %58

31:                                               ; preds = %17
  %32 = tail call fastcc ptr @affine_fn_op(i32 noundef 64, ptr noundef nonnull %23, ptr noundef nonnull %24)
  %33 = icmp eq ptr %32, null
  br label %34

34:                                               ; preds = %46, %31
  %35 = phi i32 [ 1, %31 ], [ %49, %46 ]
  br i1 %33, label %43, label %36

36:                                               ; preds = %34
  %37 = load i32, ptr %32, align 8, !tbaa !115
  %38 = icmp ugt i32 %37, %35
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = zext i32 %35 to i64
  %41 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %40
  %42 = load ptr, ptr %41, align 8, !tbaa !85
  br label %43

43:                                               ; preds = %39, %36, %34
  %44 = phi ptr [ %42, %39 ], [ null, %36 ], [ null, %34 ]
  %45 = phi i1 [ false, %39 ], [ true, %36 ], [ true, %34 ]
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = tail call i32 @integer_zerop(ptr noundef %44) #27
  %48 = icmp eq i32 %47, 0
  %49 = add i32 %35, 1
  br i1 %48, label %50, label %34, !llvm.loop !463

50:                                               ; preds = %46
  br i1 %45, label %51, label %53

51:                                               ; preds = %43, %50
  %52 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 0
  br label %53

53:                                               ; preds = %50, %51
  %54 = phi ptr [ %52, %51 ], [ @chrec_dont_know, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !85
  %56 = getelementptr inbounds %struct.subscript, ptr %19, i64 0, i32 3
  store ptr %55, ptr %56, align 8, !tbaa !151
  br i1 %33, label %58, label %57

57:                                               ; preds = %53
  tail call void @free(ptr noundef %32)
  br label %58

58:                                               ; preds = %57, %53, %28
  %59 = add nuw nsw i64 %8, 1
  br i1 %27, label %7, label %60, !llvm.loop !464

60:                                               ; preds = %13, %58, %1
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @free_conflict_function(ptr nocapture noundef %0) unnamed_addr #9 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !147
  switch i32 %2, label %3 [
    i32 0, label %17
    i32 3, label %17
  ]

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !147
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %3, %12
  %7 = phi i64 [ %13, %12 ], [ 0, %3 ]
  %8 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !85
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @free(ptr noundef %9)
  br label %12

12:                                               ; preds = %6, %11
  %13 = add nuw nsw i64 %7, 1
  %14 = load i32, ptr %0, align 8, !tbaa !147
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %6, label %17, !llvm.loop !465

17:                                               ; preds = %12, %3, %1, %1
  tail call void @free(ptr noundef %0)
  ret void
}

declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @eq_evolutions_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal noundef ptr @conflict_fn(i32 noundef %0, ...) unnamed_addr #9 !prof !84 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #27
  call void @llvm.va_start(ptr nonnull %2)
  store i32 %0, ptr %3, align 8, !tbaa !147
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %8 = zext i32 %0 to i64
  br label %9

9:                                                ; preds = %5, %21
  %10 = phi i64 [ 0, %5 ], [ %25, %21 ]
  %11 = load i32, ptr %2, align 16
  %12 = icmp ult i32 %11, 41
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 16
  %15 = zext nneg i32 %11 to i64
  %16 = getelementptr i8, ptr %14, i64 %15
  %17 = add nuw nsw i32 %11, 8
  store i32 %17, ptr %2, align 16
  br label %21

18:                                               ; preds = %9
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr i8, ptr %19, i64 8
  store ptr %20, ptr %6, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = phi ptr [ %16, %13 ], [ %19, %18 ]
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.conflict_function, ptr %3, i64 0, i32 1, i64 %10
  store ptr %23, ptr %24, align 8, !tbaa !85
  %25 = add nuw nsw i64 %10, 1
  %26 = icmp eq i64 %25, %8
  br i1 %26, label %27, label %9, !llvm.loop !466

27:                                               ; preds = %21, %1
  call void @llvm.va_end(ptr %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #27
  ret ptr %3
}

declare zeroext i8 @chrec_contains_symbols(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

declare ptr @chrec_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chrec_fold_minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @evolution_function_is_univariate_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @analyze_siv_subscript_cst_affine(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #9 !prof !84 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #27
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !96
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = and i32 %17, 1023
  %19 = icmp ugt i32 %15, %18
  %20 = select i1 %19, ptr %10, ptr %12
  %21 = tail call ptr @signed_type_for(ptr noundef %20) #27
  %22 = tail call ptr @chrec_convert(ptr noundef %21, ptr noundef %0, ptr noundef null) #27
  %23 = tail call ptr @chrec_convert(ptr noundef %21, ptr noundef %1, ptr noundef null) #27
  %24 = tail call ptr @initial_condition(ptr noundef %23) #27
  %25 = tail call ptr @chrec_fold_minus(ptr noundef %21, ptr noundef %24, ptr noundef %22) #27
  %26 = tail call ptr @initial_condition(ptr noundef %25) #27
  %27 = call zeroext i8 @chrec_is_positive(ptr noundef %26, ptr noundef nonnull %6) #27
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %5
  %30 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i64 @fwrite(ptr nonnull @.str.113, i64 40, i64 1, ptr nonnull %30)
  br label %38

38:                                               ; preds = %36, %32, %29
  %39 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %41 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %41, align 8, !tbaa !147
  store ptr %41, ptr %2, align 8, !tbaa !85
  %42 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %42, align 8, !tbaa !147
  store ptr %42, ptr %3, align 8, !tbaa !85
  %43 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %43, ptr %4, align 8, !tbaa !85
  br label %238

44:                                               ; preds = %5
  %45 = load i8, ptr %6, align 1, !tbaa !96
  %46 = icmp eq i8 %45, 0
  %47 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 1, i32 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !96
  br i1 %46, label %49, label %144

49:                                               ; preds = %44
  %50 = call zeroext i8 @chrec_is_positive(ptr noundef %48, ptr noundef nonnull %7) #27
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %54 = icmp eq ptr %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %55
  %60 = call i64 @fwrite(ptr nonnull @.str.114, i64 37, i64 1, ptr nonnull %53)
  br label %61

61:                                               ; preds = %59, %55, %52
  %62 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %62, align 8, !tbaa !147
  store ptr %62, ptr %2, align 8, !tbaa !85
  %63 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %63, align 8, !tbaa !147
  store ptr %63, ptr %3, align 8, !tbaa !85
  %64 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %64, ptr %4, align 8, !tbaa !85
  %65 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %66 = add nsw i32 %65, 1
  store i32 %66, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  br label %238

67:                                               ; preds = %49
  %68 = load i8, ptr %7, align 1, !tbaa !96
  %69 = icmp eq i8 %68, 1
  br i1 %69, label %70, label %138

70:                                               ; preds = %67
  %71 = load ptr, ptr %47, align 8, !tbaa !96
  %72 = load i64, ptr %71, align 8
  %73 = and i64 %72, 65535
  %74 = icmp eq i64 %73, 23
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 134, ptr noundef nonnull @.str.45) #27
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i64, ptr %25, align 8
  %78 = and i64 %77, 65535
  %79 = icmp eq i64 %78, 23
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 135, ptr noundef nonnull @.str.45) #27
  br label %81

81:                                               ; preds = %76, %80
  %82 = call ptr @int_const_binop(i32 noundef 71, ptr noundef nonnull %25, ptr noundef nonnull %71, i32 noundef 0) #27
  %83 = call i32 @integer_zerop(ptr noundef %82) #27
  %84 = and i32 %83, 255
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %132, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !96
  %89 = getelementptr inbounds %struct.tree_int_cst, ptr %88, i64 0, i32 1
  %90 = load i64, ptr %89, align 8, !tbaa !96
  %91 = load ptr, ptr @cfun, align 8, !tbaa !85
  %92 = getelementptr inbounds %struct.function, ptr %91, i64 0, i32 4
  %93 = load ptr, ptr %92, align 8, !tbaa !353
  %94 = getelementptr inbounds %struct.loops, ptr %93, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !354
  %96 = and i64 %90, 4294967295
  %97 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %95, i64 0, i32 2, i64 %96
  %98 = load ptr, ptr %97, align 8, !tbaa !85
  %99 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %100 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %101 = load i32, ptr %100, align 8, !tbaa !115
  %102 = add i32 %101, 1
  store i32 %102, ptr %100, align 8, !tbaa !115
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds %struct.VEC_tree_base, ptr %100, i64 0, i32 2, i64 %103
  store ptr %99, ptr %104, align 8, !tbaa !85
  %105 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %100)
  store ptr %105, ptr %2, align 8, !tbaa !85
  %106 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 82, ptr noundef %21, ptr noundef nonnull %25) #27
  %107 = load ptr, ptr %47, align 8, !tbaa !96
  %108 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef %21, ptr noundef %106, ptr noundef %107) #27
  %109 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %110 = load i32, ptr %109, align 8, !tbaa !115
  %111 = add i32 %110, 1
  store i32 %111, ptr %109, align 8, !tbaa !115
  %112 = zext i32 %110 to i64
  %113 = getelementptr inbounds %struct.VEC_tree_base, ptr %109, i64 0, i32 2, i64 %112
  store ptr %108, ptr %113, align 8, !tbaa !85
  %114 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %109)
  store ptr %114, ptr %3, align 8, !tbaa !85
  %115 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !85
  store ptr %115, ptr %4, align 8, !tbaa !85
  %116 = call i64 @estimated_loop_iterations_int(ptr noundef %98, i8 noundef zeroext 0)
  %117 = icmp sgt i64 %116, -1
  br i1 %117, label %118, label %129

118:                                              ; preds = %86
  %119 = call i32 @compare_tree_int(ptr noundef %108, i64 noundef %116) #27
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %118
  %122 = load ptr, ptr %2, align 8, !tbaa !85
  call fastcc void @free_conflict_function(ptr noundef %122)
  %123 = load ptr, ptr %3, align 8, !tbaa !85
  call fastcc void @free_conflict_function(ptr noundef %123)
  %124 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %124, align 8, !tbaa !147
  store ptr %124, ptr %2, align 8, !tbaa !85
  %125 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %125, align 8, !tbaa !147
  store ptr %125, ptr %3, align 8, !tbaa !85
  %126 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %126, ptr %4, align 8, !tbaa !85
  %127 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %128 = add nsw i32 %127, 1
  store i32 %128, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

129:                                              ; preds = %118, %86
  %130 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  %131 = add nsw i32 %130, 1
  store i32 %131, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  br label %238

132:                                              ; preds = %81
  %133 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %133, align 8, !tbaa !147
  store ptr %133, ptr %2, align 8, !tbaa !85
  %134 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %134, align 8, !tbaa !147
  store ptr %134, ptr %3, align 8, !tbaa !85
  %135 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %135, ptr %4, align 8, !tbaa !85
  %136 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

138:                                              ; preds = %67
  %139 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %139, align 8, !tbaa !147
  store ptr %139, ptr %2, align 8, !tbaa !85
  %140 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %140, align 8, !tbaa !147
  store ptr %140, ptr %3, align 8, !tbaa !85
  %141 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %141, ptr %4, align 8, !tbaa !85
  %142 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

144:                                              ; preds = %44
  %145 = call zeroext i8 @chrec_is_positive(ptr noundef %48, ptr noundef nonnull %8) #27
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %144
  %148 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %149 = icmp eq ptr %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %152 = and i32 %151, 8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %156, label %154

154:                                              ; preds = %150
  %155 = call i64 @fwrite(ptr nonnull @.str.114, i64 37, i64 1, ptr nonnull %148)
  br label %156

156:                                              ; preds = %154, %150, %147
  %157 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %157, align 8, !tbaa !147
  store ptr %157, ptr %2, align 8, !tbaa !85
  %158 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %158, align 8, !tbaa !147
  store ptr %158, ptr %3, align 8, !tbaa !85
  %159 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %159, ptr %4, align 8, !tbaa !85
  %160 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !347
  br label %238

162:                                              ; preds = %144
  %163 = load i8, ptr %8, align 1, !tbaa !96
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %232

165:                                              ; preds = %162
  %166 = load ptr, ptr %47, align 8, !tbaa !96
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 65535
  %169 = icmp eq i64 %168, 23
  br i1 %169, label %171, label %170

170:                                              ; preds = %165
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 134, ptr noundef nonnull @.str.45) #27
  br label %171

171:                                              ; preds = %170, %165
  %172 = load i64, ptr %25, align 8
  %173 = and i64 %172, 65535
  %174 = icmp eq i64 %173, 23
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 135, ptr noundef nonnull @.str.45) #27
  br label %176

176:                                              ; preds = %171, %175
  %177 = call ptr @int_const_binop(i32 noundef 71, ptr noundef nonnull %25, ptr noundef nonnull %166, i32 noundef 0) #27
  %178 = call i32 @integer_zerop(ptr noundef %177) #27
  %179 = and i32 %178, 255
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %226, label %181

181:                                              ; preds = %176
  %182 = getelementptr inbounds %struct.tree_exp, ptr %23, i64 0, i32 3
  %183 = load ptr, ptr %182, align 8, !tbaa !96
  %184 = getelementptr inbounds %struct.tree_int_cst, ptr %183, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !96
  %186 = load ptr, ptr @cfun, align 8, !tbaa !85
  %187 = getelementptr inbounds %struct.function, ptr %186, i64 0, i32 4
  %188 = load ptr, ptr %187, align 8, !tbaa !353
  %189 = getelementptr inbounds %struct.loops, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !354
  %191 = and i64 %185, 4294967295
  %192 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %190, i64 0, i32 2, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !85
  %194 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %195 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %196 = load i32, ptr %195, align 8, !tbaa !115
  %197 = add i32 %196, 1
  store i32 %197, ptr %195, align 8, !tbaa !115
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds %struct.VEC_tree_base, ptr %195, i64 0, i32 2, i64 %198
  store ptr %194, ptr %199, align 8, !tbaa !85
  %200 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %195)
  store ptr %200, ptr %2, align 8, !tbaa !85
  %201 = load ptr, ptr %47, align 8, !tbaa !96
  %202 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef %21, ptr noundef nonnull %25, ptr noundef %201) #27
  %203 = call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %204 = load i32, ptr %203, align 8, !tbaa !115
  %205 = add i32 %204, 1
  store i32 %205, ptr %203, align 8, !tbaa !115
  %206 = zext i32 %204 to i64
  %207 = getelementptr inbounds %struct.VEC_tree_base, ptr %203, i64 0, i32 2, i64 %206
  store ptr %202, ptr %207, align 8, !tbaa !85
  %208 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %203)
  store ptr %208, ptr %3, align 8, !tbaa !85
  %209 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !85
  store ptr %209, ptr %4, align 8, !tbaa !85
  %210 = call i64 @estimated_loop_iterations_int(ptr noundef %193, i8 noundef zeroext 0)
  %211 = icmp sgt i64 %210, -1
  br i1 %211, label %212, label %223

212:                                              ; preds = %181
  %213 = call i32 @compare_tree_int(ptr noundef %202, i64 noundef %210) #27
  %214 = icmp sgt i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load ptr, ptr %2, align 8, !tbaa !85
  call fastcc void @free_conflict_function(ptr noundef %216)
  %217 = load ptr, ptr %3, align 8, !tbaa !85
  call fastcc void @free_conflict_function(ptr noundef %217)
  %218 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %218, align 8, !tbaa !147
  store ptr %218, ptr %2, align 8, !tbaa !85
  %219 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %219, align 8, !tbaa !147
  store ptr %219, ptr %3, align 8, !tbaa !85
  %220 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %220, ptr %4, align 8, !tbaa !85
  %221 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %222 = add nsw i32 %221, 1
  store i32 %222, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

223:                                              ; preds = %212, %181
  %224 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  %225 = add nsw i32 %224, 1
  store i32 %225, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !345
  br label %238

226:                                              ; preds = %176
  %227 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %227, align 8, !tbaa !147
  store ptr %227, ptr %2, align 8, !tbaa !85
  %228 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %228, align 8, !tbaa !147
  store ptr %228, ptr %3, align 8, !tbaa !85
  %229 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %229, ptr %4, align 8, !tbaa !85
  %230 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %231 = add nsw i32 %230, 1
  store i32 %231, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

232:                                              ; preds = %162
  %233 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %233, align 8, !tbaa !147
  store ptr %233, ptr %2, align 8, !tbaa !85
  %234 = call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %234, align 8, !tbaa !147
  store ptr %234, ptr %3, align 8, !tbaa !85
  %235 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %235, ptr %4, align 8, !tbaa !85
  %236 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  %237 = add nsw i32 %236, 1
  store i32 %237, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !346
  br label %238

238:                                              ; preds = %215, %223, %121, %129, %232, %226, %156, %138, %132, %61, %38
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @analyze_subscript_affine_affine(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #9 !prof !84 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) #27
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %12 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 8, !tbaa !115
  %15 = zext i32 %13 to i64
  %16 = getelementptr inbounds %struct.VEC_tree_base, ptr %12, i64 0, i32 2, i64 %15
  store ptr %11, ptr %16, align 8, !tbaa !85
  %17 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %12)
  store ptr %17, ptr %2, align 8, !tbaa !85
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %19 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %20 = load i32, ptr %19, align 8, !tbaa !115
  %21 = add i32 %20, 1
  store i32 %21, ptr %19, align 8, !tbaa !115
  %22 = zext i32 %20 to i64
  %23 = getelementptr inbounds %struct.VEC_tree_base, ptr %19, i64 0, i32 2, i64 %22
  store ptr %18, ptr %23, align 8, !tbaa !85
  %24 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %19)
  store ptr %24, ptr %3, align 8, !tbaa !85
  %25 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %25, ptr %4, align 8, !tbaa !85
  br label %347

26:                                               ; preds = %5
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 34, i64 1, ptr nonnull %27)
  br label %35

35:                                               ; preds = %33, %29, %26
  %36 = tail call i32 @nb_vars_in_chrec(ptr noundef %0) #27
  %37 = tail call i32 @nb_vars_in_chrec(ptr noundef %1) #27
  %38 = add i32 %37, %36
  %39 = tail call ptr @lambda_matrix_new(i32 noundef %38, i32 noundef %38) #27
  %40 = tail call ptr @lambda_matrix_new(i32 noundef %38, i32 noundef 1) #27
  %41 = tail call ptr @lambda_matrix_new(i32 noundef %38, i32 noundef 1) #27
  %42 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %40, ptr noundef %0, i32 noundef 0, i32 noundef 1)
  %43 = tail call i64 @int_cst_value(ptr noundef %42) #27
  %44 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %40, ptr noundef %1, i32 noundef %36, i32 noundef -1)
  %45 = tail call i64 @int_cst_value(ptr noundef %44) #27
  %46 = sub nsw i64 %45, %43
  %47 = icmp eq i64 %45, %43
  br i1 %47, label %48, label %114

48:                                               ; preds = %35
  %49 = icmp eq i32 %36, 1
  %50 = icmp eq i32 %37, 1
  %51 = and i1 %49, %50
  br i1 %51, label %52, label %93

52:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  %53 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !96
  %55 = getelementptr inbounds %struct.tree_int_cst, ptr %54, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !96
  %57 = load ptr, ptr @cfun, align 8, !tbaa !85
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !353
  %60 = getelementptr inbounds %struct.loops, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !354
  %62 = and i64 %56, 4294967295
  %63 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %61, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !85
  %65 = tail call i64 @estimated_loop_iterations_int(ptr noundef %64, i8 noundef zeroext 0)
  %66 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !96
  %68 = getelementptr inbounds %struct.tree_int_cst, ptr %67, i64 0, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !96
  %70 = load ptr, ptr @cfun, align 8, !tbaa !85
  %71 = getelementptr inbounds %struct.function, ptr %70, i64 0, i32 4
  %72 = load ptr, ptr %71, align 8, !tbaa !353
  %73 = getelementptr inbounds %struct.loops, ptr %72, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !354
  %75 = and i64 %69, 4294967295
  %76 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %74, i64 0, i32 2, i64 %75
  %77 = load ptr, ptr %76, align 8, !tbaa !85
  %78 = tail call i64 @estimated_loop_iterations_int(ptr noundef %77, i8 noundef zeroext 0)
  %79 = tail call i64 @llvm.smin.i64(i64 %65, i64 %78)
  %80 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !96
  %82 = tail call i64 @int_cst_value(ptr noundef %81) #27
  %83 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !96
  %85 = tail call i64 @int_cst_value(ptr noundef %84) #27
  %86 = trunc i64 %79 to i32
  %87 = trunc i64 %82 to i32
  %88 = trunc i64 %85 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %86, i32 noundef %87, i32 noundef %88, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4, i32 noundef 1)
  %89 = load ptr, ptr %6, align 8, !tbaa !85
  %90 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %89)
  store ptr %90, ptr %2, align 8, !tbaa !85
  %91 = load ptr, ptr %7, align 8, !tbaa !85
  %92 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %91)
  store ptr %92, ptr %3, align 8, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  br label %328

93:                                               ; preds = %48
  %94 = icmp eq i32 %36, 2
  %95 = and i1 %94, %50
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call fastcc void @compute_overlap_steps_for_affine_1_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  br label %328

97:                                               ; preds = %93
  %98 = icmp eq i32 %37, 2
  %99 = and i1 %49, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  tail call fastcc void @compute_overlap_steps_for_affine_1_2(ptr noundef %1, ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4)
  br label %328

101:                                              ; preds = %97
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %103 = icmp eq ptr %102, null
  br i1 %103, label %110, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %106 = and i32 %105, 8
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 47, i64 1, ptr nonnull %102)
  br label %110

110:                                              ; preds = %108, %104, %101
  %111 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %111, align 8, !tbaa !147
  store ptr %111, ptr %2, align 8, !tbaa !85
  %112 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %112, align 8, !tbaa !147
  store ptr %112, ptr %3, align 8, !tbaa !85
  %113 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %113, ptr %4, align 8, !tbaa !85
  br label %328

114:                                              ; preds = %35
  tail call void @lambda_matrix_right_hermite(ptr noundef %40, i32 noundef %38, i32 noundef 1, ptr noundef %41, ptr noundef %39) #27
  %115 = load ptr, ptr %41, align 8, !tbaa !85
  %116 = load i32, ptr %115, align 4, !tbaa !100
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = sub nsw i32 0, %116
  store i32 %119, ptr %115, align 4, !tbaa !100
  tail call void @lambda_matrix_row_negate(ptr noundef %39, i32 noundef %38, i32 noundef 0) #27
  br label %120

120:                                              ; preds = %118, %114
  %121 = load ptr, ptr %41, align 8, !tbaa !85
  %122 = load i32, ptr %121, align 4, !tbaa !100
  %123 = sext i32 %122 to i64
  %124 = icmp eq i32 %122, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %126, align 8, !tbaa !147
  store ptr %126, ptr %2, align 8, !tbaa !85
  %127 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %127, align 8, !tbaa !147
  store ptr %127, ptr %3, align 8, !tbaa !85
  %128 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %128, ptr %4, align 8, !tbaa !85
  br label %328

129:                                              ; preds = %120
  %130 = trunc i64 %46 to i32
  %131 = srem i32 %130, %122
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %129
  %134 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %134, align 8, !tbaa !147
  store ptr %134, ptr %2, align 8, !tbaa !85
  %135 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %135, align 8, !tbaa !147
  store ptr %135, ptr %3, align 8, !tbaa !85
  %136 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %136, ptr %4, align 8, !tbaa !85
  br label %328

137:                                              ; preds = %129
  %138 = icmp eq i32 %36, 1
  %139 = icmp eq i32 %37, 1
  %140 = and i1 %138, %139
  br i1 %140, label %141, label %315

141:                                              ; preds = %137
  %142 = load ptr, ptr %40, align 8, !tbaa !85
  %143 = load i32, ptr %142, align 4, !tbaa !100
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = getelementptr inbounds ptr, ptr %40, i64 1
  %147 = load ptr, ptr %146, align 8, !tbaa !85
  %148 = load i32, ptr %147, align 4, !tbaa !100
  %149 = icmp slt i32 %148, 0
  br i1 %149, label %157, label %150

150:                                              ; preds = %145, %141
  %151 = icmp slt i32 %143, 0
  br i1 %151, label %152, label %302

152:                                              ; preds = %150
  %153 = getelementptr inbounds ptr, ptr %40, i64 1
  %154 = load ptr, ptr %153, align 8, !tbaa !85
  %155 = load i32, ptr %154, align 4, !tbaa !100
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %157, label %302

157:                                              ; preds = %152, %145
  %158 = load ptr, ptr %39, align 8, !tbaa !85
  %159 = load i32, ptr %158, align 4, !tbaa !100
  %160 = sext i32 %159 to i64
  %161 = mul nsw i64 %46, %160
  %162 = sdiv i64 %161, %123
  %163 = getelementptr inbounds i32, ptr %158, i64 1
  %164 = load i32, ptr %163, align 4, !tbaa !100
  %165 = sext i32 %164 to i64
  %166 = mul nsw i64 %46, %165
  %167 = sdiv i64 %166, %123
  %168 = getelementptr inbounds ptr, ptr %39, i64 1
  %169 = load ptr, ptr %168, align 8, !tbaa !85
  %170 = load i32, ptr %169, align 4, !tbaa !100
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, ptr %169, i64 1
  %173 = load i32, ptr %172, align 4, !tbaa !100
  %174 = sext i32 %173 to i64
  %175 = icmp eq i32 %170, 0
  %176 = icmp slt i64 %162, 0
  %177 = select i1 %175, i1 %176, i1 false
  br i1 %177, label %182, label %178

178:                                              ; preds = %157
  %179 = icmp eq i32 %173, 0
  %180 = icmp slt i64 %167, 0
  %181 = select i1 %179, i1 %180, i1 false
  br i1 %181, label %182, label %186

182:                                              ; preds = %178, %157
  %183 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %183, align 8, !tbaa !147
  store ptr %183, ptr %2, align 8, !tbaa !85
  %184 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %184, align 8, !tbaa !147
  store ptr %184, ptr %3, align 8, !tbaa !85
  %185 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %185, ptr %4, align 8, !tbaa !85
  br label %300

186:                                              ; preds = %178
  %187 = icmp sgt i32 %170, 0
  %188 = icmp sgt i32 %173, 0
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %286

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %192 = load ptr, ptr %191, align 8, !tbaa !96
  %193 = getelementptr inbounds %struct.tree_int_cst, ptr %192, i64 0, i32 1
  %194 = load i64, ptr %193, align 8, !tbaa !96
  %195 = load ptr, ptr @cfun, align 8, !tbaa !85
  %196 = getelementptr inbounds %struct.function, ptr %195, i64 0, i32 4
  %197 = load ptr, ptr %196, align 8, !tbaa !353
  %198 = getelementptr inbounds %struct.loops, ptr %197, i64 0, i32 1
  %199 = load ptr, ptr %198, align 8, !tbaa !354
  %200 = and i64 %194, 4294967295
  %201 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %199, i64 0, i32 2, i64 %200
  %202 = load ptr, ptr %201, align 8, !tbaa !85
  %203 = tail call i64 @estimated_loop_iterations_int(ptr noundef %202, i8 noundef zeroext 0)
  %204 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !96
  %206 = getelementptr inbounds %struct.tree_int_cst, ptr %205, i64 0, i32 1
  %207 = load i64, ptr %206, align 8, !tbaa !96
  %208 = load ptr, ptr @cfun, align 8, !tbaa !85
  %209 = getelementptr inbounds %struct.function, ptr %208, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !353
  %211 = getelementptr inbounds %struct.loops, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !354
  %213 = and i64 %207, 4294967295
  %214 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %212, i64 0, i32 2, i64 %213
  %215 = load ptr, ptr %214, align 8, !tbaa !85
  %216 = tail call i64 @estimated_loop_iterations_int(ptr noundef %215, i8 noundef zeroext 0)
  %217 = tail call i64 @llvm.smin.i64(i64 %203, i64 %216)
  %218 = xor i64 %162, -1
  %219 = add i64 %171, %218
  %220 = sdiv i64 %219, %171
  %221 = xor i64 %167, -1
  %222 = add i64 %174, %221
  %223 = sdiv i64 %222, %174
  %224 = tail call i64 @llvm.smax.i64(i64 %220, i64 %223)
  %225 = mul nsw i64 %224, %171
  %226 = add nsw i64 %225, %162
  %227 = mul nsw i64 %224, %174
  %228 = add nsw i64 %227, %167
  %229 = sdiv i64 %226, %171
  %230 = sdiv i64 %228, %174
  %231 = tail call i64 @llvm.smin.i64(i64 %229, i64 %230)
  %232 = mul nsw i64 %231, %171
  %233 = sub nsw i64 %226, %232
  %234 = mul nsw i64 %231, %174
  %235 = sub nsw i64 %228, %234
  %236 = icmp sgt i64 %217, 0
  br i1 %236, label %237, label %258

237:                                              ; preds = %190
  %238 = icmp slt i64 %233, %217
  %239 = icmp slt i64 %235, %217
  %240 = select i1 %238, i1 %239, i1 false
  br i1 %240, label %245, label %241

241:                                              ; preds = %237
  %242 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %242, align 8, !tbaa !147
  store ptr %242, ptr %2, align 8, !tbaa !85
  %243 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 0, ptr %243, align 8, !tbaa !147
  store ptr %243, ptr %3, align 8, !tbaa !85
  %244 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  br label %255

245:                                              ; preds = %237
  %246 = sub nsw i64 %217, %162
  %247 = sdiv i64 %246, %171
  %248 = sub nsw i64 %217, %167
  %249 = sdiv i64 %248, %174
  %250 = tail call i64 @llvm.smin.i64(i64 %247, i64 %249)
  %251 = sub nsw i64 %233, %162
  %252 = sdiv i64 %251, %171
  %253 = sub nsw i64 %250, %252
  %254 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %253) #27
  br label %255

255:                                              ; preds = %241, %245
  %256 = phi ptr [ %254, %245 ], [ %244, %241 ]
  %257 = phi i32 [ 0, %245 ], [ 2, %241 ]
  store ptr %256, ptr %4, align 8, !tbaa !85
  br i1 %240, label %260, label %283

258:                                              ; preds = %190
  %259 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %259, ptr %4, align 8, !tbaa !85
  br label %260

260:                                              ; preds = %255, %258
  %261 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %233) #27
  %262 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %171) #27
  %263 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #27
  %264 = load i32, ptr %263, align 8, !tbaa !115
  %265 = add i32 %264, 1
  store i32 %265, ptr %263, align 8, !tbaa !115
  %266 = zext i32 %264 to i64
  %267 = getelementptr inbounds %struct.VEC_tree_base, ptr %263, i64 0, i32 2, i64 %266
  store ptr %261, ptr %267, align 8, !tbaa !85
  %268 = add i32 %264, 2
  store i32 %268, ptr %263, align 8, !tbaa !115
  %269 = zext i32 %265 to i64
  %270 = getelementptr inbounds %struct.VEC_tree_base, ptr %263, i64 0, i32 2, i64 %269
  store ptr %262, ptr %270, align 8, !tbaa !85
  %271 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %263)
  store ptr %271, ptr %2, align 8, !tbaa !85
  %272 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %235) #27
  %273 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %174) #27
  %274 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 2) #27
  %275 = load i32, ptr %274, align 8, !tbaa !115
  %276 = add i32 %275, 1
  store i32 %276, ptr %274, align 8, !tbaa !115
  %277 = zext i32 %275 to i64
  %278 = getelementptr inbounds %struct.VEC_tree_base, ptr %274, i64 0, i32 2, i64 %277
  store ptr %272, ptr %278, align 8, !tbaa !85
  %279 = add i32 %275, 2
  store i32 %279, ptr %274, align 8, !tbaa !115
  %280 = zext i32 %276 to i64
  %281 = getelementptr inbounds %struct.VEC_tree_base, ptr %274, i64 0, i32 2, i64 %280
  store ptr %273, ptr %281, align 8, !tbaa !85
  %282 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %274)
  store ptr %282, ptr %3, align 8, !tbaa !85
  br label %283

283:                                              ; preds = %255, %260
  %284 = phi i32 [ 0, %260 ], [ %257, %255 ]
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %299, label %300

286:                                              ; preds = %186
  %287 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %288 = icmp eq ptr %287, null
  br i1 %288, label %295, label %289

289:                                              ; preds = %286
  %290 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %291 = and i32 %290, 8
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %289
  %294 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 42, i64 1, ptr nonnull %287)
  br label %295

295:                                              ; preds = %293, %289, %286
  %296 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %296, align 8, !tbaa !147
  store ptr %296, ptr %2, align 8, !tbaa !85
  %297 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %297, align 8, !tbaa !147
  store ptr %297, ptr %3, align 8, !tbaa !85
  %298 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %298, ptr %4, align 8, !tbaa !85
  br label %299

299:                                              ; preds = %283, %295
  br label %300

300:                                              ; preds = %283, %182, %299
  %301 = phi i32 [ 2, %182 ], [ 0, %299 ], [ %284, %283 ]
  switch i32 %301, label %347 [
    i32 0, label %328
    i32 2, label %328
  ]

302:                                              ; preds = %152, %150
  %303 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %304 = icmp eq ptr %303, null
  br i1 %304, label %311, label %305

305:                                              ; preds = %302
  %306 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %307 = and i32 %306, 8
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %311, label %309

309:                                              ; preds = %305
  %310 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 42, i64 1, ptr nonnull %303)
  br label %311

311:                                              ; preds = %309, %305, %302
  %312 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %312, align 8, !tbaa !147
  store ptr %312, ptr %2, align 8, !tbaa !85
  %313 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %313, align 8, !tbaa !147
  store ptr %313, ptr %3, align 8, !tbaa !85
  %314 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %314, ptr %4, align 8, !tbaa !85
  br label %328

315:                                              ; preds = %137
  %316 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %317 = icmp eq ptr %316, null
  br i1 %317, label %324, label %318

318:                                              ; preds = %315
  %319 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %320 = and i32 %319, 8
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %318
  %323 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 42, i64 1, ptr nonnull %316)
  br label %324

324:                                              ; preds = %322, %318, %315
  %325 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %325, align 8, !tbaa !147
  store ptr %325, ptr %2, align 8, !tbaa !85
  %326 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %326, align 8, !tbaa !147
  store ptr %326, ptr %3, align 8, !tbaa !85
  %327 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %327, ptr %4, align 8, !tbaa !85
  br label %328

328:                                              ; preds = %300, %133, %311, %324, %52, %100, %110, %96, %300, %125
  %329 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %330 = icmp eq ptr %329, null
  br i1 %330, label %347, label %331

331:                                              ; preds = %328
  %332 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %333 = and i32 %332, 8
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %347, label %335

335:                                              ; preds = %331
  %336 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 16, i64 1, ptr nonnull %329)
  %337 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %338 = load ptr, ptr %2, align 8, !tbaa !85
  tail call fastcc void @dump_conflict_function(ptr noundef %337, ptr noundef %338)
  %339 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %340 = tail call i64 @fwrite(ptr nonnull @.str.119, i64 18, i64 1, ptr %339)
  %341 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %342 = load ptr, ptr %3, align 8, !tbaa !85
  tail call fastcc void @dump_conflict_function(ptr noundef %341, ptr noundef %342)
  %343 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %344 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %343)
  %345 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %346 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %345)
  br label %347

347:                                              ; preds = %300, %328, %331, %335, %10
  ret void
}

declare zeroext i8 @chrec_is_positive(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @nb_vars_in_chrec(ptr noundef) local_unnamed_addr #3

declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 !prof !84 {
  br label %5

5:                                                ; preds = %20, %4
  %6 = phi ptr [ %1, %4 ], [ %29, %20 ]
  %7 = phi i32 [ %2, %4 ], [ %30, %20 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 1939, ptr noundef nonnull @.str.45) #27
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i64, ptr %6, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %90 [
    i16 146, label %13
    i16 63, label %31
    i16 65, label %31
    i16 64, label %31
    i16 116, label %57
    i16 90, label %72
    i16 23, label %91
  ]

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 1944, ptr noundef nonnull @.str.45) #27
  br label %20

20:                                               ; preds = %13, %19
  %21 = load ptr, ptr %14, align 8, !tbaa !96
  %22 = tail call i64 @int_cst_value(ptr noundef %21) #27
  %23 = trunc i64 %22 to i32
  %24 = mul i32 %23, %3
  %25 = zext i32 %7 to i64
  %26 = getelementptr inbounds ptr, ptr %0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !85
  store i32 %24, ptr %27, align 4, !tbaa !100
  %28 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !96
  %30 = add i32 %7, 1
  br label %5

31:                                               ; preds = %10, %10, %10
  %32 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !96
  %34 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %33, i32 noundef %7, i32 noundef %3)
  %35 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %36, i32 noundef %7, i32 noundef %3)
  %38 = load i64, ptr %6, align 8
  %39 = trunc i64 %38 to i16
  %40 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %41 = icmp ne ptr %40, %6
  %42 = load ptr, ptr @chrec_known, align 8
  %43 = icmp ne ptr %42, %6
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %48

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !96
  br label %48

48:                                               ; preds = %31, %45
  %49 = phi ptr [ %47, %45 ], [ null, %31 ]
  switch i16 %39, label %56 [
    i16 63, label %50
    i16 64, label %52
    i16 65, label %54
  ]

50:                                               ; preds = %48
  %51 = tail call ptr @chrec_fold_plus(ptr noundef %49, ptr noundef %34, ptr noundef %37) #27
  br label %91

52:                                               ; preds = %48
  %53 = tail call ptr @chrec_fold_minus(ptr noundef %49, ptr noundef %34, ptr noundef %37) #27
  br label %91

54:                                               ; preds = %48
  %55 = tail call ptr @chrec_fold_multiply(ptr noundef %49, ptr noundef %34, ptr noundef %37) #27
  br label %91

56:                                               ; preds = %48
  tail call void @fancy_abort(ptr noundef nonnull @.str.120, i32 noundef 257, ptr noundef nonnull @.str.45) #27
  br label %91

57:                                               ; preds = %10
  %58 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !96
  %60 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %59, i32 noundef %7, i32 noundef %3)
  %61 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %62 = icmp ne ptr %61, %6
  %63 = load ptr, ptr @chrec_known, align 8
  %64 = icmp ne ptr %63, %6
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !96
  br label %69

69:                                               ; preds = %57, %66
  %70 = phi ptr [ %68, %66 ], [ null, %57 ]
  %71 = tail call ptr @chrec_convert(ptr noundef %70, ptr noundef %60, ptr noundef null) #27
  br label %91

72:                                               ; preds = %10
  %73 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !96
  %75 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %74, i32 noundef %7, i32 noundef %3)
  %76 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %77 = icmp ne ptr %76, %6
  %78 = load ptr, ptr @chrec_known, align 8
  %79 = icmp ne ptr %78, %6
  %80 = select i1 %77, i1 %79, i1 false
  br i1 %80, label %81, label %84

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !96
  br label %84

84:                                               ; preds = %72, %81
  %85 = phi ptr [ %83, %81 ], [ null, %72 ]
  %86 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !96
  %88 = tail call ptr @build_int_cst(ptr noundef %87, i64 noundef -1) #27
  %89 = tail call ptr @chrec_fold_minus(ptr noundef %85, ptr noundef %88, ptr noundef %75) #27
  br label %91

90:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.44, i32 noundef 1977, ptr noundef nonnull @.str.45) #27
  br label %91

91:                                               ; preds = %56, %54, %52, %50, %10, %90, %84, %69
  %92 = phi ptr [ null, %90 ], [ %89, %84 ], [ %71, %69 ], [ %6, %10 ], [ null, %56 ], [ %55, %54 ], [ %53, %52 ], [ %51, %50 ]
  ret ptr %92
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) unnamed_addr #9 !prof !84 {
  %8 = icmp slt i32 %1, 1
  %9 = icmp slt i32 %2, 1
  %10 = or i1 %8, %9
  %11 = and i32 %2, %1
  %12 = icmp sgt i32 %11, -1
  %13 = and i1 %10, %12
  br i1 %13, label %47, label %14

14:                                               ; preds = %7
  %15 = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %16 = icmp eq i32 %1, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i32 [ %22, %19 ], [ %18, %17 ]
  %21 = phi i32 [ %20, %19 ], [ %15, %17 ]
  %22 = urem i32 %21, %20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %19, !llvm.loop !444

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %15, %14 ], [ %20, %19 ]
  %26 = sdiv i32 %2, %25
  %27 = sdiv i32 %1, %25
  %28 = icmp sgt i32 %0, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = sdiv i32 %0, %26
  %31 = sdiv i32 %0, %27
  %32 = tail call i32 @llvm.smin.i32(i32 %30, i32 %31)
  %33 = sext i32 %32 to i64
  %34 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %33) #27
  br label %37

35:                                               ; preds = %24
  %36 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %37

37:                                               ; preds = %35, %29
  %38 = phi ptr [ %36, %35 ], [ %34, %29 ]
  store ptr %38, ptr %5, align 8, !tbaa !85
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %40 = sext i32 %26 to i64
  %41 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %40) #27
  %42 = tail call fastcc ptr @affine_fn_univar(ptr noundef %39, i32 noundef %6, ptr noundef %41)
  store ptr %42, ptr %3, align 8, !tbaa !85
  %43 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %44 = sext i32 %27 to i64
  %45 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %44) #27
  %46 = tail call fastcc ptr @affine_fn_univar(ptr noundef %43, i32 noundef %6, ptr noundef %45)
  store ptr %46, ptr %4, align 8, !tbaa !85
  br label %61

47:                                               ; preds = %7
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %49 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %50 = load i32, ptr %49, align 8, !tbaa !115
  %51 = add i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !115
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %52
  store ptr %48, ptr %53, align 8, !tbaa !85
  store ptr %49, ptr %3, align 8, !tbaa !85
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %55 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %56 = load i32, ptr %55, align 8, !tbaa !115
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 8, !tbaa !115
  %58 = zext i32 %56 to i64
  %59 = getelementptr inbounds %struct.VEC_tree_base, ptr %55, i64 0, i32 2, i64 %58
  store ptr %54, ptr %59, align 8, !tbaa !85
  store ptr %55, ptr %4, align 8, !tbaa !85
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %60, ptr %5, align 8, !tbaa !85
  br label %61

61:                                               ; preds = %47, %37
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @compute_overlap_steps_for_affine_1_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #9 !prof !84 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #27
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !96
  %19 = tail call i64 @int_cst_value(ptr noundef %18) #27
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !96
  %22 = tail call i64 @int_cst_value(ptr noundef %21) #27
  %23 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !96
  %25 = tail call i64 @int_cst_value(ptr noundef %24) #27
  %26 = load ptr, ptr %15, align 8, !tbaa !96
  %27 = getelementptr inbounds %struct.tree_exp, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !96
  %29 = getelementptr inbounds %struct.tree_int_cst, ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr @cfun, align 8, !tbaa !85
  %32 = getelementptr inbounds %struct.function, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !353
  %34 = getelementptr inbounds %struct.loops, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !354
  %36 = and i64 %30, 4294967295
  %37 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %35, i64 0, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !85
  %39 = tail call i64 @estimated_loop_iterations_int(ptr noundef %38, i8 noundef zeroext 0)
  %40 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !96
  %44 = load ptr, ptr @cfun, align 8, !tbaa !85
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !353
  %47 = getelementptr inbounds %struct.loops, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !354
  %49 = and i64 %43, 4294967295
  %50 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %48, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = tail call i64 @estimated_loop_iterations_int(ptr noundef %51, i8 noundef zeroext 0)
  %53 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !96
  %55 = getelementptr inbounds %struct.tree_int_cst, ptr %54, i64 0, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !96
  %57 = load ptr, ptr @cfun, align 8, !tbaa !85
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !353
  %60 = getelementptr inbounds %struct.loops, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !354
  %62 = and i64 %56, 4294967295
  %63 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %61, i64 0, i32 2, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !85
  %65 = tail call i64 @estimated_loop_iterations_int(ptr noundef %64, i8 noundef zeroext 0)
  %66 = icmp slt i64 %39, 0
  %67 = icmp slt i64 %52, 0
  %68 = select i1 %66, i1 true, i1 %67
  %69 = icmp slt i64 %65, 0
  %70 = select i1 %68, i1 true, i1 %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %5
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 48, i64 1, ptr nonnull %72)
  br label %80

80:                                               ; preds = %78, %74, %71
  %81 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %81, align 8, !tbaa !147
  store ptr %81, ptr %2, align 8, !tbaa !85
  %82 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #27
  store i32 3, ptr %82, align 8, !tbaa !147
  store ptr %82, ptr %3, align 8, !tbaa !85
  %83 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  store ptr %83, ptr %4, align 8, !tbaa !85
  br label %200

84:                                               ; preds = %5
  %85 = trunc i64 %25 to i32
  %86 = trunc i64 %22 to i32
  %87 = trunc i64 %19 to i32
  %88 = tail call i64 @llvm.smin.i64(i64 %39, i64 %65)
  %89 = trunc i64 %88 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %89, i32 noundef %87, i32 noundef %85, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %12, i32 noundef 1)
  %90 = tail call i64 @llvm.smin.i64(i64 %52, i64 %65)
  %91 = trunc i64 %90 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %91, i32 noundef %86, i32 noundef %85, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %13, i32 noundef 2)
  %92 = tail call i64 @llvm.smin.i64(i64 %52, i64 %88)
  %93 = trunc i64 %92 to i32
  %94 = add nsw i32 %86, %87
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %93, i32 noundef %94, i32 noundef %85, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, i32 noundef 3)
  %95 = load ptr, ptr %12, align 8, !tbaa !85
  %96 = tail call i32 @integer_zerop(ptr noundef %95) #27
  %97 = icmp eq i32 %96, 0
  %98 = load ptr, ptr %13, align 8, !tbaa !85
  %99 = tail call i32 @integer_zerop(ptr noundef %98) #27
  %100 = icmp eq i32 %99, 0
  %101 = load ptr, ptr %14, align 8, !tbaa !85
  %102 = tail call i32 @integer_zerop(ptr noundef %101) #27
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %97, i1 true, i1 %100
  %105 = select i1 %104, i1 true, i1 %103
  %106 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %107 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %108 = load i32, ptr %107, align 8, !tbaa !115
  %109 = add i32 %108, 1
  store i32 %109, ptr %107, align 8, !tbaa !115
  %110 = zext i32 %108 to i64
  %111 = getelementptr inbounds %struct.VEC_tree_base, ptr %107, i64 0, i32 2, i64 %110
  store ptr %106, ptr %111, align 8, !tbaa !85
  br i1 %105, label %112, label %166

112:                                              ; preds = %84
  %113 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %114 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %115 = load i32, ptr %114, align 8, !tbaa !115
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !115
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds %struct.VEC_tree_base, ptr %114, i64 0, i32 2, i64 %117
  store ptr %113, ptr %118, align 8, !tbaa !85
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %120 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %121 = load i32, ptr %120, align 8, !tbaa !115
  %122 = add i32 %121, 1
  store i32 %122, ptr %120, align 8, !tbaa !115
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds %struct.VEC_tree_base, ptr %120, i64 0, i32 2, i64 %123
  store ptr %119, ptr %124, align 8, !tbaa !85
  br i1 %97, label %125, label %130

125:                                              ; preds = %112
  %126 = load ptr, ptr %6, align 8, !tbaa !85
  %127 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef nonnull %107, ptr noundef %126)
  %128 = load ptr, ptr %7, align 8, !tbaa !85
  %129 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef nonnull %120, ptr noundef %128)
  tail call void @free(ptr noundef %107)
  tail call void @free(ptr noundef %120)
  store ptr %95, ptr %4, align 8, !tbaa !85
  br label %130

130:                                              ; preds = %125, %112
  %131 = phi ptr [ %129, %125 ], [ %120, %112 ]
  %132 = phi ptr [ %127, %125 ], [ %107, %112 ]
  br i1 %100, label %133, label %141

133:                                              ; preds = %130
  %134 = load ptr, ptr %8, align 8, !tbaa !85
  %135 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef nonnull %114, ptr noundef %134)
  %136 = load ptr, ptr %9, align 8, !tbaa !85
  %137 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef %131, ptr noundef %136)
  tail call void @free(ptr noundef %114)
  %138 = icmp eq ptr %131, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  tail call void @free(ptr noundef %131)
  br label %140

140:                                              ; preds = %133, %139
  store ptr %98, ptr %4, align 8, !tbaa !85
  br label %141

141:                                              ; preds = %140, %130
  %142 = phi ptr [ %137, %140 ], [ %131, %130 ]
  %143 = phi ptr [ %135, %140 ], [ %114, %130 ]
  br i1 %103, label %144, label %160

144:                                              ; preds = %141
  %145 = load ptr, ptr %10, align 8, !tbaa !85
  %146 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef %132, ptr noundef %145)
  %147 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef %143, ptr noundef %145)
  %148 = load ptr, ptr %11, align 8, !tbaa !85
  %149 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef %142, ptr noundef %148)
  %150 = icmp eq ptr %132, null
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  tail call void @free(ptr noundef %132)
  br label %152

152:                                              ; preds = %144, %151
  %153 = icmp eq ptr %143, null
  br i1 %153, label %155, label %154

154:                                              ; preds = %152
  tail call void @free(ptr noundef %143)
  br label %155

155:                                              ; preds = %152, %154
  %156 = icmp eq ptr %142, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %155
  tail call void @free(ptr noundef %142)
  br label %158

158:                                              ; preds = %155, %157
  %159 = load ptr, ptr %14, align 8, !tbaa !85
  store ptr %159, ptr %4, align 8, !tbaa !85
  br label %160

160:                                              ; preds = %158, %141
  %161 = phi ptr [ %149, %158 ], [ %142, %141 ]
  %162 = phi ptr [ %147, %158 ], [ %143, %141 ]
  %163 = phi ptr [ %146, %158 ], [ %132, %141 ]
  %164 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 2, ptr noundef %163, ptr noundef %162)
  store ptr %164, ptr %2, align 8, !tbaa !85
  %165 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %161)
  store ptr %165, ptr %3, align 8, !tbaa !85
  br label %176

166:                                              ; preds = %84
  %167 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %107)
  store ptr %167, ptr %2, align 8, !tbaa !85
  %168 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %169 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 1) #27
  %170 = load i32, ptr %169, align 8, !tbaa !115
  %171 = add i32 %170, 1
  store i32 %171, ptr %169, align 8, !tbaa !115
  %172 = zext i32 %170 to i64
  %173 = getelementptr inbounds %struct.VEC_tree_base, ptr %169, i64 0, i32 2, i64 %172
  store ptr %168, ptr %173, align 8, !tbaa !85
  %174 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef nonnull %169)
  store ptr %174, ptr %3, align 8, !tbaa !85
  %175 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  store ptr %175, ptr %4, align 8, !tbaa !85
  br label %176

176:                                              ; preds = %166, %160
  %177 = load ptr, ptr %6, align 8, !tbaa !85
  %178 = icmp eq ptr %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  tail call void @free(ptr noundef %177)
  br label %180

180:                                              ; preds = %176, %179
  %181 = load ptr, ptr %7, align 8, !tbaa !85
  %182 = icmp eq ptr %181, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %180
  tail call void @free(ptr noundef %181)
  br label %184

184:                                              ; preds = %180, %183
  %185 = load ptr, ptr %8, align 8, !tbaa !85
  %186 = icmp eq ptr %185, null
  br i1 %186, label %188, label %187

187:                                              ; preds = %184
  tail call void @free(ptr noundef %185)
  br label %188

188:                                              ; preds = %184, %187
  %189 = load ptr, ptr %9, align 8, !tbaa !85
  %190 = icmp eq ptr %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %188
  tail call void @free(ptr noundef %189)
  br label %192

192:                                              ; preds = %188, %191
  %193 = load ptr, ptr %10, align 8, !tbaa !85
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  tail call void @free(ptr noundef %193)
  br label %196

196:                                              ; preds = %192, %195
  %197 = load ptr, ptr %11, align 8, !tbaa !85
  %198 = icmp eq ptr %197, null
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  tail call void @free(ptr noundef %197)
  br label %200

200:                                              ; preds = %199, %196, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  ret void
}

declare void @lambda_matrix_right_hermite(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @lambda_matrix_row_negate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @affine_fn_univar(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #9 !prof !84 {
  %4 = add nuw nsw i32 %1, 1
  %5 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %4) #27
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 8, !tbaa !115
  %8 = zext i32 %6 to i64
  %9 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 2, i64 %8
  store ptr %0, ptr %9, align 8, !tbaa !85
  %10 = icmp ugt i32 %1, 1
  br i1 %10, label %11, label %23

11:                                               ; preds = %3
  %12 = load i32, ptr %5, align 8, !tbaa !115
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i32 [ %12, %11 ], [ %17, %13 ]
  %15 = phi i32 [ 1, %11 ], [ %20, %13 ]
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %17 = add i32 %14, 1
  %18 = zext i32 %14 to i64
  %19 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 2, i64 %18
  store ptr %16, ptr %19, align 8, !tbaa !85
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %1
  br i1 %21, label %22, label %13, !llvm.loop !467

22:                                               ; preds = %13
  store i32 %17, ptr %5, align 8, !tbaa !115
  br label %23

23:                                               ; preds = %22, %3
  %24 = load i32, ptr %5, align 8, !tbaa !115
  %25 = add i32 %24, 1
  store i32 %25, ptr %5, align 8, !tbaa !115
  %26 = zext i32 %24 to i64
  %27 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 2, i64 %26
  store ptr %2, ptr %27, align 8, !tbaa !85
  ret ptr %5
}

declare ptr @chrec_fold_plus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @chrec_fold_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #21

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @affine_fn_op(i32 noundef %0, ptr noundef readonly %1, ptr noundef readonly %2) unnamed_addr #9 !prof !84 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %2, align 8, !tbaa !115
  br label %7

7:                                                ; preds = %3, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %3 ]
  %9 = icmp eq ptr %1, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %1, align 8, !tbaa !115
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ 0, %7 ]
  %14 = icmp ugt i32 %8, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  br i1 %9, label %18, label %16

16:                                               ; preds = %15
  %17 = load i32, ptr %1, align 8, !tbaa !115
  br label %18

18:                                               ; preds = %15, %16
  %19 = phi i32 [ %17, %16 ], [ 0, %15 ]
  br i1 %4, label %29, label %25

20:                                               ; preds = %12
  br i1 %4, label %23, label %21

21:                                               ; preds = %20
  %22 = load i32, ptr %2, align 8, !tbaa !115
  br label %23

23:                                               ; preds = %20, %21
  %24 = phi i32 [ %22, %21 ], [ 0, %20 ]
  br i1 %9, label %29, label %25

25:                                               ; preds = %23, %18
  %26 = phi ptr [ %2, %18 ], [ %1, %23 ]
  %27 = phi i32 [ %19, %18 ], [ %24, %23 ]
  %28 = load i32, ptr %26, align 8, !tbaa !115
  br label %29

29:                                               ; preds = %25, %23, %18
  %30 = phi i32 [ 0, %18 ], [ 0, %23 ], [ %28, %25 ]
  %31 = phi i32 [ %19, %18 ], [ %24, %23 ], [ %27, %25 ]
  %32 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %30) #27
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %38, %29
  %35 = phi i32 [ %39, %38 ], [ 0, %29 ]
  br label %68

36:                                               ; preds = %29
  %37 = zext i32 %31 to i64
  br label %40

38:                                               ; preds = %40
  %39 = trunc i64 %66 to i32
  br label %34

40:                                               ; preds = %36, %40
  %41 = phi i64 [ 0, %36 ], [ %66, %40 ]
  %42 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !85
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !96
  %46 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %41
  %47 = load ptr, ptr %46, align 8, !tbaa !85
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = getelementptr inbounds %struct.tree_type, ptr %45, i64 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = and i32 %51, 1023
  %53 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1023
  %56 = icmp ugt i32 %52, %55
  %57 = select i1 %56, ptr %45, ptr %49
  %58 = tail call ptr @signed_type_for(ptr noundef %57) #27
  %59 = load ptr, ptr %42, align 8, !tbaa !85
  %60 = load ptr, ptr %46, align 8, !tbaa !85
  %61 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %58, ptr noundef %59, ptr noundef %60) #27
  %62 = load i32, ptr %32, align 8, !tbaa !115
  %63 = add i32 %62, 1
  store i32 %63, ptr %32, align 8, !tbaa !115
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %64
  store ptr %61, ptr %65, align 8, !tbaa !85
  %66 = add nuw nsw i64 %41, 1
  %67 = icmp eq i64 %66, %37
  br i1 %67, label %38, label %40, !llvm.loop !468

68:                                               ; preds = %34, %80
  %69 = phi i32 [ %90, %80 ], [ %35, %34 ]
  br i1 %9, label %77, label %70

70:                                               ; preds = %68
  %71 = load i32, ptr %1, align 8, !tbaa !115
  %72 = icmp ugt i32 %71, %69
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = zext i32 %69 to i64
  %75 = getelementptr inbounds %struct.VEC_tree_base, ptr %1, i64 0, i32 2, i64 %74
  %76 = load ptr, ptr %75, align 8, !tbaa !85
  br label %77

77:                                               ; preds = %68, %70, %73
  %78 = phi ptr [ %76, %73 ], [ null, %70 ], [ null, %68 ]
  %79 = phi i1 [ false, %73 ], [ true, %70 ], [ true, %68 ]
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %82 = load ptr, ptr %81, align 8, !tbaa !96
  %83 = tail call ptr @signed_type_for(ptr noundef %82) #27
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %85 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %83, ptr noundef %78, ptr noundef %84) #27
  %86 = load i32, ptr %32, align 8, !tbaa !115
  %87 = add i32 %86, 1
  store i32 %87, ptr %32, align 8, !tbaa !115
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %88
  store ptr %85, ptr %89, align 8, !tbaa !85
  %90 = add i32 %69, 1
  br label %68, !llvm.loop !469

91:                                               ; preds = %77, %103
  %92 = phi i32 [ %113, %103 ], [ %69, %77 ]
  br i1 %4, label %100, label %93

93:                                               ; preds = %91
  %94 = load i32, ptr %2, align 8, !tbaa !115
  %95 = icmp ugt i32 %94, %92
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = zext i32 %92 to i64
  %98 = getelementptr inbounds %struct.VEC_tree_base, ptr %2, i64 0, i32 2, i64 %97
  %99 = load ptr, ptr %98, align 8, !tbaa !85
  br label %100

100:                                              ; preds = %91, %93, %96
  %101 = phi ptr [ %99, %96 ], [ null, %93 ], [ null, %91 ]
  %102 = phi i1 [ false, %96 ], [ true, %93 ], [ true, %91 ]
  br i1 %102, label %114, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.tree_common, ptr %101, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !96
  %106 = tail call ptr @signed_type_for(ptr noundef %105) #27
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !85
  %108 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %106, ptr noundef %107, ptr noundef %101) #27
  %109 = load i32, ptr %32, align 8, !tbaa !115
  %110 = add i32 %109, 1
  store i32 %110, ptr %32, align 8, !tbaa !115
  %111 = zext i32 %109 to i64
  %112 = getelementptr inbounds %struct.VEC_tree_base, ptr %32, i64 0, i32 2, i64 %111
  store ptr %108, ptr %112, align 8, !tbaa !85
  %113 = add i32 %92, 1
  br label %91, !llvm.loop !470

114:                                              ; preds = %100
  ret ptr %32
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 !prof !84 {
  %4 = load ptr, ptr @chrec_dont_know, align 8
  %5 = icmp eq ptr %4, %1
  %6 = icmp eq ptr %4, %2
  %7 = or i1 %5, %6
  br i1 %7, label %63, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !85
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %1, i32 noundef %0) #27
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = tail call ptr @tree_strip_nop_conversions(ptr noundef %1) #27
  %16 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %15, i32 noundef %0) #27
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 146
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  %22 = icmp ne ptr %21, %16
  %23 = load ptr, ptr @chrec_known, align 8
  %24 = icmp ne ptr %23, %16
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %28, label %26

26:                                               ; preds = %8, %11, %14, %20
  %27 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !85
  br label %63

28:                                               ; preds = %20
  %29 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load i64, ptr %30, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %34 [
    i16 10, label %33
    i16 12, label %33
  ]

33:                                               ; preds = %28, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.120, i32 noundef 143, ptr noundef nonnull @.str.45) #27
  br label %34

34:                                               ; preds = %28, %33
  %35 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = load i64, ptr %36, align 8
  %38 = trunc i64 %37 to i16
  switch i16 %38, label %43 [
    i16 10, label %39
    i16 12, label %39
  ]

39:                                               ; preds = %34, %34
  %40 = load ptr, ptr @sizetype_tab, align 16, !tbaa !85
  %41 = load ptr, ptr %29, align 8, !tbaa !96
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %48, label %46

43:                                               ; preds = %34
  %44 = load ptr, ptr %29, align 8, !tbaa !96
  %45 = icmp eq ptr %36, %44
  br i1 %45, label %48, label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ 147, %39 ], [ 149, %43 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.120, i32 noundef %47, ptr noundef nonnull @.str.45) #27
  br label %48

48:                                               ; preds = %46, %43, %39
  %49 = icmp eq ptr %2, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %48
  %51 = load i64, ptr %2, align 8
  %52 = and i64 %51, 65535
  %53 = icmp eq i64 %52, 23
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #27
  %56 = and i32 %55, 255
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48, %50, %54
  %59 = load ptr, ptr %35, align 8, !tbaa !96
  %60 = zext i32 %0 to i64
  %61 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %60) #27
  %62 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %59, ptr noundef %61, ptr noundef %1, ptr noundef %2) #27
  br label %63

63:                                               ; preds = %3, %54, %58, %26
  %64 = phi ptr [ %62, %58 ], [ %27, %26 ], [ %1, %54 ], [ %4, %3 ]
  ret ptr %64
}

declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @hide_evolution_in_other_loops_than_loop(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @double_int_fits_to_tree_p(ptr noundef, i64, i64) local_unnamed_addr #3

declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #3

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @common_affine_function(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !84 {
  %2 = load i32, ptr %0, align 8, !tbaa !147
  switch i32 %2, label %3 [
    i32 0, label %44
    i32 3, label %44
  ]

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !85
  %6 = load i32, ptr %0, align 8, !tbaa !147
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  %9 = icmp eq ptr %5, null
  br label %10

10:                                               ; preds = %8, %39
  %11 = phi i64 [ 1, %8 ], [ %40, %39 ]
  %12 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !85
  br i1 %9, label %16, label %14

14:                                               ; preds = %10
  %15 = load i32, ptr %5, align 8, !tbaa !115
  br label %16

16:                                               ; preds = %14, %10
  %17 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %18 = icmp eq ptr %13, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = load i32, ptr %13, align 8, !tbaa !115
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i32 [ %20, %19 ], [ 0, %16 ]
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %21
  %25 = icmp eq i32 %17, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %24
  %27 = zext i32 %17 to i64
  br label %31

28:                                               ; preds = %31
  %29 = add nuw nsw i64 %32, 1
  %30 = icmp eq i64 %29, %27
  br i1 %30, label %39, label %31, !llvm.loop !471

31:                                               ; preds = %26, %28
  %32 = phi i64 [ 0, %26 ], [ %29, %28 ]
  %33 = getelementptr inbounds %struct.VEC_tree_base, ptr %5, i64 0, i32 2, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !85
  %35 = getelementptr inbounds %struct.VEC_tree_base, ptr %13, i64 0, i32 2, i64 %32
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  %37 = tail call i32 @operand_equal_p(ptr noundef %34, ptr noundef %36, i32 noundef 0) #27
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %28

39:                                               ; preds = %28, %24
  %40 = add nuw nsw i64 %11, 1
  %41 = load i32, ptr %0, align 8, !tbaa !147
  %42 = zext i32 %41 to i64
  %43 = icmp ult i64 %40, %42
  br i1 %43, label %10, label %44, !llvm.loop !472

44:                                               ; preds = %39, %21, %31, %3, %1, %1
  %45 = phi ptr [ null, %1 ], [ null, %1 ], [ %5, %3 ], [ null, %31 ], [ null, %21 ], [ %5, %39 ]
  ret ptr %45
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @save_dist_v(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !84 !PGOFuncName !473 {
  %3 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br label %6

6:                                                ; preds = %45, %2
  %7 = phi i32 [ 0, %2 ], [ %47, %45 ]
  br i1 %5, label %15, label %8, !prof !274

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 8, !tbaa !139
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %15, !prof !229

11:                                               ; preds = %8
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %6, %8, %11
  %16 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  %17 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %6 ]
  br i1 %17, label %48, label %18, !prof !274

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !229

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8, !tbaa !131
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %63, !prof !275

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  %29 = zext nneg i32 %25 to i64
  %30 = load i32, ptr %16, align 4, !tbaa !100
  %31 = load i32, ptr %1, align 4, !tbaa !100
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %37
  %34 = phi i64 [ %35, %37 ], [ 0, %27 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = icmp eq i64 %35, %29
  br i1 %36, label %63, label %37, !prof !276, !llvm.loop !253

37:                                               ; preds = %33
  %38 = getelementptr inbounds i32, ptr %16, i64 %35
  %39 = load i32, ptr %38, align 4, !tbaa !100
  %40 = getelementptr inbounds i32, ptr %1, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !100
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %33, label %43, !llvm.loop !253

43:                                               ; preds = %37
  %44 = icmp ult i64 %35, %28
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i1 [ %44, %43 ], [ %26, %27 ]
  %47 = add i32 %7, 1
  br i1 %46, label %6, label %63, !prof !266, !llvm.loop !277

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  br i1 %5, label %55, label %50, !prof !229

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %4, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !278
  %53 = load i32, ptr %4, align 8, !tbaa !139
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %50
  %56 = tail call ptr @vec_heap_p_reserve(ptr noundef %4, i32 noundef 1) #27
  store ptr %56, ptr %49, align 8, !tbaa !85
  br label %57

57:                                               ; preds = %50, %55
  %58 = load ptr, ptr %49, align 8, !tbaa !85
  %59 = load i32, ptr %58, align 8, !tbaa !139
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !139
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %58, i64 0, i32 2, i64 %61
  store ptr %1, ptr %62, align 8, !tbaa !85
  br label %63

63:                                               ; preds = %45, %24, %33, %57
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @build_classic_dist_vector_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) unnamed_addr #9 !prof !84 {
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !130
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !131
  %12 = sext i32 %11 to i64
  %13 = shl nsw i64 %12, 2
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi i64 [ %13, %10 ], [ 0, %6 ]
  %16 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %15) #27
  %17 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %18 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %19 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 5, i32 1
  br label %20

20:                                               ; preds = %173, %14
  %21 = phi i64 [ %174, %173 ], [ 0, %14 ]
  %22 = load ptr, ptr %17, align 8, !tbaa !125
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = load i32, ptr %22, align 8, !tbaa !126
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi i32 [ %25, %24 ], [ 0, %20 ]
  %28 = zext i32 %27 to i64
  %29 = icmp ult i64 %21, %28
  br i1 %29, label %30, label %175

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %22, i64 0, i32 2, i64 %21
  %32 = load ptr, ptr %31, align 8, !tbaa !85
  %33 = getelementptr inbounds %struct.subscript, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !151
  %35 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %34) #27
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %30
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %39 = icmp eq ptr %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 65, i64 1, ptr nonnull %38)
  br label %46

46:                                               ; preds = %37, %40, %44
  %47 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %47, align 1, !tbaa !157
  br label %175

48:                                               ; preds = %30
  %49 = load ptr, ptr %18, align 8, !tbaa !114
  %50 = getelementptr inbounds %struct.VEC_tree_base, ptr %49, i64 0, i32 2, i64 %21
  %51 = load ptr, ptr %50, align 8, !tbaa !85
  %52 = load ptr, ptr %19, align 8, !tbaa !114
  %53 = getelementptr inbounds %struct.VEC_tree_base, ptr %52, i64 0, i32 2, i64 %21
  %54 = load ptr, ptr %53, align 8, !tbaa !85
  %55 = load i64, ptr %51, align 8
  %56 = and i64 %55, 65535
  %57 = icmp eq i64 %56, 146
  br i1 %57, label %58, label %159

58:                                               ; preds = %48
  %59 = load i64, ptr %54, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 146
  br i1 %61, label %62, label %159

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !96
  %65 = getelementptr inbounds %struct.tree_int_cst, ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !96
  %67 = trunc i64 %66 to i32
  %68 = load ptr, ptr %7, align 8, !tbaa !130
  %69 = icmp eq ptr %68, null
  br label %70

70:                                               ; preds = %82, %62
  %71 = phi i64 [ %85, %82 ], [ 0, %62 ]
  br i1 %69, label %79, label %72

72:                                               ; preds = %70
  %73 = load i32, ptr %68, align 8, !tbaa !131
  %74 = zext i32 %73 to i64
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %68, i64 0, i32 2, i64 %71
  %78 = load ptr, ptr %77, align 8, !tbaa !85
  br label %79

79:                                               ; preds = %76, %72, %70
  %80 = phi ptr [ %78, %76 ], [ null, %72 ], [ null, %70 ]
  %81 = phi i1 [ false, %76 ], [ true, %72 ], [ true, %70 ]
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %80, align 8, !tbaa !133
  %84 = icmp eq i32 %83, %67
  %85 = add nuw i64 %71, 1
  br i1 %84, label %86, label %70, !llvm.loop !443

86:                                               ; preds = %79, %82
  %87 = trunc i64 %71 to i32
  %88 = getelementptr inbounds %struct.tree_exp, ptr %54, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8, !tbaa !96
  %90 = getelementptr inbounds %struct.tree_int_cst, ptr %89, i64 0, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !96
  %92 = trunc i64 %91 to i32
  br label %93

93:                                               ; preds = %105, %86
  %94 = phi i64 [ %108, %105 ], [ 0, %86 ]
  br i1 %69, label %102, label %95

95:                                               ; preds = %93
  %96 = load i32, ptr %68, align 8, !tbaa !131
  %97 = zext i32 %96 to i64
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %68, i64 0, i32 2, i64 %94
  %101 = load ptr, ptr %100, align 8, !tbaa !85
  br label %102

102:                                              ; preds = %99, %95, %93
  %103 = phi ptr [ %101, %99 ], [ null, %95 ], [ null, %93 ]
  %104 = phi i1 [ false, %99 ], [ true, %95 ], [ true, %93 ]
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %103, align 8, !tbaa !133
  %107 = icmp eq i32 %106, %92
  %108 = add nuw i64 %94, 1
  br i1 %107, label %109, label %93, !llvm.loop !443

109:                                              ; preds = %102, %105
  %110 = trunc i64 %94 to i32
  %111 = tail call i32 @llvm.smin.i32(i32 %87, i32 %110)
  %112 = load i32, ptr %5, align 4, !tbaa !100
  %113 = tail call i32 @llvm.smin.i32(i32 %111, i32 %112)
  store i32 %113, ptr %5, align 4, !tbaa !100
  %114 = load ptr, ptr %33, align 8, !tbaa !151
  %115 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %114) #27
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %109
  %118 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %119 = icmp eq ptr %118, null
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %122 = and i32 %121, 8
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %120
  %125 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 65, i64 1, ptr nonnull %118)
  br label %126

126:                                              ; preds = %117, %120, %124
  %127 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %127, align 1, !tbaa !157
  br label %175

128:                                              ; preds = %109
  %129 = load ptr, ptr %33, align 8, !tbaa !151
  %130 = tail call i64 @int_cst_value(ptr noundef %129) #27
  %131 = trunc i64 %130 to i32
  %132 = zext nneg i32 %111 to i64
  %133 = getelementptr inbounds i32, ptr %16, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !100
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %157, label %136

136:                                              ; preds = %128
  %137 = getelementptr inbounds i32, ptr %3, i64 %132
  %138 = load i32, ptr %137, align 4, !tbaa !100
  %139 = icmp eq i32 %138, %131
  br i1 %139, label %157, label %140

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %142 = load ptr, ptr @chrec_known, align 8, !tbaa !85
  %143 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %144 = icmp eq ptr %143, null
  br i1 %144, label %154, label %145

145:                                              ; preds = %140
  %146 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %147 = and i32 %146, 8
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 24, i64 1, ptr nonnull %143)
  %151 = load ptr, ptr @dump_file, align 8, !tbaa !85
  tail call void @print_generic_expr(ptr noundef %151, ptr noundef %142, i32 noundef 0) #27
  %152 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %153 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 2, i64 1, ptr %152)
  br label %154

154:                                              ; preds = %140, %145, %149
  %155 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  store ptr %142, ptr %155, align 8, !tbaa !121
  %156 = load ptr, ptr %141, align 8, !tbaa !125
  tail call fastcc void @free_subscripts(ptr noundef %156)
  store ptr null, ptr %141, align 8, !tbaa !125
  br label %175

157:                                              ; preds = %136, %128
  %158 = getelementptr inbounds i32, ptr %3, i64 %132
  store i32 %131, ptr %158, align 4, !tbaa !100
  store i32 1, ptr %133, align 4, !tbaa !100
  store i8 1, ptr %4, align 1, !tbaa !96
  br label %173

159:                                              ; preds = %58, %48
  %160 = tail call i32 @operand_equal_p(ptr noundef nonnull %51, ptr noundef %54, i32 noundef 0) #27
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %173

162:                                              ; preds = %159
  %163 = load ptr, ptr @dump_file, align 8, !tbaa !85
  %164 = icmp eq ptr %163, null
  br i1 %164, label %171, label %165

165:                                              ; preds = %162
  %166 = load i32, ptr @dump_flags, align 4, !tbaa !100
  %167 = and i32 %166, 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = tail call i64 @fwrite(ptr nonnull @.str.127, i64 65, i64 1, ptr nonnull %163)
  br label %171

171:                                              ; preds = %162, %165, %169
  %172 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %172, align 1, !tbaa !157
  br label %175

173:                                              ; preds = %157, %159
  %174 = add nuw nsw i64 %21, 1
  br label %20, !llvm.loop !474

175:                                              ; preds = %26, %46, %171, %154, %126
  %176 = phi i8 [ 0, %126 ], [ 0, %154 ], [ 0, %171 ], [ 0, %46 ], [ 1, %26 ]
  ret i8 %176
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @add_outer_distances(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #9 !prof !84 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %24
  %9 = phi i64 [ %7, %5 ], [ %10, %24 ]
  %10 = add nsw i64 %9, -1
  %11 = load ptr, ptr %6, align 8, !tbaa !130
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %8
  %14 = load i32, ptr %11, align 8, !tbaa !131
  br label %15

15:                                               ; preds = %8, %13
  %16 = phi i32 [ %14, %13 ], [ 0, %8 ]
  %17 = sext i32 %16 to i64
  %18 = shl nsw i64 %17, 2
  %19 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %18) #27
  %20 = load ptr, ptr %6, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = load i32, ptr %20, align 8, !tbaa !131
  br label %24

24:                                               ; preds = %15, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %15 ]
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %19, ptr align 4 %1, i64 %27, i1 false)
  %28 = getelementptr inbounds i32, ptr %19, i64 %10
  store i32 1, ptr %28, align 4, !tbaa !100
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %19)
  %29 = icmp sgt i64 %9, 1
  br i1 %29, label %8, label %30, !llvm.loop !475

30:                                               ; preds = %24, %3
  ret void
}

declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @affine_function_zero_p(ptr noundef readonly %0) unnamed_addr #9 !prof !84 {
  %2 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 0
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = tail call i32 @integer_zerop(ptr noundef %3) #27
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %1
  %7 = icmp eq ptr %0, null
  br label %8

8:                                                ; preds = %20, %6
  %9 = phi i32 [ %23, %20 ], [ 1, %6 ]
  br i1 %7, label %17, label %10

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8, !tbaa !115
  %12 = icmp ugt i32 %11, %9
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = zext i32 %9 to i64
  %15 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !85
  br label %17

17:                                               ; preds = %13, %10, %8
  %18 = phi ptr [ %16, %13 ], [ null, %10 ], [ null, %8 ]
  %19 = phi i1 [ false, %13 ], [ true, %10 ], [ true, %8 ]
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @integer_zerop(ptr noundef %18) #27
  %22 = icmp eq i32 %21, 0
  %23 = add i32 %9, 1
  br i1 %22, label %24, label %8, !llvm.loop !463

24:                                               ; preds = %17, %20, %1
  %25 = phi i8 [ 0, %1 ], [ 0, %20 ], [ 1, %17 ]
  ret i8 %25
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @insert_innermost_unit_dist_vector(ptr nocapture noundef %0) unnamed_addr #9 !prof !84 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %3, align 8, !tbaa !131
  %7 = sext i32 %6 to i64
  %8 = shl nsw i64 %7, 2
  br label %9

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ]
  %11 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %10) #27
  %12 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 7
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, ptr %11, i64 %14
  store i32 1, ptr %15, align 4, !tbaa !100
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %11)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @save_dir_v(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #11 !prof !84 !PGOFuncName !476 {
  %3 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !85
  %5 = icmp eq ptr %4, null
  br label %6

6:                                                ; preds = %45, %2
  %7 = phi i32 [ 0, %2 ], [ %47, %45 ]
  br i1 %5, label %15, label %8, !prof !274

8:                                                ; preds = %6
  %9 = load i32, ptr %4, align 8, !tbaa !139
  %10 = icmp ugt i32 %9, %7
  br i1 %10, label %11, label %15, !prof !229

11:                                               ; preds = %8
  %12 = zext i32 %7 to i64
  %13 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %4, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !85
  br label %15

15:                                               ; preds = %6, %8, %11
  %16 = phi ptr [ %14, %11 ], [ null, %8 ], [ null, %6 ]
  %17 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %6 ]
  br i1 %17, label %48, label %18, !prof !274

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !130
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !229

22:                                               ; preds = %18
  %23 = load i32, ptr %20, align 8, !tbaa !131
  br label %24

24:                                               ; preds = %18, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %63, !prof !275

27:                                               ; preds = %24
  %28 = zext nneg i32 %25 to i64
  %29 = zext nneg i32 %25 to i64
  %30 = load i32, ptr %16, align 4, !tbaa !100
  %31 = load i32, ptr %1, align 4, !tbaa !100
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27, %37
  %34 = phi i64 [ %35, %37 ], [ 0, %27 ]
  %35 = add nuw nsw i64 %34, 1
  %36 = icmp eq i64 %35, %29
  br i1 %36, label %63, label %37, !prof !276, !llvm.loop !253

37:                                               ; preds = %33
  %38 = getelementptr inbounds i32, ptr %16, i64 %35
  %39 = load i32, ptr %38, align 4, !tbaa !100
  %40 = getelementptr inbounds i32, ptr %1, i64 %35
  %41 = load i32, ptr %40, align 4, !tbaa !100
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %33, label %43, !llvm.loop !253

43:                                               ; preds = %37
  %44 = icmp ult i64 %35, %28
  br label %45

45:                                               ; preds = %43, %27
  %46 = phi i1 [ %44, %43 ], [ %26, %27 ]
  %47 = add i32 %7, 1
  br i1 %46, label %6, label %63, !prof !266, !llvm.loop !279

48:                                               ; preds = %15
  %49 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  br i1 %5, label %55, label %50, !prof !229

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %4, i64 0, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !278
  %53 = load i32, ptr %4, align 8, !tbaa !139
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %48, %50
  %56 = tail call ptr @vec_heap_p_reserve(ptr noundef %4, i32 noundef 1) #27
  store ptr %56, ptr %49, align 8, !tbaa !85
  br label %57

57:                                               ; preds = %50, %55
  %58 = load ptr, ptr %49, align 8, !tbaa !85
  %59 = load i32, ptr %58, align 8, !tbaa !139
  %60 = add i32 %59, 1
  store i32 %60, ptr %58, align 8, !tbaa !139
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %58, i64 0, i32 2, i64 %61
  store ptr %1, ptr %62, align 8, !tbaa !85
  br label %63

63:                                               ; preds = %45, %24, %33, %57
  ret void
}

declare ptr @omega_alloc_problem(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef zeroext i8 @init_omega_for_ddr_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #9 !prof !84 {
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !130
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa !131
  %11 = add i32 %10, 1
  br label %12

12:                                               ; preds = %5, %9
  %13 = phi i32 [ %11, %9 ], [ 1, %5 ]
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 3
  %15 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %16 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 2
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 11
  br label %19

19:                                               ; preds = %155, %12
  %20 = phi i64 [ %158, %155 ], [ 0, %12 ]
  %21 = load ptr, ptr %14, align 8, !tbaa !125
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, ptr %21, align 8, !tbaa !126
  br label %25

25:                                               ; preds = %19, %23
  %26 = phi i32 [ %24, %23 ], [ 0, %19 ]
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %20, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 7
  %31 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 3
  %32 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 10
  br label %162

33:                                               ; preds = %25
  %34 = load ptr, ptr %15, align 8, !tbaa !114
  %35 = getelementptr inbounds %struct.VEC_tree_base, ptr %34, i64 0, i32 2, i64 %20
  %36 = load ptr, ptr %35, align 8, !tbaa !85
  %37 = load ptr, ptr %16, align 8, !tbaa !114
  %38 = getelementptr inbounds %struct.VEC_tree_base, ptr %37, i64 0, i32 2, i64 %20
  %39 = load ptr, ptr %38, align 8, !tbaa !85
  %40 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !96
  %42 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !96
  %44 = getelementptr inbounds %struct.tree_type, ptr %41, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = getelementptr inbounds %struct.tree_type, ptr %43, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1023
  %50 = icmp ugt i32 %46, %49
  %51 = select i1 %50, ptr %41, ptr %43
  %52 = tail call ptr @signed_type_for(ptr noundef %51) #27
  %53 = tail call ptr @chrec_convert(ptr noundef %52, ptr noundef %36, ptr noundef null) #27
  %54 = tail call ptr @chrec_convert(ptr noundef %52, ptr noundef %39, ptr noundef null) #27
  %55 = tail call ptr @chrec_fold_minus(ptr noundef %52, ptr noundef %53, ptr noundef %54) #27
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 65535
  %58 = icmp eq i64 %57, 23
  br i1 %58, label %59, label %647

59:                                               ; preds = %33
  %60 = icmp eq ptr %53, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %59
  %62 = load i64, ptr %53, align 8
  %63 = trunc i64 %62 to i16
  %64 = add i16 %63, -25
  %65 = icmp ult i16 %64, -2
  br label %66

66:                                               ; preds = %61, %59
  %67 = phi i1 [ true, %59 ], [ %65, %61 ]
  %68 = icmp eq ptr %54, null
  %69 = or i1 %68, %67
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i64, ptr %54, align 8
  %72 = trunc i64 %71 to i16
  %73 = add i16 %72, -25
  %74 = icmp ult i16 %73, -2
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = tail call i32 @integer_zerop(ptr noundef nonnull %55) #27
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %154, label %78

78:                                               ; preds = %66, %75, %70
  %79 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !85
  %80 = tail call ptr @chrec_fold_multiply(ptr noundef %52, ptr noundef %54, ptr noundef %79) #27
  %81 = load i32, ptr %17, align 8, !tbaa !477
  %82 = add nsw i32 %81, 1
  store i32 %82, ptr %17, align 8, !tbaa !477
  %83 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %84 = getelementptr inbounds %struct.param_info, ptr %83, i64 66, i32 1
  %85 = load i32, ptr %84, align 8, !tbaa !479
  %86 = icmp slt i32 %81, %85
  br i1 %86, label %88, label %87

87:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 259, ptr noundef nonnull @.str.45) #27
  br label %88

88:                                               ; preds = %87, %78
  %89 = load ptr, ptr %18, align 8, !tbaa !481
  %90 = sext i32 %81 to i64
  %91 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %90
  %92 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %91, align 8, !tbaa !483
  %93 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %90, i32 1
  store i32 0, ptr %93, align 4, !tbaa !485
  %94 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %90, i32 2
  store i32 0, ptr %94, align 8, !tbaa !486
  %95 = getelementptr inbounds %struct.eqn_d, ptr %89, i64 %90, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !487
  %97 = add nsw i32 %92, 1
  %98 = sext i32 %97 to i64
  %99 = shl nsw i64 %98, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %96, i8 0, i64 %99, i1 false)
  %100 = load ptr, ptr %18, align 8, !tbaa !481
  %101 = getelementptr inbounds %struct.eqn_d, ptr %100, i64 %90, i32 2
  store i32 0, ptr %101, align 8, !tbaa !486
  %102 = load ptr, ptr %6, align 8, !tbaa !130
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %88
  %105 = load i32, ptr %102, align 8, !tbaa !131
  br label %106

106:                                              ; preds = %104, %88
  %107 = phi i32 [ %105, %104 ], [ 0, %88 ]
  %108 = tail call fastcc zeroext i8 @init_omega_eq_with_af(ptr noundef nonnull %3, i32 noundef %81, i32 noundef %107, ptr noundef %53, ptr noundef %2), !range !164
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %647, label %110

110:                                              ; preds = %106
  %111 = tail call fastcc zeroext i8 @init_omega_eq_with_af(ptr noundef nonnull %3, i32 noundef %81, i32 noundef 0, ptr noundef %80, ptr noundef %2), !range !164
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %647, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr %6, align 8, !tbaa !130
  %115 = icmp eq ptr %114, null
  br i1 %115, label %155, label %116

116:                                              ; preds = %113
  %117 = load i32, ptr %114, align 8, !tbaa !131
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %116
  %120 = load ptr, ptr %18, align 8, !tbaa !481
  %121 = getelementptr inbounds %struct.eqn_d, ptr %120, i64 %90, i32 3
  %122 = load ptr, ptr %121, align 8, !tbaa !487
  %123 = load i32, ptr %122, align 4, !tbaa !100
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %155, label %125

125:                                              ; preds = %119
  %126 = getelementptr inbounds i32, ptr %122, i64 1
  %127 = shl i32 %117, 1
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %150

129:                                              ; preds = %125
  %130 = load i32, ptr %126, align 4, !tbaa !100
  %131 = zext nneg i32 %127 to i64
  br label %132

132:                                              ; preds = %129, %146
  %133 = phi i64 [ 1, %129 ], [ %148, %146 ]
  %134 = phi i32 [ %130, %129 ], [ %147, %146 ]
  %135 = getelementptr inbounds i32, ptr %126, i64 %133
  %136 = load i32, ptr %135, align 4, !tbaa !100
  %137 = tail call i32 @llvm.abs.i32(i32 %136, i1 true)
  %138 = icmp eq i32 %134, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = tail call i32 @llvm.abs.i32(i32 %134, i1 true)
  br label %141

141:                                              ; preds = %139, %141
  %142 = phi i32 [ %144, %141 ], [ %140, %139 ]
  %143 = phi i32 [ %142, %141 ], [ %137, %139 ]
  %144 = urem i32 %143, %142
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %141, !llvm.loop !444

146:                                              ; preds = %141, %132
  %147 = phi i32 [ %137, %132 ], [ %142, %141 ]
  %148 = add nuw nsw i64 %133, 1
  %149 = icmp eq i64 %148, %131
  br i1 %149, label %150, label %132, !llvm.loop !488

150:                                              ; preds = %146, %125
  %151 = phi i32 [ 0, %125 ], [ %147, %146 ]
  %152 = srem i32 %123, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %150, %75
  store i8 0, ptr %4, align 1, !tbaa !96
  br label %155

155:                                              ; preds = %154, %113, %116, %119, %150
  %156 = load i8, ptr %4, align 1, !tbaa !96
  %157 = icmp eq i8 %156, 0
  %158 = add nuw nsw i64 %20, 1
  br i1 %157, label %159, label %19, !llvm.loop !489

159:                                              ; preds = %155
  %160 = load ptr, ptr @chrec_known, align 8, !tbaa !85
  %161 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 2
  store ptr %160, ptr %161, align 8, !tbaa !121
  br label %647

162:                                              ; preds = %29, %337
  %163 = phi i32 [ 0, %29 ], [ %230, %337 ]
  %164 = load ptr, ptr %6, align 8, !tbaa !130
  %165 = icmp eq ptr %164, null
  br i1 %165, label %173, label %166

166:                                              ; preds = %162
  %167 = load i32, ptr %164, align 8, !tbaa !131
  %168 = icmp ugt i32 %167, %163
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = zext i32 %163 to i64
  %171 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %164, i64 0, i32 2, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !85
  br label %173

173:                                              ; preds = %162, %166, %169
  %174 = phi ptr [ %172, %169 ], [ null, %166 ], [ null, %162 ]
  %175 = phi i1 [ false, %169 ], [ true, %166 ], [ true, %162 ]
  br i1 %175, label %340, label %176

176:                                              ; preds = %173
  %177 = tail call i64 @estimated_loop_iterations_int(ptr noundef %174, i8 noundef zeroext 0)
  %178 = load i32, ptr %31, align 4, !tbaa !490
  %179 = add nsw i32 %178, 1
  store i32 %179, ptr %31, align 4, !tbaa !490
  %180 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %181 = getelementptr inbounds %struct.param_info, ptr %180, i64 65, i32 1
  %182 = load i32, ptr %181, align 8, !tbaa !479
  %183 = icmp slt i32 %178, %182
  br i1 %183, label %185, label %184

184:                                              ; preds = %176
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %185

185:                                              ; preds = %176, %184
  %186 = load ptr, ptr %32, align 8, !tbaa !491
  %187 = sext i32 %178 to i64
  %188 = getelementptr inbounds %struct.eqn_d, ptr %186, i64 %187
  %189 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %188, align 8, !tbaa !483
  %190 = getelementptr inbounds %struct.eqn_d, ptr %186, i64 %187, i32 1
  store i32 0, ptr %190, align 4, !tbaa !485
  %191 = getelementptr inbounds %struct.eqn_d, ptr %186, i64 %187, i32 2
  store i32 0, ptr %191, align 8, !tbaa !486
  %192 = getelementptr inbounds %struct.eqn_d, ptr %186, i64 %187, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !487
  %194 = add nsw i32 %189, 1
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %193, i8 0, i64 %196, i1 false)
  %197 = load ptr, ptr %32, align 8, !tbaa !491
  %198 = getelementptr inbounds %struct.eqn_d, ptr %197, i64 %187, i32 1
  store i32 1, ptr %198, align 4, !tbaa !485
  %199 = getelementptr inbounds %struct.eqn_d, ptr %197, i64 %187, i32 2
  store i32 0, ptr %199, align 8, !tbaa !486
  %200 = getelementptr inbounds %struct.eqn_d, ptr %197, i64 %187, i32 3
  %201 = load ptr, ptr %200, align 8, !tbaa !487
  %202 = add i32 %13, %163
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i32, ptr %201, i64 %203
  store i32 1, ptr %204, align 4, !tbaa !100
  %205 = load i32, ptr %31, align 4, !tbaa !490
  %206 = add nsw i32 %205, 1
  store i32 %206, ptr %31, align 4, !tbaa !490
  %207 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %208 = getelementptr inbounds %struct.param_info, ptr %207, i64 65, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !479
  %210 = icmp slt i32 %205, %209
  br i1 %210, label %212, label %211

211:                                              ; preds = %185
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %212

212:                                              ; preds = %185, %211
  %213 = load ptr, ptr %32, align 8, !tbaa !491
  %214 = sext i32 %205 to i64
  %215 = getelementptr inbounds %struct.eqn_d, ptr %213, i64 %214
  %216 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %215, align 8, !tbaa !483
  %217 = getelementptr inbounds %struct.eqn_d, ptr %213, i64 %214, i32 1
  store i32 0, ptr %217, align 4, !tbaa !485
  %218 = getelementptr inbounds %struct.eqn_d, ptr %213, i64 %214, i32 2
  store i32 0, ptr %218, align 8, !tbaa !486
  %219 = getelementptr inbounds %struct.eqn_d, ptr %213, i64 %214, i32 3
  %220 = load ptr, ptr %219, align 8, !tbaa !487
  %221 = add nsw i32 %216, 1
  %222 = sext i32 %221 to i64
  %223 = shl nsw i64 %222, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %220, i8 0, i64 %223, i1 false)
  %224 = load ptr, ptr %32, align 8, !tbaa !491
  %225 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %214, i32 1
  store i32 1, ptr %225, align 4, !tbaa !485
  %226 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %214, i32 2
  store i32 0, ptr %226, align 8, !tbaa !486
  %227 = getelementptr inbounds %struct.eqn_d, ptr %224, i64 %214, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !487
  %229 = getelementptr inbounds i32, ptr %228, i64 %203
  store i32 1, ptr %229, align 4, !tbaa !100
  %230 = add i32 %163, 1
  %231 = zext i32 %230 to i64
  %232 = getelementptr inbounds i32, ptr %228, i64 %231
  store i32 1, ptr %232, align 4, !tbaa !100
  %233 = icmp eq i64 %177, -1
  br i1 %233, label %337, label %234

234:                                              ; preds = %212
  %235 = load i32, ptr %31, align 4, !tbaa !490
  %236 = add nsw i32 %235, 1
  store i32 %236, ptr %31, align 4, !tbaa !490
  %237 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %238 = getelementptr inbounds %struct.param_info, ptr %237, i64 65, i32 1
  %239 = load i32, ptr %238, align 8, !tbaa !479
  %240 = icmp slt i32 %235, %239
  br i1 %240, label %242, label %241

241:                                              ; preds = %234
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %242

242:                                              ; preds = %234, %241
  %243 = load ptr, ptr %32, align 8, !tbaa !491
  %244 = sext i32 %235 to i64
  %245 = getelementptr inbounds %struct.eqn_d, ptr %243, i64 %244
  %246 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %245, align 8, !tbaa !483
  %247 = getelementptr inbounds %struct.eqn_d, ptr %243, i64 %244, i32 1
  store i32 0, ptr %247, align 4, !tbaa !485
  %248 = getelementptr inbounds %struct.eqn_d, ptr %243, i64 %244, i32 2
  store i32 0, ptr %248, align 8, !tbaa !486
  %249 = getelementptr inbounds %struct.eqn_d, ptr %243, i64 %244, i32 3
  %250 = load ptr, ptr %249, align 8, !tbaa !487
  %251 = add nsw i32 %246, 1
  %252 = sext i32 %251 to i64
  %253 = shl nsw i64 %252, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %250, i8 0, i64 %253, i1 false)
  %254 = load ptr, ptr %32, align 8, !tbaa !491
  %255 = getelementptr inbounds %struct.eqn_d, ptr %254, i64 %244, i32 1
  store i32 1, ptr %255, align 4, !tbaa !485
  %256 = getelementptr inbounds %struct.eqn_d, ptr %254, i64 %244, i32 2
  store i32 0, ptr %256, align 8, !tbaa !486
  %257 = getelementptr inbounds %struct.eqn_d, ptr %254, i64 %244, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !487
  %259 = getelementptr inbounds i32, ptr %258, i64 %203
  store i32 -1, ptr %259, align 4, !tbaa !100
  %260 = trunc i64 %177 to i32
  store i32 %260, ptr %258, align 4, !tbaa !100
  %261 = load i32, ptr %31, align 4, !tbaa !490
  %262 = add nsw i32 %261, 1
  store i32 %262, ptr %31, align 4, !tbaa !490
  %263 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %264 = getelementptr inbounds %struct.param_info, ptr %263, i64 65, i32 1
  %265 = load i32, ptr %264, align 8, !tbaa !479
  %266 = icmp slt i32 %261, %265
  br i1 %266, label %268, label %267

267:                                              ; preds = %242
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %268

268:                                              ; preds = %242, %267
  %269 = load ptr, ptr %32, align 8, !tbaa !491
  %270 = sext i32 %261 to i64
  %271 = getelementptr inbounds %struct.eqn_d, ptr %269, i64 %270
  %272 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %271, align 8, !tbaa !483
  %273 = getelementptr inbounds %struct.eqn_d, ptr %269, i64 %270, i32 1
  store i32 0, ptr %273, align 4, !tbaa !485
  %274 = getelementptr inbounds %struct.eqn_d, ptr %269, i64 %270, i32 2
  store i32 0, ptr %274, align 8, !tbaa !486
  %275 = getelementptr inbounds %struct.eqn_d, ptr %269, i64 %270, i32 3
  %276 = load ptr, ptr %275, align 8, !tbaa !487
  %277 = add nsw i32 %272, 1
  %278 = sext i32 %277 to i64
  %279 = shl nsw i64 %278, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %276, i8 0, i64 %279, i1 false)
  %280 = load ptr, ptr %32, align 8, !tbaa !491
  %281 = getelementptr inbounds %struct.eqn_d, ptr %280, i64 %270, i32 1
  store i32 1, ptr %281, align 4, !tbaa !485
  %282 = getelementptr inbounds %struct.eqn_d, ptr %280, i64 %270, i32 2
  store i32 0, ptr %282, align 8, !tbaa !486
  %283 = getelementptr inbounds %struct.eqn_d, ptr %280, i64 %270, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !487
  %285 = getelementptr inbounds i32, ptr %284, i64 %203
  store i32 -1, ptr %285, align 4, !tbaa !100
  %286 = getelementptr inbounds i32, ptr %284, i64 %231
  store i32 -1, ptr %286, align 4, !tbaa !100
  store i32 %260, ptr %284, align 4, !tbaa !100
  %287 = load i32, ptr %31, align 4, !tbaa !490
  %288 = add nsw i32 %287, 1
  store i32 %288, ptr %31, align 4, !tbaa !490
  %289 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %290 = getelementptr inbounds %struct.param_info, ptr %289, i64 65, i32 1
  %291 = load i32, ptr %290, align 8, !tbaa !479
  %292 = icmp slt i32 %287, %291
  br i1 %292, label %294, label %293

293:                                              ; preds = %268
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %294

294:                                              ; preds = %268, %293
  %295 = load ptr, ptr %32, align 8, !tbaa !491
  %296 = sext i32 %287 to i64
  %297 = getelementptr inbounds %struct.eqn_d, ptr %295, i64 %296
  %298 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %297, align 8, !tbaa !483
  %299 = getelementptr inbounds %struct.eqn_d, ptr %295, i64 %296, i32 1
  store i32 0, ptr %299, align 4, !tbaa !485
  %300 = getelementptr inbounds %struct.eqn_d, ptr %295, i64 %296, i32 2
  store i32 0, ptr %300, align 8, !tbaa !486
  %301 = getelementptr inbounds %struct.eqn_d, ptr %295, i64 %296, i32 3
  %302 = load ptr, ptr %301, align 8, !tbaa !487
  %303 = add nsw i32 %298, 1
  %304 = sext i32 %303 to i64
  %305 = shl nsw i64 %304, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %302, i8 0, i64 %305, i1 false)
  %306 = load ptr, ptr %32, align 8, !tbaa !491
  %307 = getelementptr inbounds %struct.eqn_d, ptr %306, i64 %296, i32 1
  store i32 1, ptr %307, align 4, !tbaa !485
  %308 = getelementptr inbounds %struct.eqn_d, ptr %306, i64 %296, i32 2
  store i32 0, ptr %308, align 8, !tbaa !486
  %309 = getelementptr inbounds %struct.eqn_d, ptr %306, i64 %296, i32 3
  %310 = load ptr, ptr %309, align 8, !tbaa !487
  %311 = getelementptr inbounds i32, ptr %310, i64 %231
  store i32 1, ptr %311, align 4, !tbaa !100
  store i32 %260, ptr %310, align 4, !tbaa !100
  %312 = load i32, ptr %31, align 4, !tbaa !490
  %313 = add nsw i32 %312, 1
  store i32 %313, ptr %31, align 4, !tbaa !490
  %314 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %315 = getelementptr inbounds %struct.param_info, ptr %314, i64 65, i32 1
  %316 = load i32, ptr %315, align 8, !tbaa !479
  %317 = icmp slt i32 %312, %316
  br i1 %317, label %319, label %318

318:                                              ; preds = %294
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %319

319:                                              ; preds = %294, %318
  %320 = load ptr, ptr %32, align 8, !tbaa !491
  %321 = sext i32 %312 to i64
  %322 = getelementptr inbounds %struct.eqn_d, ptr %320, i64 %321
  %323 = load i32, ptr %3, align 8, !tbaa !482
  store i32 0, ptr %322, align 8, !tbaa !483
  %324 = getelementptr inbounds %struct.eqn_d, ptr %320, i64 %321, i32 1
  store i32 0, ptr %324, align 4, !tbaa !485
  %325 = getelementptr inbounds %struct.eqn_d, ptr %320, i64 %321, i32 2
  store i32 0, ptr %325, align 8, !tbaa !486
  %326 = getelementptr inbounds %struct.eqn_d, ptr %320, i64 %321, i32 3
  %327 = load ptr, ptr %326, align 8, !tbaa !487
  %328 = add nsw i32 %323, 1
  %329 = sext i32 %328 to i64
  %330 = shl nsw i64 %329, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %327, i8 0, i64 %330, i1 false)
  %331 = load ptr, ptr %32, align 8, !tbaa !491
  %332 = getelementptr inbounds %struct.eqn_d, ptr %331, i64 %321, i32 1
  store i32 1, ptr %332, align 4, !tbaa !485
  %333 = getelementptr inbounds %struct.eqn_d, ptr %331, i64 %321, i32 2
  store i32 0, ptr %333, align 8, !tbaa !486
  %334 = getelementptr inbounds %struct.eqn_d, ptr %331, i64 %321, i32 3
  %335 = load ptr, ptr %334, align 8, !tbaa !487
  %336 = getelementptr inbounds i32, ptr %335, i64 %231
  store i32 -1, ptr %336, align 4, !tbaa !100
  store i32 %260, ptr %335, align 4, !tbaa !100
  br label %337

337:                                              ; preds = %319, %212
  %338 = load i32, ptr %30, align 8, !tbaa !129
  %339 = icmp ugt i32 %230, %338
  br i1 %339, label %340, label %162, !llvm.loop !492

340:                                              ; preds = %337, %173
  %341 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 7
  br label %342

342:                                              ; preds = %340, %644
  %343 = phi i32 [ 0, %340 ], [ %435, %644 ]
  %344 = load ptr, ptr %6, align 8, !tbaa !130
  %345 = icmp eq ptr %344, null
  br i1 %345, label %350, label %346

346:                                              ; preds = %342
  %347 = load i32, ptr %344, align 8, !tbaa !131
  %348 = icmp ugt i32 %347, %343
  %349 = zext i1 %348 to i32
  br label %350

350:                                              ; preds = %346, %342
  %351 = phi i32 [ 0, %342 ], [ %349, %346 ]
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %647, label %353

353:                                              ; preds = %350
  br i1 %345, label %356, label %354

354:                                              ; preds = %353
  %355 = load i32, ptr %344, align 8, !tbaa !131
  br label %356

356:                                              ; preds = %354, %353
  %357 = phi i32 [ %355, %354 ], [ 0, %353 ]
  %358 = shl i32 %357, 1
  br i1 %345, label %361, label %359

359:                                              ; preds = %356
  %360 = load i32, ptr %344, align 8, !tbaa !131
  br label %361

361:                                              ; preds = %359, %356
  %362 = phi i32 [ %360, %359 ], [ 0, %356 ]
  %363 = tail call ptr @omega_alloc_problem(i32 noundef %358, i32 noundef %362) #27
  tail call fastcc void @omega_copy_problem(ptr noundef %363, ptr noundef %3)
  %364 = icmp eq i32 %343, 0
  br i1 %364, label %408, label %365

365:                                              ; preds = %361
  %366 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 2
  %367 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 11
  %368 = zext i32 %343 to i64
  br label %369

369:                                              ; preds = %365, %389
  %370 = phi i64 [ 0, %365 ], [ %405, %389 ]
  %371 = load ptr, ptr %6, align 8, !tbaa !130
  %372 = icmp eq ptr %371, null
  br i1 %372, label %378, label %373

373:                                              ; preds = %369
  %374 = load i32, ptr %371, align 8, !tbaa !131
  %375 = zext i32 %374 to i64
  %376 = icmp ult i64 %370, %375
  %377 = zext i1 %376 to i32
  br label %378

378:                                              ; preds = %373, %369
  %379 = phi i32 [ 0, %369 ], [ %377, %373 ]
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %408, label %381

381:                                              ; preds = %378
  %382 = load i32, ptr %366, align 8, !tbaa !477
  %383 = add nsw i32 %382, 1
  store i32 %383, ptr %366, align 8, !tbaa !477
  %384 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %385 = getelementptr inbounds %struct.param_info, ptr %384, i64 66, i32 1
  %386 = load i32, ptr %385, align 8, !tbaa !479
  %387 = icmp slt i32 %382, %386
  br i1 %387, label %389, label %388

388:                                              ; preds = %381
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 259, ptr noundef nonnull @.str.45) #27
  br label %389

389:                                              ; preds = %388, %381
  %390 = load ptr, ptr %367, align 8, !tbaa !481
  %391 = sext i32 %382 to i64
  %392 = getelementptr inbounds %struct.eqn_d, ptr %390, i64 %391
  %393 = load i32, ptr %363, align 8, !tbaa !482
  store i32 0, ptr %392, align 8, !tbaa !483
  %394 = getelementptr inbounds %struct.eqn_d, ptr %390, i64 %391, i32 1
  store i32 0, ptr %394, align 4, !tbaa !485
  %395 = getelementptr inbounds %struct.eqn_d, ptr %390, i64 %391, i32 2
  store i32 0, ptr %395, align 8, !tbaa !486
  %396 = getelementptr inbounds %struct.eqn_d, ptr %390, i64 %391, i32 3
  %397 = load ptr, ptr %396, align 8, !tbaa !487
  %398 = add nsw i32 %393, 1
  %399 = sext i32 %398 to i64
  %400 = shl nsw i64 %399, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %397, i8 0, i64 %400, i1 false)
  %401 = load ptr, ptr %367, align 8, !tbaa !481
  %402 = getelementptr inbounds %struct.eqn_d, ptr %401, i64 %391, i32 2
  store i32 0, ptr %402, align 8, !tbaa !486
  %403 = getelementptr inbounds %struct.eqn_d, ptr %401, i64 %391, i32 3
  %404 = load ptr, ptr %403, align 8, !tbaa !487
  %405 = add nuw nsw i64 %370, 1
  %406 = getelementptr inbounds i32, ptr %404, i64 %405
  store i32 1, ptr %406, align 4, !tbaa !100
  %407 = icmp eq i64 %405, %368
  br i1 %407, label %408, label %369, !llvm.loop !493

408:                                              ; preds = %389, %378, %361
  %409 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 3
  %410 = load i32, ptr %409, align 4, !tbaa !490
  %411 = add nsw i32 %410, 1
  store i32 %411, ptr %409, align 4, !tbaa !490
  %412 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %413 = getelementptr inbounds %struct.param_info, ptr %412, i64 65, i32 1
  %414 = load i32, ptr %413, align 8, !tbaa !479
  %415 = icmp slt i32 %410, %414
  br i1 %415, label %417, label %416

416:                                              ; preds = %408
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 274, ptr noundef nonnull @.str.45) #27
  br label %417

417:                                              ; preds = %416, %408
  %418 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 10
  %419 = load ptr, ptr %418, align 8, !tbaa !491
  %420 = sext i32 %410 to i64
  %421 = getelementptr inbounds %struct.eqn_d, ptr %419, i64 %420
  %422 = load i32, ptr %363, align 8, !tbaa !482
  store i32 0, ptr %421, align 8, !tbaa !483
  %423 = getelementptr inbounds %struct.eqn_d, ptr %419, i64 %420, i32 1
  store i32 0, ptr %423, align 4, !tbaa !485
  %424 = getelementptr inbounds %struct.eqn_d, ptr %419, i64 %420, i32 2
  store i32 0, ptr %424, align 8, !tbaa !486
  %425 = getelementptr inbounds %struct.eqn_d, ptr %419, i64 %420, i32 3
  %426 = load ptr, ptr %425, align 8, !tbaa !487
  %427 = add nsw i32 %422, 1
  %428 = sext i32 %427 to i64
  %429 = shl nsw i64 %428, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %426, i8 0, i64 %429, i1 false)
  %430 = load ptr, ptr %418, align 8, !tbaa !491
  %431 = getelementptr inbounds %struct.eqn_d, ptr %430, i64 %420, i32 1
  store i32 1, ptr %431, align 4, !tbaa !485
  %432 = getelementptr inbounds %struct.eqn_d, ptr %430, i64 %420, i32 2
  store i32 0, ptr %432, align 8, !tbaa !486
  %433 = getelementptr inbounds %struct.eqn_d, ptr %430, i64 %420, i32 3
  %434 = load ptr, ptr %433, align 8, !tbaa !487
  %435 = add i32 %343, 1
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds i32, ptr %434, i64 %436
  store i32 1, ptr %437, align 4, !tbaa !100
  %438 = tail call i32 @omega_simplify_problem(ptr noundef nonnull %363) #27
  %439 = and i32 %438, -3
  %440 = icmp eq i32 %439, 0
  br i1 %440, label %644, label %441

441:                                              ; preds = %417
  %442 = load i32, ptr %409, align 4, !tbaa !490
  %443 = load ptr, ptr %6, align 8, !tbaa !130
  %444 = icmp eq ptr %443, null
  br i1 %444, label %447, label %445

445:                                              ; preds = %441
  %446 = load i32, ptr %443, align 8, !tbaa !131
  br label %447

447:                                              ; preds = %445, %441
  %448 = phi i32 [ %446, %445 ], [ 0, %441 ]
  %449 = icmp sgt i32 %442, %448
  br i1 %449, label %644, label %450

450:                                              ; preds = %447
  %451 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 4
  %452 = load i32, ptr %451, align 8, !tbaa !494
  %453 = icmp sgt i32 %452, 0
  br i1 %453, label %454, label %469

454:                                              ; preds = %450
  %455 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 12
  %456 = load ptr, ptr %455, align 8, !tbaa !495
  %457 = zext nneg i32 %452 to i64
  br label %461

458:                                              ; preds = %461
  %459 = add nuw nsw i64 %462, 1
  %460 = icmp eq i64 %459, %457
  br i1 %460, label %469, label %461, !llvm.loop !496

461:                                              ; preds = %454, %458
  %462 = phi i64 [ 0, %454 ], [ %459, %458 ]
  %463 = getelementptr inbounds %struct.eqn_d, ptr %456, i64 %462
  %464 = load i32, ptr %463, align 8, !tbaa !483
  %465 = icmp eq i32 %464, %435
  br i1 %465, label %466, label %458

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 4
  %468 = getelementptr inbounds %struct.eqn_d, ptr %456, i64 %462, i32 3
  br label %571

469:                                              ; preds = %458, %450
  %470 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 4
  tail call fastcc void @omega_copy_problem(ptr noundef nonnull %363, ptr noundef %3)
  %471 = icmp eq i32 %343, 0
  br i1 %471, label %515, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 2
  %474 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 11
  %475 = zext i32 %343 to i64
  br label %476

476:                                              ; preds = %472, %496
  %477 = phi i64 [ 0, %472 ], [ %512, %496 ]
  %478 = load ptr, ptr %6, align 8, !tbaa !130
  %479 = icmp eq ptr %478, null
  br i1 %479, label %485, label %480

480:                                              ; preds = %476
  %481 = load i32, ptr %478, align 8, !tbaa !131
  %482 = zext i32 %481 to i64
  %483 = icmp ult i64 %477, %482
  %484 = zext i1 %483 to i32
  br label %485

485:                                              ; preds = %480, %476
  %486 = phi i32 [ 0, %476 ], [ %484, %480 ]
  %487 = icmp eq i32 %486, 0
  br i1 %487, label %515, label %488

488:                                              ; preds = %485
  %489 = load i32, ptr %473, align 8, !tbaa !477
  %490 = add nsw i32 %489, 1
  store i32 %490, ptr %473, align 8, !tbaa !477
  %491 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %492 = getelementptr inbounds %struct.param_info, ptr %491, i64 66, i32 1
  %493 = load i32, ptr %492, align 8, !tbaa !479
  %494 = icmp slt i32 %489, %493
  br i1 %494, label %496, label %495

495:                                              ; preds = %488
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 259, ptr noundef nonnull @.str.45) #27
  br label %496

496:                                              ; preds = %495, %488
  %497 = load ptr, ptr %474, align 8, !tbaa !481
  %498 = sext i32 %489 to i64
  %499 = getelementptr inbounds %struct.eqn_d, ptr %497, i64 %498
  %500 = load i32, ptr %363, align 8, !tbaa !482
  store i32 0, ptr %499, align 8, !tbaa !483
  %501 = getelementptr inbounds %struct.eqn_d, ptr %497, i64 %498, i32 1
  store i32 0, ptr %501, align 4, !tbaa !485
  %502 = getelementptr inbounds %struct.eqn_d, ptr %497, i64 %498, i32 2
  store i32 0, ptr %502, align 8, !tbaa !486
  %503 = getelementptr inbounds %struct.eqn_d, ptr %497, i64 %498, i32 3
  %504 = load ptr, ptr %503, align 8, !tbaa !487
  %505 = add nsw i32 %500, 1
  %506 = sext i32 %505 to i64
  %507 = shl nsw i64 %506, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %504, i8 0, i64 %507, i1 false)
  %508 = load ptr, ptr %474, align 8, !tbaa !481
  %509 = getelementptr inbounds %struct.eqn_d, ptr %508, i64 %498, i32 2
  store i32 0, ptr %509, align 8, !tbaa !486
  %510 = getelementptr inbounds %struct.eqn_d, ptr %508, i64 %498, i32 3
  %511 = load ptr, ptr %510, align 8, !tbaa !487
  %512 = add nuw nsw i64 %477, 1
  %513 = getelementptr inbounds i32, ptr %511, i64 %512
  store i32 1, ptr %513, align 4, !tbaa !100
  %514 = icmp eq i64 %512, %475
  br i1 %514, label %515, label %476, !llvm.loop !497

515:                                              ; preds = %496, %485, %469
  %516 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 2
  %517 = load i32, ptr %516, align 8, !tbaa !477
  %518 = add nsw i32 %517, 1
  store i32 %518, ptr %516, align 8, !tbaa !477
  %519 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %520 = getelementptr inbounds %struct.param_info, ptr %519, i64 66, i32 1
  %521 = load i32, ptr %520, align 8, !tbaa !479
  %522 = icmp slt i32 %517, %521
  br i1 %522, label %524, label %523

523:                                              ; preds = %515
  tail call void @fancy_abort(ptr noundef nonnull @.str.128, i32 noundef 259, ptr noundef nonnull @.str.45) #27
  br label %524

524:                                              ; preds = %523, %515
  %525 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 11
  %526 = load ptr, ptr %525, align 8, !tbaa !481
  %527 = sext i32 %517 to i64
  %528 = getelementptr inbounds %struct.eqn_d, ptr %526, i64 %527
  %529 = load i32, ptr %363, align 8, !tbaa !482
  store i32 0, ptr %528, align 8, !tbaa !483
  %530 = getelementptr inbounds %struct.eqn_d, ptr %526, i64 %527, i32 1
  store i32 0, ptr %530, align 4, !tbaa !485
  %531 = getelementptr inbounds %struct.eqn_d, ptr %526, i64 %527, i32 2
  store i32 0, ptr %531, align 8, !tbaa !486
  %532 = getelementptr inbounds %struct.eqn_d, ptr %526, i64 %527, i32 3
  %533 = load ptr, ptr %532, align 8, !tbaa !487
  %534 = add nsw i32 %529, 1
  %535 = sext i32 %534 to i64
  %536 = shl nsw i64 %535, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %533, i8 0, i64 %536, i1 false)
  %537 = load ptr, ptr %525, align 8, !tbaa !481
  %538 = getelementptr inbounds %struct.eqn_d, ptr %537, i64 %527, i32 2
  store i32 0, ptr %538, align 8, !tbaa !486
  %539 = getelementptr inbounds %struct.eqn_d, ptr %537, i64 %527, i32 3
  %540 = load ptr, ptr %539, align 8, !tbaa !487
  %541 = getelementptr inbounds i32, ptr %540, i64 %436
  store i32 1, ptr %541, align 4, !tbaa !100
  store i32 -1, ptr %540, align 4, !tbaa !100
  %542 = tail call i32 @omega_simplify_problem(ptr noundef nonnull %363) #27
  %543 = and i32 %542, -3
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %644, label %545

545:                                              ; preds = %524
  %546 = load i32, ptr %409, align 4, !tbaa !490
  %547 = load ptr, ptr %6, align 8, !tbaa !130
  %548 = icmp eq ptr %547, null
  br i1 %548, label %551, label %549

549:                                              ; preds = %545
  %550 = load i32, ptr %547, align 8, !tbaa !131
  br label %551

551:                                              ; preds = %549, %545
  %552 = phi i32 [ %550, %549 ], [ 0, %545 ]
  %553 = icmp sgt i32 %546, %552
  br i1 %553, label %644, label %554

554:                                              ; preds = %551
  %555 = load i32, ptr %470, align 8, !tbaa !494
  %556 = icmp sgt i32 %555, 0
  br i1 %556, label %557, label %576

557:                                              ; preds = %554
  %558 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 12
  %559 = load ptr, ptr %558, align 8, !tbaa !495
  %560 = zext nneg i32 %555 to i64
  br label %564

561:                                              ; preds = %564
  %562 = add nuw nsw i64 %565, 1
  %563 = icmp eq i64 %562, %560
  br i1 %563, label %576, label %564, !llvm.loop !498

564:                                              ; preds = %557, %561
  %565 = phi i64 [ 0, %557 ], [ %562, %561 ]
  %566 = getelementptr inbounds %struct.eqn_d, ptr %559, i64 %565
  %567 = load i32, ptr %566, align 8, !tbaa !483
  %568 = icmp eq i32 %567, %435
  br i1 %568, label %569, label %561

569:                                              ; preds = %564
  %570 = getelementptr inbounds %struct.eqn_d, ptr %559, i64 %565, i32 3
  br label %571

571:                                              ; preds = %466, %569
  %572 = phi ptr [ %570, %569 ], [ %468, %466 ]
  %573 = phi ptr [ %470, %569 ], [ %467, %466 ]
  %574 = load ptr, ptr %572, align 8, !tbaa !487
  %575 = load i32, ptr %574, align 4, !tbaa !100
  br label %576

576:                                              ; preds = %561, %571, %554
  %577 = phi ptr [ %470, %554 ], [ %573, %571 ], [ %470, %561 ]
  %578 = phi i32 [ 0, %554 ], [ %575, %571 ], [ 0, %561 ]
  %579 = icmp sgt i32 %578, -1
  br i1 %579, label %580, label %644

580:                                              ; preds = %576
  %581 = load ptr, ptr %6, align 8, !tbaa !130
  %582 = icmp eq ptr %581, null
  br i1 %582, label %585, label %583

583:                                              ; preds = %580
  %584 = load i32, ptr %581, align 8, !tbaa !131
  br label %585

585:                                              ; preds = %583, %580
  %586 = phi i32 [ %584, %583 ], [ 0, %580 ]
  %587 = sext i32 %586 to i64
  %588 = shl nsw i64 %587, 2
  %589 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %588) #27
  %590 = load ptr, ptr %6, align 8, !tbaa !130
  %591 = icmp eq ptr %590, null
  br i1 %591, label %594, label %592

592:                                              ; preds = %585
  %593 = load i32, ptr %590, align 8, !tbaa !131
  br label %594

594:                                              ; preds = %592, %585
  %595 = phi i32 [ %593, %592 ], [ 0, %585 ]
  %596 = sext i32 %595 to i64
  %597 = shl nsw i64 %596, 2
  %598 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %597) #27
  %599 = zext i32 %343 to i64
  %600 = getelementptr inbounds i32, ptr %589, i64 %599
  store i32 %578, ptr %600, align 4, !tbaa !100
  %601 = getelementptr i32, ptr %589, i64 -1
  %602 = load i32, ptr %577, align 8, !tbaa !494
  %603 = icmp sgt i32 %602, 0
  br i1 %603, label %604, label %607

604:                                              ; preds = %594
  %605 = getelementptr inbounds %struct.omega_pb_d, ptr %363, i64 0, i32 12
  %606 = load ptr, ptr %605, align 8, !tbaa !495
  br label %610

607:                                              ; preds = %621, %594
  %608 = load ptr, ptr %6, align 8, !tbaa !130
  %609 = icmp eq ptr %608, null
  br label %626

610:                                              ; preds = %604, %621
  %611 = phi i64 [ 0, %604 ], [ %622, %621 ]
  %612 = getelementptr inbounds %struct.eqn_d, ptr %606, i64 %611
  %613 = load i32, ptr %612, align 8, !tbaa !483
  %614 = icmp sgt i32 %613, 0
  br i1 %614, label %615, label %621

615:                                              ; preds = %610
  %616 = getelementptr inbounds %struct.eqn_d, ptr %606, i64 %611, i32 3
  %617 = load ptr, ptr %616, align 8, !tbaa !487
  %618 = load i32, ptr %617, align 4, !tbaa !100
  %619 = zext nneg i32 %613 to i64
  %620 = getelementptr i32, ptr %601, i64 %619
  store i32 %618, ptr %620, align 4, !tbaa !100
  br label %621

621:                                              ; preds = %615, %610
  %622 = add nuw nsw i64 %611, 1
  %623 = load i32, ptr %577, align 8, !tbaa !494
  %624 = sext i32 %623 to i64
  %625 = icmp slt i64 %622, %624
  br i1 %625, label %610, label %607, !llvm.loop !499

626:                                              ; preds = %607, %634
  %627 = phi i64 [ 0, %607 ], [ %642, %634 ]
  br i1 %609, label %630, label %628

628:                                              ; preds = %626
  %629 = load i32, ptr %608, align 8, !tbaa !131
  br label %630

630:                                              ; preds = %628, %626
  %631 = phi i32 [ %629, %628 ], [ 0, %626 ]
  %632 = zext i32 %631 to i64
  %633 = icmp ult i64 %627, %632
  br i1 %633, label %634, label %643

634:                                              ; preds = %630
  %635 = getelementptr inbounds i32, ptr %589, i64 %627
  %636 = load i32, ptr %635, align 4, !tbaa !100
  %637 = icmp sgt i32 %636, 0
  %638 = icmp slt i32 %636, 0
  %639 = select i1 %638, i32 1, i32 2
  %640 = select i1 %637, i32 0, i32 %639
  %641 = getelementptr inbounds i32, ptr %598, i64 %627
  store i32 %640, ptr %641, align 4, !tbaa !100
  %642 = add nuw nsw i64 %627, 1
  br label %626, !llvm.loop !500

643:                                              ; preds = %630
  tail call fastcc void @save_dist_v(ptr noundef %2, ptr noundef %589)
  tail call fastcc void @save_dir_v(ptr noundef %2, ptr noundef %598)
  br label %644

644:                                              ; preds = %643, %576, %551, %524, %447, %417
  tail call fastcc void @omega_free_problem(ptr noundef nonnull %363)
  %645 = load i32, ptr %341, align 8, !tbaa !129
  %646 = icmp ugt i32 %435, %645
  br i1 %646, label %647, label %342, !llvm.loop !501

647:                                              ; preds = %110, %106, %33, %350, %644, %159
  %648 = phi i8 [ 1, %159 ], [ 1, %644 ], [ 1, %350 ], [ 0, %33 ], [ 0, %106 ], [ 0, %110 ]
  ret i8 %648
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc void @omega_free_problem(ptr nocapture noundef %0) unnamed_addr #2 !prof !84 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !502
  tail call void @free(ptr noundef %3)
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !503
  tail call void @free(ptr noundef %5)
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !491
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 65, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !479
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = zext nneg i32 %10 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ %13, %12 ], [ %16, %14 ]
  %16 = add nsw i64 %15, -1
  %17 = getelementptr inbounds %struct.eqn_d, ptr %7, i64 %16, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !487
  tail call void @free(ptr noundef %18)
  %19 = icmp sgt i64 %15, 1
  br i1 %19, label %14, label %20, !llvm.loop !504

20:                                               ; preds = %14, %1
  tail call void @free(ptr noundef %7)
  %21 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %22 = load ptr, ptr %21, align 8, !tbaa !481
  %23 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %24 = getelementptr inbounds %struct.param_info, ptr %23, i64 66, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !479
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = zext nneg i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %29
  %30 = phi i64 [ %28, %27 ], [ %31, %29 ]
  %31 = add nsw i64 %30, -1
  %32 = getelementptr inbounds %struct.eqn_d, ptr %22, i64 %31, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !487
  tail call void @free(ptr noundef %33)
  %34 = icmp sgt i64 %30, 1
  br i1 %34, label %29, label %35, !llvm.loop !504

35:                                               ; preds = %29, %20
  tail call void @free(ptr noundef %22)
  %36 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %37 = load ptr, ptr %36, align 8, !tbaa !495
  %38 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %39 = getelementptr inbounds %struct.param_info, ptr %38, i64 64, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !479
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = add nuw i32 %40, 1
  %44 = zext i32 %43 to i64
  br label %45

45:                                               ; preds = %42, %45
  %46 = phi i64 [ %44, %42 ], [ %48, %45 ]
  %47 = add nsw i64 %46, -1
  %48 = add nsw i64 %46, -1
  %49 = getelementptr inbounds %struct.eqn_d, ptr %37, i64 %47, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !487
  tail call void @free(ptr noundef %50)
  %51 = trunc i64 %46 to i32
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %45, label %53, !llvm.loop !504

53:                                               ; preds = %45, %35
  tail call void @free(ptr noundef %37)
  tail call void @free(ptr noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc zeroext i8 @init_omega_eq_with_af(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #9 !prof !84 {
  br label %6

6:                                                ; preds = %78, %5
  %7 = phi ptr [ %3, %5 ], [ %12, %78 ]
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i16
  switch i16 %9, label %99 [
    i16 146, label %10
    i16 23, label %89
  ]

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !96
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %99

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %20, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !96
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !130
  %26 = icmp eq ptr %25, null
  br label %27

27:                                               ; preds = %39, %18
  %28 = phi i64 [ %42, %39 ], [ 0, %18 ]
  br i1 %26, label %36, label %29

29:                                               ; preds = %27
  %30 = load i32, ptr %25, align 8, !tbaa !131
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %25, i64 0, i32 2, i64 %28
  %35 = load ptr, ptr %34, align 8, !tbaa !85
  br label %36

36:                                               ; preds = %33, %29, %27
  %37 = phi ptr [ %35, %33 ], [ null, %29 ], [ null, %27 ]
  %38 = phi i1 [ false, %33 ], [ true, %29 ], [ true, %27 ]
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i32, ptr %37, align 8, !tbaa !133
  %41 = icmp eq i32 %40, %23
  %42 = add nuw i64 %28, 1
  br i1 %41, label %43, label %27, !llvm.loop !443

43:                                               ; preds = %36, %39
  %44 = trunc i64 %28 to i32
  %45 = tail call i64 @int_cst_value(ptr noundef nonnull %14) #27
  %46 = trunc i64 %45 to i32
  %47 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %48 = load ptr, ptr %47, align 8, !tbaa !481
  %49 = zext i32 %1 to i64
  %50 = getelementptr inbounds %struct.eqn_d, ptr %48, i64 %49, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !487
  %52 = add i32 %2, 1
  %53 = add i32 %52, %44
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %51, i64 %54
  store i32 %46, ptr %55, align 4, !tbaa !100
  %56 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  %57 = load i32, ptr %56, align 8, !tbaa !129
  %58 = tail call i32 @llvm.umax.i32(i32 %57, i32 %44)
  store i32 %58, ptr %56, align 8, !tbaa !129
  %59 = icmp eq i32 %2, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %43
  %61 = tail call i64 @int_cst_value(ptr noundef nonnull %14) #27
  %62 = load ptr, ptr %47, align 8, !tbaa !481
  %63 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %49, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !487
  %65 = load ptr, ptr %24, align 8, !tbaa !130
  %66 = icmp eq ptr %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, ptr %65, align 8, !tbaa !131
  br label %69

69:                                               ; preds = %60, %67
  %70 = phi i32 [ %68, %67 ], [ 0, %60 ]
  %71 = add nuw i32 %44, 1
  %72 = add i32 %71, %70
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, ptr %64, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !100
  %76 = trunc i64 %61 to i32
  %77 = add i32 %75, %76
  store i32 %77, ptr %74, align 4, !tbaa !100
  br label %78

78:                                               ; preds = %69, %43
  %79 = load i64, ptr %12, align 8
  %80 = trunc i64 %79 to i16
  switch i16 %80, label %99 [
    i16 146, label %6
    i16 23, label %81
  ]

81:                                               ; preds = %78
  %82 = tail call i64 @int_cst_value(ptr noundef nonnull %12) #27
  %83 = load ptr, ptr %47, align 8, !tbaa !481
  %84 = getelementptr inbounds %struct.eqn_d, ptr %83, i64 %49, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !487
  %86 = load i32, ptr %85, align 4, !tbaa !100
  %87 = trunc i64 %82 to i32
  %88 = add i32 %86, %87
  store i32 %88, ptr %85, align 4, !tbaa !100
  br label %99

89:                                               ; preds = %6
  %90 = tail call i64 @int_cst_value(ptr noundef nonnull %7) #27
  %91 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %92 = load ptr, ptr %91, align 8, !tbaa !481
  %93 = zext i32 %1 to i64
  %94 = getelementptr inbounds %struct.eqn_d, ptr %92, i64 %93, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !487
  %96 = load i32, ptr %95, align 4, !tbaa !100
  %97 = trunc i64 %90 to i32
  %98 = add i32 %96, %97
  store i32 %98, ptr %95, align 4, !tbaa !100
  br label %99

99:                                               ; preds = %6, %81, %10, %78, %89
  %100 = phi i8 [ 1, %89 ], [ 1, %81 ], [ 0, %10 ], [ 0, %78 ], [ 0, %6 ]
  ret i8 %100
}

; Function Attrs: cold inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_problem(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #22 !prof !84 {
  %3 = load i32, ptr %1, align 8, !tbaa !482
  store i32 %3, ptr %0, align 8, !tbaa !482
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !505
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %5, ptr %6, align 4, !tbaa !505
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %8 = load i8, ptr %7, align 8, !tbaa !506
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  store i8 %8, ptr %9, align 8, !tbaa !506
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !507
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  store i8 %11, ptr %12, align 1, !tbaa !507
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !508
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  store i32 %14, ptr %15, align 4, !tbaa !508
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !477
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  store i32 %17, ptr %18, align 8, !tbaa !477
  %19 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %20 = load i32, ptr %19, align 8, !tbaa !494
  %21 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 4
  store i32 %20, ptr %21, align 8, !tbaa !494
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %23 = load i32, ptr %22, align 4, !tbaa !490
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  store i32 %23, ptr %24, align 4, !tbaa !490
  %25 = load i32, ptr %16, align 8, !tbaa !477
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %29 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  %30 = zext nneg i32 %25 to i64
  br label %31

31:                                               ; preds = %27, %31
  %32 = phi i64 [ %30, %27 ], [ %33, %31 ]
  %33 = add nsw i64 %32, -1
  %34 = load ptr, ptr %28, align 8, !tbaa !481
  %35 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33
  %36 = load ptr, ptr %29, align 8, !tbaa !481
  %37 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33
  %38 = load i32, ptr %1, align 8, !tbaa !482
  %39 = load i32, ptr %37, align 8, !tbaa !483
  store i32 %39, ptr %35, align 8, !tbaa !483
  %40 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !485
  %42 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 1
  store i32 %41, ptr %42, align 4, !tbaa !485
  %43 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 2
  %44 = load i32, ptr %43, align 8, !tbaa !486
  %45 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 2
  store i32 %44, ptr %45, align 8, !tbaa !486
  %46 = getelementptr inbounds %struct.eqn_d, ptr %34, i64 %33, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !487
  %48 = getelementptr inbounds %struct.eqn_d, ptr %36, i64 %33, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !487
  %50 = add nsw i32 %38, 1
  %51 = sext i32 %50 to i64
  %52 = shl nsw i64 %51, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %47, ptr align 4 %49, i64 %52, i1 false)
  %53 = icmp sgt i64 %32, 1
  br i1 %53, label %31, label %54, !llvm.loop !509

54:                                               ; preds = %31, %2
  %55 = load i32, ptr %22, align 4, !tbaa !490
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %60 = zext nneg i32 %55 to i64
  br label %61

61:                                               ; preds = %57, %61
  %62 = phi i64 [ %60, %57 ], [ %63, %61 ]
  %63 = add nsw i64 %62, -1
  %64 = load ptr, ptr %58, align 8, !tbaa !491
  %65 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63
  %66 = load ptr, ptr %59, align 8, !tbaa !491
  %67 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63
  %68 = load i32, ptr %1, align 8, !tbaa !482
  %69 = load i32, ptr %67, align 8, !tbaa !483
  store i32 %69, ptr %65, align 8, !tbaa !483
  %70 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !485
  %72 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 1
  store i32 %71, ptr %72, align 4, !tbaa !485
  %73 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 2
  %74 = load i32, ptr %73, align 8, !tbaa !486
  %75 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 2
  store i32 %74, ptr %75, align 8, !tbaa !486
  %76 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %63, i32 3
  %77 = load ptr, ptr %76, align 8, !tbaa !487
  %78 = getelementptr inbounds %struct.eqn_d, ptr %66, i64 %63, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !487
  %80 = add nsw i32 %68, 1
  %81 = sext i32 %80 to i64
  %82 = shl nsw i64 %81, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %77, ptr align 4 %79, i64 %82, i1 false)
  %83 = icmp sgt i64 %62, 1
  br i1 %83, label %61, label %84, !llvm.loop !510

84:                                               ; preds = %61, %54
  %85 = load i32, ptr %19, align 8, !tbaa !494
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %114

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %89 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  %90 = zext nneg i32 %85 to i64
  br label %91

91:                                               ; preds = %87, %91
  %92 = phi i64 [ %90, %87 ], [ %93, %91 ]
  %93 = add nsw i64 %92, -1
  %94 = load ptr, ptr %88, align 8, !tbaa !495
  %95 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93
  %96 = load ptr, ptr %89, align 8, !tbaa !495
  %97 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93
  %98 = load i32, ptr %1, align 8, !tbaa !482
  %99 = load i32, ptr %97, align 8, !tbaa !483
  store i32 %99, ptr %95, align 8, !tbaa !483
  %100 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 1
  %101 = load i32, ptr %100, align 4, !tbaa !485
  %102 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 1
  store i32 %101, ptr %102, align 4, !tbaa !485
  %103 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 2
  %104 = load i32, ptr %103, align 8, !tbaa !486
  %105 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 2
  store i32 %104, ptr %105, align 8, !tbaa !486
  %106 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %93, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !487
  %108 = getelementptr inbounds %struct.eqn_d, ptr %96, i64 %93, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !487
  %110 = add nsw i32 %98, 1
  %111 = sext i32 %110 to i64
  %112 = shl nsw i64 %111, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %107, ptr align 4 %109, i64 %112, i1 false)
  %113 = icmp sgt i64 %92, 1
  br i1 %113, label %91, label %114, !llvm.loop !511

114:                                              ; preds = %91, %84
  %115 = load i32, ptr %1, align 8, !tbaa !482
  %116 = icmp sgt i32 %115, -1
  br i1 %116, label %117, label %130

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !502
  %120 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %121 = load ptr, ptr %120, align 8, !tbaa !502
  %122 = zext nneg i32 %115 to i64
  br label %123

123:                                              ; preds = %117, %123
  %124 = phi i64 [ %122, %117 ], [ %128, %123 ]
  %125 = getelementptr inbounds i32, ptr %119, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !100
  %127 = getelementptr inbounds i32, ptr %121, i64 %124
  store i32 %126, ptr %127, align 4, !tbaa !100
  %128 = add nsw i64 %124, -1
  %129 = icmp sgt i64 %124, 0
  br i1 %129, label %123, label %130, !llvm.loop !512

130:                                              ; preds = %123, %114
  %131 = load ptr, ptr @compiler_params, align 8, !tbaa !85
  %132 = getelementptr inbounds %struct.param_info, ptr %131, i64 64, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !479
  %134 = icmp sgt i32 %133, -1
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %137 = load ptr, ptr %136, align 8, !tbaa !503
  %138 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %139 = load ptr, ptr %138, align 8, !tbaa !503
  %140 = zext nneg i32 %133 to i64
  br label %141

141:                                              ; preds = %135, %141
  %142 = phi i64 [ %140, %135 ], [ %146, %141 ]
  %143 = getelementptr inbounds i32, ptr %137, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !100
  %145 = getelementptr inbounds i32, ptr %139, i64 %142
  store i32 %144, ptr %145, align 4, !tbaa !100
  %146 = add nsw i64 %142, -1
  %147 = icmp sgt i64 %142, 0
  br i1 %147, label %141, label %148, !llvm.loop !513

148:                                              ; preds = %141, %130
  ret void
}

declare i32 @omega_simplify_problem(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @gather_stats_on_scev_database() local_unnamed_addr #3

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #26

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
attributes #10 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nounwind }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!83}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!35 = !{ptr @split_constant_offset, ptr @size_int_kind, i64 12}
!36 = !{ptr @split_constant_offset, ptr @tree_strip_nop_conversions, i64 12}
!37 = !{ptr @split_constant_offset, ptr @extract_ops_from_tree, i64 12}
!38 = !{ptr @split_constant_offset, ptr @split_constant_offset_1, i64 12}
!39 = !{ptr @split_constant_offset, ptr @fold_convert_loc, i64 6}
!40 = !{ptr @split_constant_offset_1, ptr @build_int_cst, i64 75453}
!41 = !{ptr @split_constant_offset_1, ptr @fold_convert_loc, i64 75465}
!42 = !{ptr @split_constant_offset_1, ptr @split_constant_offset, i64 12}
!43 = !{ptr @split_constant_offset_1, ptr @fold_build2_stat_loc, i64 6}
!44 = !{ptr @split_constant_offset_1, ptr @size_binop_loc, i64 6}
!45 = !{ptr @split_constant_offset_1, ptr @split_constant_offset_1, i64 100}
!46 = !{ptr @dr_analyze_innermost, ptr @get_inner_reference, i64 75459}
!47 = !{ptr @dr_analyze_innermost, ptr @build_fold_addr_expr_loc, i64 150697}
!48 = !{ptr @dr_analyze_innermost, ptr @size_int_kind, i64 528207}
!49 = !{ptr @dr_analyze_innermost, ptr @tree_strip_nop_conversions, i64 226377}
!50 = !{ptr @dr_analyze_innermost, ptr @extract_ops_from_tree, i64 150918}
!51 = !{ptr @dr_analyze_innermost, ptr @split_constant_offset_1, i64 150918}
!52 = !{ptr @dr_analyze_innermost, ptr @fold_convert_loc, i64 301835}
!53 = !{ptr @dr_analyze_innermost, ptr @size_binop_loc, i64 226377}
!54 = !{ptr @dr_analyze_innermost, ptr @highest_pow2_factor, i64 75459}
!55 = !{ptr @create_data_ref, ptr @xcalloc, i64 75459}
!56 = !{ptr @create_data_ref, ptr @dr_analyze_innermost, i64 75459}
!57 = !{ptr @create_data_ref, ptr @unshare_expr, i64 75459}
!58 = !{ptr @create_data_ref, ptr @build_int_cst, i64 14430}
!59 = !{ptr @create_data_ref, ptr @get_base_address, i64 75459}
!60 = !{ptr @dr_may_alias_p, ptr @get_base_address, i64 123294}
!61 = !{ptr @dr_may_alias_p, ptr @operand_equal_p, i64 62065}
!62 = !{ptr @dr_may_alias_p, ptr @vec_heap_p_reserve, i64 4486}
!63 = !{ptr @dr_may_alias_p, ptr @free, i64 4486}
!64 = !{ptr @dr_may_alias_p, ptr @refs_may_alias_p, i64 61643}
!65 = !{ptr @initialize_data_dependence_relation, ptr @xmalloc, i64 61647}
!66 = !{ptr @initialize_data_dependence_relation, ptr @dr_may_alias_p, i64 61647}
!67 = !{ptr @initialize_data_dependence_relation, ptr @operand_equal_p, i64 61561}
!68 = !{ptr @initialize_data_dependence_relation, ptr @vec_heap_p_reserve_exact, i64 61561}
!69 = !{ptr @initialize_data_dependence_relation, ptr @compute_self_dependence, i64 61561}
!70 = !{ptr @compute_self_dependence, ptr @ggc_alloc_cleared_stat, i64 246244}
!71 = !{ptr @compute_self_dependence, ptr @vec_heap_p_reserve, i64 123122}
!72 = !{ptr @find_data_references_in_bb, ptr @gimple_call_flags, i64 79705}
!73 = !{ptr @find_data_references_in_bb, ptr @get_base_address, i64 12081}
!74 = !{ptr @find_data_references_in_bb, ptr @vec_heap_o_reserve, i64 62851}
!75 = !{ptr @find_data_references_in_bb, ptr @create_data_ref, i64 88121}
!76 = !{ptr @find_data_references_in_bb, ptr @vec_heap_p_reserve, i64 151496}
!77 = !{ptr @find_data_references_in_bb, ptr @free, i64 88121}
!78 = !{ptr @find_data_references_in_bb, ptr @xcalloc, i64 79705}
!79 = !{ptr @compute_data_dependences_for_bb, ptr @find_data_references_in_bb, i64 155395}
!80 = !{ptr @compute_data_dependences_for_bb, ptr @initialize_data_dependence_relation, i64 61647}
!81 = !{ptr @compute_data_dependences_for_bb, ptr @vec_heap_p_reserve, i64 61475}
!82 = !{ptr @compute_data_dependences_for_bb, ptr @compute_self_dependence, i64 61561}
!83 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!84 = !{!"function_entry_count", i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"any pointer", !87, i64 0}
!87 = !{!"omnipotent char", !88, i64 0}
!88 = !{!"Simple C/C++ TBAA"}
!89 = !{!90, !86, i64 8}
!90 = !{!"_IO_FILE", !91, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !91, i64 112, !91, i64 116, !92, i64 120, !93, i64 128, !87, i64 130, !87, i64 131, !86, i64 136, !92, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !92, i64 184, !91, i64 192, !87, i64 196}
!91 = !{!"int", !87, i64 0}
!92 = !{!"long", !87, i64 0}
!93 = !{!"short", !87, i64 0}
!94 = !{!90, !86, i64 16}
!95 = !{!"branch_weights", i32 2000, i32 1}
!96 = !{!87, !87, i64 0}
!97 = !{!90, !86, i64 40}
!98 = !{!90, !86, i64 48}
!99 = !{!90, !91, i64 0}
!100 = !{!91, !91, i64 0}
!101 = distinct !{!101, !102, !103}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!105, !91, i64 0}
!105 = !{!"VEC_data_reference_p_base", !91, i64 0, !91, i64 4, !87, i64 8}
!106 = distinct !{!106, !102, !103}
!107 = !{!108, !86, i64 0}
!108 = !{!"data_reference", !86, i64 0, !86, i64 8, !86, i64 16, !87, i64 24, !109, i64 32, !110, i64 72, !111, i64 88, !86, i64 104}
!109 = !{!"innermost_loop_behavior", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32}
!110 = !{!"indices", !86, i64 0, !86, i64 8}
!111 = !{!"dr_alias", !86, i64 0, !86, i64 8}
!112 = !{!108, !86, i64 8}
!113 = !{!108, !86, i64 72}
!114 = !{!108, !86, i64 80}
!115 = !{!116, !91, i64 0}
!116 = !{!"VEC_tree_base", !91, i64 0, !91, i64 4, !87, i64 8}
!117 = distinct !{!117, !102, !103}
!118 = !{!119, !91, i64 0}
!119 = !{!"VEC_ddr_p_base", !91, i64 0, !91, i64 4, !87, i64 8}
!120 = distinct !{!120, !102, !103}
!121 = !{!122, !86, i64 16}
!122 = !{!"data_dependence_relation", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !91, i64 56, !87, i64 60, !87, i64 61, !87, i64 62}
!123 = !{!122, !86, i64 0}
!124 = !{!122, !86, i64 8}
!125 = !{!122, !86, i64 24}
!126 = !{!127, !91, i64 0}
!127 = !{!"VEC_subscript_p_base", !91, i64 0, !91, i64 4, !87, i64 8}
!128 = distinct !{!128, !102, !103}
!129 = !{!122, !91, i64 56}
!130 = !{!122, !86, i64 32}
!131 = !{!132, !91, i64 0}
!132 = !{!"VEC_loop_p_base", !91, i64 0, !91, i64 4, !87, i64 8}
!133 = !{!134, !91, i64 0}
!134 = !{!"loop", !91, i64 0, !91, i64 4, !86, i64 8, !86, i64 16, !135, i64 24, !91, i64 32, !91, i64 36, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !136, i64 80, !136, i64 96, !87, i64 112, !87, i64 113, !91, i64 116, !86, i64 120, !86, i64 128, !87, i64 136, !86, i64 144}
!135 = !{!"lpt_decision", !91, i64 0, !91, i64 4}
!136 = !{!"", !92, i64 0, !92, i64 8}
!137 = distinct !{!137, !102, !103}
!138 = !{!122, !86, i64 48}
!139 = !{!140, !91, i64 0}
!140 = !{!"VEC_lambda_vector_base", !91, i64 0, !91, i64 4, !87, i64 8}
!141 = distinct !{!141, !102, !103}
!142 = distinct !{!142, !102, !103}
!143 = !{!122, !86, i64 40}
!144 = distinct !{!144, !102, !103}
!145 = !{!146, !86, i64 0}
!146 = !{!"subscript", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!147 = !{!148, !91, i64 0}
!148 = !{!"", !91, i64 0, !87, i64 8}
!149 = !{!146, !86, i64 16}
!150 = !{!146, !86, i64 8}
!151 = !{!146, !86, i64 24}
!152 = distinct !{!152, !102, !103}
!153 = distinct !{!153, !102, !103}
!154 = distinct !{!154, !102, !103}
!155 = distinct !{!155, !102, !103}
!156 = distinct !{!156, !102, !103}
!157 = !{!122, !87, i64 61}
!158 = distinct !{!158, !102, !103}
!159 = distinct !{!159, !102, !103}
!160 = distinct !{!160, !102, !103}
!161 = distinct !{!161, !102, !103}
!162 = !{!"function_entry_count", i64 12}
!163 = !{!"branch_weights", i32 150930, i32 0}
!164 = !{i8 0, i8 2}
!165 = !{!"branch_weights", i32 75465, i32 75465}
!166 = !{!"function_entry_count", i64 151030}
!167 = !{!"tree-data-ref.c;split_constant_offset_1"}
!168 = !{!"branch_weights", i32 94, i32 75453, i32 0, i32 0, i32 0, i32 6, i32 75238, i32 233, i32 6, i32 0}
!169 = !{!"branch_weights", i32 6, i32 0}
!170 = !{!"branch_weights", i32 75238, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!171 = !{!92, !92, i64 0}
!172 = distinct !{!172, !102, !103}
!173 = !{!"branch_weights", i32 100, i32 133}
!174 = !{!"branch_weights", i32 0, i32 100}
!175 = !{!"branch_weights", i32 0, i32 100, i32 0, i32 0}
!176 = !{!"branch_weights", i32 94, i32 6}
!177 = !{!"branch_weights", i32 0, i32 94}
!178 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 6}
!179 = !{!"branch_weights", i32 0, i32 6}
!180 = !{!"function_entry_count", i64 75459}
!181 = !{!"branch_weights", i32 0, i32 75459}
!182 = !{!183, !86, i64 24}
!183 = !{!"basic_block_def", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !87, i64 32, !86, i64 48, !86, i64 56, !87, i64 64, !92, i64 72, !91, i64 80, !91, i64 84, !91, i64 88, !91, i64 92, !91, i64 96}
!184 = !{!"branch_weights", i32 75459, i32 0}
!185 = !{!186, !86, i64 0}
!186 = !{!"", !86, i64 0, !86, i64 8, !87, i64 16}
!187 = !{!186, !86, i64 8}
!188 = !{!186, !87, i64 16}
!189 = !{!"branch_weights", i32 75453, i32 6}
!190 = !{!"branch_weights", i32 0, i32 75459, i32 0}
!191 = !{!"branch_weights", i32 75238, i32 221}
!192 = !{!108, !86, i64 32}
!193 = !{!108, !86, i64 40}
!194 = !{!108, !86, i64 48}
!195 = !{!108, !86, i64 56}
!196 = !{!108, !86, i64 64}
!197 = !{!108, !87, i64 24}
!198 = !{!199, !86, i64 8}
!199 = !{!"function", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !91, i64 104, !91, i64 108, !91, i64 112, !91, i64 116, !91, i64 120, !91, i64 124, !86, i64 128, !91, i64 136, !91, i64 137, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 138, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139, !91, i64 139}
!200 = !{!"branch_weights", i32 75459, i32 0, i32 12764, i32 14430, i32 0, i32 0, i32 0, i32 0}
!201 = !{!"branch_weights", i32 14430, i32 12764}
!202 = !{!"branch_weights", i32 14430, i32 0}
!203 = !{!116, !91, i64 4}
!204 = distinct !{!204, !102, !103}
!205 = !{!"branch_weights", i32 221, i32 75238}
!206 = !{!"branch_weights", i32 221, i32 0}
!207 = !{!108, !86, i64 88}
!208 = !{!"function_entry_count", i64 61647}
!209 = !{!"branch_weights", i32 61420, i32 227}
!210 = !{!"branch_weights", i32 36, i32 61384}
!211 = !{!"branch_weights", i32 61416, i32 4}
!212 = !{!"branch_weights", i32 82, i32 61561}
!213 = !{!"branch_weights", i32 61561, i32 0, i32 422, i32 2168, i32 0, i32 0, i32 0, i32 0}
!214 = !{!"branch_weights", i32 2243, i32 347}
!215 = !{!"branch_weights", i32 0, i32 347}
!216 = distinct !{!216, !102, !103}
!217 = distinct !{!217, !102, !103}
!218 = !{!"branch_weights", i32 59318, i32 4833}
!219 = !{!"branch_weights", i32 61561, i32 2590}
!220 = !{!"branch_weights", i32 0, i32 2590}
!221 = !{!"branch_weights", i32 6708100, i32 0, i32 0}
!222 = !{!"branch_weights", i32 2590, i32 0}
!223 = !{!"branch_weights", i32 0, i32 2168, i32 422}
!224 = distinct !{!224, !103}
!225 = !{!"branch_weights", i32 0, i32 422}
!226 = !{!"branch_weights", i32 59318, i32 2243}
!227 = !{!"branch_weights", i32 61643, i32 4}
!228 = !{!"branch_weights", i32 0, i32 61643}
!229 = !{!"branch_weights", i32 61561, i32 0}
!230 = !{!"branch_weights", i32 61380, i32 181}
!231 = !{!"branch_weights", i32 61380, i32 0}
!232 = !{!"branch_weights", i32 0, i32 181, i32 0}
!233 = !{!"branch_weights", i32 181, i32 0}
!234 = !{!134, !87, i64 112}
!235 = !{!134, !87, i64 113}
!236 = !{!"branch_weights", i32 25668, i32 123036}
!237 = !{!"branch_weights", i32 61561, i32 61475}
!238 = !{!"branch_weights", i32 87143, i32 61561}
!239 = !{!"branch_weights", i32 0, i32 61647}
!240 = !{!"branch_weights", i32 86, i32 61561}
!241 = !{!"branch_weights", i32 61561, i32 86}
!242 = distinct !{!242, !102, !103}
!243 = !{!"branch_weights", i32 0, i32 86}
!244 = !{!"branch_weights", i32 86, i32 0}
!245 = !{!119, !91, i64 4}
!246 = !{!122, !87, i64 62}
!247 = !{!248, !91, i64 0}
!248 = !{!"datadep_stats", !91, i64 0, !91, i64 4, !91, i64 8, !91, i64 12, !91, i64 16, !91, i64 20, !91, i64 24, !91, i64 28, !91, i64 32, !91, i64 36, !91, i64 40, !91, i64 44, !91, i64 48, !91, i64 52, !91, i64 56, !91, i64 60, !91, i64 64, !91, i64 68, !91, i64 72}
!249 = distinct !{!249, !102, !103}
!250 = distinct !{!250, !102, !103}
!251 = distinct !{!251, !102, !103}
!252 = distinct !{!252, !102, !103}
!253 = distinct !{!253, !102, !103}
!254 = distinct !{!254, !102, !103}
!255 = distinct !{!255, !102, !103}
!256 = distinct !{!256, !102, !103}
!257 = distinct !{!257, !102, !103}
!258 = !{!248, !91, i64 12}
!259 = distinct !{!259, !102, !103}
!260 = !{!"branch_weights", i32 0, i32 87143}
!261 = !{!"branch_weights", i32 61389, i32 172}
!262 = !{!"branch_weights", i32 0, i32 172}
!263 = distinct !{!263, !102, !103}
!264 = !{!"tree-data-ref.c;initialize_data_dependence_relation"}
!265 = !{!122, !87, i64 60}
!266 = !{!"branch_weights", i32 0, i32 61561}
!267 = distinct !{!267, !102, !103}
!268 = !{!127, !91, i64 4}
!269 = distinct !{!269, !102, !103}
!270 = !{!"function_entry_count", i64 123122}
!271 = !{!"tree-data-ref.c;compute_self_dependence"}
!272 = !{!"branch_weights", i32 123122, i32 0}
!273 = distinct !{!273, !102, !103}
!274 = !{!"branch_weights", i32 61561, i32 61561}
!275 = !{!"branch_weights", i32 0, i32 1}
!276 = !{!"branch_weights", i32 1, i32 0}
!277 = distinct !{!277, !102, !103}
!278 = !{!140, !91, i64 4}
!279 = distinct !{!279, !102, !103}
!280 = !{!"branch_weights", i32 68252, i32 198104}
!281 = !{!"branch_weights", i32 68252, i32 0}
!282 = !{!"branch_weights", i32 0, i32 198104}
!283 = !{!"branch_weights", i32 76382, i32 189974}
!284 = !{!"branch_weights", i32 122645, i32 143711}
!285 = !{!"branch_weights", i32 75459, i32 68252}
!286 = !{!"branch_weights", i32 0, i32 60954, i32 14505}
!287 = !{!"branch_weights", i32 0, i32 14505}
!288 = !{!289, !91, i64 4}
!289 = !{!"VEC_data_ref_loc_base", !91, i64 0, !91, i64 4, !87, i64 8}
!290 = !{!289, !91, i64 0}
!291 = !{!292, !86, i64 0}
!292 = !{!"data_ref_loc_d", !86, i64 0, !87, i64 8}
!293 = !{!292, !87, i64 8}
!294 = !{!"branch_weights", i32 75459, i32 0, i32 0}
!295 = !{!"branch_weights", i32 1, i32 68251}
!296 = !{!"branch_weights", i32 0, i32 80854}
!297 = !{!"branch_weights", i32 80854, i32 0, i32 0}
!298 = !{!"branch_weights", i32 68251, i32 12603}
!299 = distinct !{!299, !102, !103}
!300 = !{!"branch_weights", i32 198104, i32 68252}
!301 = !{!"branch_weights", i32 122645, i32 150918}
!302 = !{!"branch_weights", i32 75459, i32 75459}
!303 = !{!"branch_weights", i32 198104, i32 75459}
!304 = distinct !{!304, !102, !103}
!305 = !{!"branch_weights", i32 75373, i32 86}
!306 = !{!105, !91, i64 4}
!307 = distinct !{!307, !102, !103}
!308 = !{!"branch_weights", i32 122645, i32 75459}
!309 = distinct !{!309, !102, !103}
!310 = !{!134, !91, i64 36}
!311 = distinct !{!311, !102, !103}
!312 = !{!"function_entry_count", i64 155395}
!313 = !{!"tree-data-ref.c;find_data_references_in_bb"}
!314 = !{!183, !91, i64 96}
!315 = !{!316}
!316 = distinct !{!316, !317, !"gsi_start_bb: argument 0"}
!317 = distinct !{!317, !"gsi_start_bb"}
!318 = !{!"branch_weights", i32 155395, i32 0}
!319 = !{!"branch_weights", i32 0, i32 155395}
!320 = !{!321, !86, i64 0}
!321 = !{!"gimple_bb_info", !86, i64 0, !86, i64 8}
!322 = !{!323, !86, i64 0}
!323 = !{!"gimple_seq_d", !86, i64 0, !86, i64 8, !86, i64 16}
!324 = !{!"branch_weights", i32 1, i32 87142}
!325 = !{!326, !86, i64 0}
!326 = !{!"gimple_seq_node_d", !86, i64 0, !86, i64 8, !86, i64 16}
!327 = !{!"branch_weights", i32 54354, i32 13898}
!328 = !{!"branch_weights", i32 0, i32 13898}
!329 = !{!326, !86, i64 16}
!330 = !{!"branch_weights", i32 87142, i32 179214}
!331 = distinct !{!331, !102, !103}
!332 = !{!132, !91, i64 4}
!333 = !{!134, !86, i64 48}
!334 = !{!134, !86, i64 56}
!335 = !{!248, !91, i64 4}
!336 = !{!248, !91, i64 8}
!337 = !{!248, !91, i64 16}
!338 = !{!248, !91, i64 20}
!339 = !{!248, !91, i64 24}
!340 = !{!248, !91, i64 28}
!341 = !{!248, !91, i64 36}
!342 = !{!248, !91, i64 32}
!343 = !{!248, !91, i64 40}
!344 = !{!248, !91, i64 44}
!345 = !{!248, !91, i64 52}
!346 = !{!248, !91, i64 48}
!347 = !{!248, !91, i64 56}
!348 = !{!248, !91, i64 60}
!349 = !{!248, !91, i64 68}
!350 = !{!248, !91, i64 64}
!351 = !{!248, !91, i64 72}
!352 = !{!"branch_weights", i32 68252, i32 87143}
!353 = !{!199, !86, i64 32}
!354 = !{!355, !86, i64 8}
!355 = !{!"loops", !91, i64 0, !86, i64 8, !86, i64 16, !86, i64 24}
!356 = !{!355, !86, i64 24}
!357 = !{!358, !91, i64 0}
!358 = !{!"VEC_int_base", !91, i64 0, !91, i64 4, !87, i64 8}
!359 = distinct !{!359, !103}
!360 = !{!134, !86, i64 40}
!361 = distinct !{!361, !102, !103}
!362 = distinct !{!362, !102, !103}
!363 = distinct !{!363, !102, !103}
!364 = distinct !{!364, !102, !103}
!365 = distinct !{!365, !102, !103}
!366 = distinct !{!366, !102, !103}
!367 = distinct !{!367, !102, !103}
!368 = !{!369, !86, i64 8}
!369 = !{!"graph", !91, i64 0, !86, i64 8, !86, i64 16}
!370 = !{!371, !86, i64 24}
!371 = !{!"vertex", !86, i64 0, !86, i64 8, !91, i64 16, !91, i64 20, !86, i64 24}
!372 = !{!373, !87, i64 8}
!373 = !{!"rdg_vertex", !86, i64 0, !87, i64 8, !87, i64 9}
!374 = !{!373, !87, i64 9}
!375 = !{!371, !86, i64 0}
!376 = !{!377, !91, i64 0}
!377 = !{!"graph_edge", !91, i64 0, !91, i64 4, !86, i64 8, !86, i64 16, !86, i64 24}
!378 = !{!377, !86, i64 8}
!379 = distinct !{!379, !102, !103}
!380 = !{!371, !86, i64 8}
!381 = !{!377, !91, i64 4}
!382 = !{!377, !86, i64 16}
!383 = distinct !{!383, !102, !103}
!384 = !{!373, !86, i64 0}
!385 = !{!369, !91, i64 0}
!386 = !{!371, !91, i64 16}
!387 = distinct !{!387, !102, !103}
!388 = distinct !{!388, !102, !103}
!389 = !{!390, !86, i64 0}
!390 = !{!"rdg_vertex_info", !86, i64 0, !91, i64 8}
!391 = !{!369, !86, i64 16}
!392 = !{!390, !91, i64 8}
!393 = !{!394, !91, i64 0}
!394 = !{!"VEC_gimple_base", !91, i64 0, !91, i64 4, !87, i64 8}
!395 = distinct !{!395, !102, !103}
!396 = distinct !{!396, !102, !103}
!397 = distinct !{!397, !102, !103}
!398 = !{i64 0, i64 8, !85, i64 8, i64 8, !85, i64 16, i64 8, !85}
!399 = !{!394, !91, i64 4}
!400 = distinct !{!400, !102, !103}
!401 = !{!402}
!402 = distinct !{!402, !403, !"gsi_start_bb: argument 0"}
!403 = distinct !{!403, !"gsi_start_bb"}
!404 = distinct !{!404, !102, !103}
!405 = distinct !{!405, !102, !103}
!406 = distinct !{!406, !102, !103}
!407 = distinct !{!407, !102, !103}
!408 = !{!377, !86, i64 24}
!409 = !{!410, !91, i64 4}
!410 = !{!"rdg_edge", !91, i64 0, !91, i64 4, !86, i64 8}
!411 = !{!410, !86, i64 8}
!412 = !{!410, !91, i64 0}
!413 = distinct !{!413, !102, !103}
!414 = !{!415, !86, i64 0}
!415 = !{!"def_optype_d", !86, i64 0, !86, i64 8}
!416 = !{!415, !86, i64 8}
!417 = !{!418, !86, i64 8}
!418 = !{!"ssa_use_operand_d", !86, i64 0, !86, i64 8, !87, i64 16, !86, i64 24}
!419 = distinct !{!419, !102, !103}
!420 = distinct !{!420, !102, !103}
!421 = distinct !{!421, !102, !103}
!422 = distinct !{!422, !102, !103}
!423 = !{!424}
!424 = distinct !{!424, !425, !"gsi_start_bb: argument 0"}
!425 = distinct !{!425, !"gsi_start_bb"}
!426 = distinct !{!426, !102, !103}
!427 = distinct !{!427, !102, !103}
!428 = distinct !{!428, !102, !103}
!429 = distinct !{!429, !102, !103}
!430 = distinct !{!430, !102, !103}
!431 = distinct !{!431, !102, !103}
!432 = distinct !{!432, !102, !103}
!433 = distinct !{!433, !102, !103}
!434 = !{!435, !86, i64 16}
!435 = !{!"access_matrix", !86, i64 0, !91, i64 8, !86, i64 16, !86, i64 24}
!436 = !{!435, !91, i64 8}
!437 = distinct !{!437, !102, !103}
!438 = distinct !{!438, !102, !103}
!439 = distinct !{!439, !102, !103}
!440 = distinct !{!440, !102, !103}
!441 = distinct !{!441, !102, !103}
!442 = distinct !{!442, !102, !103}
!443 = distinct !{!443, !102, !103}
!444 = distinct !{!444, !102, !103}
!445 = distinct !{!445, !102, !103}
!446 = distinct !{!446, !102, !103}
!447 = distinct !{!447, !102, !103}
!448 = distinct !{!448, !102, !103}
!449 = distinct !{!449, !102, !103}
!450 = distinct !{!450, !102, !103}
!451 = !{i64 0, i64 8, !171, i64 8, i64 8, !171}
!452 = !{i64 0, i64 8, !171}
!453 = !{!454, !86, i64 456}
!454 = !{!"lang_hooks", !86, i64 0, !92, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152, !86, i64 160, !86, i64 168, !86, i64 176, !86, i64 184, !86, i64 192, !86, i64 200, !86, i64 208, !86, i64 216, !86, i64 224, !86, i64 232, !455, i64 240, !456, i64 248, !457, i64 256, !458, i64 272, !459, i64 432, !460, i64 560, !86, i64 584, !86, i64 592, !86, i64 600, !86, i64 608, !86, i64 616, !86, i64 624, !86, i64 632, !86, i64 640, !86, i64 648, !86, i64 656, !86, i64 664, !87, i64 672}
!455 = !{!"lang_hooks_for_tree_inlining", !86, i64 0}
!456 = !{!"lang_hooks_for_callgraph", !86, i64 0}
!457 = !{!"lang_hooks_for_tree_dump", !86, i64 0, !86, i64 8}
!458 = !{!"lang_hooks_for_decls", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !86, i64 120, !86, i64 128, !86, i64 136, !86, i64 144, !86, i64 152}
!459 = !{!"lang_hooks_for_types", !86, i64 0, !86, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !86, i64 96, !86, i64 104, !86, i64 112, !87, i64 120}
!460 = !{!"lang_hooks_for_lto", !86, i64 0, !86, i64 8, !86, i64 16}
!461 = distinct !{!461, !102, !103}
!462 = distinct !{!462, !102, !103}
!463 = distinct !{!463, !102, !103}
!464 = distinct !{!464, !102, !103}
!465 = distinct !{!465, !102, !103}
!466 = distinct !{!466, !102, !103}
!467 = distinct !{!467, !102, !103}
!468 = distinct !{!468, !102, !103}
!469 = distinct !{!469, !102, !103}
!470 = distinct !{!470, !102, !103}
!471 = distinct !{!471, !102, !103}
!472 = distinct !{!472, !102, !103}
!473 = !{!"tree-data-ref.c;save_dist_v"}
!474 = distinct !{!474, !102, !103}
!475 = distinct !{!475, !102, !103}
!476 = !{!"tree-data-ref.c;save_dir_v"}
!477 = !{!478, !91, i64 8}
!478 = !{!"omega_pb_d", !91, i64 0, !91, i64 4, !91, i64 8, !91, i64 12, !91, i64 16, !91, i64 20, !87, i64 24, !87, i64 25, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64}
!479 = !{!480, !91, i64 8}
!480 = !{!"param_info", !86, i64 0, !91, i64 8, !87, i64 12, !91, i64 16, !91, i64 20, !86, i64 24}
!481 = !{!478, !86, i64 56}
!482 = !{!478, !91, i64 0}
!483 = !{!484, !91, i64 0}
!484 = !{!"eqn_d", !91, i64 0, !91, i64 4, !91, i64 8, !86, i64 16}
!485 = !{!484, !91, i64 4}
!486 = !{!484, !91, i64 8}
!487 = !{!484, !86, i64 16}
!488 = distinct !{!488, !102, !103}
!489 = distinct !{!489, !102, !103}
!490 = !{!478, !91, i64 12}
!491 = !{!478, !86, i64 48}
!492 = distinct !{!492, !102, !103}
!493 = distinct !{!493, !102, !103}
!494 = !{!478, !91, i64 16}
!495 = !{!478, !86, i64 64}
!496 = distinct !{!496, !102, !103}
!497 = distinct !{!497, !102, !103}
!498 = distinct !{!498, !102, !103}
!499 = distinct !{!499, !102, !103}
!500 = distinct !{!500, !102, !103}
!501 = distinct !{!501, !102, !103}
!502 = !{!478, !86, i64 32}
!503 = !{!478, !86, i64 40}
!504 = distinct !{!504, !102, !103}
!505 = !{!478, !91, i64 20}
!506 = !{!478, !87, i64 24}
!507 = !{!478, !87, i64 25}
!508 = !{!478, !91, i64 4}
!509 = distinct !{!509, !102, !103}
!510 = distinct !{!510, !102, !103}
!511 = distinct !{!511, !102, !103}
!512 = distinct !{!512, !102, !103}
!513 = distinct !{!513, !102, !103}
