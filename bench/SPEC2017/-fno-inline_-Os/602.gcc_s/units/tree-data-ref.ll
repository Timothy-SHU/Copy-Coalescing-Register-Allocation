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
%struct.VEC_data_reference_p_base = type { i32, i32, [1 x ptr] }
%struct.data_reference = type { ptr, ptr, ptr, i8, %struct.innermost_loop_behavior, %struct.indices, %struct.dr_alias, ptr }
%struct.innermost_loop_behavior = type { ptr, ptr, ptr, ptr, ptr }
%struct.indices = type { ptr, ptr }
%struct.dr_alias = type { ptr, ptr }
%struct.VEC_ddr_p_base = type { i32, i32, [1 x ptr] }
%struct.data_dependence_relation = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8 }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.subscript = type { ptr, ptr, ptr, ptr }
%struct.conflict_function = type { i32, [2 x ptr] }
%struct.VEC_lambda_vector_base = type { i32, i32, [1 x ptr] }
%struct.VEC_subscript_p_base = type { i32, i32, [1 x ptr] }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.affine_iv = type { ptr, ptr, i8 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.omega_pb_d = type { i32, i32, i32, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.eqn_d = type { i32, i32, i32, ptr }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.data_ref_loc_d = type { ptr, i8 }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.VEC_data_ref_loc_base = type { i32, i32, [1 x %struct.data_ref_loc_d] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.graph = type { i32, ptr, ptr }
%struct.vertex = type { ptr, ptr, i32, i32, ptr }
%struct.rdg_vertex = type { ptr, i8, i8 }
%struct.graph_edge = type { i32, i32, ptr, ptr, ptr }
%struct.rdg_vertex_info = type { ptr, i32 }
%struct.VEC_gimple_base = type { i32, i32, [1 x ptr] }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.rdg_edge = type { i32, i32, ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.access_matrix = type { ptr, i32, ptr, ptr }

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
@.str.12 = private unnamed_addr constant [15 x i8] c"no dependence\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"not known\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" * x_%u\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"    +\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"    -\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"    =\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"   +=\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"   +-\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"   -=\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"    *\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"indep\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%3d \00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"(Data Dep: \0A\00", align 1
@chrec_dont_know = external local_unnamed_addr global ptr, align 8
@.str.29 = private unnamed_addr constant [11 x i8] c"    (nil)\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"    (don't know)\0A)\0A\00", align 1
@chrec_known = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [21 x i8] c"    (no dependence)\0A\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"  access_fn_A: \00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"  access_fn_B: \00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"  inner loop index: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"  loop nest: (\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.38 = private unnamed_addr constant [20 x i8] c"  distance_vector: \00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"  direction_vector: \00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"+-\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c"+=\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"-=\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"DISTANCE_V (\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"DIRECTION_V (\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@flag_wrapv = external local_unnamed_addr global i32, align 4
@flag_trapv = external local_unnamed_addr global i32, align 4
@flag_strict_overflow = external local_unnamed_addr global i32, align 4
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@.str.50 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.52 = private unnamed_addr constant [20 x i8] c"analyze_innermost: \00", align 1
@.str.53 = private unnamed_addr constant [16 x i8] c"tree-data-ref.c\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"failed: bit offset alignment.\0A\00", align 1
@.str.55 = private unnamed_addr constant [42 x i8] c"failed: evolution of base is not affine.\0A\00", align 1
@.str.56 = private unnamed_addr constant [44 x i8] c"failed: evolution of offset is not affine.\0A\00", align 1
@.str.57 = private unnamed_addr constant [10 x i8] c"success.\0A\00", align 1
@.str.58 = private unnamed_addr constant [17 x i8] c"Creating dr for \00", align 1
@.str.59 = private unnamed_addr constant [16 x i8] c"\09base_address: \00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"\0A\09offset from base address: \00", align 1
@.str.61 = private unnamed_addr constant [38 x i8] c"\0A\09constant offset from base address: \00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"\0A\09step: \00", align 1
@.str.63 = private unnamed_addr constant [15 x i8] c"\0A\09aligned to: \00", align 1
@.str.64 = private unnamed_addr constant [16 x i8] c"\0A\09base_object: \00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.65 = private unnamed_addr constant [28 x i8] c"(compute_affine_dependence\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"  (stmt_a = \0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c")\0A  (stmt_b = \0A\00", align 1
@dependence_stats = internal unnamed_addr global %struct.datadep_stats zeroinitializer, align 4
@flag_check_data_deps = external local_unnamed_addr global i32, align 4
@.str.68 = private unnamed_addr constant [21 x i8] c"\0A\0ABanerjee Analyzer\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"Omega Analyzer\0A\00", align 1
@.str.70 = private unnamed_addr constant [13 x i8] c"Data ref a:\0A\00", align 1
@.str.71 = private unnamed_addr constant [13 x i8] c"Data ref b:\0A\00", align 1
@.str.72 = private unnamed_addr constant [76 x i8] c"affine dependence test not usable: access function not affine or constant.\0A\00", align 1
@.str.73 = private unnamed_addr constant [31 x i8] c"(subscript_dependence_tester \0A\00", align 1
@.str.74 = private unnamed_addr constant [34 x i8] c"(analyze_overlapping_iterations \0A\00", align 1
@.str.75 = private unnamed_addr constant [14 x i8] c"  (chrec_a = \00", align 1
@.str.76 = private unnamed_addr constant [16 x i8] c")\0A  (chrec_b = \00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@.str.77 = private unnamed_addr constant [27 x i8] c"  (overlap_iterations_a = \00", align 1
@.str.78 = private unnamed_addr constant [29 x i8] c")\0A  (overlap_iterations_b = \00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"(analyze_ziv_subscript \0A\00", align 1
@.str.80 = private unnamed_addr constant [45 x i8] c"ziv test failed: difference is non-integer.\0A\00", align 1
@.str.81 = private unnamed_addr constant [25 x i8] c"(analyze_siv_subscript \0A\00", align 1
@.str.82 = private unnamed_addr constant [33 x i8] c"siv test failed: unimplemented.\0A\00", align 1
@.str.83 = private unnamed_addr constant [41 x i8] c"siv test failed: chrec is not positive.\0A\00", align 1
@.str.84 = private unnamed_addr constant [38 x i8] c"siv test failed: chrec not positive.\0A\00", align 1
@.str.85 = private unnamed_addr constant [35 x i8] c"(analyze_subscript_affine_affine \0A\00", align 1
@.str.86 = private unnamed_addr constant [48 x i8] c"affine-affine test failed: too many variables.\0A\00", align 1
@.str.87 = private unnamed_addr constant [43 x i8] c"affine-affine test failed: unimplemented.\0A\00", align 1
@.str.88 = private unnamed_addr constant [17 x i8] c"  (overlaps_a = \00", align 1
@.str.89 = private unnamed_addr constant [19 x i8] c")\0A  (overlaps_b = \00", align 1
@.str.90 = private unnamed_addr constant [15 x i8] c"./tree-chrec.h\00", align 1
@.str.91 = private unnamed_addr constant [49 x i8] c"overlap steps test failed: no iteration counts.\0A\00", align 1
@.str.92 = private unnamed_addr constant [41 x i8] c"can_use_subscript_aff_aff_for_symbolic \0A\00", align 1
@chrec_not_analyzed_yet = external local_unnamed_addr global ptr, align 8
@.str.93 = private unnamed_addr constant [25 x i8] c"(analyze_miv_subscript \0A\00", align 1
@.str.94 = private unnamed_addr constant [51 x i8] c"analyze_miv_subscript test failed: unimplemented.\0A\00", align 1
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@.str.95 = private unnamed_addr constant [28 x i8] c"(build_classic_dist_vector\0A\00", align 1
@.str.96 = private unnamed_addr constant [18 x i8] c"  dist_vector = (\00", align 1
@.str.97 = private unnamed_addr constant [66 x i8] c"(Dependence relation cannot be represented by distance vector.) \0A\00", align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@.str.98 = private unnamed_addr constant [10 x i8] c"./omega.h\00", align 1
@.str.99 = private unnamed_addr constant [69 x i8] c"\0A(Number of distance vectors differ: Banerjee has %d, Omega has %d.\0A\00", align 1
@.str.100 = private unnamed_addr constant [24 x i8] c"Banerjee dist vectors:\0A\00", align 1
@.str.101 = private unnamed_addr constant [21 x i8] c"Omega dist vectors:\0A\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"data dependence relation:\0A\00", align 1
@.str.103 = private unnamed_addr constant [71 x i8] c"\0A(Number of direction vectors differ: Banerjee has %d, Omega has %d.)\0A\00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"\0A(Dist vectors from the first dependence analyzer:\0A\00", align 1
@.str.105 = private unnamed_addr constant [34 x i8] c"not found in Omega dist vectors:\0A\00", align 1
@.str.106 = private unnamed_addr constant [51 x i8] c"\0A(Dir vectors from the first dependence analyzer:\0A\00", align 1
@.str.107 = private unnamed_addr constant [33 x i8] c"not found in Omega dir vectors:\0A\00", align 1
@.str.108 = private unnamed_addr constant [25 x i8] c"(dependence classified: \00", align 1
@.str.109 = private unnamed_addr constant [36 x i8] c"\09FAILED as dr address is invariant\0A\00", align 1
@.str.110 = private unnamed_addr constant [31 x i8] c"Dependence tester statistics:\0A\00", align 1
@.str.111 = private unnamed_addr constant [32 x i8] c"Number of dependence tests: %d\0A\00", align 1
@.str.112 = private unnamed_addr constant [53 x i8] c"Number of dependence tests classified dependent: %d\0A\00", align 1
@.str.113 = private unnamed_addr constant [55 x i8] c"Number of dependence tests classified independent: %d\0A\00", align 1
@.str.114 = private unnamed_addr constant [45 x i8] c"Number of undetermined dependence tests: %d\0A\00", align 1
@.str.115 = private unnamed_addr constant [31 x i8] c"Number of subscript tests: %d\0A\00", align 1
@.str.116 = private unnamed_addr constant [44 x i8] c"Number of undetermined subscript tests: %d\0A\00", align 1
@.str.117 = private unnamed_addr constant [39 x i8] c"Number of same subscript function: %d\0A\00", align 1
@.str.118 = private unnamed_addr constant [25 x i8] c"Number of ziv tests: %d\0A\00", align 1
@.str.119 = private unnamed_addr constant [45 x i8] c"Number of ziv tests returning dependent: %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [47 x i8] c"Number of ziv tests returning independent: %d\0A\00", align 1
@.str.121 = private unnamed_addr constant [39 x i8] c"Number of ziv tests unimplemented: %d\0A\00", align 1
@.str.122 = private unnamed_addr constant [25 x i8] c"Number of siv tests: %d\0A\00", align 1
@.str.123 = private unnamed_addr constant [45 x i8] c"Number of siv tests returning dependent: %d\0A\00", align 1
@.str.124 = private unnamed_addr constant [47 x i8] c"Number of siv tests returning independent: %d\0A\00", align 1
@.str.125 = private unnamed_addr constant [39 x i8] c"Number of siv tests unimplemented: %d\0A\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"Number of miv tests: %d\0A\00", align 1
@.str.127 = private unnamed_addr constant [45 x i8] c"Number of miv tests returning dependent: %d\0A\00", align 1
@.str.128 = private unnamed_addr constant [47 x i8] c"Number of miv tests returning independent: %d\0A\00", align 1
@.str.129 = private unnamed_addr constant [39 x i8] c"Number of miv tests unimplemented: %d\0A\00", align 1
@.str.130 = private unnamed_addr constant [24 x i8] c"(vertex %d: (%s%s) (in:\00", align 1
@.str.131 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.132 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.135 = private unnamed_addr constant [8 x i8] c") (out:\00", align 1
@.str.136 = private unnamed_addr constant [4 x i8] c") \0A\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"(%d\0A\00", align 1
@.str.138 = private unnamed_addr constant [6 x i8] c"(rdg\0A\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@reltable.print_direction_vector = private unnamed_addr constant [7 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.18 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.19 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.24 to i64), i64 ptrtoint (ptr @reltable.print_direction_vector to i64)) to i32)], align 4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_data_references(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %8) #30
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !434

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_reference_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !436 !PGOFuncName !437 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !438

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !439
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !442

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_data_reference(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !428 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %0)
  %4 = load ptr, ptr %1, align 8, !tbaa !443
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %4, i32 noundef 0, i32 noundef 0) #31
  %5 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 8, i64 1, ptr %0)
  %6 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !448
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %7, i32 noundef 0) #31
  %8 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 16, i64 1, ptr %0)
  %9 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !449
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %10, i32 noundef 0) #31
  %11 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !450
  %13 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %12) #30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %2, %15
  %16 = phi i32 [ %20, %15 ], [ 0, %2 ]
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, i32 noundef %16) #30
  %18 = load ptr, ptr %11, align 8, !tbaa !450
  %19 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %16) #30
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %19, i32 noundef 0) #31
  %20 = add nuw i32 %16, 1
  %21 = load ptr, ptr %11, align 8, !tbaa !450
  %22 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %21) #30
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %15, label %24, !llvm.loop !451

24:                                               ; preds = %15, %2
  %25 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_data_references(ptr noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_data_references(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_data_dependence_relations(ptr noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_data_dependence_relations(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_data_dependence_relations(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @dump_data_dependence_relation(ptr noundef %0, ptr noundef %8) #30
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !452

12:                                               ; preds = %6, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ddr_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !453 !PGOFuncName !454 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !455

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !456
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !458

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_data_dependence_relation(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  %4 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 12, i64 1, ptr %0)
  %5 = icmp eq ptr %1, null
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !459
  %9 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %10 = icmp eq ptr %8, %9
  %11 = load ptr, ptr %1, align 8, !tbaa !461
  %12 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !462
  br i1 %10, label %14, label %26

14:                                               ; preds = %6
  %15 = icmp eq ptr %11, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %14
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef nonnull %11) #30
  br label %19

17:                                               ; preds = %14
  %18 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 10, i64 1, ptr %0)
  br label %19

19:                                               ; preds = %17, %16
  %20 = icmp eq ptr %13, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef nonnull %13) #30
  br label %24

22:                                               ; preds = %19
  %23 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 10, i64 1, ptr %0)
  br label %24

24:                                               ; preds = %2, %21, %22
  %25 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %0)
  br label %110

26:                                               ; preds = %6
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %11) #30
  tail call void @dump_data_reference(ptr noundef %0, ptr noundef %13) #30
  %27 = load ptr, ptr %7, align 8, !tbaa !459
  %28 = load ptr, ptr @chrec_known, align 8, !tbaa !430
  %29 = icmp eq ptr %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 20, i64 1, ptr %0)
  br label %108

32:                                               ; preds = %26
  %33 = icmp eq ptr %27, null
  br i1 %33, label %34, label %108

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %35 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !463
  %37 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %36) #30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.data_reference, ptr %11, i64 0, i32 5, i32 1
  %41 = getelementptr inbounds %struct.data_reference, ptr %13, i64 0, i32 5, i32 1
  br label %42

42:                                               ; preds = %39, %42
  %43 = phi i32 [ 0, %39 ], [ %52, %42 ]
  %44 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 15, i64 1, ptr %0)
  %45 = load ptr, ptr %40, align 8, !tbaa !450
  %46 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %45, i32 noundef %43) #30
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %46, i32 noundef 0) #31
  %47 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 15, i64 1, ptr %0)
  %48 = load ptr, ptr %41, align 8, !tbaa !450
  %49 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %48, i32 noundef %43) #30
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %49, i32 noundef 0) #31
  %50 = load ptr, ptr %35, align 8, !tbaa !463
  %51 = tail call fastcc ptr @VEC_subscript_p_base_index(ptr noundef %50, i32 noundef %43) #30
  tail call void @dump_subscript(ptr noundef %0, ptr noundef %51) #30
  %52 = add nuw i32 %43, 1
  %53 = load ptr, ptr %35, align 8, !tbaa !463
  %54 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %53) #30
  %55 = icmp ult i32 %52, %54
  br i1 %55, label %42, label %56, !llvm.loop !464

56:                                               ; preds = %42, %34
  %57 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !465
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %58) #30
  %60 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 14, i64 1, ptr %0)
  %61 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !466
  %63 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %62, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %56, %65
  %66 = phi i32 [ %70, %65 ], [ 0, %56 ]
  %67 = load ptr, ptr %3, align 8, !tbaa !430
  %68 = load i32, ptr %67, align 8, !tbaa !467
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %68) #30
  %70 = add i32 %66, 1
  %71 = load ptr, ptr %61, align 8, !tbaa !466
  %72 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %3) #30, !range !429
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %65, !llvm.loop !472

74:                                               ; preds = %65, %56
  %75 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  %76 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !473
  %78 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %77) #30
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %85, %74
  %81 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 5
  %82 = load ptr, ptr %81, align 8, !tbaa !474
  %83 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %82) #30
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %107, label %96

85:                                               ; preds = %74, %85
  %86 = phi i32 [ %92, %85 ], [ 0, %74 ]
  %87 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 19, i64 1, ptr %0)
  %88 = load ptr, ptr %76, align 8, !tbaa !473
  %89 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %88, i32 noundef %86) #30
  %90 = load ptr, ptr %61, align 8, !tbaa !466
  %91 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %90) #30
  tail call fastcc void @print_lambda_vector(ptr noundef %0, ptr noundef %89, i32 noundef %91) #30
  %92 = add nuw i32 %86, 1
  %93 = load ptr, ptr %76, align 8, !tbaa !473
  %94 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %93) #30
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %85, label %80, !llvm.loop !475

96:                                               ; preds = %80, %96
  %97 = phi i32 [ %103, %96 ], [ 0, %80 ]
  %98 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 20, i64 1, ptr %0)
  %99 = load ptr, ptr %81, align 8, !tbaa !474
  %100 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %99, i32 noundef %97) #30
  %101 = load ptr, ptr %61, align 8, !tbaa !466
  %102 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %101) #30
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %100, i32 noundef %102) #30
  %103 = add nuw i32 %97, 1
  %104 = load ptr, ptr %81, align 8, !tbaa !474
  %105 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %104) #30
  %106 = icmp ult i32 %103, %105
  br i1 %106, label %96, label %107, !llvm.loop !476

107:                                              ; preds = %96, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  br label %108

108:                                              ; preds = %32, %107, %30
  %109 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  br label %110

110:                                              ; preds = %108, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_data_reference(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !428 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_data_reference(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: optsize
declare void @print_gimple_stmt(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @print_generic_stmt(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !477 !PGOFuncName !478 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !479

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !480
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !482 !PGOFuncName !483 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_subscript(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !428 {
  %3 = load ptr, ptr %1, align 8, !tbaa !484
  %4 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 14, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.6, i64 48, i64 1, ptr %0)
  tail call fastcc void @dump_conflict_function(ptr noundef %0, ptr noundef %3) #30
  %6 = load i32, ptr %3, align 8, !tbaa !486
  switch i32 %6, label %7 [
    i32 0, label %11
    i32 3, label %11
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !488
  %10 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %0)
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %9, i32 noundef 0) #31
  br label %11

11:                                               ; preds = %2, %2, %7
  %12 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !489
  %14 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 48, i64 1, ptr %0)
  tail call fastcc void @dump_conflict_function(ptr noundef %0, ptr noundef %13) #30
  %15 = load i32, ptr %13, align 8, !tbaa !486
  switch i32 %15, label %16 [
    i32 0, label %20
    i32 3, label %20
  ]

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !488
  %19 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 17, i64 1, ptr %0)
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %18, i32 noundef 0) #31
  br label %20

20:                                               ; preds = %11, %11, %16
  %21 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %0)
  %22 = getelementptr inbounds %struct.subscript, ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !490
  tail call void @print_generic_stmt(ptr noundef %0, ptr noundef %23, i32 noundef 0) #31
  %24 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 4, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_conflict_function(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !491 {
  %3 = load i32, ptr %1, align 8, !tbaa !486
  switch i32 %3, label %8 [
    i32 0, label %4
    i32 3, label %6
  ]

4:                                                ; preds = %2
  %5 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 14, i64 1, ptr %0)
  br label %18

6:                                                ; preds = %2
  %7 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 10, i64 1, ptr %0)
  br label %18

8:                                                ; preds = %2, %8
  %9 = phi i64 [ %14, %8 ], [ 0, %2 ]
  %10 = tail call i32 @fputc(i32 91, ptr %0)
  %11 = getelementptr inbounds %struct.conflict_function, ptr %1, i64 0, i32 1, i64 %9
  %12 = load ptr, ptr %11, align 8, !tbaa !430
  tail call fastcc void @dump_affine_function(ptr noundef %0, ptr noundef %12) #30
  %13 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 2, i64 1, ptr %0)
  %14 = add nuw nsw i64 %9, 1
  %15 = load i32, ptr %1, align 8, !tbaa !486
  %16 = zext i32 %15 to i64
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %8, label %18, !llvm.loop !492

18:                                               ; preds = %8, %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_affine_function(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !493 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef 0) #30
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %4, i32 noundef 2) #31
  %5 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 1, ptr noundef nonnull %3) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %12, %7 ], [ 1, %2 ]
  %9 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0)
  %10 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @print_generic_expr(ptr noundef %0, ptr noundef %10, i32 noundef 2) #31
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, i32 noundef %8) #30
  %12 = add i32 %8, 1
  %13 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %12, ptr noundef nonnull %3) #30, !range !429
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %7, !llvm.loop !494

15:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !495 !PGOFuncName !496 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !497

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !480
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !498

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_direction_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #6 !prof !428 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %16
  %8 = phi i64 [ 0, %5 ], [ %19, %16 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !499
  %11 = icmp ult i32 %10, 7
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = zext nneg i32 %10 to i64
  %14 = shl i64 %13, 2
  %15 = call ptr @llvm.load.relative.i64(ptr @reltable.print_direction_vector, i64 %14)
  br label %16

16:                                               ; preds = %7, %12
  %17 = phi ptr [ %15, %12 ], [ @.str.25, %7 ]
  %18 = tail call i64 @fwrite(ptr nonnull %17, i64 5, i64 1, ptr %0)
  %19 = add nuw nsw i64 %8, 1
  %20 = icmp eq i64 %19, %6
  br i1 %20, label %21, label %7, !llvm.loop !500

21:                                               ; preds = %16, %3
  %22 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_dir_vectors(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !428 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %10, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !430
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %9, i32 noundef %2) #30
  %10 = add i32 %8, 1
  %11 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %4) #30, !range !429
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !501

13:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_lambda_vector_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !502 !PGOFuncName !503 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !504

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !505
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !507

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @print_dist_vectors(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 !prof !428 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %10, %7 ], [ 0, %3 ]
  %9 = load ptr, ptr %4, align 8, !tbaa !430
  tail call fastcc void @print_lambda_vector(ptr noundef %0, ptr noundef %9, i32 noundef %2) #30
  %10 = add i32 %8, 1
  %11 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %1, i32 noundef %10, ptr noundef nonnull %4) #30, !range !429
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %7, !llvm.loop !508

13:                                               ; preds = %7, %3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @print_lambda_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !prof !428 !PGOFuncName !509 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = zext nneg i32 %2 to i64
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i64 [ 0, %5 ], [ %12, %7 ]
  %9 = getelementptr inbounds i32, ptr %1, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !499
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %10) #30
  %12 = add nuw nsw i64 %8, 1
  %13 = icmp eq i64 %12, %6
  br i1 %13, label %14, label %7, !llvm.loop !510

14:                                               ; preds = %7, %3
  %15 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_data_dependence_relation(ptr noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_data_dependence_relation(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_subscript_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !511 !PGOFuncName !512 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !513

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !514
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_subscript_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !516 !PGOFuncName !517 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_loop_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !518 !PGOFuncName !519 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !520

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !521
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !523

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !524 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !505
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_lambda_vector_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !428 !PGOFuncName !525 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !526 !PGOFuncName !527 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !528

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !521
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_data_dependence_direction(ptr nocapture noundef %0, i32 noundef %1) local_unnamed_addr #6 !prof !428 {
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
  %10 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 2, i64 1, ptr %0)
  br label %17

11:                                               ; preds = %2
  %12 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 2, i64 1, ptr %0)
  br label %17

13:                                               ; preds = %2
  %14 = tail call i64 @fwrite(ptr nonnull @.str.45, i64 2, i64 1, ptr %0)
  br label %17

15:                                               ; preds = %2
  %16 = tail call i32 @fputc(i32 42, ptr %0)
  br label %17

17:                                               ; preds = %2, %15, %13, %11, %9, %7, %5, %3
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_dist_dir_vectors(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %57, label %7

7:                                                ; preds = %2, %53
  %8 = phi i32 [ %54, %53 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !430
  %10 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !459
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %53

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 9
  %15 = load i8, ptr %14, align 1, !tbaa !529
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !473
  %20 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %4) #30, !range !429
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 4
  br label %31

24:                                               ; preds = %31, %17
  %25 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 5
  %26 = load ptr, ptr %25, align 8, !tbaa !474
  %27 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %4) #30, !range !429
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %53, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %9, i64 0, i32 4
  br label %42

31:                                               ; preds = %22, %31
  %32 = phi i32 [ 0, %22 ], [ %38, %31 ]
  %33 = tail call i64 @fwrite(ptr nonnull @.str.47, i64 12, i64 1, ptr %0)
  %34 = load ptr, ptr %4, align 8, !tbaa !430
  %35 = load ptr, ptr %23, align 8, !tbaa !466
  %36 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %35) #30
  tail call fastcc void @print_lambda_vector(ptr noundef %0, ptr noundef %34, i32 noundef %36) #30
  %37 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  %38 = add i32 %32, 1
  %39 = load ptr, ptr %18, align 8, !tbaa !473
  %40 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %39, i32 noundef %38, ptr noundef nonnull %4) #30, !range !429
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %24, label %31, !llvm.loop !530

42:                                               ; preds = %29, %42
  %43 = phi i32 [ 0, %29 ], [ %49, %42 ]
  %44 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 13, i64 1, ptr %0)
  %45 = load ptr, ptr %4, align 8, !tbaa !430
  %46 = load ptr, ptr %30, align 8, !tbaa !466
  %47 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %46) #30
  tail call void @print_direction_vector(ptr noundef %0, ptr noundef %45, i32 noundef %47) #30
  %48 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  %49 = add i32 %43, 1
  %50 = load ptr, ptr %25, align 8, !tbaa !474
  %51 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %50, i32 noundef %49, ptr noundef nonnull %4) #30, !range !429
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %42, !llvm.loop !531

53:                                               ; preds = %42, %24, %7, %13
  %54 = add i32 %8, 1
  %55 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef %54, ptr noundef nonnull %3) #30, !range !429
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %7, !llvm.loop !532

57:                                               ; preds = %53, %2
  %58 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_ddrs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @dump_data_dependence_relation(ptr noundef %0, ptr noundef %8) #30
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef %9, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !llvm.loop !533

12:                                               ; preds = %6, %2
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 2, i64 1, ptr %0)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @split_constant_offset(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !534 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !535
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #29
  store ptr %0, ptr %1, align 8, !tbaa !430
  %11 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #31
  store ptr %11, ptr %2, align 8, !tbaa !430
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #31
  %13 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %12) #30, !range !536
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %30, !prof !537

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !535
  %18 = load i64, ptr %12, align 8
  %19 = trunc i64 %18 to i32
  %20 = and i32 %19, 65535
  store i32 %20, ptr %8, align 4, !tbaa !499
  call void @extract_ops_from_tree(ptr noundef nonnull %12, ptr noundef nonnull %8, ptr noundef nonnull %4, ptr noundef nonnull %5) #31
  %21 = load ptr, ptr %4, align 8, !tbaa !430
  %22 = load i32, ptr %8, align 4, !tbaa !499
  %23 = load ptr, ptr %5, align 8, !tbaa !430
  %24 = call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %17, ptr noundef %21, i32 noundef %22, ptr noundef %23, ptr noundef nonnull %6, ptr noundef nonnull %7) #30, !range !536
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %30, label %26, !prof !538

26:                                               ; preds = %15
  %27 = load ptr, ptr %6, align 8, !tbaa !430
  %28 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %10, ptr noundef %27) #31
  store ptr %28, ptr %1, align 8, !tbaa !430
  %29 = load ptr, ptr %7, align 8, !tbaa !430
  store ptr %29, ptr %2, align 8, !tbaa !430
  br label %30

30:                                               ; preds = %15, %26, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef readnone %0) unnamed_addr #7 !prof !539 !PGOFuncName !540 {
  %2 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %3 = icmp eq ptr %2, %0
  %4 = load ptr, ptr @chrec_known, align 8
  %5 = icmp eq ptr %4, %0
  %6 = select i1 %3, i1 true, i1 %5, !prof !541
  %7 = zext i1 %6 to i8
  ret i8 %7
}

; Function Attrs: optsize
declare void @extract_ops_from_tree(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @split_constant_offset_1(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) unnamed_addr #0 !prof !542 !PGOFuncName !543 {
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #29
  store ptr null, ptr %4, align 8, !tbaa !430
  store ptr null, ptr %5, align 8, !tbaa !430
  switch i32 %2, label %132 [
    i32 23, label %17
    i32 66, label %21
    i32 63, label %22
    i32 64, label %22
    i32 65, label %30
    i32 121, label %41
    i32 141, label %91
    i32 116, label %101
    i32 113, label %101
  ], !prof !544

17:                                               ; preds = %6
  %18 = tail call ptr @build_int_cst(ptr noundef %0, i64 noundef 0) #31
  store ptr %18, ptr %4, align 8, !tbaa !430
  %19 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !430
  %20 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %19, ptr noundef %1) #31
  store ptr %20, ptr %5, align 8, !tbaa !430
  br label %132

21:                                               ; preds = %6
  br label %22

22:                                               ; preds = %6, %6, %21
  %23 = phi i32 [ %2, %6 ], [ %2, %6 ], [ 63, %21 ]
  call void @split_constant_offset(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9) #30
  call void @split_constant_offset(ptr noundef %3, ptr noundef nonnull %8, ptr noundef nonnull %10) #30
  %24 = load ptr, ptr %7, align 8, !tbaa !430
  %25 = load ptr, ptr %8, align 8, !tbaa !430
  %26 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %2, ptr noundef %0, ptr noundef %24, ptr noundef %25) #31
  store ptr %26, ptr %4, align 8, !tbaa !430
  %27 = load ptr, ptr %9, align 8, !tbaa !430
  %28 = load ptr, ptr %10, align 8, !tbaa !430
  %29 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef %23, ptr noundef %27, ptr noundef %28) #31
  store ptr %29, ptr %5, align 8, !tbaa !430
  br label %132

30:                                               ; preds = %6
  %31 = load i64, ptr %3, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 23
  br i1 %33, label %34, label %132, !prof !545

34:                                               ; preds = %30
  call void @split_constant_offset(ptr noundef %1, ptr noundef nonnull %7, ptr noundef nonnull %9) #30
  %35 = load ptr, ptr %7, align 8, !tbaa !430
  %36 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 65, ptr noundef %0, ptr noundef %35, ptr noundef nonnull %3) #31
  store ptr %36, ptr %4, align 8, !tbaa !430
  %37 = load ptr, ptr %9, align 8, !tbaa !430
  %38 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !430
  %39 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %38, ptr noundef nonnull %3) #31
  %40 = tail call ptr @size_binop_loc(i32 noundef 0, i32 noundef 65, ptr noundef %37, ptr noundef %39) #31
  store ptr %40, ptr %5, align 8, !tbaa !430
  br label %132

41:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16) #29
  %42 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !535
  %44 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %43) #30, !range !536
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %89, label %46, !prof !546

46:                                               ; preds = %41
  %47 = call ptr @get_inner_reference(ptr noundef %43, ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %11, ptr noundef nonnull %14, ptr noundef nonnull %15, ptr noundef nonnull %16, i8 noundef zeroext 0) #31
  %48 = load i64, ptr %13, align 8, !tbaa !547
  %49 = and i64 %48, 7
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %89, !prof !548

51:                                               ; preds = %46
  %52 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %47) #31
  %53 = load i64, ptr %13, align 8, !tbaa !547
  %54 = sdiv i64 %53, 8
  %55 = call ptr @size_int_kind(i64 noundef %54, i32 noundef 1) #31
  %56 = load ptr, ptr %11, align 8, !tbaa !430
  %57 = icmp eq ptr %56, null
  br i1 %57, label %74, label %58, !prof !549

58:                                               ; preds = %51
  call void @split_constant_offset(ptr noundef nonnull %56, ptr noundef nonnull %11, ptr noundef nonnull %10) #30
  %59 = load ptr, ptr %10, align 8, !tbaa !430
  %60 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %55, ptr noundef %59) #31
  %61 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !535
  %63 = load i64, ptr %62, align 8
  %64 = trunc i64 %63 to i16
  switch i16 %64, label %70 [
    i16 10, label %65
    i16 12, label %65
  ], !prof !550

65:                                               ; preds = %58, %58
  %66 = load ptr, ptr @sizetype_tab, align 16, !tbaa !430
  %67 = load ptr, ptr %11, align 8, !tbaa !430
  %68 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %66, ptr noundef %67) #31
  %69 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 66, ptr noundef nonnull %62, ptr noundef nonnull %52, ptr noundef %68) #31
  br label %74

70:                                               ; preds = %58
  %71 = load ptr, ptr %11, align 8, !tbaa !430
  %72 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %62, ptr noundef %71) #31
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 63, ptr noundef nonnull %62, ptr noundef nonnull %52, ptr noundef %72) #31
  br label %74

74:                                               ; preds = %65, %70, %51
  %75 = phi ptr [ %60, %65 ], [ %60, %70 ], [ %55, %51 ]
  %76 = phi ptr [ %69, %65 ], [ %73, %70 ], [ %52, %51 ]
  %77 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %0, ptr noundef %76) #31
  br label %78

78:                                               ; preds = %82, %74
  %79 = phi ptr [ %0, %74 ], [ %84, %82 ]
  %80 = load i64, ptr %79, align 8
  %81 = trunc i64 %80 to i16
  switch i16 %81, label %85 [
    i16 10, label %82
    i16 12, label %82
  ], !prof !551

82:                                               ; preds = %78, %78
  %83 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !535
  br label %78, !llvm.loop !552

85:                                               ; preds = %78
  %86 = call i64 @int_size_in_bytes(ptr noundef nonnull %79) #31
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %89, label %88, !prof !553

88:                                               ; preds = %85
  store ptr %77, ptr %4, align 8, !tbaa !430
  store ptr %75, ptr %5, align 8, !tbaa !430
  br label %89

89:                                               ; preds = %85, %46, %41, %88
  %90 = phi i8 [ 1, %88 ], [ 0, %41 ], [ 0, %46 ], [ 0, %85 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #29
  br label %132

91:                                               ; preds = %6
  %92 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !535
  %94 = tail call fastcc i32 @gimple_code(ptr noundef %93) #30, !range !554
  %95 = icmp eq i32 %94, 6
  br i1 %95, label %96, label %132, !prof !555

96:                                               ; preds = %91
  %97 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %93) #30
  %98 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %93) #30, !range !556
  %99 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %93) #30
  %100 = tail call fastcc zeroext i8 @split_constant_offset_1(ptr noundef %0, ptr noundef %97, i32 noundef %98, ptr noundef %99, ptr noundef nonnull %4, ptr noundef nonnull %5) #30, !range !536
  br label %132

101:                                              ; preds = %6, %6
  %102 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !535
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i16
  switch i16 %105, label %132 [
    i16 10, label %118
    i16 12, label %118
    i16 6, label %106
    i16 7, label %106
    i16 8, label %106
  ], !prof !557

106:                                              ; preds = %101, %101, %101
  %107 = and i64 %104, 2097152
  %108 = icmp eq i64 %107, 0
  %109 = load i32, ptr @flag_wrapv, align 4
  %110 = icmp eq i32 %109, 0
  %111 = select i1 %108, i1 %110, i1 false
  %112 = load i32, ptr @flag_trapv, align 4
  %113 = icmp eq i32 %112, 0
  %114 = select i1 %111, i1 %113, i1 false
  %115 = load i32, ptr @flag_strict_overflow, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %132, !prof !558

118:                                              ; preds = %101, %101, %106
  %119 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %120 = load i32, ptr %119, align 4
  %121 = and i32 %120, 1023
  %122 = getelementptr inbounds %struct.tree_type, ptr %103, i64 0, i32 6
  %123 = load i32, ptr %122, align 4
  %124 = and i32 %123, 1023
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %132, label %126, !prof !559

126:                                              ; preds = %118
  %127 = load i64, ptr %0, align 8
  %128 = trunc i64 %127 to i16
  switch i16 %128, label %132 [
    i16 10, label %129
    i16 12, label %129
    i16 6, label %129
    i16 7, label %129
    i16 8, label %129
  ], !prof !560

129:                                              ; preds = %126, %126, %126, %126, %126
  call void @split_constant_offset(ptr noundef nonnull %1, ptr noundef nonnull %7, ptr noundef nonnull %5) #30
  %130 = load ptr, ptr %7, align 8, !tbaa !430
  %131 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %0, ptr noundef %130) #31
  store ptr %131, ptr %4, align 8, !tbaa !430
  br label %132

132:                                              ; preds = %6, %129, %126, %101, %118, %106, %96, %91, %30, %89, %34, %22, %17
  %133 = phi i8 [ %90, %89 ], [ 1, %34 ], [ 1, %22 ], [ 1, %17 ], [ 0, %30 ], [ %100, %96 ], [ 0, %91 ], [ 1, %129 ], [ 0, %126 ], [ 0, %101 ], [ 0, %118 ], [ 0, %106 ], [ 0, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  ret i8 %133
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @size_binop_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !561 !PGOFuncName !562 {
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
  ], !prof !563

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare ptr @get_inner_reference(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @int_size_in_bytes(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !564 !PGOFuncName !565 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !566 !PGOFuncName !567 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #30
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !568 !PGOFuncName !569 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #30, !range !556
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #30, !range !554
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !570

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #30
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !568 !PGOFuncName !571 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #30
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !572

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #30
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !573 !PGOFuncName !574 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !575

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #30
  %7 = zext nneg i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !430
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !576 !PGOFuncName !577 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #30, !range !554
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !576 !PGOFuncName !578 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #30
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !547
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !579

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.50, i32 noundef 1622, ptr noundef nonnull @.str.51) #31
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !576 !PGOFuncName !580 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #30, !range !554
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #30
  ret i32 %3
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #8 !prof !576 !PGOFuncName !581 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !499
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !568 !PGOFuncName !582 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #30, !range !554
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !583

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.50, i32 noundef 1446, ptr noundef nonnull @.str.51) #31
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #8 !prof !568 !PGOFuncName !584 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !535
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !585 !PGOFuncName !586 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !535
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @dr_analyze_innermost(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !587 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.affine_iv, align 8
  %9 = alloca %struct.affine_iv, align 8
  %10 = alloca ptr, align 8
  %11 = load ptr, ptr %0, align 8, !tbaa !443
  %12 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %11) #30
  %13 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !448
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #29
  %15 = icmp eq ptr %12, null
  br i1 %15, label %19, label %16, !prof !588

16:                                               ; preds = %1
  %17 = load i32, ptr %12, align 8, !tbaa !467
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %16, %1
  %20 = phi i1 [ true, %1 ], [ %18, %16 ]
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23, !prof !589

23:                                               ; preds = %19
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 19, i64 1, ptr nonnull %21)
  br label %29

29:                                               ; preds = %27, %23, %19
  %30 = call ptr @get_inner_reference(ptr noundef %14, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i8 noundef zeroext 0) #31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33, !prof !588

32:                                               ; preds = %29
  call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 742, ptr noundef nonnull @.str.51) #31
  br label %33

33:                                               ; preds = %29, %32
  %34 = load i64, ptr %3, align 8, !tbaa !547
  %35 = and i64 %34, 7
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %46, label %37, !prof !590

37:                                               ; preds = %33
  %38 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %39 = icmp eq ptr %38, null
  br i1 %39, label %129, label %40, !prof !591

40:                                               ; preds = %37
  %41 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %129, label %44

44:                                               ; preds = %40
  %45 = call i64 @fwrite(ptr nonnull @.str.54, i64 30, i64 1, ptr nonnull %38)
  br label %129

46:                                               ; preds = %33
  %47 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %30) #31
  br i1 %20, label %61, label %48, !prof !592

48:                                               ; preds = %46
  %49 = call fastcc ptr @loop_containing_stmt(ptr noundef %11) #30
  %50 = call zeroext i8 @simple_iv(ptr noundef %12, ptr noundef %49, ptr noundef %47, ptr noundef nonnull %8, i8 noundef zeroext 0) #31
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %67, !prof !593

52:                                               ; preds = %48
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %54 = icmp eq ptr %53, null
  br i1 %54, label %129, label %55, !prof !594

55:                                               ; preds = %52
  %56 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %129, label %59

59:                                               ; preds = %55
  %60 = call i64 @fwrite(ptr nonnull @.str.55, i64 41, i64 1, ptr nonnull %53)
  br label %129

61:                                               ; preds = %46
  store ptr %47, ptr %8, align 8, !tbaa !595
  %62 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #31
  %63 = getelementptr inbounds %struct.affine_iv, ptr %8, i64 0, i32 1
  store ptr %62, ptr %63, align 8, !tbaa !597
  %64 = getelementptr inbounds %struct.affine_iv, ptr %8, i64 0, i32 2
  store i8 1, ptr %64, align 8, !tbaa !598
  %65 = load ptr, ptr %4, align 8, !tbaa !430
  %66 = icmp eq ptr %65, null
  br i1 %66, label %70, label %85, !prof !599

67:                                               ; preds = %48
  %68 = load ptr, ptr %4, align 8, !tbaa !430
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %72, !prof !599

70:                                               ; preds = %67, %61
  %71 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #31
  br label %85

72:                                               ; preds = %67
  %73 = call fastcc ptr @loop_containing_stmt(ptr noundef %11) #30
  %74 = call zeroext i8 @simple_iv(ptr noundef %12, ptr noundef %73, ptr noundef nonnull %68, ptr noundef nonnull %9, i8 noundef zeroext 0) #31
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %89, !prof !600

76:                                               ; preds = %72
  %77 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %78 = icmp eq ptr %77, null
  br i1 %78, label %129, label %79, !prof !601

79:                                               ; preds = %76
  %80 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %129, label %83

83:                                               ; preds = %79
  %84 = call i64 @fwrite(ptr nonnull @.str.56, i64 43, i64 1, ptr nonnull %77)
  br label %129

85:                                               ; preds = %61, %70
  %86 = phi ptr [ %71, %70 ], [ %65, %61 ]
  store ptr %86, ptr %9, align 8, !tbaa !595
  %87 = call ptr @size_int_kind(i64 noundef 0, i32 noundef 1) #31
  %88 = getelementptr inbounds %struct.affine_iv, ptr %9, i64 0, i32 1
  store ptr %87, ptr %88, align 8, !tbaa !597
  br label %89

89:                                               ; preds = %85, %72
  %90 = load i64, ptr %3, align 8, !tbaa !547
  %91 = sdiv i64 %90, 8
  %92 = call ptr @size_int_kind(i64 noundef %91, i32 noundef 1) #31
  %93 = load ptr, ptr %8, align 8, !tbaa !595
  call void @split_constant_offset(ptr noundef %93, ptr noundef nonnull %8, ptr noundef nonnull %10) #30
  %94 = load ptr, ptr %10, align 8, !tbaa !430
  %95 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %92, ptr noundef %94) #31
  %96 = load ptr, ptr %9, align 8, !tbaa !595
  call void @split_constant_offset(ptr noundef %96, ptr noundef nonnull %9, ptr noundef nonnull %10) #30
  %97 = load ptr, ptr %10, align 8, !tbaa !430
  %98 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %95, ptr noundef %97) #31
  %99 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !430
  %100 = getelementptr inbounds %struct.affine_iv, ptr %8, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !597
  %102 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %99, ptr noundef %101) #31
  %103 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !430
  %104 = getelementptr inbounds %struct.affine_iv, ptr %9, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !597
  %106 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %103, ptr noundef %105) #31
  %107 = call ptr @size_binop_loc(i32 noundef 0, i32 noundef 63, ptr noundef %102, ptr noundef %106) #31
  %108 = load ptr, ptr %8, align 8, !tbaa !595
  %109 = call fastcc ptr @canonicalize_base_object_address(ptr noundef %108) #30
  %110 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  store ptr %109, ptr %110, align 8, !tbaa !602
  %111 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @sizetype_tab, i64 0, i64 1), align 8, !tbaa !430
  %112 = load ptr, ptr %9, align 8, !tbaa !595
  %113 = call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %111, ptr noundef %112) #31
  %114 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 1
  store ptr %113, ptr %114, align 8, !tbaa !603
  %115 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 2
  store ptr %98, ptr %115, align 8, !tbaa !604
  %116 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 3
  store ptr %107, ptr %116, align 8, !tbaa !605
  %117 = load ptr, ptr %9, align 8, !tbaa !595
  %118 = call i64 @highest_pow2_factor(ptr noundef %117) #31
  %119 = call ptr @size_int_kind(i64 noundef %118, i32 noundef 0) #31
  %120 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4, i32 4
  store ptr %119, ptr %120, align 8, !tbaa !606
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123, !prof !607

123:                                              ; preds = %89
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %123
  %128 = call i64 @fwrite(ptr nonnull @.str.57, i64 9, i64 1, ptr nonnull %121)
  br label %129

129:                                              ; preds = %89, %123, %127, %76, %79, %83, %52, %55, %59, %37, %40, %44
  %130 = phi i8 [ 0, %44 ], [ 0, %40 ], [ 0, %37 ], [ 0, %59 ], [ 0, %55 ], [ 0, %52 ], [ 0, %83 ], [ 0, %79 ], [ 0, %76 ], [ 1, %127 ], [ 1, %123 ], [ 1, %89 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret i8 %130
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_containing_stmt(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !608 !PGOFuncName !609 {
  %2 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #30
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4, !prof !610

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !611
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @simple_iv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @canonicalize_base_object_address(ptr noundef %0) unnamed_addr #0 !prof !613 !PGOFuncName !614 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #31
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !535
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %15 [
    i16 10, label %7
    i16 12, label %7
  ], !prof !615

7:                                                ; preds = %1, %1
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 121
  br i1 %10, label %11, label %15, !prof !616

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !535
  %14 = tail call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %13) #31
  br label %15

15:                                               ; preds = %7, %1, %11
  %16 = phi ptr [ %14, %11 ], [ %0, %1 ], [ %2, %7 ]
  ret ptr %16
}

; Function Attrs: optsize
declare i64 @highest_pow2_factor(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !608 !PGOFuncName !617 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !535
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define dso_local void @free_data_ref(ptr nocapture noundef %0) local_unnamed_addr #10 !prof !618 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  tail call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #30
  tail call void @free(ptr noundef %0) #30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !619 !PGOFuncName !620 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !621

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_data_ref(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !587 {
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7, !prof !589

7:                                                ; preds = %4
  %8 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %9 = and i32 %8, 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 16, i64 1, ptr nonnull %5)
  %13 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @print_generic_expr(ptr noundef %13, ptr noundef %1, i32 noundef 2) #31
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %15 = tail call i32 @fputc(i32 10, ptr %14)
  br label %16

16:                                               ; preds = %11, %7, %4
  %17 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #31
  store ptr %2, ptr %17, align 8, !tbaa !443
  %18 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 1
  store ptr %1, ptr %18, align 8, !tbaa !448
  %19 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 3
  store i8 %3, ptr %19, align 8, !tbaa !622
  %20 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %17) #30, !range !536
  tail call fastcc void @dr_analyze_indices(ptr noundef nonnull %17, ptr noundef %0) #30
  tail call fastcc void @dr_analyze_alias(ptr noundef nonnull %17) #30
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %22 = icmp eq ptr %21, null
  br i1 %22, label %59, label %23, !prof !589

23:                                               ; preds = %16
  %24 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %25 = and i32 %24, 8
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %59, label %27

27:                                               ; preds = %23
  %28 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 15, i64 1, ptr nonnull %21)
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %30 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !602
  tail call void @print_generic_expr(ptr noundef %29, ptr noundef %31, i32 noundef 2) #31
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %33 = tail call i64 @fwrite(ptr nonnull @.str.60, i64 28, i64 1, ptr %32)
  %34 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %35 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !603
  tail call void @print_generic_expr(ptr noundef %34, ptr noundef %36, i32 noundef 2) #31
  %37 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %38 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 37, i64 1, ptr %37)
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %40 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !604
  tail call void @print_generic_expr(ptr noundef %39, ptr noundef %41, i32 noundef 2) #31
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %43 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 8, i64 1, ptr %42)
  %44 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %45 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !605
  tail call void @print_generic_expr(ptr noundef %44, ptr noundef %46, i32 noundef 2) #31
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %48 = tail call i64 @fwrite(ptr nonnull @.str.63, i64 14, i64 1, ptr %47)
  %49 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %50 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 4, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !606
  tail call void @print_generic_expr(ptr noundef %49, ptr noundef %51, i32 noundef 2) #31
  %52 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %53 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 15, i64 1, ptr %52)
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %55 = getelementptr inbounds %struct.data_reference, ptr %17, i64 0, i32 5
  %56 = load ptr, ptr %55, align 8, !tbaa !449
  tail call void @print_generic_expr(ptr noundef %54, ptr noundef %56, i32 noundef 2) #31
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %58 = tail call i32 @fputc(i32 10, ptr %57)
  br label %59

59:                                               ; preds = %27, %23, %16
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dr_analyze_indices(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !587 !PGOFuncName !623 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !443
  %7 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %6) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  store ptr null, ptr %3, align 8, !tbaa !430
  %8 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !448
  %10 = tail call ptr @unshare_expr(ptr noundef %9) #31
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %11 = icmp eq ptr %1, null
  br i1 %11, label %14, label %12, !prof !624

12:                                               ; preds = %2
  %13 = tail call fastcc ptr @block_before_loop(ptr noundef nonnull %1) #30
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi ptr [ %13, %12 ], [ null, %2 ]
  %16 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %10) #30, !range !536
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %38, label %18, !prof !625

18:                                               ; preds = %14, %33
  %19 = phi ptr [ %35, %33 ], [ %10, %14 ]
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 45
  br i1 %22, label %23, label %33, !prof !626

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !535
  br i1 %11, label %29, label %26, !prof !627

26:                                               ; preds = %23
  %27 = tail call ptr @analyze_scalar_evolution(ptr noundef %7, ptr noundef %25) #31
  %28 = tail call ptr @instantiate_scev(ptr noundef %15, ptr noundef %7, ptr noundef %27) #31
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %28) #30
  br label %29

29:                                               ; preds = %26, %23
  %30 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !535
  %32 = tail call ptr @build_int_cst(ptr noundef %31, i64 noundef 0) #31
  store ptr %32, ptr %24, align 8, !tbaa !535
  br label %33

33:                                               ; preds = %29, %18
  %34 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !535
  %36 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %35) #30, !range !536
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %18, !prof !628, !llvm.loop !629

38:                                               ; preds = %33, %14
  %39 = phi ptr [ %10, %14 ], [ %35, %33 ]
  br i1 %11, label %58, label %40, !prof !624

40:                                               ; preds = %38
  %41 = load i64, ptr %39, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -47
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %58, !prof !630

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !535
  %49 = tail call ptr @analyze_scalar_evolution(ptr noundef %7, ptr noundef %48) #31
  %50 = tail call ptr @instantiate_scev(ptr noundef %15, ptr noundef %7, ptr noundef %49) #31
  %51 = tail call ptr @initial_condition(ptr noundef %50) #31
  store ptr %51, ptr %4, align 8, !tbaa !430
  call void @split_constant_offset(ptr noundef %51, ptr noundef nonnull %4, ptr noundef nonnull %5) #30
  %52 = load ptr, ptr %4, align 8, !tbaa !430
  %53 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !535
  %55 = load ptr, ptr %5, align 8, !tbaa !430
  %56 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %54, ptr noundef %55) #31
  %57 = tail call ptr @chrec_replace_initial_condition(ptr noundef %50, ptr noundef %56) #31
  store ptr %52, ptr %47, align 8, !tbaa !535
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %57) #30
  br label %58

58:                                               ; preds = %40, %46, %38
  %59 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  store ptr %10, ptr %59, align 8, !tbaa !449
  %60 = load ptr, ptr %3, align 8, !tbaa !430
  %61 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !450
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dr_analyze_alias(ptr nocapture noundef %0) unnamed_addr #0 !prof !587 !PGOFuncName !631 {
  %2 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !448
  %4 = tail call ptr @get_base_address(ptr noundef %3) #31
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -47
  %9 = icmp ult i32 %8, 3
  br i1 %9, label %10, label %20, !prof !632

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !535
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 141
  br i1 %15, label %16, label %20, !prof !633

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !535
  %19 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 6
  store ptr %18, ptr %19, align 8, !tbaa !634
  br label %20

20:                                               ; preds = %1, %10, %16
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @block_before_loop(ptr noundef %0) unnamed_addr #0 !prof !635 !PGOFuncName !636 {
  %2 = tail call ptr @loop_preheader_edge(ptr noundef %0) #31
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %8, !prof !637

4:                                                ; preds = %1
  %5 = load ptr, ptr @cfun, align 8, !tbaa !430
  %6 = getelementptr inbounds %struct.function, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !638
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi ptr [ %7, %4 ], [ %2, %1 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !430
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @analyze_scalar_evolution(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @instantiate_scev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !640 !PGOFuncName !641 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: optsize
declare ptr @initial_condition(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @chrec_replace_initial_condition(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @loop_preheader_edge(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !640 !PGOFuncName !642 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !643

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !644 !PGOFuncName !645 {
  %3 = load i32, ptr %0, align 8, !tbaa !480
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !480
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !640 !PGOFuncName !646 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !647

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !648
  %6 = load i32, ptr %0, align 8, !tbaa !480
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @dr_may_alias_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !649 {
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !602
  %5 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !602
  %7 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !449
  %9 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !449
  %11 = tail call fastcc zeroext i8 @disjoint_objects_p(ptr noundef %8, ptr noundef %10) #30, !range !536
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %138, !prof !650

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 3
  %15 = load i8, ptr %14, align 8, !tbaa !622
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %18 = load i8, ptr %17, align 8, !tbaa !622
  %19 = icmp eq i8 %18, 0
  br i1 %16, label %20, label %28, !prof !651

20:                                               ; preds = %13
  br i1 %19, label %21, label %36, !prof !652

21:                                               ; preds = %20
  %22 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !448
  %24 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !448
  %26 = tail call zeroext i8 @refs_output_dependent_p(ptr noundef %23, ptr noundef %25) #31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %138, label %43, !prof !653

28:                                               ; preds = %13
  br i1 %19, label %29, label %36, !prof !654

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !448
  %32 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !448
  %34 = tail call zeroext i8 @refs_anti_dependent_p(ptr noundef %31, ptr noundef %33) #31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %138, label %43, !prof !655

36:                                               ; preds = %20, %28
  %37 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !448
  %39 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !448
  %41 = tail call zeroext i8 @refs_may_alias_p(ptr noundef %38, ptr noundef %40) #31
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %138, label %43, !prof !656

43:                                               ; preds = %29, %36, %21
  %44 = icmp ne ptr %4, null
  %45 = icmp ne ptr %6, null
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %138, !prof !657

47:                                               ; preds = %43
  %48 = load i64, ptr %4, align 8
  %49 = and i64 %48, 65535
  %50 = icmp eq i64 %49, 121
  br i1 %50, label %51, label %62, !prof !658

51:                                               ; preds = %47
  %52 = load i64, ptr %6, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 121
  br i1 %54, label %55, label %62, !prof !659

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !535
  %58 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !535
  %60 = icmp eq ptr %57, %59
  %61 = zext i1 %60 to i8
  br label %138

62:                                               ; preds = %51, %47
  %63 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !535
  %65 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !535
  %67 = load i64, ptr %64, align 8
  %68 = trunc i64 %67 to i16
  switch i16 %68, label %72 [
    i16 10, label %69
    i16 12, label %69
  ], !prof !660

69:                                               ; preds = %62, %62
  %70 = load i64, ptr %66, align 8
  %71 = trunc i64 %70 to i16
  switch i16 %71, label %72 [
    i16 10, label %74
    i16 12, label %74
  ], !prof !660

72:                                               ; preds = %69, %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1331, ptr noundef nonnull @.str.51) #31
  %73 = load i64, ptr %4, align 8
  br label %74

74:                                               ; preds = %69, %69, %72
  %75 = phi i64 [ %48, %69 ], [ %48, %69 ], [ %73, %72 ]
  %76 = and i64 %75, 65535
  %77 = icmp eq i64 %76, 141
  br i1 %77, label %78, label %81, !prof !661

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !535
  br label %81

81:                                               ; preds = %78, %74
  %82 = phi ptr [ %80, %78 ], [ null, %74 ]
  %83 = load i64, ptr %6, align 8
  %84 = and i64 %83, 65535
  %85 = icmp eq i64 %84, 141
  br i1 %85, label %86, label %89, !prof !662

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.tree_ssa_name, ptr %6, i64 0, i32 1
  %88 = load ptr, ptr %87, align 8, !tbaa !535
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi ptr [ %88, %86 ], [ null, %81 ]
  %91 = getelementptr inbounds %struct.tree_type, ptr %64, i64 0, i32 6
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 8192
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %137, label %95, !prof !663

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = and i32 %97, 8192
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %95
  %101 = load i8, ptr %14, align 8, !tbaa !622
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %109, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 3
  %105 = load i8, ptr %104, align 8, !tbaa !622
  %106 = icmp eq i8 %105, 0
  %107 = icmp ne ptr %82, null
  %108 = select i1 %106, i1 %107, i1 false
  br i1 %108, label %111, label %137

109:                                              ; preds = %100
  %110 = icmp eq ptr %82, null
  br i1 %110, label %137, label %111

111:                                              ; preds = %103, %109
  %112 = load i64, ptr %82, align 8
  %113 = and i64 %112, 65535
  %114 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %113
  %115 = load i32, ptr %114, align 4, !tbaa !499
  %116 = icmp eq i32 %115, 3
  %117 = icmp ne ptr %90, null
  %118 = select i1 %116, i1 %117, i1 false
  br i1 %118, label %119, label %137

119:                                              ; preds = %111
  %120 = load i64, ptr %90, align 8
  %121 = and i64 %120, 65535
  %122 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %121
  %123 = load i32, ptr %122, align 4, !tbaa !499
  %124 = icmp ne i32 %123, 3
  %125 = icmp eq ptr %82, %90
  %126 = select i1 %124, i1 true, i1 %125
  br i1 %126, label %137, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.tree_decl_minimal, ptr %82, i64 0, i32 4
  %129 = load ptr, ptr %128, align 8, !tbaa !535
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 65535
  %132 = icmp eq i64 %131, 29
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = getelementptr inbounds %struct.tree_decl_minimal, ptr %90, i64 0, i32 4
  %135 = load ptr, ptr %134, align 8, !tbaa !535
  %136 = icmp eq ptr %129, %135
  br i1 %136, label %138, label %137

137:                                              ; preds = %133, %127, %119, %111, %109, %103, %95, %89
  br label %138

138:                                              ; preds = %133, %43, %36, %29, %21, %2, %137, %55
  %139 = phi i8 [ %61, %55 ], [ 1, %137 ], [ 0, %2 ], [ 0, %21 ], [ 0, %29 ], [ 0, %36 ], [ 1, %43 ], [ 0, %133 ]
  ret i8 %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @disjoint_objects_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !649 !PGOFuncName !664 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  store ptr null, ptr %3, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  store ptr null, ptr %4, align 8, !tbaa !430
  %5 = tail call ptr @get_base_address(ptr noundef %0) #31
  %6 = tail call ptr @get_base_address(ptr noundef %1) #31
  %7 = load i64, ptr %5, align 8
  %8 = and i64 %7, 65535
  %9 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !499
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %12, label %20, !prof !665

12:                                               ; preds = %2
  %13 = load i64, ptr %6, align 8
  %14 = and i64 %13, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !499
  %17 = icmp ne i32 %16, 3
  %18 = icmp eq ptr %5, %6
  %19 = select i1 %17, i1 true, i1 %18
  br i1 %19, label %20, label %88, !prof !666

20:                                               ; preds = %12, %2
  %21 = tail call i32 @operand_equal_p(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 0) #31
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %88, label %23, !prof !667

23:                                               ; preds = %20
  %24 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #30, !range !536
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %29, !prof !668

26:                                               ; preds = %29, %23
  %27 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #30, !range !536
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %35, label %41, !prof !668

29:                                               ; preds = %23, %29
  %30 = phi ptr [ %32, %29 ], [ %0, %23 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %3, ptr noundef %30) #30
  %31 = getelementptr inbounds %struct.tree_exp, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !535
  %33 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %32) #30, !range !536
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %26, label %29, !prof !669, !llvm.loop !670

35:                                               ; preds = %41, %26
  %36 = load ptr, ptr %3, align 8
  %37 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %36) #30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %86, label %39, !prof !671

39:                                               ; preds = %35
  %40 = load ptr, ptr %4, align 8
  br label %47

41:                                               ; preds = %26, %41
  %42 = phi ptr [ %44, %41 ], [ %1, %26 ]
  call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %4, ptr noundef %42) #30
  %43 = getelementptr inbounds %struct.tree_exp, ptr %42, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !535
  %45 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %44) #30, !range !536
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %35, label %41, !prof !672, !llvm.loop !673

47:                                               ; preds = %39, %74
  %48 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %40) #30
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %86, label %50, !prof !674

50:                                               ; preds = %47
  %51 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %36) #30
  %52 = tail call fastcc ptr @VEC_tree_base_pop(ptr noundef %40) #30
  %53 = load i64, ptr %51, align 8
  %54 = trunc i64 %53 to i16
  %55 = load i64, ptr %52, align 8
  switch i16 %54, label %62 [
    i16 43, label %56
    i16 44, label %59
  ], !prof !675

56:                                               ; preds = %50
  %57 = and i64 %55, 65535
  %58 = icmp eq i64 %57, 44
  br i1 %58, label %86, label %62

59:                                               ; preds = %50
  %60 = and i64 %55, 65535
  %61 = icmp eq i64 %60, 43
  br i1 %61, label %86, label %62

62:                                               ; preds = %50, %56, %59
  %63 = xor i64 %55, %53
  %64 = and i64 %63, 65535
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %86, !prof !676

66:                                               ; preds = %62
  switch i16 %54, label %86 [
    i16 45, label %74
    i16 41, label %67
  ], !prof !677

67:                                               ; preds = %66
  %68 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !535
  %70 = getelementptr inbounds %struct.tree_exp, ptr %52, i64 1
  %71 = load ptr, ptr %70, align 8, !tbaa !535
  %72 = tail call i32 @operand_equal_p(ptr noundef %69, ptr noundef %71, i32 noundef 0) #31
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %77, label %74, !prof !678

74:                                               ; preds = %67, %66
  %75 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %36) #30
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %47, !prof !679

77:                                               ; preds = %67
  %78 = getelementptr inbounds %struct.tree_exp, ptr %51, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !535
  %80 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !535
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 65535
  %84 = icmp ne i64 %83, 17
  %85 = zext i1 %84 to i8
  br label %86

86:                                               ; preds = %47, %74, %62, %59, %56, %66, %35, %77
  %87 = phi i8 [ %85, %77 ], [ 0, %35 ], [ 0, %47 ], [ 0, %74 ], [ 0, %62 ], [ 1, %59 ], [ 1, %56 ], [ 0, %66 ]
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %3) #30
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %4) #30
  br label %88

88:                                               ; preds = %20, %12, %86
  %89 = phi i8 [ %87, %86 ], [ 1, %12 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret i8 %89
}

; Function Attrs: optsize
declare zeroext i8 @refs_output_dependent_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @refs_anti_dependent_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @refs_may_alias_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #2 !prof !680 !PGOFuncName !681 {
  %2 = load i32, ptr %0, align 8, !tbaa !480
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !480
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @estimated_loop_iterations(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 !prof !682 {
  tail call void @estimate_numbers_of_iterations_loop(ptr noundef %0) #31
  %4 = icmp eq i8 %1, 0
  br i1 %4, label %11, label %5, !prof !683

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 14
  %7 = load i8, ptr %6, align 8, !tbaa !684
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9, !prof !685

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 12
  br label %17

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 15
  %13 = load i8, ptr %12, align 1, !tbaa !686
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %19, label %15, !prof !687

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

; Function Attrs: optsize
declare void @estimate_numbers_of_iterations_loop(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @estimated_loop_iterations_int(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !688 {
  %3 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  %4 = call zeroext i8 @estimated_loop_iterations(ptr noundef %0, i8 noundef zeroext %1, ptr noundef nonnull %3) #30, !range !536
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6, !prof !687

6:                                                ; preds = %2
  %7 = load i64, ptr %3, align 8
  %8 = getelementptr inbounds { i64, i64 }, ptr %3, i64 0, i32 1
  %9 = load i64, ptr %8, align 8
  %10 = tail call zeroext i8 @double_int_fits_in_shwi_p(i64 %7, i64 %9) #31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %15, label %12, !prof !689

12:                                               ; preds = %6
  %13 = tail call i64 @double_int_to_shwi(i64 %7, i64 %9) #31
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 -1)
  br label %15

15:                                               ; preds = %6, %2, %12
  %16 = phi i64 [ %14, %12 ], [ -1, %2 ], [ -1, %6 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  ret i64 %16
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_in_shwi_p(i64, i64) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @double_int_to_shwi(i64, i64) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @compute_all_dependences(ptr noundef %0, ptr nocapture noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 !prof !690 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %7 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %40, label %12, !prof !691

9:                                                ; preds = %36, %12
  %10 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %5) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %40, label %12, !prof !692, !llvm.loop !693

12:                                               ; preds = %4, %9
  %13 = phi i32 [ %14, %9 ], [ 0, %4 ]
  %14 = add i32 %13, 1
  %15 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %14, ptr noundef nonnull %6) #30, !range !429
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %9, label %17, !prof !694

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !tbaa !430
  %19 = getelementptr inbounds %struct.data_reference, ptr %18, i64 0, i32 3
  br label %20

20:                                               ; preds = %17, %36
  %21 = phi i32 [ %14, %17 ], [ %37, %36 ]
  %22 = load i8, ptr %19, align 8, !tbaa !622
  %23 = icmp eq i8 %22, 0
  %24 = load ptr, ptr %6, align 8, !tbaa !430
  br i1 %23, label %31, label %25, !prof !695

25:                                               ; preds = %20
  %26 = icmp ne i8 %3, 0
  %27 = getelementptr inbounds %struct.data_reference, ptr %24, i64 0, i32 3
  %28 = load i8, ptr %27, align 8, !tbaa !622
  %29 = icmp eq i8 %28, 0
  %30 = or i1 %26, %29
  br i1 %30, label %31, label %36, !prof !696

31:                                               ; preds = %25, %20
  %32 = icmp eq ptr %2, null
  %33 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef nonnull %18, ptr noundef %24, ptr noundef %2) #30
  tail call fastcc void @VEC_ddr_p_heap_safe_push(ptr noundef %1, ptr noundef %33) #30
  br i1 %32, label %36, label %34, !prof !697

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef nonnull %2, i32 noundef 0) #30
  tail call fastcc void @compute_affine_dependence(ptr noundef %33, ptr noundef %35) #30
  br label %36

36:                                               ; preds = %25, %34, %31
  %37 = add i32 %21, 1
  %38 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %37, ptr noundef nonnull %6) #30, !range !429
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %9, label %20, !prof !698, !llvm.loop !699

40:                                               ; preds = %9, %4
  %41 = icmp eq i8 %3, 0
  br i1 %41, label %52, label %42, !prof !700

42:                                               ; preds = %40
  %43 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %45, !prof !691

45:                                               ; preds = %42, %45
  %46 = phi i32 [ %49, %45 ], [ 0, %42 ]
  %47 = load ptr, ptr %5, align 8, !tbaa !430
  %48 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef %47, ptr noundef %47, ptr noundef %2) #30
  tail call fastcc void @VEC_ddr_p_heap_safe_push(ptr noundef %1, ptr noundef %48) #30
  tail call fastcc void @compute_self_dependence(ptr noundef %48) #30
  %49 = add i32 %46, 1
  %50 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %49, ptr noundef nonnull %5) #30, !range !429
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %45, !prof !692, !llvm.loop !701

52:                                               ; preds = %45, %42, %40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @initialize_data_dependence_relation(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !702 !PGOFuncName !703 {
  %4 = tail call ptr @xmalloc(i64 noundef 64) #31
  store ptr %0, ptr %4, align 8, !tbaa !461
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !462
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 4
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 8
  store i8 0, ptr %7, align 4, !tbaa !704
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 3
  %9 = icmp eq ptr %0, null
  %10 = icmp eq ptr %1, null
  %11 = or i1 %9, %10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %8, i8 0, i64 32, i1 false)
  br i1 %11, label %12, label %15, !prof !705

12:                                               ; preds = %3
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !459
  br label %91

15:                                               ; preds = %3
  %16 = tail call zeroext i8 @dr_may_alias_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #30, !range !536
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %21, !prof !706

18:                                               ; preds = %15
  %19 = load ptr, ptr @chrec_known, align 8, !tbaa !430
  %20 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !459
  br label %91

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !448
  %24 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !448
  %26 = tail call i32 @operand_equal_p(ptr noundef %23, ptr noundef %25, i32 noundef 0) #31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28, !prof !707

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 9
  store i8 1, ptr %29, align 1, !tbaa !529
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr null, ptr %30, align 8, !tbaa !459
  %31 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !450
  %33 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %32) #30
  %34 = tail call fastcc ptr @VEC_subscript_p_heap_alloc(i32 noundef %33) #30
  store ptr %34, ptr %8, align 8, !tbaa !463
  store ptr %2, ptr %6, align 8, !tbaa !466
  %35 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  store i32 0, ptr %35, align 8, !tbaa !465
  %36 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 10
  store i8 1, ptr %36, align 2, !tbaa !708
  tail call fastcc void @compute_self_dependence(ptr noundef nonnull %4) #30
  br label %91

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !449
  %40 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5
  %41 = load ptr, ptr %40, align 8, !tbaa !449
  %42 = tail call i32 @operand_equal_p(ptr noundef %39, ptr noundef %41, i32 noundef 0) #31
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47, !prof !709

44:                                               ; preds = %37
  %45 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %46 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %45, ptr %46, align 8, !tbaa !459
  br label %91

47:                                               ; preds = %37
  %48 = icmp eq ptr %2, null
  br i1 %48, label %57, label %49, !prof !710

49:                                               ; preds = %47
  %50 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef nonnull %2, i32 noundef 0) #30
  %51 = load ptr, ptr %38, align 8, !tbaa !449
  %52 = tail call fastcc zeroext i8 @object_address_invariant_in_loop_p(ptr noundef %50, ptr noundef %51) #30, !range !536
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %57, !prof !711

54:                                               ; preds = %49
  %55 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %56 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr %55, ptr %56, align 8, !tbaa !459
  br label %91

57:                                               ; preds = %49, %47
  %58 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !450
  %60 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %59) #30
  %61 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !450
  %63 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %62) #30
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %67, label %65, !prof !712

65:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1419, ptr noundef nonnull @.str.51) #31
  %66 = load ptr, ptr %58, align 8, !tbaa !450
  br label %67

67:                                               ; preds = %57, %65
  %68 = phi ptr [ %59, %57 ], [ %66, %65 ]
  %69 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 9
  store i8 1, ptr %69, align 1, !tbaa !529
  %70 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 2
  store ptr null, ptr %70, align 8, !tbaa !459
  %71 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %68) #30
  %72 = tail call fastcc ptr @VEC_subscript_p_heap_alloc(i32 noundef %71) #30
  store ptr %72, ptr %8, align 8, !tbaa !463
  store ptr %2, ptr %6, align 8, !tbaa !466
  %73 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  store i32 0, ptr %73, align 8, !tbaa !465
  %74 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 10
  store i8 0, ptr %74, align 2, !tbaa !708
  %75 = load ptr, ptr %58, align 8, !tbaa !450
  %76 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %75) #30
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %91, label %78, !prof !713

78:                                               ; preds = %67, %78
  %79 = phi i32 [ %87, %78 ], [ 0, %67 ]
  %80 = tail call ptr @xmalloc(i64 noundef 32) #31
  %81 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %81, ptr %80, align 8, !tbaa !484
  %82 = tail call fastcc ptr @conflict_fn_not_known() #30
  %83 = getelementptr inbounds %struct.subscript, ptr %80, i64 0, i32 1
  store ptr %82, ptr %83, align 8, !tbaa !489
  %84 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %85 = getelementptr inbounds %struct.subscript, ptr %80, i64 0, i32 2
  store ptr %84, ptr %85, align 8, !tbaa !488
  %86 = getelementptr inbounds %struct.subscript, ptr %80, i64 0, i32 3
  store ptr %84, ptr %86, align 8, !tbaa !490
  tail call fastcc void @VEC_subscript_p_heap_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %80) #30
  %87 = add nuw i32 %79, 1
  %88 = load ptr, ptr %58, align 8, !tbaa !450
  %89 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %88) #30
  %90 = icmp ult i32 %87, %89
  br i1 %90, label %78, label %91, !prof !714, !llvm.loop !715

91:                                               ; preds = %78, %67, %54, %44, %28, %18, %12
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ddr_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !702 !PGOFuncName !716 {
  tail call fastcc void @VEC_ddr_p_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_ddr_p_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_affine_dependence(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !717 !PGOFuncName !718 {
  %3 = alloca i8, align 1
  %4 = load ptr, ptr %0, align 8, !tbaa !461
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !462
  %7 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %8 = icmp eq ptr %7, null
  br i1 %8, label %25, label %9, !prof !719

9:                                                ; preds = %2
  %10 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %9
  %14 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 27, i64 1, ptr nonnull %7)
  %15 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %16 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 13, i64 1, ptr %15)
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %18 = load ptr, ptr %4, align 8, !tbaa !443
  tail call void @print_gimple_stmt(ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef 0) #31
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %20 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 15, i64 1, ptr %19)
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %22 = load ptr, ptr %6, align 8, !tbaa !443
  tail call void @print_gimple_stmt(ptr noundef %21, ptr noundef %22, i32 noundef 0, i32 noundef 0) #31
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %24 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %23)
  br label %25

25:                                               ; preds = %13, %9, %2
  %26 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !459
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %103, !prof !720

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 10
  %31 = load i8, ptr %30, align 2, !tbaa !708
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %103, !prof !721

33:                                               ; preds = %29
  %34 = load i32, ptr @dependence_stats, align 4, !tbaa !722
  %35 = add nsw i32 %34, 1
  store i32 %35, ptr @dependence_stats, align 4, !tbaa !722
  %36 = tail call fastcc zeroext i8 @access_functions_are_affine_or_constant_p(ptr noundef %4, ptr noundef %1) #30, !range !536
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %84, label %38, !prof !724

38:                                               ; preds = %33
  %39 = tail call fastcc zeroext i8 @access_functions_are_affine_or_constant_p(ptr noundef %6, ptr noundef %1) #30, !range !536
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %84, label %41, !prof !725

41:                                               ; preds = %38
  %42 = load i32, ptr @flag_check_data_deps, align 4, !tbaa !499
  %43 = icmp eq i32 %42, 0
  tail call fastcc void @subscript_dependence_tester(ptr noundef nonnull %0, ptr noundef %1) #30
  br i1 %43, label %103, label %44, !prof !726

44:                                               ; preds = %41
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 20, i64 1, ptr nonnull %45)
  %53 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @dump_data_dependence_relation(ptr noundef %53, ptr noundef nonnull %0) #30
  br label %54

54:                                               ; preds = %51, %47, %44
  %55 = load ptr, ptr %26, align 8, !tbaa !459
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %103

57:                                               ; preds = %54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #29
  %58 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %59 = load ptr, ptr %58, align 8, !tbaa !473
  %60 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !474
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %60, i8 0, i64 16, i1 false)
  %62 = call fastcc zeroext i8 @init_omega_for_ddr(ptr noundef nonnull %0, ptr noundef nonnull %3) #30, !range !536
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %57
  %65 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %69 = and i32 %68, 8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 15, i64 1, ptr nonnull %65)
  %73 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @dump_data_dependence_relation(ptr noundef %73, ptr noundef nonnull %0) #30
  br label %74

74:                                               ; preds = %71, %67, %64
  %75 = load i8, ptr %3, align 1, !tbaa !535
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr @stderr, align 8, !tbaa !430
  %79 = tail call fastcc zeroext i8 @ddr_consistent_p(ptr noundef %78, ptr noundef nonnull %0, ptr noundef %59, ptr noundef %61) #30, !range !536
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 3982, ptr noundef nonnull @.str.51) #31
  br label %82

82:                                               ; preds = %81, %77, %74
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  br label %103

83:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  br label %84

84:                                               ; preds = %83, %33, %38
  %85 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !727
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !727
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %88 = icmp eq ptr %87, null
  br i1 %88, label %101, label %89, !prof !728

89:                                               ; preds = %84
  %90 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %91 = and i32 %90, 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %89
  %94 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 12, i64 1, ptr nonnull %87)
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @dump_data_reference(ptr noundef %95, ptr noundef %4) #30
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %97 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 12, i64 1, ptr %96)
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @dump_data_reference(ptr noundef %98, ptr noundef %6) #30
  %99 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %100 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 75, i64 1, ptr %99)
  br label %101

101:                                              ; preds = %93, %89, %84
  %102 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  tail call fastcc void @finalize_ddr_dependent(ptr noundef nonnull %0, ptr noundef %102) #30
  br label %103

103:                                              ; preds = %41, %82, %101, %54, %29, %25
  %104 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %105 = icmp eq ptr %104, null
  br i1 %105, label %112, label %106, !prof !719

106:                                              ; preds = %103
  %107 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %108 = and i32 %107, 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %112, label %110

110:                                              ; preds = %106
  %111 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %104)
  br label %112

112:                                              ; preds = %110, %106, %103
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !729 !PGOFuncName !730 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_self_dependence(ptr nocapture noundef %0) unnamed_addr #0 !prof !731 !PGOFuncName !732 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !459
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %43, !prof !733

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !463
  %9 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %8, i32 noundef 0, ptr noundef nonnull %2) #30, !range !429
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %35, label %11, !prof !734

11:                                               ; preds = %6, %22
  %12 = phi i32 [ %31, %22 ], [ 0, %6 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !430
  %14 = load ptr, ptr %13, align 8, !tbaa !484
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %14) #30
  br label %17

17:                                               ; preds = %16, %11
  %18 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !489
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %19) #30
  br label %22

22:                                               ; preds = %21, %17
  %23 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %24 = tail call fastcc ptr @affine_fn_cst(ptr noundef %23) #30
  %25 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %24) #30
  store ptr %25, ptr %13, align 8, !tbaa !484
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %27 = tail call fastcc ptr @affine_fn_cst(ptr noundef %26) #30
  %28 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %27) #30
  store ptr %28, ptr %18, align 8, !tbaa !489
  %29 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %30 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !488
  %31 = add i32 %12, 1
  %32 = load ptr, ptr %7, align 8, !tbaa !463
  %33 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %32, i32 noundef %31, ptr noundef nonnull %2) #30, !range !429
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %11, !prof !735, !llvm.loop !736

35:                                               ; preds = %22, %6
  %36 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !466
  %38 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %37) #30
  %39 = tail call fastcc ptr @lambda_vector_new(i32 noundef %38) #30
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %39) #30
  %40 = load ptr, ptr %36, align 8, !tbaa !466
  %41 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %40) #30
  %42 = tail call fastcc ptr @lambda_vector_new(i32 noundef %41) #30
  tail call fastcc void @save_dir_v(ptr noundef nonnull %0, ptr noundef %42) #30
  br label %43

43:                                               ; preds = %1, %35
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_subscript_p_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !737 !PGOFuncName !738 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #31
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @object_address_invariant_in_loop_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !739 !PGOFuncName !740 {
  %3 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %1) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5, !prof !741

5:                                                ; preds = %2, %27
  %6 = phi ptr [ %29, %27 ], [ %1, %2 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %27 [
    i16 45, label %9
    i16 41, label %21
  ], !prof !742

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !535
  %12 = load i32, ptr %0, align 8, !tbaa !467
  %13 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %11, i32 noundef %12) #31
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %46, !prof !743

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !535
  %18 = load i32, ptr %0, align 8, !tbaa !467
  %19 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %17, i32 noundef %18) #31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %46, !prof !743

21:                                               ; preds = %5
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !535
  %24 = load i32, ptr %0, align 8, !tbaa !467
  %25 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %23, i32 noundef %24) #31
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %46, !prof !744

27:                                               ; preds = %5, %21, %15
  %28 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !535
  %30 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %29) #30, !range !536
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %5, !prof !745, !llvm.loop !746

32:                                               ; preds = %27, %2
  %33 = phi ptr [ %1, %2 ], [ %29, %27 ]
  %34 = load i64, ptr %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 65535
  %37 = add nsw i32 %36, -47
  %38 = icmp ult i32 %37, 3
  br i1 %38, label %39, label %46, !prof !747

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !535
  %42 = load i32, ptr %0, align 8, !tbaa !467
  %43 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %41, i32 noundef %42) #31
  %44 = icmp eq i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %46

46:                                               ; preds = %21, %9, %15, %32, %39
  %47 = phi i8 [ %45, %39 ], [ 1, %32 ], [ 0, %15 ], [ 0, %9 ], [ 0, %21 ]
  ret i8 %47
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @conflict_fn_not_known() unnamed_addr #0 !prof !748 !PGOFuncName !749 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #31
  store i32 3, ptr %1, align 8, !tbaa !486
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_subscript_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !750 !PGOFuncName !751 {
  tail call fastcc void @VEC_subscript_p_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_subscript_p_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_subscript_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !750 !PGOFuncName !752 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_subscript_p_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !753

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_subscript_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !750 !PGOFuncName !754 {
  %3 = load i32, ptr %0, align 8, !tbaa !514
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !514
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_subscript_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !750 !PGOFuncName !755 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !753

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !756
  %6 = load i32, ptr %0, align 8, !tbaa !514
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ddr_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !702 !PGOFuncName !757 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_ddr_p_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !758

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ddr_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !702 !PGOFuncName !759 {
  %3 = load i32, ptr %0, align 8, !tbaa !456
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !456
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ddr_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !702 !PGOFuncName !760 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !761

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ddr_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !762
  %6 = load i32, ptr %0, align 8, !tbaa !456
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @access_functions_are_affine_or_constant_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !763 !PGOFuncName !764 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !450
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8, !prof !765

8:                                                ; preds = %2, %18
  %9 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !430
  %11 = load i32, ptr %1, align 8, !tbaa !467
  %12 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %10, i32 noundef %11) #31
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %18, !prof !766

14:                                               ; preds = %8
  %15 = load i32, ptr %1, align 8, !tbaa !467
  %16 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %10, i32 noundef %15) #31
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18, !prof !767

18:                                               ; preds = %8, %14
  %19 = add i32 %9, 1
  %20 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef %19, ptr noundef nonnull %3) #30, !range !429
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %8, !prof !768, !llvm.loop !769

22:                                               ; preds = %14, %18, %2
  %23 = phi i8 [ 1, %2 ], [ 1, %18 ], [ 0, %14 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret i8 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @subscript_dependence_tester(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !770 !PGOFuncName !771 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !726

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 30, i64 1, ptr nonnull %3)
  br label %11

11:                                               ; preds = %9, %5, %2
  %12 = load ptr, ptr %0, align 8, !tbaa !461
  %13 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !462
  %15 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %14, ptr noundef %1) #30
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %20, label %17, !prof !772

17:                                               ; preds = %11
  %18 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !773
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !773
  br label %20

20:                                               ; preds = %17, %11
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0) #30
  %21 = tail call fastcc zeroext i8 @build_classic_dist_vector(ptr noundef nonnull %0, ptr noundef %1) #30, !range !536
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23, !prof !772

23:                                               ; preds = %20
  tail call fastcc void @build_classic_dir_vector(ptr noundef nonnull %0) #30
  br label %24

24:                                               ; preds = %23, %20
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %26 = icmp eq ptr %25, null
  br i1 %26, label %33, label %27, !prof !726

27:                                               ; preds = %24
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %29 = and i32 %28, 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %25)
  br label %33

33:                                               ; preds = %31, %27, %24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @init_omega_for_ddr(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !774 {
  store i8 1, ptr %1, align 1, !tbaa !535
  %3 = tail call fastcc zeroext i8 @same_access_functions(ptr noundef %0) #30, !range !536
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !466
  %7 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %6) #30
  br i1 %4, label %32, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @lambda_vector_new(i32 noundef %7) #30
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %9) #30
  %10 = load ptr, ptr %5, align 8, !tbaa !466
  %11 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %10) #30
  %12 = tail call fastcc ptr @lambda_vector_new(i32 noundef %11) #30
  %13 = load ptr, ptr %5, align 8, !tbaa !466
  %14 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %13) #30
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %8, %16
  %17 = phi i64 [ %19, %16 ], [ 0, %8 ]
  %18 = getelementptr inbounds i32, ptr %12, i64 %17
  store i32 2, ptr %18, align 4, !tbaa !499
  %19 = add nuw nsw i64 %17, 1
  %20 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %13) #30
  %21 = zext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %16, label %23, !llvm.loop !775

23:                                               ; preds = %16, %8
  tail call fastcc void @save_dir_v(ptr noundef nonnull %0, ptr noundef %12) #30
  %24 = load ptr, ptr %5, align 8, !tbaa !466
  %25 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %24) #30
  %26 = shl i32 %25, 1
  %27 = tail call ptr @omega_alloc_problem(i32 noundef %26, i32 noundef %25) #31
  %28 = load ptr, ptr %0, align 8, !tbaa !461
  %29 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !462
  %31 = tail call fastcc zeroext i8 @init_omega_for_ddr_1(ptr noundef %28, ptr noundef %30, ptr noundef nonnull %0, ptr noundef %27, ptr noundef nonnull %1) #30, !range !536
  br label %51

32:                                               ; preds = %2
  %33 = shl i32 %7, 1
  %34 = tail call ptr @omega_alloc_problem(i32 noundef %33, i32 noundef %7) #31
  %35 = load ptr, ptr %0, align 8, !tbaa !461
  %36 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !462
  %38 = tail call fastcc zeroext i8 @init_omega_for_ddr_1(ptr noundef %35, ptr noundef %37, ptr noundef nonnull %0, ptr noundef %34, ptr noundef nonnull %1) #30, !range !536
  tail call fastcc void @omega_free_problem(ptr noundef %34) #30
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %32
  %41 = load i8, ptr %1, align 1, !tbaa !535
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %40
  %44 = load ptr, ptr %5, align 8, !tbaa !466
  %45 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %44) #30
  %46 = shl i32 %45, 1
  %47 = tail call ptr @omega_alloc_problem(i32 noundef %46, i32 noundef %45) #31
  %48 = load ptr, ptr %36, align 8, !tbaa !462
  %49 = load ptr, ptr %0, align 8, !tbaa !461
  %50 = tail call fastcc zeroext i8 @init_omega_for_ddr_1(ptr noundef %48, ptr noundef %49, ptr noundef nonnull %0, ptr noundef %47, ptr noundef nonnull %1) #30, !range !536
  br label %51

51:                                               ; preds = %23, %43
  %52 = phi ptr [ %47, %43 ], [ %27, %23 ]
  %53 = phi i8 [ %50, %43 ], [ %31, %23 ]
  tail call fastcc void @omega_free_problem(ptr noundef %52) #30
  br label %54

54:                                               ; preds = %51, %32, %40
  %55 = phi i8 [ 1, %40 ], [ 0, %32 ], [ %53, %51 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ddr_consistent_p(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !428 !PGOFuncName !776 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %9 = icmp eq ptr %8, null
  %10 = load i32, ptr @dump_flags, align 4
  %11 = and i32 %10, 8
  %12 = icmp eq i32 %11, 0
  %13 = select i1 %9, i1 true, i1 %12
  %14 = select i1 %13, ptr %0, ptr %8
  %15 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %2) #30
  %16 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !473
  %18 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %17) #30
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %55, label %20

20:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.99, i32 noundef %15, i32 noundef %18) #30
  %22 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 23, i64 1, ptr %14)
  %23 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  br label %27

27:                                               ; preds = %25, %27
  %28 = phi i32 [ 0, %25 ], [ %32, %27 ]
  %29 = load ptr, ptr %5, align 8, !tbaa !430
  %30 = load ptr, ptr %26, align 8, !tbaa !466
  %31 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %30) #30
  tail call fastcc void @print_lambda_vector(ptr noundef %14, ptr noundef %29, i32 noundef %31) #30
  %32 = add i32 %28, 1
  %33 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %2, i32 noundef %32, ptr noundef nonnull %5) #30, !range !429
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %27, !llvm.loop !777

35:                                               ; preds = %27, %20
  %36 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 20, i64 1, ptr %14)
  %37 = load ptr, ptr %16, align 8, !tbaa !473
  %38 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %37) #30
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %42
  %43 = phi ptr [ %37, %40 ], [ %49, %42 ]
  %44 = phi i32 [ 0, %40 ], [ %48, %42 ]
  %45 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %43, i32 noundef %44) #30
  %46 = load ptr, ptr %41, align 8, !tbaa !466
  %47 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %46) #30
  tail call fastcc void @print_lambda_vector(ptr noundef %14, ptr noundef %45, i32 noundef %47) #30
  %48 = add nuw i32 %44, 1
  %49 = load ptr, ptr %16, align 8, !tbaa !473
  %50 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %49) #30
  %51 = icmp ult i32 %48, %50
  br i1 %51, label %42, label %52, !llvm.loop !778

52:                                               ; preds = %42, %35
  %53 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 26, i64 1, ptr %14)
  tail call void @dump_data_dependence_relation(ptr noundef %14, ptr noundef nonnull %1) #30
  %54 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %14)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  br label %152

55:                                               ; preds = %4
  %56 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %3) #30
  %57 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !474
  %59 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %58) #30
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %55
  %62 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %17) #30
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  br label %76

66:                                               ; preds = %55
  %67 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %14, ptr noundef nonnull @.str.103, i32 noundef %56, i32 noundef %59) #30
  br label %152

68:                                               ; preds = %109
  %69 = load ptr, ptr %57, align 8, !tbaa !474
  br label %70

70:                                               ; preds = %68, %61
  %71 = phi ptr [ %69, %68 ], [ %58, %61 ]
  %72 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %71) #30
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %152, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  br label %114

76:                                               ; preds = %64, %109
  %77 = phi ptr [ %17, %64 ], [ %110, %109 ]
  %78 = phi i32 [ 0, %64 ], [ %111, %109 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %79 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %77, i32 noundef %78) #30
  %80 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %6) #30, !range !429
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %94, label %82

82:                                               ; preds = %76
  %83 = load ptr, ptr %65, align 8, !tbaa !466
  %84 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %83) #30
  br label %85

85:                                               ; preds = %82, %90
  %86 = phi i32 [ 0, %82 ], [ %91, %90 ]
  %87 = load ptr, ptr %6, align 8, !tbaa !430
  %88 = tail call fastcc zeroext i8 @lambda_vector_equal(ptr noundef %87, ptr noundef %79, i32 noundef %84) #30, !range !536
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = add i32 %86, 1
  %92 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %2, i32 noundef %91, ptr noundef nonnull %6) #30, !range !429
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %85, !llvm.loop !779

94:                                               ; preds = %90, %85, %76
  %95 = phi i32 [ 0, %76 ], [ %86, %85 ], [ %91, %90 ]
  %96 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %2) #30
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 51, i64 1, ptr %14)
  %100 = load ptr, ptr %65, align 8, !tbaa !466
  %101 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %100) #30
  tail call void @print_dist_vectors(ptr noundef %14, ptr noundef %2, i32 noundef %101) #30
  %102 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 33, i64 1, ptr %14)
  %103 = load ptr, ptr %16, align 8, !tbaa !473
  %104 = load ptr, ptr %65, align 8, !tbaa !466
  %105 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %104) #30
  tail call void @print_dist_vectors(ptr noundef %14, ptr noundef %103, i32 noundef %105) #30
  %106 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 26, i64 1, ptr %14)
  tail call void @dump_data_dependence_relation(ptr noundef %14, ptr noundef %1) #30
  %107 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %14)
  %108 = load ptr, ptr %16, align 8, !tbaa !473
  br label %109

109:                                              ; preds = %98, %94
  %110 = phi ptr [ %108, %98 ], [ %77, %94 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  %111 = add nuw i32 %78, 1
  %112 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %110) #30
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %76, label %68, !llvm.loop !780

114:                                              ; preds = %74, %147
  %115 = phi ptr [ %71, %74 ], [ %148, %147 ]
  %116 = phi i32 [ 0, %74 ], [ %149, %147 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %117 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %115, i32 noundef %116) #30
  %118 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %7) #30, !range !429
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %114
  %121 = load ptr, ptr %75, align 8, !tbaa !466
  %122 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %121) #30
  br label %123

123:                                              ; preds = %120, %128
  %124 = phi i32 [ 0, %120 ], [ %129, %128 ]
  %125 = load ptr, ptr %7, align 8, !tbaa !430
  %126 = tail call fastcc zeroext i8 @lambda_vector_equal(ptr noundef %125, ptr noundef %117, i32 noundef %122) #30, !range !536
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = add i32 %124, 1
  %130 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %3, i32 noundef %129, ptr noundef nonnull %7) #30, !range !429
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %123, !llvm.loop !781

132:                                              ; preds = %128, %123, %114
  %133 = phi i32 [ 0, %114 ], [ %124, %123 ], [ %129, %128 ]
  %134 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %2) #30
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 50, i64 1, ptr %14)
  %138 = load ptr, ptr %75, align 8, !tbaa !466
  %139 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %138) #30
  tail call void @print_dir_vectors(ptr noundef %14, ptr noundef %3, i32 noundef %139) #30
  %140 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 32, i64 1, ptr %14)
  %141 = load ptr, ptr %57, align 8, !tbaa !474
  %142 = load ptr, ptr %75, align 8, !tbaa !466
  %143 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %142) #30
  tail call void @print_dir_vectors(ptr noundef %14, ptr noundef %141, i32 noundef %143) #30
  %144 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 26, i64 1, ptr %14)
  tail call void @dump_data_dependence_relation(ptr noundef %14, ptr noundef %1) #30
  %145 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %14)
  %146 = load ptr, ptr %57, align 8, !tbaa !474
  br label %147

147:                                              ; preds = %136, %132
  %148 = phi ptr [ %146, %136 ], [ %115, %132 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  %149 = add nuw i32 %116, 1
  %150 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %148) #30
  %151 = icmp ult i32 %149, %150
  br i1 %151, label %114, label %152, !llvm.loop !782

152:                                              ; preds = %147, %70, %66, %52
  %153 = phi i8 [ 0, %52 ], [ 0, %66 ], [ 1, %70 ], [ 1, %147 ]
  ret i8 %153
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @finalize_ddr_dependent(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !783 !PGOFuncName !784 {
  %3 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !785

5:                                                ; preds = %2
  %6 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %5
  %10 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 24, i64 1, ptr nonnull %3)
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @print_generic_expr(ptr noundef %11, ptr noundef %1, i32 noundef 0) #31
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %13 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %12)
  br label %14

14:                                               ; preds = %9, %5, %2
  %15 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  store ptr %1, ptr %15, align 8, !tbaa !459
  %16 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !463
  tail call fastcc void @free_subscripts(ptr noundef %17) #30
  store ptr null, ptr %16, align 8, !tbaa !463
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @evolution_function_is_invariant_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @subscript_dependence_tester_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) unnamed_addr #0 !prof !786 !PGOFuncName !787 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !463
  %11 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %6) #30, !range !429
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %59, label %13, !prof !788

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %15 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 5, i32 1
  br label %16

16:                                               ; preds = %13, %51
  %17 = phi i32 [ 0, %13 ], [ %54, %51 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  %18 = load ptr, ptr %14, align 8, !tbaa !450
  %19 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %18, i32 noundef %17) #30
  %20 = load ptr, ptr %15, align 8, !tbaa !450
  %21 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %20, i32 noundef %17) #30
  call fastcc void @analyze_overlapping_iterations(ptr noundef %19, ptr noundef %21, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %5, ptr noundef %3) #30
  %22 = load ptr, ptr %7, align 8, !tbaa !430
  %23 = load i32, ptr %22, align 8, !tbaa !486
  %24 = icmp eq i32 %23, 3
  %25 = load ptr, ptr %8, align 8, !tbaa !430
  br i1 %24, label %29, label %26, !prof !789

26:                                               ; preds = %16
  %27 = load i32, ptr %25, align 8, !tbaa !486
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %33, !prof !790

29:                                               ; preds = %26, %16
  %30 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  tail call fastcc void @finalize_ddr_dependent(ptr noundef nonnull %0, ptr noundef %30) #30
  %31 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !727
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !727
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %22) #30
  tail call fastcc void @free_conflict_function(ptr noundef %25) #30
  br label %58

33:                                               ; preds = %26
  %34 = icmp eq i32 %23, 0
  %35 = icmp eq i32 %27, 0
  %36 = or i1 %34, %35
  br i1 %36, label %37, label %41, !prof !791

37:                                               ; preds = %33
  %38 = load ptr, ptr @chrec_known, align 8, !tbaa !430
  tail call fastcc void @finalize_ddr_dependent(ptr noundef nonnull %0, ptr noundef %38) #30
  %39 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !792
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !792
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %22) #30
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %25) #30
  br label %58

41:                                               ; preds = %33
  %42 = load ptr, ptr %6, align 8, !tbaa !430
  %43 = load ptr, ptr %42, align 8, !tbaa !484
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45, !prof !793

45:                                               ; preds = %41
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %43) #30
  br label %46

46:                                               ; preds = %45, %41
  %47 = getelementptr inbounds %struct.subscript, ptr %42, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !489
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50, !prof !793

50:                                               ; preds = %46
  tail call fastcc void @free_conflict_function(ptr noundef nonnull %48) #30
  br label %51

51:                                               ; preds = %50, %46
  store ptr %22, ptr %42, align 8, !tbaa !484
  store ptr %25, ptr %47, align 8, !tbaa !489
  %52 = load ptr, ptr %5, align 8, !tbaa !430
  %53 = getelementptr inbounds %struct.subscript, ptr %42, i64 0, i32 2
  store ptr %52, ptr %53, align 8, !tbaa !488
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  %54 = add i32 %17, 1
  %55 = load ptr, ptr %9, align 8, !tbaa !463
  %56 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %55, i32 noundef %54, ptr noundef nonnull %6) #30, !range !429
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %16, !prof !794, !llvm.loop !795

58:                                               ; preds = %37, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  br label %59

59:                                               ; preds = %51, %4, %58
  %60 = phi i8 [ 0, %58 ], [ 1, %4 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_subscript_distance(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !786 !PGOFuncName !796 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %40, !prof !797

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !463
  %8 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %7) #30
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %40, label %10, !prof !788

10:                                               ; preds = %5, %33
  %11 = phi ptr [ %37, %33 ], [ %7, %5 ]
  %12 = phi i32 [ %36, %33 ], [ 0, %5 ]
  %13 = tail call fastcc ptr @VEC_subscript_p_base_index(ptr noundef %11, i32 noundef %12) #30
  %14 = load ptr, ptr %13, align 8, !tbaa !484
  %15 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !489
  %17 = tail call fastcc ptr @common_affine_function(ptr noundef %14) #30
  %18 = tail call fastcc ptr @common_affine_function(ptr noundef %16) #30
  %19 = icmp ne ptr %17, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %30, !prof !798

22:                                               ; preds = %10
  %23 = tail call fastcc ptr @affine_fn_minus(ptr noundef nonnull %17, ptr noundef nonnull %18) #30
  %24 = tail call fastcc zeroext i8 @affine_function_constant_p(ptr noundef %23) #30, !range !536
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26, !prof !793

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @affine_function_base(ptr noundef %23) #30
  br label %33

28:                                               ; preds = %22
  %29 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %33

30:                                               ; preds = %10
  %31 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %32 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 3
  store ptr %31, ptr %32, align 8, !tbaa !490
  br label %40

33:                                               ; preds = %26, %28
  %34 = phi ptr [ %29, %28 ], [ %27, %26 ]
  %35 = getelementptr inbounds %struct.subscript, ptr %13, i64 0, i32 3
  store ptr %34, ptr %35, align 8
  tail call fastcc void @affine_fn_free(ptr noundef %23) #30
  %36 = add nuw i32 %12, 1
  %37 = load ptr, ptr %6, align 8, !tbaa !463
  %38 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %37) #30
  %39 = icmp ult i32 %36, %38
  br i1 %39, label %10, label %40, !prof !799, !llvm.loop !800

40:                                               ; preds = %33, %5, %30, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_classic_dist_vector(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !770 !PGOFuncName !801 {
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #29
  store i8 0, ptr %3, align 1, !tbaa !535
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !466
  %7 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %6) #30
  store i32 %7, ptr %4, align 4, !tbaa !499
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !459
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %111, !prof !802

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @same_access_functions(ptr noundef nonnull %0) #30, !range !536
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %5, align 8, !tbaa !466
  %15 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %14) #30
  %16 = tail call fastcc ptr @lambda_vector_new(i32 noundef %15) #30
  br i1 %13, label %26, label %17, !prof !803

17:                                               ; preds = %11
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %16) #30
  %18 = tail call fastcc zeroext i8 @constant_access_functions(ptr noundef nonnull %0) #30, !range !536
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %21, label %20, !prof !804

20:                                               ; preds = %17
  tail call fastcc void @add_distance_for_zero_overlaps(ptr noundef nonnull %0) #30
  br label %21

21:                                               ; preds = %20, %17
  %22 = load ptr, ptr %5, align 8, !tbaa !466
  %23 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %22) #30
  %24 = icmp ugt i32 %23, 1
  br i1 %24, label %25, label %111, !prof !805

25:                                               ; preds = %21
  tail call fastcc void @add_other_self_distances(ptr noundef nonnull %0) #30
  br label %111

26:                                               ; preds = %11
  %27 = load ptr, ptr %0, align 8, !tbaa !461
  %28 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !462
  %30 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %27, ptr noundef %29, ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull %4) #30
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %111, label %32, !prof !806

32:                                               ; preds = %26
  %33 = load i8, ptr %3, align 1, !tbaa !535
  %34 = icmp eq i8 %33, 0
  %35 = load ptr, ptr %5, align 8, !tbaa !466
  %36 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %35) #30
  br i1 %34, label %78, label %37, !prof !806

37:                                               ; preds = %32
  %38 = tail call fastcc zeroext i8 @lambda_vector_lexico_pos(ptr noundef %16, i32 noundef %36) #30, !range !536
  %39 = icmp eq i8 %38, 0
  %40 = tail call fastcc ptr @lambda_vector_new(i32 noundef %36) #30
  br i1 %39, label %41, label %58, !prof !807

41:                                               ; preds = %37
  %42 = load ptr, ptr %28, align 8, !tbaa !462
  %43 = load ptr, ptr %0, align 8, !tbaa !461
  %44 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %42, ptr noundef %43, ptr noundef %1) #30
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %111, label %46, !prof !808

46:                                               ; preds = %41
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0) #30
  %47 = load ptr, ptr %28, align 8, !tbaa !462
  %48 = load ptr, ptr %0, align 8, !tbaa !461
  %49 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %47, ptr noundef %48, ptr noundef %40, ptr noundef nonnull %3, ptr noundef nonnull %4) #30
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %111, label %51, !prof !808

51:                                               ; preds = %46
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %40) #30
  %52 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 8
  store i8 1, ptr %52, align 4, !tbaa !704
  %53 = load ptr, ptr %5, align 8, !tbaa !466
  %54 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %53) #30
  %55 = icmp ugt i32 %54, 1
  br i1 %55, label %56, label %80, !prof !808

56:                                               ; preds = %51
  %57 = load i32, ptr %4, align 4, !tbaa !499
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %40, i32 noundef %57) #30
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %57) #30
  br label %80

58:                                               ; preds = %37
  %59 = load ptr, ptr %5, align 8, !tbaa !466
  %60 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %59) #30
  tail call fastcc void @lambda_vector_copy(ptr noundef %16, ptr noundef %40, i32 noundef %60) #30
  %61 = load ptr, ptr %5, align 8, !tbaa !466
  %62 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %61) #30
  %63 = icmp ugt i32 %62, 1
  br i1 %63, label %64, label %77, !prof !809

64:                                               ; preds = %58
  %65 = tail call fastcc ptr @lambda_vector_new(i32 noundef %62) #30
  %66 = load ptr, ptr %28, align 8, !tbaa !462
  %67 = load ptr, ptr %0, align 8, !tbaa !461
  %68 = tail call fastcc zeroext i8 @subscript_dependence_tester_1(ptr noundef nonnull %0, ptr noundef %66, ptr noundef %67, ptr noundef %1) #30
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %111, label %70

70:                                               ; preds = %64
  tail call fastcc void @compute_subscript_distance(ptr noundef nonnull %0) #30
  %71 = load ptr, ptr %28, align 8, !tbaa !462
  %72 = load ptr, ptr %0, align 8, !tbaa !461
  %73 = call fastcc zeroext i8 @build_classic_dist_vector_1(ptr noundef nonnull %0, ptr noundef %71, ptr noundef %72, ptr noundef %65, ptr noundef nonnull %3, ptr noundef nonnull %4) #30
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %111, label %75

75:                                               ; preds = %70
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %40) #30
  %76 = load i32, ptr %4, align 4, !tbaa !499
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %76) #30
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %65, i32 noundef %76) #30
  br label %80

77:                                               ; preds = %58
  tail call fastcc void @save_dist_v(ptr noundef nonnull %0, ptr noundef %40) #30
  br label %80

78:                                               ; preds = %32
  %79 = tail call fastcc i32 @lambda_vector_first_nz(ptr noundef %16, i32 noundef %36) #30
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %16, i32 noundef %79) #30
  br label %80

80:                                               ; preds = %75, %77, %56, %51, %78
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %82 = icmp eq ptr %81, null
  br i1 %82, label %111, label %83, !prof !810

83:                                               ; preds = %80
  %84 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %85 = and i32 %84, 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %111, label %87

87:                                               ; preds = %83
  %88 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 27, i64 1, ptr nonnull %81)
  %89 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %90 = load ptr, ptr %89, align 8, !tbaa !473
  %91 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %90) #30
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %108, label %93

93:                                               ; preds = %87, %93
  %94 = phi i32 [ %104, %93 ], [ 0, %87 ]
  %95 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %96 = tail call i64 @fwrite(ptr nonnull @.str.96, i64 17, i64 1, ptr %95)
  %97 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %98 = load ptr, ptr %89, align 8, !tbaa !473
  %99 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %98, i32 noundef %94) #30
  %100 = load ptr, ptr %5, align 8, !tbaa !466
  %101 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %100) #30
  tail call fastcc void @print_lambda_vector(ptr noundef %97, ptr noundef %99, i32 noundef %101) #30
  %102 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %103 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 4, i64 1, ptr %102)
  %104 = add nuw i32 %94, 1
  %105 = load ptr, ptr %89, align 8, !tbaa !473
  %106 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %105) #30
  %107 = icmp ult i32 %104, %106
  br i1 %107, label %93, label %108, !llvm.loop !811

108:                                              ; preds = %93, %87
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %110 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %109)
  br label %111

111:                                              ; preds = %70, %64, %41, %46, %80, %83, %108, %26, %21, %25, %2
  %112 = phi i8 [ 0, %2 ], [ 1, %25 ], [ 1, %21 ], [ 0, %26 ], [ 1, %108 ], [ 1, %83 ], [ 1, %80 ], [ 0, %46 ], [ 0, %41 ], [ 0, %64 ], [ 0, %70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #29
  ret i8 %112
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_classic_dir_vector(ptr nocapture noundef %0) unnamed_addr #0 !prof !812 !PGOFuncName !813 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !473
  %5 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7, !prof !814

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  br label %9

9:                                                ; preds = %7, %29
  %10 = phi i32 [ 0, %7 ], [ %30, %29 ]
  %11 = load ptr, ptr %8, align 8, !tbaa !466
  %12 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %11) #30
  %13 = tail call fastcc ptr @lambda_vector_new(i32 noundef %12) #30
  %14 = load ptr, ptr %8, align 8, !tbaa !466
  %15 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %14) #30
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %29, label %17, !prof !814

17:                                               ; preds = %9
  %18 = load ptr, ptr %2, align 8, !tbaa !430
  br label %19

19:                                               ; preds = %17, %19
  %20 = phi i64 [ 0, %17 ], [ %25, %19 ]
  %21 = getelementptr inbounds i32, ptr %18, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !499
  %23 = tail call fastcc i32 @dir_from_dist(i32 noundef %22) #30, !range !815
  %24 = getelementptr inbounds i32, ptr %13, i64 %20
  store i32 %23, ptr %24, align 4, !tbaa !499
  %25 = add nuw nsw i64 %20, 1
  %26 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %14) #30
  %27 = zext i32 %26 to i64
  %28 = icmp ult i64 %25, %27
  br i1 %28, label %19, label %29, !prof !814, !llvm.loop !816

29:                                               ; preds = %19, %9
  tail call fastcc void @save_dir_v(ptr noundef nonnull %0, ptr noundef %13) #30
  %30 = add i32 %10, 1
  %31 = load ptr, ptr %3, align 8, !tbaa !473
  %32 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %31, i32 noundef %30, ptr noundef nonnull %2) #30, !range !429
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %9, !prof !817, !llvm.loop !818

34:                                               ; preds = %29, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_subscript_p_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !819 !PGOFuncName !820 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !821

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !514
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !822

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_subscript_p_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_overlapping_iterations(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !823 !PGOFuncName !824 {
  %7 = load i32, ptr %5, align 8, !tbaa !467
  %8 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !825
  %9 = add nsw i32 %8, 1
  store i32 %9, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !825
  %10 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %11 = icmp eq ptr %10, null
  br i1 %11, label %26, label %12, !prof !826

12:                                               ; preds = %6
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 33, i64 1, ptr nonnull %10)
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %19 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 13, i64 1, ptr %18)
  %20 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @print_generic_expr(ptr noundef %20, ptr noundef %0, i32 noundef 0) #31
  %21 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %22 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 15, i64 1, ptr %21)
  %23 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @print_generic_expr(ptr noundef %23, ptr noundef %1, i32 noundef 0) #31
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %25 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %24)
  br label %26

26:                                               ; preds = %16, %12, %6
  %27 = icmp eq ptr %0, null
  %28 = icmp eq ptr %1, null
  %29 = or i1 %27, %28
  br i1 %29, label %36, label %30, !prof !827

30:                                               ; preds = %26
  %31 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %0) #31
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36, !prof !826

33:                                               ; preds = %30
  %34 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef nonnull %1) #31
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %41, label %36, !prof !826

36:                                               ; preds = %33, %30, %26
  %37 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !828
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !828
  %39 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %39, ptr %2, align 8, !tbaa !430
  %40 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %40, ptr %3, align 8, !tbaa !430
  br label %83

41:                                               ; preds = %33
  %42 = tail call zeroext i8 @eq_evolutions_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %57, label %44, !prof !829

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %0, i32 noundef %7) #31
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %57, label %47, !prof !830

47:                                               ; preds = %44
  %48 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !831
  %49 = add nsw i32 %48, 1
  store i32 %49, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !831
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %51 = tail call fastcc ptr @affine_fn_cst(ptr noundef %50) #30
  %52 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %51) #30
  store ptr %52, ptr %2, align 8, !tbaa !430
  %53 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %54 = tail call fastcc ptr @affine_fn_cst(ptr noundef %53) #30
  %55 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %54) #30
  store ptr %55, ptr %3, align 8, !tbaa !430
  %56 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %56, ptr %4, align 8, !tbaa !430
  br label %83

57:                                               ; preds = %44, %41
  %58 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef nonnull %0) #31
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %63, !prof !832

60:                                               ; preds = %57
  %61 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef nonnull %1) #31
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63, !prof !833

63:                                               ; preds = %60, %57
  %64 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %0, i32 noundef %7) #31
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %69, label %66, !prof !834

66:                                               ; preds = %63
  %67 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef nonnull %1, i32 noundef %7) #31
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %74, !prof !834

69:                                               ; preds = %66, %63
  %70 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !828
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !828
  %72 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %72, ptr %2, align 8, !tbaa !430
  %73 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %73, ptr %3, align 8, !tbaa !430
  br label %83

74:                                               ; preds = %66, %60
  %75 = tail call fastcc zeroext i8 @ziv_subscript_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #30, !range !536
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77, !prof !835

77:                                               ; preds = %74
  tail call fastcc void @analyze_ziv_subscript(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  br label %83

78:                                               ; preds = %74
  %79 = tail call fastcc zeroext i8 @siv_subscript_p(ptr noundef nonnull %0, ptr noundef nonnull %1) #30, !range !536
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81, !prof !836

81:                                               ; preds = %78
  tail call fastcc void @analyze_siv_subscript(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %7) #30
  br label %83

82:                                               ; preds = %78
  tail call fastcc void @analyze_miv_subscript(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) #30
  br label %83

83:                                               ; preds = %47, %77, %82, %81, %69, %36
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %85 = icmp eq ptr %84, null
  br i1 %85, label %102, label %86, !prof !826

86:                                               ; preds = %83
  %87 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %88 = and i32 %87, 8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %102, label %90

90:                                               ; preds = %86
  %91 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 26, i64 1, ptr nonnull %84)
  %92 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %93 = load ptr, ptr %2, align 8, !tbaa !430
  tail call fastcc void @dump_conflict_function(ptr noundef %92, ptr noundef %93) #30
  %94 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %95 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 28, i64 1, ptr %94)
  %96 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %97 = load ptr, ptr %3, align 8, !tbaa !430
  tail call fastcc void @dump_conflict_function(ptr noundef %96, ptr noundef %97) #30
  %98 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %99 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %98)
  %100 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %101 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %100)
  br label %102

102:                                              ; preds = %90, %86, %83
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_conflict_function(ptr nocapture noundef %0) unnamed_addr #0 !prof !837 !PGOFuncName !838 {
  %2 = load i32, ptr %0, align 8, !tbaa !486
  switch i32 %2, label %3 [
    i32 0, label %11
    i32 3, label %11
  ], !prof !839

3:                                                ; preds = %1, %3
  %4 = phi i64 [ %7, %3 ], [ 0, %1 ]
  %5 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %6) #30
  %7 = add nuw nsw i64 %4, 1
  %8 = load i32, ptr %0, align 8, !tbaa !486
  %9 = zext i32 %8 to i64
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %3, label %11, !prof !840, !llvm.loop !841

11:                                               ; preds = %3, %1, %1
  tail call void @free(ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_undetermined(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @eq_evolutions_p(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @conflict_fn(i32 noundef %0, ...) unnamed_addr #0 !prof !842 !PGOFuncName !843 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #29
  call void @llvm.va_start(ptr nonnull %2)
  store i32 %0, ptr %3, align 8, !tbaa !486
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %29, label %5, !prof !840

5:                                                ; preds = %1
  %6 = zext i32 %0 to i64
  %7 = load i32, ptr %2, align 16
  br label %8

8:                                                ; preds = %5, %22
  %9 = phi i32 [ %7, %5 ], [ %23, %22 ]
  %10 = phi i64 [ 0, %5 ], [ %27, %22 ]
  %11 = icmp ult i32 %9, 41
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 16
  %15 = zext nneg i32 %9 to i64
  %16 = getelementptr i8, ptr %14, i64 %15
  %17 = add nuw nsw i32 %9, 8
  store i32 %17, ptr %2, align 16
  br label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr i8, ptr %20, i64 8
  store ptr %21, ptr %19, align 8
  br label %22

22:                                               ; preds = %18, %12
  %23 = phi i32 [ %17, %12 ], [ %9, %18 ]
  %24 = phi ptr [ %16, %12 ], [ %20, %18 ]
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.conflict_function, ptr %3, i64 0, i32 1, i64 %10
  store ptr %25, ptr %26, align 8, !tbaa !430
  %27 = add nuw nsw i64 %10, 1
  %28 = icmp eq i64 %27, %6
  br i1 %28, label %29, label %8, !prof !844, !llvm.loop !845

29:                                               ; preds = %22, %1
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #29
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @affine_fn_cst(ptr noundef %0) unnamed_addr #0 !prof !846 !PGOFuncName !847 {
  %2 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef 1) #30
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %2, ptr noundef %0) #30
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @chrec_contains_symbols(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @ziv_subscript_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #5 !prof !848 !PGOFuncName !849 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %0) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %7, label %5, !prof !835

5:                                                ; preds = %2
  %6 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %1) #30, !range !536
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i8 [ 0, %2 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_ziv_subscript(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !850 !PGOFuncName !851 {
  %6 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !852
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !852
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10, !prof !853

10:                                               ; preds = %5
  %11 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %12 = and i32 %11, 8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 24, i64 1, ptr nonnull %8)
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !535
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !535
  %21 = tail call fastcc ptr @signed_type_for_types(ptr noundef %18, ptr noundef %20) #30
  %22 = tail call ptr @chrec_convert(ptr noundef %21, ptr noundef %0, ptr noundef null) #31
  %23 = tail call ptr @chrec_convert(ptr noundef %21, ptr noundef %1, ptr noundef null) #31
  %24 = tail call ptr @chrec_fold_minus(ptr noundef %21, ptr noundef %22, ptr noundef %23) #31
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 23
  br i1 %27, label %28, label %41, !prof !853

28:                                               ; preds = %16
  %29 = tail call i32 @integer_zerop(ptr noundef nonnull %24) #31
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %38, label %31, !prof !854

31:                                               ; preds = %28
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %33 = tail call fastcc ptr @affine_fn_cst(ptr noundef %32) #30
  %34 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %33) #30
  store ptr %34, ptr %2, align 8, !tbaa !430
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %36 = tail call fastcc ptr @affine_fn_cst(ptr noundef %35) #30
  %37 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %36) #30
  br label %53

38:                                               ; preds = %28
  %39 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %39, ptr %2, align 8, !tbaa !430
  %40 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  br label %53

41:                                               ; preds = %16
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %43 = icmp eq ptr %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %44
  %49 = tail call i64 @fwrite(ptr nonnull @.str.80, i64 44, i64 1, ptr nonnull %42)
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %51, ptr %2, align 8, !tbaa !430
  %52 = tail call fastcc ptr @conflict_fn_not_known() #30
  br label %53

53:                                               ; preds = %31, %38, %50
  %54 = phi ptr [ %37, %31 ], [ %40, %38 ], [ %52, %50 ]
  %55 = phi ptr [ @chrec_dont_know, %31 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), %38 ], [ @chrec_dont_know, %50 ]
  %56 = phi ptr [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 9), %31 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 8), %38 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 10), %50 ]
  store ptr %54, ptr %3, align 8, !tbaa !430
  %57 = load ptr, ptr %55, align 8, !tbaa !430
  store ptr %57, ptr %4, align 8, !tbaa !430
  %58 = load i32, ptr %56, align 4, !tbaa !499
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %56, align 4, !tbaa !499
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %61 = icmp eq ptr %60, null
  br i1 %61, label %68, label %62, !prof !853

62:                                               ; preds = %53
  %63 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %60)
  br label %68

68:                                               ; preds = %66, %62, %53
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @siv_subscript_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !855 !PGOFuncName !856 {
  %3 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %0) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %8, label %5, !prof !857

5:                                                ; preds = %2
  %6 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef %1) #31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %5, %2
  %9 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %1) #30, !range !536
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %14, label %11, !prof !857

11:                                               ; preds = %8
  %12 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef %0) #31
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %11, %8
  %15 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef %0) #31
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %39, label %17, !prof !836

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef %1) #31
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %39, label %20, !prof !836

20:                                               ; preds = %17
  %21 = load i64, ptr %0, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 146
  br i1 %23, label %24, label %39, !prof !857

24:                                               ; preds = %20
  %25 = load i64, ptr %1, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 146
  br i1 %27, label %28, label %38, !prof !857

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !535
  %31 = getelementptr inbounds %struct.tree_int_cst, ptr %30, i64 0, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !535
  %33 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !535
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !535
  %37 = icmp eq i64 %32, %36
  br i1 %37, label %38, label %39, !prof !857

38:                                               ; preds = %28, %24
  br label %39

39:                                               ; preds = %14, %17, %20, %28, %5, %11, %38
  %40 = phi i8 [ 1, %38 ], [ 1, %11 ], [ 1, %5 ], [ 0, %28 ], [ 1, %20 ], [ 0, %17 ], [ 0, %14 ]
  ret i8 %40
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_siv_subscript(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, i32 noundef %5) unnamed_addr #0 !prof !855 !PGOFuncName !858 {
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8, !tbaa !430
  store ptr %1, ptr %8, align 8, !tbaa !430
  %9 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !859
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !859
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13, !prof !857

13:                                               ; preds = %6
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 24, i64 1, ptr nonnull %11)
  br label %19

19:                                               ; preds = %17, %13, %6
  %20 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %0) #30, !range !536
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22, !prof !857

22:                                               ; preds = %19
  %23 = tail call fastcc zeroext i8 @evolution_function_is_affine_in_loop(ptr noundef %1, i32 noundef %5) #30, !range !536
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call fastcc void @analyze_siv_subscript_cst_affine(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  br label %107

26:                                               ; preds = %22, %19
  %27 = tail call fastcc zeroext i8 @evolution_function_is_affine_in_loop(ptr noundef %0, i32 noundef %5) #30, !range !536
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29, !prof !836

29:                                               ; preds = %26
  %30 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %1) #30, !range !536
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32, !prof !857

32:                                               ; preds = %29
  tail call fastcc void @analyze_siv_subscript_cst_affine(ptr noundef %1, ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4) #30
  br label %107

33:                                               ; preds = %29, %26
  %34 = tail call fastcc zeroext i8 @evolution_function_is_affine_in_loop(ptr noundef %0, i32 noundef %5) #30, !range !536
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %92, label %36, !prof !836

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @evolution_function_is_affine_in_loop(ptr noundef %1, i32 noundef %5) #30, !range !536
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %92, label %39, !prof !836

39:                                               ; preds = %36
  %40 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %0) #31
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %66, !prof !860

42:                                               ; preds = %39
  %43 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %1) #31
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %66, !prof !861

45:                                               ; preds = %42
  tail call fastcc void @analyze_subscript_affine_affine(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %46 = load ptr, ptr %2, align 8, !tbaa !430
  %47 = load i32, ptr %46, align 8, !tbaa !486
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %53, label %49, !prof !862

49:                                               ; preds = %45
  %50 = load ptr, ptr %3, align 8, !tbaa !430
  %51 = load i32, ptr %50, align 8, !tbaa !486
  %52 = icmp eq i32 %51, 3
  br i1 %52, label %53, label %56, !prof !862

53:                                               ; preds = %49, %45
  %54 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  br label %107

56:                                               ; preds = %49
  %57 = icmp eq i32 %47, 0
  %58 = icmp eq i32 %51, 0
  %59 = or i1 %57, %58
  br i1 %59, label %60, label %63, !prof !864

60:                                               ; preds = %56
  %61 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %107

63:                                               ; preds = %56
  %64 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  br label %107

66:                                               ; preds = %42, %39
  %67 = call fastcc zeroext i8 @can_use_analyze_subscript_affine_affine(ptr noundef nonnull %7, ptr noundef nonnull %8) #30, !range !536
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %92, label %69, !prof !867

69:                                               ; preds = %66
  %70 = load ptr, ptr %7, align 8, !tbaa !430
  %71 = load ptr, ptr %8, align 8, !tbaa !430
  tail call fastcc void @analyze_subscript_affine_affine(ptr noundef %70, ptr noundef %71, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %72 = load ptr, ptr %2, align 8, !tbaa !430
  %73 = load i32, ptr %72, align 8, !tbaa !486
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %79, label %75, !prof !868

75:                                               ; preds = %69
  %76 = load ptr, ptr %3, align 8, !tbaa !430
  %77 = load i32, ptr %76, align 8, !tbaa !486
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %79, label %82, !prof !868

79:                                               ; preds = %75, %69
  %80 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %81 = add nsw i32 %80, 1
  store i32 %81, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  br label %107

82:                                               ; preds = %75
  %83 = icmp eq i32 %73, 0
  %84 = icmp eq i32 %77, 0
  %85 = or i1 %83, %84
  br i1 %85, label %86, label %89, !prof !869

86:                                               ; preds = %82
  %87 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %88 = add nsw i32 %87, 1
  store i32 %88, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %107

89:                                               ; preds = %82
  %90 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  %91 = add nsw i32 %90, 1
  store i32 %91, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  br label %107

92:                                               ; preds = %33, %36, %66
  %93 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %94 = icmp eq ptr %93, null
  br i1 %94, label %101, label %95, !prof !870

95:                                               ; preds = %92
  %96 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %97 = and i32 %96, 8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %95
  %100 = tail call i64 @fwrite(ptr nonnull @.str.82, i64 32, i64 1, ptr nonnull %93)
  br label %101

101:                                              ; preds = %99, %95, %92
  %102 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %102, ptr %2, align 8, !tbaa !430
  %103 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %103, ptr %3, align 8, !tbaa !430
  %104 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %104, ptr %4, align 8, !tbaa !430
  %105 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  br label %107

107:                                              ; preds = %32, %60, %63, %53, %79, %89, %86, %101, %25
  %108 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %109 = icmp eq ptr %108, null
  br i1 %109, label %116, label %110, !prof !857

110:                                              ; preds = %107
  %111 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %112 = and i32 %111, 8
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %108)
  br label %116

116:                                              ; preds = %114, %110, %107
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_miv_subscript(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef readonly %5) unnamed_addr #0 !prof !428 !PGOFuncName !871 {
  %7 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !872
  %8 = add nsw i32 %7, 1
  store i32 %8, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !872
  %9 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %6
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i64 @fwrite(ptr nonnull @.str.93, i64 24, i64 1, ptr nonnull %9)
  br label %17

17:                                               ; preds = %15, %11, %6
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !535
  %20 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !535
  %22 = tail call fastcc ptr @signed_type_for_types(ptr noundef %19, ptr noundef %21) #30
  %23 = tail call ptr @chrec_convert(ptr noundef %22, ptr noundef %0, ptr noundef null) #31
  %24 = tail call ptr @chrec_convert(ptr noundef %22, ptr noundef %1, ptr noundef null) #31
  %25 = tail call ptr @chrec_fold_minus(ptr noundef %22, ptr noundef %23, ptr noundef %24) #31
  %26 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %23, ptr noundef %24) #31
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %30 = tail call fastcc ptr @affine_fn_cst(ptr noundef %29) #30
  %31 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %30) #30
  store ptr %31, ptr %2, align 8, !tbaa !430
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %33 = tail call fastcc ptr @affine_fn_cst(ptr noundef %32) #30
  %34 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %33) #30
  store ptr %34, ptr %3, align 8, !tbaa !430
  %35 = tail call fastcc ptr @get_chrec_loop(ptr noundef %23) #30
  %36 = tail call fastcc ptr @estimated_loop_iterations_tree(ptr noundef %35) #30
  store ptr %36, ptr %4, align 8, !tbaa !430
  br label %87

37:                                               ; preds = %17
  %38 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %25) #30, !range !536
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i8 @gcd_of_steps_may_divide_p(ptr noundef %23, ptr noundef %25) #30, !range !536
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %44, ptr %2, align 8, !tbaa !430
  %45 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %45, ptr %3, align 8, !tbaa !430
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %46, ptr %4, align 8, !tbaa !430
  br label %87

47:                                               ; preds = %40, %37
  %48 = load i32, ptr %5, align 8, !tbaa !467
  %49 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %23, i32 noundef %48) #31
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %74, label %51

51:                                               ; preds = %47
  %52 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %23) #31
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load i32, ptr %5, align 8, !tbaa !467
  %56 = tail call zeroext i8 @evolution_function_is_affine_multivariate_p(ptr noundef %24, i32 noundef %55) #31
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %74, label %58

58:                                               ; preds = %54
  %59 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %24) #31
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  tail call fastcc void @analyze_subscript_affine_affine(ptr noundef %23, ptr noundef %24, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  %62 = load ptr, ptr %2, align 8, !tbaa !430
  %63 = load i32, ptr %62, align 8, !tbaa !486
  %64 = icmp eq i32 %63, 3
  br i1 %64, label %87, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %3, align 8, !tbaa !430
  %67 = load i32, ptr %66, align 8, !tbaa !486
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %87, label %69

69:                                               ; preds = %65
  %70 = icmp eq i32 %63, 0
  %71 = icmp eq i32 %67, 0
  %72 = or i1 %70, %71
  %73 = select i1 %72, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17)
  br label %87

74:                                               ; preds = %58, %54, %51, %47
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %74
  %78 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 50, i64 1, ptr nonnull %75)
  br label %83

83:                                               ; preds = %81, %77, %74
  %84 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %84, ptr %2, align 8, !tbaa !430
  %85 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %85, ptr %3, align 8, !tbaa !430
  %86 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %86, ptr %4, align 8, !tbaa !430
  br label %87

87:                                               ; preds = %69, %61, %65, %43, %83, %28
  %88 = phi ptr [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), %43 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %83 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17), %28 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %65 ], [ getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), %61 ], [ %73, %69 ]
  %89 = load i32, ptr %88, align 4, !tbaa !499
  %90 = add nsw i32 %89, 1
  store i32 %90, ptr %88, align 4, !tbaa !499
  %91 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %92 = icmp eq ptr %91, null
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %95 = and i32 %94, 8
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr nonnull %91)
  br label %99

99:                                               ; preds = %97, %93, %87
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !873 !PGOFuncName !874 {
  %2 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef %0) #31
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef readonly %0) unnamed_addr #5 !prof !875 !PGOFuncName !876 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !877

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  %6 = add i16 %5, -23
  %7 = icmp ult i16 %6, 2
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %3, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %3 ]
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @signed_type_for_types(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !878 !PGOFuncName !879 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = icmp ugt i32 %5, %8
  %10 = select i1 %9, ptr %0, ptr %1, !prof !880
  %11 = tail call ptr @signed_type_for(ptr noundef nonnull %10) #31
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @chrec_convert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @chrec_fold_minus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @conflict_fn_no_dependence() unnamed_addr #0 !prof !881 !PGOFuncName !882 {
  %1 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 24) #31
  store i32 0, ptr %1, align 8, !tbaa !486
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @signed_type_for(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare zeroext i8 @evolution_function_is_univariate_p(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @evolution_function_is_affine_in_loop(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !883 !PGOFuncName !884 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %19, label %4, !prof !885

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 146
  br i1 %7, label %8, label %19, !prof !886

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %10 = load ptr, ptr %9, align 8, !tbaa !535
  %11 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %10, i32 noundef %1) #31
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13, !prof !885

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !535
  %16 = tail call zeroext i8 @evolution_function_is_invariant_p(ptr noundef %15, i32 noundef %1) #31
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %19, !prof !885

18:                                               ; preds = %13, %8
  br label %19

19:                                               ; preds = %4, %13, %2, %18
  %20 = phi i8 [ 0, %18 ], [ 0, %2 ], [ 1, %13 ], [ 0, %4 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_siv_subscript_cst_affine(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !428 !PGOFuncName !887 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #29
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !535
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !535
  %13 = tail call fastcc ptr @signed_type_for_types(ptr noundef %10, ptr noundef %12) #30
  %14 = tail call ptr @chrec_convert(ptr noundef %13, ptr noundef %0, ptr noundef null) #31
  %15 = tail call ptr @chrec_convert(ptr noundef %13, ptr noundef %1, ptr noundef null) #31
  %16 = tail call ptr @initial_condition(ptr noundef %15) #31
  %17 = tail call ptr @chrec_fold_minus(ptr noundef %13, ptr noundef %16, ptr noundef %14) #31
  %18 = tail call ptr @initial_condition(ptr noundef %17) #31
  %19 = call zeroext i8 @chrec_is_positive(ptr noundef %18, ptr noundef nonnull %6) #31
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %5
  %22 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %26 = and i32 %25, 8
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = call i64 @fwrite(ptr nonnull @.str.83, i64 40, i64 1, ptr nonnull %22)
  br label %30

30:                                               ; preds = %28, %24, %21
  %31 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %33 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %33, ptr %2, align 8, !tbaa !430
  %34 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %34, ptr %3, align 8, !tbaa !430
  %35 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %35, ptr %4, align 8, !tbaa !430
  br label %168

36:                                               ; preds = %5
  %37 = load i8, ptr %6, align 1, !tbaa !535
  %38 = icmp eq i8 %37, 0
  %39 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !535
  br i1 %38, label %41, label %105

41:                                               ; preds = %36
  %42 = call zeroext i8 @chrec_is_positive(ptr noundef %40, ptr noundef nonnull %7) #31
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %46 = icmp eq ptr %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %47
  %52 = call i64 @fwrite(ptr nonnull @.str.84, i64 37, i64 1, ptr nonnull %45)
  br label %53

53:                                               ; preds = %51, %47, %44
  %54 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %54, ptr %2, align 8, !tbaa !430
  %55 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %55, ptr %3, align 8, !tbaa !430
  %56 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %56, ptr %4, align 8, !tbaa !430
  %57 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  br label %168

59:                                               ; preds = %41
  %60 = load i8, ptr %7, align 1, !tbaa !535
  %61 = icmp eq i8 %60, 1
  br i1 %61, label %62, label %99

62:                                               ; preds = %59
  %63 = load ptr, ptr %39, align 8, !tbaa !535
  %64 = call fastcc zeroext i8 @tree_fold_divides_p(ptr noundef %63, ptr noundef %17) #30
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %93, label %66

66:                                               ; preds = %62
  %67 = call fastcc ptr @get_chrec_loop(ptr noundef nonnull %15) #30
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %69 = call fastcc ptr @affine_fn_cst(ptr noundef %68) #30
  %70 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %69) #30
  store ptr %70, ptr %2, align 8, !tbaa !430
  %71 = call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 82, ptr noundef %13, ptr noundef %17) #31
  %72 = load ptr, ptr %39, align 8, !tbaa !535
  %73 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef %13, ptr noundef %71, ptr noundef %72) #31
  %74 = call fastcc ptr @affine_fn_cst(ptr noundef %73) #30
  %75 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %74) #30
  store ptr %75, ptr %3, align 8, !tbaa !430
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !430
  store ptr %76, ptr %4, align 8, !tbaa !430
  %77 = call i64 @estimated_loop_iterations_int(ptr noundef %67, i8 noundef zeroext 0) #30
  %78 = icmp sgt i64 %77, -1
  br i1 %78, label %79, label %90

79:                                               ; preds = %66
  %80 = call i32 @compare_tree_int(ptr noundef %73, i64 noundef %77) #31
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %79
  %83 = load ptr, ptr %2, align 8, !tbaa !430
  call fastcc void @free_conflict_function(ptr noundef %83) #30
  %84 = load ptr, ptr %3, align 8, !tbaa !430
  call fastcc void @free_conflict_function(ptr noundef %84) #30
  %85 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %85, ptr %2, align 8, !tbaa !430
  %86 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %86, ptr %3, align 8, !tbaa !430
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %87, ptr %4, align 8, !tbaa !430
  %88 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %89 = add nsw i32 %88, 1
  store i32 %89, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

90:                                               ; preds = %79, %66
  %91 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  br label %168

93:                                               ; preds = %62
  %94 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %94, ptr %2, align 8, !tbaa !430
  %95 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %95, ptr %3, align 8, !tbaa !430
  %96 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %96, ptr %4, align 8, !tbaa !430
  %97 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %98 = add nsw i32 %97, 1
  store i32 %98, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

99:                                               ; preds = %59
  %100 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %100, ptr %2, align 8, !tbaa !430
  %101 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %101, ptr %3, align 8, !tbaa !430
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %102, ptr %4, align 8, !tbaa !430
  %103 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

105:                                              ; preds = %36
  %106 = call zeroext i8 @chrec_is_positive(ptr noundef %40, ptr noundef nonnull %8) #31
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %105
  %109 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %110 = icmp eq ptr %109, null
  br i1 %110, label %117, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %113 = and i32 %112, 8
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = call i64 @fwrite(ptr nonnull @.str.84, i64 37, i64 1, ptr nonnull %109)
  br label %117

117:                                              ; preds = %115, %111, %108
  %118 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %118, ptr %2, align 8, !tbaa !430
  %119 = call fastcc ptr @conflict_fn_not_known() #30
  store ptr %119, ptr %3, align 8, !tbaa !430
  %120 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %120, ptr %4, align 8, !tbaa !430
  %121 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %122 = add nsw i32 %121, 1
  store i32 %122, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  br label %168

123:                                              ; preds = %105
  %124 = load i8, ptr %8, align 1, !tbaa !535
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %162

126:                                              ; preds = %123
  %127 = load ptr, ptr %39, align 8, !tbaa !535
  %128 = call fastcc zeroext i8 @tree_fold_divides_p(ptr noundef %127, ptr noundef %17) #30
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %126
  %131 = call fastcc ptr @get_chrec_loop(ptr noundef nonnull %15) #30
  %132 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %133 = call fastcc ptr @affine_fn_cst(ptr noundef %132) #30
  %134 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %133) #30
  store ptr %134, ptr %2, align 8, !tbaa !430
  %135 = load ptr, ptr %39, align 8, !tbaa !535
  %136 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 76, ptr noundef %13, ptr noundef %17, ptr noundef %135) #31
  %137 = call fastcc ptr @affine_fn_cst(ptr noundef %136) #30
  %138 = call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %137) #30
  store ptr %138, ptr %3, align 8, !tbaa !430
  %139 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !430
  store ptr %139, ptr %4, align 8, !tbaa !430
  %140 = call i64 @estimated_loop_iterations_int(ptr noundef %131, i8 noundef zeroext 0) #30
  %141 = icmp sgt i64 %140, -1
  br i1 %141, label %142, label %153

142:                                              ; preds = %130
  %143 = call i32 @compare_tree_int(ptr noundef %136, i64 noundef %140) #31
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %142
  %146 = load ptr, ptr %2, align 8, !tbaa !430
  call fastcc void @free_conflict_function(ptr noundef %146) #30
  %147 = load ptr, ptr %3, align 8, !tbaa !430
  call fastcc void @free_conflict_function(ptr noundef %147) #30
  %148 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %148, ptr %2, align 8, !tbaa !430
  %149 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %149, ptr %3, align 8, !tbaa !430
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %150, ptr %4, align 8, !tbaa !430
  %151 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %152 = add nsw i32 %151, 1
  store i32 %152, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

153:                                              ; preds = %142, %130
  %154 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  %155 = add nsw i32 %154, 1
  store i32 %155, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  br label %168

156:                                              ; preds = %126
  %157 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %157, ptr %2, align 8, !tbaa !430
  %158 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %158, ptr %3, align 8, !tbaa !430
  %159 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %159, ptr %4, align 8, !tbaa !430
  %160 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %161 = add nsw i32 %160, 1
  store i32 %161, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

162:                                              ; preds = %123
  %163 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %163, ptr %2, align 8, !tbaa !430
  %164 = call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %164, ptr %3, align 8, !tbaa !430
  %165 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %165, ptr %4, align 8, !tbaa !430
  %166 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  br label %168

168:                                              ; preds = %145, %153, %82, %90, %162, %156, %117, %99, %93, %53, %30
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_subscript_affine_affine(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !888 !PGOFuncName !889 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %0, ptr noundef %1) #31
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %18, label %10, !prof !890

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %12 = tail call fastcc ptr @affine_fn_cst(ptr noundef %11) #30
  %13 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %12) #30
  store ptr %13, ptr %2, align 8, !tbaa !430
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %15 = tail call fastcc ptr @affine_fn_cst(ptr noundef %14) #30
  %16 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %15) #30
  store ptr %16, ptr %3, align 8, !tbaa !430
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %17, ptr %4, align 8, !tbaa !430
  br label %274

18:                                               ; preds = %5
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21, !prof !890

21:                                               ; preds = %18
  %22 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %23 = and i32 %22, 8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 34, i64 1, ptr nonnull %19)
  br label %27

27:                                               ; preds = %25, %21, %18
  %28 = tail call i32 @nb_vars_in_chrec(ptr noundef %0) #31
  %29 = tail call i32 @nb_vars_in_chrec(ptr noundef %1) #31
  %30 = add i32 %29, %28
  %31 = tail call ptr @lambda_matrix_new(i32 noundef %30, i32 noundef %30) #31
  %32 = tail call ptr @lambda_matrix_new(i32 noundef %30, i32 noundef 1) #31
  %33 = tail call ptr @lambda_matrix_new(i32 noundef %30, i32 noundef 1) #31
  %34 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %32, ptr noundef %0, i32 noundef 0, i32 noundef 1) #30
  %35 = tail call i64 @int_cst_value(ptr noundef %34) #31
  %36 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %32, ptr noundef %1, i32 noundef %28, i32 noundef -1) #30
  %37 = tail call i64 @int_cst_value(ptr noundef %36) #31
  %38 = sub nsw i64 %37, %35
  %39 = icmp eq i64 %37, %35
  br i1 %39, label %40, label %84, !prof !891

40:                                               ; preds = %27
  %41 = icmp eq i32 %28, 1
  %42 = icmp eq i32 %29, 1
  %43 = and i1 %41, %42
  br i1 %43, label %44, label %63

44:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  %45 = tail call fastcc ptr @get_chrec_loop(ptr noundef %0) #30
  %46 = tail call i64 @estimated_loop_iterations_int(ptr noundef %45, i8 noundef zeroext 0) #30
  %47 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #30
  %48 = tail call i64 @estimated_loop_iterations_int(ptr noundef %47, i8 noundef zeroext 0) #30
  %49 = tail call i64 @llvm.smin.i64(i64 %46, i64 %48)
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !535
  %52 = tail call i64 @int_cst_value(ptr noundef %51) #31
  %53 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !535
  %55 = tail call i64 @int_cst_value(ptr noundef %54) #31
  %56 = trunc i64 %49 to i32
  %57 = trunc i64 %52 to i32
  %58 = trunc i64 %55 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %56, i32 noundef %57, i32 noundef %58, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef %4, i32 noundef 1) #30
  %59 = load ptr, ptr %6, align 8, !tbaa !430
  %60 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %59) #30
  store ptr %60, ptr %2, align 8, !tbaa !430
  %61 = load ptr, ptr %7, align 8, !tbaa !430
  %62 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %61) #30
  store ptr %62, ptr %3, align 8, !tbaa !430
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  br label %255

63:                                               ; preds = %40
  %64 = icmp eq i32 %28, 2
  %65 = and i1 %64, %42
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call fastcc void @compute_overlap_steps_for_affine_1_2(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #30
  br label %255

67:                                               ; preds = %63
  %68 = icmp eq i32 %29, 2
  %69 = and i1 %41, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  tail call fastcc void @compute_overlap_steps_for_affine_1_2(ptr noundef %1, ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4) #30
  br label %255

71:                                               ; preds = %67
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %73 = icmp eq ptr %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %76 = and i32 %75, 8
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %74
  %79 = tail call i64 @fwrite(ptr nonnull @.str.86, i64 47, i64 1, ptr nonnull %72)
  br label %80

80:                                               ; preds = %78, %74, %71
  %81 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %81, ptr %2, align 8, !tbaa !430
  %82 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %82, ptr %3, align 8, !tbaa !430
  %83 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %83, ptr %4, align 8, !tbaa !430
  br label %255

84:                                               ; preds = %27
  tail call void @lambda_matrix_right_hermite(ptr noundef %32, i32 noundef %30, i32 noundef 1, ptr noundef %33, ptr noundef %31) #31
  %85 = load ptr, ptr %33, align 8, !tbaa !430
  %86 = load i32, ptr %85, align 4, !tbaa !499
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %92, !prof !892

88:                                               ; preds = %84
  %89 = sub nsw i32 0, %86
  store i32 %89, ptr %85, align 4, !tbaa !499
  tail call void @lambda_matrix_row_negate(ptr noundef %31, i32 noundef %30, i32 noundef 0) #31
  %90 = load ptr, ptr %33, align 8, !tbaa !430
  %91 = load i32, ptr %90, align 4, !tbaa !499
  br label %92

92:                                               ; preds = %88, %84
  %93 = phi i32 [ %91, %88 ], [ %86, %84 ]
  %94 = sext i32 %93 to i64
  %95 = icmp eq i32 %93, 0
  br i1 %95, label %96, label %100, !prof !891

96:                                               ; preds = %92
  %97 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %97, ptr %2, align 8, !tbaa !430
  %98 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %98, ptr %3, align 8, !tbaa !430
  %99 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %99, ptr %4, align 8, !tbaa !430
  br label %255

100:                                              ; preds = %92
  %101 = trunc i64 %38 to i32
  %102 = tail call fastcc zeroext i8 @int_divides_p(i32 noundef %93, i32 noundef %101) #30, !range !536
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %108, !prof !893

104:                                              ; preds = %100
  %105 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %105, ptr %2, align 8, !tbaa !430
  %106 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %106, ptr %3, align 8, !tbaa !430
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %107, ptr %4, align 8, !tbaa !430
  br label %255

108:                                              ; preds = %100
  %109 = icmp eq i32 %28, 1
  %110 = icmp eq i32 %29, 1
  %111 = and i1 %109, %110
  br i1 %111, label %112, label %242, !prof !894

112:                                              ; preds = %108
  %113 = load ptr, ptr %32, align 8, !tbaa !430
  %114 = load i32, ptr %113, align 4, !tbaa !499
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %121, !prof !895

116:                                              ; preds = %112
  %117 = getelementptr inbounds ptr, ptr %32, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !430
  %119 = load i32, ptr %118, align 4, !tbaa !499
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %128, label %229, !prof !896

121:                                              ; preds = %112
  %122 = icmp slt i32 %114, 0
  br i1 %122, label %123, label %229, !prof !897

123:                                              ; preds = %121
  %124 = getelementptr inbounds ptr, ptr %32, i64 1
  %125 = load ptr, ptr %124, align 8, !tbaa !430
  %126 = load i32, ptr %125, align 4, !tbaa !499
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %229, !prof !898

128:                                              ; preds = %123, %116
  %129 = load ptr, ptr %31, align 8, !tbaa !430
  %130 = load i32, ptr %129, align 4, !tbaa !499
  %131 = sext i32 %130 to i64
  %132 = mul nsw i64 %38, %131
  %133 = sdiv i64 %132, %94
  %134 = getelementptr inbounds i32, ptr %129, i64 1
  %135 = load i32, ptr %134, align 4, !tbaa !499
  %136 = sext i32 %135 to i64
  %137 = mul nsw i64 %38, %136
  %138 = sdiv i64 %137, %94
  %139 = getelementptr inbounds ptr, ptr %31, i64 1
  %140 = load ptr, ptr %139, align 8, !tbaa !430
  %141 = load i32, ptr %140, align 4, !tbaa !499
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, ptr %140, i64 1
  %144 = load i32, ptr %143, align 4, !tbaa !499
  %145 = sext i32 %144 to i64
  %146 = icmp eq i32 %141, 0
  br i1 %146, label %147, label %149, !prof !899

147:                                              ; preds = %128
  %148 = icmp slt i64 %133, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %147, %128
  %150 = icmp eq i32 %144, 0
  br i1 %150, label %151, label %157, !prof !899

151:                                              ; preds = %149
  %152 = icmp slt i64 %138, 0
  br i1 %152, label %153, label %216

153:                                              ; preds = %151, %147
  %154 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %154, ptr %2, align 8, !tbaa !430
  %155 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %155, ptr %3, align 8, !tbaa !430
  %156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %156, ptr %4, align 8, !tbaa !430
  br label %255

157:                                              ; preds = %149
  %158 = icmp sgt i32 %141, 0
  %159 = icmp sgt i32 %144, 0
  %160 = select i1 %158, i1 %159, i1 false
  br i1 %160, label %161, label %216, !prof !900

161:                                              ; preds = %157
  %162 = tail call fastcc ptr @get_chrec_loop(ptr noundef %0) #30
  %163 = tail call i64 @estimated_loop_iterations_int(ptr noundef %162, i8 noundef zeroext 0) #30
  %164 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #30
  %165 = tail call i64 @estimated_loop_iterations_int(ptr noundef %164, i8 noundef zeroext 0) #30
  %166 = tail call i64 @llvm.smin.i64(i64 %163, i64 %165)
  %167 = xor i64 %133, -1
  %168 = add i64 %142, %167
  %169 = sdiv i64 %168, %142
  %170 = xor i64 %138, -1
  %171 = add i64 %145, %170
  %172 = sdiv i64 %171, %145
  %173 = tail call i64 @llvm.smax.i64(i64 %169, i64 %172)
  %174 = mul nsw i64 %173, %142
  %175 = add nsw i64 %174, %133
  %176 = mul nsw i64 %173, %145
  %177 = add nsw i64 %176, %138
  %178 = sdiv i64 %175, %142
  %179 = sdiv i64 %177, %145
  %180 = tail call i64 @llvm.smin.i64(i64 %178, i64 %179)
  %181 = mul nsw i64 %180, %142
  %182 = sub nsw i64 %175, %181
  %183 = mul nsw i64 %180, %145
  %184 = sub nsw i64 %177, %183
  %185 = icmp sgt i64 %166, 0
  br i1 %185, label %186, label %200, !prof !901

186:                                              ; preds = %161
  %187 = icmp slt i64 %182, %166
  %188 = icmp slt i64 %184, %166
  %189 = select i1 %187, i1 %188, i1 false
  br i1 %189, label %190, label %212, !prof !902

190:                                              ; preds = %186
  %191 = sub nsw i64 %166, %133
  %192 = sdiv i64 %191, %142
  %193 = sub nsw i64 %166, %138
  %194 = sdiv i64 %193, %145
  %195 = tail call i64 @llvm.smin.i64(i64 %192, i64 %194)
  %196 = sub nsw i64 %182, %133
  %197 = sdiv i64 %196, %142
  %198 = sub nsw i64 %195, %197
  %199 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %198) #31
  br label %202

200:                                              ; preds = %161
  %201 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %202

202:                                              ; preds = %200, %190
  %203 = phi ptr [ %201, %200 ], [ %199, %190 ]
  store ptr %203, ptr %4, align 8, !tbaa !430
  %204 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %182) #31
  %205 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %142) #31
  %206 = tail call fastcc ptr @affine_fn_univar(ptr noundef %204, i32 noundef 1, ptr noundef %205) #30
  %207 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %206) #30
  store ptr %207, ptr %2, align 8, !tbaa !430
  %208 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %184) #31
  %209 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %145) #31
  %210 = tail call fastcc ptr @affine_fn_univar(ptr noundef %208, i32 noundef 1, ptr noundef %209) #30
  %211 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %210) #30
  store ptr %211, ptr %3, align 8, !tbaa !430
  br label %255

212:                                              ; preds = %186
  %213 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %213, ptr %2, align 8, !tbaa !430
  %214 = tail call fastcc ptr @conflict_fn_no_dependence() #30
  store ptr %214, ptr %3, align 8, !tbaa !430
  %215 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %215, ptr %4, align 8, !tbaa !430
  br label %255

216:                                              ; preds = %151, %157
  %217 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %218 = icmp eq ptr %217, null
  br i1 %218, label %225, label %219

219:                                              ; preds = %216
  %220 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %221 = and i32 %220, 8
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %219
  %224 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 42, i64 1, ptr nonnull %217)
  br label %225

225:                                              ; preds = %223, %219, %216
  %226 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %226, ptr %2, align 8, !tbaa !430
  %227 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %227, ptr %3, align 8, !tbaa !430
  %228 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %228, ptr %4, align 8, !tbaa !430
  br label %255

229:                                              ; preds = %116, %123, %121
  %230 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %231 = icmp eq ptr %230, null
  br i1 %231, label %238, label %232

232:                                              ; preds = %229
  %233 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %234 = and i32 %233, 8
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 42, i64 1, ptr nonnull %230)
  br label %238

238:                                              ; preds = %236, %232, %229
  %239 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %239, ptr %2, align 8, !tbaa !430
  %240 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %240, ptr %3, align 8, !tbaa !430
  %241 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %241, ptr %4, align 8, !tbaa !430
  br label %255

242:                                              ; preds = %108
  %243 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %244 = icmp eq ptr %243, null
  br i1 %244, label %251, label %245

245:                                              ; preds = %242
  %246 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %247 = and i32 %246, 8
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %251, label %249

249:                                              ; preds = %245
  %250 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 42, i64 1, ptr nonnull %243)
  br label %251

251:                                              ; preds = %249, %245, %242
  %252 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %252, ptr %2, align 8, !tbaa !430
  %253 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %253, ptr %3, align 8, !tbaa !430
  %254 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %254, ptr %4, align 8, !tbaa !430
  br label %255

255:                                              ; preds = %153, %212, %202, %225, %104, %238, %251, %44, %70, %80, %66, %96
  %256 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %257 = icmp eq ptr %256, null
  br i1 %257, label %274, label %258, !prof !890

258:                                              ; preds = %255
  %259 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %260 = and i32 %259, 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %274, label %262

262:                                              ; preds = %258
  %263 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 16, i64 1, ptr nonnull %256)
  %264 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %265 = load ptr, ptr %2, align 8, !tbaa !430
  tail call fastcc void @dump_conflict_function(ptr noundef %264, ptr noundef %265) #30
  %266 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %267 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 18, i64 1, ptr %266)
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %269 = load ptr, ptr %3, align 8, !tbaa !430
  tail call fastcc void @dump_conflict_function(ptr noundef %268, ptr noundef %269) #30
  %270 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %271 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %270)
  %272 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %273 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %272)
  br label %274

274:                                              ; preds = %255, %258, %262, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @can_use_analyze_subscript_affine_affine(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !903 !PGOFuncName !904 {
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  %4 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !535
  %6 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %5) #31
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %57, !prof !905

8:                                                ; preds = %2
  %9 = load ptr, ptr %1, align 8, !tbaa !430
  %10 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !535
  %12 = tail call zeroext i8 @chrec_contains_symbols(ptr noundef %11) #31
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %57, !prof !905

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !430
  %16 = tail call fastcc ptr @chrec_type(ptr noundef %15) #30
  %17 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !535
  %19 = load ptr, ptr %1, align 8, !tbaa !430
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !535
  %22 = tail call ptr @chrec_convert(ptr noundef %16, ptr noundef %21, ptr noundef null) #31
  %23 = tail call ptr @chrec_fold_minus(ptr noundef %16, ptr noundef %18, ptr noundef %22) #31
  %24 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %23) #30, !range !536
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %57, label %26, !prof !867

26:                                               ; preds = %14
  %27 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29, !prof !906

29:                                               ; preds = %26
  %30 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %29
  %34 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 40, i64 1, ptr nonnull %27)
  br label %35

35:                                               ; preds = %33, %29, %26
  %36 = load ptr, ptr %0, align 8, !tbaa !430
  %37 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !535
  %39 = getelementptr inbounds %struct.tree_int_cst, ptr %38, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !535
  %41 = trunc i64 %40 to i32
  %42 = getelementptr inbounds %struct.tree_exp, ptr %36, i64 1, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !535
  %44 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %41, ptr noundef %23, ptr noundef %43) #30
  store ptr %44, ptr %0, align 8, !tbaa !430
  %45 = load ptr, ptr %1, align 8, !tbaa !430
  %46 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 1, i32 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !535
  %48 = tail call ptr @chrec_convert(ptr noundef %16, ptr noundef %47, ptr noundef null) #31
  %49 = load ptr, ptr %1, align 8, !tbaa !430
  %50 = getelementptr inbounds %struct.tree_exp, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !535
  %52 = getelementptr inbounds %struct.tree_int_cst, ptr %51, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !535
  %54 = trunc i64 %53 to i32
  %55 = tail call ptr @build_int_cst(ptr noundef %16, i64 noundef 0) #31
  %56 = tail call fastcc ptr @build_polynomial_chrec(i32 noundef %54, ptr noundef %55, ptr noundef %48) #30
  store ptr %56, ptr %1, align 8, !tbaa !430
  br label %57

57:                                               ; preds = %14, %2, %8, %35
  %58 = phi i8 [ 1, %35 ], [ 0, %8 ], [ 0, %2 ], [ 0, %14 ]
  ret i8 %58
}

; Function Attrs: optsize
declare zeroext i8 @chrec_is_positive(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_fold_divides_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !907 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 23
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 134, ptr noundef nonnull @.str.51) #31
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i64, ptr %1, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 23
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 135, ptr noundef nonnull @.str.51) #31
  br label %12

12:                                               ; preds = %7, %11
  %13 = tail call ptr @int_const_binop(i32 noundef 71, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef 0) #31
  %14 = tail call i32 @integer_zerop(ptr noundef %13) #31
  %15 = trunc i32 %14 to i8
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_chrec_loop(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !908 !PGOFuncName !909 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !535
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !535
  %6 = trunc i64 %5 to i32
  %7 = tail call fastcc ptr @get_loop(i32 noundef %6) #30
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @compare_tree_int(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #9 !prof !908 !PGOFuncName !910 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !430
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !911
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !912
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #30
  ret ptr %7
}

; Function Attrs: optsize
declare i32 @nb_vars_in_chrec(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @lambda_matrix_new(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @int_cst_value(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !914 !PGOFuncName !915 {
  br label %5

5:                                                ; preds = %21, %4
  %6 = phi ptr [ %1, %4 ], [ %30, %21 ]
  %7 = phi i32 [ %2, %4 ], [ %31, %21 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %9, label %10, !prof !916

9:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1939, ptr noundef nonnull @.str.51) #31
  br label %10

10:                                               ; preds = %5, %9
  %11 = load i64, ptr %6, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %61 [
    i16 146, label %13
    i16 63, label %34
    i16 65, label %34
    i16 64, label %34
    i16 116, label %46
    i16 90, label %52
    i16 23, label %32
  ], !prof !917

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !535
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 23
  br i1 %18, label %21, label %19, !prof !918

19:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1944, ptr noundef nonnull @.str.51) #31
  %20 = load ptr, ptr %14, align 8, !tbaa !535
  br label %21

21:                                               ; preds = %13, %19
  %22 = phi ptr [ %15, %13 ], [ %20, %19 ]
  %23 = tail call i64 @int_cst_value(ptr noundef %22) #31
  %24 = trunc i64 %23 to i32
  %25 = mul i32 %24, %3
  %26 = zext i32 %7 to i64
  %27 = getelementptr inbounds ptr, ptr %0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !430
  store i32 %25, ptr %28, align 4, !tbaa !499
  %29 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %30 = load ptr, ptr %29, align 8, !tbaa !535
  %31 = add i32 %7, 1
  br label %5

32:                                               ; preds = %61, %10, %52, %46, %34
  %33 = phi ptr [ %45, %34 ], [ %51, %46 ], [ %60, %52 ], [ null, %61 ], [ %6, %10 ]
  ret ptr %33

34:                                               ; preds = %10, %10, %10
  %35 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !535
  %37 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %36, i32 noundef %7, i32 noundef %3) #30
  %38 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !535
  %40 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %39, i32 noundef %7, i32 noundef %3) #30
  %41 = load i64, ptr %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %6) #30
  %45 = tail call fastcc ptr @chrec_fold_op(i32 noundef %43, ptr noundef %44, ptr noundef %37, ptr noundef %40) #30
  br label %32

46:                                               ; preds = %10
  %47 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !535
  %49 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %48, i32 noundef %7, i32 noundef %3) #30
  %50 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %6) #30
  %51 = tail call ptr @chrec_convert(ptr noundef %50, ptr noundef %49, ptr noundef null) #31
  br label %32

52:                                               ; preds = %10
  %53 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !535
  %55 = tail call fastcc ptr @initialize_matrix_A(ptr noundef %0, ptr noundef %54, i32 noundef %7, i32 noundef %3) #30
  %56 = tail call fastcc ptr @chrec_type(ptr noundef nonnull %6) #30
  %57 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !535
  %59 = tail call ptr @build_int_cst(ptr noundef %58, i64 noundef -1) #31
  %60 = tail call fastcc ptr @chrec_fold_op(i32 noundef 64, ptr noundef %56, ptr noundef %59, ptr noundef %55) #30
  br label %32

61:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 1977, ptr noundef nonnull @.str.51) #31
  br label %32
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, i32 noundef %6) unnamed_addr #0 !prof !428 !PGOFuncName !919 {
  %8 = icmp slt i32 %1, 1
  %9 = icmp slt i32 %2, 1
  %10 = or i1 %8, %9
  %11 = and i32 %2, %1
  %12 = icmp sgt i32 %11, -1
  %13 = and i1 %10, %12
  br i1 %13, label %37, label %14

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @gcd(i32 noundef %1, i32 noundef %2) #30, !range !920
  %16 = sdiv i32 %2, %15
  %17 = sdiv i32 %1, %15
  %18 = icmp sgt i32 %0, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = sdiv i32 %0, %16
  %21 = sdiv i32 %0, %17
  %22 = tail call i32 @llvm.smin.i32(i32 %20, i32 %21)
  %23 = sext i32 %22 to i64
  %24 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %23) #31
  br label %27

25:                                               ; preds = %14
  %26 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi ptr [ %26, %25 ], [ %24, %19 ]
  store ptr %28, ptr %5, align 8, !tbaa !430
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %30 = sext i32 %16 to i64
  %31 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %30) #31
  %32 = tail call fastcc ptr @affine_fn_univar(ptr noundef %29, i32 noundef %6, ptr noundef %31) #30
  store ptr %32, ptr %3, align 8, !tbaa !430
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %34 = sext i32 %17 to i64
  %35 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %34) #31
  %36 = tail call fastcc ptr @affine_fn_univar(ptr noundef %33, i32 noundef %6, ptr noundef %35) #30
  store ptr %36, ptr %4, align 8, !tbaa !430
  br label %43

37:                                               ; preds = %7
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %39 = tail call fastcc ptr @affine_fn_cst(ptr noundef %38) #30
  store ptr %39, ptr %3, align 8, !tbaa !430
  %40 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %41 = tail call fastcc ptr @affine_fn_cst(ptr noundef %40) #30
  store ptr %41, ptr %4, align 8, !tbaa !430
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %42, ptr %5, align 8, !tbaa !430
  br label %43

43:                                               ; preds = %37, %27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_overlap_steps_for_affine_1_2(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !428 !PGOFuncName !921 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #29
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !535
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !535
  %19 = tail call i64 @int_cst_value(ptr noundef %18) #31
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !535
  %22 = tail call i64 @int_cst_value(ptr noundef %21) #31
  %23 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !535
  %25 = tail call i64 @int_cst_value(ptr noundef %24) #31
  %26 = load ptr, ptr %15, align 8, !tbaa !535
  %27 = tail call fastcc ptr @get_chrec_loop(ptr noundef %26) #30
  %28 = tail call i64 @estimated_loop_iterations_int(ptr noundef %27, i8 noundef zeroext 0) #30
  %29 = tail call fastcc ptr @get_chrec_loop(ptr noundef %0) #30
  %30 = tail call i64 @estimated_loop_iterations_int(ptr noundef %29, i8 noundef zeroext 0) #30
  %31 = tail call fastcc ptr @get_chrec_loop(ptr noundef %1) #30
  %32 = tail call i64 @estimated_loop_iterations_int(ptr noundef %31, i8 noundef zeroext 0) #30
  %33 = icmp slt i64 %28, 0
  %34 = icmp slt i64 %30, 0
  %35 = select i1 %33, i1 true, i1 %34
  %36 = icmp slt i64 %32, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %5
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %40 = icmp eq ptr %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %43 = and i32 %42, 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 48, i64 1, ptr nonnull %39)
  br label %47

47:                                               ; preds = %45, %41, %38
  %48 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %48, ptr %2, align 8, !tbaa !430
  %49 = tail call fastcc ptr @conflict_fn_not_known() #30
  store ptr %49, ptr %3, align 8, !tbaa !430
  %50 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  store ptr %50, ptr %4, align 8, !tbaa !430
  br label %121

51:                                               ; preds = %5
  %52 = trunc i64 %25 to i32
  %53 = trunc i64 %22 to i32
  %54 = trunc i64 %19 to i32
  %55 = tail call i64 @llvm.smin.i64(i64 %28, i64 %32)
  %56 = trunc i64 %55 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %56, i32 noundef %54, i32 noundef %52, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %12, i32 noundef 1) #30
  %57 = tail call i64 @llvm.smin.i64(i64 %30, i64 %32)
  %58 = trunc i64 %57 to i32
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %58, i32 noundef %53, i32 noundef %52, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %13, i32 noundef 2) #30
  %59 = tail call i64 @llvm.smin.i64(i64 %30, i64 %55)
  %60 = trunc i64 %59 to i32
  %61 = add nsw i32 %53, %54
  call fastcc void @compute_overlap_steps_for_affine_univar(i32 noundef %60, i32 noundef %61, i32 noundef %52, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %14, i32 noundef 3) #30
  %62 = load ptr, ptr %12, align 8, !tbaa !430
  %63 = tail call i32 @integer_zerop(ptr noundef %62) #31
  %64 = icmp eq i32 %63, 0
  %65 = load ptr, ptr %13, align 8, !tbaa !430
  %66 = tail call i32 @integer_zerop(ptr noundef %65) #31
  %67 = icmp eq i32 %66, 0
  %68 = load ptr, ptr %14, align 8, !tbaa !430
  %69 = tail call i32 @integer_zerop(ptr noundef %68) #31
  %70 = icmp eq i32 %69, 0
  %71 = select i1 %64, i1 true, i1 %67
  %72 = select i1 %71, i1 true, i1 %70
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %74 = tail call fastcc ptr @affine_fn_cst(ptr noundef %73) #30
  br i1 %72, label %75, label %108

75:                                               ; preds = %51
  %76 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %77 = tail call fastcc ptr @affine_fn_cst(ptr noundef %76) #30
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %79 = tail call fastcc ptr @affine_fn_cst(ptr noundef %78) #30
  br i1 %64, label %80, label %85

80:                                               ; preds = %75
  %81 = load ptr, ptr %6, align 8, !tbaa !430
  %82 = tail call fastcc ptr @affine_fn_plus(ptr noundef %74, ptr noundef %81) #30
  %83 = load ptr, ptr %7, align 8, !tbaa !430
  %84 = tail call fastcc ptr @affine_fn_plus(ptr noundef %79, ptr noundef %83) #30
  tail call fastcc void @affine_fn_free(ptr noundef %74) #30
  tail call fastcc void @affine_fn_free(ptr noundef %79) #30
  store ptr %62, ptr %4, align 8, !tbaa !430
  br label %85

85:                                               ; preds = %80, %75
  %86 = phi ptr [ %84, %80 ], [ %79, %75 ]
  %87 = phi ptr [ %82, %80 ], [ %74, %75 ]
  br i1 %67, label %88, label %93

88:                                               ; preds = %85
  %89 = load ptr, ptr %8, align 8, !tbaa !430
  %90 = tail call fastcc ptr @affine_fn_plus(ptr noundef %77, ptr noundef %89) #30
  %91 = load ptr, ptr %9, align 8, !tbaa !430
  %92 = tail call fastcc ptr @affine_fn_plus(ptr noundef %86, ptr noundef %91) #30
  tail call fastcc void @affine_fn_free(ptr noundef %77) #30
  tail call fastcc void @affine_fn_free(ptr noundef %86) #30
  store ptr %65, ptr %4, align 8, !tbaa !430
  br label %93

93:                                               ; preds = %88, %85
  %94 = phi ptr [ %92, %88 ], [ %86, %85 ]
  %95 = phi ptr [ %90, %88 ], [ %77, %85 ]
  br i1 %70, label %96, label %102

96:                                               ; preds = %93
  %97 = load ptr, ptr %10, align 8, !tbaa !430
  %98 = tail call fastcc ptr @affine_fn_plus(ptr noundef %87, ptr noundef %97) #30
  %99 = tail call fastcc ptr @affine_fn_plus(ptr noundef %95, ptr noundef %97) #30
  %100 = load ptr, ptr %11, align 8, !tbaa !430
  %101 = tail call fastcc ptr @affine_fn_plus(ptr noundef %94, ptr noundef %100) #30
  tail call fastcc void @affine_fn_free(ptr noundef %87) #30
  tail call fastcc void @affine_fn_free(ptr noundef %95) #30
  tail call fastcc void @affine_fn_free(ptr noundef %94) #30
  store ptr %68, ptr %4, align 8, !tbaa !430
  br label %102

102:                                              ; preds = %96, %93
  %103 = phi ptr [ %101, %96 ], [ %94, %93 ]
  %104 = phi ptr [ %99, %96 ], [ %95, %93 ]
  %105 = phi ptr [ %98, %96 ], [ %87, %93 ]
  %106 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 2, ptr noundef %105, ptr noundef %104) #30
  store ptr %106, ptr %2, align 8, !tbaa !430
  %107 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %103) #30
  store ptr %107, ptr %3, align 8, !tbaa !430
  br label %114

108:                                              ; preds = %51
  %109 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %74) #30
  store ptr %109, ptr %2, align 8, !tbaa !430
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %111 = tail call fastcc ptr @affine_fn_cst(ptr noundef %110) #30
  %112 = tail call ptr (i32, ...) @conflict_fn(i32 noundef 1, ptr noundef %111) #30
  store ptr %112, ptr %3, align 8, !tbaa !430
  %113 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  store ptr %113, ptr %4, align 8, !tbaa !430
  br label %114

114:                                              ; preds = %108, %102
  %115 = load ptr, ptr %6, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %115) #30
  %116 = load ptr, ptr %7, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %116) #30
  %117 = load ptr, ptr %8, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %117) #30
  %118 = load ptr, ptr %9, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %118) #30
  %119 = load ptr, ptr %10, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %119) #30
  %120 = load ptr, ptr %11, align 8, !tbaa !430
  tail call fastcc void @affine_fn_free(ptr noundef %120) #30
  br label %121

121:                                              ; preds = %114, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  ret void
}

; Function Attrs: optsize
declare void @lambda_matrix_right_hermite(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @lambda_matrix_row_negate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @int_divides_p(i32 noundef %0, i32 noundef %1) unnamed_addr #8 !prof !888 !PGOFuncName !922 {
  %3 = srem i32 %1, %0
  %4 = icmp eq i32 %3, 0
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @affine_fn_univar(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !518 !PGOFuncName !923 {
  %4 = add nuw nsw i32 %1, 1
  %5 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %4) #30
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %5, ptr noundef %0) #30
  %6 = icmp ugt i32 %1, 1
  br i1 %6, label %7, label %12, !prof !924

7:                                                ; preds = %3, %7
  %8 = phi i32 [ %10, %7 ], [ 1, %3 ]
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %5, ptr noundef %9) #30
  %10 = add nuw nsw i32 %8, 1
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %12, label %7, !prof !735, !llvm.loop !925

12:                                               ; preds = %7, %3
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %5, ptr noundef %2) #30
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @chrec_fold_op(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !prof !428 !PGOFuncName !926 {
  switch i32 %0, label %11 [
    i32 63, label %5
    i32 64, label %7
    i32 65, label %9
  ]

5:                                                ; preds = %4
  %6 = tail call ptr @chrec_fold_plus(ptr noundef %1, ptr noundef %2, ptr noundef %3) #31
  br label %12

7:                                                ; preds = %4
  %8 = tail call ptr @chrec_fold_minus(ptr noundef %1, ptr noundef %2, ptr noundef %3) #31
  br label %12

9:                                                ; preds = %4
  %10 = tail call ptr @chrec_fold_multiply(ptr noundef %1, ptr noundef %2, ptr noundef %3) #31
  br label %12

11:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.90, i32 noundef 257, ptr noundef nonnull @.str.51) #31
  br label %12

12:                                               ; preds = %11, %9, %7, %5
  %13 = phi ptr [ null, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @chrec_type(ptr noundef readonly %0) unnamed_addr #9 !prof !903 !PGOFuncName !927 {
  %2 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef %0) #30, !range !536
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %7, !prof !905

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !535
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @chrec_fold_plus(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @chrec_fold_multiply(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i32 @gcd(i32 noundef %0, i32 noundef %1) unnamed_addr #14 !prof !428 !PGOFuncName !928 {
  %3 = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %4 = icmp eq i32 %0, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @llvm.abs.i32(i32 %0, i1 true)
  br label %7

7:                                                ; preds = %5, %7
  %8 = phi i32 [ %10, %7 ], [ %6, %5 ]
  %9 = phi i32 [ %8, %7 ], [ %3, %5 ]
  %10 = urem i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !929

12:                                               ; preds = %7, %2
  %13 = phi i32 [ %3, %2 ], [ %8, %7 ]
  ret i32 %13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @affine_fn_plus(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !930 {
  %3 = tail call fastcc ptr @affine_fn_op(i32 noundef 63, ptr noundef %0, ptr noundef %1) #30
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @affine_fn_free(ptr noundef %0) unnamed_addr #10 !prof !873 !PGOFuncName !931 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !430
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %2) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @affine_fn_op(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !932 !PGOFuncName !933 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #30
  %6 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #30
  %7 = tail call i32 @llvm.umax.i32(i32 %5, i32 %6)
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 %6)
  %9 = tail call fastcc ptr @VEC_tree_heap_alloc(i32 noundef %7) #30
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %14, !prof !934

11:                                               ; preds = %14, %3
  %12 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %8, ptr noundef nonnull %4) #30, !range !429
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %28, label %32, !prof !935

14:                                               ; preds = %3, %14
  %15 = phi i32 [ %26, %14 ], [ 0, %3 ]
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %15) #30
  %17 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !535
  %19 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef %15) #30
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !535
  %22 = tail call fastcc ptr @signed_type_for_types(ptr noundef %18, ptr noundef %21) #30
  %23 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %15) #30
  %24 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %2, i32 noundef %15) #30
  %25 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %22, ptr noundef %23, ptr noundef %24) #31
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %9, ptr noundef %25) #30
  %26 = add nuw i32 %15, 1
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %11, label %14, !prof !936, !llvm.loop !937

28:                                               ; preds = %32, %11
  %29 = phi i32 [ %8, %11 ], [ %40, %32 ]
  %30 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %29, ptr noundef nonnull %4) #30, !range !429
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %43, !prof !935

32:                                               ; preds = %11, %32
  %33 = phi i32 [ %40, %32 ], [ %8, %11 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !430
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !535
  %37 = tail call ptr @signed_type_for(ptr noundef %36) #31
  %38 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %39 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %37, ptr noundef %34, ptr noundef %38) #31
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %9, ptr noundef %39) #30
  %40 = add i32 %33, 1
  %41 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %40, ptr noundef nonnull %4) #30, !range !429
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %28, label %32, !prof !735, !llvm.loop !938

43:                                               ; preds = %28, %43
  %44 = phi i32 [ %51, %43 ], [ %29, %28 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !430
  %46 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !535
  %48 = tail call ptr @signed_type_for(ptr noundef %47) #31
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !430
  %50 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %0, ptr noundef %48, ptr noundef %49, ptr noundef %45) #31
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %9, ptr noundef %50) #30
  %51 = add i32 %44, 1
  %52 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %51, ptr noundef nonnull %4) #30, !range !429
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %43, !prof !735, !llvm.loop !939

54:                                               ; preds = %43, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_polynomial_chrec(i32 noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !940 !PGOFuncName !941 {
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #29
  %5 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %6 = icmp eq ptr %5, %1
  %7 = icmp eq ptr %5, %2
  %8 = or i1 %6, %7
  br i1 %8, label %45, label %9, !prof !942

9:                                                ; preds = %3
  %10 = call fastcc zeroext i8 @no_evolution_in_loop_p(ptr noundef %1, i32 noundef %0, ptr noundef nonnull %4) #30, !range !536
  %11 = icmp ne i8 %10, 0
  %12 = load i8, ptr %4, align 1
  %13 = icmp ne i8 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %17, label %15, !prof !943

15:                                               ; preds = %9
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %45

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !535
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %23 [
    i16 10, label %22
    i16 12, label %22
  ], !prof !944

22:                                               ; preds = %17, %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.90, i32 noundef 143, ptr noundef nonnull @.str.51) #31
  br label %23

23:                                               ; preds = %17, %22
  %24 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !535
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %32 [
    i16 10, label %28
    i16 12, label %28
  ], !prof !944

28:                                               ; preds = %23, %23
  %29 = load ptr, ptr @sizetype_tab, align 16, !tbaa !430
  %30 = load ptr, ptr %18, align 8, !tbaa !535
  %31 = icmp eq ptr %29, %30
  br i1 %31, label %37, label %35

32:                                               ; preds = %23
  %33 = load ptr, ptr %18, align 8, !tbaa !535
  %34 = icmp eq ptr %25, %33
  br i1 %34, label %37, label %35, !prof !945

35:                                               ; preds = %32, %28
  %36 = phi i32 [ 147, %28 ], [ 149, %32 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.90, i32 noundef %36, ptr noundef nonnull @.str.51) #31
  br label %37

37:                                               ; preds = %35, %32, %28
  %38 = tail call fastcc zeroext i8 @chrec_zerop(ptr noundef nonnull %2) #30
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45, !prof !945

40:                                               ; preds = %37
  %41 = load ptr, ptr %24, align 8, !tbaa !535
  %42 = zext i32 %0 to i64
  %43 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %42) #31
  %44 = tail call ptr @build3_stat(i32 noundef 146, ptr noundef %41, ptr noundef %43, ptr noundef nonnull %1, ptr noundef nonnull %2) #31
  br label %45

45:                                               ; preds = %3, %37, %40, %15
  %46 = phi ptr [ %44, %40 ], [ %16, %15 ], [ %1, %37 ], [ %5, %3 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #29
  ret ptr %46
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @no_evolution_in_loop_p(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !940 !PGOFuncName !946 {
  %4 = load ptr, ptr @chrec_not_analyzed_yet, align 8, !tbaa !430
  %5 = icmp eq ptr %4, %0
  %6 = load ptr, ptr @chrec_dont_know, align 8
  %7 = icmp eq ptr %6, %0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %17, label %9, !prof !942

9:                                                ; preds = %3
  %10 = tail call zeroext i8 @chrec_contains_symbols_defined_in_loop(ptr noundef %0, i32 noundef %1) #31
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %17, !prof !945

12:                                               ; preds = %9
  %13 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #31
  %14 = tail call ptr @hide_evolution_in_other_loops_than_loop(ptr noundef %13, i32 noundef %1) #31
  %15 = tail call fastcc zeroext i8 @tree_is_chrec(ptr noundef %14) #30, !range !536
  %16 = xor i8 %15, 1
  store i8 %16, ptr %2, align 1, !tbaa !535
  br label %17

17:                                               ; preds = %3, %9, %12
  %18 = phi i8 [ 1, %12 ], [ 0, %9 ], [ 0, %3 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @chrec_zerop(ptr noundef %0) unnamed_addr #0 !prof !940 !PGOFuncName !947 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3, !prof !948

3:                                                ; preds = %1
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %10, !prof !945

7:                                                ; preds = %3
  %8 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #31
  %9 = trunc i32 %8 to i8
  br label %10

10:                                               ; preds = %3, %1, %7
  %11 = phi i8 [ %9, %7 ], [ 0, %1 ], [ 0, %3 ]
  ret i8 %11
}

; Function Attrs: optsize
declare ptr @build3_stat(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @hide_evolution_in_other_loops_than_loop(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @tree_is_chrec(ptr noundef readonly %0) unnamed_addr #9 !prof !940 !PGOFuncName !949 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 146
  br i1 %4, label %7, label %5, !prof !948

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @automatically_generated_chrec_p(ptr noundef nonnull %0) #30, !range !536
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @estimated_loop_iterations_tree(ptr noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !950 {
  %2 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #29
  %3 = call zeroext i8 @estimated_loop_iterations(ptr noundef %0, i8 noundef zeroext 1, ptr noundef nonnull %2) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %19

7:                                                ; preds = %1
  %8 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !951
  %9 = tail call ptr %8(i32 noundef 32, i32 noundef 1) #31
  %10 = load i64, ptr %2, align 8
  %11 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8
  %13 = tail call zeroext i8 @double_int_fits_to_tree_p(ptr noundef %9, i64 %10, i64 %12) #31
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %7
  %16 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %19

17:                                               ; preds = %7
  %18 = tail call ptr @double_int_to_tree(ptr noundef %9, i64 %10, i64 %12) #31
  br label %19

19:                                               ; preds = %17, %15, %5
  %20 = phi ptr [ %18, %17 ], [ %16, %15 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #29
  ret ptr %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gcd_of_steps_may_divide_p(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !959 {
  %3 = tail call i32 @host_integerp(ptr noundef %1, i32 noundef 0) #31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @tree_low_cst(ptr noundef %1, i32 noundef 0) #31
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 146
  br i1 %9, label %10, label %28

10:                                               ; preds = %5, %17
  %11 = phi ptr [ %22, %17 ], [ %0, %5 ]
  %12 = phi i32 [ %20, %17 ], [ 0, %5 ]
  %13 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !535
  %15 = tail call i32 @host_integerp(ptr noundef %14, i32 noundef 0) #31
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %10
  %18 = tail call i64 @tree_low_cst(ptr noundef %14, i32 noundef 0) #31
  %19 = trunc i64 %18 to i32
  %20 = tail call fastcc i32 @gcd(i32 noundef %12, i32 noundef %19) #30, !range !920
  %21 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !535
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 146
  br i1 %25, label %10, label %26, !llvm.loop !960

26:                                               ; preds = %17
  %27 = zext nneg i32 %20 to i64
  br label %28

28:                                               ; preds = %26, %5
  %29 = phi i64 [ 0, %5 ], [ %27, %26 ]
  %30 = srem i64 %6, %29
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i8
  br label %33

33:                                               ; preds = %10, %2, %28
  %34 = phi i8 [ %32, %28 ], [ 1, %2 ], [ 1, %10 ]
  ret i8 %34
}

; Function Attrs: optsize
declare zeroext i8 @double_int_fits_to_tree_p(ptr noundef, i64, i64) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @double_int_to_tree(ptr noundef, i64, i64) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @common_affine_function(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !842 !PGOFuncName !961 {
  %2 = load i32, ptr %0, align 8, !tbaa !486
  switch i32 %2, label %3 [
    i32 0, label %18
    i32 3, label %18
  ], !prof !962

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  %6 = icmp ugt i32 %2, 1
  br i1 %6, label %12, label %18, !prof !840

7:                                                ; preds = %12
  %8 = add nuw nsw i64 %13, 1
  %9 = load i32, ptr %0, align 8, !tbaa !486
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %18, !prof !963, !llvm.loop !964

12:                                               ; preds = %3, %7
  %13 = phi i64 [ %8, %7 ], [ 1, %3 ]
  %14 = getelementptr inbounds %struct.conflict_function, ptr %0, i64 0, i32 1, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !430
  %16 = tail call fastcc zeroext i8 @affine_function_equal_p(ptr noundef %5, ptr noundef %15) #30, !range !536
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %7

18:                                               ; preds = %12, %7, %3, %1, %1
  %19 = phi ptr [ null, %1 ], [ null, %1 ], [ %5, %3 ], [ null, %12 ], [ %5, %7 ]
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @affine_fn_minus(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !932 !PGOFuncName !965 {
  %3 = tail call fastcc ptr @affine_fn_op(i32 noundef 64, ptr noundef %0, ptr noundef %1) #30
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @affine_function_constant_p(ptr noundef %0) unnamed_addr #0 !prof !932 !PGOFuncName !966 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %2) #30, !range !429
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %14, label %9, !prof !967

5:                                                ; preds = %9
  %6 = add i32 %10, 1
  %7 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #30, !range !429
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9, !prof !968, !llvm.loop !969

9:                                                ; preds = %1, %5
  %10 = phi i32 [ %6, %5 ], [ 1, %1 ]
  %11 = load ptr, ptr %2, align 8, !tbaa !430
  %12 = tail call i32 @integer_zerop(ptr noundef %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %5, !prof !970

14:                                               ; preds = %9, %5, %1
  %15 = phi i8 [ 1, %1 ], [ 1, %5 ], [ 0, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret i8 %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @affine_function_base(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !932 !PGOFuncName !971 {
  %2 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %0, i32 noundef 0) #30
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @affine_function_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !972 {
  %3 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %0) #30
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #30
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %17, label %11

8:                                                ; preds = %11
  %9 = add nuw i32 %12, 1
  %10 = icmp eq i32 %9, %3
  br i1 %10, label %17, label %11, !llvm.loop !973

11:                                               ; preds = %6, %8
  %12 = phi i32 [ %9, %8 ], [ 0, %6 ]
  %13 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %0, i32 noundef %12) #30
  %14 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %1, i32 noundef %12) #30
  %15 = tail call i32 @operand_equal_p(ptr noundef %13, ptr noundef %14, i32 noundef 0) #31
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %11, %8, %6, %2
  %18 = phi i8 [ 0, %2 ], [ 1, %6 ], [ 0, %11 ], [ 1, %8 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @same_access_functions(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !812 !PGOFuncName !974 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  %4 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %3) #30
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %25, label %6, !prof !975

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  br label %13

8:                                                ; preds = %13
  %9 = add nuw i32 %14, 1
  %10 = load ptr, ptr %2, align 8, !tbaa !463
  %11 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %10) #30
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %25, !prof !976, !llvm.loop !977

13:                                               ; preds = %6, %8
  %14 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !461
  %16 = getelementptr inbounds %struct.data_reference, ptr %15, i64 0, i32 5, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !450
  %18 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %17, i32 noundef %14) #30
  %19 = load ptr, ptr %7, align 8, !tbaa !462
  %20 = getelementptr inbounds %struct.data_reference, ptr %19, i64 0, i32 5, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !450
  %22 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %21, i32 noundef %14) #30
  %23 = tail call zeroext i8 @eq_evolutions_p(ptr noundef %18, ptr noundef %22) #31
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %8, !prof !803

25:                                               ; preds = %13, %8, %1
  %26 = phi i8 [ 1, %1 ], [ 1, %8 ], [ 0, %13 ]
  ret i8 %26
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lambda_vector_new(i32 noundef %0) unnamed_addr #0 !prof !978 !PGOFuncName !979 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 2
  %4 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef %3) #31
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_dist_v(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !980 !PGOFuncName !981 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !473
  %6 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8, !prof !982

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !466
  %11 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %10) #30
  br label %16

12:                                               ; preds = %16
  %13 = add i32 %17, 1
  %14 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %5, i32 noundef %13, ptr noundef nonnull %3) #30, !range !429
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !983, !llvm.loop !984

16:                                               ; preds = %8, %12
  %17 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !430
  %19 = tail call fastcc zeroext i8 @lambda_vector_equal(ptr noundef %18, ptr noundef %1, i32 noundef %11) #30, !range !536
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %22, !prof !985

21:                                               ; preds = %12, %2
  tail call fastcc void @VEC_lambda_vector_heap_safe_push(ptr noundef nonnull %4, ptr noundef %1) #30
  br label %22

22:                                               ; preds = %16, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @constant_access_functions(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !986 !PGOFuncName !987 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !463
  %5 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %4) #30
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %26, label %7, !prof !988

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !461
  %9 = getelementptr inbounds %struct.data_reference, ptr %8, i64 0, i32 5, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !450
  br label %14

11:                                               ; preds = %19
  %12 = add nuw i32 %15, 1
  %13 = icmp eq i32 %12, %5
  br i1 %13, label %26, label %14, !prof !989, !llvm.loop !990

14:                                               ; preds = %7, %11
  %15 = phi i32 [ 0, %7 ], [ %12, %11 ]
  %16 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %10, i32 noundef %15) #30
  %17 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %16) #30, !range !536
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19, !prof !804

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !462
  %21 = getelementptr inbounds %struct.data_reference, ptr %20, i64 0, i32 5, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !450
  %23 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %22, i32 noundef %15) #30
  %24 = tail call fastcc zeroext i8 @evolution_function_is_constant_p(ptr noundef %23) #30, !range !536
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %11

26:                                               ; preds = %19, %14, %11, %1
  %27 = phi i8 [ 1, %1 ], [ 1, %11 ], [ 0, %14 ], [ 0, %19 ]
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_distance_for_zero_overlaps(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !991 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  %4 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %3) #30
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %46, label %6

6:                                                ; preds = %1, %40
  %7 = phi ptr [ %42, %40 ], [ %3, %1 ]
  %8 = phi i32 [ %41, %40 ], [ 0, %1 ]
  %9 = tail call fastcc ptr @VEC_subscript_p_base_index(ptr noundef %7, i32 noundef %8) #30
  %10 = load ptr, ptr %9, align 8, !tbaa !484
  %11 = getelementptr inbounds %struct.subscript, ptr %9, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !489
  %13 = load i32, ptr %10, align 8, !tbaa !486
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %20, label %23

15:                                               ; preds = %23
  %16 = add nuw nsw i64 %24, 1
  %17 = load i32, ptr %10, align 8, !tbaa !486
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %16, %18
  br i1 %19, label %23, label %20, !llvm.loop !992

20:                                               ; preds = %15, %6
  %21 = load i32, ptr %12, align 8, !tbaa !486
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %40, label %34

23:                                               ; preds = %6, %15
  %24 = phi i64 [ %16, %15 ], [ 0, %6 ]
  %25 = getelementptr inbounds %struct.conflict_function, ptr %10, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !430
  %27 = tail call fastcc zeroext i8 @affine_function_zero_p(ptr noundef %26) #30, !range !536
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %15, label %45

29:                                               ; preds = %34
  %30 = add nuw nsw i64 %35, 1
  %31 = load i32, ptr %12, align 8, !tbaa !486
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %40, !llvm.loop !993

34:                                               ; preds = %20, %29
  %35 = phi i64 [ %30, %29 ], [ 0, %20 ]
  %36 = getelementptr inbounds %struct.conflict_function, ptr %12, i64 0, i32 1, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !430
  %38 = tail call fastcc zeroext i8 @affine_function_zero_p(ptr noundef %37) #30, !range !536
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %29, label %45

40:                                               ; preds = %29, %20
  %41 = add nuw i32 %8, 1
  %42 = load ptr, ptr %2, align 8, !tbaa !463
  %43 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %42) #30
  %44 = icmp ult i32 %41, %43
  br i1 %44, label %6, label %46, !llvm.loop !994

45:                                               ; preds = %23, %34
  tail call fastcc void @insert_innermost_unit_dist_vector(ptr noundef %0) #30
  br label %46

46:                                               ; preds = %40, %45, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_other_self_distances(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !995 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !466
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #30
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !463
  %7 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %6) #30
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %1, %58
  %10 = phi i32 [ %59, %58 ], [ %4, %1 ]
  %11 = phi i32 [ %60, %58 ], [ 0, %1 ]
  %12 = load ptr, ptr %0, align 8, !tbaa !461
  %13 = getelementptr inbounds %struct.data_reference, ptr %12, i64 0, i32 5, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !450
  %15 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %14, i32 noundef %11) #30
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 146
  br i1 %18, label %19, label %58

19:                                               ; preds = %9
  %20 = tail call zeroext i8 @evolution_function_is_univariate_p(ptr noundef nonnull %15) #31
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %19
  %23 = load ptr, ptr %5, align 8, !tbaa !463
  %24 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %23) #30
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %28 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !459
  br label %71

29:                                               ; preds = %22
  %30 = load ptr, ptr %0, align 8, !tbaa !461
  %31 = getelementptr inbounds %struct.data_reference, ptr %30, i64 0, i32 5, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !450
  %33 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %32, i32 noundef 0) #30
  %34 = getelementptr inbounds %struct.tree_exp, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8, !tbaa !535
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 146
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  tail call fastcc void @add_multivariate_self_dist(ptr noundef nonnull %0, ptr noundef nonnull %33) #30
  br label %71

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %41, align 1, !tbaa !529
  br label %71

42:                                               ; preds = %19
  %43 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !535
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !535
  %47 = trunc i64 %46 to i32
  %48 = load ptr, ptr %2, align 8, !tbaa !466
  %49 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %47, ptr noundef %48) #30
  %50 = icmp slt i32 %10, %49
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load ptr, ptr %43, align 8, !tbaa !535
  %53 = getelementptr inbounds %struct.tree_int_cst, ptr %52, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !535
  %55 = trunc i64 %54 to i32
  %56 = load ptr, ptr %2, align 8, !tbaa !466
  %57 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %55, ptr noundef %56) #30
  br label %58

58:                                               ; preds = %51, %42, %9
  %59 = phi i32 [ %10, %42 ], [ %57, %51 ], [ %10, %9 ]
  %60 = add nuw i32 %11, 1
  %61 = load ptr, ptr %5, align 8, !tbaa !463
  %62 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %61) #30
  %63 = icmp ult i32 %60, %62
  br i1 %63, label %9, label %64, !llvm.loop !996

64:                                               ; preds = %58
  %65 = load ptr, ptr %2, align 8, !tbaa !466
  br label %66

66:                                               ; preds = %64, %1
  %67 = phi ptr [ %3, %1 ], [ %65, %64 ]
  %68 = phi i32 [ %4, %1 ], [ %59, %64 ]
  %69 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %67) #30
  %70 = tail call fastcc ptr @lambda_vector_new(i32 noundef %69) #30
  tail call fastcc void @add_outer_distances(ptr noundef nonnull %0, ptr noundef %70, i32 noundef %68) #30
  br label %71

71:                                               ; preds = %26, %40, %39, %66
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @build_classic_dist_vector_1(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef %5) unnamed_addr #0 !prof !997 !PGOFuncName !998 {
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !466
  %9 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %8) #30
  %10 = tail call fastcc ptr @lambda_vector_new(i32 noundef %9) #30
  %11 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !463
  %13 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %12) #30
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %86, label %15, !prof !999

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  %17 = getelementptr inbounds %struct.data_reference, ptr %2, i64 0, i32 5, i32 1
  br label %18

18:                                               ; preds = %15, %81
  %19 = phi ptr [ %12, %15 ], [ %83, %81 ]
  %20 = phi i32 [ 0, %15 ], [ %82, %81 ]
  %21 = tail call fastcc ptr @VEC_subscript_p_base_index(ptr noundef %19, i32 noundef %20) #30
  %22 = getelementptr inbounds %struct.subscript, ptr %21, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !490
  %24 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %23) #31
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !1000

26:                                               ; preds = %18
  tail call fastcc void @non_affine_dependence_relation(ptr noundef nonnull %0) #30
  br label %86

27:                                               ; preds = %18
  %28 = load ptr, ptr %16, align 8, !tbaa !450
  %29 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %20) #30
  %30 = load ptr, ptr %17, align 8, !tbaa !450
  %31 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %30, i32 noundef %20) #30
  %32 = load i64, ptr %29, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 146
  br i1 %34, label %35, label %77, !prof !1001

35:                                               ; preds = %27
  %36 = load i64, ptr %31, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 146
  br i1 %38, label %39, label %77, !prof !1002

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !535
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !535
  %44 = trunc i64 %43 to i32
  %45 = load ptr, ptr %7, align 8, !tbaa !466
  %46 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %44, ptr noundef %45) #30
  %47 = getelementptr inbounds %struct.tree_exp, ptr %31, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !535
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %48, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !535
  %51 = trunc i64 %50 to i32
  %52 = load ptr, ptr %7, align 8, !tbaa !466
  %53 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %51, ptr noundef %52) #30
  %54 = tail call i32 @llvm.smin.i32(i32 %46, i32 %53)
  %55 = load i32, ptr %5, align 4, !tbaa !499
  %56 = tail call i32 @llvm.smin.i32(i32 %54, i32 %55)
  store i32 %56, ptr %5, align 4, !tbaa !499
  %57 = load ptr, ptr %22, align 8, !tbaa !490
  %58 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %57) #31
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %61, label %60, !prof !1002

60:                                               ; preds = %39
  tail call fastcc void @non_affine_dependence_relation(ptr noundef nonnull %0) #30
  br label %86

61:                                               ; preds = %39
  %62 = load ptr, ptr %22, align 8, !tbaa !490
  %63 = tail call i64 @int_cst_value(ptr noundef %62) #31
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %54 to i64
  %66 = getelementptr inbounds i32, ptr %10, i64 %65
  %67 = load i32, ptr %66, align 4, !tbaa !499
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %75, label %69, !prof !1002

69:                                               ; preds = %61
  %70 = getelementptr inbounds i32, ptr %3, i64 %65
  %71 = load i32, ptr %70, align 4, !tbaa !499
  %72 = icmp eq i32 %71, %64
  br i1 %72, label %75, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr @chrec_known, align 8, !tbaa !430
  tail call fastcc void @finalize_ddr_dependent(ptr noundef nonnull %0, ptr noundef %74) #30
  br label %86

75:                                               ; preds = %69, %61
  %76 = getelementptr inbounds i32, ptr %3, i64 %65
  store i32 %64, ptr %76, align 4, !tbaa !499
  store i32 1, ptr %66, align 4, !tbaa !499
  store i8 1, ptr %4, align 1, !tbaa !535
  br label %81

77:                                               ; preds = %35, %27
  %78 = tail call i32 @operand_equal_p(ptr noundef nonnull %29, ptr noundef %31, i32 noundef 0) #31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81, !prof !1003

80:                                               ; preds = %77
  tail call fastcc void @non_affine_dependence_relation(ptr noundef nonnull %0) #30
  br label %86

81:                                               ; preds = %75, %77
  %82 = add nuw i32 %20, 1
  %83 = load ptr, ptr %11, align 8, !tbaa !463
  %84 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %83) #30
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %18, label %86, !prof !1004, !llvm.loop !1005

86:                                               ; preds = %81, %6, %26, %80, %73, %60
  %87 = phi i8 [ 0, %60 ], [ 0, %73 ], [ 0, %80 ], [ 0, %26 ], [ 1, %6 ], [ 1, %81 ]
  ret i8 %87
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc zeroext i8 @lambda_vector_lexico_pos(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !1006 !PGOFuncName !1007 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %16, label %8, !prof !988

4:                                                ; preds = %8
  %5 = zext i32 %1 to i64
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, %5
  br i1 %7, label %16, label %8, !prof !1008, !llvm.loop !1009

8:                                                ; preds = %2, %4
  %9 = phi i64 [ %6, %4 ], [ 0, %2 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !499
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %4, label %13, !prof !806

13:                                               ; preds = %8
  %14 = icmp sgt i32 %11, -1
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %4, %2, %13
  %17 = phi i8 [ %15, %13 ], [ 1, %2 ], [ 1, %4 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_outer_distances(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !428 !PGOFuncName !1010 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %18

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %7 = zext nneg i32 %2 to i64
  br label %8

8:                                                ; preds = %5, %8
  %9 = phi i64 [ %7, %5 ], [ %10, %8 ]
  %10 = add nsw i64 %9, -1
  %11 = load ptr, ptr %6, align 8, !tbaa !466
  %12 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %11) #30
  %13 = tail call fastcc ptr @lambda_vector_new(i32 noundef %12) #30
  %14 = load ptr, ptr %6, align 8, !tbaa !466
  %15 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %14) #30
  tail call fastcc void @lambda_vector_copy(ptr noundef %1, ptr noundef %13, i32 noundef %15) #30
  %16 = getelementptr inbounds i32, ptr %13, i64 %10
  store i32 1, ptr %16, align 4, !tbaa !499
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %13) #30
  %17 = icmp ugt i64 %9, 1
  br i1 %17, label %8, label %18, !llvm.loop !1011

18:                                               ; preds = %8, %3
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @lambda_vector_copy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) unnamed_addr #2 !prof !1012 !PGOFuncName !1013 {
  %4 = sext i32 %2 to i64
  %5 = shl nsw i64 %4, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %0, i64 %5, i1 false)
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @lambda_vector_first_nz(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !428 !PGOFuncName !1014 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %16

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %11
  %7 = phi i64 [ 0, %4 ], [ %12, %11 ]
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !499
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = add nuw nsw i64 %7, 1
  %13 = icmp eq i64 %12, %5
  br i1 %13, label %16, label %6, !llvm.loop !1015

14:                                               ; preds = %6
  %15 = trunc i64 %7 to i32
  br label %16

16:                                               ; preds = %11, %14, %2
  %17 = phi i32 [ 0, %2 ], [ %15, %14 ], [ %1, %11 ]
  ret i32 %17
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @lambda_vector_equal(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #17 !prof !1016 !PGOFuncName !1017 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %9, label %16, !prof !1018

5:                                                ; preds = %9
  %6 = zext nneg i32 %2 to i64
  %7 = add nuw nsw i64 %10, 1
  %8 = icmp eq i64 %7, %6
  br i1 %8, label %16, label %9, !prof !1019, !llvm.loop !1020

9:                                                ; preds = %3, %5
  %10 = phi i64 [ %7, %5 ], [ 0, %3 ]
  %11 = getelementptr inbounds i32, ptr %0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !499
  %13 = getelementptr inbounds i32, ptr %1, i64 %10
  %14 = load i32, ptr %13, align 4, !tbaa !499
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %5, label %16, !prof !1021

16:                                               ; preds = %9, %5, %3
  %17 = phi i8 [ 1, %3 ], [ 1, %5 ], [ 0, %9 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lambda_vector_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1022 !PGOFuncName !1023 {
  tail call fastcc void @VEC_lambda_vector_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_lambda_vector_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_lambda_vector_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1022 !PGOFuncName !1024 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_lambda_vector_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1025

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_lambda_vector_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !1022 !PGOFuncName !1026 {
  %3 = load i32, ptr %0, align 8, !tbaa !505
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !505
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_lambda_vector_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1022 !PGOFuncName !1027 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1025

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_lambda_vector_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1028
  %6 = load i32, ptr %0, align 8, !tbaa !505
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @affine_function_zero_p(ptr noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1029 {
  %2 = tail call fastcc ptr @affine_function_base(ptr noundef %0) #30
  %3 = tail call i32 @integer_zerop(ptr noundef %2) #31
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc zeroext i8 @affine_function_constant_p(ptr noundef %0) #30, !range !536
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i8 [ 0, %1 ], [ %6, %5 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_innermost_unit_dist_vector(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1030 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !466
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #30
  %5 = tail call fastcc ptr @lambda_vector_new(i32 noundef %4) #30
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 7
  %7 = load i32, ptr %6, align 8, !tbaa !465
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %5, i64 %8
  store i32 1, ptr %9, align 4, !tbaa !499
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %5) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_multivariate_self_dist(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !1031 {
  %3 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %4 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1
  %5 = load ptr, ptr %4, align 8, !tbaa !535
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  %8 = load ptr, ptr %7, align 8, !tbaa !535
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !535
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 23
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !535
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = icmp eq i64 %22, 23
  br i1 %23, label %26, label %24

24:                                               ; preds = %18, %12, %2
  %25 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %25, align 1, !tbaa !529
  br label %60

26:                                               ; preds = %18
  %27 = load ptr, ptr %3, align 8, !tbaa !535
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !535
  %30 = trunc i64 %29 to i32
  %31 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !466
  %33 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %30, ptr noundef %32) #30
  %34 = load ptr, ptr %6, align 8, !tbaa !535
  %35 = getelementptr inbounds %struct.tree_int_cst, ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !535
  %37 = trunc i64 %36 to i32
  %38 = load ptr, ptr %31, align 8, !tbaa !466
  %39 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %37, ptr noundef %38) #30
  %40 = load ptr, ptr %31, align 8, !tbaa !466
  %41 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %40) #30
  %42 = tail call fastcc ptr @lambda_vector_new(i32 noundef %41) #30
  %43 = load ptr, ptr %13, align 8, !tbaa !535
  %44 = tail call i64 @int_cst_value(ptr noundef %43) #31
  %45 = trunc i64 %44 to i32
  %46 = load ptr, ptr %19, align 8, !tbaa !535
  %47 = tail call i64 @int_cst_value(ptr noundef %46) #31
  %48 = trunc i64 %47 to i32
  %49 = tail call fastcc i32 @gcd(i32 noundef %45, i32 noundef %48) #30, !range !920
  %50 = sdiv i32 %45, %49
  %51 = sdiv i32 %48, %49
  %52 = icmp slt i32 %51, 0
  %53 = sub nsw i32 0, %50
  %54 = tail call i32 @llvm.abs.i32(i32 %51, i1 true)
  %55 = select i1 %52, i32 %50, i32 %53
  %56 = sext i32 %39 to i64
  %57 = getelementptr inbounds i32, ptr %42, i64 %56
  store i32 %54, ptr %57, align 4, !tbaa !499
  %58 = sext i32 %33 to i64
  %59 = getelementptr inbounds i32, ptr %42, i64 %58
  store i32 %55, ptr %59, align 4, !tbaa !499
  tail call fastcc void @save_dist_v(ptr noundef %0, ptr noundef %42) #30
  tail call fastcc void @add_outer_distances(ptr noundef %0, ptr noundef %42, i32 noundef %39) #30
  br label %60

60:                                               ; preds = %26, %24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef i32 @index_in_loop_nest(i32 noundef %0, ptr noundef %1) unnamed_addr #18 !prof !518 !PGOFuncName !1032 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6, !prof !988

6:                                                ; preds = %2, %11
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  %9 = load i32, ptr %8, align 8, !tbaa !467
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %15, label %11, !prof !523

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %1, i32 noundef %12, ptr noundef nonnull %3) #30, !range !429
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !prof !1033, !llvm.loop !1034

15:                                               ; preds = %11, %6, %2
  %16 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret i32 %16
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @non_affine_dependence_relation(ptr nocapture noundef writeonly %0) unnamed_addr #6 !prof !428 !PGOFuncName !1035 {
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %6 = and i32 %5, 8
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 65, i64 1, ptr nonnull %2)
  br label %10

10:                                               ; preds = %8, %4, %1
  %11 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 9
  store i8 0, ptr %11, align 1, !tbaa !529
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef i32 @dir_from_dist(i32 noundef %0) unnamed_addr #8 !prof !812 !PGOFuncName !1036 {
  %2 = icmp sgt i32 %0, 0
  %3 = icmp slt i32 %0, 0
  %4 = select i1 %3, i32 1, i32 2
  %5 = select i1 %2, i32 0, i32 %4, !prof !803
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_dir_v(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !980 !PGOFuncName !1037 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !474
  %6 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %21, label %8, !prof !982

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !466
  %11 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %10) #30
  br label %16

12:                                               ; preds = %16
  %13 = add i32 %17, 1
  %14 = call fastcc i32 @VEC_lambda_vector_base_iterate(ptr noundef %5, i32 noundef %13, ptr noundef nonnull %3) #30, !range !429
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %16, !prof !983, !llvm.loop !1038

16:                                               ; preds = %8, %12
  %17 = phi i32 [ 0, %8 ], [ %13, %12 ]
  %18 = load ptr, ptr %3, align 8, !tbaa !430
  %19 = tail call fastcc zeroext i8 @lambda_vector_equal(ptr noundef %18, ptr noundef %1, i32 noundef %11) #30, !range !536
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %12, label %22, !prof !985

21:                                               ; preds = %12, %2
  tail call fastcc void @VEC_lambda_vector_heap_safe_push(ptr noundef nonnull %4, ptr noundef %1) #30
  br label %22

22:                                               ; preds = %16, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: optsize
declare ptr @omega_alloc_problem(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @init_omega_for_ddr_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !428 !PGOFuncName !1039 {
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !466
  %9 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %8) #30
  %10 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !463
  %12 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %11) #30
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %16 = getelementptr inbounds %struct.data_reference, ptr %1, i64 0, i32 5, i32 1
  br label %26

17:                                               ; preds = %34
  %18 = add nuw i32 %27, 1
  %19 = load ptr, ptr %10, align 8, !tbaa !463
  %20 = tail call fastcc i32 @VEC_subscript_p_base_length(ptr noundef %19) #30
  %21 = icmp ult i32 %18, %20
  br i1 %21, label %26, label %22, !llvm.loop !1040

22:                                               ; preds = %17, %5
  %23 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 7
  %24 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 10
  %25 = add i32 %9, 1
  br label %40

26:                                               ; preds = %14, %17
  %27 = phi i32 [ 0, %14 ], [ %18, %17 ]
  %28 = load ptr, ptr %15, align 8, !tbaa !450
  %29 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %28, i32 noundef %27) #30
  %30 = load ptr, ptr %16, align 8, !tbaa !450
  %31 = tail call fastcc ptr @VEC_tree_base_index(ptr noundef %30, i32 noundef %27) #30
  %32 = tail call fastcc zeroext i8 @omega_setup_subscript(ptr noundef %29, ptr noundef %31, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4) #30, !range !536
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %97, label %34

34:                                               ; preds = %26
  %35 = load i8, ptr %4, align 1, !tbaa !535
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %17

37:                                               ; preds = %34
  %38 = load ptr, ptr @chrec_known, align 8, !tbaa !430
  %39 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 2
  store ptr %38, ptr %39, align 8, !tbaa !459
  br label %97

40:                                               ; preds = %22, %93
  %41 = phi i32 [ 0, %22 ], [ %62, %93 ]
  %42 = load ptr, ptr %7, align 8, !tbaa !466
  %43 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %42, i32 noundef %41, ptr noundef nonnull %6) #30, !range !429
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %96, label %45

45:                                               ; preds = %40
  %46 = load ptr, ptr %6, align 8, !tbaa !430
  %47 = tail call i64 @estimated_loop_iterations_int(ptr noundef %46, i8 noundef zeroext 0) #30
  %48 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef %3) #30
  %49 = load ptr, ptr %24, align 8, !tbaa !1041
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds %struct.eqn_d, ptr %49, i64 %50, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !1043
  %53 = add i32 %25, %41
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, ptr %52, i64 %54
  store i32 1, ptr %55, align 4, !tbaa !499
  %56 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef %3) #30
  %57 = load ptr, ptr %24, align 8, !tbaa !1041
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds %struct.eqn_d, ptr %57, i64 %58, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !1043
  %61 = getelementptr inbounds i32, ptr %60, i64 %54
  store i32 1, ptr %61, align 4, !tbaa !499
  %62 = add i32 %41, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, ptr %60, i64 %63
  store i32 1, ptr %64, align 4, !tbaa !499
  %65 = icmp eq i64 %47, -1
  br i1 %65, label %93, label %66

66:                                               ; preds = %45
  %67 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef nonnull %3) #30
  %68 = load ptr, ptr %24, align 8, !tbaa !1041
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds %struct.eqn_d, ptr %68, i64 %69, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !1043
  %72 = getelementptr inbounds i32, ptr %71, i64 %54
  store i32 -1, ptr %72, align 4, !tbaa !499
  %73 = trunc i64 %47 to i32
  store i32 %73, ptr %71, align 4, !tbaa !499
  %74 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef nonnull %3) #30
  %75 = load ptr, ptr %24, align 8, !tbaa !1041
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.eqn_d, ptr %75, i64 %76, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !1043
  %79 = getelementptr inbounds i32, ptr %78, i64 %54
  store i32 -1, ptr %79, align 4, !tbaa !499
  %80 = getelementptr inbounds i32, ptr %78, i64 %63
  store i32 -1, ptr %80, align 4, !tbaa !499
  store i32 %73, ptr %78, align 4, !tbaa !499
  %81 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef nonnull %3) #30
  %82 = load ptr, ptr %24, align 8, !tbaa !1041
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds %struct.eqn_d, ptr %82, i64 %83, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !1043
  %86 = getelementptr inbounds i32, ptr %85, i64 %63
  store i32 1, ptr %86, align 4, !tbaa !499
  store i32 %73, ptr %85, align 4, !tbaa !499
  %87 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef nonnull %3) #30
  %88 = load ptr, ptr %24, align 8, !tbaa !1041
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds %struct.eqn_d, ptr %88, i64 %89, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !1043
  %92 = getelementptr inbounds i32, ptr %91, i64 %63
  store i32 -1, ptr %92, align 4, !tbaa !499
  store i32 %73, ptr %91, align 4, !tbaa !499
  br label %93

93:                                               ; preds = %66, %45
  %94 = load i32, ptr %23, align 8, !tbaa !465
  %95 = icmp ugt i32 %62, %94
  br i1 %95, label %96, label %40, !llvm.loop !1045

96:                                               ; preds = %93, %40
  tail call fastcc void @omega_extract_distance_vectors(ptr noundef %3, ptr noundef nonnull %2) #30
  br label %97

97:                                               ; preds = %26, %96, %37
  %98 = phi i8 [ 1, %37 ], [ 1, %96 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  ret i8 %98
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_free_problem(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1046 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !1047
  tail call void @free(ptr noundef %3) #30
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !1048
  tail call void @free(ptr noundef %5) #30
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !1041
  %8 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %9 = getelementptr inbounds %struct.param_info, ptr %8, i64 65, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !1049
  tail call fastcc void @omega_free_eqns(ptr noundef %7, i32 noundef %10) #30
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !1051
  %13 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %14 = getelementptr inbounds %struct.param_info, ptr %13, i64 66, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !1049
  tail call fastcc void @omega_free_eqns(ptr noundef %12, i32 noundef %15) #30
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %17 = load ptr, ptr %16, align 8, !tbaa !1052
  %18 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %19 = getelementptr inbounds %struct.param_info, ptr %18, i64 64, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !1049
  %21 = add nsw i32 %20, 1
  tail call fastcc void @omega_free_eqns(ptr noundef %17, i32 noundef %21) #30
  tail call void @free(ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @omega_setup_subscript(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef writeonly %4) unnamed_addr #0 !prof !428 !PGOFuncName !1053 {
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !535
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !535
  %10 = tail call fastcc ptr @signed_type_for_types(ptr noundef %7, ptr noundef %9) #30
  %11 = tail call ptr @chrec_convert(ptr noundef %10, ptr noundef %0, ptr noundef null) #31
  %12 = tail call ptr @chrec_convert(ptr noundef %10, ptr noundef %1, ptr noundef null) #31
  %13 = tail call ptr @chrec_fold_minus(ptr noundef %10, ptr noundef %11, ptr noundef %12) #31
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %54

17:                                               ; preds = %5
  %18 = tail call fastcc zeroext i8 @ziv_subscript_p(ptr noundef %11, ptr noundef %12) #30, !range !536
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @integer_zerop(ptr noundef nonnull %13) #31
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %53, label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !430
  %25 = tail call ptr @chrec_fold_multiply(ptr noundef %10, ptr noundef %12, ptr noundef %24) #31
  %26 = tail call fastcc i32 @omega_add_zero_eq(ptr noundef %3) #30
  %27 = getelementptr inbounds %struct.data_dependence_relation, ptr %2, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !466
  %29 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %28) #30
  %30 = tail call fastcc zeroext i8 @init_omega_eq_with_af(ptr noundef %3, i32 noundef %26, i32 noundef %29, ptr noundef %11, ptr noundef %2) #30, !range !536
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %23
  %33 = tail call fastcc zeroext i8 @init_omega_eq_with_af(ptr noundef %3, i32 noundef %26, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %2) #30, !range !536
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %54, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %27, align 8, !tbaa !466
  %37 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %36) #30
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %3, i64 0, i32 11
  %41 = load ptr, ptr %40, align 8, !tbaa !1051
  %42 = sext i32 %26 to i64
  %43 = getelementptr inbounds %struct.eqn_d, ptr %41, i64 %42, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !1043
  %45 = load i32, ptr %44, align 4, !tbaa !499
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds i32, ptr %44, i64 1
  %49 = shl i32 %37, 1
  %50 = tail call fastcc i32 @lambda_vector_gcd(ptr noundef nonnull %48, i32 noundef %49) #30
  %51 = tail call fastcc zeroext i8 @int_divides_p(i32 noundef %50, i32 noundef %45) #30, !range !536
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %20
  store i8 0, ptr %4, align 1, !tbaa !535
  br label %54

54:                                               ; preds = %53, %35, %39, %47, %23, %32, %5
  %55 = phi i8 [ 0, %5 ], [ 0, %32 ], [ 0, %23 ], [ 1, %47 ], [ 1, %39 ], [ 1, %35 ], [ 1, %53 ]
  ret i8 %55
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @omega_add_zero_geq(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1054 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !1055
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 4, !tbaa !1055
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 65, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1049
  %8 = icmp slt i32 %3, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.98, i32 noundef 274, ptr noundef nonnull @.str.51) #31
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !1041
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds %struct.eqn_d, ptr %12, i64 %13
  %15 = load i32, ptr %0, align 8, !tbaa !1056
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %14, i32 noundef %15) #30
  %16 = load ptr, ptr %11, align 8, !tbaa !1041
  %17 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %13, i32 1
  store i32 1, ptr %17, align 4, !tbaa !1057
  %18 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %13, i32 2
  store i32 0, ptr %18, align 8, !tbaa !1058
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_extract_distance_vectors(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1059 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 4
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 7
  br label %7

7:                                                ; preds = %2, %179
  %8 = phi i32 [ 0, %2 ], [ %42, %179 ]
  %9 = load ptr, ptr %5, align 8, !tbaa !466
  %10 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %182, label %12

12:                                               ; preds = %7
  %13 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %9) #30
  %14 = shl i32 %13, 1
  %15 = tail call ptr @omega_alloc_problem(i32 noundef %14, i32 noundef %13) #31
  tail call fastcc void @omega_copy_problem(ptr noundef %15, ptr noundef %0) #30
  %16 = icmp eq i32 %8, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 11
  %19 = zext i32 %8 to i64
  br label %20

20:                                               ; preds = %17, %26
  %21 = phi i64 [ 0, %17 ], [ %32, %26 ]
  %22 = load ptr, ptr %5, align 8, !tbaa !466
  %23 = trunc i64 %21 to i32
  %24 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %22, i32 noundef %23, ptr noundef nonnull %4) #30, !range !429
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %20
  %27 = tail call fastcc i32 @omega_add_zero_eq(ptr noundef %15) #30
  %28 = load ptr, ptr %18, align 8, !tbaa !1051
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %29, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !1043
  %32 = add nuw nsw i64 %21, 1
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  store i32 1, ptr %33, align 4, !tbaa !499
  %34 = icmp eq i64 %32, %19
  br i1 %34, label %35, label %20, !llvm.loop !1060

35:                                               ; preds = %20, %26, %12
  %36 = tail call fastcc i32 @omega_add_zero_geq(ptr noundef %15) #30
  %37 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !1041
  %39 = sext i32 %36 to i64
  %40 = getelementptr inbounds %struct.eqn_d, ptr %38, i64 %39, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !1043
  %42 = add i32 %8, 1
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %41, i64 %43
  store i32 1, ptr %44, align 4, !tbaa !499
  %45 = tail call i32 @omega_simplify_problem(ptr noundef %15) #31
  %46 = and i32 %45, -3
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %179, label %48

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !1055
  %51 = load ptr, ptr %5, align 8, !tbaa !466
  %52 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %51) #30
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %179, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 4
  %56 = load i32, ptr %55, align 8, !tbaa !1061
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 12
  %60 = load ptr, ptr %59, align 8, !tbaa !1052
  %61 = zext nneg i32 %56 to i64
  br label %65

62:                                               ; preds = %65
  %63 = add nuw nsw i64 %66, 1
  %64 = icmp eq i64 %63, %61
  br i1 %64, label %72, label %65, !llvm.loop !1062

65:                                               ; preds = %58, %62
  %66 = phi i64 [ 0, %58 ], [ %63, %62 ]
  %67 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %66
  %68 = load i32, ptr %67, align 8, !tbaa !1063
  %69 = icmp eq i32 %68, %42
  br i1 %69, label %70, label %62

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.eqn_d, ptr %60, i64 %66, i32 3
  br label %124

72:                                               ; preds = %62, %54
  tail call fastcc void @omega_copy_problem(ptr noundef nonnull %15, ptr noundef %0) #30
  br i1 %16, label %91, label %73

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 11
  %75 = zext i32 %8 to i64
  br label %76

76:                                               ; preds = %73, %82
  %77 = phi i64 [ 0, %73 ], [ %88, %82 ]
  %78 = load ptr, ptr %5, align 8, !tbaa !466
  %79 = trunc i64 %77 to i32
  %80 = call fastcc i32 @VEC_loop_p_base_iterate(ptr noundef %78, i32 noundef %79, ptr noundef nonnull %4) #30, !range !429
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %91, label %82

82:                                               ; preds = %76
  %83 = tail call fastcc i32 @omega_add_zero_eq(ptr noundef %15) #30
  %84 = load ptr, ptr %74, align 8, !tbaa !1051
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds %struct.eqn_d, ptr %84, i64 %85, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !1043
  %88 = add nuw nsw i64 %77, 1
  %89 = getelementptr inbounds i32, ptr %87, i64 %88
  store i32 1, ptr %89, align 4, !tbaa !499
  %90 = icmp eq i64 %88, %75
  br i1 %90, label %91, label %76, !llvm.loop !1064

91:                                               ; preds = %76, %82, %72
  %92 = tail call fastcc i32 @omega_add_zero_eq(ptr noundef %15) #30
  %93 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 11
  %94 = load ptr, ptr %93, align 8, !tbaa !1051
  %95 = sext i32 %92 to i64
  %96 = getelementptr inbounds %struct.eqn_d, ptr %94, i64 %95, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !1043
  %98 = getelementptr inbounds i32, ptr %97, i64 %43
  store i32 1, ptr %98, align 4, !tbaa !499
  store i32 -1, ptr %97, align 4, !tbaa !499
  %99 = tail call i32 @omega_simplify_problem(ptr noundef %15) #31
  %100 = and i32 %99, -3
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %179, label %102

102:                                              ; preds = %91
  %103 = load i32, ptr %49, align 4, !tbaa !1055
  %104 = load ptr, ptr %5, align 8, !tbaa !466
  %105 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %104) #30
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %179, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %55, align 8, !tbaa !1061
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %130

110:                                              ; preds = %107
  %111 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 12
  %112 = load ptr, ptr %111, align 8, !tbaa !1052
  %113 = zext nneg i32 %108 to i64
  br label %117

114:                                              ; preds = %117
  %115 = add nuw nsw i64 %118, 1
  %116 = icmp eq i64 %115, %113
  br i1 %116, label %130, label %117, !llvm.loop !1065

117:                                              ; preds = %110, %114
  %118 = phi i64 [ 0, %110 ], [ %115, %114 ]
  %119 = getelementptr inbounds %struct.eqn_d, ptr %112, i64 %118
  %120 = load i32, ptr %119, align 8, !tbaa !1063
  %121 = icmp eq i32 %120, %42
  br i1 %121, label %122, label %114

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.eqn_d, ptr %112, i64 %118, i32 3
  br label %124

124:                                              ; preds = %122, %70
  %125 = phi ptr [ %51, %70 ], [ %104, %122 ]
  %126 = phi ptr [ %71, %70 ], [ %123, %122 ]
  %127 = load ptr, ptr %126, align 8, !tbaa !1043
  %128 = load i32, ptr %127, align 4, !tbaa !499
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %130, label %179

130:                                              ; preds = %114, %107, %124
  %131 = phi ptr [ %125, %124 ], [ %104, %107 ], [ %104, %114 ]
  %132 = phi i32 [ %128, %124 ], [ 0, %107 ], [ 0, %114 ]
  %133 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %131) #30
  %134 = tail call fastcc ptr @lambda_vector_new(i32 noundef %133) #30
  %135 = load ptr, ptr %5, align 8, !tbaa !466
  %136 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %135) #30
  %137 = tail call fastcc ptr @lambda_vector_new(i32 noundef %136) #30
  %138 = zext i32 %8 to i64
  %139 = getelementptr inbounds i32, ptr %134, i64 %138
  store i32 %132, ptr %139, align 4, !tbaa !499
  %140 = getelementptr i32, ptr %134, i64 -1
  %141 = load i32, ptr %55, align 8, !tbaa !1061
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %130
  %144 = getelementptr inbounds %struct.omega_pb_d, ptr %15, i64 0, i32 12
  %145 = load ptr, ptr %144, align 8, !tbaa !1052
  br label %150

146:                                              ; preds = %163, %130
  %147 = load ptr, ptr %5, align 8, !tbaa !466
  %148 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %147) #30
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %178, label %168

150:                                              ; preds = %143, %163
  %151 = phi i32 [ %141, %143 ], [ %164, %163 ]
  %152 = phi i64 [ 0, %143 ], [ %165, %163 ]
  %153 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %152
  %154 = load i32, ptr %153, align 8, !tbaa !1063
  %155 = icmp sgt i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = getelementptr inbounds %struct.eqn_d, ptr %145, i64 %152, i32 3
  %158 = load ptr, ptr %157, align 8, !tbaa !1043
  %159 = load i32, ptr %158, align 4, !tbaa !499
  %160 = zext nneg i32 %154 to i64
  %161 = getelementptr i32, ptr %140, i64 %160
  store i32 %159, ptr %161, align 4, !tbaa !499
  %162 = load i32, ptr %55, align 8, !tbaa !1061
  br label %163

163:                                              ; preds = %150, %156
  %164 = phi i32 [ %151, %150 ], [ %162, %156 ]
  %165 = add nuw nsw i64 %152, 1
  %166 = sext i32 %164 to i64
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %150, label %146, !llvm.loop !1066

168:                                              ; preds = %146, %168
  %169 = phi i64 [ %174, %168 ], [ 0, %146 ]
  %170 = getelementptr inbounds i32, ptr %134, i64 %169
  %171 = load i32, ptr %170, align 4, !tbaa !499
  %172 = tail call fastcc i32 @dir_from_dist(i32 noundef %171) #30, !range !815
  %173 = getelementptr inbounds i32, ptr %137, i64 %169
  store i32 %172, ptr %173, align 4, !tbaa !499
  %174 = add nuw nsw i64 %169, 1
  %175 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %147) #30
  %176 = zext i32 %175 to i64
  %177 = icmp ult i64 %174, %176
  br i1 %177, label %168, label %178, !llvm.loop !1067

178:                                              ; preds = %168, %146
  tail call fastcc void @save_dist_v(ptr noundef nonnull %1, ptr noundef %134) #30
  tail call fastcc void @save_dir_v(ptr noundef nonnull %1, ptr noundef %137) #30
  br label %179

179:                                              ; preds = %124, %178, %91, %102, %35, %48
  tail call fastcc void @omega_free_problem(ptr noundef %15) #30
  %180 = load i32, ptr %6, align 8, !tbaa !465
  %181 = icmp ugt i32 %42, %180
  br i1 %181, label %182, label %7, !llvm.loop !1068

182:                                              ; preds = %179, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @omega_add_zero_eq(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1069 {
  %2 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !1070
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !1070
  %5 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %6 = getelementptr inbounds %struct.param_info, ptr %5, i64 66, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1049
  %8 = icmp slt i32 %3, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.98, i32 noundef 259, ptr noundef nonnull @.str.51) #31
  br label %10

10:                                               ; preds = %1, %9
  %11 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !1051
  %13 = sext i32 %3 to i64
  %14 = getelementptr inbounds %struct.eqn_d, ptr %12, i64 %13
  %15 = load i32, ptr %0, align 8, !tbaa !1056
  tail call fastcc void @omega_init_eqn_zero(ptr noundef %14, i32 noundef %15) #30
  %16 = load ptr, ptr %11, align 8, !tbaa !1051
  %17 = getelementptr inbounds %struct.eqn_d, ptr %16, i64 %13, i32 2
  store i32 0, ptr %17, align 8, !tbaa !1058
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @init_omega_eq_with_af(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr nocapture noundef %4) unnamed_addr #0 !prof !428 !PGOFuncName !1071 {
  %6 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 4
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %8 = zext i32 %1 to i64
  %9 = add i32 %2, 1
  %10 = getelementptr inbounds %struct.data_dependence_relation, ptr %4, i64 0, i32 7
  %11 = icmp eq i32 %2, 0
  %12 = load i64, ptr %3, align 8
  br label %13

13:                                               ; preds = %57, %5
  %14 = phi i64 [ %12, %5 ], [ %58, %57 ]
  %15 = phi ptr [ %3, %5 ], [ %19, %57 ]
  %16 = trunc i64 %14 to i16
  switch i16 %16, label %69 [
    i16 146, label %17
    i16 23, label %60
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !535
  %20 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 1, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !535
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 23
  br i1 %24, label %25, label %69

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_exp, ptr %15, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !535
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %27, i64 0, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !535
  %30 = trunc i64 %29 to i32
  %31 = load ptr, ptr %6, align 8, !tbaa !466
  %32 = tail call fastcc i32 @index_in_loop_nest(i32 noundef %30, ptr noundef %31) #30
  %33 = tail call i64 @int_cst_value(ptr noundef nonnull %21) #31
  %34 = trunc i64 %33 to i32
  %35 = load ptr, ptr %7, align 8, !tbaa !1051
  %36 = getelementptr inbounds %struct.eqn_d, ptr %35, i64 %8, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !1043
  %38 = add i32 %9, %32
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, ptr %37, i64 %39
  store i32 %34, ptr %40, align 4, !tbaa !499
  %41 = load i32, ptr %10, align 8, !tbaa !465
  %42 = tail call i32 @llvm.umax.i32(i32 %41, i32 %32)
  store i32 %42, ptr %10, align 8, !tbaa !465
  br i1 %11, label %43, label %57

43:                                               ; preds = %25
  %44 = tail call i64 @int_cst_value(ptr noundef nonnull %21) #31
  %45 = load ptr, ptr %7, align 8, !tbaa !1051
  %46 = getelementptr inbounds %struct.eqn_d, ptr %45, i64 %8, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !1043
  %48 = load ptr, ptr %6, align 8, !tbaa !466
  %49 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %48) #30
  %50 = add i32 %32, 1
  %51 = add i32 %50, %49
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, ptr %47, i64 %52
  %54 = load i32, ptr %53, align 4, !tbaa !499
  %55 = trunc i64 %44 to i32
  %56 = add i32 %54, %55
  store i32 %56, ptr %53, align 4, !tbaa !499
  br label %57

57:                                               ; preds = %43, %25
  %58 = load i64, ptr %19, align 8
  %59 = trunc i64 %58 to i16
  switch i16 %59, label %69 [
    i16 146, label %13
    i16 23, label %60
  ]

60:                                               ; preds = %13, %57
  %61 = phi ptr [ %19, %57 ], [ %15, %13 ]
  %62 = tail call i64 @int_cst_value(ptr noundef nonnull %61) #31
  %63 = load ptr, ptr %7, align 8, !tbaa !1051
  %64 = getelementptr inbounds %struct.eqn_d, ptr %63, i64 %8, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !1043
  %66 = load i32, ptr %65, align 4, !tbaa !499
  %67 = trunc i64 %62 to i32
  %68 = add i32 %66, %67
  store i32 %68, ptr %65, align 4, !tbaa !499
  br label %69

69:                                               ; preds = %13, %17, %57, %60
  %70 = phi i8 [ 1, %60 ], [ 0, %57 ], [ 0, %17 ], [ 0, %13 ]
  ret i8 %70
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @lambda_vector_gcd(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !428 !PGOFuncName !1072 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 4, !tbaa !499
  %6 = icmp eq i32 %1, 1
  br i1 %6, label %17, label %7

7:                                                ; preds = %4
  %8 = zext nneg i32 %1 to i64
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 1, %7 ], [ %15, %9 ]
  %11 = phi i32 [ %5, %7 ], [ %14, %9 ]
  %12 = getelementptr inbounds i32, ptr %0, i64 %10
  %13 = load i32, ptr %12, align 4, !tbaa !499
  %14 = tail call fastcc i32 @gcd(i32 noundef %11, i32 noundef %13) #30, !range !920
  %15 = add nuw nsw i64 %10, 1
  %16 = icmp eq i64 %15, %8
  br i1 %16, label %17, label %9, !llvm.loop !1073

17:                                               ; preds = %9, %4, %2
  %18 = phi i32 [ 0, %2 ], [ %5, %4 ], [ %14, %9 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_init_eqn_zero(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 !prof !428 !PGOFuncName !1074 {
  store i32 0, ptr %0, align 8, !tbaa !1063
  %3 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !1057
  %4 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  store i32 0, ptr %4, align 8, !tbaa !1058
  %5 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !1043
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = shl nsw i64 %8, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 0, i64 %9, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_problem(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #21 !prof !428 !PGOFuncName !1075 {
  %3 = load i32, ptr %1, align 8, !tbaa !1056
  store i32 %3, ptr %0, align 8, !tbaa !1056
  %4 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 5
  %5 = load i32, ptr %4, align 4, !tbaa !1076
  %6 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 5
  store i32 %5, ptr %6, align 4, !tbaa !1076
  %7 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 6
  %8 = load i8, ptr %7, align 8, !tbaa !1077
  %9 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 6
  store i8 %8, ptr %9, align 8, !tbaa !1077
  %10 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 7
  %11 = load i8, ptr %10, align 1, !tbaa !1078
  %12 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 7
  store i8 %11, ptr %12, align 1, !tbaa !1078
  %13 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 1
  %14 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 4
  %16 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 3
  %17 = load <4 x i32>, ptr %13, align 4, !tbaa !499
  store <4 x i32> %17, ptr %14, align 4, !tbaa !499
  %18 = extractelement <4 x i32> %17, i64 1
  %19 = icmp sgt i32 %18, 0
  %20 = extractelement <4 x i32> %17, i64 2
  br i1 %19, label %21, label %36

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 11
  %23 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 11
  %24 = zext nneg i32 %18 to i64
  br label %25

25:                                               ; preds = %21, %25
  %26 = phi i64 [ %24, %21 ], [ %27, %25 ]
  %27 = add nsw i64 %26, -1
  %28 = load ptr, ptr %22, align 8, !tbaa !1051
  %29 = getelementptr inbounds %struct.eqn_d, ptr %28, i64 %27
  %30 = load ptr, ptr %23, align 8, !tbaa !1051
  %31 = getelementptr inbounds %struct.eqn_d, ptr %30, i64 %27
  %32 = load i32, ptr %1, align 8, !tbaa !1056
  tail call fastcc void @omega_copy_eqn(ptr noundef %29, ptr noundef %31, i32 noundef %32) #30
  %33 = icmp ugt i64 %26, 1
  br i1 %33, label %25, label %34, !llvm.loop !1079

34:                                               ; preds = %25
  %35 = load i32, ptr %16, align 4, !tbaa !1055
  br label %36

36:                                               ; preds = %34, %2
  %37 = phi i32 [ %35, %34 ], [ %20, %2 ]
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 10
  %41 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 10
  %42 = zext nneg i32 %37 to i64
  br label %43

43:                                               ; preds = %39, %43
  %44 = phi i64 [ %42, %39 ], [ %45, %43 ]
  %45 = add nsw i64 %44, -1
  %46 = load ptr, ptr %40, align 8, !tbaa !1041
  %47 = getelementptr inbounds %struct.eqn_d, ptr %46, i64 %45
  %48 = load ptr, ptr %41, align 8, !tbaa !1041
  %49 = getelementptr inbounds %struct.eqn_d, ptr %48, i64 %45
  %50 = load i32, ptr %1, align 8, !tbaa !1056
  tail call fastcc void @omega_copy_eqn(ptr noundef %47, ptr noundef %49, i32 noundef %50) #30
  %51 = icmp ugt i64 %44, 1
  br i1 %51, label %43, label %52, !llvm.loop !1080

52:                                               ; preds = %43, %36
  %53 = load i32, ptr %15, align 8, !tbaa !1061
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 12
  %57 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 12
  %58 = zext nneg i32 %53 to i64
  br label %59

59:                                               ; preds = %55, %59
  %60 = phi i64 [ %58, %55 ], [ %61, %59 ]
  %61 = add nsw i64 %60, -1
  %62 = load ptr, ptr %56, align 8, !tbaa !1052
  %63 = getelementptr inbounds %struct.eqn_d, ptr %62, i64 %61
  %64 = load ptr, ptr %57, align 8, !tbaa !1052
  %65 = getelementptr inbounds %struct.eqn_d, ptr %64, i64 %61
  %66 = load i32, ptr %1, align 8, !tbaa !1056
  tail call fastcc void @omega_copy_eqn(ptr noundef %63, ptr noundef %65, i32 noundef %66) #30
  %67 = icmp ugt i64 %60, 1
  br i1 %67, label %59, label %68, !llvm.loop !1081

68:                                               ; preds = %59, %52
  %69 = load i32, ptr %1, align 8, !tbaa !1056
  %70 = icmp sgt i32 %69, -1
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 8
  %73 = load ptr, ptr %72, align 8, !tbaa !1047
  %74 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 8
  %75 = load ptr, ptr %74, align 8, !tbaa !1047
  %76 = zext nneg i32 %69 to i64
  br label %77

77:                                               ; preds = %71, %77
  %78 = phi i64 [ %76, %71 ], [ %82, %77 ]
  %79 = getelementptr inbounds i32, ptr %73, i64 %78
  %80 = load i32, ptr %79, align 4, !tbaa !499
  %81 = getelementptr inbounds i32, ptr %75, i64 %78
  store i32 %80, ptr %81, align 4, !tbaa !499
  %82 = add nsw i64 %78, -1
  %83 = icmp eq i64 %78, 0
  br i1 %83, label %84, label %77, !llvm.loop !1082

84:                                               ; preds = %77, %68
  %85 = load ptr, ptr @compiler_params, align 8, !tbaa !430
  %86 = getelementptr inbounds %struct.param_info, ptr %85, i64 64, i32 1
  %87 = load i32, ptr %86, align 8, !tbaa !1049
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %102

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.omega_pb_d, ptr %1, i64 0, i32 9
  %91 = load ptr, ptr %90, align 8, !tbaa !1048
  %92 = getelementptr inbounds %struct.omega_pb_d, ptr %0, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !1048
  %94 = zext nneg i32 %87 to i64
  br label %95

95:                                               ; preds = %89, %95
  %96 = phi i64 [ %94, %89 ], [ %100, %95 ]
  %97 = getelementptr inbounds i32, ptr %91, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !499
  %99 = getelementptr inbounds i32, ptr %93, i64 %96
  store i32 %98, ptr %99, align 4, !tbaa !499
  %100 = add nsw i64 %96, -1
  %101 = icmp eq i64 %96, 0
  br i1 %101, label %102, label %95, !llvm.loop !1083

102:                                              ; preds = %95, %84
  ret void
}

; Function Attrs: optsize
declare i32 @omega_simplify_problem(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @omega_copy_eqn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #22 !prof !428 !PGOFuncName !1084 {
  %4 = load <2 x i32>, ptr %1, align 8, !tbaa !499
  store <2 x i32> %4, ptr %0, align 8, !tbaa !499
  %5 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 2
  %6 = load i32, ptr %5, align 8, !tbaa !1058
  %7 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 2
  store i32 %6, ptr %7, align 8, !tbaa !1058
  %8 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1043
  %10 = getelementptr inbounds %struct.eqn_d, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1043
  %12 = add nsw i32 %2, 1
  %13 = sext i32 %12 to i64
  %14 = shl nsw i64 %13, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %9, ptr align 4 %11, i64 %14, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @omega_free_eqns(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1085 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ %5, %4 ], [ %8, %6 ]
  %8 = add nsw i64 %7, -1
  %9 = getelementptr inbounds %struct.eqn_d, ptr %0, i64 %8, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1043
  tail call void @free(ptr noundef %10) #30
  %11 = icmp ugt i64 %7, 1
  br i1 %11, label %6, label %12, !llvm.loop !1086

12:                                               ; preds = %6, %2
  tail call void @free(ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_subscripts(ptr noundef %0) unnamed_addr #0 !prof !1087 !PGOFuncName !1088 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %15, label %6, !prof !1089

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  %9 = load ptr, ptr %8, align 8, !tbaa !484
  tail call fastcc void @free_conflict_function(ptr noundef %9) #30
  %10 = getelementptr inbounds %struct.subscript, ptr %8, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !489
  tail call fastcc void @free_conflict_function(ptr noundef %11) #30
  tail call void @free(ptr noundef %8) #30
  %12 = add i32 %7, 1
  %13 = call fastcc i32 @VEC_subscript_p_base_iterate(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #30, !range !429
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !prof !1090, !llvm.loop !1091

15:                                               ; preds = %6, %1
  call fastcc void @VEC_subscript_p_heap_free(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_subscript_p_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1087 !PGOFuncName !1092 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1093

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !1094 {
  %3 = tail call fastcc i32 @gimple_code(ptr noundef %0) #30, !range !554
  store ptr null, ptr %1, align 8, !tbaa !430
  %4 = icmp eq i32 %3, 8
  br i1 %4, label %5, label %9, !prof !1095

5:                                                ; preds = %2
  %6 = tail call i32 @gimple_call_flags(ptr noundef %0) #31
  %7 = and i32 %6, 3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %15, !prof !1096

9:                                                ; preds = %2
  %10 = icmp eq i32 %3, 7
  br i1 %10, label %11, label %15, !prof !1097

11:                                               ; preds = %9
  %12 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #30, !range !536
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %11, %5
  br label %15

15:                                               ; preds = %5, %14, %11, %9
  %16 = phi i8 [ 1, %14 ], [ 0, %11 ], [ 0, %9 ], [ 0, %5 ]
  %17 = tail call fastcc ptr @gimple_vuse(ptr noundef %0) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %72, label %19, !prof !1098

19:                                               ; preds = %15
  %20 = icmp eq i32 %3, 6
  br i1 %20, label %21, label %51, !prof !1099

21:                                               ; preds = %19
  %22 = tail call fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) #30
  %23 = tail call fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) #30
  %24 = load ptr, ptr %23, align 8, !tbaa !430
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65535
  %27 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !499
  switch i32 %28, label %39 [
    i32 3, label %36
    i32 4, label %29
  ], !prof !1100

29:                                               ; preds = %21
  %30 = tail call ptr @get_base_address(ptr noundef nonnull %24) #31
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32, !prof !1101

32:                                               ; preds = %29
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 141
  br i1 %35, label %39, label %36, !prof !1101

36:                                               ; preds = %21, %32
  %37 = tail call fastcc ptr @VEC_data_ref_loc_heap_safe_push(ptr noundef nonnull %1) #30
  store ptr %23, ptr %37, align 8, !tbaa !1102
  %38 = getelementptr inbounds %struct.data_ref_loc_d, ptr %37, i64 0, i32 1
  store i8 1, ptr %38, align 8, !tbaa !1104
  br label %39

39:                                               ; preds = %21, %36, %32, %29
  %40 = load ptr, ptr %22, align 8, !tbaa !430
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 65535
  %43 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !499
  switch i32 %44, label %72 [
    i32 3, label %48
    i32 4, label %45
  ], !prof !1105

45:                                               ; preds = %39
  %46 = tail call ptr @get_base_address(ptr noundef nonnull %40) #31
  %47 = icmp eq ptr %46, null
  br i1 %47, label %72, label %48, !prof !1106

48:                                               ; preds = %39, %45
  %49 = tail call fastcc ptr @VEC_data_ref_loc_heap_safe_push(ptr noundef nonnull %1) #30
  store ptr %22, ptr %49, align 8, !tbaa !1102
  %50 = getelementptr inbounds %struct.data_ref_loc_d, ptr %49, i64 0, i32 1
  store i8 0, ptr %50, align 8, !tbaa !1104
  br label %72

51:                                               ; preds = %19
  br i1 %4, label %52, label %72, !prof !1107

52:                                               ; preds = %51
  %53 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #30
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %72, label %55, !prof !1108

55:                                               ; preds = %52, %69
  %56 = phi i32 [ %70, %69 ], [ 0, %52 ]
  %57 = tail call fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %56) #30
  %58 = load ptr, ptr %57, align 8, !tbaa !430
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !499
  switch i32 %62, label %69 [
    i32 3, label %66
    i32 4, label %63
  ], !prof !1109

63:                                               ; preds = %55
  %64 = tail call ptr @get_base_address(ptr noundef nonnull %58) #31
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66, !prof !834

66:                                               ; preds = %55, %63
  %67 = tail call fastcc ptr @VEC_data_ref_loc_heap_safe_push(ptr noundef nonnull %1) #30
  store ptr %57, ptr %67, align 8, !tbaa !1102
  %68 = getelementptr inbounds %struct.data_ref_loc_d, ptr %67, i64 0, i32 1
  store i8 1, ptr %68, align 8, !tbaa !1104
  br label %69

69:                                               ; preds = %55, %63, %66
  %70 = add nuw i32 %56, 1
  %71 = icmp eq i32 %70, %53
  br i1 %71, label %72, label %55, !prof !1110, !llvm.loop !1111

72:                                               ; preds = %69, %52, %51, %39, %48, %45, %15
  ret i8 %16
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1112 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1094 !PGOFuncName !1113 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #30, !range !536
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1114

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !535
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs_ptr(ptr noundef %0) unnamed_addr #0 !prof !1115 !PGOFuncName !1116 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 0) #30
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1_ptr(ptr noundef %0) unnamed_addr #0 !prof !1115 !PGOFuncName !1117 {
  %2 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef 1) #30
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_data_ref_loc_heap_safe_push(ptr nocapture noundef %0) unnamed_addr #0 !prof !1118 !PGOFuncName !1119 {
  tail call fastcc void @VEC_data_ref_loc_heap_reserve(ptr noundef %0) #30
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc ptr @VEC_data_ref_loc_base_quick_push(ptr noundef %2) #30
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1120 !PGOFuncName !1121 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #30
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1122 !PGOFuncName !1123 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %3) #30
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1094 !PGOFuncName !1124 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #30, !range !554
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1125 !PGOFuncName !1126 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #30, !range !536
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %9, label %5, !prof !1127

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #30
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  br label %9

9:                                                ; preds = %2, %5
  %10 = phi ptr [ %8, %5 ], [ null, %2 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_data_ref_loc_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1118 !PGOFuncName !1128 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_data_ref_loc_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1129

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_data_ref_loc_base_quick_push(ptr noundef %0) unnamed_addr #2 !prof !1118 !PGOFuncName !1130 {
  %2 = load i32, ptr %0, align 8, !tbaa !1131
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1131
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_data_ref_loc_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1118 !PGOFuncName !1133 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1129

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1134
  %6 = load i32, ptr %0, align 8, !tbaa !1131
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @find_data_references_in_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !1094 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %6 = call zeroext i8 @get_references_in_stmt(ptr noundef %1, ptr noundef nonnull %4) #30, !range !536
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %41, !prof !1135

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %41, label %12, !prof !1136

12:                                               ; preds = %8
  %13 = icmp ne ptr %0, null
  br label %14

14:                                               ; preds = %12, %37
  %15 = phi i32 [ 0, %12 ], [ %38, %37 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !430
  %17 = load ptr, ptr %16, align 8, !tbaa !1102
  %18 = load ptr, ptr %17, align 8, !tbaa !430
  %19 = getelementptr inbounds %struct.data_ref_loc_d, ptr %16, i64 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !1104
  %21 = tail call ptr @create_data_ref(ptr noundef %0, ptr noundef %18, ptr noundef %1, i8 noundef zeroext %20) #30
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24, !prof !588

23:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 4173, ptr noundef nonnull @.str.51) #31
  br label %24

24:                                               ; preds = %14, %23
  %25 = tail call fastcc zeroext i8 @dr_address_invariant_p(ptr noundef %21) #30, !range !536
  %26 = icmp ne i8 %25, 0
  %27 = and i1 %13, %26
  br i1 %27, label %28, label %37, !prof !1137

28:                                               ; preds = %24
  tail call void @free_data_ref(ptr noundef %21) #30
  %29 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %30 = icmp eq ptr %29, null
  br i1 %30, label %41, label %31, !prof !1138

31:                                               ; preds = %28
  %32 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 35, i64 1, ptr nonnull %29)
  br label %41

37:                                               ; preds = %24
  tail call fastcc void @VEC_data_reference_p_heap_safe_push(ptr noundef %2, ptr noundef %21) #30
  %38 = add i32 %15, 1
  %39 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef %38, ptr noundef nonnull %5) #30, !range !429
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %14, !prof !1139, !llvm.loop !1140

41:                                               ; preds = %37, %35, %31, %28, %8, %3
  %42 = phi i8 [ 0, %3 ], [ 0, %35 ], [ 0, %31 ], [ 0, %28 ], [ 1, %8 ], [ 1, %37 ]
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret i8 %42
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_data_ref_loc_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1094 !PGOFuncName !1141 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1142

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_data_ref_loc_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !1143 !PGOFuncName !1144 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1145

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1131
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1146

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_data_ref_loc_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !430
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @dr_address_invariant_p(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !587 !PGOFuncName !1147 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = getelementptr inbounds %struct.data_reference, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !450
  %5 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %2) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %12, !prof !1148

7:                                                ; preds = %12
  %8 = add i32 %13, 1
  %9 = load ptr, ptr %3, align 8, !tbaa !450
  %10 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %2) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !prof !1149, !llvm.loop !1150

12:                                               ; preds = %1, %7
  %13 = phi i32 [ %8, %7 ], [ 0, %1 ]
  %14 = load ptr, ptr %2, align 8, !tbaa !430
  %15 = tail call zeroext i8 @tree_contains_chrecs(ptr noundef %14, ptr noundef null) #31
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %7, label %17, !prof !1151

17:                                               ; preds = %12, %7, %1
  %18 = phi i8 [ 1, %1 ], [ 1, %7 ], [ 0, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_data_reference_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1152 !PGOFuncName !1153 {
  tail call fastcc void @VEC_data_reference_p_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_data_reference_p_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @tree_contains_chrecs(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_data_reference_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1152 !PGOFuncName !1154 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_data_reference_p_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1155

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_data_reference_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !1152 !PGOFuncName !1156 {
  %3 = load i32, ptr %0, align 8, !tbaa !439
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !439
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_data_reference_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1152 !PGOFuncName !1157 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1158

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_data_reference_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1159
  %6 = load i32, ptr %0, align 8, !tbaa !439
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @graphite_find_data_references_in_stmt(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !428 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %6 = call zeroext i8 @get_references_in_stmt(ptr noundef %1, ptr noundef nonnull %4) #30, !range !536
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8
  %10 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %8, %22
  %13 = phi i32 [ %23, %22 ], [ 0, %8 ]
  %14 = load ptr, ptr %5, align 8, !tbaa !430
  %15 = load ptr, ptr %14, align 8, !tbaa !1102
  %16 = load ptr, ptr %15, align 8, !tbaa !430
  %17 = getelementptr inbounds %struct.data_ref_loc_d, ptr %14, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !1104
  %19 = tail call ptr @create_data_ref(ptr noundef %0, ptr noundef %16, ptr noundef %1, i8 noundef zeroext %18) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 4216, ptr noundef nonnull @.str.51) #31
  br label %22

22:                                               ; preds = %12, %21
  tail call fastcc void @VEC_data_reference_p_heap_safe_push(ptr noundef %2, ptr noundef %19) #30
  %23 = add i32 %13, 1
  %24 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef %23, ptr noundef nonnull %5) #30, !range !429
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %12, !llvm.loop !1160

26:                                               ; preds = %22, %8, %3
  %27 = phi i8 [ 0, %3 ], [ 1, %8 ], [ 1, %22 ]
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  ret i8 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_data_references_in_loop(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !1161 {
  %3 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #31
  %4 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %5 = load i32, ptr %4, align 4, !tbaa !1162
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %12, !prof !1163

7:                                                ; preds = %12
  %8 = add nuw nsw i64 %13, 1
  %9 = load i32, ptr %4, align 4, !tbaa !1162
  %10 = zext i32 %9 to i64
  %11 = icmp ult i64 %8, %10
  br i1 %11, label %12, label %21, !prof !1164, !llvm.loop !1165

12:                                               ; preds = %2, %7
  %13 = phi i64 [ %8, %7 ], [ 0, %2 ]
  %14 = getelementptr inbounds ptr, ptr %3, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !430
  %16 = tail call fastcc ptr @find_data_references_in_bb(ptr noundef nonnull %0, ptr noundef %15, ptr noundef %1) #30
  %17 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %18 = icmp eq ptr %16, %17
  br i1 %18, label %19, label %7, !prof !1166

19:                                               ; preds = %12
  tail call void @free(ptr noundef nonnull %3) #30
  %20 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %22

21:                                               ; preds = %7, %2
  tail call void @free(ptr noundef %3) #30
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi ptr [ %20, %19 ], [ null, %21 ]
  ret ptr %23
}

; Function Attrs: optsize
declare ptr @get_loop_body_in_dom_order(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_data_references_in_bb(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 !prof !1167 !PGOFuncName !1168 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #30
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #30, !range !536
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %17, !prof !1169

7:                                                ; preds = %3, %14
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #30
  %9 = tail call zeroext i8 @find_data_references_in_stmt(ptr noundef %0, ptr noundef %8, ptr noundef %2) #30, !range !536
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %14, !prof !1170

11:                                               ; preds = %7
  %12 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #31
  tail call fastcc void @VEC_data_reference_p_heap_safe_push(ptr noundef %2, ptr noundef %12) #30
  %13 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %17

14:                                               ; preds = %7
  call fastcc void @gsi_next(ptr noundef nonnull %4) #30
  %15 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #30, !range !536
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %7, label %17, !prof !1171, !llvm.loop !1172

17:                                               ; preds = %14, %3, %11
  %18 = phi ptr [ %13, %11 ], [ null, %3 ], [ null, %14 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #23 !prof !1167 !PGOFuncName !1173 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #30
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #30
  store ptr %4, ptr %0, align 8, !tbaa !1174
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1176
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1177
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !1178 !PGOFuncName !1179 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1174
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !1094 !PGOFuncName !1180 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1174
  %3 = load ptr, ptr %2, align 8, !tbaa !1181
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #23 !prof !1183 !PGOFuncName !1184 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1174
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1185
  store ptr %4, ptr %0, align 8, !tbaa !1174
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1167 !PGOFuncName !1186 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1187
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1188

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !535
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1189

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1190
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !1167 !PGOFuncName !1192 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1189

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1193
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @find_loop_nest(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !1161 {
  tail call fastcc void @VEC_loop_p_heap_safe_push(ptr noundef %1, ptr noundef %0) #30
  %3 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !1195
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6, !prof !1196

6:                                                ; preds = %2
  %7 = tail call fastcc zeroext i8 @find_loop_nest_1(ptr noundef nonnull %4, ptr noundef %1) #30, !range !536
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi i8 [ %7, %6 ], [ 1, %2 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1197 !PGOFuncName !1198 {
  tail call fastcc void @VEC_loop_p_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_loop_p_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @find_loop_nest_1(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !1199 !PGOFuncName !1200 {
  br label %3

3:                                                ; preds = %8, %2
  %4 = phi ptr [ %0, %2 ], [ %10, %8 ]
  %5 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !1201
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12, !prof !870

8:                                                ; preds = %3
  tail call fastcc void @VEC_loop_p_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #30
  %9 = getelementptr inbounds %struct.loop, ptr %4, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !1195
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %3, !prof !870

12:                                               ; preds = %8, %3
  %13 = phi i8 [ 0, %3 ], [ 1, %8 ]
  ret i8 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_loop_p_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1197 !PGOFuncName !1202 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_loop_p_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1203

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_loop_p_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !1197 !PGOFuncName !1204 {
  %3 = load i32, ptr %0, align 8, !tbaa !521
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !521
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !1197 !PGOFuncName !1205 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1203

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1206
  %6 = load i32, ptr %0, align 8, !tbaa !521
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !1161 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %6 = tail call fastcc ptr @VEC_loop_p_heap_alloc() #30
  store ptr %6, ptr %5, align 8, !tbaa !430
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(76) @dependence_stats, i8 0, i64 76, i1 false)
  %7 = icmp eq ptr %0, null
  br i1 %7, label %18, label %8, !prof !1207

8:                                                ; preds = %4
  %9 = call zeroext i8 @find_loop_nest(ptr noundef nonnull %0, ptr noundef nonnull %5) #30, !range !536
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13, !prof !1207

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !tbaa !430
  br label %18

13:                                               ; preds = %8
  %14 = tail call ptr @find_data_references_in_loop(ptr noundef nonnull %0, ptr noundef %2) #30
  %15 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %16 = icmp eq ptr %14, %15
  %17 = load ptr, ptr %5, align 8, !tbaa !430
  br i1 %16, label %18, label %21, !prof !1208

18:                                               ; preds = %11, %13, %4
  %19 = phi ptr [ %12, %11 ], [ %17, %13 ], [ %6, %4 ]
  %20 = tail call fastcc ptr @initialize_data_dependence_relation(ptr noundef null, ptr noundef null, ptr noundef %19) #30
  tail call fastcc void @VEC_ddr_p_heap_safe_push(ptr noundef %3, ptr noundef %20) #30
  br label %23

21:                                               ; preds = %13
  %22 = load ptr, ptr %2, align 8, !tbaa !430
  tail call void @compute_all_dependences(ptr noundef %22, ptr noundef %3, ptr noundef %17, i8 noundef zeroext %1) #30
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i8 [ 0, %18 ], [ 1, %21 ]
  %25 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %26 = icmp eq ptr %25, null
  br i1 %26, label %90, label %27, !prof !1209

27:                                               ; preds = %23
  %28 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %90, label %31

31:                                               ; preds = %27
  %32 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 30, i64 1, ptr nonnull %25)
  %33 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %34 = load i32, ptr @dependence_stats, align 4, !tbaa !722
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef nonnull @.str.111, i32 noundef %34) #30
  %36 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %37 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 1), align 4, !tbaa !773
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef nonnull @.str.112, i32 noundef %37) #30
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %40 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 2), align 4, !tbaa !792
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.113, i32 noundef %40) #30
  %42 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %43 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 3), align 4, !tbaa !727
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.114, i32 noundef %43) #30
  %45 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %46 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 4), align 4, !tbaa !825
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef nonnull @.str.115, i32 noundef %46) #30
  %48 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %49 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 5), align 4, !tbaa !828
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef nonnull @.str.116, i32 noundef %49) #30
  %51 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %52 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 6), align 4, !tbaa !831
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull @.str.117, i32 noundef %52) #30
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %55 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 7), align 4, !tbaa !852
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %54, ptr noundef nonnull @.str.118, i32 noundef %55) #30
  %57 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %58 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 9), align 4, !tbaa !1210
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef nonnull @.str.119, i32 noundef %58) #30
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %61 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 8), align 4, !tbaa !1211
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %60, ptr noundef nonnull @.str.120, i32 noundef %61) #30
  %63 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %64 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 10), align 4, !tbaa !1212
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef nonnull @.str.121, i32 noundef %64) #30
  %66 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %67 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 11), align 4, !tbaa !859
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef nonnull @.str.122, i32 noundef %67) #30
  %69 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %70 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 13), align 4, !tbaa !866
  %71 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.123, i32 noundef %70) #30
  %72 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %73 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 12), align 4, !tbaa !865
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.124, i32 noundef %73) #30
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %76 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 14), align 4, !tbaa !863
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef nonnull @.str.125, i32 noundef %76) #30
  %78 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %79 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 15), align 4, !tbaa !872
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.126, i32 noundef %79) #30
  %81 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %82 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 17), align 4, !tbaa !1213
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef nonnull @.str.127, i32 noundef %82) #30
  %84 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %85 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 16), align 4, !tbaa !1214
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %84, ptr noundef nonnull @.str.128, i32 noundef %85) #30
  %87 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %88 = load i32, ptr getelementptr inbounds (%struct.datadep_stats, ptr @dependence_stats, i64 0, i32 18), align 4, !tbaa !1215
  %89 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef nonnull @.str.129, i32 noundef %88) #30
  br label %90

90:                                               ; preds = %31, %27, %23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  ret i8 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_loop_p_heap_alloc() unnamed_addr #0 !prof !1161 !PGOFuncName !1216 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 3) #31
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @compute_data_dependences_for_bb(ptr noundef %0, i8 noundef zeroext %1, ptr nocapture noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 !prof !1217 {
  %5 = tail call fastcc ptr @find_data_references_in_bb(ptr noundef null, ptr noundef %0, ptr noundef %2) #30
  %6 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %10, label %8, !prof !1218

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !430
  tail call void @compute_all_dependences(ptr noundef %9, ptr noundef %3, ptr noundef null, i8 noundef zeroext %1) #30
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i8 [ 1, %8 ], [ 0, %4 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @tree_check_data_deps() local_unnamed_addr #0 !prof !428 {
  %1 = alloca %struct.loop_iterator, align 8
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call fastcc void @fel_init(ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  %3 = load ptr, ptr %2, align 8, !tbaa !430
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0, %5
  %6 = phi ptr [ %7, %5 ], [ %3, %0 ]
  tail call fastcc void @analyze_all_data_dependences(ptr noundef nonnull %6) #30
  call fastcc void @fel_next(ptr noundef nonnull %1, ptr noundef nonnull %2) #30
  %7 = load ptr, ptr %2, align 8, !tbaa !430
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %5, !llvm.loop !1219

9:                                                ; preds = %5, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !1220 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !1221
  %4 = load ptr, ptr @cfun, align 8, !tbaa !430
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !911
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !1223
  store ptr null, ptr %1, align 8, !tbaa !430
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #30
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #30
  store ptr %11, ptr %0, align 8, !tbaa !1223
  %12 = load ptr, ptr @cfun, align 8, !tbaa !430
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !911
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1224
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !467
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !1223
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #30
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !1195
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !1201
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #30
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !1225

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #30
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @analyze_all_data_dependences(ptr noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1226 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %5 = tail call fastcc ptr @VEC_data_reference_p_heap_alloc() #30
  store ptr %5, ptr %2, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %6 = tail call fastcc ptr @VEC_ddr_p_heap_alloc() #30
  store ptr %6, ptr %3, align 8, !tbaa !430
  %7 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %2, ptr noundef nonnull %3) #30, !range !536
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %3, align 8
  br i1 %9, label %37, label %11

11:                                               ; preds = %1
  tail call void @dump_data_dependence_relations(ptr noundef nonnull %8, ptr noundef %10) #30
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !430
  %13 = tail call i64 @fwrite(ptr nonnull @.str.49, i64 2, i64 1, ptr %12)
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !499
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr @dump_file, align 8, !tbaa !430
  tail call void @dump_dist_dir_vectors(ptr noundef %18, ptr noundef %10) #30
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !499
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ %19, %17 ], [ %14, %11 ]
  %22 = and i32 %21, 16
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %25 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %10, i32 noundef 0, ptr noundef nonnull %4) #30, !range !429
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %24, %27
  %28 = phi i32 [ %33, %27 ], [ 0, %24 ]
  %29 = load ptr, ptr %4, align 8, !tbaa !430
  %30 = getelementptr inbounds %struct.data_dependence_relation, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !459
  %32 = tail call zeroext i8 @chrec_contains_undetermined(ptr noundef %31) #31
  %33 = add i32 %28, 1
  %34 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %10, i32 noundef %33, ptr noundef nonnull %4) #30, !range !429
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27, !llvm.loop !1227

36:                                               ; preds = %27, %24
  tail call void @gather_stats_on_scev_database() #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  br label %37

37:                                               ; preds = %20, %36, %1
  tail call void @free_dependence_relations(ptr noundef %10) #30
  %38 = load ptr, ptr %2, align 8, !tbaa !430
  tail call void @free_data_refs(ptr noundef %38) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !1228 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #29
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !1221
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !1223
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #30, !range !429
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !1221
  %13 = load i32, ptr %3, align 4, !tbaa !499
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #30
  store ptr %14, ptr %1, align 8, !tbaa !430
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !1229

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #30
  store ptr null, ptr %1, align 8, !tbaa !430
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1230 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #31
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #9 !prof !428 !PGOFuncName !1231 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !430
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !911
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !912
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #30
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !428 !PGOFuncName !1232 {
  %3 = load i32, ptr %0, align 4, !tbaa !1233
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1233
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !499
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !428 !PGOFuncName !1235 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1236
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #30
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #30
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_data_reference_p_heap_alloc() unnamed_addr #0 !prof !428 !PGOFuncName !1237 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #31
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_ddr_p_heap_alloc() unnamed_addr #0 !prof !428 !PGOFuncName !1238 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #31
  ret ptr %1
}

; Function Attrs: optsize
declare void @gather_stats_on_scev_database() local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dependence_relations(ptr noundef %0) local_unnamed_addr #0 !prof !1239 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %31, label %7, !prof !1240

7:                                                ; preds = %1, %23
  %8 = phi i32 [ %25, %23 ], [ 0, %1 ]
  %9 = phi ptr [ %24, %23 ], [ null, %1 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !430
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12, !prof !1241

12:                                               ; preds = %7
  %13 = icmp eq ptr %9, null
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %10, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !466
  br i1 %13, label %21, label %16, !prof !1242

16:                                               ; preds = %12
  %17 = icmp eq ptr %15, null
  %18 = icmp eq ptr %15, %9
  %19 = or i1 %17, %18
  br i1 %19, label %21, label %20, !prof !1243

20:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.53, i32 noundef 4551, ptr noundef nonnull @.str.51) #31
  br label %21

21:                                               ; preds = %12, %20, %16
  %22 = phi ptr [ %9, %20 ], [ %9, %16 ], [ %15, %12 ]
  tail call void @free_dependence_relation(ptr noundef nonnull %10) #30
  br label %23

23:                                               ; preds = %7, %21
  %24 = phi ptr [ %9, %7 ], [ %22, %21 ]
  %25 = add i32 %8, 1
  %26 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef %25, ptr noundef nonnull %3) #30, !range !429
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %7, !prof !1244, !llvm.loop !1245

28:                                               ; preds = %23
  store ptr %24, ptr %4, align 8, !tbaa !430
  %29 = icmp eq ptr %24, null
  br i1 %29, label %31, label %30, !prof !1246

30:                                               ; preds = %28
  call fastcc void @VEC_loop_p_heap_free(ptr noundef nonnull %4) #30
  br label %31

31:                                               ; preds = %1, %30, %28
  call fastcc void @VEC_ddr_p_heap_free(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_data_refs(ptr noundef %0) local_unnamed_addr #0 !prof !1239 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !1240

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @free_data_ref(ptr noundef %8) #30
  %9 = add i32 %7, 1
  %10 = call fastcc i32 @VEC_data_reference_p_base_iterate(ptr noundef %0, i32 noundef %9, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !prof !1247, !llvm.loop !1248

12:                                               ; preds = %6, %1
  call fastcc void @VEC_data_reference_p_heap_free(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !428 !PGOFuncName !1249 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1233
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !499
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !499
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !428 !PGOFuncName !1250 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_dependence_relation(ptr noundef %0) local_unnamed_addr #0 !prof !1251 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %19, label %3, !prof !1241

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !463
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7, !prof !1252

7:                                                ; preds = %3
  tail call fastcc void @free_subscripts(ptr noundef nonnull %5) #30
  br label %8

8:                                                ; preds = %7, %3
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %10 = load ptr, ptr %9, align 8, !tbaa !473
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12, !prof !1252

12:                                               ; preds = %8
  tail call fastcc void @VEC_lambda_vector_heap_free(ptr noundef nonnull %9) #30
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !474
  %16 = icmp eq ptr %15, null
  br i1 %16, label %18, label %17, !prof !1252

17:                                               ; preds = %13
  tail call fastcc void @VEC_lambda_vector_heap_free(ptr noundef nonnull %14) #30
  br label %18

18:                                               ; preds = %17, %13
  tail call void @free(ptr noundef nonnull %0) #30
  br label %19

19:                                               ; preds = %1, %18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_lambda_vector_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1253 !PGOFuncName !1254 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1255

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_loop_p_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1256 !PGOFuncName !1257 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1258

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ddr_p_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1239 !PGOFuncName !1259 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1260

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_data_reference_p_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !1239 !PGOFuncName !1261 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1260

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_rdg_vertex(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 !prof !428 {
  %4 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1262
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6
  %8 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !1264
  %10 = getelementptr inbounds %struct.rdg_vertex, ptr %9, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !1266
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, ptr @.str.132, ptr @.str.131
  %14 = getelementptr inbounds %struct.rdg_vertex, ptr %9, i64 0, i32 2
  %15 = load i8, ptr %14, align 1, !tbaa !1268
  %16 = icmp eq i8 %15, 0
  %17 = select i1 %16, ptr @.str.132, ptr @.str.133
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.130, i32 noundef %2, ptr noundef nonnull %13, ptr noundef nonnull %17) #30
  %19 = load ptr, ptr %7, align 8, !tbaa !1269
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3, %21
  %22 = phi ptr [ %26, %21 ], [ %19, %3 ]
  %23 = load i32, ptr %22, align 8, !tbaa !1270
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.134, i32 noundef %23) #30
  %25 = getelementptr inbounds %struct.graph_edge, ptr %22, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !1272
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %21, !llvm.loop !1273

28:                                               ; preds = %21, %3
  %29 = tail call i64 @fwrite(ptr nonnull @.str.135, i64 7, i64 1, ptr %0)
  %30 = getelementptr inbounds %struct.vertex, ptr %5, i64 %6, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !1274
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %28, %33
  %34 = phi ptr [ %39, %33 ], [ %31, %28 ]
  %35 = getelementptr inbounds %struct.graph_edge, ptr %34, i64 0, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !1275
  %37 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.134, i32 noundef %36) #30
  %38 = getelementptr inbounds %struct.graph_edge, ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !1276
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %33, !llvm.loop !1277

41:                                               ; preds = %33, %28
  %42 = tail call i64 @fwrite(ptr nonnull @.str.136, i64 3, i64 1, ptr %0)
  %43 = load ptr, ptr %8, align 8, !tbaa !1264
  %44 = load ptr, ptr %43, align 8, !tbaa !1278
  tail call void @print_gimple_stmt(ptr noundef %0, ptr noundef %44, i32 noundef 0, i32 noundef 16448) #31
  %45 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rdg_vertex(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_rdg_vertex(ptr noundef %3, ptr noundef %0, i32 noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_rdg_component(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !428 {
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.137, i32 noundef %2) #30
  %6 = load i32, ptr %1, align 8, !tbaa !1279
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  %10 = icmp eq ptr %3, null
  br label %11

11:                                               ; preds = %8, %24
  %12 = phi i32 [ %6, %8 ], [ %25, %24 ]
  %13 = phi i64 [ 0, %8 ], [ %26, %24 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !1262
  %15 = getelementptr inbounds %struct.vertex, ptr %14, i64 %13, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !1280
  %17 = icmp eq i32 %16, %2
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = trunc i64 %13 to i32
  br i1 %10, label %22, label %20

20:                                               ; preds = %18
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %3, i32 noundef %19) #31
  br label %22

22:                                               ; preds = %18, %20
  tail call void @dump_rdg_vertex(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %19) #30
  %23 = load i32, ptr %1, align 8, !tbaa !1279
  br label %24

24:                                               ; preds = %11, %22
  %25 = phi i32 [ %12, %11 ], [ %23, %22 ]
  %26 = add nuw nsw i64 %13, 1
  %27 = sext i32 %25 to i64
  %28 = icmp slt i64 %26, %27
  br i1 %28, label %11, label %29, !llvm.loop !1281

29:                                               ; preds = %24, %4
  %30 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rdg_component(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_rdg_component(ptr noundef %3, ptr noundef %0, i32 noundef %1, ptr noundef null) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_rdg(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !prof !428 {
  %3 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #31
  %4 = tail call i64 @fwrite(ptr nonnull @.str.138, i64 5, i64 1, ptr %0)
  %5 = load i32, ptr %1, align 8, !tbaa !1279
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.graph, ptr %1, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i64 [ 0, %7 ], [ %19, %18 ]
  %11 = trunc i64 %10 to i32
  %12 = tail call i32 @bitmap_bit_p(ptr noundef %3, i32 noundef %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %9
  %15 = load ptr, ptr %8, align 8, !tbaa !1262
  %16 = getelementptr inbounds %struct.vertex, ptr %15, i64 %10, i32 2
  %17 = load i32, ptr %16, align 8, !tbaa !1280
  tail call void @dump_rdg_component(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %17, ptr noundef %3) #30
  br label %18

18:                                               ; preds = %9, %14
  %19 = add nuw nsw i64 %10, 1
  %20 = load i32, ptr %1, align 8, !tbaa !1279
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %9, label %23, !llvm.loop !1282

23:                                               ; preds = %18, %2
  %24 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %0)
  tail call void @bitmap_obstack_free(ptr noundef %3) #31
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_rdg(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !428 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !430
  tail call void @dump_rdg(ptr noundef %2, ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @rdg_vertex_for_stmt(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca %struct.rdg_vertex_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #29
  store ptr %1, ptr %3, align 8, !tbaa !1283
  %4 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1285
  %6 = call ptr @htab_find(ptr noundef %5, ptr noundef nonnull %3) #31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rdg_vertex_info, ptr %6, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !1286
  br label %11

11:                                               ; preds = %2, %8
  %12 = phi i32 [ %10, %8 ], [ -1, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #29
  ret i32 %12
}

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @create_rdg_vertices(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %6 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %62, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  br label %11

11:                                               ; preds = %8, %57
  %12 = phi i64 [ 0, %8 ], [ %58, %57 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  %13 = load ptr, ptr %9, align 8, !tbaa !1262
  %14 = tail call ptr @xmalloc(i64 noundef 16) #31
  %15 = load ptr, ptr %3, align 8, !tbaa !430
  store ptr %15, ptr %14, align 8, !tbaa !1283
  %16 = getelementptr inbounds %struct.rdg_vertex_info, ptr %14, i64 0, i32 1
  %17 = trunc i64 %12 to i32
  store i32 %17, ptr %16, align 8, !tbaa !1286
  %18 = load ptr, ptr %10, align 8, !tbaa !1285
  %19 = tail call ptr @htab_find_slot(ptr noundef %18, ptr noundef nonnull %14, i32 noundef 1) #31
  %20 = load ptr, ptr %19, align 8, !tbaa !430
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  store ptr %14, ptr %19, align 8, !tbaa !430
  br label %24

23:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %14) #30
  br label %24

24:                                               ; preds = %23, %22
  %25 = tail call ptr @xmalloc(i64 noundef 16) #31
  %26 = getelementptr inbounds %struct.vertex, ptr %13, i64 %12, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !1264
  %27 = load ptr, ptr %9, align 8, !tbaa !1262
  %28 = getelementptr inbounds %struct.vertex, ptr %27, i64 %12, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !1264
  store ptr %15, ptr %29, align 8, !tbaa !1278
  %30 = getelementptr inbounds %struct.rdg_vertex, ptr %29, i64 0, i32 1
  store i8 0, ptr %30, align 8, !tbaa !1266
  %31 = getelementptr inbounds %struct.rdg_vertex, ptr %29, i64 0, i32 2
  store i8 0, ptr %31, align 1, !tbaa !1268
  %32 = tail call fastcc i32 @gimple_code(ptr noundef %15) #30, !range !554
  %33 = icmp eq i32 %32, 16
  br i1 %33, label %57, label %34

34:                                               ; preds = %24
  %35 = call zeroext i8 @get_references_in_stmt(ptr noundef %15, ptr noundef nonnull %4) #30, !range !536
  %36 = load ptr, ptr %4, align 8
  %37 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %34, %52
  %40 = phi i32 [ %53, %52 ], [ 0, %34 ]
  %41 = load ptr, ptr %5, align 8, !tbaa !430
  %42 = getelementptr inbounds %struct.data_ref_loc_d, ptr %41, i64 0, i32 1
  %43 = load i8, ptr %42, align 8, !tbaa !1104
  %44 = icmp eq i8 %43, 0
  %45 = load ptr, ptr %9, align 8, !tbaa !1262
  %46 = getelementptr inbounds %struct.vertex, ptr %45, i64 %12, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !1264
  br i1 %44, label %48, label %50

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.rdg_vertex, ptr %47, i64 0, i32 1
  store i8 1, ptr %49, align 8, !tbaa !1266
  br label %52

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.rdg_vertex, ptr %47, i64 0, i32 2
  store i8 1, ptr %51, align 1, !tbaa !1268
  br label %52

52:                                               ; preds = %48, %50
  %53 = add nuw nsw i32 %40, 1
  %54 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %36, i32 noundef %53, ptr noundef nonnull %5) #30, !range !429
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %39, !llvm.loop !1287

56:                                               ; preds = %52, %34
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %4) #30
  br label %57

57:                                               ; preds = %24, %56
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  %58 = add nuw i64 %12, 1
  %59 = trunc i64 %58 to i32
  %60 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %1, i32 noundef %59, ptr noundef nonnull %3) #30, !range !429
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %11, !llvm.loop !1288

62:                                               ; preds = %57, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_gimple_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !428 !PGOFuncName !1289 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1290
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !430
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_empty_rdg(i32 noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = tail call ptr @new_graph(i32 noundef %0) #31
  %3 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_stmt_vertex_info, ptr noundef nonnull @eq_stmt_vertex_info, ptr noundef nonnull @hash_stmt_vertex_del) #31
  %4 = getelementptr inbounds %struct.graph, ptr %2, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !1285
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @new_graph(i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @hash_stmt_vertex_info(ptr nocapture noundef readonly %0) #0 !prof !428 !PGOFuncName !1292 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1283
  %3 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !430
  %4 = tail call i32 %3(ptr noundef %2) #31
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @eq_stmt_vertex_info(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !428 !PGOFuncName !1293 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1283
  %4 = load ptr, ptr %1, align 8, !tbaa !1283
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @hash_stmt_vertex_del(ptr nocapture noundef %0) #24 !prof !428 !PGOFuncName !1294 {
  tail call void @free(ptr noundef %0) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_rdg(ptr noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  %5 = tail call fastcc ptr @VEC_gimple_heap_alloc() #30
  store ptr %5, ptr %4, align 8, !tbaa !430
  %6 = tail call fastcc ptr @VEC_ddr_p_heap_alloc() #30
  store ptr %6, ptr %2, align 8, !tbaa !430
  %7 = tail call fastcc ptr @VEC_data_reference_p_heap_alloc() #30
  store ptr %7, ptr %3, align 8, !tbaa !430
  %8 = call zeroext i8 @compute_data_dependences_for_loop(ptr noundef %0, i8 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %2) #30, !range !536
  %9 = load ptr, ptr %2, align 8, !tbaa !430
  %10 = tail call fastcc zeroext i8 @known_dependences_p(ptr noundef %9) #30, !range !536
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  tail call void @free_dependence_relations(ptr noundef %9) #30
  %13 = load ptr, ptr %3, align 8, !tbaa !430
  tail call void @free_data_refs(ptr noundef %13) #30
  br label %20

14:                                               ; preds = %1
  call fastcc void @stmts_from_loop(ptr noundef %0, ptr noundef nonnull %4) #30
  %15 = load ptr, ptr %4, align 8
  %16 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %15) #30
  %17 = tail call ptr @build_empty_rdg(i32 noundef %16) #30
  %18 = tail call ptr @htab_create(i64 noundef 10, ptr noundef nonnull @hash_stmt_vertex_info, ptr noundef nonnull @eq_stmt_vertex_info, ptr noundef nonnull @hash_stmt_vertex_del) #31
  %19 = getelementptr inbounds %struct.graph, ptr %17, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !1285
  tail call void @create_rdg_vertices(ptr noundef %17, ptr noundef %15) #30
  tail call fastcc void @create_rdg_edges(ptr noundef %17, ptr noundef %9) #30
  br label %20

20:                                               ; preds = %14, %12
  %21 = phi ptr [ %17, %14 ], [ null, %12 ]
  call fastcc void @VEC_gimple_heap_free(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_gimple_heap_alloc() unnamed_addr #0 !prof !428 !PGOFuncName !1295 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 10) #31
  ret ptr %1
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @known_dependences_p(ptr noundef %0) unnamed_addr #18 !prof !428 !PGOFuncName !1296 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #30, !range !429
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr @chrec_dont_know, align 8, !tbaa !430
  br label %11

7:                                                ; preds = %11
  %8 = add i32 %12, 1
  %9 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %0, i32 noundef %8, ptr noundef nonnull %2) #30, !range !429
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %17, label %11, !llvm.loop !1297

11:                                               ; preds = %5, %7
  %12 = phi i32 [ 0, %5 ], [ %8, %7 ]
  %13 = load ptr, ptr %2, align 8, !tbaa !430
  %14 = getelementptr inbounds %struct.data_dependence_relation, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !459
  %16 = icmp eq ptr %15, %6
  br i1 %16, label %17, label %7

17:                                               ; preds = %11, %7, %1
  %18 = phi i8 [ 1, %1 ], [ 1, %7 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret i8 %18
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_gimple_heap_free(ptr nocapture noundef %0) unnamed_addr #10 !prof !428 !PGOFuncName !1298 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #30
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !430
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @stmts_from_loop(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1299 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #31
  %6 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %7 = load i32, ptr %6, align 4, !tbaa !1162
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %2, %30
  %10 = phi i64 [ %31, %30 ], [ 0, %2 ]
  %11 = getelementptr inbounds ptr, ptr %5, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %12) #31
  %13 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9, %15
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %1, ptr noundef %16) #30
  call fastcc void @gsi_next(ptr noundef nonnull %3) #30
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %15, label %19, !llvm.loop !1300

19:                                               ; preds = %15, %9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #29
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %12) #30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !1301
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #29
  %20 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19, %27
  %23 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30
  %24 = call fastcc i32 @gimple_code(ptr noundef %23) #30, !range !554
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %1, ptr noundef %23) #30
  br label %27

27:                                               ; preds = %22, %26
  call fastcc void @gsi_next(ptr noundef nonnull %3) #30
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %22, label %30, !llvm.loop !1302

30:                                               ; preds = %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  %31 = add nuw nsw i64 %10, 1
  %32 = load i32, ptr %6, align 4, !tbaa !1162
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %9, label %35, !llvm.loop !1303

35:                                               ; preds = %30, %2
  call void @free(ptr noundef %5) #30
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1304 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1290
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_rdg_edges(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1305 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #29
  %5 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %19, %2
  %8 = load i32, ptr %0, align 8, !tbaa !1279
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %23

12:                                               ; preds = %2, %19
  %13 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !430
  %15 = getelementptr inbounds %struct.data_dependence_relation, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !459
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  tail call fastcc void @create_rdg_edge_for_ddr(ptr noundef %0, ptr noundef nonnull %14) #30
  br label %19

19:                                               ; preds = %12, %18
  %20 = add nuw nsw i32 %13, 1
  %21 = call fastcc i32 @VEC_ddr_p_base_iterate(ptr noundef %1, i32 noundef %20, ptr noundef nonnull %3) #30, !range !429
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %7, label %12, !llvm.loop !1306

23:                                               ; preds = %10, %47
  %24 = phi i64 [ 0, %10 ], [ %48, %47 ]
  %25 = load ptr, ptr %11, align 8, !tbaa !1262
  %26 = getelementptr inbounds %struct.vertex, ptr %25, i64 %24, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !1264
  %28 = load ptr, ptr %27, align 8, !tbaa !1278
  %29 = tail call fastcc i32 @gimple_code(ptr noundef %28) #30, !range !554
  %30 = icmp eq i32 %29, 16
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %4, ptr noundef %28) #30
  br label %35

33:                                               ; preds = %23
  %34 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %4, ptr noundef %28) #30
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi ptr [ %32, %31 ], [ %34, %33 ]
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #30
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = trunc i64 %24 to i32
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi ptr [ %44, %41 ], [ %36, %39 ]
  %43 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %42) #30
  tail call fastcc void @create_rdg_edges_for_scalar(ptr noundef nonnull %0, ptr noundef %43, i32 noundef %40) #30
  %44 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #30
  %45 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #30
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %41, label %47, !llvm.loop !1307

47:                                               ; preds = %41, %35
  %48 = add nuw nsw i64 %24, 1
  %49 = load i32, ptr %0, align 8, !tbaa !1279
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %23, label %52, !llvm.loop !1308

52:                                               ; preds = %47, %7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1309 {
  tail call fastcc void @VEC_gimple_heap_reserve(ptr noundef %0) #30
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_gimple_base_quick_push(ptr noundef %3, ptr noundef %1) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_gimple_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !428 !PGOFuncName !1310 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  %3 = tail call fastcc i32 @VEC_gimple_base_space(ptr noundef %2) #30
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #31
  store ptr %6, ptr %0, align 8, !tbaa !430
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !428 !PGOFuncName !1311 {
  %3 = load i32, ptr %0, align 8, !tbaa !1290
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1290
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !430
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_gimple_base_space(ptr noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1312 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1313
  %6 = load i32, ptr %0, align 8, !tbaa !1290
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_rdg_edge_for_ddr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !428 !PGOFuncName !1314 {
  %3 = load ptr, ptr %1, align 8, !tbaa !461
  %4 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !462
  %6 = tail call fastcc i32 @ddr_dependence_level(ptr noundef nonnull %1) #30
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.data_dependence_relation, ptr %1, i64 0, i32 8
  %10 = load i8, ptr %9, align 4, !tbaa !704
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr %3, ptr %5
  %13 = select i1 %11, ptr %5, ptr %3
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi ptr [ %5, %2 ], [ %12, %8 ]
  %16 = phi ptr [ %3, %2 ], [ %13, %8 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !443
  %18 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %17) #30
  %19 = load ptr, ptr %15, align 8, !tbaa !443
  %20 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %19) #30
  %21 = icmp slt i32 %18, 0
  %22 = icmp slt i32 %20, 0
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %14
  %25 = tail call ptr @add_edge(ptr noundef %0, i32 noundef %18, i32 noundef %20) #31
  %26 = tail call ptr @xmalloc(i64 noundef 16) #31
  %27 = getelementptr inbounds %struct.graph_edge, ptr %25, i64 0, i32 4
  store ptr %26, ptr %27, align 8, !tbaa !1315
  %28 = getelementptr inbounds %struct.rdg_edge, ptr %26, i64 0, i32 1
  store i32 %6, ptr %28, align 4, !tbaa !1316
  %29 = getelementptr inbounds %struct.rdg_edge, ptr %26, i64 0, i32 2
  store ptr %1, ptr %29, align 8, !tbaa !1318
  %30 = getelementptr inbounds %struct.data_reference, ptr %16, i64 0, i32 3
  %31 = load i8, ptr %30, align 8, !tbaa !622
  %32 = icmp eq i8 %31, 0
  %33 = getelementptr inbounds %struct.data_reference, ptr %15, i64 0, i32 3
  %34 = load i8, ptr %33, align 8, !tbaa !622
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 97, i32 105
  %37 = select i1 %35, i32 111, i32 102
  %38 = select i1 %32, i32 %37, i32 %36
  store i32 %38, ptr %26, align 8, !tbaa !1319
  br label %39

39:                                               ; preds = %24, %14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @op_iter_init_phidef(ptr nocapture noundef writeonly %0, ptr noundef readonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !1320 {
  %3 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %1) #30
  %4 = tail call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %3) #30
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #30
  store i8 0, ptr %0, align 8, !tbaa !1321
  %5 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #31
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i8 1, ptr %0, align 8, !tbaa !1321
  br label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %9, align 4, !tbaa !1323
  br label %10

10:                                               ; preds = %8, %7
  %11 = phi ptr [ null, %7 ], [ %3, %8 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #23 !prof !428 !PGOFuncName !1324 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1) #30
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !1323
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #30
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1325 {
  %2 = load i8, ptr %0, align 8, !tbaa !1321
  ret i8 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_rdg_edges_for_scalar(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !428 !PGOFuncName !1326 {
  %4 = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #29
  %5 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %4, ptr noundef %1) #30
  %6 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #30, !range !536
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %3, %19
  %9 = phi ptr [ %20, %19 ], [ %5, %3 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !535
  %12 = tail call i32 @rdg_vertex_for_stmt(ptr noundef %0, ptr noundef %11) #30
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = tail call ptr @add_edge(ptr noundef %0, i32 noundef %2, i32 noundef %12) #31
  %16 = tail call ptr @xmalloc(i64 noundef 16) #31
  %17 = getelementptr inbounds %struct.graph_edge, ptr %15, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !1315
  store i32 102, ptr %16, align 8, !tbaa !1319
  %18 = getelementptr inbounds %struct.rdg_edge, ptr %16, i64 0, i32 2
  store ptr null, ptr %18, align 8, !tbaa !1318
  br label %19

19:                                               ; preds = %8, %14
  %20 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %4) #30
  %21 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %4) #30, !range !536
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %8, label %23, !llvm.loop !1327

23:                                               ; preds = %19, %3
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #29
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1328 {
  %2 = load ptr, ptr %0, align 8, !tbaa !430
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #23 !prof !428 !PGOFuncName !1329 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1330
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1331
  %8 = load ptr, ptr %3, align 8, !tbaa !1333
  store ptr %8, ptr %2, align 8, !tbaa !1330
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !1321
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @ddr_dependence_level(ptr nocapture noundef readonly %0) unnamed_addr #16 !prof !428 !PGOFuncName !1334 {
  %2 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !473
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef nonnull %3, i32 noundef 0) #30
  %7 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !466
  %9 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %8) #30
  %10 = tail call fastcc i32 @dependence_level(ptr noundef %6, i32 noundef %9) #30
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i32 [ %10, %5 ], [ 0, %1 ]
  %13 = tail call fastcc i32 @VEC_lambda_vector_base_length(ptr noundef %3) #30
  %14 = icmp ugt i32 %13, 1
  br i1 %14, label %15, label %27

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.data_dependence_relation, ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !466
  %18 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %17) #30
  br label %19

19:                                               ; preds = %15, %19
  %20 = phi i32 [ %12, %15 ], [ %24, %19 ]
  %21 = phi i32 [ 1, %15 ], [ %25, %19 ]
  %22 = tail call fastcc ptr @VEC_lambda_vector_base_index(ptr noundef %3, i32 noundef %21) #30
  %23 = tail call fastcc i32 @dependence_level(ptr noundef %22, i32 noundef %18) #30
  %24 = tail call i32 @llvm.umin.i32(i32 %20, i32 %23)
  %25 = add nuw i32 %21, 1
  %26 = icmp eq i32 %25, %13
  br i1 %26, label %27, label %19, !llvm.loop !1335

27:                                               ; preds = %19, %11
  %28 = phi i32 [ %12, %11 ], [ %24, %19 ]
  ret i32 %28
}

; Function Attrs: optsize
declare ptr @add_edge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable
define internal fastcc i32 @dependence_level(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #17 !prof !428 !PGOFuncName !1336 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  br label %6

6:                                                ; preds = %4, %14
  %7 = phi i64 [ 0, %4 ], [ %15, %14 ]
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !499
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = trunc i64 %7 to i32
  %13 = add nuw nsw i32 %12, 1
  br label %17

14:                                               ; preds = %6
  %15 = add nuw nsw i64 %7, 1
  %16 = icmp eq i64 %15, %5
  br i1 %16, label %17, label %6, !llvm.loop !1337

17:                                               ; preds = %14, %2, %11
  %18 = phi i32 [ %13, %11 ], [ 0, %2 ], [ 0, %14 ]
  ret i32 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #8 !prof !428 !PGOFuncName !1338 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #25 !prof !428 !PGOFuncName !1339 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1321
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) unnamed_addr #23 !prof !428 !PGOFuncName !1340 {
  %3 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #30
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !1330
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %3, align 8, !tbaa !1333
  store ptr %10, ptr %4, align 8, !tbaa !1330
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store i8 0, ptr %0, align 8, !tbaa !1321
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1341 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #30, !range !536
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !535
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1342 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #30, !range !536
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !535
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @first_readonly_imm_use(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #2 !prof !428 !PGOFuncName !1343 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !1344
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1347
  store ptr %6, ptr %0, align 8, !tbaa !1348
  %7 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #30, !range !536
  %8 = icmp eq i8 %7, 0
  %9 = select i1 %8, ptr %6, ptr null
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !428 !PGOFuncName !1349 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1348
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1344
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_readonly_imm_use(ptr nocapture noundef %0) unnamed_addr #23 !prof !428 !PGOFuncName !1350 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1348
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !1347
  store ptr %4, ptr %0, align 8, !tbaa !1348
  %5 = tail call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %0) #30, !range !536
  %6 = icmp eq i8 %5, 0
  %7 = select i1 %6, ptr %4, ptr null
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @free_rdg(ptr noundef %0) local_unnamed_addr #0 !prof !428 {
  %2 = load i32, ptr %0, align 8, !tbaa !1279
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  br label %6

6:                                                ; preds = %4, %6
  %7 = phi i64 [ 0, %4 ], [ %11, %6 ]
  %8 = load ptr, ptr %5, align 8, !tbaa !1262
  %9 = getelementptr inbounds %struct.vertex, ptr %8, i64 %7, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !1264
  tail call void @free(ptr noundef %10) #30
  %11 = add nuw nsw i64 %7, 1
  %12 = load i32, ptr %0, align 8, !tbaa !1279
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %11, %13
  br i1 %14, label %6, label %15, !llvm.loop !1351

15:                                               ; preds = %6, %1
  %16 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1285
  tail call void @htab_delete(ptr noundef %17) #31
  tail call void @free_graph(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @free_graph(ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @stores_from_loop(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = tail call ptr @get_loop_body_in_dom_order(ptr noundef %0) #31
  %5 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 4, !tbaa !1162
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %27, label %8

8:                                                ; preds = %2, %22
  %9 = phi i64 [ %23, %22 ], [ 0, %2 ]
  %10 = getelementptr inbounds ptr, ptr %4, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !430
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #29
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %11) #30
  %12 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8, %19
  %15 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30
  %16 = tail call fastcc ptr @gimple_vdef(ptr noundef %15) #30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call fastcc void @VEC_gimple_heap_safe_push(ptr noundef %1, ptr noundef %15) #30
  br label %19

19:                                               ; preds = %14, %18
  call fastcc void @gsi_next(ptr noundef nonnull %3) #30
  %20 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #30, !range !536
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %14, label %22, !llvm.loop !1352

22:                                               ; preds = %19, %8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #29
  %23 = add nuw nsw i64 %9, 1
  %24 = load i32, ptr %5, align 4, !tbaa !1162
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %8, label %27, !llvm.loop !1353

27:                                               ; preds = %22, %2
  tail call void @free(ptr noundef %4) #30
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @rdg_defs_used_in_other_loops_p(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  %5 = getelementptr inbounds %struct.graph, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1262
  %7 = sext i32 %1 to i64
  %8 = getelementptr inbounds %struct.vertex, ptr %6, i64 %7, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !1264
  %10 = load ptr, ptr %9, align 8, !tbaa !1278
  %11 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %10) #30
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #29
  %12 = icmp eq ptr %11, null
  br i1 %12, label %44, label %13

13:                                               ; preds = %2
  %14 = tail call fastcc i32 @gimple_code(ptr noundef %10) #30, !range !554
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call fastcc ptr @op_iter_init_phidef(ptr noundef nonnull %4, ptr noundef %10) #30
  br label %20

18:                                               ; preds = %13
  %19 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %4, ptr noundef %10) #30
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi ptr [ %17, %16 ], [ %19, %18 ]
  %22 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #30
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %20, %40
  %25 = phi ptr [ %41, %40 ], [ %21, %20 ]
  %26 = tail call fastcc ptr @get_def_from_ptr(ptr noundef %25) #30
  %27 = call fastcc ptr @first_readonly_imm_use(ptr noundef nonnull %3, ptr noundef %26) #30
  %28 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #30, !range !536
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %24, %36
  %31 = phi ptr [ %37, %36 ], [ %27, %24 ]
  %32 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !535
  %34 = tail call fastcc ptr @loop_containing_stmt(ptr noundef %33) #30
  %35 = icmp eq ptr %34, %11
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = call fastcc ptr @next_readonly_imm_use(ptr noundef nonnull %3) #30
  %38 = call fastcc zeroext i8 @end_readonly_imm_use_p(ptr noundef nonnull %3) #30, !range !536
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %30, label %40, !llvm.loop !1354

40:                                               ; preds = %36, %24
  %41 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #30
  %42 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #30
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %24, label %44, !llvm.loop !1355

44:                                               ; preds = %40, %30, %20, %2
  %45 = phi i8 [ 1, %2 ], [ 0, %20 ], [ 1, %30 ], [ 0, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #29
  ret i8 %45
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @have_similar_memory_accesses(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !428 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #29
  %7 = call zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr noundef nonnull %3) #30, !range !536
  %8 = call zeroext i8 @get_references_in_stmt(ptr noundef %1, ptr noundef nonnull %4) #30, !range !536
  %9 = load ptr, ptr %3, align 8
  %10 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %5) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %35, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  br label %14

14:                                               ; preds = %12, %31
  %15 = phi i32 [ 0, %12 ], [ %32, %31 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !430
  %17 = tail call fastcc ptr @ref_base_address(ptr noundef %0, ptr noundef %16) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %6) #30, !range !429
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %31, label %26

22:                                               ; preds = %26
  %23 = add i32 %27, 1
  %24 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %13, i32 noundef %23, ptr noundef nonnull %6) #30, !range !429
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %31, label %26, !llvm.loop !1356

26:                                               ; preds = %19, %22
  %27 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %28 = load ptr, ptr %6, align 8, !tbaa !430
  %29 = tail call fastcc ptr @ref_base_address(ptr noundef %1, ptr noundef %28) #30
  %30 = icmp eq ptr %17, %29
  br i1 %30, label %35, label %22

31:                                               ; preds = %22, %19, %14
  %32 = add i32 %15, 1
  %33 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %9, i32 noundef %32, ptr noundef nonnull %5) #30, !range !429
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %14, !llvm.loop !1357

35:                                               ; preds = %31, %26, %2
  %36 = phi i8 [ 0, %2 ], [ 1, %26 ], [ 0, %31 ]
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %3) #30
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ref_base_address(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !428 !PGOFuncName !1358 {
  %3 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 112) #31
  store ptr %0, ptr %3, align 8, !tbaa !443
  %4 = load ptr, ptr %1, align 8, !tbaa !1102
  %5 = load ptr, ptr %4, align 8, !tbaa !430
  %6 = getelementptr inbounds %struct.data_reference, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !448
  %7 = tail call zeroext i8 @dr_analyze_innermost(ptr noundef nonnull %3) #30, !range !536
  %8 = getelementptr inbounds %struct.data_reference, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !602
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i64, ptr %9, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 121
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !535
  br label %18

18:                                               ; preds = %11, %15, %2
  %19 = phi ptr [ %17, %15 ], [ null, %2 ], [ %9, %11 ]
  tail call void @free_data_ref(ptr noundef nonnull %3) #30
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_similar_memory_refs(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !428 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  %3 = load ptr, ptr %0, align 8, !tbaa !430
  %4 = tail call fastcc i32 @VEC_gimple_base_length(ptr noundef %3) #30
  %5 = zext i32 %4 to i64
  %6 = tail call ptr @htab_create(i64 noundef %5, ptr noundef nonnull @ref_base_address_1, ptr noundef nonnull @have_similar_memory_accesses_1, ptr noundef null) #31
  %7 = load ptr, ptr %0, align 8, !tbaa !430
  %8 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %2) #30, !range !429
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %25, label %10

10:                                               ; preds = %1, %20
  %11 = phi i32 [ %21, %20 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !430
  %13 = tail call ptr @htab_find_slot(ptr noundef %6, ptr noundef %12, i32 noundef 1) #31
  %14 = load ptr, ptr %13, align 8, !tbaa !430
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %0, align 8, !tbaa !430
  tail call fastcc void @VEC_gimple_base_ordered_remove(ptr noundef %17, i32 noundef %11) #30
  br label %20

18:                                               ; preds = %10
  store ptr %12, ptr %13, align 8, !tbaa !430
  %19 = add i32 %11, 1
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %11, %16 ], [ %19, %18 ]
  %22 = load ptr, ptr %0, align 8, !tbaa !430
  %23 = call fastcc i32 @VEC_gimple_base_iterate(ptr noundef %22, i32 noundef %21, ptr noundef nonnull %2) #30, !range !429
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %10, !llvm.loop !1359

25:                                               ; preds = %20, %1
  tail call void @htab_delete(ptr noundef %6) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @ref_base_address_1(ptr noundef %0) #0 !prof !428 !PGOFuncName !1360 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %4 = call zeroext i8 @get_references_in_stmt(ptr noundef %0, ptr noundef nonnull %2) #30, !range !536
  %5 = load ptr, ptr %2, align 8
  %6 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %12

8:                                                ; preds = %12
  %9 = add i32 %13, 1
  %10 = call fastcc i32 @VEC_data_ref_loc_base_iterate(ptr noundef %5, i32 noundef %9, ptr noundef nonnull %3) #30, !range !429
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %22, label %12, !llvm.loop !1361

12:                                               ; preds = %1, %8
  %13 = phi i32 [ %9, %8 ], [ 0, %1 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !430
  %15 = getelementptr inbounds %struct.data_ref_loc_d, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !1104
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %8

18:                                               ; preds = %12
  %19 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !430
  %20 = tail call fastcc ptr @ref_base_address(ptr noundef %0, ptr noundef nonnull %14) #30
  %21 = tail call i32 %19(ptr noundef %20) #31
  br label %22

22:                                               ; preds = %8, %1, %18
  %23 = phi i32 [ %21, %18 ], [ 0, %1 ], [ 0, %8 ]
  call fastcc void @VEC_data_ref_loc_heap_free(ptr noundef nonnull %2) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #29
  ret i32 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @have_similar_memory_accesses_1(ptr noundef %0, ptr noundef %1) #0 !prof !428 !PGOFuncName !1362 {
  %3 = tail call zeroext i8 @have_similar_memory_accesses(ptr noundef %0, ptr noundef %1) #30
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_gimple_base_ordered_remove(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 !prof !428 !PGOFuncName !1363 {
  %3 = load i32, ptr %0, align 8, !tbaa !1290
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_gimple_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = add i32 %3, -1
  store i32 %7, ptr %0, align 8, !tbaa !1290
  %8 = sub i32 %7, %1
  %9 = zext i32 %8 to i64
  %10 = shl nuw nsw i64 %9, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %5, ptr nonnull align 8 %6, i64 %10, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @access_matrix_get_index_for_parameter(ptr noundef readnone %0, ptr nocapture noundef readonly %1) local_unnamed_addr #21 !prof !428 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.access_matrix, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !1364
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #29
  %6 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #30, !range !429
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2, %16
  %9 = phi i32 [ %17, %16 ], [ 0, %2 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !430
  %11 = icmp eq ptr %10, %0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.access_matrix, ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !1366
  %15 = add nsw i32 %14, %9
  br label %20

16:                                               ; preds = %8
  %17 = add nuw nsw i32 %9, 1
  %18 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %5, i32 noundef %17, ptr noundef nonnull %3) #30, !range !429
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %8, !llvm.loop !1367

20:                                               ; preds = %16, %2, %12
  %21 = phi i32 [ %15, %12 ], [ -1, %2 ], [ -1, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #29
  ret i32 %21
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #27

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #28

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { nofree noinline norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree noinline norecurse nosync nounwind optsize memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress noinline nounwind optsize willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind }
attributes #27 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #29 = { nounwind }
attributes #30 = { optsize }
attributes #31 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!427}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426}
!36 = !{ptr @split_constant_offset, ptr @size_int_kind, i64 375125}
!37 = !{ptr @split_constant_offset, ptr @tree_strip_nop_conversions, i64 375125}
!38 = !{ptr @split_constant_offset, ptr @automatically_generated_chrec_p, i64 375125}
!39 = !{ptr @split_constant_offset, ptr @extract_ops_from_tree, i64 362979}
!40 = !{ptr @split_constant_offset, ptr @split_constant_offset_1, i64 362979}
!41 = !{ptr @split_constant_offset, ptr @fold_convert_loc, i64 193582}
!42 = !{ptr @split_constant_offset_1, ptr @build_int_cst, i64 157199}
!43 = !{ptr @split_constant_offset_1, ptr @fold_convert_loc, i64 177145}
!44 = !{ptr @split_constant_offset_1, ptr @split_constant_offset, i64 51138}
!45 = !{ptr @split_constant_offset_1, ptr @fold_build2_stat_loc, i64 25743}
!46 = !{ptr @split_constant_offset_1, ptr @size_binop_loc, i64 25743}
!47 = !{ptr @split_constant_offset_1, ptr @handled_component_p, i64 62175}
!48 = !{ptr @split_constant_offset_1, ptr @get_inner_reference, i64 1719}
!49 = !{ptr @split_constant_offset_1, ptr @build_fold_addr_expr_loc, i64 1718}
!50 = !{ptr @split_constant_offset_1, ptr @size_int_kind, i64 1718}
!51 = !{ptr @split_constant_offset_1, ptr @int_size_in_bytes, i64 1718}
!52 = !{ptr @split_constant_offset_1, ptr @gimple_code, i64 133928}
!53 = !{ptr @split_constant_offset_1, ptr @gimple_assign_rhs1, i64 80646}
!54 = !{ptr @split_constant_offset_1, ptr @gimple_assign_rhs_code, i64 80646}
!55 = !{ptr @split_constant_offset_1, ptr @gimple_assign_rhs2, i64 80646}
!56 = !{ptr @split_constant_offset_1, ptr @split_constant_offset_1, i64 80646}
!57 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 133257}
!58 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 80647}
!59 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 80647}
!60 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 52610}
!61 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 80647}
!62 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 14409}
!63 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 147665}
!64 = !{ptr @gimple_op, ptr @gimple_ops, i64 147664}
!65 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 763259}
!66 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 763259}
!67 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!68 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 763259}
!69 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 763259}
!70 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 80647}
!71 = !{ptr @dr_analyze_innermost, ptr @loop_containing_stmt, i64 365884}
!72 = !{ptr @dr_analyze_innermost, ptr @get_inner_reference, i64 240937}
!73 = !{ptr @dr_analyze_innermost, ptr @fancy_abort, i64 1}
!74 = !{ptr @dr_analyze_innermost, ptr @build_fold_addr_expr_loc, i64 237895}
!75 = !{ptr @dr_analyze_innermost, ptr @simple_iv, i64 124947}
!76 = !{ptr @dr_analyze_innermost, ptr @size_int_kind, i64 729130}
!77 = !{ptr @dr_analyze_innermost, ptr @split_constant_offset, i64 315708}
!78 = !{ptr @dr_analyze_innermost, ptr @size_binop_loc, i64 473562}
!79 = !{ptr @dr_analyze_innermost, ptr @fold_convert_loc, i64 473562}
!80 = !{ptr @dr_analyze_innermost, ptr @canonicalize_base_object_address, i64 157854}
!81 = !{ptr @dr_analyze_innermost, ptr @highest_pow2_factor, i64 157854}
!82 = !{ptr @dr_analyze_innermost, ptr @fwrite, i64 1}
!83 = !{ptr @loop_containing_stmt, ptr @gimple_bb, i64 615923}
!84 = !{ptr @canonicalize_base_object_address, ptr @tree_strip_nop_conversions, i64 153664}
!85 = !{ptr @canonicalize_base_object_address, ptr @build_fold_addr_expr_loc, i64 60599}
!86 = !{ptr @free_data_ref, ptr @VEC_tree_heap_free, i64 23410}
!87 = !{ptr @free_data_ref, ptr @free, i64 23410}
!88 = !{ptr @VEC_tree_heap_free, ptr @free, i64 439881}
!89 = !{ptr @create_data_ref, ptr @xcalloc, i64 240937}
!90 = !{ptr @create_data_ref, ptr @dr_analyze_innermost, i64 240937}
!91 = !{ptr @create_data_ref, ptr @dr_analyze_indices, i64 240937}
!92 = !{ptr @create_data_ref, ptr @dr_analyze_alias, i64 240937}
!93 = !{ptr @dr_analyze_indices, ptr @loop_containing_stmt, i64 240937}
!94 = !{ptr @dr_analyze_indices, ptr @unshare_expr, i64 240937}
!95 = !{ptr @dr_analyze_indices, ptr @block_before_loop, i64 19557}
!96 = !{ptr @dr_analyze_indices, ptr @handled_component_p, i64 600380}
!97 = !{ptr @dr_analyze_indices, ptr @analyze_scalar_evolution, i64 23734}
!98 = !{ptr @dr_analyze_indices, ptr @instantiate_scev, i64 23734}
!99 = !{ptr @dr_analyze_indices, ptr @VEC_tree_heap_safe_push, i64 23734}
!100 = !{ptr @dr_analyze_indices, ptr @build_int_cst, i64 78188}
!101 = !{ptr @dr_analyze_indices, ptr @initial_condition, i64 16661}
!102 = !{ptr @dr_analyze_indices, ptr @split_constant_offset, i64 16661}
!103 = !{ptr @dr_analyze_indices, ptr @fold_convert_loc, i64 16661}
!104 = !{ptr @dr_analyze_indices, ptr @chrec_replace_initial_condition, i64 16661}
!105 = !{ptr @dr_analyze_alias, ptr @get_base_address, i64 240937}
!106 = !{ptr @block_before_loop, ptr @loop_preheader_edge, i64 19556}
!107 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_heap_reserve, i64 781583}
!108 = !{ptr @VEC_tree_heap_safe_push, ptr @VEC_tree_base_quick_push, i64 781583}
!109 = !{ptr @VEC_tree_heap_reserve, ptr @VEC_tree_base_space, i64 781583}
!110 = !{ptr @VEC_tree_heap_reserve, ptr @vec_heap_p_reserve, i64 439337}
!111 = !{ptr @dr_may_alias_p, ptr @disjoint_objects_p, i64 375418}
!112 = !{ptr @dr_may_alias_p, ptr @refs_output_dependent_p, i64 46110}
!113 = !{ptr @dr_may_alias_p, ptr @refs_anti_dependent_p, i64 27612}
!114 = !{ptr @dr_may_alias_p, ptr @refs_may_alias_p, i64 258814}
!115 = !{ptr @dr_may_alias_p, ptr @fancy_abort, i64 1}
!116 = !{ptr @disjoint_objects_p, ptr @get_base_address, i64 750836}
!117 = !{ptr @disjoint_objects_p, ptr @operand_equal_p, i64 671905}
!118 = !{ptr @disjoint_objects_p, ptr @handled_component_p, i64 1260244}
!119 = !{ptr @disjoint_objects_p, ptr @VEC_tree_heap_safe_push, i64 757848}
!120 = !{ptr @disjoint_objects_p, ptr @VEC_tree_base_length, i64 1009396}
!121 = !{ptr @disjoint_objects_p, ptr @VEC_tree_base_pop, i64 805372}
!122 = !{ptr @disjoint_objects_p, ptr @VEC_tree_heap_free, i64 502396}
!123 = !{ptr @estimated_loop_iterations, ptr @estimate_numbers_of_iterations_loop, i64 13295}
!124 = !{ptr @estimated_loop_iterations_int, ptr @estimated_loop_iterations, i64 7151}
!125 = !{ptr @estimated_loop_iterations_int, ptr @double_int_fits_in_shwi_p, i64 532}
!126 = !{ptr @estimated_loop_iterations_int, ptr @double_int_to_shwi, i64 531}
!127 = !{ptr @compute_all_dependences, ptr @VEC_data_reference_p_base_iterate, i64 1178074}
!128 = !{ptr @compute_all_dependences, ptr @initialize_data_dependence_relation, i64 375416}
!129 = !{ptr @compute_all_dependences, ptr @VEC_ddr_p_heap_safe_push, i64 375416}
!130 = !{ptr @compute_all_dependences, ptr @VEC_loop_p_base_index, i64 25591}
!131 = !{ptr @compute_all_dependences, ptr @compute_affine_dependence, i64 25591}
!132 = !{ptr @compute_all_dependences, ptr @compute_self_dependence, i64 198746}
!133 = !{ptr @initialize_data_dependence_relation, ptr @xmalloc, i64 381653}
!134 = !{ptr @initialize_data_dependence_relation, ptr @dr_may_alias_p, i64 375416}
!135 = !{ptr @initialize_data_dependence_relation, ptr @operand_equal_p, i64 285553}
!136 = !{ptr @initialize_data_dependence_relation, ptr @VEC_tree_base_length, i64 220872}
!137 = !{ptr @initialize_data_dependence_relation, ptr @VEC_subscript_p_heap_alloc, i64 208096}
!138 = !{ptr @initialize_data_dependence_relation, ptr @compute_self_dependence, i64 204631}
!139 = !{ptr @initialize_data_dependence_relation, ptr @VEC_loop_p_base_index, i64 2109}
!140 = !{ptr @initialize_data_dependence_relation, ptr @object_address_invariant_in_loop_p, i64 2109}
!141 = !{ptr @initialize_data_dependence_relation, ptr @fancy_abort, i64 1}
!142 = !{ptr @initialize_data_dependence_relation, ptr @conflict_fn_not_known, i64 4762}
!143 = !{ptr @initialize_data_dependence_relation, ptr @VEC_subscript_p_heap_safe_push, i64 2381}
!144 = !{ptr @VEC_ddr_p_heap_safe_push, ptr @VEC_ddr_p_heap_reserve, i64 379272}
!145 = !{ptr @VEC_ddr_p_heap_safe_push, ptr @VEC_ddr_p_base_quick_push, i64 379272}
!146 = !{ptr @compute_affine_dependence, ptr @access_functions_are_affine_or_constant_p, i64 2949}
!147 = !{ptr @compute_affine_dependence, ptr @subscript_dependence_tester, i64 679}
!148 = !{ptr @compute_affine_dependence, ptr @finalize_ddr_dependent, i64 1431}
!149 = !{ptr @compute_self_dependence, ptr @VEC_subscript_p_base_iterate, i64 403377}
!150 = !{ptr @compute_self_dependence, ptr @free_conflict_function, i64 2}
!151 = !{ptr @compute_self_dependence, ptr @affine_fn_cst, i64 2}
!152 = !{ptr @compute_self_dependence, ptr @conflict_fn, i64 2}
!153 = !{ptr @compute_self_dependence, ptr @VEC_loop_p_base_length, i64 806752}
!154 = !{ptr @compute_self_dependence, ptr @lambda_vector_new, i64 806752}
!155 = !{ptr @compute_self_dependence, ptr @save_dist_v, i64 403376}
!156 = !{ptr @compute_self_dependence, ptr @save_dir_v, i64 403376}
!157 = !{ptr @VEC_subscript_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 208098}
!158 = !{ptr @object_address_invariant_in_loop_p, ptr @handled_component_p, i64 4769}
!159 = !{ptr @object_address_invariant_in_loop_p, ptr @chrec_contains_symbols_defined_in_loop, i64 4926}
!160 = !{ptr @conflict_fn_not_known, ptr @xcalloc, i64 4766}
!161 = !{ptr @VEC_subscript_p_heap_safe_push, ptr @VEC_subscript_p_heap_reserve, i64 2381}
!162 = !{ptr @VEC_subscript_p_heap_safe_push, ptr @VEC_subscript_p_base_quick_push, i64 2381}
!163 = !{ptr @VEC_subscript_p_heap_reserve, ptr @VEC_subscript_p_base_space, i64 2381}
!164 = !{ptr @VEC_subscript_p_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!165 = !{ptr @VEC_ddr_p_heap_reserve, ptr @VEC_ddr_p_base_space, i64 379272}
!166 = !{ptr @VEC_ddr_p_heap_reserve, ptr @vec_heap_p_reserve, i64 142510}
!167 = !{ptr @access_functions_are_affine_or_constant_p, ptr @VEC_tree_base_iterate, i64 5311}
!168 = !{ptr @access_functions_are_affine_or_constant_p, ptr @evolution_function_is_invariant_p, i64 4209}
!169 = !{ptr @access_functions_are_affine_or_constant_p, ptr @evolution_function_is_affine_multivariate_p, i64 3807}
!170 = !{ptr @subscript_dependence_tester, ptr @subscript_dependence_tester_1, i64 679}
!171 = !{ptr @subscript_dependence_tester, ptr @compute_subscript_distance, i64 679}
!172 = !{ptr @subscript_dependence_tester, ptr @build_classic_dist_vector, i64 679}
!173 = !{ptr @subscript_dependence_tester, ptr @build_classic_dir_vector, i64 153}
!174 = !{ptr @finalize_ddr_dependent, ptr @free_subscripts, i64 1957}
!175 = !{ptr @subscript_dependence_tester_1, ptr @VEC_subscript_p_base_iterate, i64 942}
!176 = !{ptr @subscript_dependence_tester_1, ptr @VEC_tree_base_index, i64 1760}
!177 = !{ptr @subscript_dependence_tester_1, ptr @analyze_overlapping_iterations, i64 880}
!178 = !{ptr @subscript_dependence_tester_1, ptr @finalize_ddr_dependent, i64 642}
!179 = !{ptr @subscript_dependence_tester_1, ptr @free_conflict_function, i64 1758}
!180 = !{ptr @compute_subscript_distance, ptr @VEC_subscript_p_base_length, i64 372}
!181 = !{ptr @compute_subscript_distance, ptr @VEC_subscript_p_base_index, i64 197}
!182 = !{ptr @compute_subscript_distance, ptr @common_affine_function, i64 394}
!183 = !{ptr @compute_subscript_distance, ptr @affine_fn_minus, i64 195}
!184 = !{ptr @compute_subscript_distance, ptr @affine_function_constant_p, i64 195}
!185 = !{ptr @compute_subscript_distance, ptr @affine_function_base, i64 194}
!186 = !{ptr @compute_subscript_distance, ptr @affine_fn_free, i64 195}
!187 = !{ptr @build_classic_dist_vector, ptr @VEC_loop_p_base_length, i64 1193}
!188 = !{ptr @build_classic_dist_vector, ptr @same_access_functions, i64 153}
!189 = !{ptr @build_classic_dist_vector, ptr @lambda_vector_new, i64 267}
!190 = !{ptr @build_classic_dist_vector, ptr @save_dist_v, i64 148}
!191 = !{ptr @build_classic_dist_vector, ptr @constant_access_functions, i64 38}
!192 = !{ptr @build_classic_dist_vector, ptr @add_distance_for_zero_overlaps, i64 1}
!193 = !{ptr @build_classic_dist_vector, ptr @add_other_self_distances, i64 1}
!194 = !{ptr @build_classic_dist_vector, ptr @build_classic_dist_vector_1, i64 140}
!195 = !{ptr @build_classic_dist_vector, ptr @lambda_vector_lexico_pos, i64 113}
!196 = !{ptr @build_classic_dist_vector, ptr @subscript_dependence_tester_1, i64 26}
!197 = !{ptr @build_classic_dist_vector, ptr @compute_subscript_distance, i64 25}
!198 = !{ptr @build_classic_dist_vector, ptr @add_outer_distances, i64 3}
!199 = !{ptr @build_classic_dist_vector, ptr @lambda_vector_copy, i64 88}
!200 = !{ptr @build_classic_dist_vector, ptr @lambda_vector_first_nz, i64 1}
!201 = !{ptr @build_classic_dist_vector, ptr @fwrite, i64 20}
!202 = !{ptr @build_classic_dist_vector, ptr @VEC_lambda_vector_base_index, i64 10}
!203 = !{ptr @build_classic_dist_vector, ptr @print_lambda_vector, i64 10}
!204 = !{ptr @build_classic_dist_vector, ptr @VEC_lambda_vector_base_length, i64 10}
!205 = !{ptr @build_classic_dir_vector, ptr @VEC_lambda_vector_base_iterate, i64 304}
!206 = !{ptr @build_classic_dir_vector, ptr @VEC_loop_p_base_length, i64 456}
!207 = !{ptr @build_classic_dir_vector, ptr @lambda_vector_new, i64 152}
!208 = !{ptr @build_classic_dir_vector, ptr @dir_from_dist, i64 152}
!209 = !{ptr @build_classic_dir_vector, ptr @save_dir_v, i64 152}
!210 = !{ptr @analyze_overlapping_iterations, ptr @chrec_contains_undetermined, i64 1443}
!211 = !{ptr @analyze_overlapping_iterations, ptr @conflict_fn_not_known, i64 12}
!212 = !{ptr @analyze_overlapping_iterations, ptr @eq_evolutions_p, i64 720}
!213 = !{ptr @analyze_overlapping_iterations, ptr @evolution_function_is_affine_multivariate_p, i64 109}
!214 = !{ptr @analyze_overlapping_iterations, ptr @affine_fn_cst, i64 74}
!215 = !{ptr @analyze_overlapping_iterations, ptr @conflict_fn, i64 74}
!216 = !{ptr @analyze_overlapping_iterations, ptr @chrec_contains_symbols, i64 1341}
!217 = !{ptr @analyze_overlapping_iterations, ptr @ziv_subscript_p, i64 681}
!218 = !{ptr @analyze_overlapping_iterations, ptr @analyze_ziv_subscript, i64 68}
!219 = !{ptr @analyze_overlapping_iterations, ptr @siv_subscript_p, i64 613}
!220 = !{ptr @analyze_overlapping_iterations, ptr @analyze_siv_subscript, i64 612}
!221 = !{ptr @analyze_overlapping_iterations, ptr @analyze_miv_subscript, i64 1}
!222 = !{ptr @free_conflict_function, ptr @affine_fn_free, i64 396}
!223 = !{ptr @free_conflict_function, ptr @free, i64 6210}
!224 = !{ptr @conflict_fn, ptr @xcalloc, i64 394}
!225 = !{ptr @affine_fn_cst, ptr @VEC_tree_heap_alloc, i64 114}
!226 = !{ptr @affine_fn_cst, ptr @VEC_tree_base_quick_push, i64 114}
!227 = !{ptr @ziv_subscript_p, ptr @evolution_function_is_constant_p, i64 756}
!228 = !{ptr @analyze_ziv_subscript, ptr @signed_type_for_types, i64 68}
!229 = !{ptr @analyze_ziv_subscript, ptr @chrec_convert, i64 136}
!230 = !{ptr @analyze_ziv_subscript, ptr @chrec_fold_minus, i64 68}
!231 = !{ptr @analyze_ziv_subscript, ptr @integer_zerop, i64 67}
!232 = !{ptr @analyze_ziv_subscript, ptr @affine_fn_cst, i64 40}
!233 = !{ptr @analyze_ziv_subscript, ptr @conflict_fn, i64 40}
!234 = !{ptr @analyze_ziv_subscript, ptr @conflict_fn_no_dependence, i64 94}
!235 = !{ptr @analyze_ziv_subscript, ptr @conflict_fn_not_known, i64 2}
!236 = !{ptr @siv_subscript_p, ptr @evolution_function_is_constant_p, i64 1237}
!237 = !{ptr @siv_subscript_p, ptr @evolution_function_is_univariate_p, i64 1237}
!238 = !{ptr @analyze_siv_subscript, ptr @evolution_function_is_constant_p, i64 1236}
!239 = !{ptr @analyze_siv_subscript, ptr @evolution_function_is_affine_in_loop, i64 1852}
!240 = !{ptr @analyze_siv_subscript, ptr @analyze_siv_subscript_cst_affine, i64 2}
!241 = !{ptr @analyze_siv_subscript, ptr @chrec_contains_symbols, i64 1206}
!242 = !{ptr @analyze_siv_subscript, ptr @analyze_subscript_affine_affine, i64 613}
!243 = !{ptr @analyze_siv_subscript, ptr @can_use_analyze_subscript_affine_affine, i64 26}
!244 = !{ptr @analyze_siv_subscript, ptr @fwrite, i64 1}
!245 = !{ptr @analyze_siv_subscript, ptr @conflict_fn_not_known, i64 10}
!246 = !{ptr @VEC_tree_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 591}
!247 = !{ptr @signed_type_for_types, ptr @signed_type_for, i64 405}
!248 = !{ptr @conflict_fn_no_dependence, ptr @xcalloc, i64 1050}
!249 = !{ptr @evolution_function_is_affine_in_loop, ptr @evolution_function_is_invariant_p, i64 3709}
!250 = !{ptr @analyze_subscript_affine_affine, ptr @eq_evolutions_p, i64 617}
!251 = !{ptr @analyze_subscript_affine_affine, ptr @affine_fn_cst, i64 2}
!252 = !{ptr @analyze_subscript_affine_affine, ptr @conflict_fn, i64 266}
!253 = !{ptr @analyze_subscript_affine_affine, ptr @nb_vars_in_chrec, i64 1232}
!254 = !{ptr @analyze_subscript_affine_affine, ptr @lambda_matrix_new, i64 1848}
!255 = !{ptr @analyze_subscript_affine_affine, ptr @initialize_matrix_A, i64 1232}
!256 = !{ptr @analyze_subscript_affine_affine, ptr @int_cst_value, i64 1232}
!257 = !{ptr @analyze_subscript_affine_affine, ptr @lambda_matrix_right_hermite, i64 615}
!258 = !{ptr @analyze_subscript_affine_affine, ptr @lambda_matrix_row_negate, i64 587}
!259 = !{ptr @analyze_subscript_affine_affine, ptr @conflict_fn_not_known, i64 14}
!260 = !{ptr @analyze_subscript_affine_affine, ptr @int_divides_p, i64 614}
!261 = !{ptr @analyze_subscript_affine_affine, ptr @conflict_fn_no_dependence, i64 954}
!262 = !{ptr @analyze_subscript_affine_affine, ptr @get_chrec_loop, i64 274}
!263 = !{ptr @analyze_subscript_affine_affine, ptr @estimated_loop_iterations_int, i64 274}
!264 = !{ptr @analyze_subscript_affine_affine, ptr @build_int_cst, i64 610}
!265 = !{ptr @analyze_subscript_affine_affine, ptr @affine_fn_univar, i64 264}
!266 = !{ptr @analyze_subscript_affine_affine, ptr @fwrite, i64 3}
!267 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @chrec_contains_symbols, i64 47}
!268 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @chrec_type, i64 22}
!269 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @chrec_convert, i64 42}
!270 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @chrec_fold_minus, i64 22}
!271 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @evolution_function_is_constant_p, i64 22}
!272 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @build_polynomial_chrec, i64 40}
!273 = !{ptr @can_use_analyze_subscript_affine_affine, ptr @build_int_cst, i64 20}
!274 = !{ptr @get_chrec_loop, ptr @get_loop, i64 288}
!275 = !{ptr @get_loop, ptr @VEC_loop_p_base_index, i64 288}
!276 = !{ptr @initialize_matrix_A, ptr @fancy_abort, i64 6}
!277 = !{ptr @initialize_matrix_A, ptr @int_cst_value, i64 2456}
!278 = !{ptr @initialize_matrix_A, ptr @initialize_matrix_A, i64 16}
!279 = !{ptr @initialize_matrix_A, ptr @chrec_type, i64 10}
!280 = !{ptr @initialize_matrix_A, ptr @chrec_fold_op, i64 8}
!281 = !{ptr @initialize_matrix_A, ptr @chrec_convert, i64 2}
!282 = !{ptr @initialize_matrix_A, ptr @build_int_cst, i64 2}
!283 = !{ptr @affine_fn_univar, ptr @VEC_tree_heap_alloc, i64 280}
!284 = !{ptr @affine_fn_univar, ptr @VEC_tree_base_quick_push, i64 561}
!285 = !{ptr @chrec_type, ptr @automatically_generated_chrec_p, i64 24}
!286 = !{ptr @affine_fn_free, ptr @VEC_tree_heap_free, i64 591}
!287 = !{ptr @affine_fn_op, ptr @VEC_tree_base_length, i64 394}
!288 = !{ptr @affine_fn_op, ptr @VEC_tree_heap_alloc, i64 197}
!289 = !{ptr @affine_fn_op, ptr @VEC_tree_base_iterate, i64 396}
!290 = !{ptr @affine_fn_op, ptr @VEC_tree_base_index, i64 1344}
!291 = !{ptr @affine_fn_op, ptr @signed_type_for_types, i64 336}
!292 = !{ptr @affine_fn_op, ptr @fold_build2_stat_loc, i64 338}
!293 = !{ptr @affine_fn_op, ptr @VEC_tree_base_quick_push, i64 338}
!294 = !{ptr @affine_fn_op, ptr @signed_type_for, i64 2}
!295 = !{ptr @build_polynomial_chrec, ptr @no_evolution_in_loop_p, i64 42}
!296 = !{ptr @build_polynomial_chrec, ptr @fancy_abort, i64 4}
!297 = !{ptr @build_polynomial_chrec, ptr @chrec_zerop, i64 40}
!298 = !{ptr @build_polynomial_chrec, ptr @build_int_cst, i64 39}
!299 = !{ptr @build_polynomial_chrec, ptr @build3_stat, i64 39}
!300 = !{ptr @no_evolution_in_loop_p, ptr @chrec_contains_symbols_defined_in_loop, i64 42}
!301 = !{ptr @no_evolution_in_loop_p, ptr @tree_strip_nop_conversions, i64 41}
!302 = !{ptr @no_evolution_in_loop_p, ptr @hide_evolution_in_other_loops_than_loop, i64 41}
!303 = !{ptr @no_evolution_in_loop_p, ptr @tree_is_chrec, i64 41}
!304 = !{ptr @chrec_zerop, ptr @integer_zerop, i64 42}
!305 = !{ptr @tree_is_chrec, ptr @automatically_generated_chrec_p, i64 43}
!306 = !{ptr @common_affine_function, ptr @affine_function_equal_p, i64 1}
!307 = !{ptr @affine_fn_minus, ptr @affine_fn_op, i64 197}
!308 = !{ptr @affine_function_constant_p, ptr @VEC_tree_base_iterate, i64 336}
!309 = !{ptr @affine_function_constant_p, ptr @integer_zerop, i64 140}
!310 = !{ptr @affine_function_base, ptr @VEC_tree_base_index, i64 197}
!311 = !{ptr @same_access_functions, ptr @VEC_subscript_p_base_length, i64 198}
!312 = !{ptr @same_access_functions, ptr @VEC_tree_base_index, i64 370}
!313 = !{ptr @same_access_functions, ptr @eq_evolutions_p, i64 185}
!314 = !{ptr @lambda_vector_new, ptr @ggc_alloc_cleared_stat, i64 807313}
!315 = !{ptr @save_dist_v, ptr @VEC_lambda_vector_base_iterate, i64 403531}
!316 = !{ptr @save_dist_v, ptr @VEC_loop_p_base_length, i64 391625}
!317 = !{ptr @save_dist_v, ptr @lambda_vector_equal, i64 391625}
!318 = !{ptr @save_dist_v, ptr @VEC_lambda_vector_heap_safe_push, i64 11906}
!319 = !{ptr @constant_access_functions, ptr @VEC_subscript_p_base_length, i64 37}
!320 = !{ptr @constant_access_functions, ptr @VEC_tree_base_index, i64 39}
!321 = !{ptr @constant_access_functions, ptr @evolution_function_is_constant_p, i64 39}
!322 = !{ptr @build_classic_dist_vector_1, ptr @VEC_loop_p_base_length, i64 140}
!323 = !{ptr @build_classic_dist_vector_1, ptr @lambda_vector_new, i64 140}
!324 = !{ptr @build_classic_dist_vector_1, ptr @VEC_subscript_p_base_length, i64 296}
!325 = !{ptr @build_classic_dist_vector_1, ptr @VEC_subscript_p_base_index, i64 159}
!326 = !{ptr @build_classic_dist_vector_1, ptr @chrec_contains_undetermined, i64 296}
!327 = !{ptr @build_classic_dist_vector_1, ptr @non_affine_dependence_relation, i64 3}
!328 = !{ptr @build_classic_dist_vector_1, ptr @VEC_tree_base_index, i64 316}
!329 = !{ptr @build_classic_dist_vector_1, ptr @index_in_loop_nest, i64 274}
!330 = !{ptr @build_classic_dist_vector_1, ptr @int_cst_value, i64 136}
!331 = !{ptr @build_classic_dist_vector_1, ptr @operand_equal_p, i64 22}
!332 = !{ptr @VEC_lambda_vector_heap_safe_push, ptr @VEC_lambda_vector_heap_reserve, i64 409570}
!333 = !{ptr @VEC_lambda_vector_heap_safe_push, ptr @VEC_lambda_vector_base_quick_push, i64 409570}
!334 = !{ptr @VEC_lambda_vector_heap_reserve, ptr @VEC_lambda_vector_base_space, i64 409570}
!335 = !{ptr @VEC_lambda_vector_heap_reserve, ptr @vec_heap_p_reserve, i64 409569}
!336 = !{ptr @index_in_loop_nest, ptr @VEC_loop_p_base_iterate, i64 281}
!337 = !{ptr @save_dir_v, ptr @VEC_lambda_vector_base_iterate, i64 403531}
!338 = !{ptr @save_dir_v, ptr @VEC_loop_p_base_length, i64 391625}
!339 = !{ptr @save_dir_v, ptr @lambda_vector_equal, i64 391625}
!340 = !{ptr @save_dir_v, ptr @VEC_lambda_vector_heap_safe_push, i64 11906}
!341 = !{ptr @free_subscripts, ptr @VEC_subscript_p_base_iterate, i64 18547}
!342 = !{ptr @free_subscripts, ptr @free_conflict_function, i64 4764}
!343 = !{ptr @free_subscripts, ptr @free, i64 2382}
!344 = !{ptr @free_subscripts, ptr @VEC_subscript_p_heap_free, i64 16165}
!345 = !{ptr @VEC_subscript_p_heap_free, ptr @free, i64 16164}
!346 = !{ptr @get_references_in_stmt, ptr @gimple_code, i64 609086}
!347 = !{ptr @get_references_in_stmt, ptr @gimple_call_flags, i64 68853}
!348 = !{ptr @get_references_in_stmt, ptr @gimple_asm_volatile_p, i64 1}
!349 = !{ptr @get_references_in_stmt, ptr @gimple_vuse, i64 609086}
!350 = !{ptr @get_references_in_stmt, ptr @gimple_assign_lhs_ptr, i64 240501}
!351 = !{ptr @get_references_in_stmt, ptr @gimple_assign_rhs1_ptr, i64 240501}
!352 = !{ptr @get_references_in_stmt, ptr @get_base_address, i64 209726}
!353 = !{ptr @get_references_in_stmt, ptr @VEC_data_ref_loc_heap_safe_push, i64 241084}
!354 = !{ptr @get_references_in_stmt, ptr @gimple_call_num_args, i64 68592}
!355 = !{ptr @get_references_in_stmt, ptr @gimple_call_arg_ptr, i64 134588}
!356 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 609086}
!357 = !{ptr @gimple_assign_lhs_ptr, ptr @gimple_op_ptr, i64 240502}
!358 = !{ptr @gimple_assign_rhs1_ptr, ptr @gimple_op_ptr, i64 240502}
!359 = !{ptr @VEC_data_ref_loc_heap_safe_push, ptr @VEC_data_ref_loc_heap_reserve, i64 241086}
!360 = !{ptr @VEC_data_ref_loc_heap_safe_push, ptr @VEC_data_ref_loc_base_quick_push, i64 241086}
!361 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 68592}
!362 = !{ptr @gimple_call_arg_ptr, ptr @gimple_op_ptr, i64 134590}
!363 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 609086}
!364 = !{ptr @gimple_op_ptr, ptr @gimple_has_ops, i64 615594}
!365 = !{ptr @gimple_op_ptr, ptr @gimple_ops, i64 615593}
!366 = !{ptr @VEC_data_ref_loc_heap_reserve, ptr @VEC_data_ref_loc_base_space, i64 241086}
!367 = !{ptr @VEC_data_ref_loc_heap_reserve, ptr @vec_heap_o_reserve, i64 240650}
!368 = !{ptr @find_data_references_in_stmt, ptr @get_references_in_stmt, i64 609086}
!369 = !{ptr @find_data_references_in_stmt, ptr @VEC_data_ref_loc_base_iterate, i64 785817}
!370 = !{ptr @find_data_references_in_stmt, ptr @create_data_ref, i64 241585}
!371 = !{ptr @find_data_references_in_stmt, ptr @fancy_abort, i64 1}
!372 = !{ptr @find_data_references_in_stmt, ptr @dr_address_invariant_p, i64 241585}
!373 = !{ptr @find_data_references_in_stmt, ptr @free_data_ref, i64 1468}
!374 = !{ptr @find_data_references_in_stmt, ptr @fwrite, i64 1}
!375 = !{ptr @find_data_references_in_stmt, ptr @VEC_data_reference_p_heap_safe_push, i64 240117}
!376 = !{ptr @find_data_references_in_stmt, ptr @VEC_data_ref_loc_heap_free, i64 609086}
!377 = !{ptr @VEC_data_ref_loc_heap_free, ptr @free, i64 240651}
!378 = !{ptr @dr_address_invariant_p, ptr @VEC_tree_base_iterate, i64 245003}
!379 = !{ptr @dr_address_invariant_p, ptr @tree_contains_chrecs, i64 23628}
!380 = !{ptr @VEC_data_reference_p_heap_safe_push, ptr @VEC_data_reference_p_heap_reserve, i64 304322}
!381 = !{ptr @VEC_data_reference_p_heap_safe_push, ptr @VEC_data_reference_p_base_quick_push, i64 304322}
!382 = !{ptr @VEC_data_reference_p_heap_reserve, ptr @VEC_data_reference_p_base_space, i64 304322}
!383 = !{ptr @VEC_data_reference_p_heap_reserve, ptr @vec_heap_p_reserve, i64 184219}
!384 = !{ptr @find_data_references_in_loop, ptr @get_loop_body_in_dom_order, i64 9039}
!385 = !{ptr @find_data_references_in_loop, ptr @find_data_references_in_bb, i64 25690}
!386 = !{ptr @find_data_references_in_loop, ptr @free, i64 9039}
!387 = !{ptr @find_data_references_in_bb, ptr @gsi_start_bb, i64 281644}
!388 = !{ptr @find_data_references_in_bb, ptr @gsi_end_p, i64 874462}
!389 = !{ptr @find_data_references_in_bb, ptr @gsi_stmt, i64 663455}
!390 = !{ptr @find_data_references_in_bb, ptr @find_data_references_in_stmt, i64 663455}
!391 = !{ptr @find_data_references_in_bb, ptr @xcalloc, i64 70637}
!392 = !{ptr @find_data_references_in_bb, ptr @VEC_data_reference_p_heap_safe_push, i64 70637}
!393 = !{ptr @find_data_references_in_bb, ptr @gsi_next, i64 592818}
!394 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 281644}
!395 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 281644}
!396 = !{ptr @find_loop_nest, ptr @VEC_loop_p_heap_safe_push, i64 9039}
!397 = !{ptr @find_loop_nest, ptr @find_loop_nest_1, i64 3}
!398 = !{ptr @VEC_loop_p_heap_safe_push, ptr @VEC_loop_p_heap_reserve, i64 9041}
!399 = !{ptr @VEC_loop_p_heap_safe_push, ptr @VEC_loop_p_base_quick_push, i64 9041}
!400 = !{ptr @find_loop_nest_1, ptr @VEC_loop_p_heap_safe_push, i64 2}
!401 = !{ptr @VEC_loop_p_heap_reserve, ptr @VEC_loop_p_base_space, i64 9041}
!402 = !{ptr @VEC_loop_p_heap_reserve, ptr @vec_heap_p_reserve, i64 1}
!403 = !{ptr @compute_data_dependences_for_loop, ptr @VEC_loop_p_heap_alloc, i64 9039}
!404 = !{ptr @compute_data_dependences_for_loop, ptr @find_loop_nest, i64 9038}
!405 = !{ptr @compute_data_dependences_for_loop, ptr @find_data_references_in_loop, i64 9037}
!406 = !{ptr @compute_data_dependences_for_loop, ptr @initialize_data_dependence_relation, i64 3855}
!407 = !{ptr @compute_data_dependences_for_loop, ptr @VEC_ddr_p_heap_safe_push, i64 3855}
!408 = !{ptr @compute_data_dependences_for_loop, ptr @compute_all_dependences, i64 5184}
!409 = !{ptr @VEC_loop_p_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 9039}
!410 = !{ptr @compute_data_dependences_for_bb, ptr @find_data_references_in_bb, i64 258391}
!411 = !{ptr @compute_data_dependences_for_bb, ptr @compute_all_dependences, i64 197396}
!412 = !{ptr @free_dependence_relations, ptr @VEC_ddr_p_base_iterate, i64 51221}
!413 = !{ptr @free_dependence_relations, ptr @fancy_abort, i64 1}
!414 = !{ptr @free_dependence_relations, ptr @free_dependence_relation, i64 42060}
!415 = !{ptr @free_dependence_relations, ptr @VEC_loop_p_heap_free, i64 4907}
!416 = !{ptr @free_dependence_relations, ptr @VEC_ddr_p_heap_free, i64 9160}
!417 = !{ptr @free_data_refs, ptr @VEC_data_reference_p_base_iterate, i64 31106}
!418 = !{ptr @free_data_refs, ptr @free_data_ref, i64 21946}
!419 = !{ptr @free_data_refs, ptr @VEC_data_reference_p_heap_free, i64 9160}
!420 = !{ptr @free_dependence_relation, ptr @free_subscripts, i64 14208}
!421 = !{ptr @free_dependence_relation, ptr @VEC_lambda_vector_heap_free, i64 28416}
!422 = !{ptr @free_dependence_relation, ptr @free, i64 42064}
!423 = !{ptr @VEC_lambda_vector_heap_free, ptr @free, i64 28415}
!424 = !{ptr @VEC_loop_p_heap_free, ptr @free, i64 4906}
!425 = !{ptr @VEC_ddr_p_heap_free, ptr @free, i64 9159}
!426 = !{ptr @VEC_data_reference_p_heap_free, ptr @free, i64 9159}
!427 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!428 = !{!"function_entry_count", i64 0}
!429 = !{i32 0, i32 2}
!430 = !{!431, !431, i64 0}
!431 = !{!"any pointer", !432, i64 0}
!432 = !{!"omnipotent char", !433, i64 0}
!433 = !{!"Simple C/C++ TBAA"}
!434 = distinct !{!434, !435}
!435 = !{!"llvm.loop.mustprogress"}
!436 = !{!"function_entry_count", i64 1209183}
!437 = !{!"tree-data-ref.c:VEC_data_reference_p_base_iterate"}
!438 = !{!"branch_weights", i32 159039, i32 1050146}
!439 = !{!440, !441, i64 0}
!440 = !{!"VEC_data_reference_p_base", !441, i64 0, !441, i64 4, !432, i64 8}
!441 = !{!"int", !432, i64 0}
!442 = !{!"branch_weights", i32 596113, i32 454034}
!443 = !{!444, !431, i64 0}
!444 = !{!"data_reference", !431, i64 0, !431, i64 8, !431, i64 16, !432, i64 24, !445, i64 32, !446, i64 72, !447, i64 88, !431, i64 104}
!445 = !{!"innermost_loop_behavior", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !431, i64 32}
!446 = !{!"indices", !431, i64 0, !431, i64 8}
!447 = !{!"dr_alias", !431, i64 0, !431, i64 8}
!448 = !{!444, !431, i64 8}
!449 = !{!444, !431, i64 72}
!450 = !{!444, !431, i64 80}
!451 = distinct !{!451, !435}
!452 = distinct !{!452, !435}
!453 = !{!"function_entry_count", i64 51225}
!454 = !{!"tree-data-ref.c:VEC_ddr_p_base_iterate"}
!455 = !{!"branch_weights", i32 1, i32 51226}
!456 = !{!457, !441, i64 0}
!457 = !{!"VEC_ddr_p_base", !441, i64 0, !441, i64 4, !432, i64 8}
!458 = !{!"branch_weights", i32 42066, i32 9161}
!459 = !{!460, !431, i64 16}
!460 = !{!"data_dependence_relation", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !431, i64 32, !431, i64 40, !431, i64 48, !441, i64 56, !432, i64 60, !432, i64 61, !432, i64 62}
!461 = !{!460, !431, i64 0}
!462 = !{!460, !431, i64 8}
!463 = !{!460, !431, i64 24}
!464 = distinct !{!464, !435}
!465 = !{!460, !441, i64 56}
!466 = !{!460, !431, i64 32}
!467 = !{!468, !441, i64 0}
!468 = !{!"loop", !441, i64 0, !441, i64 4, !431, i64 8, !431, i64 16, !469, i64 24, !441, i64 32, !441, i64 36, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64, !431, i64 72, !470, i64 80, !470, i64 96, !432, i64 112, !432, i64 113, !441, i64 116, !431, i64 120, !431, i64 128, !432, i64 136, !431, i64 144}
!469 = !{!"lpt_decision", !441, i64 0, !441, i64 4}
!470 = !{!"", !471, i64 0, !471, i64 8}
!471 = !{!"long", !432, i64 0}
!472 = distinct !{!472, !435}
!473 = !{!460, !431, i64 48}
!474 = !{!460, !431, i64 40}
!475 = distinct !{!475, !435}
!476 = distinct !{!476, !435}
!477 = !{!"function_entry_count", i64 1156937}
!478 = !{!"tree-data-ref.c:VEC_tree_base_length"}
!479 = !{!"branch_weights", i32 237213, i32 919726}
!480 = !{!481, !441, i64 0}
!481 = !{!"VEC_tree_base", !441, i64 0, !441, i64 4, !432, i64 8}
!482 = !{!"function_entry_count", i64 3654}
!483 = !{!"tree-data-ref.c:VEC_tree_base_index"}
!484 = !{!485, !431, i64 0}
!485 = !{!"subscript", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24}
!486 = !{!487, !441, i64 0}
!487 = !{!"", !441, i64 0, !432, i64 8}
!488 = !{!485, !431, i64 16}
!489 = !{!485, !431, i64 8}
!490 = !{!485, !431, i64 24}
!491 = !{!"tree-data-ref.c:dump_conflict_function"}
!492 = distinct !{!492, !435}
!493 = !{!"tree-data-ref.c:dump_affine_function"}
!494 = distinct !{!494, !435}
!495 = !{!"function_entry_count", i64 250206}
!496 = !{!"tree-data-ref.c:VEC_tree_base_iterate"}
!497 = !{!"branch_weights", i32 221899, i32 28309}
!498 = !{!"branch_weights", i32 25253, i32 3057}
!499 = !{!441, !441, i64 0}
!500 = distinct !{!500, !435}
!501 = distinct !{!501, !435}
!502 = !{!"function_entry_count", i64 807362}
!503 = !{!"tree-data-ref.c:VEC_lambda_vector_base_iterate"}
!504 = !{!"branch_weights", i32 409571, i32 397793}
!505 = !{!506, !441, i64 0}
!506 = !{!"VEC_lambda_vector_base", !441, i64 0, !441, i64 4, !432, i64 8}
!507 = !{!"branch_weights", i32 397641, i32 153}
!508 = distinct !{!508, !435}
!509 = !{!"tree-data-ref.c:print_lambda_vector"}
!510 = distinct !{!510, !435}
!511 = !{!"function_entry_count", i64 900}
!512 = !{!"tree-data-ref.c:VEC_subscript_p_base_length"}
!513 = !{!"branch_weights", i32 1, i32 901}
!514 = !{!515, !441, i64 0}
!515 = !{!"VEC_subscript_p_base", !441, i64 0, !441, i64 4, !432, i64 8}
!516 = !{!"function_entry_count", i64 357}
!517 = !{!"tree-data-ref.c:VEC_subscript_p_base_index"}
!518 = !{!"function_entry_count", i64 280}
!519 = !{!"tree-data-ref.c:VEC_loop_p_base_iterate"}
!520 = !{!"branch_weights", i32 1, i32 281}
!521 = !{!522, !441, i64 0}
!522 = !{!"VEC_loop_p_base", !441, i64 0, !441, i64 4, !432, i64 8}
!523 = !{!"branch_weights", i32 281, i32 1}
!524 = !{!"tree-data-ref.c:VEC_lambda_vector_base_length"}
!525 = !{!"tree-data-ref.c:VEC_lambda_vector_base_index"}
!526 = !{!"function_entry_count", i64 1206141}
!527 = !{!"tree-data-ref.c:VEC_loop_p_base_length"}
!528 = !{!"branch_weights", i32 1125647, i32 80496}
!529 = !{!460, !432, i64 61}
!530 = distinct !{!530, !435}
!531 = distinct !{!531, !435}
!532 = distinct !{!532, !435}
!533 = distinct !{!533, !435}
!534 = !{!"function_entry_count", i64 375125}
!535 = !{!432, !432, i64 0}
!536 = !{i8 0, i8 2}
!537 = !{!"branch_weights", i32 362981, i32 12146}
!538 = !{!"branch_weights", i32 169398, i32 193584}
!539 = !{!"function_entry_count", i64 375193}
!540 = !{!"tree-data-ref.c:automatically_generated_chrec_p"}
!541 = !{!"branch_weights", i32 12146, i32 363049}
!542 = !{!"function_entry_count", i64 443627}
!543 = !{!"tree-data-ref.c:split_constant_offset_1"}
!544 = !{!"branch_weights", i32 50963, i32 157203, i32 9095, i32 7139, i32 221, i32 9285, i32 62176, i32 133931, i32 13436, i32 188}
!545 = !{!"branch_weights", i32 9269, i32 17}
!546 = !{!"branch_weights", i32 60458, i32 1719}
!547 = !{!471, !471, i64 0}
!548 = !{!"branch_weights", i32 1719, i32 1}
!549 = !{!"branch_weights", i32 1700, i32 20}
!550 = !{!"branch_weights", i32 1, i32 40, i32 1}
!551 = !{!"branch_weights", i32 2954961, i32 6695062, i32 3209373}
!552 = distinct !{!552, !435}
!553 = !{!"branch_weights", i32 1, i32 1719}
!554 = !{i32 0, i32 256}
!555 = !{!"branch_weights", i32 80648, i32 53284}
!556 = !{i32 0, i32 65536}
!557 = !{!"branch_weights", i32 541394, i32 -220343157, i32 541675, i32 279459807, i32 1624474, i32 -1270735088}
!558 = !{!"branch_weights", i32 1003875856, i32 -986640424}
!559 = !{!"branch_weights", i32 1, i32 8944}
!560 = !{!"branch_weights", i32 299341, i32 -2059808803, i32 299941, i32 899224, i32 299541, i32 447814870}
!561 = !{!"function_entry_count", i64 1927578}
!562 = !{!"tree-data-ref.c:handled_component_p"}
!563 = !{!"branch_weights", i32 805902, i32 18985, i32 854219, i32 248476, i32 1, i32 1, i32 1, i32 1}
!564 = !{!"function_entry_count", i64 4176818}
!565 = !{!"tree-data-ref.c:gimple_code"}
!566 = !{!"function_entry_count", i64 133257}
!567 = !{!"tree-data-ref.c:gimple_assign_rhs1"}
!568 = !{!"function_entry_count", i64 80647}
!569 = !{!"tree-data-ref.c:gimple_assign_rhs_code"}
!570 = !{!"branch_weights", i32 52611, i32 28038}
!571 = !{!"tree-data-ref.c:gimple_assign_rhs2"}
!572 = !{!"branch_weights", i32 14409, i32 66240}
!573 = !{!"function_entry_count", i64 147665}
!574 = !{!"tree-data-ref.c:gimple_op"}
!575 = !{!"branch_weights", i32 1, i32 147666}
!576 = !{!"function_entry_count", i64 763259}
!577 = !{!"tree-data-ref.c:gimple_has_ops"}
!578 = !{!"tree-data-ref.c:gimple_ops"}
!579 = !{!"branch_weights", i32 1, i32 763260}
!580 = !{!"tree-data-ref.c:gimple_statement_structure"}
!581 = !{!"tree-data-ref.c:gss_for_code"}
!582 = !{!"tree-data-ref.c:gimple_expr_code"}
!583 = !{!"branch_weights", i32 1, i32 322592, i32 2, i32 1}
!584 = !{!"tree-data-ref.c:get_gimple_rhs_class"}
!585 = !{!"function_entry_count", i64 149239}
!586 = !{!"tree-data-ref.c:gimple_num_ops"}
!587 = !{!"function_entry_count", i64 240937}
!588 = !{!"branch_weights", i32 1, i32 240938}
!589 = !{!"branch_weights", i32 240938, i32 1}
!590 = !{!"branch_weights", i32 237897, i32 3042}
!591 = !{!"branch_weights", i32 3042, i32 1}
!592 = !{!"branch_weights", i32 118221, i32 119677}
!593 = !{!"branch_weights", i32 77616, i32 42062}
!594 = !{!"branch_weights", i32 77616, i32 1}
!595 = !{!596, !431, i64 0}
!596 = !{!"", !431, i64 0, !431, i64 8, !432, i64 16}
!597 = !{!596, !431, i64 8}
!598 = !{!596, !432, i64 16}
!599 = !{!"branch_weights", i32 140195, i32 20088}
!600 = !{!"branch_weights", i32 6618, i32 7757}
!601 = !{!"branch_weights", i32 6618, i32 1}
!602 = !{!444, !431, i64 32}
!603 = !{!444, !431, i64 40}
!604 = !{!444, !431, i64 48}
!605 = !{!444, !431, i64 56}
!606 = !{!444, !431, i64 64}
!607 = !{!"branch_weights", i32 153665, i32 1}
!608 = !{!"function_entry_count", i64 615923}
!609 = !{!"tree-data-ref.c:loop_containing_stmt"}
!610 = !{!"branch_weights", i32 1, i32 615924}
!611 = !{!612, !431, i64 24}
!612 = !{!"basic_block_def", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !432, i64 32, !431, i64 48, !431, i64 56, !432, i64 64, !471, i64 72, !441, i64 80, !441, i64 84, !441, i64 88, !441, i64 92, !441, i64 96}
!613 = !{!"function_entry_count", i64 153664}
!614 = !{!"tree-data-ref.c:canonicalize_base_object_address"}
!615 = !{!"branch_weights", i32 1, i32 307330, i32 1}
!616 = !{!"branch_weights", i32 60600, i32 93066}
!617 = !{!"tree-data-ref.c:gimple_bb"}
!618 = !{!"function_entry_count", i64 23410}
!619 = !{!"function_entry_count", i64 526399}
!620 = !{!"tree-data-ref.c:VEC_tree_heap_free"}
!621 = !{!"branch_weights", i32 86518, i32 439883}
!622 = !{!444, !432, i64 24}
!623 = !{!"tree-data-ref.c:dr_analyze_indices"}
!624 = !{!"branch_weights", i32 221382, i32 19557}
!625 = !{!"branch_weights", i32 1, i32 240937}
!626 = !{!"branch_weights", i32 78189, i32 281256}
!627 = !{!"branch_weights", i32 71117, i32 7073}
!628 = !{!"branch_weights", i32 240937, i32 118507}
!629 = distinct !{!629, !435}
!630 = !{!"branch_weights", i32 -2106986229, i32 380290231}
!631 = !{!"tree-data-ref.c:dr_analyze_alias"}
!632 = !{!"branch_weights", i32 -1388058823, i32 1096610507}
!633 = !{!"branch_weights", i32 174916, i32 26}
!634 = !{!444, !431, i64 88}
!635 = !{!"function_entry_count", i64 19556}
!636 = !{!"tree-data-ref.c:block_before_loop"}
!637 = !{!"branch_weights", i32 1, i32 19557}
!638 = !{!639, !431, i64 8}
!639 = !{!"function", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !431, i64 32, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64, !431, i64 72, !431, i64 80, !431, i64 88, !431, i64 96, !441, i64 104, !441, i64 108, !441, i64 112, !441, i64 116, !441, i64 120, !441, i64 124, !431, i64 128, !441, i64 136, !441, i64 137, !441, i64 138, !441, i64 138, !441, i64 138, !441, i64 138, !441, i64 138, !441, i64 138, !441, i64 138, !441, i64 139, !441, i64 139, !441, i64 139, !441, i64 139, !441, i64 139, !441, i64 139, !441, i64 139}
!640 = !{!"function_entry_count", i64 781583}
!641 = !{!"tree-data-ref.c:VEC_tree_heap_safe_push"}
!642 = !{!"tree-data-ref.c:VEC_tree_heap_reserve"}
!643 = !{!"branch_weights", i32 439338, i32 342247}
!644 = !{!"function_entry_count", i64 782594}
!645 = !{!"tree-data-ref.c:VEC_tree_base_quick_push"}
!646 = !{!"tree-data-ref.c:VEC_tree_base_space"}
!647 = !{!"branch_weights", i32 439292, i32 342293}
!648 = !{!481, !441, i64 4}
!649 = !{!"function_entry_count", i64 375418}
!650 = !{!"branch_weights", i32 332537, i32 42883}
!651 = !{!"branch_weights", i32 62341, i32 270197}
!652 = !{!"branch_weights", i32 46111, i32 16231}
!653 = !{!"branch_weights", i32 4669, i32 41443}
!654 = !{!"branch_weights", i32 27612, i32 242586}
!655 = !{!"branch_weights", i32 6196, i32 21417}
!656 = !{!"branch_weights", i32 75750, i32 183067}
!657 = !{!"branch_weights", i32 -1310784283, i32 1809713986}
!658 = !{!"branch_weights", i32 53201, i32 99889}
!659 = !{!"branch_weights", i32 52454, i32 748}
!660 = !{!"branch_weights", i32 1, i32 201272, i32 1}
!661 = !{!"branch_weights", i32 96113, i32 4524}
!662 = !{!"branch_weights", i32 90179, i32 10458}
!663 = !{!"branch_weights", i32 100636, i32 1}
!664 = !{!"tree-data-ref.c:disjoint_objects_p"}
!665 = !{!"branch_weights", i32 99235, i32 276185}
!666 = !{!"branch_weights", i32 -825420121, i32 497858487}
!667 = !{!"branch_weights", i32 111768, i32 251200}
!668 = !{!"branch_weights", i32 1, i32 251199}
!669 = !{!"branch_weights", i32 251199, i32 127898}
!670 = distinct !{!670, !435}
!671 = !{!"branch_weights", i32 1, i32 208353}
!672 = !{!"branch_weights", i32 251199, i32 127558}
!673 = distinct !{!673, !435}
!674 = !{!"branch_weights", i32 144, i32 363319}
!675 = !{!"branch_weights", i32 -1318666241, i32 8192, i32 8192}
!676 = !{!"branch_weights", i32 361657, i32 1663}
!677 = !{!"branch_weights", i32 51019351, i32 686127788, i32 -1816986118}
!678 = !{!"branch_weights", i32 35304, i32 243437}
!679 = !{!"branch_weights", i32 208353, i32 155109}
!680 = !{!"function_entry_count", i64 726636}
!681 = !{!"tree-data-ref.c:VEC_tree_base_pop"}
!682 = !{!"function_entry_count", i64 13295}
!683 = !{!"branch_weights", i32 7152, i32 6145}
!684 = !{!468, !432, i64 112}
!685 = !{!"branch_weights", i32 1, i32 6145}
!686 = !{!468, !432, i64 113}
!687 = !{!"branch_weights", i32 6621, i32 532}
!688 = !{!"function_entry_count", i64 7151}
!689 = !{!"branch_weights", i32 1, i32 532}
!690 = !{!"function_entry_count", i64 202582}
!691 = !{!"branch_weights", i32 3835, i32 198748}
!692 = !{!"branch_weights", i32 198748, i32 0}
!693 = distinct !{!693, !435}
!694 = !{!"branch_weights", i32 22076, i32 176672}
!695 = !{!"branch_weights", i32 48696, i32 127977}
!696 = !{!"branch_weights", i32 -1243611685, i32 23842}
!697 = !{!"branch_weights", i32 151082, i32 25591}
!698 = !{!"branch_weights", i32 176672, i32 0}
!699 = distinct !{!699, !435}
!700 = !{!"branch_weights", i32 1, i32 202583}
!701 = distinct !{!701, !435}
!702 = !{!"function_entry_count", i64 379272}
!703 = !{!"tree-data-ref.c:initialize_data_dependence_relation"}
!704 = !{!460, !432, i64 60}
!705 = !{!"branch_weights", i32 22619054, i32 -2092788772}
!706 = !{!"branch_weights", i32 130325, i32 245095}
!707 = !{!"branch_weights", i32 40462, i32 204634}
!708 = !{!460, !432, i64 62}
!709 = !{!"branch_weights", i32 36997, i32 3466}
!710 = !{!"branch_weights", i32 1357, i32 2110}
!711 = !{!"branch_weights", i32 1, i32 2110}
!712 = !{!"branch_weights", i32 3466, i32 1}
!713 = !{!"branch_weights", i32 1084, i32 2382}
!714 = !{!"branch_weights", i32 0, i32 2382}
!715 = distinct !{!715, !435}
!716 = !{!"tree-data-ref.c:VEC_ddr_p_heap_safe_push"}
!717 = !{!"function_entry_count", i64 25590}
!718 = !{!"tree-data-ref.c:compute_affine_dependence"}
!719 = !{!"branch_weights", i32 25591, i32 1}
!720 = !{!"branch_weights", i32 3545, i32 22047}
!721 = !{!"branch_weights", i32 2110, i32 1436}
!722 = !{!723, !441, i64 0}
!723 = !{!"datadep_stats", !441, i64 0, !441, i64 4, !441, i64 8, !441, i64 12, !441, i64 16, !441, i64 20, !441, i64 24, !441, i64 28, !441, i64 32, !441, i64 36, !441, i64 40, !441, i64 44, !441, i64 48, !441, i64 52, !441, i64 56, !441, i64 60, !441, i64 64, !441, i64 68, !441, i64 72}
!724 = !{!"branch_weights", i32 1270, i32 841}
!725 = !{!"branch_weights", i32 162, i32 680}
!726 = !{!"branch_weights", i32 680, i32 1}
!727 = !{!723, !441, i64 12}
!728 = !{!"branch_weights", i32 1431, i32 1}
!729 = !{!"function_entry_count", i64 27987}
!730 = !{!"tree-data-ref.c:VEC_loop_p_base_index"}
!731 = !{!"function_entry_count", i64 403380}
!732 = !{!"tree-data-ref.c:compute_self_dependence"}
!733 = !{!"branch_weights", i32 403378, i32 4}
!734 = !{!"branch_weights", i32 403377, i32 1}
!735 = !{!"branch_weights", i32 1, i32 0}
!736 = distinct !{!736, !435}
!737 = !{!"function_entry_count", i64 208098}
!738 = !{!"tree-data-ref.c:VEC_subscript_p_heap_alloc"}
!739 = !{!"function_entry_count", i64 2109}
!740 = !{!"tree-data-ref.c:object_address_invariant_in_loop_p"}
!741 = !{!"branch_weights", i32 1, i32 2109}
!742 = !{!"branch_weights", i32 231420, i32 1339316, i32 3750600}
!743 = !{!"branch_weights", i32 671, i32 1}
!744 = !{!"branch_weights", i32 1880, i32 1}
!745 = !{!"branch_weights", i32 2109, i32 556}
!746 = distinct !{!746, !435}
!747 = !{!"branch_weights", i32 274238801, i32 63521199}
!748 = !{!"function_entry_count", i64 4766}
!749 = !{!"tree-data-ref.c:conflict_fn_not_known"}
!750 = !{!"function_entry_count", i64 2381}
!751 = !{!"tree-data-ref.c:VEC_subscript_p_heap_safe_push"}
!752 = !{!"tree-data-ref.c:VEC_subscript_p_heap_reserve"}
!753 = !{!"branch_weights", i32 1, i32 2382}
!754 = !{!"tree-data-ref.c:VEC_subscript_p_base_quick_push"}
!755 = !{!"tree-data-ref.c:VEC_subscript_p_base_space"}
!756 = !{!515, !441, i64 4}
!757 = !{!"tree-data-ref.c:VEC_ddr_p_heap_reserve"}
!758 = !{!"branch_weights", i32 142511, i32 236763}
!759 = !{!"tree-data-ref.c:VEC_ddr_p_base_quick_push"}
!760 = !{!"tree-data-ref.c:VEC_ddr_p_base_space"}
!761 = !{!"branch_weights", i32 117879, i32 261395}
!762 = !{!457, !441, i64 4}
!763 = !{!"function_entry_count", i64 2949}
!764 = !{!"tree-data-ref.c:access_functions_are_affine_or_constant_p"}
!765 = !{!"branch_weights", i32 1, i32 1519}
!766 = !{!"branch_weights", i32 2950, i32 311}
!767 = !{!"branch_weights", i32 1431, i32 1520}
!768 = !{!"branch_weights", i32 1519, i32 1741}
!769 = distinct !{!769, !435}
!770 = !{!"function_entry_count", i64 679}
!771 = !{!"tree-data-ref.c:subscript_dependence_tester"}
!772 = !{!"branch_weights", i32 528, i32 153}
!773 = !{!723, !441, i64 4}
!774 = !{!"tree-data-ref.c:init_omega_for_ddr"}
!775 = distinct !{!775, !435}
!776 = !{!"tree-data-ref.c:ddr_consistent_p"}
!777 = distinct !{!777, !435}
!778 = distinct !{!778, !435}
!779 = distinct !{!779, !435}
!780 = distinct !{!780, !435}
!781 = distinct !{!781, !435}
!782 = distinct !{!782, !435}
!783 = !{!"function_entry_count", i64 1957}
!784 = !{!"tree-data-ref.c:finalize_ddr_dependent"}
!785 = !{!"branch_weights", i32 1958, i32 1}
!786 = !{!"function_entry_count", i64 704}
!787 = !{!"tree-data-ref.c:subscript_dependence_tester_1"}
!788 = !{!"branch_weights", i32 1, i32 177}
!789 = !{!"branch_weights", i32 3, i32 723}
!790 = !{!"branch_weights", i32 1, i32 723}
!791 = !{!"branch_weights", i32 104872, i32 39204}
!792 = !{!723, !441, i64 8}
!793 = !{!"branch_weights", i32 1, i32 198}
!794 = !{!"branch_weights", i32 177, i32 548}
!795 = distinct !{!795, !435}
!796 = !{!"tree-data-ref.c:compute_subscript_distance"}
!797 = !{!"branch_weights", i32 178, i32 528}
!798 = !{!"branch_weights", i32 39204, i32 397}
!799 = !{!"branch_weights", i32 21, i32 177}
!800 = distinct !{!800, !435}
!801 = !{!"tree-data-ref.c:build_classic_dist_vector"}
!802 = !{!"branch_weights", i32 153, i32 528}
!803 = !{!"branch_weights", i32 116, i32 38}
!804 = !{!"branch_weights", i32 38, i32 1}
!805 = !{!"branch_weights", i32 1, i32 38}
!806 = !{!"branch_weights", i32 1, i32 116}
!807 = !{!"branch_weights", i32 26, i32 91}
!808 = !{!"branch_weights", i32 1, i32 26}
!809 = !{!"branch_weights", i32 1, i32 91}
!810 = !{!"branch_weights", i32 116, i32 1}
!811 = distinct !{!811, !435}
!812 = !{!"function_entry_count", i64 152}
!813 = !{!"tree-data-ref.c:build_classic_dir_vector"}
!814 = !{!"branch_weights", i32 1, i32 152}
!815 = !{i32 0, i32 3}
!816 = distinct !{!816, !435}
!817 = !{!"branch_weights", i32 152, i32 1}
!818 = distinct !{!818, !435}
!819 = !{!"function_entry_count", i64 422824}
!820 = !{!"tree-data-ref.c:VEC_subscript_p_base_iterate"}
!821 = !{!"branch_weights", i32 376701, i32 46125}
!822 = !{!"branch_weights", i32 3106, i32 43020}
!823 = !{!"function_entry_count", i64 724}
!824 = !{!"tree-data-ref.c:analyze_overlapping_iterations"}
!825 = !{!723, !441, i64 16}
!826 = !{!"branch_weights", i32 725, i32 1}
!827 = !{!"branch_weights", i32 1451, i32 525625}
!828 = !{!723, !441, i64 20}
!829 = !{!"branch_weights", i32 668, i32 58}
!830 = !{!"branch_weights", i32 21, i32 38}
!831 = !{!723, !441, i64 24}
!832 = !{!"branch_weights", i32 664, i32 25}
!833 = !{!"branch_weights", i32 664, i32 1}
!834 = !{!"branch_weights", i32 1, i32 25}
!835 = !{!"branch_weights", i32 620, i32 69}
!836 = !{!"branch_weights", i32 1, i32 620}
!837 = !{!"function_entry_count", i64 6210}
!838 = !{!"tree-data-ref.c:free_conflict_function"}
!839 = !{!"branch_weights", i32 2038595, i32 5425262, i32 24602487}
!840 = !{!"branch_weights", i32 1, i32 394}
!841 = distinct !{!841, !435}
!842 = !{!"function_entry_count", i64 394}
!843 = !{!"tree-data-ref.c:conflict_fn"}
!844 = !{!"branch_weights", i32 394, i32 1}
!845 = distinct !{!845, !435}
!846 = !{!"function_entry_count", i64 114}
!847 = !{!"tree-data-ref.c:affine_fn_cst"}
!848 = !{!"function_entry_count", i64 687}
!849 = !{!"tree-data-ref.c:ziv_subscript_p"}
!850 = !{!"function_entry_count", i64 68}
!851 = !{!"tree-data-ref.c:analyze_ziv_subscript"}
!852 = !{!723, !441, i64 28}
!853 = !{!"branch_weights", i32 69, i32 1}
!854 = !{!"branch_weights", i32 49, i32 21}
!855 = !{!"function_entry_count", i64 619}
!856 = !{!"tree-data-ref.c:siv_subscript_p"}
!857 = !{!"branch_weights", i32 620, i32 1}
!858 = !{!"tree-data-ref.c:analyze_siv_subscript"}
!859 = !{!723, !441, i64 44}
!860 = !{!"branch_weights", i32 596, i32 25}
!861 = !{!"branch_weights", i32 596, i32 1}
!862 = !{!"branch_weights", i32 1, i32 596}
!863 = !{!723, !441, i64 56}
!864 = !{!"branch_weights", i32 57837, i32 14400}
!865 = !{!723, !441, i64 48}
!866 = !{!723, !441, i64 52}
!867 = !{!"branch_weights", i32 3, i32 23}
!868 = !{!"branch_weights", i32 1, i32 23}
!869 = !{!"branch_weights", i32 68, i32 484}
!870 = !{!"branch_weights", i32 3, i32 1}
!871 = !{!"tree-data-ref.c:analyze_miv_subscript"}
!872 = !{!723, !441, i64 60}
!873 = !{!"function_entry_count", i64 591}
!874 = !{!"tree-data-ref.c:VEC_tree_heap_alloc"}
!875 = !{!"function_entry_count", i64 3292}
!876 = !{!"tree-data-ref.c:evolution_function_is_constant_p"}
!877 = !{!"branch_weights", i32 1, i32 3293}
!878 = !{!"function_entry_count", i64 405}
!879 = !{!"tree-data-ref.c:signed_type_for_types"}
!880 = !{!"branch_weights", i32 1, i32 406}
!881 = !{!"function_entry_count", i64 1050}
!882 = !{!"tree-data-ref.c:conflict_fn_no_dependence"}
!883 = !{!"function_entry_count", i64 1857}
!884 = !{!"tree-data-ref.c:evolution_function_is_affine_in_loop"}
!885 = !{!"branch_weights", i32 1, i32 1858}
!886 = !{!"branch_weights", i32 1858, i32 1}
!887 = !{!"tree-data-ref.c:analyze_siv_subscript_cst_affine"}
!888 = !{!"function_entry_count", i64 617}
!889 = !{!"tree-data-ref.c:analyze_subscript_affine_affine"}
!890 = !{!"branch_weights", i32 618, i32 1}
!891 = !{!"branch_weights", i32 1, i32 618}
!892 = !{!"branch_weights", i32 591, i32 28}
!893 = !{!"branch_weights", i32 474, i32 145}
!894 = !{!"branch_weights", i32 21025, i32 291}
!895 = !{!"branch_weights", i32 120, i32 26}
!896 = !{!"branch_weights", i32 120, i32 1}
!897 = !{!"branch_weights", i32 2146826324, i32 657324}
!898 = !{!"branch_weights", i32 26, i32 1}
!899 = !{!"branch_weights", i32 1, i32 145}
!900 = !{!"branch_weights", i32 2127296838, i32 20186810}
!901 = !{!"branch_weights", i32 93, i32 53}
!902 = !{!"branch_weights", i32 7921, i32 539}
!903 = !{!"function_entry_count", i64 24}
!904 = !{!"tree-data-ref.c:can_use_analyze_subscript_affine_affine"}
!905 = !{!"branch_weights", i32 25, i32 1}
!906 = !{!"branch_weights", i32 23, i32 1}
!907 = !{!"tree-data-ref.c:tree_fold_divides_p"}
!908 = !{!"function_entry_count", i64 288}
!909 = !{!"tree-data-ref.c:get_chrec_loop"}
!910 = !{!"tree-data-ref.c:get_loop"}
!911 = !{!639, !431, i64 32}
!912 = !{!913, !431, i64 8}
!913 = !{!"loops", !441, i64 0, !431, i64 8, !431, i64 16, !431, i64 24}
!914 = !{!"function_entry_count", i64 2468}
!915 = !{!"tree-data-ref.c:initialize_matrix_A"}
!916 = !{!"branch_weights", i32 1, i32 2469}
!917 = !{!"branch_weights", i32 1, i32 1235, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1235}
!918 = !{!"branch_weights", i32 1235, i32 1}
!919 = !{!"tree-data-ref.c:compute_overlap_steps_for_affine_univar"}
!920 = !{i32 0, i32 -2147483648}
!921 = !{!"tree-data-ref.c:compute_overlap_steps_for_affine_1_2"}
!922 = !{!"tree-data-ref.c:int_divides_p"}
!923 = !{!"tree-data-ref.c:affine_fn_univar"}
!924 = !{!"branch_weights", i32 1, i32 280}
!925 = distinct !{!925, !435}
!926 = !{!"tree-data-ref.c:chrec_fold_op"}
!927 = !{!"tree-data-ref.c:chrec_type"}
!928 = !{!"tree-data-ref.c:gcd"}
!929 = distinct !{!929, !435}
!930 = !{!"tree-data-ref.c:affine_fn_plus"}
!931 = !{!"tree-data-ref.c:affine_fn_free"}
!932 = !{!"function_entry_count", i64 197}
!933 = !{!"tree-data-ref.c:affine_fn_op"}
!934 = !{!"branch_weights", i32 1, i32 197}
!935 = !{!"branch_weights", i32 197, i32 1}
!936 = !{!"branch_weights", i32 197, i32 141}
!937 = distinct !{!937, !435}
!938 = distinct !{!938, !435}
!939 = distinct !{!939, !435}
!940 = !{!"function_entry_count", i64 44}
!941 = !{!"tree-data-ref.c:build_polynomial_chrec"}
!942 = !{!"branch_weights", i32 91, i32 2025}
!943 = !{!"branch_weights", i32 2025, i32 91}
!944 = !{!"branch_weights", i32 2025, i32 46, i32 45}
!945 = !{!"branch_weights", i32 45, i32 1}
!946 = !{!"tree-data-ref.c:no_evolution_in_loop_p"}
!947 = !{!"tree-data-ref.c:chrec_zerop"}
!948 = !{!"branch_weights", i32 1, i32 45}
!949 = !{!"tree-data-ref.c:tree_is_chrec"}
!950 = !{!"tree-data-ref.c:estimated_loop_iterations_tree"}
!951 = !{!952, !431, i64 456}
!952 = !{!"lang_hooks", !431, i64 0, !471, i64 8, !431, i64 16, !431, i64 24, !431, i64 32, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64, !431, i64 72, !431, i64 80, !431, i64 88, !431, i64 96, !431, i64 104, !431, i64 112, !431, i64 120, !431, i64 128, !431, i64 136, !431, i64 144, !431, i64 152, !431, i64 160, !431, i64 168, !431, i64 176, !431, i64 184, !431, i64 192, !431, i64 200, !431, i64 208, !431, i64 216, !431, i64 224, !431, i64 232, !953, i64 240, !954, i64 248, !955, i64 256, !956, i64 272, !957, i64 432, !958, i64 560, !431, i64 584, !431, i64 592, !431, i64 600, !431, i64 608, !431, i64 616, !431, i64 624, !431, i64 632, !431, i64 640, !431, i64 648, !431, i64 656, !431, i64 664, !432, i64 672}
!953 = !{!"lang_hooks_for_tree_inlining", !431, i64 0}
!954 = !{!"lang_hooks_for_callgraph", !431, i64 0}
!955 = !{!"lang_hooks_for_tree_dump", !431, i64 0, !431, i64 8}
!956 = !{!"lang_hooks_for_decls", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !431, i64 32, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64, !431, i64 72, !431, i64 80, !431, i64 88, !431, i64 96, !431, i64 104, !431, i64 112, !431, i64 120, !431, i64 128, !431, i64 136, !431, i64 144, !431, i64 152}
!957 = !{!"lang_hooks_for_types", !431, i64 0, !431, i64 8, !431, i64 16, !431, i64 24, !431, i64 32, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64, !431, i64 72, !431, i64 80, !431, i64 88, !431, i64 96, !431, i64 104, !431, i64 112, !432, i64 120}
!958 = !{!"lang_hooks_for_lto", !431, i64 0, !431, i64 8, !431, i64 16}
!959 = !{!"tree-data-ref.c:gcd_of_steps_may_divide_p"}
!960 = distinct !{!960, !435}
!961 = !{!"tree-data-ref.c:common_affine_function"}
!962 = !{!"branch_weights", i32 156025, i32 396, i32 395}
!963 = !{!"branch_weights", i32 0, i32 1}
!964 = distinct !{!964, !435}
!965 = !{!"tree-data-ref.c:affine_fn_minus"}
!966 = !{!"tree-data-ref.c:affine_function_constant_p"}
!967 = !{!"branch_weights", i32 57, i32 141}
!968 = !{!"branch_weights", i32 141, i32 0}
!969 = distinct !{!969, !435}
!970 = !{!"branch_weights", i32 1, i32 141}
!971 = !{!"tree-data-ref.c:affine_function_base"}
!972 = !{!"tree-data-ref.c:affine_function_equal_p"}
!973 = distinct !{!973, !435}
!974 = !{!"tree-data-ref.c:same_access_functions"}
!975 = !{!"branch_weights", i32 1, i32 151}
!976 = !{!"branch_weights", i32 461, i32 151}
!977 = distinct !{!977, !435}
!978 = !{!"function_entry_count", i64 807313}
!979 = !{!"tree-data-ref.c:lambda_vector_new"}
!980 = !{!"function_entry_count", i64 403529}
!981 = !{!"tree-data-ref.c:save_dist_v"}
!982 = !{!"branch_weights", i32 6041, i32 198745}
!983 = !{!"branch_weights", i32 198745, i32 0}
!984 = distinct !{!984, !435}
!985 = !{!"branch_weights", i32 1, i32 198745}
!986 = !{!"function_entry_count", i64 37}
!987 = !{!"tree-data-ref.c:constant_access_functions"}
!988 = !{!"branch_weights", i32 1, i32 127}
!989 = !{!"branch_weights", i32 127, i32 4737}
!990 = distinct !{!990, !435}
!991 = !{!"tree-data-ref.c:add_distance_for_zero_overlaps"}
!992 = distinct !{!992, !435}
!993 = distinct !{!993, !435}
!994 = distinct !{!994, !435}
!995 = !{!"tree-data-ref.c:add_other_self_distances"}
!996 = distinct !{!996, !435}
!997 = !{!"function_entry_count", i64 140}
!998 = !{!"tree-data-ref.c:build_classic_dist_vector_1"}
!999 = !{!"branch_weights", i32 1, i32 140}
!1000 = !{!"branch_weights", i32 161, i32 1}
!1001 = !{!"branch_weights", i32 141, i32 21}
!1002 = !{!"branch_weights", i32 141, i32 1}
!1003 = !{!"branch_weights", i32 1, i32 21}
!1004 = !{!"branch_weights", i32 21, i32 140}
!1005 = distinct !{!1005, !435}
!1006 = !{!"function_entry_count", i64 115}
!1007 = !{!"tree-data-ref.c:lambda_vector_lexico_pos"}
!1008 = !{!"branch_weights", i32 127, i32 14721}
!1009 = distinct !{!1009, !435}
!1010 = !{!"tree-data-ref.c:add_outer_distances"}
!1011 = distinct !{!1011, !435}
!1012 = !{!"function_entry_count", i64 90}
!1013 = !{!"tree-data-ref.c:lambda_vector_copy"}
!1014 = !{!"tree-data-ref.c:lambda_vector_first_nz"}
!1015 = distinct !{!1015, !435}
!1016 = !{!"function_entry_count", i64 397488}
!1017 = !{!"tree-data-ref.c:lambda_vector_equal"}
!1018 = !{!"branch_weights", i32 25251, i32 372238}
!1019 = !{!"branch_weights", i32 25251, i32 0}
!1020 = distinct !{!1020, !435}
!1021 = !{!"branch_weights", i32 25251, i32 1}
!1022 = !{!"function_entry_count", i64 409570}
!1023 = !{!"tree-data-ref.c:VEC_lambda_vector_heap_safe_push"}
!1024 = !{!"tree-data-ref.c:VEC_lambda_vector_heap_reserve"}
!1025 = !{!"branch_weights", i32 409571, i32 1}
!1026 = !{!"tree-data-ref.c:VEC_lambda_vector_base_quick_push"}
!1027 = !{!"tree-data-ref.c:VEC_lambda_vector_base_space"}
!1028 = !{!506, !441, i64 4}
!1029 = !{!"tree-data-ref.c:affine_function_zero_p"}
!1030 = !{!"tree-data-ref.c:insert_innermost_unit_dist_vector"}
!1031 = !{!"tree-data-ref.c:add_multivariate_self_dist"}
!1032 = !{!"tree-data-ref.c:index_in_loop_nest"}
!1033 = !{!"branch_weights", i32 127, i32 35841}
!1034 = distinct !{!1034, !435}
!1035 = !{!"tree-data-ref.c:non_affine_dependence_relation"}
!1036 = !{!"tree-data-ref.c:dir_from_dist"}
!1037 = !{!"tree-data-ref.c:save_dir_v"}
!1038 = distinct !{!1038, !435}
!1039 = !{!"tree-data-ref.c:init_omega_for_ddr_1"}
!1040 = distinct !{!1040, !435}
!1041 = !{!1042, !431, i64 48}
!1042 = !{!"omega_pb_d", !441, i64 0, !441, i64 4, !441, i64 8, !441, i64 12, !441, i64 16, !441, i64 20, !432, i64 24, !432, i64 25, !431, i64 32, !431, i64 40, !431, i64 48, !431, i64 56, !431, i64 64}
!1043 = !{!1044, !431, i64 16}
!1044 = !{!"eqn_d", !441, i64 0, !441, i64 4, !441, i64 8, !431, i64 16}
!1045 = distinct !{!1045, !435}
!1046 = !{!"tree-data-ref.c:omega_free_problem"}
!1047 = !{!1042, !431, i64 32}
!1048 = !{!1042, !431, i64 40}
!1049 = !{!1050, !441, i64 8}
!1050 = !{!"param_info", !431, i64 0, !441, i64 8, !432, i64 12, !441, i64 16, !441, i64 20, !431, i64 24}
!1051 = !{!1042, !431, i64 56}
!1052 = !{!1042, !431, i64 64}
!1053 = !{!"tree-data-ref.c:omega_setup_subscript"}
!1054 = !{!"tree-data-ref.c:omega_add_zero_geq"}
!1055 = !{!1042, !441, i64 12}
!1056 = !{!1042, !441, i64 0}
!1057 = !{!1044, !441, i64 4}
!1058 = !{!1044, !441, i64 8}
!1059 = !{!"tree-data-ref.c:omega_extract_distance_vectors"}
!1060 = distinct !{!1060, !435}
!1061 = !{!1042, !441, i64 16}
!1062 = distinct !{!1062, !435}
!1063 = !{!1044, !441, i64 0}
!1064 = distinct !{!1064, !435}
!1065 = distinct !{!1065, !435}
!1066 = distinct !{!1066, !435}
!1067 = distinct !{!1067, !435}
!1068 = distinct !{!1068, !435}
!1069 = !{!"tree-data-ref.c:omega_add_zero_eq"}
!1070 = !{!1042, !441, i64 8}
!1071 = !{!"tree-data-ref.c:init_omega_eq_with_af"}
!1072 = !{!"tree-data-ref.c:lambda_vector_gcd"}
!1073 = distinct !{!1073, !435}
!1074 = !{!"tree-data-ref.c:omega_init_eqn_zero"}
!1075 = !{!"tree-data-ref.c:omega_copy_problem"}
!1076 = !{!1042, !441, i64 20}
!1077 = !{!1042, !432, i64 24}
!1078 = !{!1042, !432, i64 25}
!1079 = distinct !{!1079, !435}
!1080 = distinct !{!1080, !435}
!1081 = distinct !{!1081, !435}
!1082 = distinct !{!1082, !435}
!1083 = distinct !{!1083, !435}
!1084 = !{!"tree-data-ref.c:omega_copy_eqn"}
!1085 = !{!"tree-data-ref.c:omega_free_eqns"}
!1086 = distinct !{!1086, !435}
!1087 = !{!"function_entry_count", i64 16165}
!1088 = !{!"tree-data-ref.c:free_subscripts"}
!1089 = !{!"branch_weights", i32 13784, i32 2382}
!1090 = !{!"branch_weights", i32 2382, i32 0}
!1091 = distinct !{!1091, !435}
!1092 = !{!"tree-data-ref.c:VEC_subscript_p_heap_free"}
!1093 = !{!"branch_weights", i32 1, i32 16166}
!1094 = !{!"function_entry_count", i64 609086}
!1095 = !{!"branch_weights", i32 68853, i32 540235}
!1096 = !{!"branch_weights", i32 63386, i32 5468}
!1097 = !{!"branch_weights", i32 3975, i32 2147479673}
!1098 = !{!"branch_weights", i32 299984, i32 309104}
!1099 = !{!"branch_weights", i32 240503, i32 68602}
!1100 = !{!"branch_weights", i32 522345934, i32 361012154, i32 -1969956931}
!1101 = !{!"branch_weights", i32 1, i32 174287}
!1102 = !{!1103, !431, i64 0}
!1103 = !{!"data_ref_loc_d", !431, i64 0, !432, i64 8}
!1104 = !{!1103, !432, i64 8}
!1105 = !{!"branch_weights", i32 -1327247404, i32 61594809, i32 523154850}
!1106 = !{!"branch_weights", i32 1, i32 35418}
!1107 = !{!"branch_weights", i32 68593, i32 10}
!1108 = !{!"branch_weights", i32 1, i32 68592}
!1109 = !{!"branch_weights", i32 -2035367002, i32 2185023, i32 420193}
!1110 = !{!"branch_weights", i32 68592, i32 65999}
!1111 = distinct !{!1111, !435}
!1112 = !{!"tree-data-ref.c:gimple_asm_volatile_p"}
!1113 = !{!"tree-data-ref.c:gimple_vuse"}
!1114 = !{!"branch_weights", i32 154795, i32 454293}
!1115 = !{!"function_entry_count", i64 240502}
!1116 = !{!"tree-data-ref.c:gimple_assign_lhs_ptr"}
!1117 = !{!"tree-data-ref.c:gimple_assign_rhs1_ptr"}
!1118 = !{!"function_entry_count", i64 241086}
!1119 = !{!"tree-data-ref.c:VEC_data_ref_loc_heap_safe_push"}
!1120 = !{!"function_entry_count", i64 68592}
!1121 = !{!"tree-data-ref.c:gimple_call_num_args"}
!1122 = !{!"function_entry_count", i64 134590}
!1123 = !{!"tree-data-ref.c:gimple_call_arg_ptr"}
!1124 = !{!"tree-data-ref.c:gimple_has_mem_ops"}
!1125 = !{!"function_entry_count", i64 615594}
!1126 = !{!"tree-data-ref.c:gimple_op_ptr"}
!1127 = !{!"branch_weights", i32 1, i32 615595}
!1128 = !{!"tree-data-ref.c:VEC_data_ref_loc_heap_reserve"}
!1129 = !{!"branch_weights", i32 240652, i32 436}
!1130 = !{!"tree-data-ref.c:VEC_data_ref_loc_base_quick_push"}
!1131 = !{!1132, !441, i64 0}
!1132 = !{!"VEC_data_ref_loc_base", !441, i64 0, !441, i64 4, !432, i64 8}
!1133 = !{!"tree-data-ref.c:VEC_data_ref_loc_base_space"}
!1134 = !{!1132, !441, i64 4}
!1135 = !{!"branch_weights", i32 545702, i32 63386}
!1136 = !{!"branch_weights", i32 303301, i32 240938}
!1137 = !{!"branch_weights", i32 20390317, i32 -959589339}
!1138 = !{!"branch_weights", i32 1464, i32 1}
!1139 = !{!"branch_weights", i32 240938, i32 0}
!1140 = distinct !{!1140, !435}
!1141 = !{!"tree-data-ref.c:VEC_data_ref_loc_heap_free"}
!1142 = !{!"branch_weights", i32 368436, i32 240652}
!1143 = !{!"function_entry_count", i64 785175}
!1144 = !{!"tree-data-ref.c:VEC_data_ref_loc_base_iterate"}
!1145 = !{!"branch_weights", i32 305190, i32 479987}
!1146 = !{!"branch_weights", i32 240938, i32 239050}
!1147 = !{!"tree-data-ref.c:dr_address_invariant_p"}
!1148 = !{!"branch_weights", i32 200991, i32 21854}
!1149 = !{!"branch_weights", i32 21854, i32 0}
!1150 = distinct !{!1150, !435}
!1151 = !{!"branch_weights", i32 3761, i32 18094}
!1152 = !{!"function_entry_count", i64 304322}
!1153 = !{!"tree-data-ref.c:VEC_data_reference_p_heap_safe_push"}
!1154 = !{!"tree-data-ref.c:VEC_data_reference_p_heap_reserve"}
!1155 = !{!"branch_weights", i32 184220, i32 120104}
!1156 = !{!"tree-data-ref.c:VEC_data_reference_p_base_quick_push"}
!1157 = !{!"tree-data-ref.c:VEC_data_reference_p_base_space"}
!1158 = !{!"branch_weights", i32 178873, i32 125451}
!1159 = !{!440, !441, i64 4}
!1160 = distinct !{!1160, !435}
!1161 = !{!"function_entry_count", i64 9039}
!1162 = !{!468, !441, i64 36}
!1163 = !{!"branch_weights", i32 1, i32 5185}
!1164 = !{!"branch_weights", i32 18069, i32 5185}
!1165 = distinct !{!1165, !435}
!1166 = !{!"branch_weights", i32 3855, i32 19400}
!1167 = !{!"function_entry_count", i64 281644}
!1168 = !{!"tree-data-ref.c:find_data_references_in_bb"}
!1169 = !{!"branch_weights", i32 216796, i32 1}
!1170 = !{!"branch_weights", i32 64849, i32 544239}
!1171 = !{!"branch_weights", i32 392291, i32 216796}
!1172 = distinct !{!1172, !435}
!1173 = !{!"tree-data-ref.c:gsi_start_bb"}
!1174 = !{!1175, !431, i64 0}
!1175 = !{!"", !431, i64 0, !431, i64 8, !431, i64 16}
!1176 = !{!1175, !431, i64 8}
!1177 = !{!1175, !431, i64 16}
!1178 = !{!"function_entry_count", i64 825882}
!1179 = !{!"tree-data-ref.c:gsi_end_p"}
!1180 = !{!"tree-data-ref.c:gsi_stmt"}
!1181 = !{!1182, !431, i64 0}
!1182 = !{!"gimple_seq_node_d", !431, i64 0, !431, i64 8, !431, i64 16}
!1183 = !{!"function_entry_count", i64 544238}
!1184 = !{!"tree-data-ref.c:gsi_next"}
!1185 = !{!1182, !431, i64 16}
!1186 = !{!"tree-data-ref.c:bb_seq"}
!1187 = !{!612, !441, i64 96}
!1188 = !{!"branch_weights", i32 281645, i32 1}
!1189 = !{!"branch_weights", i32 1, i32 281645}
!1190 = !{!1191, !431, i64 0}
!1191 = !{!"gimple_bb_info", !431, i64 0, !431, i64 8}
!1192 = !{!"tree-data-ref.c:gimple_seq_first"}
!1193 = !{!1194, !431, i64 0}
!1194 = !{!"gimple_seq_d", !431, i64 0, !431, i64 8, !431, i64 16}
!1195 = !{!468, !431, i64 48}
!1196 = !{!"branch_weights", i32 9038, i32 3}
!1197 = !{!"function_entry_count", i64 9041}
!1198 = !{!"tree-data-ref.c:VEC_loop_p_heap_safe_push"}
!1199 = !{!"function_entry_count", i64 2}
!1200 = !{!"tree-data-ref.c:find_loop_nest_1"}
!1201 = !{!468, !431, i64 56}
!1202 = !{!"tree-data-ref.c:VEC_loop_p_heap_reserve"}
!1203 = !{!"branch_weights", i32 1, i32 9042}
!1204 = !{!"tree-data-ref.c:VEC_loop_p_base_quick_push"}
!1205 = !{!"tree-data-ref.c:VEC_loop_p_base_space"}
!1206 = !{!522, !441, i64 4}
!1207 = !{!"branch_weights", i32 1, i32 9040}
!1208 = !{!"branch_weights", i32 3855, i32 5186}
!1209 = !{!"branch_weights", i32 9040, i32 1}
!1210 = !{!723, !441, i64 36}
!1211 = !{!723, !441, i64 32}
!1212 = !{!723, !441, i64 40}
!1213 = !{!723, !441, i64 68}
!1214 = !{!723, !441, i64 64}
!1215 = !{!723, !441, i64 72}
!1216 = !{!"tree-data-ref.c:VEC_loop_p_heap_alloc"}
!1217 = !{!"function_entry_count", i64 258391}
!1218 = !{!"branch_weights", i32 60995, i32 197398}
!1219 = distinct !{!1219, !435}
!1220 = !{!"tree-data-ref.c:fel_init"}
!1221 = !{!1222, !441, i64 8}
!1222 = !{!"", !431, i64 0, !441, i64 8}
!1223 = !{!1222, !431, i64 0}
!1224 = !{!913, !431, i64 24}
!1225 = distinct !{!1225, !435}
!1226 = !{!"tree-data-ref.c:analyze_all_data_dependences"}
!1227 = distinct !{!1227, !435}
!1228 = !{!"tree-data-ref.c:fel_next"}
!1229 = distinct !{!1229, !435}
!1230 = !{!"tree-data-ref.c:VEC_int_heap_alloc"}
!1231 = !{!"tree-data-ref.c:number_of_loops"}
!1232 = !{!"tree-data-ref.c:VEC_int_base_quick_push"}
!1233 = !{!1234, !441, i64 0}
!1234 = !{!"VEC_int_base", !441, i64 0, !441, i64 4, !432, i64 8}
!1235 = !{!"tree-data-ref.c:loop_outer"}
!1236 = !{!468, !431, i64 40}
!1237 = !{!"tree-data-ref.c:VEC_data_reference_p_heap_alloc"}
!1238 = !{!"tree-data-ref.c:VEC_ddr_p_heap_alloc"}
!1239 = !{!"function_entry_count", i64 9160}
!1240 = !{!"branch_weights", i32 1, i32 9160}
!1241 = !{!"branch_weights", i32 1, i32 42066}
!1242 = !{!"branch_weights", i32 18641, i32 23426}
!1243 = !{!"branch_weights", i32 263776761, i32 11259}
!1244 = !{!"branch_weights", i32 9160, i32 32906}
!1245 = distinct !{!1245, !435}
!1246 = !{!"branch_weights", i32 996970618, i32 1150513030}
!1247 = !{!"branch_weights", i32 9160, i32 12788}
!1248 = distinct !{!1248, !435}
!1249 = !{!"tree-data-ref.c:VEC_int_base_iterate"}
!1250 = !{!"tree-data-ref.c:VEC_int_heap_free"}
!1251 = !{!"function_entry_count", i64 42065}
!1252 = !{!"branch_weights", i32 27858, i32 14209}
!1253 = !{!"function_entry_count", i64 28416}
!1254 = !{!"tree-data-ref.c:VEC_lambda_vector_heap_free"}
!1255 = !{!"branch_weights", i32 1, i32 28417}
!1256 = !{!"function_entry_count", i64 4907}
!1257 = !{!"tree-data-ref.c:VEC_loop_p_heap_free"}
!1258 = !{!"branch_weights", i32 1, i32 4908}
!1259 = !{!"tree-data-ref.c:VEC_ddr_p_heap_free"}
!1260 = !{!"branch_weights", i32 1, i32 9161}
!1261 = !{!"tree-data-ref.c:VEC_data_reference_p_heap_free"}
!1262 = !{!1263, !431, i64 8}
!1263 = !{!"graph", !441, i64 0, !431, i64 8, !431, i64 16}
!1264 = !{!1265, !431, i64 24}
!1265 = !{!"vertex", !431, i64 0, !431, i64 8, !441, i64 16, !441, i64 20, !431, i64 24}
!1266 = !{!1267, !432, i64 8}
!1267 = !{!"rdg_vertex", !431, i64 0, !432, i64 8, !432, i64 9}
!1268 = !{!1267, !432, i64 9}
!1269 = !{!1265, !431, i64 0}
!1270 = !{!1271, !441, i64 0}
!1271 = !{!"graph_edge", !441, i64 0, !441, i64 4, !431, i64 8, !431, i64 16, !431, i64 24}
!1272 = !{!1271, !431, i64 8}
!1273 = distinct !{!1273, !435}
!1274 = !{!1265, !431, i64 8}
!1275 = !{!1271, !441, i64 4}
!1276 = !{!1271, !431, i64 16}
!1277 = distinct !{!1277, !435}
!1278 = !{!1267, !431, i64 0}
!1279 = !{!1263, !441, i64 0}
!1280 = !{!1265, !441, i64 16}
!1281 = distinct !{!1281, !435}
!1282 = distinct !{!1282, !435}
!1283 = !{!1284, !431, i64 0}
!1284 = !{!"rdg_vertex_info", !431, i64 0, !441, i64 8}
!1285 = !{!1263, !431, i64 16}
!1286 = !{!1284, !441, i64 8}
!1287 = distinct !{!1287, !435}
!1288 = distinct !{!1288, !435}
!1289 = !{!"tree-data-ref.c:VEC_gimple_base_iterate"}
!1290 = !{!1291, !441, i64 0}
!1291 = !{!"VEC_gimple_base", !441, i64 0, !441, i64 4, !432, i64 8}
!1292 = !{!"tree-data-ref.c:hash_stmt_vertex_info"}
!1293 = !{!"tree-data-ref.c:eq_stmt_vertex_info"}
!1294 = !{!"tree-data-ref.c:hash_stmt_vertex_del"}
!1295 = !{!"tree-data-ref.c:VEC_gimple_heap_alloc"}
!1296 = !{!"tree-data-ref.c:known_dependences_p"}
!1297 = distinct !{!1297, !435}
!1298 = !{!"tree-data-ref.c:VEC_gimple_heap_free"}
!1299 = !{!"tree-data-ref.c:stmts_from_loop"}
!1300 = distinct !{!1300, !435}
!1301 = !{i64 0, i64 8, !430, i64 8, i64 8, !430, i64 16, i64 8, !430}
!1302 = distinct !{!1302, !435}
!1303 = distinct !{!1303, !435}
!1304 = !{!"tree-data-ref.c:VEC_gimple_base_length"}
!1305 = !{!"tree-data-ref.c:create_rdg_edges"}
!1306 = distinct !{!1306, !435}
!1307 = distinct !{!1307, !435}
!1308 = distinct !{!1308, !435}
!1309 = !{!"tree-data-ref.c:VEC_gimple_heap_safe_push"}
!1310 = !{!"tree-data-ref.c:VEC_gimple_heap_reserve"}
!1311 = !{!"tree-data-ref.c:VEC_gimple_base_quick_push"}
!1312 = !{!"tree-data-ref.c:VEC_gimple_base_space"}
!1313 = !{!1291, !441, i64 4}
!1314 = !{!"tree-data-ref.c:create_rdg_edge_for_ddr"}
!1315 = !{!1271, !431, i64 24}
!1316 = !{!1317, !441, i64 4}
!1317 = !{!"rdg_edge", !441, i64 0, !441, i64 4, !431, i64 8}
!1318 = !{!1317, !431, i64 8}
!1319 = !{!1317, !441, i64 0}
!1320 = !{!"tree-data-ref.c:op_iter_init_phidef"}
!1321 = !{!1322, !432, i64 0}
!1322 = !{!"ssa_operand_iterator_d", !432, i64 0, !441, i64 4, !431, i64 8, !431, i64 16, !441, i64 24, !441, i64 28, !431, i64 32}
!1323 = !{!1322, !441, i64 4}
!1324 = !{!"tree-data-ref.c:op_iter_init_def"}
!1325 = !{!"tree-data-ref.c:op_iter_done"}
!1326 = !{!"tree-data-ref.c:create_rdg_edges_for_scalar"}
!1327 = distinct !{!1327, !435}
!1328 = !{!"tree-data-ref.c:get_def_from_ptr"}
!1329 = !{!"tree-data-ref.c:op_iter_next_def"}
!1330 = !{!1322, !431, i64 8}
!1331 = !{!1332, !431, i64 8}
!1332 = !{!"def_optype_d", !431, i64 0, !431, i64 8}
!1333 = !{!1332, !431, i64 0}
!1334 = !{!"tree-data-ref.c:ddr_dependence_level"}
!1335 = distinct !{!1335, !435}
!1336 = !{!"tree-data-ref.c:dependence_level"}
!1337 = distinct !{!1337, !435}
!1338 = !{!"tree-data-ref.c:gimple_phi_result_ptr"}
!1339 = !{!"tree-data-ref.c:clear_and_done_ssa_iter"}
!1340 = !{!"tree-data-ref.c:op_iter_init"}
!1341 = !{!"tree-data-ref.c:gimple_def_ops"}
!1342 = !{!"tree-data-ref.c:gimple_vdef"}
!1343 = !{!"tree-data-ref.c:first_readonly_imm_use"}
!1344 = !{!1345, !431, i64 8}
!1345 = !{!"immediate_use_iterator_d", !431, i64 0, !431, i64 8, !1346, i64 16, !431, i64 48}
!1346 = !{!"ssa_use_operand_d", !431, i64 0, !431, i64 8, !432, i64 16, !431, i64 24}
!1347 = !{!1346, !431, i64 8}
!1348 = !{!1345, !431, i64 0}
!1349 = !{!"tree-data-ref.c:end_readonly_imm_use_p"}
!1350 = !{!"tree-data-ref.c:next_readonly_imm_use"}
!1351 = distinct !{!1351, !435}
!1352 = distinct !{!1352, !435}
!1353 = distinct !{!1353, !435}
!1354 = distinct !{!1354, !435}
!1355 = distinct !{!1355, !435}
!1356 = distinct !{!1356, !435}
!1357 = distinct !{!1357, !435}
!1358 = !{!"tree-data-ref.c:ref_base_address"}
!1359 = distinct !{!1359, !435}
!1360 = !{!"tree-data-ref.c:ref_base_address_1"}
!1361 = distinct !{!1361, !435}
!1362 = !{!"tree-data-ref.c:have_similar_memory_accesses_1"}
!1363 = !{!"tree-data-ref.c:VEC_gimple_base_ordered_remove"}
!1364 = !{!1365, !431, i64 16}
!1365 = !{!"access_matrix", !431, i64 0, !441, i64 8, !431, i64 16, !431, i64 24}
!1366 = !{!1365, !441, i64 8}
!1367 = distinct !{!1367, !435}
