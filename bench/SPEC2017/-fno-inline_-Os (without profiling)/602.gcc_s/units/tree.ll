; ModuleID = 'tree.c'
source_filename = "tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
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
%struct.real_value = type { i32, [3 x i64] }
%struct.fixed_value = type { %struct.double_int, i32 }
%struct.double_int = type { i64, i64 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.type_hash = type { i64, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_optimization_option = type { %struct.tree_common, %struct.cl_optimization }
%struct.cl_optimization = type { i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_target_option = type { %struct.tree_common, %struct.cl_target_option }
%struct.cl_target_option = type { i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_identifier = type { %struct.tree_common, %struct.ht_identifier }
%struct.ht_identifier = type { ptr, i32, i32 }
%struct.tree_binfo = type { %struct.tree_common, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.VEC_tree_none }
%struct.VEC_tree_none = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_vec = type { %struct.tree_common, i32, [1 x ptr] }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.tree_omp_clause = type { %struct.tree_common, i32, i32, %union.omp_clause_subcode, ptr, ptr, [1 x ptr] }
%union.omp_clause_subcode = type { i32 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_priority_map = type { %struct.tree_map_base, i16, i16 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_vector = type { %struct.tree_common, ptr }
%struct.constructor_elt_d = type { ptr, ptr }
%struct.VEC_constructor_elt_base = type { i32, i32, [1 x %struct.constructor_elt_d] }
%struct.tree_constructor = type { %struct.tree_common, ptr }
%struct.tree_fixed_cst = type { %struct.tree_common, ptr }
%struct.tree_real_cst = type { %struct.tree_common, ptr }
%struct.tree_complex = type { %struct.tree_common, ptr, ptr }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.const_call_expr_arg_iterator_d = type { ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.line_map = type { ptr, i32, i32, i32, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.pretty_print_info = type { ptr, ptr, i32, i32, i32, %struct.pp_wrapping_mode_t, ptr, i8, i8, i8 }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.free_lang_data_d = type { ptr, ptr, ptr, ptr }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.varpool_node = type { ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_alias_pair_base = type { i32, i32, [1 x %struct.alias_pair] }
%struct.alias_pair = type { ptr, ptr }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.tree_stmt_iterator = type { ptr, ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.tree_statement_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_statement_list_node = type { ptr, ptr, ptr }
%struct.function_args_iterator = type { ptr, ptr }
%struct.htab = type { ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, ptr, ptr, ptr, ptr, ptr, i32 }

@global_trees = dso_local local_unnamed_addr global [131 x ptr] zeroinitializer, align 16
@integer_types = dso_local local_unnamed_addr global [11 x ptr] zeroinitializer, align 16
@tree_contains_struct = dso_local local_unnamed_addr global [191 x [64 x i8]] zeroinitializer, align 16
@tree_code_type = dso_local local_unnamed_addr constant [191 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 10, i32 0, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 9, i32 10, i32 10, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 6, i32 6, i32 6, i32 7, i32 7, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 6, i32 10, i32 10, i32 10, i32 10, i32 10, i32 10, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 7, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 4, i32 10, i32 10, i32 10, i32 10, i32 7, i32 6, i32 10, i32 10, i32 10, i32 10, i32 10, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 8, i32 8, i32 10, i32 10, i32 10, i32 0, i32 10, i32 0, i32 10, i32 10, i32 4, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 8, i32 0, i32 6, i32 6, i32 6, i32 10, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 6, i32 6, i32 6, i32 6, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 10, i32 0, i32 0, i32 0, i32 10, i32 10], align 16
@tree_code_length = dso_local local_unnamed_addr constant [191 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\03\01\01\04\04\01\01\02\03\00\02\02\02\04\03\03\03\03\01\01\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\02\02\01\02\02\02\02\02\02\02\01\02\02\02\02\02\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\01\01\01\01\01\01\01\01\01\01\02\02\01\02\02\02\02\01\02\02\01\01\01\01\01\01\03\03\05\00\02\02\00\00\03\00\02\00\02\03\06\02\02\06\02\02\01\01\01\02\02\00\01\01\01\03\02\02\02\02\02\02\01\01\01\01\02\02\02\02\02\02\02\01\00\00\00\02\01", align 16
@tree_code_name = dso_local local_unnamed_addr constant [191 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190], align 16
@.str = private unnamed_addr constant [11 x i8] c"error_mark\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"identifier_node\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"tree_list\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"tree_vec\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"offset_type\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"enumeral_type\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"boolean_type\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"integer_type\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"real_type\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"pointer_type\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"fixed_point_type\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"reference_type\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"complex_type\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"vector_type\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"array_type\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"record_type\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"union_type\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"qual_union_type\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"void_type\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"function_type\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"method_type\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"lang_type\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"integer_cst\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"real_cst\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"fixed_cst\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"complex_cst\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"vector_cst\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"string_cst\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"function_decl\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"label_decl\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"field_decl\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"var_decl\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"const_decl\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"parm_decl\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"type_decl\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"result_decl\00", align 1
@.str.37 = private unnamed_addr constant [16 x i8] c"debug_expr_decl\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"namespace_decl\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"imported_decl\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"translation_unit_decl\00", align 1
@.str.41 = private unnamed_addr constant [14 x i8] c"component_ref\00", align 1
@.str.42 = private unnamed_addr constant [14 x i8] c"bit_field_ref\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"realpart_expr\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"imagpart_expr\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"array_ref\00", align 1
@.str.46 = private unnamed_addr constant [16 x i8] c"array_range_ref\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"indirect_ref\00", align 1
@.str.48 = private unnamed_addr constant [19 x i8] c"align_indirect_ref\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"misaligned_indirect_ref\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"obj_type_ref\00", align 1
@.str.51 = private unnamed_addr constant [12 x i8] c"constructor\00", align 1
@.str.52 = private unnamed_addr constant [14 x i8] c"compound_expr\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"modify_expr\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"init_expr\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"target_expr\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"cond_expr\00", align 1
@.str.57 = private unnamed_addr constant [14 x i8] c"vec_cond_expr\00", align 1
@.str.58 = private unnamed_addr constant [10 x i8] c"bind_expr\00", align 1
@.str.59 = private unnamed_addr constant [10 x i8] c"call_expr\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"with_cleanup_expr\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"cleanup_point_expr\00", align 1
@.str.62 = private unnamed_addr constant [17 x i8] c"placeholder_expr\00", align 1
@.str.63 = private unnamed_addr constant [10 x i8] c"plus_expr\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"minus_expr\00", align 1
@.str.65 = private unnamed_addr constant [10 x i8] c"mult_expr\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"pointer_plus_expr\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"trunc_div_expr\00", align 1
@.str.68 = private unnamed_addr constant [14 x i8] c"ceil_div_expr\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"floor_div_expr\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"round_div_expr\00", align 1
@.str.71 = private unnamed_addr constant [15 x i8] c"trunc_mod_expr\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"ceil_mod_expr\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"floor_mod_expr\00", align 1
@.str.74 = private unnamed_addr constant [15 x i8] c"round_mod_expr\00", align 1
@.str.75 = private unnamed_addr constant [10 x i8] c"rdiv_expr\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"exact_div_expr\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"fix_trunc_expr\00", align 1
@.str.78 = private unnamed_addr constant [11 x i8] c"float_expr\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"negate_expr\00", align 1
@.str.80 = private unnamed_addr constant [9 x i8] c"min_expr\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"max_expr\00", align 1
@.str.82 = private unnamed_addr constant [9 x i8] c"abs_expr\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"lshift_expr\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"rshift_expr\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"lrotate_expr\00", align 1
@.str.86 = private unnamed_addr constant [13 x i8] c"rrotate_expr\00", align 1
@.str.87 = private unnamed_addr constant [13 x i8] c"bit_ior_expr\00", align 1
@.str.88 = private unnamed_addr constant [13 x i8] c"bit_xor_expr\00", align 1
@.str.89 = private unnamed_addr constant [13 x i8] c"bit_and_expr\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"bit_not_expr\00", align 1
@.str.91 = private unnamed_addr constant [17 x i8] c"truth_andif_expr\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"truth_orif_expr\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"truth_and_expr\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"truth_or_expr\00", align 1
@.str.95 = private unnamed_addr constant [15 x i8] c"truth_xor_expr\00", align 1
@.str.96 = private unnamed_addr constant [15 x i8] c"truth_not_expr\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"lt_expr\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"le_expr\00", align 1
@.str.99 = private unnamed_addr constant [8 x i8] c"gt_expr\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"ge_expr\00", align 1
@.str.101 = private unnamed_addr constant [8 x i8] c"eq_expr\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"ne_expr\00", align 1
@.str.103 = private unnamed_addr constant [15 x i8] c"unordered_expr\00", align 1
@.str.104 = private unnamed_addr constant [13 x i8] c"ordered_expr\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"unlt_expr\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"unle_expr\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"ungt_expr\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"unge_expr\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"uneq_expr\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"ltgt_expr\00", align 1
@.str.111 = private unnamed_addr constant [11 x i8] c"range_expr\00", align 1
@.str.112 = private unnamed_addr constant [11 x i8] c"paren_expr\00", align 1
@.str.113 = private unnamed_addr constant [13 x i8] c"convert_expr\00", align 1
@.str.114 = private unnamed_addr constant [24 x i8] c"addr_space_convert_expr\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"fixed_convert_expr\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"nop_expr\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"non_lvalue_expr\00", align 1
@.str.118 = private unnamed_addr constant [18 x i8] c"view_convert_expr\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"compound_literal_expr\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"save_expr\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"addr_expr\00", align 1
@.str.122 = private unnamed_addr constant [11 x i8] c"fdesc_expr\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"complex_expr\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"conj_expr\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"predecrement_expr\00", align 1
@.str.126 = private unnamed_addr constant [18 x i8] c"preincrement_expr\00", align 1
@.str.127 = private unnamed_addr constant [19 x i8] c"postdecrement_expr\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"postincrement_expr\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"va_arg_expr\00", align 1
@.str.130 = private unnamed_addr constant [15 x i8] c"try_catch_expr\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"try_finally\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"decl_expr\00", align 1
@.str.133 = private unnamed_addr constant [11 x i8] c"label_expr\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"goto_expr\00", align 1
@.str.135 = private unnamed_addr constant [12 x i8] c"return_expr\00", align 1
@.str.136 = private unnamed_addr constant [10 x i8] c"exit_expr\00", align 1
@.str.137 = private unnamed_addr constant [10 x i8] c"loop_expr\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"switch_expr\00", align 1
@.str.139 = private unnamed_addr constant [16 x i8] c"case_label_expr\00", align 1
@.str.140 = private unnamed_addr constant [9 x i8] c"asm_expr\00", align 1
@.str.141 = private unnamed_addr constant [9 x i8] c"ssa_name\00", align 1
@.str.142 = private unnamed_addr constant [11 x i8] c"catch_expr\00", align 1
@.str.143 = private unnamed_addr constant [15 x i8] c"eh_filter_expr\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"scev_known\00", align 1
@.str.145 = private unnamed_addr constant [15 x i8] c"scev_not_known\00", align 1
@.str.146 = private unnamed_addr constant [17 x i8] c"polynomial_chrec\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"statement_list\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"assert_expr\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"tree_binfo\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"with_size_expr\00", align 1
@.str.151 = private unnamed_addr constant [13 x i8] c"realign_load\00", align 1
@.str.152 = private unnamed_addr constant [15 x i8] c"target_mem_ref\00", align 1
@.str.153 = private unnamed_addr constant [13 x i8] c"omp_parallel\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"omp_task\00", align 1
@.str.155 = private unnamed_addr constant [8 x i8] c"omp_for\00", align 1
@.str.156 = private unnamed_addr constant [13 x i8] c"omp_sections\00", align 1
@.str.157 = private unnamed_addr constant [11 x i8] c"omp_single\00", align 1
@.str.158 = private unnamed_addr constant [12 x i8] c"omp_section\00", align 1
@.str.159 = private unnamed_addr constant [11 x i8] c"omp_master\00", align 1
@.str.160 = private unnamed_addr constant [12 x i8] c"omp_ordered\00", align 1
@.str.161 = private unnamed_addr constant [13 x i8] c"omp_critical\00", align 1
@.str.162 = private unnamed_addr constant [11 x i8] c"omp_atomic\00", align 1
@.str.163 = private unnamed_addr constant [11 x i8] c"omp_clause\00", align 1
@.str.164 = private unnamed_addr constant [15 x i8] c"reduc_max_expr\00", align 1
@.str.165 = private unnamed_addr constant [15 x i8] c"reduc_min_expr\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"reduc_plus_expr\00", align 1
@.str.167 = private unnamed_addr constant [14 x i8] c"dot_prod_expr\00", align 1
@.str.168 = private unnamed_addr constant [15 x i8] c"widen_sum_expr\00", align 1
@.str.169 = private unnamed_addr constant [16 x i8] c"widen_mult_expr\00", align 1
@.str.170 = private unnamed_addr constant [16 x i8] c"vec_lshift_expr\00", align 1
@.str.171 = private unnamed_addr constant [16 x i8] c"vec_rshift_expr\00", align 1
@.str.172 = private unnamed_addr constant [19 x i8] c"widen_mult_hi_expr\00", align 1
@.str.173 = private unnamed_addr constant [19 x i8] c"widen_mult_lo_expr\00", align 1
@.str.174 = private unnamed_addr constant [19 x i8] c"vec_unpack_hi_expr\00", align 1
@.str.175 = private unnamed_addr constant [19 x i8] c"vec_unpack_lo_expr\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"vec_unpack_float_hi_expr\00", align 1
@.str.177 = private unnamed_addr constant [25 x i8] c"vec_unpack_float_lo_expr\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"vec_pack_trunc_expr\00", align 1
@.str.179 = private unnamed_addr constant [18 x i8] c"vec_pack_sat_expr\00", align 1
@.str.180 = private unnamed_addr constant [24 x i8] c"vec_pack_fix_trunc_expr\00", align 1
@.str.181 = private unnamed_addr constant [21 x i8] c"vec_extracteven_expr\00", align 1
@.str.182 = private unnamed_addr constant [20 x i8] c"vec_extractodd_expr\00", align 1
@.str.183 = private unnamed_addr constant [24 x i8] c"vec_interleavehigh_expr\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"vec_interleavelow_expr\00", align 1
@.str.185 = private unnamed_addr constant [13 x i8] c"predict_expr\00", align 1
@.str.186 = private unnamed_addr constant [18 x i8] c"optimization_node\00", align 1
@.str.187 = private unnamed_addr constant [19 x i8] c"target_option_node\00", align 1
@.str.188 = private unnamed_addr constant [7 x i8] c"@dummy\00", align 1
@.str.189 = private unnamed_addr constant [19 x i8] c"c_maybe_const_expr\00", align 1
@.str.190 = private unnamed_addr constant [22 x i8] c"excess_precision_expr\00", align 1
@tree_code_class_strings = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201], align 16
@.str.191 = private unnamed_addr constant [12 x i8] c"exceptional\00", align 1
@.str.192 = private unnamed_addr constant [9 x i8] c"constant\00", align 1
@.str.193 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.194 = private unnamed_addr constant [12 x i8] c"declaration\00", align 1
@.str.195 = private unnamed_addr constant [10 x i8] c"reference\00", align 1
@.str.196 = private unnamed_addr constant [11 x i8] c"comparison\00", align 1
@.str.197 = private unnamed_addr constant [6 x i8] c"unary\00", align 1
@.str.198 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.199 = private unnamed_addr constant [10 x i8] c"statement\00", align 1
@.str.200 = private unnamed_addr constant [7 x i8] c"vl_exp\00", align 1
@.str.201 = private unnamed_addr constant [11 x i8] c"expression\00", align 1
@omp_clause_num_ops = dso_local local_unnamed_addr constant [16 x i8] c"\00\01\01\01\02\04\01\01\01\01\01\00\00\00\03\00", align 16
@omp_clause_code_name = dso_local local_unnamed_addr constant [16 x ptr] [ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217], align 16
@.str.202 = private unnamed_addr constant [13 x i8] c"error_clause\00", align 1
@.str.203 = private unnamed_addr constant [8 x i8] c"private\00", align 1
@.str.204 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.205 = private unnamed_addr constant [13 x i8] c"firstprivate\00", align 1
@.str.206 = private unnamed_addr constant [12 x i8] c"lastprivate\00", align 1
@.str.207 = private unnamed_addr constant [10 x i8] c"reduction\00", align 1
@.str.208 = private unnamed_addr constant [7 x i8] c"copyin\00", align 1
@.str.209 = private unnamed_addr constant [12 x i8] c"copyprivate\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"if\00", align 1
@.str.211 = private unnamed_addr constant [12 x i8] c"num_threads\00", align 1
@.str.212 = private unnamed_addr constant [9 x i8] c"schedule\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"nowait\00", align 1
@.str.214 = private unnamed_addr constant [8 x i8] c"ordered\00", align 1
@.str.215 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.216 = private unnamed_addr constant [9 x i8] c"collapse\00", align 1
@.str.217 = private unnamed_addr constant [7 x i8] c"untied\00", align 1
@type_hash_table = internal global ptr null, align 8
@debug_expr_for_decl = internal global ptr null, align 8
@value_expr_for_decl = internal global ptr null, align 8
@init_priority_for_decl = internal global ptr null, align 8
@int_cst_hash_table = internal global ptr null, align 8
@int_cst_node = internal global ptr null, align 8
@cl_option_hash_table = internal global ptr null, align 8
@cl_optimization_node = internal global ptr null, align 8
@cl_target_option_node = internal global ptr null, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.218 = private unnamed_addr constant [7 x i8] c"tree.c\00", align 1
@.str.219 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@user_label_prefix = external local_unnamed_addr global ptr, align 8
@input_location = external local_unnamed_addr global i32, align 4
@next_debug_decl_uid = internal global i32 0, align 4
@next_decl_uid = internal global i32 0, align 4
@next_type_uid = internal global i32 1, align 4
@targetm = external local_unnamed_addr global %struct.gcc_target, align 8
@compiler_params = external local_unnamed_addr global ptr, align 8
@dconst1 = external global %struct.real_value, align 8
@mode_class = external local_unnamed_addr constant [87 x i8], align 16
@fconst1 = external global [8 x %struct.fixed_value], align 16
@mode_size = external local_unnamed_addr global [87 x i8], align 16
@dconst0 = external global %struct.real_value, align 8
@dconst2 = external global %struct.real_value, align 8
@dconstm1 = external global %struct.real_value, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.220 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@line_table = external local_unnamed_addr global ptr, align 8
@.str.221 = private unnamed_addr constant [52 x i8] c"ignoring attributes applied to %qT after definition\00", align 1
@pass_ipa_free_lang_data = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.222, ptr null, ptr @free_lang_data, ptr null, ptr null, i32 0, i32 21, i32 0, i32 0, i32 0, i32 0, i32 2 } }, align 8
@.str.222 = private unnamed_addr constant [16 x i8] c"*free_lang_data\00", align 1
@in_lto_p = external local_unnamed_addr global i8, align 1
@flag_generate_lto = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@alias_pairs = external local_unnamed_addr global ptr, align 8
@varpool_nodes_queue = external local_unnamed_addr global ptr, align 8
@cfun = external local_unnamed_addr global ptr, align 8
@debug_info_level = external local_unnamed_addr global i32, align 4
@.str.223 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@.str.224 = private unnamed_addr constant [10 x i8] c"may_alias\00", align 1
@.str.225 = private unnamed_addr constant [39 x i8] c"arrays of functions are not meaningful\00", align 1
@.str.226 = private unnamed_addr constant [40 x i8] c"function return type cannot be function\00", align 1
@.str.227 = private unnamed_addr constant [13 x i8] c"complex char\00", align 1
@.str.228 = private unnamed_addr constant [20 x i8] c"complex signed char\00", align 1
@.str.229 = private unnamed_addr constant [22 x i8] c"complex unsigned char\00", align 1
@.str.230 = private unnamed_addr constant [18 x i8] c"complex short int\00", align 1
@.str.231 = private unnamed_addr constant [27 x i8] c"complex short unsigned int\00", align 1
@.str.232 = private unnamed_addr constant [12 x i8] c"complex int\00", align 1
@.str.233 = private unnamed_addr constant [21 x i8] c"complex unsigned int\00", align 1
@.str.234 = private unnamed_addr constant [17 x i8] c"complex long int\00", align 1
@.str.235 = private unnamed_addr constant [26 x i8] c"complex long unsigned int\00", align 1
@.str.236 = private unnamed_addr constant [22 x i8] c"complex long long int\00", align 1
@.str.237 = private unnamed_addr constant [31 x i8] c"complex long long unsigned int\00", align 1
@flag_excess_precision = external local_unnamed_addr global i32, align 4
@ix86_fpmath = external local_unnamed_addr global i32, align 4
@stderr = external local_unnamed_addr global ptr, align 8
@.str.238 = private unnamed_addr constant [26 x i8] c"\0A??? tree nodes created\0A\0A\00", align 1
@.str.239 = private unnamed_addr constant [26 x i8] c"(No per-node statistics)\0A\00", align 1
@.str.240 = private unnamed_addr constant [50 x i8] c"Type hash: size %ld, %ld elements, %f collisions\0A\00", align 1
@.str.241 = private unnamed_addr constant [62 x i8] c"DECL_DEBUG_EXPR  hash: size %ld, %ld elements, %f collisions\0A\00", align 1
@.str.242 = private unnamed_addr constant [62 x i8] c"DECL_VALUE_EXPR  hash: size %ld, %ld elements, %f collisions\0A\00", align 1
@_sch_istable = external local_unnamed_addr constant [256 x i16], align 16
@first_global_object_name = external local_unnamed_addr global ptr, align 8
@libiberty_optr = external local_unnamed_addr global ptr, align 8
@libiberty_len = external local_unnamed_addr global i64, align 8
@libiberty_nptr = external local_unnamed_addr global ptr, align 8
@main_input_filename = external local_unnamed_addr global ptr, align 8
@weak_global_object_name = external local_unnamed_addr global ptr, align 8
@.str.243 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.244 = private unnamed_addr constant [11 x i8] c"_%08X_%08X\00", align 1
@.str.245 = private unnamed_addr constant [15 x i8] c"_GLOBAL__%s_%s\00", align 1
@.str.246 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.247 = private unnamed_addr constant [10 x i8] c"protected\00", align 1
@.str.248 = private unnamed_addr constant [17 x i8] c"__builtin_memcpy\00", align 1
@.str.249 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@.str.250 = private unnamed_addr constant [18 x i8] c"__builtin_memmove\00", align 1
@.str.251 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.252 = private unnamed_addr constant [17 x i8] c"__builtin_memcmp\00", align 1
@.str.253 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@.str.254 = private unnamed_addr constant [17 x i8] c"__builtin_memset\00", align 1
@.str.255 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@.str.256 = private unnamed_addr constant [17 x i8] c"__builtin_alloca\00", align 1
@.str.257 = private unnamed_addr constant [7 x i8] c"alloca\00", align 1
@flag_stack_check = external local_unnamed_addr global i32, align 4
@.str.258 = private unnamed_addr constant [26 x i8] c"__builtin_init_trampoline\00", align 1
@.str.259 = private unnamed_addr constant [28 x i8] c"__builtin_adjust_trampoline\00", align 1
@.str.260 = private unnamed_addr constant [24 x i8] c"__builtin_nonlocal_goto\00", align 1
@.str.261 = private unnamed_addr constant [23 x i8] c"__builtin_setjmp_setup\00", align 1
@.str.262 = private unnamed_addr constant [28 x i8] c"__builtin_setjmp_dispatcher\00", align 1
@.str.263 = private unnamed_addr constant [26 x i8] c"__builtin_setjmp_receiver\00", align 1
@.str.264 = private unnamed_addr constant [21 x i8] c"__builtin_stack_save\00", align 1
@.str.265 = private unnamed_addr constant [24 x i8] c"__builtin_stack_restore\00", align 1
@.str.266 = private unnamed_addr constant [29 x i8] c"__builtin_profile_func_enter\00", align 1
@.str.267 = private unnamed_addr constant [19 x i8] c"profile_func_enter\00", align 1
@.str.268 = private unnamed_addr constant [28 x i8] c"__builtin_profile_func_exit\00", align 1
@.str.269 = private unnamed_addr constant [18 x i8] c"profile_func_exit\00", align 1
@.str.270 = private unnamed_addr constant [26 x i8] c"__builtin_cxa_end_cleanup\00", align 1
@.str.271 = private unnamed_addr constant [18 x i8] c"__cxa_end_cleanup\00", align 1
@.str.272 = private unnamed_addr constant [24 x i8] c"__builtin_unwind_resume\00", align 1
@.str.273 = private unnamed_addr constant [15 x i8] c"_Unwind_Resume\00", align 1
@.str.274 = private unnamed_addr constant [21 x i8] c"__builtin_eh_pointer\00", align 1
@.str.275 = private unnamed_addr constant [20 x i8] c"__builtin_eh_filter\00", align 1
@.str.276 = private unnamed_addr constant [25 x i8] c"__builtin_eh_copy_values\00", align 1
@mode_name = external local_unnamed_addr constant [87 x ptr], align 16
@_sch_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.277 = private unnamed_addr constant [6 x i8] c"__mul\00", align 1
@.str.278 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@built_in_names = external local_unnamed_addr global [721 x ptr], align 16
@.str.279 = private unnamed_addr constant [6 x i8] c"__div\00", align 1
@implicit_built_in_decls = external local_unnamed_addr global [721 x ptr], align 16
@mode_nunits = external local_unnamed_addr constant [87 x i8], align 16
@.str.280 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.281 = private unnamed_addr constant [9 x i8] c"./tree.h\00", align 1
@.str.282 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@gcc_eh_personality_decl = internal global ptr null, align 8
@.str.283 = private unnamed_addr constant [21 x i8] c"__gcc_personality_v0\00", align 1
@gt_ggc_r_gt_tree_h = dso_local local_unnamed_addr constant [5 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @gcc_eh_personality_decl, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @cl_target_option_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @cl_optimization_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab { ptr @int_cst_node, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_ggc_rc_gt_tree_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @init_priority_for_decl, i64 1, i64 8, ptr @gt_ggc_mx_tree_priority_map, ptr @gt_pch_nx_tree_priority_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab { ptr @value_expr_for_decl, i64 1, i64 8, ptr @gt_ggc_mx_tree_map, ptr @gt_pch_nx_tree_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab { ptr @debug_expr_for_decl, i64 1, i64 8, ptr @gt_ggc_mx_tree_map, ptr @gt_pch_nx_tree_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab { ptr @cl_option_hash_table, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @int_cst_hash_table, i64 1, i64 8, ptr @gt_ggc_mx_lang_tree_node, ptr @gt_pch_nx_lang_tree_node, ptr @ggc_marked_p }, %struct.ggc_cache_tab { ptr @type_hash_table, i64 1, i64 8, ptr @gt_ggc_mx_type_hash, ptr @gt_pch_nx_type_hash, ptr @type_hash_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_tree_h = dso_local local_unnamed_addr constant [7 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @init_priority_for_decl, i64 1, i64 8, ptr @gt_ggc_m_P17tree_priority_map4htab, ptr @gt_pch_n_P17tree_priority_map4htab }, %struct.ggc_root_tab { ptr @value_expr_for_decl, i64 1, i64 8, ptr @gt_ggc_m_P8tree_map4htab, ptr @gt_pch_n_P8tree_map4htab }, %struct.ggc_root_tab { ptr @debug_expr_for_decl, i64 1, i64 8, ptr @gt_ggc_m_P8tree_map4htab, ptr @gt_pch_n_P8tree_map4htab }, %struct.ggc_root_tab { ptr @cl_option_hash_table, i64 1, i64 8, ptr @gt_ggc_m_P9tree_node4htab, ptr @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab { ptr @int_cst_hash_table, i64 1, i64 8, ptr @gt_ggc_m_P9tree_node4htab, ptr @gt_pch_n_P9tree_node4htab }, %struct.ggc_root_tab { ptr @type_hash_table, i64 1, i64 8, ptr @gt_ggc_m_P9type_hash4htab, ptr @gt_pch_n_P9type_hash4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@gt_pch_rs_gt_tree_h = dso_local local_unnamed_addr constant [4 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @next_debug_decl_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_type_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab { ptr @next_decl_uid, i64 1, i64 4, ptr null, ptr null }, %struct.ggc_root_tab zeroinitializer], align 16
@switch.table.tree_node_structure_for_code = private unnamed_addr constant [9 x i32] [i32 21, i32 17, i32 14, i32 15, i32 19, i32 16, i32 20, i32 18, i32 11], align 4
@switch.table.tree_code_size = private unnamed_addr constant [9 x i64] [i64 224, i64 128, i64 152, i64 160, i64 120, i64 136, i64 184, i64 128, i64 120], align 8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_ttree() local_unnamed_addr #0 {
  %1 = tail call ptr @htab_create_alloc(i64 noundef 1000, ptr noundef nonnull @type_hash_hash, ptr noundef nonnull @type_hash_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %1, ptr @type_hash_table, align 8, !tbaa !6
  %2 = tail call ptr @htab_create_alloc(i64 noundef 512, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %2, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %3 = tail call ptr @htab_create_alloc(i64 noundef 512, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %3, ptr @value_expr_for_decl, align 8, !tbaa !6
  %4 = tail call ptr @htab_create_alloc(i64 noundef 512, ptr noundef nonnull @tree_map_base_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %4, ptr @init_priority_for_decl, align 8, !tbaa !6
  %5 = tail call ptr @htab_create_alloc(i64 noundef 1024, ptr noundef nonnull @int_cst_hash_hash, ptr noundef nonnull @int_cst_hash_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %5, ptr @int_cst_hash_table, align 8, !tbaa !6
  %6 = tail call ptr @make_node_stat(i32 noundef 23) #24
  store ptr %6, ptr @int_cst_node, align 8, !tbaa !6
  %7 = tail call ptr @htab_create_alloc(i64 noundef 64, ptr noundef nonnull @cl_option_hash_hash, ptr noundef nonnull @cl_option_hash_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #23
  store ptr %7, ptr @cl_option_hash_table, align 8, !tbaa !6
  %8 = tail call ptr @make_node_stat(i32 noundef 186) #24
  store ptr %8, ptr @cl_optimization_node, align 8, !tbaa !6
  %9 = tail call ptr @make_node_stat(i32 noundef 187) #24
  store ptr %9, ptr @cl_target_option_node, align 8, !tbaa !6
  tail call fastcc void @initialize_tree_contains_struct() #24
  %10 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 43), align 8, !tbaa !10
  tail call void %10() #23
  ret void
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @type_hash_hash(ptr nocapture noundef readonly %0) #2 {
  %2 = load i64, ptr %0, align 8, !tbaa !19
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @type_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %0, align 8, !tbaa !19
  %4 = load i64, ptr %1, align 8, !tbaa !19
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %238

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.type_hash, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %struct.type_hash, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  %12 = load i64, ptr %11, align 8
  %13 = xor i64 %12, %9
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %238

16:                                               ; preds = %6
  %17 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %238

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call i32 @attribute_list_equal(ptr noundef %24, ptr noundef %26) #24, !range !23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %238, label %29

29:                                               ; preds = %22
  %30 = load ptr, ptr %7, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !22
  %33 = load ptr, ptr %10, align 8, !tbaa !21
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 7
  %35 = load i32, ptr %34, align 8, !tbaa !22
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %238

37:                                               ; preds = %29
  %38 = load i64, ptr %30, align 8
  %39 = and i64 %38, 65535
  %40 = icmp eq i64 %39, 14
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call i32 @vector_type_mode(ptr noundef nonnull %30) #23
  %43 = load ptr, ptr %10, align 8, !tbaa !21
  br label %49

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %41
  %50 = phi ptr [ %43, %41 ], [ %33, %44 ]
  %51 = phi i32 [ %42, %41 ], [ %48, %44 ]
  %52 = load i64, ptr %50, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 14
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = tail call i32 @vector_type_mode(ptr noundef nonnull %50) #23
  br label %62

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 6
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 16
  %61 = and i32 %60, 255
  br label %62

62:                                               ; preds = %57, %55
  %63 = phi i32 [ %56, %55 ], [ %61, %57 ]
  %64 = icmp eq i32 %51, %63
  br i1 %64, label %65, label %238

65:                                               ; preds = %62
  %66 = load ptr, ptr %7, align 8, !tbaa !21
  %67 = load i64, ptr %66, align 8
  %68 = and i64 %67, 65535
  %69 = icmp eq i64 %68, 13
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 12
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = load ptr, ptr %10, align 8, !tbaa !21
  %74 = getelementptr inbounds %struct.tree_type, ptr %73, i64 0, i32 12
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %72, %75
  br i1 %76, label %77, label %238

77:                                               ; preds = %70, %65
  %78 = trunc i64 %67 to i16
  switch i16 %78, label %229 [
    i16 19, label %238
    i16 13, label %238
    i16 10, label %238
    i16 12, label %238
    i16 14, label %79
    i16 6, label %93
    i16 8, label %117
    i16 9, label %117
    i16 7, label %117
    i16 11, label %136
    i16 5, label %143
    i16 21, label %151
    i16 15, label %178
    i16 16, label %186
    i16 17, label %186
    i16 18, label %186
    i16 20, label %207
  ]

79:                                               ; preds = %77
  %80 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = and i32 %81, 1023
  %83 = zext nneg i32 %82 to i64
  %84 = shl nuw i64 1, %83
  %85 = load ptr, ptr %10, align 8, !tbaa !21
  %86 = getelementptr inbounds %struct.tree_type, ptr %85, i64 0, i32 6
  %87 = load i32, ptr %86, align 4
  %88 = and i32 %87, 1023
  %89 = zext nneg i32 %88 to i64
  %90 = shl nuw i64 1, %89
  %91 = icmp eq i64 %84, %90
  %92 = zext i1 %91 to i32
  br label %238

93:                                               ; preds = %77
  %94 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = load ptr, ptr %10, align 8, !tbaa !21
  %97 = getelementptr inbounds %struct.tree_type, ptr %96, i64 0, i32 1
  %98 = load ptr, ptr %97, align 8, !tbaa !22
  %99 = icmp eq ptr %95, %98
  br i1 %99, label %117, label %100

100:                                              ; preds = %93
  %101 = icmp eq ptr %95, null
  br i1 %101, label %238, label %102

102:                                              ; preds = %100
  %103 = load i64, ptr %95, align 8
  %104 = and i64 %103, 65535
  %105 = icmp ne i64 %104, 2
  %106 = icmp eq ptr %98, null
  %107 = or i1 %106, %105
  br i1 %107, label %238, label %108

108:                                              ; preds = %102
  %109 = load i64, ptr %98, align 8
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 2
  br i1 %111, label %112, label %238

112:                                              ; preds = %108
  %113 = tail call i32 @type_list_equal(ptr noundef nonnull %95, ptr noundef nonnull %98) #24, !range !23
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %238, label %115

115:                                              ; preds = %112
  %116 = load ptr, ptr %7, align 8, !tbaa !21
  br label %117

117:                                              ; preds = %115, %93, %77, %77, %77
  %118 = phi ptr [ %116, %115 ], [ %66, %93 ], [ %66, %77 ], [ %66, %77 ], [ %66, %77 ]
  %119 = getelementptr inbounds %struct.tree_type, ptr %118, i64 0, i32 14
  %120 = load ptr, ptr %119, align 8, !tbaa !22
  %121 = load ptr, ptr %10, align 8, !tbaa !21
  %122 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 14
  %123 = load ptr, ptr %122, align 8, !tbaa !22
  %124 = icmp eq ptr %120, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %117
  %126 = tail call i32 @tree_int_cst_equal(ptr noundef %120, ptr noundef %123) #24, !range !23
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %238, label %128

128:                                              ; preds = %125, %117
  %129 = getelementptr inbounds %struct.tree_type, ptr %118, i64 0, i32 13
  %130 = load ptr, ptr %129, align 8, !tbaa !22
  %131 = getelementptr inbounds %struct.tree_type, ptr %121, i64 0, i32 13
  %132 = load ptr, ptr %131, align 8, !tbaa !22
  %133 = icmp eq ptr %130, %132
  br i1 %133, label %238, label %134

134:                                              ; preds = %128
  %135 = tail call i32 @tree_int_cst_equal(ptr noundef %130, ptr noundef %132) #24, !range !23
  br label %238

136:                                              ; preds = %77
  %137 = load ptr, ptr %10, align 8, !tbaa !21
  %138 = load i64, ptr %137, align 8
  %139 = xor i64 %138, %67
  %140 = and i64 %139, 2147483648
  %141 = icmp eq i64 %140, 0
  %142 = zext i1 %141 to i32
  br label %238

143:                                              ; preds = %77
  %144 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 14
  %145 = load ptr, ptr %144, align 8, !tbaa !22
  %146 = load ptr, ptr %10, align 8, !tbaa !21
  %147 = getelementptr inbounds %struct.tree_type, ptr %146, i64 0, i32 14
  %148 = load ptr, ptr %147, align 8, !tbaa !22
  %149 = icmp eq ptr %145, %148
  %150 = zext i1 %149 to i32
  br label %238

151:                                              ; preds = %77
  %152 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 14
  %153 = load ptr, ptr %152, align 8, !tbaa !22
  %154 = load ptr, ptr %10, align 8, !tbaa !21
  %155 = getelementptr inbounds %struct.tree_type, ptr %154, i64 0, i32 14
  %156 = load ptr, ptr %155, align 8, !tbaa !22
  %157 = icmp eq ptr %153, %156
  br i1 %157, label %158, label %238

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !22
  %161 = getelementptr inbounds %struct.tree_type, ptr %154, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !22
  %163 = icmp eq ptr %160, %162
  br i1 %163, label %238, label %164

164:                                              ; preds = %158
  %165 = icmp eq ptr %160, null
  br i1 %165, label %238, label %166

166:                                              ; preds = %164
  %167 = load i64, ptr %160, align 8
  %168 = and i64 %167, 65535
  %169 = icmp ne i64 %168, 2
  %170 = icmp eq ptr %162, null
  %171 = or i1 %170, %169
  br i1 %171, label %238, label %172

172:                                              ; preds = %166
  %173 = load i64, ptr %162, align 8
  %174 = and i64 %173, 65535
  %175 = icmp eq i64 %174, 2
  br i1 %175, label %176, label %238

176:                                              ; preds = %172
  %177 = tail call i32 @type_list_equal(ptr noundef nonnull %160, ptr noundef nonnull %162) #24, !range !23
  br label %238

178:                                              ; preds = %77
  %179 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %180 = load ptr, ptr %179, align 8, !tbaa !22
  %181 = load ptr, ptr %10, align 8, !tbaa !21
  %182 = getelementptr inbounds %struct.tree_type, ptr %181, i64 0, i32 1
  %183 = load ptr, ptr %182, align 8, !tbaa !22
  %184 = icmp eq ptr %180, %183
  %185 = zext i1 %184 to i32
  br label %238

186:                                              ; preds = %77, %77, %77
  %187 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !22
  %189 = load ptr, ptr %10, align 8, !tbaa !21
  %190 = getelementptr inbounds %struct.tree_type, ptr %189, i64 0, i32 1
  %191 = load ptr, ptr %190, align 8, !tbaa !22
  %192 = icmp eq ptr %188, %191
  br i1 %192, label %238, label %193

193:                                              ; preds = %186
  %194 = icmp eq ptr %188, null
  br i1 %194, label %238, label %195

195:                                              ; preds = %193
  %196 = load i64, ptr %188, align 8
  %197 = and i64 %196, 65535
  %198 = icmp ne i64 %197, 2
  %199 = icmp eq ptr %191, null
  %200 = or i1 %199, %198
  br i1 %200, label %238, label %201

201:                                              ; preds = %195
  %202 = load i64, ptr %191, align 8
  %203 = and i64 %202, 65535
  %204 = icmp eq i64 %203, 2
  br i1 %204, label %205, label %238

205:                                              ; preds = %201
  %206 = tail call i32 @type_list_equal(ptr noundef nonnull %188, ptr noundef nonnull %191) #24, !range !23
  br label %238

207:                                              ; preds = %77
  %208 = getelementptr inbounds %struct.tree_type, ptr %66, i64 0, i32 1
  %209 = load ptr, ptr %208, align 8, !tbaa !22
  %210 = load ptr, ptr %10, align 8, !tbaa !21
  %211 = getelementptr inbounds %struct.tree_type, ptr %210, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !22
  %213 = icmp eq ptr %209, %212
  br i1 %213, label %230, label %214

214:                                              ; preds = %207
  %215 = icmp eq ptr %209, null
  br i1 %215, label %238, label %216

216:                                              ; preds = %214
  %217 = load i64, ptr %209, align 8
  %218 = and i64 %217, 65535
  %219 = icmp ne i64 %218, 2
  %220 = icmp eq ptr %212, null
  %221 = or i1 %220, %219
  br i1 %221, label %238, label %222

222:                                              ; preds = %216
  %223 = load i64, ptr %212, align 8
  %224 = and i64 %223, 65535
  %225 = icmp eq i64 %224, 2
  br i1 %225, label %226, label %238

226:                                              ; preds = %222
  %227 = tail call i32 @type_list_equal(ptr noundef nonnull %209, ptr noundef nonnull %212) #24, !range !23
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %238, label %230

229:                                              ; preds = %77
  br label %238

230:                                              ; preds = %207, %226
  %231 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 11), align 8, !tbaa !24
  %232 = icmp eq ptr %231, null
  br i1 %232, label %238, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %7, align 8, !tbaa !21
  %235 = load ptr, ptr %10, align 8, !tbaa !21
  %236 = tail call zeroext i8 %231(ptr noundef %234, ptr noundef %235) #23
  %237 = zext i8 %236 to i32
  br label %238

238:                                              ; preds = %230, %214, %216, %222, %226, %186, %205, %201, %195, %193, %151, %164, %166, %172, %176, %158, %125, %134, %128, %100, %102, %108, %112, %77, %77, %77, %77, %2, %6, %16, %22, %29, %62, %70, %233, %229, %178, %143, %136, %79
  %239 = phi i32 [ 0, %229 ], [ %237, %233 ], [ %185, %178 ], [ %150, %143 ], [ %142, %136 ], [ %92, %79 ], [ 0, %70 ], [ 0, %62 ], [ 0, %29 ], [ 0, %22 ], [ 0, %16 ], [ 0, %6 ], [ 0, %2 ], [ 1, %77 ], [ 1, %77 ], [ 1, %77 ], [ 1, %77 ], [ 0, %112 ], [ 0, %108 ], [ 0, %102 ], [ 0, %100 ], [ 0, %125 ], [ 1, %128 ], [ %135, %134 ], [ 0, %151 ], [ 1, %158 ], [ 0, %172 ], [ 0, %166 ], [ 0, %164 ], [ %177, %176 ], [ 1, %186 ], [ 0, %201 ], [ 0, %195 ], [ 0, %193 ], [ %206, %205 ], [ 0, %226 ], [ 0, %222 ], [ 0, %216 ], [ 0, %214 ], [ 1, %230 ]
  ret i32 %239
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #1

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @tree_map_hash(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.tree_map, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !25
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local i32 @tree_map_base_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !29
  %4 = load ptr, ptr %1, align 8, !tbaa !29
  %5 = icmp eq ptr %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_map_base_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %3 = load ptr, ptr %0, align 8, !tbaa !29
  %4 = tail call i32 %2(ptr noundef %3) #23
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @int_cst_hash_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !22
  %5 = load i64, ptr %2, align 8, !tbaa !22
  %6 = xor i64 %5, %4
  %7 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call i32 %7(ptr noundef %9) #23
  %11 = trunc i64 %6 to i32
  %12 = xor i32 %10, %11
  ret i32 %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @int_cst_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !22
  %13 = icmp eq i64 %10, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !22
  %18 = load i64, ptr %15, align 8, !tbaa !22
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  br label %21

21:                                               ; preds = %14, %8, %2
  %22 = phi i32 [ 0, %8 ], [ 0, %2 ], [ %20, %14 ]
  ret i32 %22
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_node_stat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  %5 = tail call i64 @tree_code_size(i32 noundef %0) #24
  %6 = tail call ptr @ggc_alloc_stat(i64 noundef %5) #23
  tail call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 %5, i1 false)
  %7 = zext i32 %0 to i64
  %8 = load i64, ptr %6, align 8
  %9 = and i64 %7, 65535
  %10 = and i64 %8, -65536
  %11 = or disjoint i64 %10, %9
  store i64 %11, ptr %6, align 8
  switch i32 %4, label %57 [
    i32 8, label %12
    i32 3, label %14
    i32 2, label %41
    i32 1, label %52
    i32 10, label %54
  ]

12:                                               ; preds = %1
  %13 = or i64 %11, 65536
  store i64 %13, ptr %6, align 8
  br label %57

14:                                               ; preds = %1
  %15 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %7, i64 10
  %16 = load i8, ptr %15, align 2, !tbaa !22
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = icmp eq i32 %0, 29
  %20 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 3
  br i1 %19, label %21, label %26

21:                                               ; preds = %18
  store i32 8, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, -256
  %25 = or disjoint i64 %24, 14
  store i64 %25, ptr %22, align 8
  br label %27

26:                                               ; preds = %18
  store i32 1, ptr %20, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %21, %26, %14
  %28 = load i32, ptr @input_location, align 4, !tbaa !30
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 1
  store i32 %28, ptr %29, align 8, !tbaa !22
  %30 = icmp eq i64 %9, 37
  %31 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 2
  br i1 %30, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, ptr @next_debug_decl_uid, align 4, !tbaa !30
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr @next_debug_decl_uid, align 4, !tbaa !30
  store i32 %34, ptr %31, align 4
  br label %57

35:                                               ; preds = %27
  %36 = load i32, ptr @next_decl_uid, align 4, !tbaa !30
  %37 = add nsw i32 %36, 1
  store i32 %37, ptr @next_decl_uid, align 4, !tbaa !30
  store i32 %36, ptr %31, align 4
  %38 = icmp eq i64 %9, 30
  br i1 %38, label %39, label %57

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_label_decl, ptr %6, i64 0, i32 1
  store i32 -1, ptr %40, align 8, !tbaa !22
  br label %57

41:                                               ; preds = %1
  %42 = load i32, ptr @next_type_uid, align 4, !tbaa !30
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr @next_type_uid, align 4, !tbaa !30
  %44 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 5
  store i32 %42, ptr %44, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 7
  store i32 8, ptr %45, align 8, !tbaa !22
  %46 = and i64 %11, -4398046511105
  store i64 %46, ptr %6, align 8
  %47 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 16
  store ptr %6, ptr %47, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 19
  store ptr %6, ptr %48, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 4
  store ptr null, ptr %49, align 8, !tbaa !22
  %50 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 15), align 8, !tbaa !31
  tail call void %50(ptr noundef nonnull %6) #23
  %51 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 8
  store i32 -1, ptr %51, align 4, !tbaa !22
  br label %57

52:                                               ; preds = %1
  %53 = or i64 %11, 131072
  store i64 %53, ptr %6, align 8
  br label %57

54:                                               ; preds = %1
  switch i32 %0, label %57 [
    i32 54, label %55
    i32 53, label %55
    i32 129, label %55
    i32 125, label %55
    i32 126, label %55
    i32 127, label %55
    i32 128, label %55
  ]

55:                                               ; preds = %54, %54, %54, %54, %54, %54, %54
  %56 = or i64 %11, 65536
  store i64 %56, ptr %6, align 8
  br label %57

57:                                               ; preds = %32, %1, %55, %54, %35, %39, %52, %41, %12
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cl_option_hash_hash(ptr nocapture noundef readonly %0) #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 186, label %4
    i16 187, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_optimization_option, ptr %0, i64 0, i32 1
  br label %9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_target_option, ptr %0, i64 0, i32 1
  br label %9

8:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 10485, ptr noundef nonnull @.str.219) #23
  br label %27

9:                                                ; preds = %4, %6
  %10 = phi ptr [ %7, %6 ], [ %5, %4 ]
  %11 = phi i64 [ 24, %6 ], [ 184, %4 ]
  br label %12

12:                                               ; preds = %9, %12
  %13 = phi i32 [ %24, %12 ], [ 0, %9 ]
  %14 = phi i64 [ %25, %12 ], [ 0, %9 ]
  %15 = getelementptr inbounds i8, ptr %10, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !22
  %17 = icmp eq i8 %16, 0
  %18 = shl i32 %13, 4
  %19 = shl nuw nsw i64 %14, 2
  %20 = sext i8 %16 to i64
  %21 = or i64 %19, %20
  %22 = trunc i64 %21 to i32
  %23 = xor i32 %18, %22
  %24 = select i1 %17, i32 %13, i32 %23
  %25 = add nuw nsw i64 %14, 1
  %26 = icmp eq i64 %25, %11
  br i1 %26, label %27, label %12, !llvm.loop !43

27:                                               ; preds = %12, %8
  %28 = phi i32 [ 0, %8 ], [ %24, %12 ]
  ret i32 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @cl_option_hash_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i64, ptr %0, align 8
  %4 = load i64, ptr %1, align 8
  %5 = xor i64 %4, %3
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %2
  %9 = trunc i64 %3 to i16
  switch i16 %9, label %16 [
    i16 186, label %10
    i16 187, label %13
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_optimization_option, ptr %0, i64 0, i32 1
  %12 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1
  br label %17

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_target_option, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.tree_target_option, ptr %1, i64 0, i32 1
  br label %17

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 10527, ptr noundef nonnull @.str.219) #23
  br label %17

17:                                               ; preds = %13, %16, %10
  %18 = phi ptr [ %11, %10 ], [ %14, %13 ], [ undef, %16 ]
  %19 = phi ptr [ %12, %10 ], [ %15, %13 ], [ undef, %16 ]
  %20 = phi i64 [ 184, %10 ], [ 24, %13 ], [ undef, %16 ]
  %21 = tail call i32 @bcmp(ptr %18, ptr %19, i64 %20)
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  br label %24

24:                                               ; preds = %2, %17
  %25 = phi i32 [ %23, %17 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @initialize_tree_contains_struct() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %43
  %2 = phi i64 [ 0, %0 ], [ %44, %43 ]
  %3 = trunc i64 %2 to i32
  %4 = tail call fastcc i32 @tree_node_structure_for_code(i32 noundef %3) #24, !range !45
  %5 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2
  %6 = zext nneg i32 %4 to i64
  %7 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 %6
  store i8 1, ptr %7, align 1, !tbaa !22
  switch i32 %4, label %42 [
    i32 1, label %8
    i32 2, label %9
    i32 3, label %9
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 8, label %9
    i32 9, label %9
    i32 22, label %9
    i32 23, label %9
    i32 24, label %9
    i32 25, label %9
    i32 26, label %9
    i32 27, label %9
    i32 28, label %9
    i32 29, label %9
    i32 30, label %9
    i32 31, label %9
    i32 32, label %9
    i32 33, label %9
    i32 10, label %11
    i32 11, label %14
    i32 12, label %18
    i32 13, label %24
    i32 16, label %24
    i32 17, label %24
    i32 18, label %24
    i32 19, label %24
    i32 14, label %29
    i32 15, label %33
    i32 20, label %39
    i32 21, label %39
  ]

8:                                                ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  br label %43

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %10 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %10, align 1, !tbaa !22
  br label %43

11:                                               ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %12 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %12, align 1, !tbaa !22
  %13 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %13, align 1, !tbaa !22
  br label %43

14:                                               ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %15 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %15, align 1, !tbaa !22
  %16 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %16, align 1, !tbaa !22
  %17 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 10
  store i8 1, ptr %17, align 2, !tbaa !22
  br label %43

18:                                               ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %19 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %19, align 1, !tbaa !22
  %20 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %20, align 1, !tbaa !22
  %21 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 10
  store i8 1, ptr %21, align 2, !tbaa !22
  %22 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 11
  store i8 1, ptr %22, align 1, !tbaa !22
  %23 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 13
  store i8 1, ptr %23, align 1, !tbaa !22
  br label %43

24:                                               ; preds = %1, %1, %1, %1, %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %25 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %25, align 1, !tbaa !22
  %26 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %26, align 1, !tbaa !22
  %27 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 10
  store i8 1, ptr %27, align 2, !tbaa !22
  %28 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 11
  store i8 1, ptr %28, align 1, !tbaa !22
  br label %43

29:                                               ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %30 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %30, align 1, !tbaa !22
  %31 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %31, align 1, !tbaa !22
  %32 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 10
  store i8 1, ptr %32, align 2, !tbaa !22
  br label %43

33:                                               ; preds = %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %34 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %34, align 1, !tbaa !22
  %35 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  store i8 1, ptr %35, align 1, !tbaa !22
  %36 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 10
  store i8 1, ptr %36, align 2, !tbaa !22
  %37 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 11
  store i8 1, ptr %37, align 1, !tbaa !22
  %38 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 13
  store i8 1, ptr %38, align 1, !tbaa !22
  br label %43

39:                                               ; preds = %1, %1
  store i8 1, ptr %5, align 16, !tbaa !22
  %40 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 1
  store i8 1, ptr %40, align 1, !tbaa !22
  %41 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %2, i64 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %41, i8 1, i64 5, i1 false)
  br label %43

42:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 473, ptr noundef nonnull @.str.219) #23
  br label %43

43:                                               ; preds = %42, %39, %33, %29, %24, %18, %14, %11, %9, %8
  %44 = add nuw nsw i64 %2, 1
  %45 = icmp eq i64 %44, 188
  br i1 %45, label %46, label %1, !llvm.loop !46

46:                                               ; preds = %43
  %47 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 12), align 4, !tbaa !22
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 478, ptr noundef nonnull @.str.219) #23
  br label %50

50:                                               ; preds = %46, %49
  %51 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 40, i64 12), align 4, !tbaa !22
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 479, ptr noundef nonnull @.str.219) #23
  br label %54

54:                                               ; preds = %50, %53
  %55 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 35, i64 12), align 4, !tbaa !22
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 480, ptr noundef nonnull @.str.219) #23
  br label %58

58:                                               ; preds = %54, %57
  %59 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 33, i64 10), align 2, !tbaa !22
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 481, ptr noundef nonnull @.str.219) #23
  br label %62

62:                                               ; preds = %58, %61
  %63 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 10), align 2, !tbaa !22
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 482, ptr noundef nonnull @.str.219) #23
  br label %66

66:                                               ; preds = %62, %65
  %67 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 34, i64 10), align 2, !tbaa !22
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 483, ptr noundef nonnull @.str.219) #23
  br label %70

70:                                               ; preds = %66, %69
  %71 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 36, i64 10), align 2, !tbaa !22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 484, ptr noundef nonnull @.str.219) #23
  br label %74

74:                                               ; preds = %70, %73
  %75 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 10), align 2, !tbaa !22
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 485, ptr noundef nonnull @.str.219) #23
  br label %78

78:                                               ; preds = %74, %77
  %79 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 35, i64 10), align 2, !tbaa !22
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 486, ptr noundef nonnull @.str.219) #23
  br label %82

82:                                               ; preds = %78, %81
  %83 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 40, i64 10), align 2, !tbaa !22
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 487, ptr noundef nonnull @.str.219) #23
  br label %86

86:                                               ; preds = %82, %85
  %87 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 30, i64 10), align 2, !tbaa !22
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 488, ptr noundef nonnull @.str.219) #23
  br label %90

90:                                               ; preds = %86, %89
  %91 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 31, i64 10), align 2, !tbaa !22
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 489, ptr noundef nonnull @.str.219) #23
  br label %94

94:                                               ; preds = %90, %93
  %95 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 33, i64 11), align 1, !tbaa !22
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 490, ptr noundef nonnull @.str.219) #23
  br label %98

98:                                               ; preds = %94, %97
  %99 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !22
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 491, ptr noundef nonnull @.str.219) #23
  br label %102

102:                                              ; preds = %98, %101
  %103 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 34, i64 11), align 1, !tbaa !22
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 492, ptr noundef nonnull @.str.219) #23
  br label %106

106:                                              ; preds = %102, %105
  %107 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 36, i64 11), align 1, !tbaa !22
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 493, ptr noundef nonnull @.str.219) #23
  br label %110

110:                                              ; preds = %106, %109
  %111 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 11), align 1, !tbaa !22
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 494, ptr noundef nonnull @.str.219) #23
  br label %114

114:                                              ; preds = %110, %113
  %115 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 30, i64 11), align 1, !tbaa !22
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 495, ptr noundef nonnull @.str.219) #23
  br label %118

118:                                              ; preds = %114, %117
  %119 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 33, i64 9), align 1, !tbaa !22
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 496, ptr noundef nonnull @.str.219) #23
  br label %122

122:                                              ; preds = %118, %121
  %123 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 9), align 1, !tbaa !22
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 497, ptr noundef nonnull @.str.219) #23
  br label %126

126:                                              ; preds = %122, %125
  %127 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 34, i64 9), align 1, !tbaa !22
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 498, ptr noundef nonnull @.str.219) #23
  br label %130

130:                                              ; preds = %126, %129
  %131 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 36, i64 9), align 1, !tbaa !22
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %130
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 499, ptr noundef nonnull @.str.219) #23
  br label %134

134:                                              ; preds = %130, %133
  %135 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 9), align 1, !tbaa !22
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 500, ptr noundef nonnull @.str.219) #23
  br label %138

138:                                              ; preds = %134, %137
  %139 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 35, i64 9), align 1, !tbaa !22
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %138
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 501, ptr noundef nonnull @.str.219) #23
  br label %142

142:                                              ; preds = %138, %141
  %143 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 40, i64 9), align 1, !tbaa !22
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %142
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 502, ptr noundef nonnull @.str.219) #23
  br label %146

146:                                              ; preds = %142, %145
  %147 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 30, i64 9), align 1, !tbaa !22
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 503, ptr noundef nonnull @.str.219) #23
  br label %150

150:                                              ; preds = %146, %149
  %151 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 31, i64 9), align 1, !tbaa !22
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 504, ptr noundef nonnull @.str.219) #23
  br label %154

154:                                              ; preds = %150, %153
  %155 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 13), align 1, !tbaa !22
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 505, ptr noundef nonnull @.str.219) #23
  br label %158

158:                                              ; preds = %154, %157
  %159 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 13), align 1, !tbaa !22
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 506, ptr noundef nonnull @.str.219) #23
  br label %162

162:                                              ; preds = %158, %161
  %163 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 35, i64 13), align 1, !tbaa !22
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %162
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 507, ptr noundef nonnull @.str.219) #23
  br label %166

166:                                              ; preds = %162, %165
  %167 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 40, i64 13), align 1, !tbaa !22
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 508, ptr noundef nonnull @.str.219) #23
  br label %170

170:                                              ; preds = %166, %169
  %171 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 15), align 1, !tbaa !22
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 509, ptr noundef nonnull @.str.219) #23
  br label %174

174:                                              ; preds = %170, %173
  %175 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 31, i64 14), align 2, !tbaa !22
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %174
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 510, ptr noundef nonnull @.str.219) #23
  br label %178

178:                                              ; preds = %174, %177
  %179 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 34, i64 16), align 16, !tbaa !22
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 511, ptr noundef nonnull @.str.219) #23
  br label %182

182:                                              ; preds = %178, %181
  %183 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 30, i64 17), align 1, !tbaa !22
  %184 = icmp eq i8 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %182
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 512, ptr noundef nonnull @.str.219) #23
  br label %186

186:                                              ; preds = %182, %185
  %187 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 36, i64 18), align 2, !tbaa !22
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 513, ptr noundef nonnull @.str.219) #23
  br label %190

190:                                              ; preds = %186, %189
  %191 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 33, i64 19), align 1, !tbaa !22
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %190
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 514, ptr noundef nonnull @.str.219) #23
  br label %194

194:                                              ; preds = %190, %193
  %195 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 35, i64 20), align 4, !tbaa !22
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 515, ptr noundef nonnull @.str.219) #23
  br label %198

198:                                              ; preds = %194, %197
  %199 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 29, i64 21), align 1, !tbaa !22
  %200 = icmp eq i8 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 516, ptr noundef nonnull @.str.219) #23
  br label %202

202:                                              ; preds = %198, %201
  %203 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 39, i64 9), align 1, !tbaa !22
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 517, ptr noundef nonnull @.str.219) #23
  br label %206

206:                                              ; preds = %202, %205
  %207 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 39, i64 10), align 2, !tbaa !22
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 518, ptr noundef nonnull @.str.219) #23
  br label %210

210:                                              ; preds = %206, %209
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @attribute_list_equal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @attribute_list_contained(ptr noundef %0, ptr noundef %1) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @attribute_list_contained(ptr noundef %1, ptr noundef %0) #24
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ 0, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @type_list_equal(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %39

6:                                                ; preds = %2, %31
  %7 = phi ptr [ %35, %31 ], [ %1, %2 ]
  %8 = phi ptr [ %33, %31 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %31, label %20

20:                                               ; preds = %14
  %21 = tail call i32 @simple_cst_equal(ptr noundef %16, ptr noundef %18) #24, !range !47
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load ptr, ptr %15, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = load ptr, ptr %17, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %26, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %14, %23
  %32 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp ne ptr %33, null
  %37 = icmp ne ptr %35, null
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %6, label %39, !llvm.loop !48

39:                                               ; preds = %31, %2
  %40 = phi ptr [ %0, %2 ], [ %33, %31 ]
  %41 = phi ptr [ %1, %2 ], [ %35, %31 ]
  %42 = icmp eq ptr %40, %41
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %6, %20, %23, %39
  %45 = phi i32 [ %43, %39 ], [ 0, %23 ], [ 0, %20 ], [ 0, %6 ]
  ret i32 %45
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @tree_int_cst_equal(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #2 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %0, null
  %6 = icmp eq ptr %1, null
  %7 = or i1 %5, %6
  br i1 %7, label %29, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 23
  br i1 %11, label %12, label %28

12:                                               ; preds = %8
  %13 = load i64, ptr %1, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 23
  br i1 %15, label %16, label %28

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !22
  %21 = icmp eq i64 %18, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !22
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %29, label %28

28:                                               ; preds = %22, %16, %12, %8
  br label %29

29:                                               ; preds = %22, %4, %2, %28
  %30 = phi i32 [ 0, %28 ], [ 1, %2 ], [ 0, %4 ], [ 1, %22 ]
  ret i32 %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @tree_node_structure_for_code(i32 noundef %0) unnamed_addr #0 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  switch i32 %4, label %9 [
    i32 3, label %5
    i32 2, label %33
    i32 4, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 10, label %8
    i32 8, label %8
    i32 9, label %8
  ]

5:                                                ; preds = %1
  %6 = add i32 %0, -29
  %7 = icmp ult i32 %6, 9
  br i1 %7, label %29, label %33

8:                                                ; preds = %1, %1, %1, %1, %1, %1, %1
  br label %33

9:                                                ; preds = %1
  switch i32 %0, label %28 [
    i32 23, label %33
    i32 24, label %10
    i32 25, label %11
    i32 26, label %12
    i32 27, label %13
    i32 28, label %14
    i32 0, label %15
    i32 1, label %16
    i32 2, label %17
    i32 3, label %18
    i32 141, label %19
    i32 62, label %20
    i32 147, label %21
    i32 4, label %22
    i32 51, label %23
    i32 149, label %24
    i32 163, label %25
    i32 186, label %26
    i32 187, label %27
  ]

10:                                               ; preds = %9
  br label %33

11:                                               ; preds = %9
  br label %33

12:                                               ; preds = %9
  br label %33

13:                                               ; preds = %9
  br label %33

14:                                               ; preds = %9
  br label %33

15:                                               ; preds = %9
  br label %33

16:                                               ; preds = %9
  br label %33

17:                                               ; preds = %9
  br label %33

18:                                               ; preds = %9
  br label %33

19:                                               ; preds = %9
  br label %33

20:                                               ; preds = %9
  br label %33

21:                                               ; preds = %9
  br label %33

22:                                               ; preds = %9
  br label %33

23:                                               ; preds = %9
  br label %33

24:                                               ; preds = %9
  br label %33

25:                                               ; preds = %9
  br label %33

26:                                               ; preds = %9
  br label %33

27:                                               ; preds = %9
  br label %33

28:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 341, ptr noundef nonnull @.str.219) #23
  br label %33

29:                                               ; preds = %5
  %30 = zext nneg i32 %6 to i64
  %31 = getelementptr inbounds [9 x i32], ptr @switch.table.tree_node_structure_for_code, i64 0, i64 %30
  %32 = load i32, ptr %31, align 4
  br label %33

33:                                               ; preds = %5, %29, %9, %1, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %8
  %34 = phi i32 [ 0, %28 ], [ 33, %27 ], [ 32, %26 ], [ 31, %25 ], [ 28, %24 ], [ 30, %23 ], [ 27, %22 ], [ 29, %21 ], [ 1, %20 ], [ 26, %19 ], [ 24, %18 ], [ 23, %17 ], [ 8, %16 ], [ 1, %15 ], [ 6, %14 ], [ 5, %13 ], [ 7, %12 ], [ 4, %11 ], [ 3, %10 ], [ 25, %8 ], [ 22, %1 ], [ 2, %9 ], [ %32, %29 ], [ 12, %5 ]
  ret i32 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decl_assembler_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %3, i64 13
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %1
  %12 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 16), align 8, !tbaa !49
  tail call void %12(ptr noundef nonnull %0) #23
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %11, %7
  %16 = phi ptr [ %14, %11 ], [ %9, %7 ]
  ret ptr %16
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @decl_assembler_name_equal(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call ptr @decl_assembler_name(ptr noundef %0) #24
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %50, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_identifier, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load i8, ptr %7, align 1, !tbaa !22
  %11 = icmp eq i8 %10, 42
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = load ptr, ptr @user_label_prefix, align 8, !tbaa !6
  %14 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #24
  %15 = getelementptr inbounds i8, ptr %7, i64 1
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @strncmp(ptr noundef nonnull %15, ptr noundef %13, i64 noundef %14) #24
  %19 = icmp ne i32 %18, 0
  %20 = getelementptr inbounds i8, ptr %15, i64 %14
  %21 = select i1 %19, ptr %7, ptr %20
  br label %22

22:                                               ; preds = %17, %5
  %23 = phi i1 [ true, %5 ], [ %19, %17 ]
  %24 = phi ptr [ %7, %5 ], [ %21, %17 ]
  %25 = load i8, ptr %9, align 1, !tbaa !22
  %26 = icmp eq i8 %25, 42
  br i1 %26, label %30, label %43

27:                                               ; preds = %12
  %28 = load i8, ptr %9, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 42
  br i1 %29, label %30, label %44

30:                                               ; preds = %27, %22
  %31 = phi ptr [ %15, %27 ], [ %24, %22 ]
  %32 = phi i1 [ false, %27 ], [ %23, %22 ]
  %33 = load ptr, ptr @user_label_prefix, align 8, !tbaa !6
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %33) #24
  %35 = getelementptr inbounds i8, ptr %9, i64 1
  %36 = icmp eq i64 %34, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = tail call i32 @strncmp(ptr noundef nonnull %35, ptr noundef %33, i64 noundef %34) #24
  %39 = icmp ne i32 %38, 0
  %40 = getelementptr inbounds i8, ptr %35, i64 %34
  %41 = select i1 %39, i1 %32, i1 false
  %42 = select i1 %39, ptr %9, ptr %40
  br i1 %41, label %50, label %44

43:                                               ; preds = %22
  br i1 %23, label %50, label %44

44:                                               ; preds = %27, %37, %30, %43
  %45 = phi ptr [ %24, %43 ], [ %31, %30 ], [ %31, %37 ], [ %15, %27 ]
  %46 = phi ptr [ %9, %43 ], [ %35, %30 ], [ %42, %37 ], [ %9, %27 ]
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %45, ptr noundef nonnull dereferenceable(1) %46) #24
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i8
  br label %50

50:                                               ; preds = %37, %43, %2, %44
  %51 = phi i8 [ %49, %44 ], [ 1, %2 ], [ 0, %43 ], [ 0, %37 ]
  ret i8 %51
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @decl_assembler_name_hash(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_identifier, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load i8, ptr %3, align 1, !tbaa !22
  %5 = icmp eq i8 %4, 42
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds i8, ptr %3, i64 1
  %8 = load ptr, ptr @user_label_prefix, align 8, !tbaa !6
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #24
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @strncmp(ptr noundef nonnull %7, ptr noundef %8, i64 noundef %9) #24
  %13 = icmp eq i32 %12, 0
  %14 = select i1 %13, i64 %9, i64 0
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  br label %16

16:                                               ; preds = %1, %6, %11
  %17 = phi ptr [ %7, %6 ], [ %15, %11 ], [ %3, %1 ]
  %18 = tail call i32 @htab_hash_string(ptr noundef nonnull %17) #23
  ret i32 %18
}

; Function Attrs: optsize
declare i32 @htab_hash_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @tree_code_size(i32 noundef %0) local_unnamed_addr #0 {
  %2 = sext i32 %0 to i64
  %3 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  switch i32 %4, label %35 [
    i32 3, label %5
    i32 2, label %40
    i32 4, label %8
    i32 10, label %8
    i32 8, label %8
    i32 5, label %8
    i32 6, label %8
    i32 7, label %8
    i32 1, label %14
    i32 0, label %22
  ]

5:                                                ; preds = %1
  %6 = add i32 %0, -29
  %7 = icmp ult i32 %6, 9
  br i1 %7, label %36, label %40

8:                                                ; preds = %1, %1, %1, %1, %1, %1
  %9 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %2
  %10 = load i8, ptr %9, align 1, !tbaa !22
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = add nuw nsw i64 %12, 40
  br label %40

14:                                               ; preds = %1
  switch i32 %0, label %19 [
    i32 23, label %40
    i32 24, label %15
    i32 25, label %16
    i32 26, label %40
    i32 27, label %17
    i32 28, label %18
  ]

15:                                               ; preds = %14
  br label %40

16:                                               ; preds = %14
  br label %40

17:                                               ; preds = %14
  br label %40

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 706, ptr noundef nonnull @.str.219) #23
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 3), align 8, !tbaa !50
  %21 = tail call i64 %20(i32 noundef %0) #23
  br label %40

22:                                               ; preds = %1
  switch i32 %0, label %32 [
    i32 1, label %23
    i32 2, label %40
    i32 0, label %25
    i32 62, label %25
    i32 3, label %26
    i32 163, label %26
    i32 141, label %27
    i32 147, label %40
    i32 4, label %28
    i32 51, label %29
    i32 186, label %30
    i32 187, label %31
  ]

23:                                               ; preds = %22
  %24 = load i64, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 1), align 8, !tbaa !51
  br label %40

25:                                               ; preds = %22, %22
  br label %40

26:                                               ; preds = %22, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 721, ptr noundef nonnull @.str.219) #23
  br label %27

27:                                               ; preds = %22, %26
  br label %40

28:                                               ; preds = %22
  br label %40

29:                                               ; preds = %22
  br label %40

30:                                               ; preds = %22
  br label %40

31:                                               ; preds = %22
  br label %40

32:                                               ; preds = %22
  %33 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 3), align 8, !tbaa !50
  %34 = tail call i64 %33(i32 noundef %0) #23
  br label %40

35:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 736, ptr noundef nonnull @.str.219) #23
  br label %40

36:                                               ; preds = %5
  %37 = zext nneg i32 %6 to i64
  %38 = getelementptr inbounds [9 x i64], ptr @switch.table.tree_code_size, i64 0, i64 %37
  %39 = load i64, ptr %38, align 8
  br label %40

40:                                               ; preds = %5, %36, %22, %22, %14, %14, %1, %35, %32, %31, %30, %29, %28, %27, %25, %23, %19, %17, %16, %15, %8
  %41 = phi i64 [ 0, %35 ], [ %34, %32 ], [ 48, %31 ], [ 208, %30 ], [ 32, %29 ], [ 88, %28 ], [ 88, %27 ], [ 24, %25 ], [ %24, %23 ], [ %21, %19 ], [ 32, %17 ], [ 32, %16 ], [ 32, %15 ], [ %13, %8 ], [ 168, %1 ], [ 40, %14 ], [ 40, %14 ], [ 40, %22 ], [ 40, %22 ], [ %39, %36 ], [ 184, %5 ]
  ret i64 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @tree_size(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = trunc i64 %2 to i16
  switch i16 %5, label %32 [
    i16 149, label %6
    i16 3, label %11
    i16 28, label %18
    i16 163, label %23
  ]

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_binfo, ptr %0, i64 0, i32 9
  %8 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef nonnull %7) #24
  %9 = tail call fastcc i64 @VEC_tree_base_embedded_size(i32 noundef %8) #24, !range !52
  %10 = add nsw i64 %9, 88
  br label %46

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_vec, ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !22
  %14 = add nsw i32 %13, -1
  %15 = sext i32 %14 to i64
  %16 = shl nsw i64 %15, 3
  %17 = add nsw i64 %16, 40
  br label %46

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !22
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, 29
  br label %46

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_omp_clause, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [16 x i8], ptr @omp_clause_num_ops, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = add nuw nsw i64 %30, 56
  br label %46

32:                                               ; preds = %1
  %33 = and i64 %2, 65535
  %34 = icmp eq i64 %33, 59
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.tree_int_cst, ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !22
  %40 = shl i64 %39, 32
  %41 = add i64 %40, -4294967296
  %42 = ashr exact i64 %41, 29
  %43 = add nsw i64 %42, 48
  br label %46

44:                                               ; preds = %32
  %45 = tail call i64 @tree_code_size(i32 noundef %4) #24
  br label %46

46:                                               ; preds = %44, %35, %23, %18, %11, %6
  %47 = phi i64 [ %43, %35 ], [ %45, %44 ], [ %31, %23 ], [ %22, %18 ], [ %17, %11 ], [ %10, %6 ]
  ret i64 %47
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i64 @VEC_tree_base_embedded_size(i32 noundef %0) unnamed_addr #5 {
  %2 = sext i32 %0 to i64
  %3 = shl nsw i64 %2, 3
  %4 = add nsw i64 %3, 8
  ret i64 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !53
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_node_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 147
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 955, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call i64 @tree_size(ptr noundef nonnull %0) #24
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef %8) #23
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %0, i64 %8, i1 false)
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !22
  %11 = load i64, ptr %9, align 8
  %12 = and i64 %11, -1099515822081
  store i64 %12, ptr %9, align 8
  %13 = and i32 %3, 65533
  %14 = icmp eq i32 %13, 32
  %15 = icmp eq i32 %4, 36
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %7
  %18 = trunc i64 %11 to i16
  switch i16 %18, label %23 [
    i16 32, label %19
    i16 34, label %21
  ]

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tree_var_decl, ptr %9, i64 0, i32 1
  br label %28

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_parm_decl, ptr %9, i64 0, i32 2
  br label %28

23:                                               ; preds = %17
  %24 = and i64 %11, 65535
  %25 = icmp eq i64 %24, 36
  %26 = getelementptr inbounds %struct.tree_result_decl, ptr %9, i64 0, i32 1
  %27 = select i1 %25, ptr %26, ptr null
  br label %28

28:                                               ; preds = %21, %23, %19
  %29 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %27, %23 ]
  store ptr null, ptr %29, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %7, %28
  %31 = and i64 %2, 65535
  %32 = add nsw i64 %31, -29
  %33 = icmp ult i64 %32, 12
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = icmp eq i32 %4, 37
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, ptr @next_debug_decl_uid, align 4, !tbaa !30
  %38 = add nsw i32 %37, -1
  store i32 %38, ptr @next_debug_decl_uid, align 4, !tbaa !30
  br label %42

39:                                               ; preds = %34
  %40 = load i32, ptr @next_decl_uid, align 4, !tbaa !30
  %41 = add nsw i32 %40, 1
  store i32 %41, ptr @next_decl_uid, align 4, !tbaa !30
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %44 = getelementptr inbounds %struct.tree_decl_minimal, ptr %9, i64 0, i32 2
  store i32 %43, ptr %44, align 4
  %45 = load i64, ptr %0, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %58 [
    i16 34, label %47
    i16 32, label %47
  ]

47:                                               ; preds = %42, %42
  %48 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 67108864
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47
  %53 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %0) #24
  tail call void @decl_value_expr_insert(ptr noundef nonnull %9, ptr noundef %53) #24
  %54 = getelementptr inbounds %struct.tree_decl_common, ptr %9, i64 0, i32 2
  %55 = load i64, ptr %54, align 8
  %56 = or i64 %55, 67108864
  store i64 %56, ptr %54, align 8
  %57 = load i64, ptr %0, align 8
  br label %58

58:                                               ; preds = %42, %52, %47
  %59 = phi i64 [ %45, %42 ], [ %57, %52 ], [ %45, %47 ]
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 32
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = and i32 %64, 65536
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %85, label %67

67:                                               ; preds = %62
  %68 = tail call zeroext i16 @decl_init_priority_lookup(ptr noundef nonnull %0) #24
  tail call void @decl_init_priority_insert(ptr noundef nonnull %9, i16 noundef zeroext %68) #24
  %69 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %9, i64 0, i32 4
  %70 = load i32, ptr %69, align 8
  %71 = or i32 %70, 65536
  store i32 %71, ptr %69, align 8
  br label %85

72:                                               ; preds = %30
  %73 = add nsw i64 %31, -5
  %74 = icmp ult i64 %73, 18
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, ptr @next_type_uid, align 4, !tbaa !30
  %77 = add nsw i32 %76, 1
  store i32 %77, ptr @next_type_uid, align 4, !tbaa !30
  %78 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 5
  store i32 %76, ptr %78, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 11
  store ptr null, ptr %79, align 8, !tbaa !22
  store i32 0, ptr %79, align 8, !tbaa !22
  %80 = and i64 %11, 134217728
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = and i64 %11, -1099650039809
  store i64 %83, ptr %9, align 8
  %84 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 1
  store ptr null, ptr %84, align 8, !tbaa !22
  br label %85

85:                                               ; preds = %72, %82, %75, %58, %62, %67
  ret ptr %9
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decl_value_expr_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #23
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %5 = tail call i32 %4(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !25
  store ptr %0, ptr %3, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !56
  %8 = load ptr, ptr @value_expr_for_decl, align 8, !tbaa !6
  %9 = tail call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 1) #23
  store ptr %3, ptr %9, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decl_value_expr_lookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !55
  %3 = load ptr, ptr @value_expr_for_decl, align 8, !tbaa !6
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %5 = tail call i32 %4(ptr noundef %0) #23
  %6 = call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef nonnull %2, i32 noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_map, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decl_init_priority_insert(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 32, label %6
    i16 29, label %6
  ]

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5660, ptr noundef nonnull @.str.219) #23
  br label %6

6:                                                ; preds = %2, %2, %5
  %7 = tail call fastcc ptr @decl_priority_info(ptr noundef nonnull %0) #24
  %8 = getelementptr inbounds %struct.tree_priority_map, ptr %7, i64 0, i32 1
  store i16 %1, ptr %8, align 8, !tbaa !57
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @decl_init_priority_lookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_map_base, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %5 [
    i16 32, label %6
    i16 29, label %6
  ]

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5607, ptr noundef nonnull @.str.219) #23
  br label %6

6:                                                ; preds = %1, %1, %5
  store ptr %0, ptr %2, align 8, !tbaa !29
  %7 = load ptr, ptr @init_priority_for_decl, align 8, !tbaa !6
  %8 = call ptr @htab_find(ptr noundef %7, ptr noundef nonnull %2) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_priority_map, ptr %8, i64 0, i32 1
  %12 = load i16, ptr %11, align 8, !tbaa !57
  br label %13

13:                                               ; preds = %6, %10
  %14 = phi i16 [ %12, %10 ], [ -1, %6 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i16 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @copy_list(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #24
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %3, %8
  %9 = phi ptr [ %14, %8 ], [ %6, %3 ]
  %10 = phi ptr [ %11, %8 ], [ %4, %3 ]
  %11 = tail call ptr @copy_node_stat(ptr noundef nonnull %9) #24
  %12 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  store ptr %11, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %8, !llvm.loop !60

16:                                               ; preds = %8, %3, %1
  %17 = phi ptr [ null, %1 ], [ %4, %3 ], [ %4, %8 ]
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_int_cst(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %5 = select i1 %3, ptr %4, ptr %0
  %6 = ashr i64 %1, 63
  %7 = tail call ptr @build_int_cst_wide(ptr noundef %5, i64 noundef %1, i64 noundef %6) #24
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1123, ptr noundef nonnull @.str.219) #23
  br label %6

6:                                                ; preds = %3, %5
  %7 = load i64, ptr %0, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %41 [
    i16 10, label %9
    i16 12, label %9
    i16 7, label %12
    i16 8, label %17
    i16 5, label %17
    i16 6, label %87
  ]

9:                                                ; preds = %6, %6
  %10 = or i64 %2, %1
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %46, label %87

12:                                               ; preds = %6
  %13 = icmp eq i64 %2, 0
  %14 = icmp ult i64 %1, 2
  %15 = and i1 %14, %13
  %16 = trunc i64 %1 to i32
  br i1 %15, label %42, label %87

17:                                               ; preds = %6, %6
  %18 = and i64 %7, 2097152
  %19 = icmp eq i64 %18, 0
  %20 = load ptr, ptr @compiler_params, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.param_info, ptr %20, i64 90, i32 1
  %22 = load i32, ptr %21, align 8, !tbaa !61
  br i1 %19, label %29, label %23

23:                                               ; preds = %17
  %24 = icmp eq i64 %2, 0
  %25 = sext i32 %22 to i64
  %26 = icmp ugt i64 %25, %1
  %27 = select i1 %24, i1 %26, i1 false
  %28 = trunc i64 %1 to i32
  br i1 %27, label %42, label %87

29:                                               ; preds = %17
  %30 = add nsw i32 %22, 1
  %31 = icmp eq i64 %2, 0
  %32 = sext i32 %22 to i64
  %33 = icmp ugt i64 %32, %1
  %34 = select i1 %31, i1 %33, i1 false
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = trunc i64 %1 to i32
  %37 = add i32 %36, 1
  br label %42

38:                                               ; preds = %29
  %39 = and i64 %2, %1
  %40 = icmp eq i64 %39, -1
  br i1 %40, label %46, label %87

41:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1168, ptr noundef nonnull @.str.219) #23
  br label %87

42:                                               ; preds = %23, %12, %35
  %43 = phi i32 [ %37, %35 ], [ %16, %12 ], [ %28, %23 ]
  %44 = phi i32 [ %30, %35 ], [ 2, %12 ], [ %22, %23 ]
  %45 = icmp sgt i32 %43, -1
  br i1 %45, label %46, label %87

46:                                               ; preds = %38, %9, %42
  %47 = phi i32 [ %44, %42 ], [ 1, %9 ], [ %30, %38 ]
  %48 = phi i32 [ %43, %42 ], [ 0, %9 ], [ 0, %38 ]
  %49 = and i64 %7, 134217728
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  br label %58

54:                                               ; preds = %46
  %55 = or disjoint i64 %7, 134217728
  store i64 %55, ptr %0, align 8
  %56 = tail call ptr @make_tree_vec_stat(i32 noundef %47) #24
  %57 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  store ptr %56, ptr %57, align 8, !tbaa !22
  br label %58

58:                                               ; preds = %51, %54
  %59 = phi ptr [ %53, %51 ], [ %56, %54 ]
  %60 = zext nneg i32 %48 to i64
  %61 = getelementptr inbounds %struct.tree_vec, ptr %59, i64 0, i32 2, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.tree_common, ptr %62, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1184, ptr noundef nonnull @.str.219) #23
  br label %69

69:                                               ; preds = %64, %68
  %70 = getelementptr inbounds %struct.tree_int_cst, ptr %62, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !22
  %72 = icmp eq i64 %71, %1
  br i1 %72, label %74, label %73

73:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1185, ptr noundef nonnull @.str.219) #23
  br label %74

74:                                               ; preds = %69, %73
  %75 = getelementptr inbounds %struct.tree_int_cst, ptr %62, i64 0, i32 1, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !22
  %77 = icmp eq i64 %76, %2
  br i1 %77, label %99, label %78

78:                                               ; preds = %74
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1186, ptr noundef nonnull @.str.219) #23
  br label %99

79:                                               ; preds = %58
  %80 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %81 = tail call ptr @make_node_stat(i32 noundef 23) #24
  %82 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1
  store i64 %1, ptr %82, align 8, !tbaa !22
  %83 = getelementptr inbounds %struct.tree_int_cst, ptr %81, i64 0, i32 1, i32 1
  store i64 %2, ptr %83, align 8, !tbaa !22
  %84 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  store ptr %0, ptr %84, align 8, !tbaa !22
  %85 = load ptr, ptr %80, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.tree_vec, ptr %85, i64 0, i32 2, i64 %60
  store ptr %81, ptr %86, align 8, !tbaa !22
  br label %99

87:                                               ; preds = %23, %38, %12, %9, %6, %41, %42
  %88 = load ptr, ptr @int_cst_node, align 8, !tbaa !6
  %89 = getelementptr inbounds %struct.tree_int_cst, ptr %88, i64 0, i32 1
  store i64 %1, ptr %89, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.tree_int_cst, ptr %88, i64 0, i32 1, i32 1
  store i64 %2, ptr %90, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.tree_common, ptr %88, i64 0, i32 2
  store ptr %0, ptr %91, align 8, !tbaa !22
  %92 = load ptr, ptr @int_cst_hash_table, align 8, !tbaa !6
  %93 = tail call ptr @htab_find_slot(ptr noundef %92, ptr noundef %88, i32 noundef 1) #23
  %94 = load ptr, ptr %93, align 8, !tbaa !6
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load ptr, ptr @int_cst_node, align 8, !tbaa !6
  store ptr %97, ptr %93, align 8, !tbaa !6
  %98 = tail call ptr @make_node_stat(i32 noundef 23) #24
  store ptr %98, ptr @int_cst_node, align 8, !tbaa !6
  br label %99

99:                                               ; preds = %87, %96, %78, %74, %79
  %100 = phi ptr [ %62, %74 ], [ %62, %78 ], [ %81, %79 ], [ %94, %87 ], [ %97, %96 ]
  ret ptr %100
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_int_cstu(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %1, i64 noundef 0) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_int_cst_type(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = icmp eq ptr %0, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1066, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = ashr i64 %1, 63
  %9 = call i32 @fit_double_type(i64 noundef %1, i64 noundef %8, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef %0) #23
  %10 = load i64, ptr %3, align 8, !tbaa !63
  %11 = load i64, ptr %4, align 8, !tbaa !63
  %12 = call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %10, i64 noundef %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %12
}

; Function Attrs: optsize
declare i32 @fit_double_type(i64 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_int_cst_wide_type(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %1, ptr %4, align 8, !tbaa !63
  store i64 %2, ptr %5, align 8, !tbaa !63
  %6 = call i32 @fit_double_type(i64 noundef %1, i64 noundef %2, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef %0) #23
  %7 = load i64, ptr %4, align 8, !tbaa !63
  %8 = load i64, ptr %5, align 8, !tbaa !63
  %9 = call ptr @build_int_cst_wide(ptr noundef %0, i64 noundef %7, i64 noundef %8) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_tree_vec_stat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 3
  %3 = add i32 %2, 32
  %4 = sext i32 %3 to i64
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %4) #23
  tail call void @llvm.memset.p0.i64(ptr align 8 %5, i8 0, i64 %4, i1 false)
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, -65536
  %8 = or disjoint i64 %7, 3
  store i64 %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.tree_vec, ptr %5, i64 0, i32 1
  store i32 %0, ptr %9, align 8, !tbaa !22
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @htab_find_slot(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_low_bits_mask(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1234, ptr noundef nonnull @.str.219) #23
  %8 = load i32, ptr %3, align 4
  br label %9

9:                                                ; preds = %2, %7
  %10 = phi i32 [ %4, %2 ], [ %8, %7 ]
  %11 = and i32 %10, 1023
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i64, ptr %0, align 8
  %15 = and i64 %14, 2097152
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %13, %9
  %18 = icmp ult i32 %1, 65
  br i1 %18, label %19, label %23

19:                                               ; preds = %17
  %20 = sub nuw nsw i32 64, %1
  %21 = zext nneg i32 %20 to i64
  %22 = lshr i64 -1, %21
  br label %27

23:                                               ; preds = %17
  %24 = sub i32 128, %1
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 -1, %25
  br label %27

27:                                               ; preds = %13, %19, %23
  %28 = phi i64 [ %22, %19 ], [ -1, %23 ], [ -1, %13 ]
  %29 = phi i64 [ 0, %19 ], [ %26, %23 ], [ -1, %13 ]
  %30 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %28, i64 noundef %29) #24
  ret ptr %30
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @cst_and_fits_in_hwi(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 23
  br i1 %4, label %5, label %18

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1023
  %11 = icmp ugt i32 %10, 64
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !22
  %15 = add i64 %14, 1
  %16 = icmp ult i64 %15, 2
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %5, %1, %12
  %19 = phi i8 [ %17, %12 ], [ 0, %1 ], [ 0, %5 ]
  ret i8 %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_vector(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 27) #24
  %4 = getelementptr inbounds %struct.tree_vector, ptr %3, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !22
  %6 = icmp eq ptr %1, null
  br i1 %6, label %28, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %20, %7 ], [ 0, %2 ]
  %9 = phi ptr [ %22, %7 ], [ %1, %2 ]
  %10 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 65535
  %14 = add nsw i64 %13, -23
  %15 = icmp ult i64 %14, 6
  %16 = trunc i64 %12 to i32
  %17 = lshr i32 %16, 27
  %18 = and i32 %17, 1
  %19 = select i1 %15, i32 %18, i32 0
  %20 = or i32 %19, %8
  %21 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !64

24:                                               ; preds = %7
  %25 = shl nuw nsw i32 %20, 27
  %26 = and i32 %25, 134217728
  %27 = zext nneg i32 %26 to i64
  br label %28

28:                                               ; preds = %24, %2
  %29 = phi i64 [ 0, %2 ], [ %27, %24 ]
  %30 = load i64, ptr %3, align 8
  %31 = and i64 %30, -134217729
  %32 = or disjoint i64 %31, %29
  store i64 %32, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_vector_from_ctor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %2, %5
  %6 = phi i64 [ %13, %5 ], [ 0, %2 ]
  %7 = phi ptr [ %12, %5 ], [ null, %2 ]
  %8 = trunc i64 %6 to i32
  %9 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %1, i32 noundef %8) #24
  %10 = getelementptr inbounds %struct.constructor_elt_d, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  %12 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %11, ptr noundef %7) #24
  %13 = add nuw nsw i64 %6, 1
  %14 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %1) #24
  %15 = zext i32 %14 to i64
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %5, label %17, !llvm.loop !67

17:                                               ; preds = %5, %2
  %18 = phi ptr [ null, %2 ], [ %12, %5 ]
  %19 = tail call ptr @nreverse(ptr noundef %18) #24
  %20 = tail call ptr @build_vector(ptr noundef %0, ptr noundef %19) #24
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constructor_elt_base_length(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !68
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #5 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_cons_stat(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 40) #23
  %5 = getelementptr inbounds i8, ptr %4, i64 16
  store i64 0, ptr %5, align 8
  store i64 2, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 1
  store ptr %0, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_list, ptr %4, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @nreverse(ptr noundef %0) local_unnamed_addr #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %5, %3 ], [ null, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  store ptr %4, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %3, !llvm.loop !70

9:                                                ; preds = %3, %1
  %10 = phi ptr [ null, %1 ], [ %5, %3 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_constructor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 51) #24
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %0, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_constructor, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_constructor_single(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef 1) #24
  %5 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %4) #24
  store ptr %1, ptr %5, align 8, !tbaa !71
  %6 = getelementptr inbounds %struct.constructor_elt_d, ptr %5, i64 0, i32 1
  store ptr %2, ptr %6, align 8, !tbaa !65
  %7 = tail call ptr @build_constructor(ptr noundef %0, ptr noundef %4) #24
  %8 = load i64, ptr %2, align 8
  %9 = and i64 %8, 131072
  %10 = load i64, ptr %7, align 8
  %11 = and i64 %10, -131073
  %12 = or disjoint i64 %11, %9
  store i64 %12, ptr %7, align 8
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 16) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_constructor_elt_base_quick_push(ptr noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !68
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !68
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @vec_gc_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_constructor_from_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = tail call i32 @list_length(ptr noundef nonnull %1) #24
  %6 = tail call fastcc ptr @VEC_constructor_elt_gc_alloc(i32 noundef %5) #24
  br label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %1, %4 ], [ %21, %7 ]
  %9 = phi i8 [ 1, %4 ], [ %19, %7 ]
  %10 = tail call fastcc ptr @VEC_constructor_elt_base_quick_push(ptr noundef %6) #24
  %11 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  store ptr %14, ptr %10, align 8, !tbaa !71
  %15 = getelementptr inbounds %struct.constructor_elt_d, ptr %10, i64 0, i32 1
  store ptr %12, ptr %15, align 8, !tbaa !65
  %16 = load i64, ptr %12, align 8
  %17 = and i64 %16, 131072
  %18 = icmp eq i64 %17, 0
  %19 = select i1 %18, i8 0, i8 %9
  %20 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %7, !llvm.loop !72

23:                                               ; preds = %7
  %24 = and i8 %19, 1
  %25 = zext nneg i8 %24 to i64
  %26 = shl nuw nsw i64 %25, 17
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi ptr [ null, %2 ], [ %6, %23 ]
  %29 = phi i64 [ 131072, %2 ], [ %26, %23 ]
  %30 = tail call ptr @build_constructor(ptr noundef %0, ptr noundef %28) #24
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, -131073
  %33 = or disjoint i64 %32, %29
  store i64 %33, ptr %30, align 8
  ret ptr %30
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @list_length(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1, %3
  %4 = phi i32 [ %8, %3 ], [ 0, %1 ]
  %5 = phi ptr [ %7, %3 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = add nuw nsw i32 %4, 1
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %3, !llvm.loop !73

10:                                               ; preds = %3, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %3 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_fixed(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.fixed_value) align 8 %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 25) #24
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_fixed_cst, ptr %3, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_real(ptr noundef %0, ptr nocapture noundef readonly byval(%struct.real_value) align 8 %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 24) #24
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_real_cst, ptr %3, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !22
  %7 = load i64, ptr %3, align 8
  %8 = and i64 %7, -134217729
  store i64 %8, ptr %3, align 8
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @real_value_from_int_cst(ptr dead_on_unwind noalias writable sret(%struct.real_value) align 8 %0, ptr noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  %4 = icmp eq ptr %1, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %3
  %6 = load i64, ptr %1, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %1) #23
  br label %16

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %3, %9, %11
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ], [ 0, %3 ]
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !22
  %22 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = load i64, ptr %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = lshr i32 %25, 21
  %27 = and i32 %26, 1
  tail call void @real_from_integer(ptr noundef nonnull %0, i32 noundef %17, i64 noundef %19, i64 noundef %21, i32 noundef %27) #23
  ret void
}

; Function Attrs: optsize
declare void @real_from_integer(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_real_from_int_cst(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.real_value, align 8
  %4 = load i64, ptr %1, align 8
  call void @real_value_from_int_cst(ptr dead_on_unwind nonnull writable sret(%struct.real_value) align 8 %3, ptr noundef %0, ptr noundef nonnull %1) #24
  %5 = call ptr @build_real(ptr noundef %0, ptr noundef nonnull byval(%struct.real_value) align 8 %3) #24
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %4, 134217728
  %8 = or i64 %6, %7
  store i64 %8, ptr %5, align 8
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_string(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = add nsw i64 %3, 29
  %5 = tail call ptr @ggc_alloc_stat(i64 noundef %4) #23
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 16, i1 false)
  store i64 131100, ptr %5, align 8
  %7 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 1
  store i32 %0, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %8, ptr align 1 %1, i64 %3, i1 false)
  %9 = getelementptr inbounds %struct.tree_string, ptr %5, i64 0, i32 2, i64 %3
  store i8 0, ptr %9, align 1, !tbaa !22
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_complex(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @make_node_stat(i32 noundef 26) #24
  %5 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 2
  store ptr %2, ptr %6, align 8, !tbaa !22
  %7 = icmp eq ptr %0, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call ptr @build_complex_type(ptr noundef %10) #24
  br label %12

12:                                               ; preds = %3, %8
  %13 = phi ptr [ %11, %8 ], [ %0, %3 ]
  %14 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  store ptr %13, ptr %14, align 8, !tbaa !22
  %15 = load i64, ptr %1, align 8
  %16 = load i64, ptr %2, align 8
  %17 = or i64 %16, %15
  %18 = and i64 %17, 134217728
  %19 = load i64, ptr %4, align 8
  %20 = and i64 %19, -134217729
  %21 = or disjoint i64 %20, %18
  store i64 %21, ptr %4, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_complex_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %4 [
    i16 6, label %5
    i16 7, label %5
    i16 8, label %5
    i16 9, label %5
    i16 11, label %5
  ]

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 7457, ptr noundef nonnull @.str.219) #23
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %4
  %6 = tail call ptr @make_node_stat(i32 noundef 13) #24
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %11 = tail call i32 @iterative_hash(ptr noundef nonnull %10, i64 noundef 4, i32 noundef 0) #23
  %12 = tail call ptr @type_hash_canon(i32 noundef %11, ptr noundef %6) #24
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void @layout_type(ptr noundef nonnull %12) #23
  br label %17

17:                                               ; preds = %16, %5
  %18 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %23, %0
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = tail call ptr @build_complex_type(ptr noundef nonnull %23) #24
  br label %29

29:                                               ; preds = %21, %27
  %30 = phi ptr [ %28, %27 ], [ null, %21 ]
  store ptr %30, ptr %18, align 8, !tbaa !22
  br label %31

31:                                               ; preds = %29, %25, %17
  %32 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %72

35:                                               ; preds = %31
  %36 = load ptr, ptr @integer_types, align 16, !tbaa !6
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %68, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !6
  %40 = icmp eq ptr %39, %0
  br i1 %40, label %68, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !6
  %43 = icmp eq ptr %42, %0
  br i1 %43, label %68, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !6
  %46 = icmp eq ptr %45, %0
  br i1 %46, label %68, label %47

47:                                               ; preds = %44
  %48 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16, !tbaa !6
  %49 = icmp eq ptr %48, %0
  br i1 %49, label %68, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %52 = icmp eq ptr %51, %0
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !6
  %55 = icmp eq ptr %54, %0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !6
  %58 = icmp eq ptr %57, %0
  br i1 %58, label %68, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16, !tbaa !6
  %61 = icmp eq ptr %60, %0
  br i1 %61, label %68, label %62

62:                                               ; preds = %59
  %63 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !6
  %64 = icmp eq ptr %63, %0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !6
  %67 = icmp eq ptr %66, %0
  br i1 %67, label %68, label %72

68:                                               ; preds = %62, %59, %56, %53, %50, %47, %44, %41, %38, %35, %65
  %69 = phi ptr [ @.str.237, %65 ], [ @.str.236, %62 ], [ @.str.235, %59 ], [ @.str.234, %56 ], [ @.str.233, %53 ], [ @.str.232, %50 ], [ @.str.231, %47 ], [ @.str.230, %44 ], [ @.str.229, %41 ], [ @.str.228, %38 ], [ @.str.227, %35 ]
  %70 = tail call ptr @get_identifier(ptr noundef nonnull %69) #23
  %71 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 35, ptr noundef %70, ptr noundef nonnull %12) #24
  store ptr %71, ptr %32, align 8, !tbaa !22
  br label %72

72:                                               ; preds = %65, %68, %31
  %73 = load i64, ptr %0, align 8
  %74 = trunc i64 %73 to i32
  %75 = lshr i32 %74, 20
  %76 = and i32 %75, 1
  %77 = lshr i32 %74, 18
  %78 = and i32 %77, 2
  %79 = or disjoint i32 %76, %78
  %80 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %81 = load i32, ptr %80, align 4
  %82 = lshr i32 %81, 11
  %83 = and i32 %82, 4
  %84 = or disjoint i32 %79, %83
  %85 = lshr i64 %73, 48
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65280
  %88 = or disjoint i32 %84, %87
  %89 = tail call ptr @build_qualified_type(ptr noundef nonnull %12, i32 noundef %88) #24
  ret ptr %89
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_one_cst(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %75 [
    i16 8, label %4
    i16 6, label %4
    i16 7, label %4
    i16 10, label %4
    i16 12, label %4
    i16 5, label %4
    i16 9, label %6
    i16 11, label %8
    i16 14, label %45
    i16 13, label %67
  ]

4:                                                ; preds = %1, %1, %1, %1, %1, %1
  %5 = tail call ptr @build_int_cst(ptr noundef nonnull %0, i64 noundef 1) #24
  br label %65

6:                                                ; preds = %1
  %7 = tail call ptr @build_real(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.real_value) align 8 @dconst1) #24
  br label %65

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = and i32 %11, 255
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = icmp eq i8 %15, 6
  br i1 %16, label %29, label %17

17:                                               ; preds = %8
  %18 = and i64 %2, 65535
  %19 = icmp eq i64 %18, 14
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !22
  br label %25

25:                                               ; preds = %17, %20
  %26 = phi i8 [ %15, %17 ], [ %24, %20 ]
  %27 = icmp eq i8 %26, 7
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1514, ptr noundef nonnull @.str.219) #23
  br label %29

29:                                               ; preds = %8, %25, %28
  %30 = load i64, ptr %0, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 14
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  br label %39

35:                                               ; preds = %29
  %36 = load i32, ptr %9, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  br label %39

39:                                               ; preds = %35, %33
  %40 = phi i32 [ %34, %33 ], [ %38, %35 ]
  %41 = add i32 %40, -30
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [8 x %struct.fixed_value], ptr @fconst1, i64 0, i64 %42
  %44 = tail call ptr @build_fixed(ptr noundef nonnull %0, ptr noundef nonnull byval(%struct.fixed_value) align 8 %43) #24
  br label %65

45:                                               ; preds = %1
  %46 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = tail call ptr @build_one_cst(ptr noundef %47) #24
  %49 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 1023
  %52 = zext nneg i32 %51 to i64
  %53 = shl nuw i64 1, %52
  %54 = trunc i64 %53 to i32
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %45, %56
  %57 = phi i32 [ %59, %56 ], [ %54, %45 ]
  %58 = phi ptr [ %60, %56 ], [ null, %45 ]
  %59 = add nsw i32 %57, -1
  %60 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %48, ptr noundef %58) #24
  %61 = icmp ugt i32 %57, 1
  br i1 %61, label %56, label %62, !llvm.loop !74

62:                                               ; preds = %56, %45
  %63 = phi ptr [ null, %45 ], [ %60, %56 ]
  %64 = tail call ptr @build_vector(ptr noundef nonnull %0, ptr noundef %63) #24
  br label %65

65:                                               ; preds = %75, %62, %39, %6, %4, %67
  %66 = phi ptr [ %74, %67 ], [ null, %75 ], [ %64, %62 ], [ %44, %39 ], [ %7, %6 ], [ %5, %4 ]
  ret ptr %66

67:                                               ; preds = %1
  %68 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = tail call ptr @build_one_cst(ptr noundef %69) #24
  %71 = load ptr, ptr %68, align 8, !tbaa !22
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %73 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %71, ptr noundef %72) #23
  %74 = tail call ptr @build_complex(ptr noundef nonnull %0, ptr noundef %70, ptr noundef %73) #24
  br label %65

75:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1538, ptr noundef nonnull @.str.219) #23
  br label %65
}

; Function Attrs: optsize
declare ptr @fold_convert_loc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @make_tree_binfo_stat(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc i64 @VEC_tree_base_embedded_size(i32 noundef %0) #24, !range !52
  %3 = add nsw i64 %2, 88
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef %3) #23
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %5, i8 0, i64 80, i1 false)
  store i64 149, ptr %4, align 8
  %6 = getelementptr inbounds %struct.tree_binfo, ptr %4, i64 0, i32 9
  tail call fastcc void @VEC_tree_base_embedded_init(ptr noundef nonnull %6, i32 noundef %0) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @VEC_tree_base_embedded_init(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #12 {
  store i32 0, ptr %0, align 8, !tbaa !53
  %3 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !75
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @integer_zerop(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ]
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %3) #24
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %24 [
    i16 23, label %7
    i16 26, label %16
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !22
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11, %7
  br label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call i32 @integer_zerop(ptr noundef %18) #24, !range !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  br label %2

24:                                               ; preds = %2, %16, %15, %11
  %25 = phi i32 [ 1, %11 ], [ 0, %15 ], [ 0, %16 ], [ 0, %2 ]
  ret i32 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_strip_nop_conversions(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @tree_nop_conversion(ptr noundef %0) #24, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call fastcc zeroext i8 @tree_nop_conversion(ptr noundef %7) #24, !range !76
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !77

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @integer_onep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %23 [
    i16 23, label %5
    i16 26, label %14
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 1
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %9, %5
  br label %23

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = tail call i32 @integer_onep(ptr noundef %16) #24, !range !23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = tail call i32 @integer_zerop(ptr noundef %21) #24, !range !23
  br label %23

23:                                               ; preds = %1, %13, %14, %19, %9
  %24 = phi i32 [ 1, %9 ], [ 0, %14 ], [ %22, %19 ], [ 0, %13 ], [ 0, %1 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @integer_all_onesp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call i32 @integer_all_onesp(ptr noundef %8) #24, !range !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call i32 @integer_zerop(ptr noundef %13) #24, !range !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %74

16:                                               ; preds = %11, %6, %1
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 23
  br i1 %19, label %20, label %74

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !22
  %26 = icmp eq i64 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !22
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %74, label %31

31:                                               ; preds = %27, %20
  %32 = and i64 %23, 2097152
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %74, label %34

34:                                               ; preds = %31
  %35 = and i64 %23, 65535
  %36 = icmp eq i64 %35, 14
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #23
  br label %44

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  br label %44

44:                                               ; preds = %39, %37
  %45 = phi i32 [ %38, %37 ], [ %43, %39 ]
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %46
  %48 = load i8, ptr %47, align 1, !tbaa !22
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = icmp ugt i8 %48, 7
  br i1 %51, label %52, label %68

52:                                               ; preds = %44
  %53 = add nsw i32 %50, -64
  %54 = icmp ult i8 %48, 17
  br i1 %54, label %56, label %55

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 1663, ptr noundef nonnull @.str.219) #23
  br label %56

56:                                               ; preds = %52, %55
  %57 = load i64, ptr %24, align 8, !tbaa !22
  %58 = icmp eq i64 %57, -1
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = icmp eq i32 %53, 64
  %61 = zext nneg i32 %53 to i64
  %62 = shl nsw i64 -1, %61
  %63 = xor i64 %62, -1
  %64 = select i1 %60, i64 -1, i64 %63
  %65 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !22
  %67 = icmp eq i64 %66, %64
  br label %74

68:                                               ; preds = %44
  %69 = load i64, ptr %24, align 8, !tbaa !22
  %70 = zext nneg i32 %50 to i64
  %71 = shl nsw i64 -1, %70
  %72 = xor i64 %69, %71
  %73 = icmp eq i64 %72, -1
  br label %74

74:                                               ; preds = %56, %59, %31, %27, %16, %11, %68
  %75 = phi i1 [ %73, %68 ], [ true, %11 ], [ false, %16 ], [ true, %27 ], [ false, %31 ], [ false, %56 ], [ %67, %59 ]
  %76 = zext i1 %75 to i32
  ret i32 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @integer_pow2p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 26
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call i32 @integer_pow2p(ptr noundef %8) #24, !range !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call i32 @integer_zerop(ptr noundef %13) #24, !range !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %61

16:                                               ; preds = %11, %6, %1
  %17 = load i64, ptr %2, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 23
  br i1 %19, label %20, label %61

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 1023
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %27 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !22
  %29 = load i64, ptr %26, align 8, !tbaa !22
  %30 = icmp eq i32 %25, 128
  br i1 %30, label %46, label %31

31:                                               ; preds = %20
  %32 = icmp ugt i32 %25, 64
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = add nsw i32 %25, -64
  %35 = zext nneg i32 %34 to i64
  %36 = shl nsw i64 -1, %35
  %37 = xor i64 %36, -1
  %38 = and i64 %28, %37
  br label %46

39:                                               ; preds = %31
  %40 = icmp eq i32 %25, 64
  br i1 %40, label %46, label %41

41:                                               ; preds = %39
  %42 = zext nneg i32 %25 to i64
  %43 = shl nsw i64 -1, %42
  %44 = xor i64 %43, -1
  %45 = and i64 %29, %44
  br label %46

46:                                               ; preds = %33, %41, %39, %20
  %47 = phi i64 [ %28, %20 ], [ %38, %33 ], [ 0, %41 ], [ 0, %39 ]
  %48 = phi i64 [ %29, %20 ], [ %29, %33 ], [ %45, %41 ], [ %29, %39 ]
  %49 = icmp eq i64 %47, 0
  %50 = icmp eq i64 %48, 0
  %51 = select i1 %49, i1 %50, i1 false
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = tail call i64 @llvm.ctpop.i64(i64 %48), !range !78
  %54 = icmp ult i64 %53, 2
  %55 = select i1 %49, i1 %54, i1 false
  %56 = xor i1 %50, true
  %57 = select i1 %55, i1 true, i1 %56
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = tail call i64 @llvm.ctpop.i64(i64 %47), !range !78
  %60 = icmp ult i64 %59, 2
  br label %61

61:                                               ; preds = %58, %52, %46, %16, %11
  %62 = phi i1 [ true, %11 ], [ false, %16 ], [ false, %46 ], [ %60, %58 ], [ %55, %52 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @integer_nonzerop(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %21, %1
  %3 = phi ptr [ %0, %1 ], [ %23, %21 ]
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %3) #24
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %24 [
    i16 23, label %7
    i16 26, label %16
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !22
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !22
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  br label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call i32 @integer_nonzerop(ptr noundef %18) #24, !range !23
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  br label %2

24:                                               ; preds = %2, %16, %11, %7
  %25 = phi i32 [ 1, %7 ], [ %15, %11 ], [ 0, %2 ], [ 1, %16 ]
  ret i32 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @fixed_zerop(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 25
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_fixed_cst, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds { i64, i64 }, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8
  %11 = tail call fastcc zeroext i8 @double_int_zero_p(i64 %8, i64 %10) #24, !range !76
  %12 = zext nneg i8 %11 to i32
  br label %13

13:                                               ; preds = %5, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %5 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @double_int_zero_p(i64 %0, i64 %1) unnamed_addr #5 {
  %3 = icmp eq i64 %0, 0
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %3, i1 %4, i1 false
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_log2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 26
  br i1 %5, label %6, label %14

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %10, %6 ], [ %2, %1 ]
  %8 = getelementptr inbounds %struct.tree_complex, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = tail call ptr @tree_strip_nop_conversions(ptr noundef %9) #24
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 26
  br i1 %13, label %6, label %14

14:                                               ; preds = %6, %1
  %15 = phi ptr [ %2, %1 ], [ %10, %6 ]
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1023
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1
  %22 = getelementptr inbounds %struct.tree_int_cst, ptr %15, i64 0, i32 1, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !22
  %24 = load i64, ptr %21, align 8, !tbaa !22
  %25 = icmp eq i32 %20, 128
  br i1 %25, label %41, label %26

26:                                               ; preds = %14
  %27 = icmp ugt i32 %20, 64
  br i1 %27, label %28, label %34

28:                                               ; preds = %26
  %29 = add nsw i32 %20, -64
  %30 = zext nneg i32 %29 to i64
  %31 = shl nsw i64 -1, %30
  %32 = xor i64 %31, -1
  %33 = and i64 %23, %32
  br label %41

34:                                               ; preds = %26
  %35 = icmp eq i32 %20, 64
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = zext nneg i32 %20 to i64
  %38 = shl nsw i64 -1, %37
  %39 = xor i64 %38, -1
  %40 = and i64 %24, %39
  br label %47

41:                                               ; preds = %28, %14
  %42 = phi i64 [ %23, %14 ], [ %33, %28 ]
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = tail call i32 @exact_log2(i64 noundef %42) #23
  %46 = add nsw i32 %45, 64
  br label %50

47:                                               ; preds = %34, %36, %41
  %48 = phi i64 [ %24, %41 ], [ %24, %34 ], [ %40, %36 ]
  %49 = tail call i32 @exact_log2(i64 noundef %48) #23
  br label %50

50:                                               ; preds = %44, %47
  %51 = phi i32 [ %46, %44 ], [ %49, %47 ]
  ret i32 %51
}

; Function Attrs: optsize
declare i32 @exact_log2(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_floor_log2(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 26
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call i32 @tree_log2(ptr noundef %8) #24
  br label %46

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %2, i64 0, i32 1, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !22
  %19 = load i64, ptr %16, align 8, !tbaa !22
  %20 = and i32 %14, 895
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %10
  %23 = icmp ugt i32 %15, 64
  br i1 %23, label %24, label %30

24:                                               ; preds = %22
  %25 = add nsw i32 %15, -64
  %26 = zext nneg i32 %25 to i64
  %27 = shl nsw i64 -1, %26
  %28 = xor i64 %27, -1
  %29 = and i64 %18, %28
  br label %37

30:                                               ; preds = %22
  %31 = icmp eq i32 %15, 64
  br i1 %31, label %43, label %32

32:                                               ; preds = %30
  %33 = zext nneg i32 %15 to i64
  %34 = shl nsw i64 -1, %33
  %35 = xor i64 %34, -1
  %36 = and i64 %19, %35
  br label %43

37:                                               ; preds = %24, %10
  %38 = phi i64 [ %18, %10 ], [ %29, %24 ]
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @floor_log2(i64 noundef %38) #23
  %42 = add nsw i32 %41, 64
  br label %46

43:                                               ; preds = %30, %32, %37
  %44 = phi i64 [ %19, %37 ], [ %19, %30 ], [ %36, %32 ]
  %45 = tail call i32 @floor_log2(i64 noundef %44) #23
  br label %46

46:                                               ; preds = %40, %43, %6
  %47 = phi i32 [ %9, %6 ], [ %42, %40 ], [ %45, %43 ]
  ret i32 %47
}

; Function Attrs: optsize
declare i32 @floor_log2(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @real_zerop(ptr noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %41, %1
  %3 = phi ptr [ %0, %1 ], [ %43, %41 ]
  %4 = tail call ptr @tree_strip_nop_conversions(ptr noundef %3) #24
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 24
  br i1 %7, label %8, label %32

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.tree_real_cst, ptr %4, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %10, ptr noundef nonnull @dconst0) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 14
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = tail call i32 @vector_type_mode(ptr noundef nonnull %15) #23
  br label %26

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %23, 16
  %25 = and i32 %24, 255
  br label %26

26:                                               ; preds = %21, %19
  %27 = phi i32 [ %20, %19 ], [ %25, %21 ]
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !22
  %31 = icmp eq i8 %30, 9
  br i1 %31, label %32, label %44

32:                                               ; preds = %26, %8, %2
  %33 = load i64, ptr %4, align 8
  %34 = and i64 %33, 65535
  %35 = icmp eq i64 %34, 26
  br i1 %35, label %36, label %44

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = tail call i32 @real_zerop(ptr noundef %38) #24, !range !23
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.tree_complex, ptr %4, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  br label %2

44:                                               ; preds = %32, %36, %26
  %45 = phi i32 [ 1, %26 ], [ 0, %36 ], [ 0, %32 ]
  ret i32 %45
}

; Function Attrs: optsize
declare zeroext i8 @real_compare(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @real_onep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 24
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %8, ptr noundef nonnull @dconst1) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #23
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %30, label %43

30:                                               ; preds = %24, %6, %1
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 26
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = tail call i32 @real_onep(ptr noundef %36) #24, !range !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = tail call i32 @real_zerop(ptr noundef %41) #24, !range !23
  br label %43

43:                                               ; preds = %30, %34, %39, %24
  %44 = phi i32 [ 1, %24 ], [ 0, %34 ], [ 0, %30 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @real_twop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 24
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %8, ptr noundef nonnull @dconst2) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #23
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %30, label %43

30:                                               ; preds = %24, %6, %1
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 26
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = tail call i32 @real_twop(ptr noundef %36) #24, !range !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = tail call i32 @real_zerop(ptr noundef %41) #24, !range !23
  br label %43

43:                                               ; preds = %30, %34, %39, %24
  %44 = phi i32 [ 1, %24 ], [ 0, %34 ], [ 0, %30 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @real_minus_onep(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 24
  br i1 %5, label %6, label %30

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call zeroext i8 @real_compare(i32 noundef 101, ptr noundef %8, ptr noundef nonnull @dconstm1) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 14
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #23
  br label %24

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = and i32 %22, 255
  br label %24

24:                                               ; preds = %19, %17
  %25 = phi i32 [ %18, %17 ], [ %23, %19 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 9
  br i1 %29, label %30, label %43

30:                                               ; preds = %24, %6, %1
  %31 = load i64, ptr %2, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 26
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = tail call i32 @real_minus_onep(ptr noundef %36) #24, !range !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = tail call i32 @real_zerop(ptr noundef %41) #24, !range !23
  br label %43

43:                                               ; preds = %30, %34, %39, %24
  %44 = phi i32 [ 1, %24 ], [ 0, %34 ], [ 0, %30 ], [ %42, %39 ]
  ret i32 %44
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @really_constant_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 116, label %6
    i16 113, label %6
    i16 117, label %6
  ]

6:                                                ; preds = %2, %2, %2
  %7 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  br label %2, !llvm.loop !79

9:                                                ; preds = %2
  %10 = trunc i64 %4 to i32
  %11 = lshr i32 %10, 17
  %12 = and i32 %11, 1
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @value_member(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.tree_list, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !80

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ null, %2 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @purpose_member(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2, %9
  %5 = phi ptr [ %11, %9 ], [ %1, %2 ]
  %6 = getelementptr inbounds %struct.tree_list, ptr %5, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4, !llvm.loop !81

13:                                               ; preds = %4, %9, %2
  %14 = phi ptr [ null, %2 ], [ null, %9 ], [ %5, %4 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @chain_index(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp ne ptr %1, null
  %4 = icmp sgt i32 %0, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %15

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %10, %6 ], [ %1, %2 ]
  %8 = phi i32 [ %11, %6 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = add nsw i32 %8, -1
  %12 = icmp ne ptr %10, null
  %13 = icmp ugt i32 %8, 1
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %6, label %15, !llvm.loop !82

15:                                               ; preds = %6, %2
  %16 = phi ptr [ %1, %2 ], [ %10, %6 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @chain_member(ptr noundef readnone %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2, %7
  %5 = phi ptr [ %9, %7 ], [ %1, %2 ]
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %4, !llvm.loop !83

11:                                               ; preds = %4, %7, %2
  %12 = phi i32 [ 0, %2 ], [ 0, %7 ], [ 1, %4 ]
  ret i32 %12
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @fields_length(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %14, %5 ], [ %3, %1 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %1 ]
  %8 = load i64, ptr %6, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 31
  %11 = zext i1 %10 to i32
  %12 = add nuw nsw i32 %7, %11
  %13 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %5, !llvm.loop !84

16:                                               ; preds = %5, %1
  %17 = phi i32 [ 0, %1 ], [ %12, %5 ]
  ret i32 %17
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @first_field(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %1, %10
  %6 = phi ptr [ %12, %10 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 65535
  %9 = icmp eq i64 %8, 31
  br i1 %9, label %14, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !85

14:                                               ; preds = %5, %10, %1
  %15 = phi ptr [ null, %1 ], [ null, %10 ], [ %6, %5 ]
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @chainon(ptr noundef %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %4 ]
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !llvm.loop !86

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !22
  br label %13

13:                                               ; preds = %4, %2, %11
  %14 = phi ptr [ %0, %11 ], [ %1, %2 ], [ %0, %4 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @tree_last(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1, %3
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3, !llvm.loop !87

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_tree_list_stat(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 2) #24
  %4 = getelementptr inbounds %struct.tree_list, ptr %3, i64 0, i32 1
  store ptr %0, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_list, ptr %3, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_tree_list_vec_stat(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #24, !range !23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %17, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %12, %6 ], [ 0, %1 ]
  %8 = phi ptr [ %11, %6 ], [ %2, %1 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !6
  %10 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %9) #24
  store ptr %10, ptr %8, align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %12 = add i32 %7, 1
  %13 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %0, i32 noundef %12, ptr noundef nonnull %3) #24, !range !23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %6, !llvm.loop !88

15:                                               ; preds = %6
  %16 = load ptr, ptr %2, align 8, !tbaa !6
  br label %17

17:                                               ; preds = %15, %1
  %18 = phi ptr [ %16, %15 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_tree_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !53
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !6
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !6
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ctor_to_list(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store ptr null, ptr %2, align 8, !tbaa !6
  %3 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %4) #24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %23, label %7

7:                                                ; preds = %1, %7
  %8 = phi ptr [ %18, %7 ], [ %4, %1 ]
  %9 = phi i32 [ %17, %7 ], [ 0, %1 ]
  %10 = phi ptr [ %16, %7 ], [ %2, %1 ]
  %11 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %8, i32 noundef %9) #24
  %12 = getelementptr inbounds %struct.constructor_elt_d, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  %14 = load ptr, ptr %11, align 8, !tbaa !71
  %15 = tail call ptr @build_tree_list_stat(ptr noundef %14, ptr noundef %13) #24
  store ptr %15, ptr %10, align 8, !tbaa !6
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  %17 = add nuw i32 %9, 1
  %18 = load ptr, ptr %3, align 8, !tbaa !22
  %19 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %18) #24
  %20 = icmp ult i32 %17, %19
  br i1 %20, label %7, label %21, !llvm.loop !89

21:                                               ; preds = %7
  %22 = load ptr, ptr %2, align 8, !tbaa !6
  br label %23

23:                                               ; preds = %21, %1
  %24 = phi ptr [ %22, %21 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  ret ptr %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @ctor_to_vec(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %3) #24
  %5 = tail call fastcc ptr @VEC_tree_gc_alloc(i32 noundef %4) #24
  %6 = load ptr, ptr %2, align 8, !tbaa !22
  %7 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %6) #24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %1, %9
  %10 = phi ptr [ %16, %9 ], [ %6, %1 ]
  %11 = phi i32 [ %15, %9 ], [ 0, %1 ]
  %12 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %10, i32 noundef %11) #24
  %13 = getelementptr inbounds %struct.constructor_elt_d, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %5, ptr noundef %14) #24
  %15 = add nuw i32 %11, 1
  %16 = load ptr, ptr %2, align 8, !tbaa !22
  %17 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %16) #24
  %18 = icmp ult i32 %15, %17
  br i1 %18, label %9, label %19, !llvm.loop !90

19:                                               ; preds = %9, %1
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_gc_alloc(i32 noundef %0) unnamed_addr #0 {
  %2 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef %0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_tree_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 {
  %3 = load i32, ptr %0, align 8, !tbaa !53
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !53
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @size_in_bytes(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  br label %15

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 8), align 8, !tbaa !91
  tail call void %13(ptr noundef null, ptr noundef nonnull %8) #23
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !6
  br label %15

15:                                               ; preds = %6, %12, %4
  %16 = phi ptr [ %5, %4 ], [ %14, %12 ], [ %10, %6 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @int_size_in_bytes(ptr noundef readonly %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !22
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.tree_int_cst, ptr %8, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !22
  %21 = tail call i64 @llvm.smax.i64(i64 %20, i64 -1)
  br label %22

22:                                               ; preds = %18, %4, %10, %14, %1
  %23 = phi i64 [ 0, %1 ], [ -1, %14 ], [ -1, %10 ], [ -1, %4 ], [ %21, %18 ]
  ret i64 %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @max_int_size_in_bytes(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 15
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @host_integerp(ptr noundef nonnull %7, i32 noundef 1) #24, !range !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @tree_low_cst(ptr noundef nonnull %7, i32 noundef 1) #24
  %14 = icmp eq i64 %13, -1
  br i1 %14, label %15, label %24

15:                                               ; preds = %1, %5, %9, %12
  %16 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 9), align 8, !tbaa !92
  %17 = tail call ptr %16(ptr noundef nonnull %0) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @host_integerp(ptr noundef nonnull %17, i32 noundef 1) #24, !range !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = tail call i64 @tree_low_cst(ptr noundef nonnull %17, i32 noundef 1) #24
  br label %24

24:                                               ; preds = %15, %19, %22, %12
  %25 = phi i64 [ %23, %22 ], [ -1, %19 ], [ -1, %15 ], [ %13, %12 ]
  ret i64 %25
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @host_integerp(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 23
  br i1 %7, label %8, label %41

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i64, ptr %9, align 8, !tbaa !22
  %15 = icmp sgt i64 %14, -1
  br i1 %15, label %41, label %18

16:                                               ; preds = %8
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %20, label %39

18:                                               ; preds = %13
  %19 = icmp eq i32 %1, 0
  br i1 %19, label %41, label %39

20:                                               ; preds = %16
  %21 = icmp eq i64 %11, -1
  br i1 %21, label %22, label %41

22:                                               ; preds = %20
  %23 = load i64, ptr %9, align 8, !tbaa !22
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 2097152
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = and i64 %28, 65535
  %33 = icmp eq i64 %32, 8
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 10
  %38 = and i32 %37, 1
  br label %41

39:                                               ; preds = %18, %16
  %40 = zext i1 %12 to i32
  br label %41

41:                                               ; preds = %18, %20, %22, %31, %34, %4, %39, %25, %13, %2
  %42 = phi i32 [ 0, %2 ], [ 0, %4 ], [ %38, %34 ], [ 1, %25 ], [ 1, %13 ], [ %40, %39 ], [ 0, %31 ], [ 0, %22 ], [ 0, %20 ], [ 0, %18 ]
  ret i32 %42
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @tree_low_cst(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef %1) #24, !range !23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 6214, ptr noundef nonnull @.str.219) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !22
  ret i64 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_expr_size(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = add nsw i64 %3, -29
  %5 = icmp ult i64 %4, 12
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call ptr @size_in_bytes(ptr noundef %12) #24
  br label %14

14:                                               ; preds = %6, %10
  %15 = phi ptr [ %13, %10 ], [ %8, %6 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @bit_position(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @bit_from_pos(ptr noundef %3, ptr noundef %5) #23
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @bit_from_pos(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @int_bit_position(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @bit_position(ptr noundef %0) #24
  %3 = tail call i64 @tree_low_cst(ptr noundef %2, i32 noundef 0) #24
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @byte_position(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @byte_from_pos(ptr noundef %3, ptr noundef %5) #23
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @byte_from_pos(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @int_byte_position(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @byte_position(ptr noundef %0) #24
  %3 = tail call i64 @tree_low_cst(ptr noundef %2, i32 noundef 0) #24
  ret i64 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @expr_align(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %24, %1
  %3 = phi i32 [ %30, %24 ], [ -1, %1 ]
  %4 = phi ptr [ %29, %24 ], [ %0, %1 ]
  br label %5

5:                                                ; preds = %2, %21
  %6 = phi ptr [ %23, %21 ], [ %4, %2 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %36 [
    i16 116, label %12
    i16 113, label %12
    i16 117, label %12
    i16 120, label %21
    i16 52, label %21
    i16 53, label %21
    i16 54, label %21
    i16 55, label %21
    i16 60, label %21
    i16 61, label %21
    i16 56, label %24
    i16 30, label %31
    i16 33, label %31
    i16 32, label %31
    i16 34, label %31
    i16 36, label %31
    i16 29, label %31
  ]

9:                                                ; preds = %40, %12
  %10 = phi i32 [ %42, %40 ], [ %20, %12 ]
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 %3)
  ret i32 %11

12:                                               ; preds = %5, %5, %5
  %13 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = tail call i32 @expr_align(ptr noundef %14) #24
  %16 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !22
  %20 = tail call i32 @llvm.umax.i32(i32 %15, i32 %19)
  br label %9

21:                                               ; preds = %5, %5, %5, %5, %5, %5, %5
  %22 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  br label %5

24:                                               ; preds = %5
  %25 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call i32 @expr_align(ptr noundef %26) #24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = tail call i32 @llvm.umin.i32(i32 %27, i32 %3)
  br label %2

31:                                               ; preds = %5, %5, %5, %5, %5, %5
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !22
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 2321, ptr noundef nonnull @.str.219) #23
  br label %40

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 7
  br label %40

40:                                               ; preds = %35, %31, %36
  %41 = phi ptr [ %39, %36 ], [ %32, %31 ], [ %32, %35 ]
  %42 = load i32, ptr %41, align 8, !tbaa !22
  br label %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @array_type_nelts(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load ptr, ptr @global_trees, align 16, !tbaa !6
  br label %18

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 14
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = tail call i32 @integer_zerop(ptr noundef %9) #24, !range !23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %16, ptr noundef %11, ptr noundef %9) #23
  br label %18

18:                                               ; preds = %14, %7, %5
  %19 = phi ptr [ %6, %5 ], [ %17, %14 ], [ %11, %7 ]
  ret ptr %19
}

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @staticp(ptr noundef readonly %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %50, %1
  %3 = phi ptr [ %0, %1 ], [ %52, %50 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %84 [
    i16 29, label %83
    i16 32, label %6
    i16 33, label %23
    i16 51, label %32
    i16 30, label %83
    i16 28, label %83
    i16 41, label %36
    i16 119, label %74
    i16 49, label %53
    i16 48, label %53
    i16 47, label %53
    i16 45, label %60
    i16 46, label %60
  ]

6:                                                ; preds = %2
  %7 = and i64 %4, 67108864
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 33554432
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %84, label %14

14:                                               ; preds = %9, %6
  %15 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 8
  %17 = and i32 %16, 49152
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %84

19:                                               ; preds = %14
  %20 = and i32 %16, 32
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, ptr %3, ptr null
  br label %84

23:                                               ; preds = %2
  %24 = and i64 %4, 67108864
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 33554432
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %84, label %31

31:                                               ; preds = %26, %23
  br label %84

32:                                               ; preds = %2
  %33 = and i64 %4, 67108864
  %34 = icmp eq i64 %33, 0
  %35 = select i1 %34, ptr null, ptr %3
  br label %84

36:                                               ; preds = %2
  %37 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 31
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 2389, ptr noundef nonnull @.str.219) #23
  %43 = load ptr, ptr %37, align 8, !tbaa !22
  br label %44

44:                                               ; preds = %36, %42
  %45 = phi ptr [ %38, %36 ], [ %43, %42 ]
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %45, i64 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 33554432
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %68, %44
  %51 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  br label %2

53:                                               ; preds = %2, %2, %2
  %54 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 131072
  %58 = icmp eq i64 %57, 0
  %59 = select i1 %58, ptr null, ptr %3
  br label %84

60:                                               ; preds = %2, %2
  %61 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 23
  br i1 %67, label %68, label %84

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 23
  br i1 %73, label %50, label %84

74:                                               ; preds = %2
  %75 = getelementptr inbounds %struct.tree_exp, ptr %3, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = getelementptr inbounds %struct.tree_exp, ptr %76, i64 0, i32 3
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = load i64, ptr %78, align 8
  %80 = and i64 %79, 67108864
  %81 = icmp eq i64 %80, 0
  %82 = select i1 %81, ptr null, ptr %3
  br label %84

83:                                               ; preds = %2, %2, %2
  br label %84

84:                                               ; preds = %60, %68, %44, %2, %83, %31, %26, %14, %9, %19, %74, %53, %32
  %85 = phi ptr [ %82, %74 ], [ %59, %53 ], [ %35, %32 ], [ null, %14 ], [ null, %9 ], [ %22, %19 ], [ %3, %31 ], [ null, %26 ], [ %3, %83 ], [ null, %2 ], [ null, %44 ], [ null, %68 ], [ null, %60 ]
  ret ptr %85
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @decl_address_invariant_p(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %44 [
    i16 34, label %45
    i16 36, label %45
    i16 30, label %45
    i16 29, label %45
    i16 32, label %4
    i16 33, label %32
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 67108864
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 33554432
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  br label %20

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %45, label %20

20:                                               ; preds = %12, %15
  %21 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %22 = and i32 %21, 49152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %28 = icmp eq ptr %26, %27
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  %30 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #24
  %31 = icmp eq ptr %30, %27
  br i1 %31, label %45, label %44

32:                                               ; preds = %1
  %33 = and i64 %2, 67108864
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 33554432
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #24
  %42 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %43 = icmp eq ptr %41, %42
  br i1 %43, label %45, label %44

44:                                               ; preds = %1, %40, %29
  br label %45

45:                                               ; preds = %32, %35, %40, %15, %20, %24, %29, %1, %1, %1, %1, %44
  %46 = phi i8 [ 0, %44 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %29 ], [ 1, %24 ], [ 1, %20 ], [ 1, %15 ], [ 1, %40 ], [ 1, %35 ], [ 1, %32 ]
  ret i8 %46
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @decl_function_context(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %18 [
    i16 0, label %36
    i16 29, label %4
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_list, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  br label %20

18:                                               ; preds = %1, %4
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  br label %20

20:                                               ; preds = %8, %18
  %21 = phi ptr [ %17, %8 ], [ %19, %18 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20, %33
  %25 = phi ptr [ %34, %33 ], [ %22, %20 ]
  %26 = load i64, ptr %25, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %31 [
    i16 29, label %36
    i16 4, label %28
  ]

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_block, ptr %25, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  br label %33

31:                                               ; preds = %24
  %32 = tail call ptr @get_containing_scope(ptr noundef nonnull %25) #24
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi ptr [ %30, %28 ], [ %32, %31 ]
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %24, !llvm.loop !93

36:                                               ; preds = %24, %33, %20, %1
  %37 = phi ptr [ null, %1 ], [ null, %20 ], [ %25, %24 ], [ null, %33 ]
  ret ptr %37
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @decl_address_ip_invariant_p(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %32 [
    i16 30, label %33
    i16 29, label %33
    i16 28, label %33
    i16 32, label %4
    i16 33, label %24
  ]

4:                                                ; preds = %1
  %5 = and i64 %2, 67108864
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 33554432
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %14 = load i32, ptr %13, align 8
  br label %20

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 4
  %17 = load i32, ptr %16, align 8
  %18 = and i32 %17, 32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %33, label %20

20:                                               ; preds = %12, %15
  %21 = phi i32 [ %14, %12 ], [ %17, %15 ]
  %22 = and i32 %21, 49152
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %32, label %33

24:                                               ; preds = %1
  %25 = and i64 %2, 67108864
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 33554432
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1, %27, %20
  br label %33

33:                                               ; preds = %24, %27, %15, %20, %1, %1, %1, %32
  %34 = phi i8 [ 0, %32 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %20 ], [ 1, %15 ], [ 1, %27 ], [ 1, %24 ]
  ret i8 %34
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @save_expr(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @fold(ptr noundef %0) #23
  %3 = tail call ptr @skip_simple_arithmetic(ptr noundef %2) #24
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @tree_invariant_p_1(ptr noundef nonnull %3) #24, !range !76
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %3) #24, !range !76
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = tail call ptr @build1_stat(i32 noundef 120, ptr noundef %15, ptr noundef %2) #24
  %17 = load i64, ptr %0, align 8
  %18 = and i64 %17, 65535
  %19 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !30
  %21 = icmp ugt i32 %20, 3
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !22
  br label %25

25:                                               ; preds = %13, %22
  %26 = phi i32 [ %24, %22 ], [ 0, %13 ]
  %27 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !22
  %28 = load i64, ptr %16, align 8
  %29 = or i64 %28, 65536
  store i64 %29, ptr %16, align 8
  br label %30

30:                                               ; preds = %10, %7, %1, %25
  %31 = phi ptr [ %16, %25 ], [ %3, %1 ], [ %2, %7 ], [ %2, %10 ]
  ret ptr %31
}

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @skip_simple_arithmetic(ptr noundef readonly %0) local_unnamed_addr #13 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 117
  br i1 %4, label %5, label %12

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 117
  br i1 %11, label %5, label %12, !llvm.loop !94

12:                                               ; preds = %5, %1
  %13 = phi i64 [ %2, %1 ], [ %9, %5 ]
  %14 = phi ptr [ %0, %1 ], [ %8, %5 ]
  br label %15

15:                                               ; preds = %12, %33
  %16 = phi i64 [ %36, %33 ], [ %13, %12 ]
  %17 = phi ptr [ %35, %33 ], [ %14, %12 ]
  %18 = and i64 %16, 65535
  %19 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %18
  %20 = load i32, ptr %19, align 4, !tbaa !30
  switch i32 %20, label %37 [
    i32 6, label %21
    i32 7, label %23
  ]

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  br label %33

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %25 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call fastcc zeroext i8 @tree_invariant_p(ptr noundef %26) #24, !range !76
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %23
  %30 = load ptr, ptr %24, align 8, !tbaa !22
  %31 = tail call fastcc zeroext i8 @tree_invariant_p(ptr noundef %30) #24, !range !76
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29, %23, %21
  %34 = phi ptr [ %22, %21 ], [ %24, %23 ], [ %25, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = load i64, ptr %35, align 8
  br label %15

37:                                               ; preds = %15, %29
  ret ptr %17
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @tree_invariant_p_1(ptr nocapture noundef readonly %0) unnamed_addr #13 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 131072
  %4 = icmp ne i64 %3, 0
  %5 = and i64 %2, 1114112
  %6 = icmp eq i64 %5, 1048576
  %7 = or i1 %4, %6
  br i1 %7, label %50, label %8

8:                                                ; preds = %1
  %9 = trunc i64 %2 to i16
  switch i16 %9, label %49 [
    i16 120, label %50
    i16 121, label %10
  ]

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %12) #24, !range !76
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %10, %36
  %16 = phi ptr [ %38, %36 ], [ %12, %10 ]
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %36 [
    i16 45, label %19
    i16 46, label %19
    i16 41, label %32
  ]

19:                                               ; preds = %15, %15
  %20 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = tail call fastcc zeroext i8 @tree_invariant_p(ptr noundef %21) #24, !range !76
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %50, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %50

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %15, %32, %28
  %37 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %38) #24, !range !76
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %15, !llvm.loop !95

41:                                               ; preds = %36, %10
  %42 = phi ptr [ %12, %10 ], [ %38, %36 ]
  %43 = load i64, ptr %42, align 8
  %44 = and i64 %43, 65535
  %45 = add nsw i64 %44, -23
  %46 = icmp ult i64 %45, 6
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = tail call zeroext i8 @decl_address_invariant_p(ptr noundef nonnull %42) #24, !range !76
  br label %50

49:                                               ; preds = %8
  br label %50

50:                                               ; preds = %32, %19, %24, %28, %41, %47, %8, %1, %49
  %51 = phi i8 [ 0, %49 ], [ 1, %1 ], [ 1, %8 ], [ 1, %41 ], [ %48, %47 ], [ 0, %28 ], [ 0, %24 ], [ 0, %19 ], [ 0, %32 ]
  ret i8 %51
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @contains_placeholder_p(ptr noundef %0) local_unnamed_addr #14 {
  %2 = alloca %struct.const_call_expr_arg_iterator_d, align 8
  %3 = icmp eq ptr %0, null
  br i1 %3, label %139, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = icmp eq i32 %7, 62
  br i1 %8, label %139, label %9

9:                                                ; preds = %4, %24
  %10 = phi i32 [ %28, %24 ], [ %7, %4 ]
  %11 = phi ptr [ %26, %24 ], [ %0, %4 ]
  %12 = phi i64 [ %25, %24 ], [ %5, %4 ]
  %13 = and i64 %12, 65535
  %14 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !30
  switch i32 %15, label %139 [
    i32 4, label %16
    i32 0, label %30
    i32 6, label %51
    i32 7, label %51
    i32 5, label %51
    i32 10, label %51
    i32 9, label %121
  ]

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %139, label %20

20:                                               ; preds = %16
  %21 = load i64, ptr %18, align 8
  %22 = and i64 %21, 131072
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %139

24:                                               ; preds = %20, %47, %57, %87, %98, %117
  %25 = phi i64 [ %21, %20 ], [ %48, %47 ], [ %58, %57 ], [ %88, %87 ], [ %99, %98 ], [ %118, %117 ]
  %26 = phi ptr [ %18, %20 ], [ %45, %47 ], [ %55, %57 ], [ %85, %87 ], [ %96, %98 ], [ %115, %117 ]
  %27 = trunc i64 %25 to i32
  %28 = and i32 %27, 65535
  %29 = icmp eq i32 %28, 62
  br i1 %29, label %139, label %9

30:                                               ; preds = %9
  %31 = icmp eq i32 %10, 2
  br i1 %31, label %32, label %139

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %32
  %37 = load i64, ptr %34, align 8
  %38 = and i64 %37, 131072
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %34) #24, !range !76
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %139

43:                                               ; preds = %40, %36, %32
  %44 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %139, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %45, align 8
  %49 = and i64 %48, 131072
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %24, label %139

51:                                               ; preds = %9, %9, %9, %9
  %52 = trunc i64 %12 to i16
  switch i16 %52, label %91 [
    i16 52, label %53
    i16 56, label %61
    i16 120, label %139
  ]

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %139, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 131072
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %24, label %139

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = load i64, ptr %63, align 8
  %67 = and i64 %66, 131072
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %63) #24, !range !76
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %139

72:                                               ; preds = %69, %65, %61
  %73 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %83, label %76

76:                                               ; preds = %72
  %77 = load i64, ptr %74, align 8
  %78 = and i64 %77, 131072
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %74) #24, !range !76
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %139

83:                                               ; preds = %80, %76, %72
  %84 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1, i32 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %139, label %87

87:                                               ; preds = %83
  %88 = load i64, ptr %85, align 8
  %89 = and i64 %88, 131072
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %24, label %139

91:                                               ; preds = %51
  %92 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %13
  %93 = load i8, ptr %92, align 1, !tbaa !22
  switch i8 %93, label %139 [
    i8 1, label %94
    i8 2, label %102
  ]

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !22
  %97 = icmp eq ptr %96, null
  br i1 %97, label %139, label %98

98:                                               ; preds = %94
  %99 = load i64, ptr %96, align 8
  %100 = and i64 %99, 131072
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %24, label %139

102:                                              ; preds = %91
  %103 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = icmp eq ptr %104, null
  br i1 %105, label %113, label %106

106:                                              ; preds = %102
  %107 = load i64, ptr %104, align 8
  %108 = and i64 %107, 131072
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %104) #24, !range !76
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %110, %106, %102
  %114 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !22
  %116 = icmp eq ptr %115, null
  br i1 %116, label %139, label %117

117:                                              ; preds = %113
  %118 = load i64, ptr %115, align 8
  %119 = and i64 %118, 131072
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %24, label %139

121:                                              ; preds = %9
  %122 = icmp eq i32 %10, 59
  br i1 %122, label %123, label %139

123:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %124 = call fastcc ptr @first_const_call_expr_arg(ptr noundef nonnull %11, ptr noundef nonnull %2) #24
  %125 = icmp eq ptr %124, null
  br i1 %125, label %137, label %126

126:                                              ; preds = %123, %134
  %127 = phi ptr [ %135, %134 ], [ %124, %123 ]
  %128 = load i64, ptr %127, align 8
  %129 = and i64 %128, 131072
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %127) #24, !range !76
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %126, %131
  %135 = call fastcc ptr @next_const_call_expr_arg(ptr noundef nonnull %2) #24
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %126, !llvm.loop !96

137:                                              ; preds = %131, %134, %123
  %138 = phi i8 [ 0, %123 ], [ 0, %134 ], [ 1, %131 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  br label %139

139:                                              ; preds = %30, %9, %91, %110, %117, %113, %94, %98, %51, %69, %80, %87, %83, %53, %57, %40, %47, %43, %16, %20, %24, %4, %1, %121, %137
  %140 = phi i8 [ %138, %137 ], [ 0, %121 ], [ 0, %1 ], [ 1, %4 ], [ 1, %24 ], [ 0, %20 ], [ 0, %16 ], [ 0, %43 ], [ 0, %47 ], [ 1, %40 ], [ 0, %57 ], [ 0, %53 ], [ 0, %83 ], [ 0, %87 ], [ 1, %80 ], [ 1, %69 ], [ 0, %51 ], [ 0, %98 ], [ 0, %94 ], [ 0, %113 ], [ 0, %117 ], [ 1, %110 ], [ 0, %91 ], [ 0, %9 ], [ 0, %30 ]
  ret i8 %140
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build1_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %4
  %6 = load i8, ptr %5, align 1, !tbaa !22
  %7 = icmp eq i8 %6, 1
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3602, ptr noundef nonnull @.str.219) #23
  br label %9

9:                                                ; preds = %3, %8
  %10 = tail call ptr @ggc_alloc_stat(i64 noundef 48) #23
  %11 = getelementptr inbounds i8, ptr %10, i64 8
  store i64 0, ptr %11, align 8
  %12 = and i32 %0, 65535
  %13 = zext nneg i32 %12 to i64
  store i64 %13, ptr %10, align 8
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 1
  store i32 0, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  store ptr %2, ptr %16, align 8, !tbaa !22
  %17 = tail call ptr @tree_block(ptr noundef nonnull %10) #24
  store ptr null, ptr %17, align 8, !tbaa !6
  %18 = icmp ne ptr %2, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %9
  %20 = load i64, ptr %2, align 8
  %21 = and i64 %20, 65535
  %22 = add nsw i64 %21, -5
  %23 = icmp ult i64 %22, 18
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = and i64 %20, 65536
  %26 = load i64, ptr %10, align 8
  %27 = and i64 %26, -65537
  %28 = or disjoint i64 %27, %25
  store i64 %28, ptr %10, align 8
  %29 = load i64, ptr %2, align 8
  %30 = and i64 %29, 1048576
  %31 = and i64 %28, -1048577
  %32 = or disjoint i64 %31, %30
  store i64 %32, ptr %10, align 8
  br label %33

33:                                               ; preds = %24, %19, %9
  %34 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %4
  %35 = load i32, ptr %34, align 4, !tbaa !30
  %36 = icmp eq i32 %35, 8
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i64, ptr %10, align 8
  %39 = or i64 %38, 65536
  store i64 %39, ptr %10, align 8
  br label %76

40:                                               ; preds = %33
  switch i32 %0, label %50 [
    i32 129, label %41
    i32 49, label %45
    i32 48, label %45
    i32 47, label %45
    i32 121, label %48
  ]

41:                                               ; preds = %40
  %42 = load i64, ptr %10, align 8
  %43 = and i64 %42, -1114113
  %44 = or disjoint i64 %43, 65536
  store i64 %44, ptr %10, align 8
  br label %76

45:                                               ; preds = %40, %40, %40
  %46 = load i64, ptr %10, align 8
  %47 = and i64 %46, -1048577
  store i64 %47, ptr %10, align 8
  br label %76

48:                                               ; preds = %40
  br i1 %18, label %49, label %76

49:                                               ; preds = %48
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %10) #24
  br label %76

50:                                               ; preds = %40
  %51 = icmp eq i32 %35, 6
  %52 = icmp eq i32 %0, 118
  %53 = or i1 %52, %51
  %54 = and i1 %18, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load i64, ptr %2, align 8
  %57 = and i64 %56, 65535
  %58 = add nsw i64 %57, -5
  %59 = icmp ult i64 %58, 18
  %60 = and i64 %56, 131072
  %61 = icmp eq i64 %60, 0
  %62 = or i1 %61, %59
  br i1 %62, label %66, label %63

63:                                               ; preds = %55
  %64 = load i64, ptr %10, align 8
  %65 = or i64 %64, 131072
  store i64 %65, ptr %10, align 8
  br label %66

66:                                               ; preds = %50, %63, %55
  %67 = icmp eq i32 %35, 4
  %68 = and i1 %18, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i64, ptr %2, align 8
  %71 = and i64 %70, 524288
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %69
  %74 = load i64, ptr %10, align 8
  %75 = or i64 %74, 524288
  store i64 %75, ptr %10, align 8
  br label %76

76:                                               ; preds = %41, %45, %49, %48, %73, %69, %66, %37
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #2 {
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
  ]

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @tree_invariant_p(ptr noundef %0) unnamed_addr #13 {
  %2 = tail call ptr @skip_simple_arithmetic(ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @tree_invariant_p_1(ptr noundef %2) #24, !range !76
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @tree_node_structure(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = tail call fastcc i32 @tree_node_structure_for_code(i32 noundef %4) #24, !range !45
  ret i32 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_const_call_expr_arg(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #15 {
  tail call fastcc void @init_const_call_expr_arg_iterator(ptr noundef %0, ptr noundef %1) #24
  %3 = tail call fastcc ptr @next_const_call_expr_arg(ptr noundef %1) #24
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_const_call_expr_arg(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !97
  %4 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !99
  %6 = icmp slt i32 %3, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !100
  %9 = add nsw i32 %3, 3
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = add nsw i32 %3, 1
  store i32 %13, ptr %2, align 4, !tbaa !97
  br label %14

14:                                               ; preds = %1, %7
  %15 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @init_const_call_expr_arg_iterator(ptr noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #15 {
  store ptr %0, ptr %1, align 8, !tbaa !100
  %3 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_int_cst, ptr %4, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !22
  %7 = trunc i64 %6 to i32
  %8 = add nsw i32 %7, -3
  %9 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %1, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !99
  %10 = getelementptr inbounds %struct.const_call_expr_arg_iterator_d, ptr %1, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !97
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @type_contains_placeholder_p(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 14
  %5 = and i32 %4, 3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = trunc i32 %5 to i8
  %9 = add nsw i8 %8, -1
  br label %20

10:                                               ; preds = %1
  %11 = and i32 %3, -49153
  %12 = or disjoint i32 %11, 16384
  store i32 %12, ptr %2, align 4
  %13 = tail call fastcc zeroext i8 @type_contains_placeholder_1(ptr noundef nonnull %0) #24, !range !101
  %14 = add nuw nsw i8 %13, 1
  %15 = load i32, ptr %2, align 4
  %16 = zext nneg i8 %14 to i32
  %17 = shl nuw nsw i32 %16, 14
  %18 = and i32 %15, -49153
  %19 = add nuw nsw i32 %17, %18
  store i32 %19, ptr %2, align 4
  br label %20

20:                                               ; preds = %10, %7
  %21 = phi i8 [ %9, %7 ], [ %13, %10 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @type_contains_placeholder_1(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load i64, ptr %3, align 8
  %7 = and i64 %6, 131072
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %3) #24, !range !76
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %103

12:                                               ; preds = %9, %5, %1
  %13 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = load i64, ptr %14, align 8
  %18 = and i64 %17, 131072
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %14) #24, !range !76
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %103

23:                                               ; preds = %20, %16, %12
  %24 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call zeroext i8 @type_contains_placeholder_p(ptr noundef nonnull %25) #24, !range !101
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %103

30:                                               ; preds = %27, %23
  %31 = load i64, ptr %0, align 8
  %32 = trunc i64 %31 to i16
  switch i16 %32, label %102 [
    i16 19, label %103
    i16 13, label %103
    i16 6, label %103
    i16 7, label %103
    i16 10, label %103
    i16 5, label %103
    i16 12, label %103
    i16 21, label %103
    i16 20, label %103
    i16 14, label %103
    i16 8, label %33
    i16 9, label %33
    i16 11, label %33
    i16 15, label %54
    i16 16, label %58
    i16 17, label %58
    i16 18, label %58
  ]

33:                                               ; preds = %30, %30, %30
  %34 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %33
  %38 = load i64, ptr %35, align 8
  %39 = and i64 %38, 131072
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %35) #24, !range !76
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %103

44:                                               ; preds = %41, %37, %33
  %45 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %46 = load ptr, ptr %45, align 8, !tbaa !22
  %47 = icmp eq ptr %46, null
  br i1 %47, label %103, label %48

48:                                               ; preds = %44
  %49 = load i64, ptr %46, align 8
  %50 = and i64 %49, 131072
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %48
  %53 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %46) #24, !range !76
  br label %103

54:                                               ; preds = %30
  %55 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = tail call zeroext i8 @type_contains_placeholder_p(ptr noundef %56) #24, !range !101
  br label %103

58:                                               ; preds = %30, %30, %30
  %59 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %103, label %62

62:                                               ; preds = %58, %98
  %63 = phi ptr [ %100, %98 ], [ %60, %58 ]
  %64 = load i64, ptr %63, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 31
  br i1 %66, label %67, label %98

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.tree_field_decl, ptr %63, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %67
  %72 = load i64, ptr %69, align 8
  %73 = and i64 %72, 131072
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %69) #24, !range !76
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %75, %71, %67
  %79 = load i64, ptr %0, align 8
  %80 = and i64 %79, 65535
  %81 = icmp eq i64 %80, 18
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_field_decl, ptr %63, i64 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %93, label %86

86:                                               ; preds = %82
  %87 = load i64, ptr %84, align 8
  %88 = and i64 %87, 131072
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = tail call zeroext i8 @contains_placeholder_p(ptr noundef nonnull %84) #24, !range !76
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90, %86, %82, %78
  %94 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %95 = load ptr, ptr %94, align 8, !tbaa !22
  %96 = tail call zeroext i8 @type_contains_placeholder_p(ptr noundef %95) #24, !range !101
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %62, %93
  %99 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !22
  %101 = icmp eq ptr %100, null
  br i1 %101, label %103, label %62, !llvm.loop !102

102:                                              ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 2848, ptr noundef nonnull @.str.219) #23
  br label %103

103:                                              ; preds = %98, %75, %90, %93, %58, %41, %52, %48, %44, %30, %30, %30, %30, %30, %30, %30, %30, %30, %30, %9, %20, %27, %102, %54
  %104 = phi i8 [ 0, %102 ], [ %57, %54 ], [ 1, %27 ], [ 1, %20 ], [ 1, %9 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 0, %30 ], [ 1, %41 ], [ 0, %48 ], [ 0, %44 ], [ %53, %52 ], [ 0, %58 ], [ 0, %98 ], [ 1, %75 ], [ 1, %90 ], [ 1, %93 ]
  ret i8 %104
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @find_placeholder_in_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi i64 [ %3, %2 ], [ %26, %25 ]
  %6 = phi ptr [ %0, %2 ], [ %27, %25 ]
  %7 = trunc i64 %5 to i16
  switch i16 %7, label %49 [
    i16 2, label %8
    i16 41, label %28
  ]

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load i64, ptr %10, align 8
  %14 = and i64 %13, 131072
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void @find_placeholder_in_expr(ptr noundef nonnull %10, ptr noundef %1) #24
  br label %17

17:                                               ; preds = %8, %12, %16
  %18 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %104, label %21

21:                                               ; preds = %17
  %22 = load i64, ptr %19, align 8
  %23 = and i64 %22, 131072
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %104

25:                                               ; preds = %21, %45
  %26 = phi i64 [ %22, %21 ], [ %46, %45 ]
  %27 = phi ptr [ %19, %21 ], [ %43, %45 ]
  br label %4

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi ptr [ %29, %28 ], [ %38, %30 ]
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 65535
  %35 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !30
  %37 = icmp eq i32 %36, 4
  %38 = getelementptr inbounds %struct.tree_exp, ptr %32, i64 0, i32 3
  br i1 %37, label %30, label %39, !llvm.loop !103

39:                                               ; preds = %30
  %40 = icmp eq i64 %34, 62
  br i1 %40, label %41, label %42

41:                                               ; preds = %39
  tail call fastcc void @push_without_duplicates(ptr noundef nonnull %6, ptr noundef %1) #24
  br label %104

42:                                               ; preds = %39
  %43 = load ptr, ptr %29, align 8, !tbaa !22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %104, label %45

45:                                               ; preds = %42
  %46 = load i64, ptr %43, align 8
  %47 = and i64 %46, 131072
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %25, label %104

49:                                               ; preds = %4
  %50 = and i64 %5, 65535
  %51 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !30
  switch i32 %52, label %103 [
    i32 1, label %104
    i32 3, label %56
    i32 10, label %60
    i32 0, label %69
    i32 6, label %69
    i32 7, label %69
    i32 5, label %69
    i32 4, label %69
    i32 9, label %53
  ]

53:                                               ; preds = %49
  %54 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %6) #24
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %88, label %104

56:                                               ; preds = %49
  %57 = and i64 %5, 67108864
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %104

59:                                               ; preds = %56
  tail call fastcc void @push_without_duplicates(ptr noundef nonnull %6, ptr noundef %1) #24
  br label %104

60:                                               ; preds = %49
  %61 = icmp eq i64 %50, 121
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, 65535
  %67 = icmp eq i64 %66, 62
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  tail call fastcc void @push_without_duplicates(ptr noundef nonnull %6, ptr noundef %1) #24
  br label %104

69:                                               ; preds = %60, %62, %49, %49, %49, %49, %49
  %70 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %50
  %71 = load i8, ptr %70, align 1, !tbaa !22
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %104, label %73

73:                                               ; preds = %69
  %74 = zext i8 %71 to i64
  br label %75

75:                                               ; preds = %73, %85
  %76 = phi i64 [ 0, %73 ], [ %86, %85 ]
  %77 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load i64, ptr %78, align 8
  %82 = and i64 %81, 131072
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  tail call void @find_placeholder_in_expr(ptr noundef nonnull %78, ptr noundef %1) #24
  br label %85

85:                                               ; preds = %75, %80, %84
  %86 = add nuw nsw i64 %76, 1
  %87 = icmp eq i64 %86, %74
  br i1 %87, label %104, label %75, !llvm.loop !104

88:                                               ; preds = %53, %98
  %89 = phi i64 [ %99, %98 ], [ 1, %53 ]
  %90 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3, i64 %89
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %98, label %93

93:                                               ; preds = %88
  %94 = load i64, ptr %91, align 8
  %95 = and i64 %94, 131072
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  tail call void @find_placeholder_in_expr(ptr noundef nonnull %91, ptr noundef %1) #24
  br label %98

98:                                               ; preds = %88, %93, %97
  %99 = add nuw nsw i64 %89, 1
  %100 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %6) #24
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %99, %101
  br i1 %102, label %88, label %104, !llvm.loop !105

103:                                              ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 2964, ptr noundef nonnull @.str.219) #23
  br label %104

104:                                              ; preds = %42, %45, %17, %21, %98, %85, %53, %69, %41, %56, %59, %103, %68, %49
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @push_without_duplicates(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = load ptr, ptr %1, align 8, !tbaa !6
  %5 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #24, !range !23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %12

7:                                                ; preds = %12
  %8 = add i32 %13, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !6
  %10 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %9, i32 noundef %8, ptr noundef nonnull %3) #24, !range !23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12, !llvm.loop !106

12:                                               ; preds = %2, %7
  %13 = phi i32 [ %8, %7 ], [ 0, %2 ]
  %14 = load ptr, ptr %3, align 8, !tbaa !6
  %15 = tail call i32 @simple_cst_equal(ptr noundef %14, ptr noundef %0) #24, !range !47
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %19, label %7

17:                                               ; preds = %7, %2
  %18 = load ptr, ptr %3, align 8, !tbaa !6
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %14, %12 ]
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %1, ptr noundef %0) #24
  br label %23

23:                                               ; preds = %22, %19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @tree_operand_length(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = icmp eq i32 %5, 9
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = trunc i64 %11 to i32
  br label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds [0 x i8], ptr @tree_code_length, i64 0, i64 %3
  %15 = load i8, ptr %14, align 1, !tbaa !22
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i32 [ %12, %7 ], [ %16, %13 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @simple_cst_equal(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.const_call_expr_arg_iterator_d, align 8
  %4 = alloca %struct.const_call_expr_arg_iterator_d, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %248, label %6

6:                                                ; preds = %2, %34
  %7 = phi ptr [ %37, %34 ], [ %0, %2 ]
  %8 = phi ptr [ %36, %34 ], [ %1, %2 ]
  %9 = icmp eq ptr %7, null
  br i1 %9, label %248, label %10

10:                                               ; preds = %6, %40
  %11 = phi ptr [ %42, %40 ], [ %8, %6 ]
  %12 = icmp eq ptr %11, null
  br i1 %12, label %248, label %13

13:                                               ; preds = %10
  %14 = load i64, ptr %7, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = load i64, ptr %11, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  %20 = icmp eq i32 %16, 113
  %21 = and i32 %15, 65534
  %22 = icmp eq i32 %21, 116
  %23 = or i1 %22, %20
  %24 = icmp eq i32 %19, 113
  %25 = and i32 %18, 65534
  %26 = icmp eq i32 %25, 116
  %27 = or i1 %26, %24
  br i1 %23, label %28, label %39

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  br i1 %27, label %31, label %34

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  br label %34

34:                                               ; preds = %28, %31, %114, %199, %211, %220
  %35 = phi ptr [ %223, %220 ], [ %213, %211 ], [ %201, %199 ], [ %116, %114 ], [ %30, %31 ], [ %30, %28 ]
  %36 = phi ptr [ %224, %220 ], [ %213, %211 ], [ %203, %199 ], [ %118, %114 ], [ %33, %31 ], [ %11, %28 ]
  %37 = freeze ptr %35
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %248, label %6

39:                                               ; preds = %13
  br i1 %27, label %40, label %44

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = icmp eq ptr %7, %42
  br i1 %43, label %248, label %10

44:                                               ; preds = %39
  %45 = icmp eq i32 %16, %19
  br i1 %45, label %46, label %248

46:                                               ; preds = %44
  %47 = trunc i64 %14 to i16
  switch i16 %47, label %225 [
    i16 23, label %48
    i16 24, label %61
    i16 25, label %68
    i16 28, label %75
    i16 51, label %88
    i16 120, label %114
    i16 59, label %119
    i16 55, label %162
    i16 60, label %204
    i16 41, label %214
    i16 32, label %248
    i16 34, label %248
    i16 33, label %248
    i16 29, label %248
  ]

48:                                               ; preds = %46
  %49 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1
  %52 = load i64, ptr %51, align 8, !tbaa !22
  %53 = icmp eq i64 %50, %52
  br i1 %53, label %54, label %248

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.tree_int_cst, ptr %7, i64 0, i32 1, i32 1
  %56 = load i64, ptr %55, align 8, !tbaa !22
  %57 = getelementptr inbounds %struct.tree_int_cst, ptr %11, i64 0, i32 1, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !22
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  br label %248

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.tree_real_cst, ptr %7, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.tree_real_cst, ptr %11, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  %66 = tail call zeroext i8 @real_identical(ptr noundef %63, ptr noundef %65) #23
  %67 = zext i8 %66 to i32
  br label %248

68:                                               ; preds = %46
  %69 = getelementptr inbounds %struct.tree_fixed_cst, ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.tree_fixed_cst, ptr %11, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = tail call zeroext i8 @fixed_identical(ptr noundef %70, ptr noundef %72) #23
  %74 = zext i8 %73 to i32
  br label %248

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.tree_string, ptr %7, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !22
  %78 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 1
  %79 = load i32, ptr %78, align 8, !tbaa !22
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %248

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.tree_string, ptr %7, i64 0, i32 2
  %83 = getelementptr inbounds %struct.tree_string, ptr %11, i64 0, i32 2
  %84 = sext i32 %77 to i64
  %85 = tail call i32 @bcmp(ptr nonnull %82, ptr nonnull %83, i64 %84)
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  br label %248

88:                                               ; preds = %46
  %89 = getelementptr inbounds %struct.tree_constructor, ptr %7, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.tree_constructor, ptr %11, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %90) #24
  %94 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %92) #24
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %248

96:                                               ; preds = %88
  %97 = icmp eq i32 %93, 0
  br i1 %97, label %248, label %103

98:                                               ; preds = %103
  %99 = add nuw nsw i64 %104, 1
  %100 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %90) #24
  %101 = zext i32 %100 to i64
  %102 = icmp ult i64 %99, %101
  br i1 %102, label %103, label %248, !llvm.loop !107

103:                                              ; preds = %96, %98
  %104 = phi i64 [ %99, %98 ], [ 0, %96 ]
  %105 = trunc i64 %104 to i32
  %106 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %90, i32 noundef %105) #24
  %107 = getelementptr inbounds %struct.constructor_elt_d, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !65
  %109 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %92, i32 noundef %105) #24
  %110 = getelementptr inbounds %struct.constructor_elt_d, ptr %109, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !65
  %112 = tail call i32 @simple_cst_equal(ptr noundef %108, ptr noundef %111) #24, !range !47
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %248, label %98

114:                                              ; preds = %46
  %115 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !22
  %117 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !22
  br label %34

119:                                              ; preds = %46
  %120 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !22
  %122 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %123 = load ptr, ptr %122, align 8, !tbaa !22
  %124 = tail call i32 @simple_cst_equal(ptr noundef %121, ptr noundef %123) #24, !range !47
  %125 = icmp slt i32 %124, 1
  br i1 %125, label %248, label %126

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %128 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  %130 = getelementptr inbounds %struct.tree_int_cst, ptr %129, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !22
  %132 = trunc i64 %131 to i32
  %133 = load ptr, ptr %127, align 8, !tbaa !22
  %134 = getelementptr inbounds %struct.tree_int_cst, ptr %133, i64 0, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !22
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %248

138:                                              ; preds = %126
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  %139 = call fastcc ptr @first_const_call_expr_arg(ptr noundef nonnull %7, ptr noundef nonnull %3) #24
  %140 = call fastcc ptr @first_const_call_expr_arg(ptr noundef nonnull %11, ptr noundef nonnull %4) #24
  %141 = icmp ne ptr %139, null
  %142 = icmp ne ptr %140, null
  %143 = select i1 %141, i1 %142, i1 false
  br i1 %143, label %144, label %155

144:                                              ; preds = %138, %149
  %145 = phi ptr [ %151, %149 ], [ %140, %138 ]
  %146 = phi ptr [ %150, %149 ], [ %139, %138 ]
  %147 = tail call i32 @simple_cst_equal(ptr noundef nonnull %146, ptr noundef nonnull %145) #24, !range !47
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %160, label %149

149:                                              ; preds = %144
  %150 = call fastcc ptr @next_const_call_expr_arg(ptr noundef nonnull %3) #24
  %151 = call fastcc ptr @next_const_call_expr_arg(ptr noundef nonnull %4) #24
  %152 = icmp ne ptr %150, null
  %153 = icmp ne ptr %151, null
  %154 = select i1 %152, i1 %153, i1 false
  br i1 %154, label %144, label %155, !llvm.loop !108

155:                                              ; preds = %149, %138
  %156 = phi ptr [ %139, %138 ], [ %150, %149 ]
  %157 = phi ptr [ %140, %138 ], [ %151, %149 ]
  %158 = icmp eq ptr %156, %157
  %159 = zext i1 %158 to i32
  br label %160

160:                                              ; preds = %144, %155
  %161 = phi i32 [ %159, %155 ], [ %147, %144 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  br label %248

162:                                              ; preds = %46
  %163 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 32
  br i1 %167, label %168, label %179

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.tree_decl_minimal, ptr %164, i64 0, i32 3
  %170 = load ptr, ptr %169, align 8, !tbaa !22
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !22
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %199, label %175

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %164, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !22
  %178 = icmp eq ptr %177, null
  br i1 %178, label %199, label %179

179:                                              ; preds = %175, %168, %162
  %180 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %181 = load ptr, ptr %180, align 8, !tbaa !22
  %182 = load i64, ptr %181, align 8
  %183 = and i64 %182, 65535
  %184 = icmp eq i64 %183, 32
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.tree_decl_minimal, ptr %181, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !22
  %188 = icmp eq ptr %187, null
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i8, ptr getelementptr inbounds ([191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 32, i64 11), align 1, !tbaa !22
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.tree_decl_with_rtl, ptr %181, i64 0, i32 1
  %194 = load ptr, ptr %193, align 8, !tbaa !22
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %179, %185, %192
  %197 = tail call i32 @simple_cst_equal(ptr noundef nonnull %164, ptr noundef nonnull %181) #24, !range !47
  %198 = icmp slt i32 %197, 1
  br i1 %198, label %248, label %199

199:                                              ; preds = %172, %175, %189, %192, %196
  %200 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %201 = load ptr, ptr %200, align 8, !tbaa !22
  %202 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %203 = load ptr, ptr %202, align 8, !tbaa !22
  br label %34

204:                                              ; preds = %46
  %205 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %206 = load ptr, ptr %205, align 8, !tbaa !22
  %207 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %208 = load ptr, ptr %207, align 8, !tbaa !22
  %209 = tail call i32 @simple_cst_equal(ptr noundef %206, ptr noundef %208) #24, !range !47
  %210 = icmp slt i32 %209, 1
  br i1 %210, label %248, label %211

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %213 = load ptr, ptr %212, align 8, !tbaa !22
  br label %34

214:                                              ; preds = %46
  %215 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %216 = load ptr, ptr %215, align 8, !tbaa !22
  %217 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 1
  %218 = load ptr, ptr %217, align 8, !tbaa !22
  %219 = icmp eq ptr %216, %218
  br i1 %219, label %220, label %248

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3
  %222 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %223 = load ptr, ptr %222, align 8, !tbaa !22
  %224 = load ptr, ptr %221, align 8, !tbaa !22
  br label %34

225:                                              ; preds = %46
  %226 = icmp ugt i32 %16, 187
  br i1 %226, label %248, label %227

227:                                              ; preds = %225
  %228 = and i64 %14, 65535
  %229 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !30
  switch i32 %230, label %248 [
    i32 6, label %231
    i32 7, label %231
    i32 5, label %231
    i32 10, label %231
    i32 4, label %231
    i32 8, label %231
  ]

231:                                              ; preds = %227, %227, %227, %227, %227, %227
  %232 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %228
  %233 = load i8, ptr %232, align 1, !tbaa !22
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %231
  %236 = zext i8 %233 to i64
  br label %237

237:                                              ; preds = %237, %235
  %238 = phi i64 [ 0, %235 ], [ %245, %237 ]
  %239 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3, i64 %238
  %240 = load ptr, ptr %239, align 8, !tbaa !22
  %241 = getelementptr inbounds %struct.tree_exp, ptr %11, i64 0, i32 3, i64 %238
  %242 = load ptr, ptr %241, align 8, !tbaa !22
  %243 = tail call i32 @simple_cst_equal(ptr noundef %240, ptr noundef %242) #24, !range !47
  %244 = icmp slt i32 %243, 1
  %245 = add nuw nsw i64 %238, 1
  %246 = icmp eq i64 %245, %236
  %247 = select i1 %244, i1 true, i1 %246
  br i1 %247, label %248, label %237, !llvm.loop !109

248:                                              ; preds = %44, %196, %204, %214, %46, %46, %46, %46, %34, %6, %40, %10, %98, %103, %237, %2, %96, %231, %227, %225, %126, %119, %88, %75, %81, %48, %54, %160, %68, %61
  %249 = phi i32 [ %161, %160 ], [ %74, %68 ], [ %67, %61 ], [ 0, %48 ], [ %60, %54 ], [ 0, %75 ], [ %87, %81 ], [ 0, %88 ], [ %124, %119 ], [ 0, %126 ], [ -1, %225 ], [ -1, %227 ], [ 1, %231 ], [ 1, %96 ], [ 1, %2 ], [ %243, %237 ], [ 1, %98 ], [ 0, %103 ], [ 0, %10 ], [ 1, %40 ], [ 0, %6 ], [ 1, %34 ], [ 0, %46 ], [ 0, %46 ], [ 0, %46 ], [ 0, %46 ], [ 0, %214 ], [ %209, %204 ], [ %197, %196 ], [ 0, %44 ]
  ret i32 %249
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call fastcc void @VEC_tree_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !6
  tail call fastcc void @VEC_tree_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_tree_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = tail call fastcc i32 @VEC_tree_base_space(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !6
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_space(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !75
  %6 = load i32, ptr %0, align 8, !tbaa !53
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @substitute_in_expr(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  br label %5

5:                                                ; preds = %258, %3
  %6 = phi i64 [ %4, %3 ], [ %259, %258 ]
  %7 = phi ptr [ %0, %3 ], [ %256, %258 ]
  %8 = trunc i64 %6 to i32
  %9 = and i32 %8, 65535
  %10 = trunc i64 %6 to i16
  switch i16 %10, label %80 [
    i16 2, label %11
    i16 41, label %43
  ]

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 131072
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = tail call ptr @substitute_in_expr(ptr noundef nonnull %13, ptr noundef %1, ptr noundef %2) #24
  br label %21

21:                                               ; preds = %11, %15, %19
  %22 = phi ptr [ %20, %19 ], [ %13, %15 ], [ null, %11 ]
  %23 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = load i64, ptr %24, align 8
  %28 = and i64 %27, 131072
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = tail call ptr @substitute_in_expr(ptr noundef nonnull %24, ptr noundef %1, ptr noundef %2) #24
  br label %32

32:                                               ; preds = %21, %26, %30
  %33 = phi ptr [ %31, %30 ], [ %24, %26 ], [ null, %21 ]
  %34 = load ptr, ptr %12, align 8, !tbaa !22
  %35 = icmp eq ptr %22, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load ptr, ptr %23, align 8, !tbaa !22
  %38 = icmp eq ptr %33, %37
  br i1 %38, label %306, label %39

39:                                               ; preds = %36, %32
  %40 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = tail call ptr @tree_cons_stat(ptr noundef %41, ptr noundef %33, ptr noundef %22) #24
  br label %306

43:                                               ; preds = %5
  %44 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi ptr [ %44, %43 ], [ %53, %45 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = load i64, ptr %47, align 8
  %49 = and i64 %48, 65535
  %50 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !30
  %52 = icmp eq i32 %51, 4
  %53 = getelementptr inbounds %struct.tree_exp, ptr %47, i64 0, i32 3
  br i1 %52, label %45, label %54, !llvm.loop !110

54:                                               ; preds = %45
  %55 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq i64 %49, 62
  %58 = icmp eq ptr %56, %1
  %59 = select i1 %57, i1 %58, i1 false
  br i1 %59, label %306, label %60

60:                                               ; preds = %54
  br i1 %57, label %61, label %65

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %306, label %65

65:                                               ; preds = %61, %60
  %66 = load ptr, ptr %44, align 8, !tbaa !22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %306, label %68

68:                                               ; preds = %65
  %69 = load i64, ptr %66, align 8
  %70 = and i64 %69, 131072
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %306

72:                                               ; preds = %68
  %73 = tail call ptr @substitute_in_expr(ptr noundef nonnull %66, ptr noundef %1, ptr noundef %2) #24
  %74 = load ptr, ptr %44, align 8, !tbaa !22
  %75 = icmp eq ptr %73, %74
  br i1 %75, label %306, label %76

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  %79 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef 41, ptr noundef %78, ptr noundef %73, ptr noundef %56, ptr noundef null) #23
  br label %300

80:                                               ; preds = %5
  %81 = and i64 %6, 65535
  %82 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %81
  %83 = load i32, ptr %82, align 4, !tbaa !30
  switch i32 %83, label %299 [
    i32 1, label %306
    i32 3, label %84
    i32 10, label %87
    i32 0, label %89
    i32 6, label %89
    i32 7, label %89
    i32 5, label %89
    i32 4, label %89
    i32 9, label %248
  ]

84:                                               ; preds = %80
  %85 = icmp eq ptr %7, %1
  %86 = select i1 %85, ptr %2, ptr %7
  br label %306

87:                                               ; preds = %80
  %88 = icmp eq ptr %7, %1
  br i1 %88, label %306, label %89

89:                                               ; preds = %80, %80, %80, %80, %80, %87
  %90 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %81
  %91 = load i8, ptr %90, align 1, !tbaa !22
  switch i8 %91, label %247 [
    i8 0, label %306
    i8 1, label %92
    i8 2, label %108
    i8 3, label %140
    i8 4, label %186
  ]

92:                                               ; preds = %89
  %93 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !22
  %95 = icmp eq ptr %94, null
  br i1 %95, label %306, label %96

96:                                               ; preds = %92
  %97 = load i64, ptr %94, align 8
  %98 = and i64 %97, 131072
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %306

100:                                              ; preds = %96
  %101 = tail call ptr @substitute_in_expr(ptr noundef nonnull %94, ptr noundef %1, ptr noundef %2) #24
  %102 = load ptr, ptr %93, align 8, !tbaa !22
  %103 = icmp eq ptr %101, %102
  br i1 %103, label %306, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !22
  %107 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %106, ptr noundef %101) #23
  br label %300

108:                                              ; preds = %89
  %109 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  %111 = icmp eq ptr %110, null
  br i1 %111, label %118, label %112

112:                                              ; preds = %108
  %113 = load i64, ptr %110, align 8
  %114 = and i64 %113, 131072
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = tail call ptr @substitute_in_expr(ptr noundef nonnull %110, ptr noundef %1, ptr noundef %2) #24
  br label %118

118:                                              ; preds = %108, %112, %116
  %119 = phi ptr [ %117, %116 ], [ %110, %112 ], [ null, %108 ]
  %120 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %121 = load ptr, ptr %120, align 8, !tbaa !22
  %122 = icmp eq ptr %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %118
  %124 = load i64, ptr %121, align 8
  %125 = and i64 %124, 131072
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = tail call ptr @substitute_in_expr(ptr noundef nonnull %121, ptr noundef %1, ptr noundef %2) #24
  br label %129

129:                                              ; preds = %118, %123, %127
  %130 = phi ptr [ %128, %127 ], [ %121, %123 ], [ null, %118 ]
  %131 = load ptr, ptr %109, align 8, !tbaa !22
  %132 = icmp eq ptr %119, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load ptr, ptr %120, align 8, !tbaa !22
  %135 = icmp eq ptr %130, %134
  br i1 %135, label %306, label %136

136:                                              ; preds = %133, %129
  %137 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !22
  %139 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %138, ptr noundef %119, ptr noundef %130) #23
  br label %300

140:                                              ; preds = %89
  %141 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !22
  %143 = icmp eq ptr %142, null
  br i1 %143, label %150, label %144

144:                                              ; preds = %140
  %145 = load i64, ptr %142, align 8
  %146 = and i64 %145, 131072
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = tail call ptr @substitute_in_expr(ptr noundef nonnull %142, ptr noundef %1, ptr noundef %2) #24
  br label %150

150:                                              ; preds = %140, %144, %148
  %151 = phi ptr [ %149, %148 ], [ %142, %144 ], [ null, %140 ]
  %152 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %153 = load ptr, ptr %152, align 8, !tbaa !22
  %154 = icmp eq ptr %153, null
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = load i64, ptr %153, align 8
  %157 = and i64 %156, 131072
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = tail call ptr @substitute_in_expr(ptr noundef nonnull %153, ptr noundef %1, ptr noundef %2) #24
  br label %161

161:                                              ; preds = %150, %155, %159
  %162 = phi ptr [ %160, %159 ], [ %153, %155 ], [ null, %150 ]
  %163 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !22
  %165 = icmp eq ptr %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %161
  %167 = load i64, ptr %164, align 8
  %168 = and i64 %167, 131072
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = tail call ptr @substitute_in_expr(ptr noundef nonnull %164, ptr noundef %1, ptr noundef %2) #24
  br label %172

172:                                              ; preds = %161, %166, %170
  %173 = phi ptr [ %171, %170 ], [ %164, %166 ], [ null, %161 ]
  %174 = load ptr, ptr %141, align 8, !tbaa !22
  %175 = icmp eq ptr %151, %174
  br i1 %175, label %176, label %182

176:                                              ; preds = %172
  %177 = load ptr, ptr %152, align 8, !tbaa !22
  %178 = icmp eq ptr %162, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load ptr, ptr %163, align 8, !tbaa !22
  %181 = icmp eq ptr %173, %180
  br i1 %181, label %306, label %182

182:                                              ; preds = %179, %176, %172
  %183 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %184 = load ptr, ptr %183, align 8, !tbaa !22
  %185 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef %9, ptr noundef %184, ptr noundef %151, ptr noundef %162, ptr noundef %173) #23
  br label %300

186:                                              ; preds = %89
  %187 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !22
  %189 = icmp eq ptr %188, null
  br i1 %189, label %196, label %190

190:                                              ; preds = %186
  %191 = load i64, ptr %188, align 8
  %192 = and i64 %191, 131072
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = tail call ptr @substitute_in_expr(ptr noundef nonnull %188, ptr noundef %1, ptr noundef %2) #24
  br label %196

196:                                              ; preds = %186, %190, %194
  %197 = phi ptr [ %195, %194 ], [ %188, %190 ], [ null, %186 ]
  %198 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  %199 = load ptr, ptr %198, align 8, !tbaa !22
  %200 = icmp eq ptr %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = load i64, ptr %199, align 8
  %203 = and i64 %202, 131072
  %204 = icmp eq i64 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = tail call ptr @substitute_in_expr(ptr noundef nonnull %199, ptr noundef %1, ptr noundef %2) #24
  br label %207

207:                                              ; preds = %196, %201, %205
  %208 = phi ptr [ %206, %205 ], [ %199, %201 ], [ null, %196 ]
  %209 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !22
  %211 = icmp eq ptr %210, null
  br i1 %211, label %218, label %212

212:                                              ; preds = %207
  %213 = load i64, ptr %210, align 8
  %214 = and i64 %213, 131072
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = tail call ptr @substitute_in_expr(ptr noundef nonnull %210, ptr noundef %1, ptr noundef %2) #24
  br label %218

218:                                              ; preds = %207, %212, %216
  %219 = phi ptr [ %217, %216 ], [ %210, %212 ], [ null, %207 ]
  %220 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 2
  %221 = load ptr, ptr %220, align 8, !tbaa !22
  %222 = icmp eq ptr %221, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %218
  %224 = load i64, ptr %221, align 8
  %225 = and i64 %224, 131072
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = tail call ptr @substitute_in_expr(ptr noundef nonnull %221, ptr noundef %1, ptr noundef %2) #24
  br label %229

229:                                              ; preds = %218, %223, %227
  %230 = phi ptr [ %228, %227 ], [ %221, %223 ], [ null, %218 ]
  %231 = load ptr, ptr %187, align 8, !tbaa !22
  %232 = icmp eq ptr %197, %231
  br i1 %232, label %233, label %242

233:                                              ; preds = %229
  %234 = load ptr, ptr %198, align 8, !tbaa !22
  %235 = icmp eq ptr %208, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = load ptr, ptr %209, align 8, !tbaa !22
  %238 = icmp eq ptr %219, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load ptr, ptr %220, align 8, !tbaa !22
  %241 = icmp eq ptr %230, %240
  br i1 %241, label %306, label %242

242:                                              ; preds = %239, %236, %233, %229
  %243 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !22
  %245 = tail call ptr @build4_stat(i32 noundef %9, ptr noundef %244, ptr noundef %197, ptr noundef %208, ptr noundef %219, ptr noundef %230) #24
  %246 = tail call ptr @fold(ptr noundef %245) #23
  br label %300

247:                                              ; preds = %89
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3094, ptr noundef nonnull @.str.219) #23
  br label %300

248:                                              ; preds = %80
  %249 = load i64, ptr %2, align 8
  %250 = and i64 %249, 65535
  %251 = add nsw i64 %250, -23
  %252 = icmp ult i64 %251, 6
  %253 = icmp eq i32 %9, 59
  %254 = and i1 %253, %252
  br i1 %254, label %255, label %262

255:                                              ; preds = %248
  %256 = tail call ptr @maybe_inline_call_in_expr(ptr noundef nonnull %7) #23
  %257 = icmp eq ptr %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %255
  %259 = load i64, ptr %256, align 8
  %260 = and i64 %259, 131072
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %5, label %306

262:                                              ; preds = %255, %248
  %263 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %7) #24
  %264 = icmp sgt i32 %263, 1
  br i1 %264, label %265, label %306

265:                                              ; preds = %262, %285
  %266 = phi i64 [ %287, %285 ], [ 1, %262 ]
  %267 = phi ptr [ %286, %285 ], [ null, %262 ]
  %268 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3, i64 %266
  %269 = load ptr, ptr %268, align 8, !tbaa !22
  %270 = icmp eq ptr %269, null
  br i1 %270, label %285, label %271

271:                                              ; preds = %265
  %272 = load i64, ptr %269, align 8
  %273 = and i64 %272, 131072
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %271
  %276 = tail call ptr @substitute_in_expr(ptr noundef nonnull %269, ptr noundef %1, ptr noundef nonnull %2) #24
  %277 = icmp eq ptr %276, %269
  br i1 %277, label %285, label %278

278:                                              ; preds = %275
  %279 = icmp eq ptr %267, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %278
  %281 = tail call ptr @copy_node_stat(ptr noundef nonnull %7) #24
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi ptr [ %267, %278 ], [ %281, %280 ]
  %284 = getelementptr inbounds %struct.tree_exp, ptr %283, i64 0, i32 3, i64 %266
  store ptr %276, ptr %284, align 8, !tbaa !22
  br label %285

285:                                              ; preds = %265, %271, %282, %275
  %286 = phi ptr [ %283, %282 ], [ %267, %275 ], [ %267, %271 ], [ %267, %265 ]
  %287 = add nuw nsw i64 %266, 1
  %288 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %7) #24
  %289 = sext i32 %288 to i64
  %290 = icmp slt i64 %287, %289
  br i1 %290, label %265, label %291, !llvm.loop !111

291:                                              ; preds = %285
  %292 = icmp eq ptr %286, null
  br i1 %292, label %306, label %293

293:                                              ; preds = %291
  %294 = tail call ptr @fold(ptr noundef nonnull %286) #23
  %295 = load i64, ptr %294, align 8
  %296 = and i64 %295, 65535
  %297 = icmp eq i64 %296, 59
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  tail call fastcc void @process_call_operands(ptr noundef nonnull %294) #24
  br label %300

299:                                              ; preds = %80
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3139, ptr noundef nonnull @.str.219) #23
  br label %300

300:                                              ; preds = %298, %293, %76, %104, %136, %182, %242, %247, %299
  %301 = phi ptr [ %79, %76 ], [ undef, %299 ], [ undef, %247 ], [ %246, %242 ], [ %185, %182 ], [ %139, %136 ], [ %107, %104 ], [ %294, %293 ], [ %294, %298 ]
  %302 = load i64, ptr %7, align 8
  %303 = load i64, ptr %301, align 8
  %304 = and i64 %302, 1048576
  %305 = or i64 %304, %303
  store i64 %305, ptr %301, align 8
  br label %306

306:                                              ; preds = %258, %80, %262, %92, %96, %65, %68, %72, %61, %54, %291, %239, %179, %133, %100, %89, %87, %84, %36, %300, %39
  %307 = phi ptr [ %42, %39 ], [ %301, %300 ], [ %7, %36 ], [ %86, %84 ], [ %2, %87 ], [ %7, %89 ], [ %7, %100 ], [ %7, %133 ], [ %7, %179 ], [ %7, %239 ], [ %7, %291 ], [ %7, %72 ], [ %7, %61 ], [ %2, %54 ], [ %7, %68 ], [ %7, %65 ], [ %7, %96 ], [ %7, %92 ], [ %7, %262 ], [ %256, %258 ], [ %7, %80 ]
  ret ptr %307
}

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build4_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = icmp eq i8 %9, 4
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3772, ptr noundef nonnull @.str.219) #23
  br label %12

12:                                               ; preds = %6, %11
  %13 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %14 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  store ptr %1, ptr %14, align 8, !tbaa !22
  %15 = load i64, ptr %13, align 8
  %16 = lshr i64 %15, 16
  %17 = trunc i64 %16 to i8
  %18 = and i8 %17, 1
  %19 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 0, i32 3
  store ptr %2, ptr %19, align 8, !tbaa !22
  %20 = icmp ne ptr %2, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load i64, ptr %2, align 8
  %23 = and i64 %22, 65535
  %24 = add nsw i64 %23, -5
  %25 = icmp ult i64 %24, 18
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = and i64 %22, 65536
  %28 = icmp eq i64 %27, 0
  %29 = select i1 %28, i8 %18, i8 1
  br label %30

30:                                               ; preds = %26, %12, %21
  %31 = phi i8 [ %18, %21 ], [ %18, %12 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1
  store ptr %3, ptr %32, align 8, !tbaa !22
  %33 = icmp eq ptr %3, null
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load i64, ptr %3, align 8
  %36 = and i64 %35, 65535
  %37 = add nsw i64 %36, -5
  %38 = icmp ult i64 %37, 18
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = and i64 %35, 65536
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %41, i8 %31, i8 1
  br label %43

43:                                               ; preds = %39, %30, %34
  %44 = phi i8 [ %31, %34 ], [ %31, %30 ], [ %42, %39 ]
  %45 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 1
  store ptr %4, ptr %45, align 8, !tbaa !22
  %46 = icmp eq ptr %4, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %4, align 8
  %49 = and i64 %48, 65535
  %50 = add nsw i64 %49, -5
  %51 = icmp ult i64 %50, 18
  br i1 %51, label %56, label %52

52:                                               ; preds = %47
  %53 = and i64 %48, 65536
  %54 = icmp eq i64 %53, 0
  %55 = select i1 %54, i8 %44, i8 1
  br label %56

56:                                               ; preds = %52, %43, %47
  %57 = phi i8 [ %44, %47 ], [ %44, %43 ], [ %55, %52 ]
  %58 = getelementptr inbounds %struct.tree_exp, ptr %13, i64 1, i32 0, i32 2
  store ptr %5, ptr %58, align 8, !tbaa !22
  %59 = icmp eq ptr %5, null
  br i1 %59, label %69, label %60

60:                                               ; preds = %56
  %61 = load i64, ptr %5, align 8
  %62 = and i64 %61, 65535
  %63 = add nsw i64 %62, -5
  %64 = icmp ult i64 %63, 18
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = and i64 %61, 65536
  %67 = icmp eq i64 %66, 0
  %68 = select i1 %67, i8 %57, i8 1
  br label %69

69:                                               ; preds = %65, %60, %56
  %70 = phi i8 [ %57, %60 ], [ %57, %56 ], [ %68, %65 ]
  %71 = zext nneg i8 %70 to i64
  %72 = shl nuw nsw i64 %71, 16
  %73 = and i64 %15, -65537
  %74 = add nuw nsw i64 %72, %73
  store i64 %74, ptr %13, align 8
  %75 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %7
  %76 = load i32, ptr %75, align 4, !tbaa !30
  %77 = icmp eq i32 %76, 4
  %78 = and i1 %20, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %69
  %80 = load i64, ptr %2, align 8
  %81 = and i64 %80, 524288
  br label %82

82:                                               ; preds = %79, %69
  %83 = phi i64 [ 0, %69 ], [ %81, %79 ]
  %84 = and i64 %74, -524289
  %85 = or disjoint i64 %83, %84
  store i64 %85, ptr %13, align 8
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @maybe_inline_call_in_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_call_operands(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = tail call i32 @call_expr_flags(ptr noundef nonnull %0) #23
  %4 = and i32 %3, 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = lshr i64 %2, 16
  %8 = trunc i64 %7 to i8
  %9 = and i8 %8, 1
  %10 = and i32 %3, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6, %1
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i8 [ 1, %12 ], [ %9, %6 ]
  %15 = and i32 %3, 1
  %16 = icmp ne i32 %15, 0
  %17 = trunc i32 %15 to i8
  %18 = icmp eq i8 %14, 0
  %19 = or i1 %16, %18
  br i1 %19, label %20, label %49

20:                                               ; preds = %13
  %21 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #24
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = zext nneg i32 %21 to i64
  br label %25

25:                                               ; preds = %23, %44
  %26 = phi i64 [ 1, %23 ], [ %47, %44 ]
  %27 = phi i8 [ %14, %23 ], [ %45, %44 ]
  %28 = phi i8 [ %17, %23 ], [ %46, %44 ]
  %29 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %26
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %25
  %33 = load i64, ptr %30, align 8
  %34 = and i64 %33, 65536
  %35 = icmp eq i64 %34, 0
  %36 = select i1 %35, i8 %27, i8 1
  %37 = and i64 %33, 1048576
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = and i64 %33, 65535
  %41 = add nsw i64 %40, -23
  %42 = icmp ult i64 %41, 6
  %43 = select i1 %42, i8 %28, i8 0
  br label %44

44:                                               ; preds = %25, %39, %32
  %45 = phi i8 [ %36, %32 ], [ %36, %39 ], [ %27, %25 ]
  %46 = phi i8 [ %28, %32 ], [ %43, %39 ], [ %28, %25 ]
  %47 = add nuw nsw i64 %26, 1
  %48 = icmp eq i64 %47, %24
  br i1 %48, label %49, label %25, !llvm.loop !112

49:                                               ; preds = %44, %20, %13
  %50 = phi i8 [ 0, %13 ], [ %17, %20 ], [ %46, %44 ]
  %51 = phi i8 [ 1, %13 ], [ %14, %20 ], [ %45, %44 ]
  %52 = load i64, ptr %0, align 8
  %53 = and i8 %51, 1
  %54 = zext nneg i8 %53 to i64
  %55 = shl nuw nsw i64 %54, 16
  %56 = and i64 %52, -1114113
  %57 = or disjoint i64 %55, %56
  %58 = and i8 %50, 1
  %59 = zext nneg i8 %58 to i64
  %60 = shl nuw nsw i64 %59, 20
  %61 = or disjoint i64 %57, %60
  store i64 %61, ptr %0, align 8
  ret void
}

; Function Attrs: optsize
declare i32 @call_expr_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @substitute_placeholder_in_expr(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = trunc i64 %3 to i16
  switch i16 %6, label %105 [
    i16 62, label %7
    i16 2, label %73
  ]

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 16
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %1, null
  br i1 %12, label %312, label %13

13:                                               ; preds = %7, %35
  %14 = phi ptr [ %37, %35 ], [ %1, %7 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 16
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, %11
  br i1 %19, label %312, label %20

20:                                               ; preds = %13
  %21 = load i64, ptr %14, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %25 [
    i16 52, label %23
    i16 56, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  br label %35

25:                                               ; preds = %20
  %26 = and i64 %21, 65535
  %27 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %26
  %28 = load i32, ptr %27, align 4, !tbaa !30
  switch i32 %28, label %29 [
    i32 4, label %33
    i32 6, label %33
    i32 7, label %33
  ]

29:                                               ; preds = %25
  %30 = icmp eq i64 %26, 59
  %31 = icmp eq i32 %28, 10
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %25, %25, %25, %29
  %34 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi ptr [ %34, %33 ], [ %24, %23 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %13, !llvm.loop !113

39:                                               ; preds = %29, %35
  br label %40

40:                                               ; preds = %39, %69
  %41 = phi ptr [ %71, %69 ], [ %1, %39 ]
  %42 = getelementptr inbounds %struct.tree_common, ptr %41, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = load i64, ptr %43, align 8
  %45 = trunc i64 %44 to i16
  switch i16 %45, label %54 [
    i16 10, label %46
    i16 12, label %46
  ]

46:                                               ; preds = %40, %40
  %47 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.tree_type, ptr %48, i64 0, i32 16
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = icmp eq ptr %50, %11
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 47, ptr noundef %11, ptr noundef nonnull %41) #23
  br label %312

54:                                               ; preds = %40, %46
  %55 = load i64, ptr %41, align 8
  %56 = trunc i64 %55 to i16
  switch i16 %56, label %59 [
    i16 52, label %57
    i16 56, label %57
  ]

57:                                               ; preds = %54, %54
  %58 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 1
  br label %69

59:                                               ; preds = %54
  %60 = and i64 %55, 65535
  %61 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !30
  switch i32 %62, label %63 [
    i32 4, label %67
    i32 6, label %67
    i32 7, label %67
  ]

63:                                               ; preds = %59
  %64 = icmp eq i64 %60, 59
  %65 = icmp eq i32 %62, 10
  %66 = or i1 %64, %65
  br i1 %66, label %67, label %312

67:                                               ; preds = %59, %59, %59, %63
  %68 = getelementptr inbounds %struct.tree_exp, ptr %41, i64 0, i32 3
  br label %69

69:                                               ; preds = %67, %57
  %70 = phi ptr [ %68, %67 ], [ %58, %57 ]
  %71 = load ptr, ptr %70, align 8, !tbaa !22
  %72 = icmp eq ptr %71, null
  br i1 %72, label %312, label %40, !llvm.loop !114

73:                                               ; preds = %2
  %74 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %75, align 8
  %79 = and i64 %78, 131072
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %75, ptr noundef %1) #24
  br label %83

83:                                               ; preds = %73, %77, %81
  %84 = phi ptr [ %82, %81 ], [ %75, %77 ], [ null, %73 ]
  %85 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %83
  %89 = load i64, ptr %86, align 8
  %90 = and i64 %89, 131072
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %86, ptr noundef %1) #24
  br label %94

94:                                               ; preds = %83, %88, %92
  %95 = phi ptr [ %93, %92 ], [ %86, %88 ], [ null, %83 ]
  %96 = load ptr, ptr %74, align 8, !tbaa !22
  %97 = icmp eq ptr %84, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load ptr, ptr %85, align 8, !tbaa !22
  %100 = icmp eq ptr %95, %99
  br i1 %100, label %312, label %101

101:                                              ; preds = %98, %94
  %102 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !22
  %104 = tail call ptr @tree_cons_stat(ptr noundef %103, ptr noundef %95, ptr noundef %84) #24
  br label %312

105:                                              ; preds = %2
  %106 = and i64 %3, 65535
  %107 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %106
  %108 = load i32, ptr %107, align 4, !tbaa !30
  switch i32 %108, label %305 [
    i32 1, label %312
    i32 3, label %312
    i32 0, label %112
    i32 6, label %112
    i32 7, label %112
    i32 5, label %112
    i32 10, label %112
    i32 4, label %112
    i32 8, label %112
    i32 9, label %109
  ]

109:                                              ; preds = %105
  %110 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #24
  %111 = icmp sgt i32 %110, 1
  br i1 %111, label %271, label %312

112:                                              ; preds = %105, %105, %105, %105, %105, %105, %105
  %113 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %106
  %114 = load i8, ptr %113, align 1, !tbaa !22
  switch i8 %114, label %270 [
    i8 0, label %312
    i8 1, label %115
    i8 2, label %131
    i8 3, label %163
    i8 4, label %209
  ]

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !22
  %118 = icmp eq ptr %117, null
  br i1 %118, label %312, label %119

119:                                              ; preds = %115
  %120 = load i64, ptr %117, align 8
  %121 = and i64 %120, 131072
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %312

123:                                              ; preds = %119
  %124 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %117, ptr noundef %1) #24
  %125 = load ptr, ptr %116, align 8, !tbaa !22
  %126 = icmp eq ptr %124, %125
  br i1 %126, label %312, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !22
  %130 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %129, ptr noundef %124) #23
  br label %306

131:                                              ; preds = %112
  %132 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !22
  %134 = icmp eq ptr %133, null
  br i1 %134, label %141, label %135

135:                                              ; preds = %131
  %136 = load i64, ptr %133, align 8
  %137 = and i64 %136, 131072
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %133, ptr noundef %1) #24
  br label %141

141:                                              ; preds = %131, %135, %139
  %142 = phi ptr [ %140, %139 ], [ %133, %135 ], [ null, %131 ]
  %143 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %144 = load ptr, ptr %143, align 8, !tbaa !22
  %145 = icmp eq ptr %144, null
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load i64, ptr %144, align 8
  %148 = and i64 %147, 131072
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %144, ptr noundef %1) #24
  br label %152

152:                                              ; preds = %141, %146, %150
  %153 = phi ptr [ %151, %150 ], [ %144, %146 ], [ null, %141 ]
  %154 = load ptr, ptr %132, align 8, !tbaa !22
  %155 = icmp eq ptr %142, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %152
  %157 = load ptr, ptr %143, align 8, !tbaa !22
  %158 = icmp eq ptr %153, %157
  br i1 %158, label %312, label %159

159:                                              ; preds = %156, %152
  %160 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %161 = load ptr, ptr %160, align 8, !tbaa !22
  %162 = tail call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %161, ptr noundef %142, ptr noundef %153) #23
  br label %306

163:                                              ; preds = %112
  %164 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !22
  %166 = icmp eq ptr %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %163
  %168 = load i64, ptr %165, align 8
  %169 = and i64 %168, 131072
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %165, ptr noundef %1) #24
  br label %173

173:                                              ; preds = %163, %167, %171
  %174 = phi ptr [ %172, %171 ], [ %165, %167 ], [ null, %163 ]
  %175 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %176 = load ptr, ptr %175, align 8, !tbaa !22
  %177 = icmp eq ptr %176, null
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load i64, ptr %176, align 8
  %180 = and i64 %179, 131072
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %176, ptr noundef %1) #24
  br label %184

184:                                              ; preds = %173, %178, %182
  %185 = phi ptr [ %183, %182 ], [ %176, %178 ], [ null, %173 ]
  %186 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !22
  %188 = icmp eq ptr %187, null
  br i1 %188, label %195, label %189

189:                                              ; preds = %184
  %190 = load i64, ptr %187, align 8
  %191 = and i64 %190, 131072
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %189
  %194 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %187, ptr noundef %1) #24
  br label %195

195:                                              ; preds = %184, %189, %193
  %196 = phi ptr [ %194, %193 ], [ %187, %189 ], [ null, %184 ]
  %197 = load ptr, ptr %164, align 8, !tbaa !22
  %198 = icmp eq ptr %174, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %195
  %200 = load ptr, ptr %175, align 8, !tbaa !22
  %201 = icmp eq ptr %185, %200
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load ptr, ptr %186, align 8, !tbaa !22
  %204 = icmp eq ptr %196, %203
  br i1 %204, label %312, label %205

205:                                              ; preds = %202, %199, %195
  %206 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %207 = load ptr, ptr %206, align 8, !tbaa !22
  %208 = tail call ptr @fold_build3_stat_loc(i32 noundef 0, i32 noundef %5, ptr noundef %207, ptr noundef %174, ptr noundef %185, ptr noundef %196) #23
  br label %306

209:                                              ; preds = %112
  %210 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %211 = load ptr, ptr %210, align 8, !tbaa !22
  %212 = icmp eq ptr %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %209
  %214 = load i64, ptr %211, align 8
  %215 = and i64 %214, 131072
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %211, ptr noundef %1) #24
  br label %219

219:                                              ; preds = %209, %213, %217
  %220 = phi ptr [ %218, %217 ], [ %211, %213 ], [ null, %209 ]
  %221 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !22
  %223 = icmp eq ptr %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %219
  %225 = load i64, ptr %222, align 8
  %226 = and i64 %225, 131072
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %222, ptr noundef %1) #24
  br label %230

230:                                              ; preds = %219, %224, %228
  %231 = phi ptr [ %229, %228 ], [ %222, %224 ], [ null, %219 ]
  %232 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %233 = load ptr, ptr %232, align 8, !tbaa !22
  %234 = icmp eq ptr %233, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load i64, ptr %233, align 8
  %237 = and i64 %236, 131072
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %233, ptr noundef %1) #24
  br label %241

241:                                              ; preds = %230, %235, %239
  %242 = phi ptr [ %240, %239 ], [ %233, %235 ], [ null, %230 ]
  %243 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %244 = load ptr, ptr %243, align 8, !tbaa !22
  %245 = icmp eq ptr %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load i64, ptr %244, align 8
  %248 = and i64 %247, 131072
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %246
  %251 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %244, ptr noundef %1) #24
  br label %252

252:                                              ; preds = %241, %246, %250
  %253 = phi ptr [ %251, %250 ], [ %244, %246 ], [ null, %241 ]
  %254 = load ptr, ptr %210, align 8, !tbaa !22
  %255 = icmp eq ptr %220, %254
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load ptr, ptr %221, align 8, !tbaa !22
  %258 = icmp eq ptr %231, %257
  br i1 %258, label %259, label %265

259:                                              ; preds = %256
  %260 = load ptr, ptr %232, align 8, !tbaa !22
  %261 = icmp eq ptr %242, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %259
  %263 = load ptr, ptr %243, align 8, !tbaa !22
  %264 = icmp eq ptr %253, %263
  br i1 %264, label %312, label %265

265:                                              ; preds = %262, %259, %256, %252
  %266 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %267 = load ptr, ptr %266, align 8, !tbaa !22
  %268 = tail call ptr @build4_stat(i32 noundef %5, ptr noundef %267, ptr noundef %220, ptr noundef %231, ptr noundef %242, ptr noundef %253) #24
  %269 = tail call ptr @fold(ptr noundef %268) #23
  br label %306

270:                                              ; preds = %112
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3272, ptr noundef nonnull @.str.219) #23
  br label %306

271:                                              ; preds = %109, %291
  %272 = phi i64 [ %293, %291 ], [ 1, %109 ]
  %273 = phi ptr [ %292, %291 ], [ null, %109 ]
  %274 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %272
  %275 = load ptr, ptr %274, align 8, !tbaa !22
  %276 = icmp eq ptr %275, null
  br i1 %276, label %291, label %277

277:                                              ; preds = %271
  %278 = load i64, ptr %275, align 8
  %279 = and i64 %278, 131072
  %280 = icmp eq i64 %279, 0
  br i1 %280, label %281, label %291

281:                                              ; preds = %277
  %282 = tail call ptr @substitute_placeholder_in_expr(ptr noundef nonnull %275, ptr noundef %1) #24
  %283 = icmp eq ptr %282, %275
  br i1 %283, label %291, label %284

284:                                              ; preds = %281
  %285 = icmp eq ptr %273, null
  br i1 %285, label %286, label %288

286:                                              ; preds = %284
  %287 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #24
  br label %288

288:                                              ; preds = %286, %284
  %289 = phi ptr [ %273, %284 ], [ %287, %286 ]
  %290 = getelementptr inbounds %struct.tree_exp, ptr %289, i64 0, i32 3, i64 %272
  store ptr %282, ptr %290, align 8, !tbaa !22
  br label %291

291:                                              ; preds = %271, %277, %288, %281
  %292 = phi ptr [ %289, %288 ], [ %273, %281 ], [ %273, %277 ], [ %273, %271 ]
  %293 = add nuw nsw i64 %272, 1
  %294 = tail call fastcc i32 @tree_operand_length(ptr noundef nonnull %0) #24
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %293, %295
  br i1 %296, label %271, label %297, !llvm.loop !115

297:                                              ; preds = %291
  %298 = icmp eq ptr %292, null
  br i1 %298, label %312, label %299

299:                                              ; preds = %297
  %300 = tail call ptr @fold(ptr noundef nonnull %292) #23
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 59
  br i1 %303, label %304, label %306

304:                                              ; preds = %299
  tail call fastcc void @process_call_operands(ptr noundef nonnull %300) #24
  br label %306

305:                                              ; preds = %105
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3306, ptr noundef nonnull @.str.219) #23
  br label %306

306:                                              ; preds = %299, %304, %127, %159, %205, %265, %270, %305
  %307 = phi ptr [ undef, %305 ], [ undef, %270 ], [ %269, %265 ], [ %208, %205 ], [ %162, %159 ], [ %130, %127 ], [ %300, %304 ], [ %300, %299 ]
  %308 = load i64, ptr %0, align 8
  %309 = load i64, ptr %307, align 8
  %310 = and i64 %308, 1048576
  %311 = or i64 %310, %309
  store i64 %311, ptr %307, align 8
  br label %312

312:                                              ; preds = %13, %63, %69, %115, %119, %109, %7, %297, %262, %202, %156, %123, %112, %105, %105, %98, %52, %306, %101
  %313 = phi ptr [ %104, %101 ], [ %307, %306 ], [ %53, %52 ], [ %0, %98 ], [ %0, %105 ], [ %0, %105 ], [ %0, %112 ], [ %0, %123 ], [ %0, %156 ], [ %0, %202 ], [ %0, %262 ], [ %0, %297 ], [ %0, %7 ], [ %0, %109 ], [ %0, %119 ], [ %0, %115 ], [ %0, %69 ], [ %0, %63 ], [ %14, %13 ]
  ret ptr %313
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @stabilize_reference(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %80 [
    i16 0, label %60
    i16 52, label %58
    i16 46, label %46
    i16 116, label %4
    i16 113, label %4
    i16 78, label %4
    i16 77, label %4
    i16 47, label %11
    i16 41, label %16
    i16 42, label %23
    i16 45, label %34
  ]

4:                                                ; preds = %1, %1, %1, %1
  %5 = trunc i64 %2 to i32
  %6 = and i32 %5, 65535
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr @stabilize_reference(ptr noundef %8) #24
  %10 = tail call ptr (i32, ...) @build_nt(i32 noundef %6, ptr noundef %9) #24
  br label %62

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call ptr @stabilize_reference_1(ptr noundef %13) #24
  %15 = tail call ptr (i32, ...) @build_nt(i32 noundef 47, ptr noundef %14) #24
  br label %62

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call ptr @stabilize_reference(ptr noundef %18) #24
  %20 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = tail call ptr (i32, ...) @build_nt(i32 noundef 41, ptr noundef %19, ptr noundef %21, ptr noundef null) #24
  br label %62

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = tail call ptr @stabilize_reference(ptr noundef %25) #24
  %27 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = tail call ptr @stabilize_reference_1(ptr noundef %28) #24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = tail call ptr @stabilize_reference_1(ptr noundef %31) #24
  %33 = tail call ptr (i32, ...) @build_nt(i32 noundef 42, ptr noundef %26, ptr noundef %29, ptr noundef %32) #24
  br label %62

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = tail call ptr @stabilize_reference(ptr noundef %36) #24
  %38 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = tail call ptr @stabilize_reference_1(ptr noundef %39) #24
  %41 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = tail call ptr (i32, ...) @build_nt(i32 noundef 45, ptr noundef %37, ptr noundef %40, ptr noundef %42, ptr noundef %44) #24
  br label %62

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = tail call ptr @stabilize_reference(ptr noundef %48) #24
  %50 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  %52 = tail call ptr @stabilize_reference_1(ptr noundef %51) #24
  %53 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1, i32 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = tail call ptr (i32, ...) @build_nt(i32 noundef 46, ptr noundef %49, ptr noundef %52, ptr noundef %54, ptr noundef %56) #24
  br label %62

58:                                               ; preds = %1
  %59 = tail call ptr @stabilize_reference_1(ptr noundef nonnull %0) #24
  br label %80

60:                                               ; preds = %1
  %61 = load ptr, ptr @global_trees, align 16, !tbaa !6
  br label %80

62:                                               ; preds = %46, %34, %23, %16, %11, %4
  %63 = phi ptr [ %57, %46 ], [ %45, %34 ], [ %33, %23 ], [ %22, %16 ], [ %15, %11 ], [ %10, %4 ]
  %64 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  %66 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  store ptr %65, ptr %66, align 8, !tbaa !22
  %67 = load i64, ptr %0, align 8
  %68 = and i64 %67, 1048576
  %69 = load i64, ptr %63, align 8
  %70 = and i64 %69, -1048577
  %71 = or disjoint i64 %70, %68
  store i64 %71, ptr %63, align 8
  %72 = load i64, ptr %0, align 8
  %73 = and i64 %72, 65536
  %74 = and i64 %71, -65537
  %75 = or disjoint i64 %74, %73
  store i64 %75, ptr %63, align 8
  %76 = load i64, ptr %0, align 8
  %77 = and i64 %76, 524288
  %78 = and i64 %75, -524289
  %79 = or disjoint i64 %78, %77
  store i64 %79, ptr %63, align 8
  br label %80

80:                                               ; preds = %1, %62, %60, %58
  %81 = phi ptr [ %61, %60 ], [ %59, %58 ], [ %63, %62 ], [ %0, %1 ]
  ret ptr %81
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_nt(i32 noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %3 = sext i32 %0 to i64
  %4 = icmp eq i32 %0, 59
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3864, ptr noundef nonnull @.str.219) #23
  br label %6

6:                                                ; preds = %1, %5
  call void @llvm.va_start(ptr nonnull %2)
  %7 = call ptr @make_node_stat(i32 noundef %0) #24
  %8 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %3
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %14 = zext i8 %9 to i64
  br label %15

15:                                               ; preds = %11, %27
  %16 = phi i64 [ 0, %11 ], [ %31, %27 ]
  %17 = load i32, ptr %2, align 16
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 16
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr i8, ptr %20, i64 %21
  %23 = add nuw nsw i32 %17, 8
  store i32 %23, ptr %2, align 16
  br label %27

24:                                               ; preds = %15
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr i8, ptr %25, i64 8
  store ptr %26, ptr %12, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %22, %19 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3, i64 %16
  store ptr %29, ptr %30, align 8, !tbaa !22
  %31 = add nuw nsw i64 %16, 1
  %32 = icmp eq i64 %31, %14
  br i1 %32, label %33, label %15, !llvm.loop !116

33:                                               ; preds = %27, %6
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @stabilize_reference_1(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = freeze i64 %2
  %4 = trunc i64 %3 to i32
  %5 = and i32 %4, 65535
  %6 = tail call fastcc zeroext i8 @tree_invariant_p(ptr noundef nonnull %0) #24, !range !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %56

8:                                                ; preds = %1
  %9 = and i64 %3, 65535
  %10 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !30
  switch i32 %11, label %37 [
    i32 0, label %12
    i32 2, label %12
    i32 3, label %12
    i32 5, label %12
    i32 8, label %12
    i32 10, label %12
    i32 4, label %12
    i32 9, label %12
    i32 1, label %56
    i32 7, label %17
    i32 6, label %32
  ]

12:                                               ; preds = %8, %8, %8, %8, %8, %8, %8, %8
  %13 = and i64 %3, 65536
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %56, label %15

15:                                               ; preds = %12
  %16 = tail call ptr @save_expr(ptr noundef nonnull %0) #24
  br label %56

17:                                               ; preds = %8
  %18 = and i32 %4, 65531
  %19 = icmp eq i32 %18, 67
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = trunc i64 %3 to i16
  switch i16 %21, label %24 [
    i16 74, label %22
    i16 73, label %22
    i16 72, label %22
    i16 70, label %22
    i16 69, label %22
    i16 68, label %22
  ]

22:                                               ; preds = %20, %20, %20, %20, %20, %20, %17
  %23 = tail call ptr @save_expr(ptr noundef nonnull %0) #24
  br label %56

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call ptr @stabilize_reference_1(ptr noundef %26) #24
  %28 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = tail call ptr @stabilize_reference_1(ptr noundef %29) #24
  %31 = tail call ptr (i32, ...) @build_nt(i32 noundef %5, ptr noundef %27, ptr noundef %30) #24
  br label %38

32:                                               ; preds = %8
  %33 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = tail call ptr @stabilize_reference_1(ptr noundef %34) #24
  %36 = tail call ptr (i32, ...) @build_nt(i32 noundef %5, ptr noundef %35) #24
  br label %38

37:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3466, ptr noundef nonnull @.str.219) #23
  br label %38

38:                                               ; preds = %37, %32, %24
  %39 = phi ptr [ undef, %37 ], [ %36, %32 ], [ %31, %24 ]
  %40 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !22
  %43 = load i64, ptr %0, align 8
  %44 = and i64 %43, 1048576
  %45 = load i64, ptr %39, align 8
  %46 = and i64 %45, -1048577
  %47 = or disjoint i64 %46, %44
  store i64 %47, ptr %39, align 8
  %48 = load i64, ptr %0, align 8
  %49 = and i64 %48, 65536
  %50 = and i64 %47, -65537
  %51 = or disjoint i64 %50, %49
  store i64 %51, ptr %39, align 8
  %52 = load i64, ptr %0, align 8
  %53 = and i64 %52, 524288
  %54 = and i64 %51, -524289
  %55 = or disjoint i64 %54, %53
  store i64 %55, ptr %39, align 8
  br label %56

56:                                               ; preds = %8, %12, %1, %38, %22, %15
  %57 = phi ptr [ %39, %38 ], [ %23, %22 ], [ %16, %15 ], [ %0, %1 ], [ %0, %12 ], [ %0, %8 ]
  ret ptr %57
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @recompute_tree_invariant_for_addr_expr(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %5) #24, !range !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %104, label %8

8:                                                ; preds = %1, %97
  %9 = phi ptr [ %101, %97 ], [ %5, %1 ]
  %10 = phi i8 [ %99, %97 ], [ 1, %1 ]
  %11 = phi i8 [ %98, %97 ], [ 0, %1 ]
  %12 = load i64, ptr %9, align 8
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 65535
  %15 = add nsw i32 %14, -45
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %65

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 15
  br i1 %24, label %25, label %65

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = load i64, ptr %27, align 8
  %31 = and i64 %30, 131072
  %32 = icmp eq i64 %31, 0
  %33 = select i1 %32, i8 0, i8 %10
  %34 = and i64 %30, 65536
  %35 = icmp eq i64 %34, 0
  %36 = select i1 %35, i8 %11, i8 1
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i8 [ %11, %25 ], [ %36, %29 ]
  %39 = phi i8 [ %10, %25 ], [ %33, %29 ]
  %40 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  %44 = load i64, ptr %41, align 8
  %45 = and i64 %44, 131072
  %46 = icmp eq i64 %45, 0
  %47 = select i1 %46, i8 0, i8 %39
  %48 = and i64 %44, 65536
  %49 = icmp eq i64 %48, 0
  %50 = select i1 %49, i8 %38, i8 1
  br label %51

51:                                               ; preds = %43, %37
  %52 = phi i8 [ %38, %37 ], [ %50, %43 ]
  %53 = phi i8 [ %39, %37 ], [ %47, %43 ]
  %54 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %97, label %57

57:                                               ; preds = %51
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 131072
  %60 = icmp eq i64 %59, 0
  %61 = select i1 %60, i8 0, i8 %53
  %62 = and i64 %58, 65536
  %63 = icmp eq i64 %62, 0
  %64 = select i1 %63, i8 %52, i8 1
  br label %97

65:                                               ; preds = %8, %17
  %66 = trunc i64 %12 to i16
  switch i16 %66, label %97 [
    i16 41, label %67
    i16 42, label %85
  ]

67:                                               ; preds = %65
  %68 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 31
  br i1 %72, label %73, label %97

73:                                               ; preds = %67
  %74 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %97, label %77

77:                                               ; preds = %73
  %78 = load i64, ptr %75, align 8
  %79 = and i64 %78, 131072
  %80 = icmp eq i64 %79, 0
  %81 = select i1 %80, i8 0, i8 %10
  %82 = and i64 %78, 65536
  %83 = icmp eq i64 %82, 0
  %84 = select i1 %83, i8 %11, i8 1
  br label %97

85:                                               ; preds = %65
  %86 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 1, i32 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !22
  %88 = icmp eq ptr %87, null
  br i1 %88, label %97, label %89

89:                                               ; preds = %85
  %90 = load i64, ptr %87, align 8
  %91 = and i64 %90, 131072
  %92 = icmp eq i64 %91, 0
  %93 = select i1 %92, i8 0, i8 %10
  %94 = and i64 %90, 65536
  %95 = icmp eq i64 %94, 0
  %96 = select i1 %95, i8 %11, i8 1
  br label %97

97:                                               ; preds = %89, %77, %57, %65, %67, %85, %51, %73
  %98 = phi i8 [ %11, %65 ], [ %11, %67 ], [ %11, %85 ], [ %52, %51 ], [ %11, %73 ], [ %64, %57 ], [ %84, %77 ], [ %96, %89 ]
  %99 = phi i8 [ %10, %65 ], [ %10, %67 ], [ %10, %85 ], [ %53, %51 ], [ %10, %73 ], [ %61, %57 ], [ %81, %77 ], [ %93, %89 ]
  %100 = getelementptr inbounds %struct.tree_exp, ptr %9, i64 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !22
  %102 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %101) #24, !range !76
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %8, !llvm.loop !117

104:                                              ; preds = %97, %1
  %105 = phi i8 [ 0, %1 ], [ %98, %97 ]
  %106 = phi i8 [ 1, %1 ], [ %99, %97 ]
  %107 = phi ptr [ %5, %1 ], [ %101, %97 ]
  store i8 %106, ptr %2, align 1, !tbaa !22
  store i8 %105, ptr %3, align 1, !tbaa !22
  %108 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 44), align 8, !tbaa !118
  %109 = call ptr %108(ptr noundef %107, ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 47
  br i1 %112, label %113, label %126

113:                                              ; preds = %104
  %114 = getelementptr inbounds %struct.tree_exp, ptr %109, i64 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !22
  %116 = icmp eq ptr %115, null
  br i1 %116, label %144, label %117

117:                                              ; preds = %113
  %118 = load i64, ptr %115, align 8
  %119 = and i64 %118, 131072
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  store i8 0, ptr %2, align 1, !tbaa !22
  br label %122

122:                                              ; preds = %117, %121
  %123 = and i64 %118, 65536
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %144, label %125

125:                                              ; preds = %122
  store i8 1, ptr %3, align 1, !tbaa !22
  br label %144

126:                                              ; preds = %104
  %127 = add nsw i64 %111, -23
  %128 = icmp ult i64 %127, 6
  br i1 %128, label %144, label %129

129:                                              ; preds = %126
  %130 = add nsw i64 %111, -29
  %131 = icmp ult i64 %130, 12
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = call ptr @staticp(ptr noundef nonnull %109) #24
  %134 = icmp eq ptr %133, null
  %135 = load i8, ptr %2, align 1, !tbaa !22
  %136 = and i8 %135, 1
  %137 = select i1 %134, i8 0, i8 %136
  store i8 %137, ptr %2, align 1, !tbaa !22
  br label %144

138:                                              ; preds = %129
  store i8 0, ptr %2, align 1, !tbaa !22
  %139 = load i8, ptr %3, align 1, !tbaa !22
  %140 = lshr i64 %110, 16
  %141 = trunc i64 %140 to i8
  %142 = and i8 %141, 1
  %143 = or i8 %139, %142
  store i8 %143, ptr %3, align 1, !tbaa !22
  br label %144

144:                                              ; preds = %122, %125, %113, %126, %138, %132
  %145 = load i8, ptr %2, align 1, !tbaa !22
  %146 = load i64, ptr %0, align 8
  %147 = and i8 %145, 1
  %148 = zext nneg i8 %147 to i64
  %149 = shl nuw nsw i64 %148, 17
  %150 = and i64 %146, -196609
  %151 = or disjoint i64 %149, %150
  %152 = load i8, ptr %3, align 1, !tbaa !22
  %153 = and i8 %152, 1
  %154 = zext nneg i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 16
  %156 = or disjoint i64 %155, %151
  store i64 %156, ptr %0, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build0_stat(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3567, ptr noundef nonnull @.str.219) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !22
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @tree_block(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !30
  %6 = shl i32 %5, 24
  %7 = ashr exact i32 %6, 24
  %8 = add nsw i32 %7, -4
  %9 = icmp ult i32 %8, 7
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 2
  br label %13

12:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 10311, ptr noundef nonnull @.str.219) #23
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi ptr [ %11, %10 ], [ null, %12 ]
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build2_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = sext i32 %0 to i64
  %6 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3679, ptr noundef nonnull @.str.219) #23
  br label %10

10:                                               ; preds = %4, %9
  %11 = add i32 %0, -63
  %12 = icmp ult i32 %11, 3
  %13 = icmp ne ptr %2, null
  %14 = and i1 %12, %13
  %15 = icmp ne ptr %3, null
  %16 = and i1 %14, %15
  %17 = icmp ne ptr %1, null
  %18 = and i1 %17, %16
  br i1 %18, label %19, label %39

19:                                               ; preds = %10
  %20 = load i64, ptr %1, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %66 [
    i16 10, label %22
    i16 12, label %22
  ]

22:                                               ; preds = %19, %19
  %23 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_type, ptr %23, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = xor i32 %27, %25
  %29 = and i32 %28, 1023
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %66

31:                                               ; preds = %22
  %32 = load i64, ptr %2, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %64

35:                                               ; preds = %31
  %36 = load i64, ptr %3, align 8
  %37 = and i64 %36, 65535
  %38 = icmp eq i64 %37, 23
  br i1 %38, label %66, label %64

39:                                               ; preds = %10
  %40 = icmp eq i32 %0, 66
  %41 = and i1 %40, %13
  %42 = and i1 %41, %15
  %43 = and i1 %17, %42
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = load i64, ptr %1, align 8
  %46 = trunc i64 %45 to i16
  switch i16 %46, label %64 [
    i16 10, label %47
    i16 12, label %47
  ]

47:                                               ; preds = %44, %44
  %48 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = load i64, ptr %49, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %64 [
    i16 10, label %52
    i16 12, label %52
  ]

52:                                               ; preds = %47, %47
  %53 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = load i64, ptr %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = add nsw i32 %57, -6
  %59 = icmp ult i32 %58, 3
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %62 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %61, ptr noundef nonnull %54) #23
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60, %44, %47, %52, %31, %35
  %65 = phi i32 [ 3688, %35 ], [ 3688, %31 ], [ 3693, %52 ], [ 3693, %47 ], [ 3693, %44 ], [ 3693, %60 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef %65, ptr noundef nonnull @.str.219) #23
  br label %66

66:                                               ; preds = %64, %22, %35, %19, %60, %39
  %67 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  store ptr %1, ptr %68, align 8, !tbaa !22
  %69 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %5
  %70 = add nsw i64 %5, -97
  %71 = icmp ult i64 %70, 14
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, ptr %69, align 4, !tbaa !30
  %74 = icmp eq i32 %73, 7
  %75 = zext i1 %74 to i8
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i8 [ 1, %66 ], [ %75, %72 ]
  %78 = load i64, ptr %67, align 8
  %79 = lshr i64 %78, 16
  %80 = trunc i64 %79 to i8
  %81 = and i8 %80, 1
  %82 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 0, i32 3
  store ptr %2, ptr %82, align 8, !tbaa !22
  br i1 %13, label %83, label %101

83:                                               ; preds = %76
  %84 = load i64, ptr %2, align 8
  %85 = and i64 %84, 65535
  %86 = add nsw i64 %85, -5
  %87 = icmp ult i64 %86, 18
  br i1 %87, label %101, label %88

88:                                               ; preds = %83
  %89 = and i64 %84, 65536
  %90 = icmp eq i64 %89, 0
  %91 = select i1 %90, i8 %81, i8 1
  %92 = and i64 %84, 1048576
  %93 = icmp ne i64 %92, 0
  %94 = add nsw i64 %85, -23
  %95 = icmp ult i64 %94, 6
  %96 = select i1 %93, i1 true, i1 %95
  %97 = zext i1 %96 to i8
  %98 = and i64 %84, 131072
  %99 = icmp eq i64 %98, 0
  %100 = select i1 %99, i8 0, i8 %77
  br label %101

101:                                              ; preds = %88, %76, %83
  %102 = phi i8 [ 1, %83 ], [ 1, %76 ], [ %97, %88 ]
  %103 = phi i8 [ %81, %83 ], [ %81, %76 ], [ %91, %88 ]
  %104 = phi i8 [ %77, %83 ], [ %77, %76 ], [ %100, %88 ]
  %105 = getelementptr inbounds %struct.tree_exp, ptr %67, i64 1
  store ptr %3, ptr %105, align 8, !tbaa !22
  br i1 %15, label %106, label %124

106:                                              ; preds = %101
  %107 = load i64, ptr %3, align 8
  %108 = and i64 %107, 65535
  %109 = add nsw i64 %108, -5
  %110 = icmp ult i64 %109, 18
  br i1 %110, label %124, label %111

111:                                              ; preds = %106
  %112 = and i64 %107, 65536
  %113 = icmp eq i64 %112, 0
  %114 = select i1 %113, i8 %103, i8 1
  %115 = and i64 %107, 1048576
  %116 = icmp eq i64 %115, 0
  %117 = add nsw i64 %108, -23
  %118 = icmp ult i64 %117, 6
  %119 = select i1 %118, i8 %102, i8 0
  %120 = select i1 %116, i8 %119, i8 %102
  %121 = and i64 %107, 131072
  %122 = icmp eq i64 %121, 0
  %123 = select i1 %122, i8 0, i8 %104
  br label %124

124:                                              ; preds = %111, %106, %101
  %125 = phi i8 [ %102, %106 ], [ %102, %101 ], [ %120, %111 ]
  %126 = phi i8 [ %103, %106 ], [ %103, %101 ], [ %114, %111 ]
  %127 = phi i8 [ %104, %106 ], [ %104, %101 ], [ %123, %111 ]
  %128 = zext nneg i8 %125 to i64
  %129 = shl nuw nsw i64 %128, 20
  %130 = and i64 %78, -1245185
  %131 = add nuw nsw i64 %129, %130
  %132 = zext nneg i8 %127 to i64
  %133 = shl nuw nsw i64 %132, 17
  %134 = add nuw nsw i64 %133, %131
  %135 = zext nneg i8 %126 to i64
  %136 = shl nuw nsw i64 %135, 16
  %137 = add nuw nsw i64 %134, %136
  store i64 %137, ptr %67, align 8
  %138 = load i32, ptr %69, align 4, !tbaa !30
  %139 = icmp eq i32 %138, 4
  %140 = and i1 %13, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %124
  %142 = load i64, ptr %2, align 8
  %143 = and i64 %142, 524288
  br label %144

144:                                              ; preds = %141, %124
  %145 = phi i64 [ 0, %124 ], [ %143, %141 ]
  %146 = and i64 %137, -524289
  %147 = or disjoint i64 %145, %146
  store i64 %147, ptr %67, align 8
  ret ptr %67
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build3_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = sext i32 %0 to i64
  %7 = getelementptr inbounds [191 x i8], ptr @tree_code_length, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !22
  %9 = icmp eq i8 %8, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3731, ptr noundef nonnull @.str.219) #23
  br label %11

11:                                               ; preds = %5, %10
  %12 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %6
  %13 = icmp eq i32 %0, 59
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3732, ptr noundef nonnull @.str.219) #23
  %15 = tail call ptr @make_node_stat(i32 noundef 59) #24
  %16 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !22
  br label %28

17:                                               ; preds = %11
  %18 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  store ptr %1, ptr %19, align 8, !tbaa !22
  %20 = icmp eq i32 %0, 56
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %23 = icmp eq ptr %22, %1
  %24 = icmp eq ptr %3, null
  %25 = and i1 %24, %23
  %26 = icmp eq ptr %4, null
  %27 = and i1 %26, %25
  br i1 %27, label %35, label %28

28:                                               ; preds = %14, %21, %17
  %29 = phi i1 [ false, %14 ], [ true, %21 ], [ false, %17 ]
  %30 = phi ptr [ %15, %14 ], [ %18, %21 ], [ %18, %17 ]
  %31 = load i64, ptr %30, align 8
  %32 = lshr i64 %31, 16
  %33 = trunc i64 %32 to i8
  %34 = and i8 %33, 1
  br label %35

35:                                               ; preds = %21, %28
  %36 = phi i1 [ %29, %28 ], [ true, %21 ]
  %37 = phi ptr [ %30, %28 ], [ %18, %21 ]
  %38 = phi i8 [ %34, %28 ], [ 1, %21 ]
  %39 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 0, i32 3
  store ptr %2, ptr %39, align 8, !tbaa !22
  %40 = icmp ne ptr %2, null
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i64, ptr %2, align 8
  %43 = and i64 %42, 65535
  %44 = add nsw i64 %43, -5
  %45 = icmp ult i64 %44, 18
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = and i64 %42, 65536
  %48 = icmp eq i64 %47, 0
  %49 = select i1 %48, i8 %38, i8 1
  %50 = and i64 %42, 1048576
  %51 = icmp ne i64 %50, 0
  %52 = add nsw i64 %43, -23
  %53 = icmp ult i64 %52, 6
  %54 = select i1 %51, i1 true, i1 %53
  %55 = zext i1 %54 to i8
  br label %56

56:                                               ; preds = %46, %35, %41
  %57 = phi i8 [ 1, %41 ], [ 1, %35 ], [ %55, %46 ]
  %58 = phi i8 [ %38, %41 ], [ %38, %35 ], [ %49, %46 ]
  %59 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 1
  store ptr %3, ptr %59, align 8, !tbaa !22
  %60 = icmp eq ptr %3, null
  br i1 %60, label %76, label %61

61:                                               ; preds = %56
  %62 = load i64, ptr %3, align 8
  %63 = and i64 %62, 65535
  %64 = add nsw i64 %63, -5
  %65 = icmp ult i64 %64, 18
  br i1 %65, label %76, label %66

66:                                               ; preds = %61
  %67 = and i64 %62, 65536
  %68 = icmp eq i64 %67, 0
  %69 = select i1 %68, i8 %58, i8 1
  %70 = and i64 %62, 1048576
  %71 = icmp eq i64 %70, 0
  %72 = add nsw i64 %63, -23
  %73 = icmp ult i64 %72, 6
  %74 = select i1 %73, i8 %57, i8 0
  %75 = select i1 %71, i8 %74, i8 %57
  br label %76

76:                                               ; preds = %66, %56, %61
  %77 = phi i8 [ %57, %61 ], [ %57, %56 ], [ %75, %66 ]
  %78 = phi i8 [ %58, %61 ], [ %58, %56 ], [ %69, %66 ]
  %79 = getelementptr inbounds %struct.tree_exp, ptr %37, i64 1, i32 0, i32 1
  store ptr %4, ptr %79, align 8, !tbaa !22
  %80 = icmp eq ptr %4, null
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = load i64, ptr %4, align 8
  %83 = and i64 %82, 65535
  %84 = add nsw i64 %83, -5
  %85 = icmp ult i64 %84, 18
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = and i64 %82, 65536
  %88 = icmp eq i64 %87, 0
  %89 = select i1 %88, i8 %78, i8 1
  %90 = and i64 %82, 1048576
  %91 = icmp eq i64 %90, 0
  %92 = add nsw i64 %83, -23
  %93 = icmp ult i64 %92, 6
  %94 = select i1 %93, i8 %77, i8 0
  %95 = select i1 %91, i8 %94, i8 %77
  br label %96

96:                                               ; preds = %86, %81, %76
  %97 = phi i8 [ %77, %81 ], [ %77, %76 ], [ %95, %86 ]
  %98 = phi i8 [ %78, %81 ], [ %78, %76 ], [ %89, %86 ]
  %99 = load i64, ptr %37, align 8
  %100 = zext nneg i8 %97 to i64
  %101 = shl nuw nsw i64 %100, 20
  %102 = and i64 %99, -1048577
  %103 = add nuw nsw i64 %102, %101
  %104 = select i1 %36, i64 %103, i64 %99
  %105 = zext nneg i8 %98 to i64
  %106 = shl nuw nsw i64 %105, 16
  %107 = and i64 %104, -65537
  %108 = add nuw nsw i64 %107, %106
  store i64 %108, ptr %37, align 8
  %109 = load i32, ptr %12, align 4, !tbaa !30
  %110 = icmp eq i32 %109, 4
  %111 = and i1 %40, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %96
  %113 = load i64, ptr %2, align 8
  %114 = and i64 %113, 524288
  br label %115

115:                                              ; preds = %112, %96
  %116 = phi i64 [ 0, %96 ], [ %114, %112 ]
  %117 = and i64 %108, -524289
  %118 = or disjoint i64 %116, %117
  store i64 %118, ptr %37, align 8
  ret ptr %37
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build5_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
  %8 = sext i32 %0 to i64
  %9 = icmp eq i32 %0, 140
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3799, ptr noundef nonnull @.str.219) #23
  br label %11

11:                                               ; preds = %7, %10
  %12 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  store ptr %1, ptr %13, align 8, !tbaa !22
  %14 = load i64, ptr %12, align 8
  %15 = lshr i64 %14, 16
  %16 = trunc i64 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !22
  %19 = icmp ne ptr %2, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %11
  %21 = load i64, ptr %2, align 8
  %22 = and i64 %21, 65535
  %23 = add nsw i64 %22, -5
  %24 = icmp ult i64 %23, 18
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = and i64 %21, 65536
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i8 %17, i8 1
  br label %29

29:                                               ; preds = %25, %11, %20
  %30 = phi i8 [ %17, %20 ], [ %17, %11 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  store ptr %3, ptr %31, align 8, !tbaa !22
  %32 = icmp eq ptr %3, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %3, align 8
  %35 = and i64 %34, 65535
  %36 = add nsw i64 %35, -5
  %37 = icmp ult i64 %36, 18
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = and i64 %34, 65536
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, i8 %30, i8 1
  br label %42

42:                                               ; preds = %38, %29, %33
  %43 = phi i8 [ %30, %33 ], [ %30, %29 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  store ptr %4, ptr %44, align 8, !tbaa !22
  %45 = icmp eq ptr %4, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %4, align 8
  %48 = and i64 %47, 65535
  %49 = add nsw i64 %48, -5
  %50 = icmp ult i64 %49, 18
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = and i64 %47, 65536
  %53 = icmp eq i64 %52, 0
  %54 = select i1 %53, i8 %43, i8 1
  br label %55

55:                                               ; preds = %51, %42, %46
  %56 = phi i8 [ %43, %46 ], [ %43, %42 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 2
  store ptr %5, ptr %57, align 8, !tbaa !22
  %58 = icmp eq ptr %5, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i64, ptr %5, align 8
  %61 = and i64 %60, 65535
  %62 = add nsw i64 %61, -5
  %63 = icmp ult i64 %62, 18
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = and i64 %60, 65536
  %66 = icmp eq i64 %65, 0
  %67 = select i1 %66, i8 %56, i8 1
  br label %68

68:                                               ; preds = %64, %55, %59
  %69 = phi i8 [ %56, %59 ], [ %56, %55 ], [ %67, %64 ]
  %70 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 1
  store ptr %6, ptr %70, align 8, !tbaa !22
  %71 = icmp eq ptr %6, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i64, ptr %6, align 8
  %74 = and i64 %73, 65535
  %75 = add nsw i64 %74, -5
  %76 = icmp ult i64 %75, 18
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = and i64 %73, 65536
  %79 = icmp eq i64 %78, 0
  %80 = select i1 %79, i8 %69, i8 1
  br label %81

81:                                               ; preds = %77, %72, %68
  %82 = phi i8 [ %69, %72 ], [ %69, %68 ], [ %80, %77 ]
  %83 = zext nneg i8 %82 to i64
  %84 = shl nuw nsw i64 %83, 16
  %85 = and i64 %14, -65537
  %86 = add nuw nsw i64 %84, %85
  store i64 %86, ptr %12, align 8
  %87 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %8
  %88 = load i32, ptr %87, align 4, !tbaa !30
  %89 = icmp eq i32 %88, 4
  %90 = and i1 %19, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %81
  %92 = load i64, ptr %2, align 8
  %93 = and i64 %92, 524288
  br label %94

94:                                               ; preds = %91, %81
  %95 = phi i64 [ 0, %81 ], [ %93, %91 ]
  %96 = and i64 %86, -524289
  %97 = or disjoint i64 %95, %96
  store i64 %97, ptr %12, align 8
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build6_stat(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = icmp eq i32 %0, 152
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 3827, ptr noundef nonnull @.str.219) #23
  br label %11

11:                                               ; preds = %8, %10
  %12 = tail call ptr @make_node_stat(i32 noundef %0) #24
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  store ptr %1, ptr %13, align 8, !tbaa !22
  %14 = load i64, ptr %12, align 8
  %15 = lshr i64 %14, 16
  %16 = trunc i64 %15 to i8
  %17 = and i8 %16, 1
  %18 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  store ptr %2, ptr %18, align 8, !tbaa !22
  %19 = icmp eq ptr %2, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load i64, ptr %2, align 8
  %22 = and i64 %21, 65535
  %23 = add nsw i64 %22, -5
  %24 = icmp ult i64 %23, 18
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = and i64 %21, 65536
  %27 = icmp eq i64 %26, 0
  %28 = select i1 %27, i8 %17, i8 1
  br label %29

29:                                               ; preds = %25, %11, %20
  %30 = phi i8 [ %17, %20 ], [ %17, %11 ], [ %28, %25 ]
  %31 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1
  store ptr %3, ptr %31, align 8, !tbaa !22
  %32 = icmp eq ptr %3, null
  br i1 %32, label %42, label %33

33:                                               ; preds = %29
  %34 = load i64, ptr %3, align 8
  %35 = and i64 %34, 65535
  %36 = add nsw i64 %35, -5
  %37 = icmp ult i64 %36, 18
  br i1 %37, label %42, label %38

38:                                               ; preds = %33
  %39 = and i64 %34, 65536
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, i8 %30, i8 1
  br label %42

42:                                               ; preds = %38, %29, %33
  %43 = phi i8 [ %30, %33 ], [ %30, %29 ], [ %41, %38 ]
  %44 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 1
  store ptr %4, ptr %44, align 8, !tbaa !22
  %45 = icmp eq ptr %4, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %42
  %47 = load i64, ptr %4, align 8
  %48 = and i64 %47, 65535
  %49 = add nsw i64 %48, -5
  %50 = icmp ult i64 %49, 18
  br i1 %50, label %55, label %51

51:                                               ; preds = %46
  %52 = and i64 %47, 65536
  %53 = icmp eq i64 %52, 0
  %54 = select i1 %53, i8 %43, i8 1
  br label %55

55:                                               ; preds = %51, %42, %46
  %56 = phi i8 [ %43, %46 ], [ %43, %42 ], [ %54, %51 ]
  %57 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 0, i32 2
  store ptr %5, ptr %57, align 8, !tbaa !22
  %58 = icmp eq ptr %5, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %55
  %60 = load i64, ptr %5, align 8
  %61 = and i64 %60, 65535
  %62 = add nsw i64 %61, -5
  %63 = icmp ult i64 %62, 18
  br i1 %63, label %68, label %64

64:                                               ; preds = %59
  %65 = and i64 %60, 65536
  %66 = icmp eq i64 %65, 0
  %67 = select i1 %66, i8 %56, i8 1
  br label %68

68:                                               ; preds = %64, %55, %59
  %69 = phi i8 [ %56, %59 ], [ %56, %55 ], [ %67, %64 ]
  %70 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 1
  store ptr %6, ptr %70, align 8, !tbaa !22
  %71 = icmp eq ptr %6, null
  br i1 %71, label %81, label %72

72:                                               ; preds = %68
  %73 = load i64, ptr %6, align 8
  %74 = and i64 %73, 65535
  %75 = add nsw i64 %74, -5
  %76 = icmp ult i64 %75, 18
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = and i64 %73, 65536
  %79 = icmp eq i64 %78, 0
  %80 = select i1 %79, i8 %69, i8 1
  br label %81

81:                                               ; preds = %77, %72, %68
  %82 = phi i8 [ %69, %72 ], [ %69, %68 ], [ %80, %77 ]
  %83 = select i1 %9, i8 0, i8 %82
  %84 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 1, i32 2
  store ptr %7, ptr %84, align 8, !tbaa !22
  %85 = icmp ne ptr %7, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %81
  %87 = zext nneg i8 %83 to i64
  %88 = shl nuw nsw i64 %87, 16
  %89 = and i64 %14, -65537
  %90 = add nuw nsw i64 %88, %89
  br label %108

91:                                               ; preds = %81
  %92 = load i64, ptr %7, align 8
  %93 = and i64 %92, 65535
  %94 = add nsw i64 %93, -5
  %95 = icmp ult i64 %94, 18
  %96 = and i64 %92, 65536
  %97 = icmp eq i64 %96, 0
  %98 = select i1 %95, i1 true, i1 %97
  %99 = zext nneg i8 %83 to i64
  %100 = shl nuw nsw i64 %99, 16
  %101 = select i1 %98, i64 %100, i64 65536
  %102 = and i64 %14, -65537
  %103 = add nuw nsw i64 %101, %102
  store i64 %103, ptr %12, align 8
  %104 = and i1 %9, %85
  br i1 %104, label %105, label %108

105:                                              ; preds = %91
  %106 = load i64, ptr %7, align 8
  %107 = and i64 %106, 524288
  br label %108

108:                                              ; preds = %86, %105, %91
  %109 = phi i64 [ %103, %91 ], [ %103, %105 ], [ %90, %86 ]
  %110 = phi i64 [ 0, %91 ], [ %107, %105 ], [ 0, %86 ]
  %111 = and i64 %109, -524289
  %112 = or disjoint i64 %110, %111
  store i64 %112, ptr %12, align 8
  ret ptr %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #16

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_nt_call_list(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @list_length(ptr noundef %1) #24
  %4 = add nsw i32 %3, 3
  %5 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %4) #24
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1
  store ptr %0, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 1, i32 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !22
  %8 = icmp eq ptr %1, null
  br i1 %8, label %20, label %9

9:                                                ; preds = %2, %9
  %10 = phi i64 [ %18, %9 ], [ 0, %2 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %2 ]
  %12 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = add nuw nsw i64 %10, 3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3, i64 %14
  store ptr %13, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = add nuw i64 %10, 1
  %19 = icmp eq ptr %17, null
  br i1 %19, label %20, label %9, !llvm.loop !119

20:                                               ; preds = %9, %2
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_vl_exp_stat(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %0, 59
  br i1 %3, label %5, label %4

4:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9403, ptr noundef nonnull @.str.219) #23
  br label %5

5:                                                ; preds = %2, %4
  %6 = icmp sgt i32 %1, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9404, ptr noundef nonnull @.str.219) #23
  br label %8

8:                                                ; preds = %5, %7
  %9 = shl i32 %1, 3
  %10 = add i32 %9, 40
  %11 = sext i32 %10 to i64
  %12 = tail call ptr @ggc_alloc_stat(i64 noundef %11) #23
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %11, i1 false)
  %13 = load i64, ptr %12, align 8
  %14 = and i32 %0, 65535
  %15 = zext nneg i32 %14 to i64
  %16 = and i64 %13, -65536
  %17 = or disjoint i64 %16, %15
  store i64 %17, ptr %12, align 8
  %18 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %19 = sext i32 %1 to i64
  %20 = tail call ptr @build_int_cst(ptr noundef %18, i64 noundef %19) #24
  %21 = getelementptr inbounds %struct.tree_exp, ptr %12, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !22
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_nt_call_vec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %1) #24
  %5 = add i32 %4, 3
  %6 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  store ptr %0, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !22
  %9 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %3) #24, !range !23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %2, %11
  %12 = phi i32 [ %17, %11 ], [ 0, %2 ]
  %13 = load ptr, ptr %3, align 8, !tbaa !6
  %14 = add i32 %12, 3
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3, i64 %15
  store ptr %13, ptr %16, align 8, !tbaa !22
  %17 = add i32 %12, 1
  %18 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %1, i32 noundef %17, ptr noundef nonnull %3) #24, !range !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %11, !llvm.loop !120

20:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_decl_stat(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @make_node_stat(i32 noundef %1) #24
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 1
  store i32 %0, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  store ptr %3, ptr %8, align 8, !tbaa !22
  switch i32 %1, label %10 [
    i32 36, label %9
    i32 34, label %9
    i32 32, label %9
  ]

9:                                                ; preds = %4, %4, %4
  tail call void @layout_decl(ptr noundef nonnull %5, i32 noundef 0) #23
  br label %10

10:                                               ; preds = %4, %9
  ret ptr %5
}

; Function Attrs: optsize
declare void @layout_decl(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_fn_decl(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_identifier(ptr noundef %0) #23
  %4 = load i32, ptr @input_location, align 4, !tbaa !30
  %5 = tail call ptr @build_decl_stat(i32 noundef %4, i32 noundef 29, ptr noundef %3, ptr noundef %1) #24
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = load i64, ptr %5, align 8
  %9 = or i64 %7, 33558528
  store i64 %9, ptr %6, align 8
  %10 = or i64 %8, 167772160
  store i64 %10, ptr %5, align 8
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @get_identifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_block(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @make_node_stat(i32 noundef 4) #24
  %6 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 3
  store ptr %0, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 5
  store ptr %1, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 6
  store ptr %2, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  store ptr %3, ptr %9, align 8, !tbaa !22
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @expand_location(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.expanded_location) align 8 %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ult i32 %1, 2
  br i1 %3, label %4, label %7

4:                                                ; preds = %2
  %5 = icmp eq i32 %1, 0
  %6 = select i1 %5, ptr null, ptr @.str.220
  br label %28

7:                                                ; preds = %2
  %8 = load ptr, ptr @line_table, align 8, !tbaa !6
  %9 = tail call ptr @linemap_lookup(ptr noundef %8, i32 noundef %1) #23
  %10 = load ptr, ptr %9, align 8, !tbaa !121
  %11 = getelementptr inbounds %struct.line_map, ptr %9, i64 0, i32 2
  %12 = load i32, ptr %11, align 4, !tbaa !123
  %13 = sub i32 %1, %12
  %14 = getelementptr inbounds %struct.line_map, ptr %9, i64 0, i32 6
  %15 = load i8, ptr %14, align 2
  %16 = zext nneg i8 %15 to i32
  %17 = lshr i32 %13, %16
  %18 = getelementptr inbounds %struct.line_map, ptr %9, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !124
  %20 = add i32 %17, %19
  %21 = shl nsw i32 -1, %16
  %22 = xor i32 %21, -1
  %23 = and i32 %13, %22
  %24 = getelementptr inbounds %struct.line_map, ptr %9, i64 0, i32 5
  %25 = load i8, ptr %24, align 1, !tbaa !125
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %7, %4
  %29 = phi ptr [ %6, %4 ], [ %10, %7 ]
  %30 = phi i32 [ 0, %4 ], [ %20, %7 ]
  %31 = phi i32 [ 0, %4 ], [ %23, %7 ]
  %32 = phi i8 [ 0, %4 ], [ %27, %7 ]
  store ptr %29, ptr %0, align 8
  %33 = getelementptr inbounds %struct.expanded_location, ptr %0, i64 0, i32 1
  store i32 %30, ptr %33, align 8
  %34 = getelementptr inbounds %struct.expanded_location, ptr %0, i64 0, i32 2
  store i32 %31, ptr %34, align 4
  %35 = getelementptr inbounds %struct.expanded_location, ptr %0, i64 0, i32 3
  store i8 %32, ptr %35, align 8
  ret void
}

; Function Attrs: optsize
declare ptr @linemap_lookup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @protected_set_expr_location(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !30
  %9 = icmp ugt i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  store i32 %1, ptr %11, align 8, !tbaa !22
  br label %12

12:                                               ; preds = %10, %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef ptr @build_decl_attribute_variant(ptr noundef returned writeonly %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  store ptr %1, ptr %3, align 8, !tbaa !22
  ret ptr %0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @iterative_hash_hashval_t(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = add i32 %0, %1
  %4 = sub i32 -1640531527, %3
  %5 = lshr i32 %1, 13
  %6 = xor i32 %4, %5
  %7 = add i32 %6, %1
  %8 = sub i32 %0, %7
  %9 = shl i32 %6, 8
  %10 = xor i32 %8, %9
  %11 = add i32 %6, %10
  %12 = sub i32 %1, %11
  %13 = lshr i32 %10, 13
  %14 = xor i32 %12, %13
  %15 = add i32 %10, %14
  %16 = sub i32 %6, %15
  %17 = lshr i32 %14, 12
  %18 = xor i32 %16, %17
  %19 = add i32 %14, %18
  %20 = sub i32 %10, %19
  %21 = shl i32 %18, 16
  %22 = xor i32 %20, %21
  %23 = add i32 %18, %22
  %24 = sub i32 %14, %23
  %25 = lshr i32 %22, 5
  %26 = xor i32 %24, %25
  %27 = add i32 %22, %26
  %28 = sub i32 %18, %27
  %29 = lshr i32 %26, 3
  %30 = xor i32 %28, %29
  %31 = add i32 %26, %30
  %32 = sub i32 %22, %31
  %33 = shl i32 %30, 10
  %34 = xor i32 %32, %33
  %35 = add i32 %30, %34
  %36 = sub i32 %26, %35
  %37 = lshr i32 %34, 15
  %38 = xor i32 %36, %37
  ret i32 %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local i32 @iterative_hash_host_wide_int(i64 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = trunc i64 %0 to i32
  %4 = lshr i64 %0, 32
  %5 = trunc i64 %4 to i32
  %6 = add i32 %5, %1
  %7 = sub i32 %3, %6
  %8 = lshr i32 %1, 13
  %9 = xor i32 %7, %8
  %10 = add i32 %9, %1
  %11 = sub i32 %5, %10
  %12 = shl i32 %9, 8
  %13 = xor i32 %11, %12
  %14 = add i32 %9, %13
  %15 = sub i32 %1, %14
  %16 = lshr i32 %13, 13
  %17 = xor i32 %15, %16
  %18 = add i32 %13, %17
  %19 = sub i32 %9, %18
  %20 = lshr i32 %17, 12
  %21 = xor i32 %19, %20
  %22 = add i32 %17, %21
  %23 = sub i32 %13, %22
  %24 = shl i32 %21, 16
  %25 = xor i32 %23, %24
  %26 = add i32 %21, %25
  %27 = sub i32 %17, %26
  %28 = lshr i32 %25, 5
  %29 = xor i32 %27, %28
  %30 = add i32 %25, %29
  %31 = sub i32 %21, %30
  %32 = lshr i32 %29, 3
  %33 = xor i32 %31, %32
  %34 = add i32 %29, %33
  %35 = sub i32 %25, %34
  %36 = shl i32 %33, 10
  %37 = xor i32 %35, %36
  %38 = add i32 %33, %37
  %39 = sub i32 %29, %38
  %40 = lshr i32 %37, 15
  %41 = xor i32 %39, %40
  ret i32 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_type_attribute_qual_variant(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call i32 @attribute_list_equal(ptr noundef %7, ptr noundef %1) #24, !range !23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #25
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  store i32 %13, ptr %4, align 4, !tbaa !30
  %14 = trunc i64 %11 to i16
  switch i16 %14, label %15 [
    i16 16, label %73
    i16 17, label %73
    i16 18, label %73
    i16 6, label %73
  ]

15:                                               ; preds = %10
  %16 = tail call ptr @build_qualified_type(ptr noundef nonnull %0, i32 noundef 0) #24
  %17 = tail call ptr @build_distinct_type_copy(ptr noundef %16) #24
  %18 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 4
  store ptr %1, ptr %18, align 8, !tbaa !22
  %19 = call i32 @iterative_hash(ptr noundef nonnull %4, i64 noundef 4, i32 noundef 0) #23
  %20 = getelementptr inbounds %struct.tree_common, ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 5
  %25 = call i32 @iterative_hash(ptr noundef nonnull %24, i64 noundef 4, i32 noundef %19) #23
  br label %26

26:                                               ; preds = %23, %15
  %27 = phi i32 [ %25, %23 ], [ %19, %15 ]
  %28 = call fastcc i32 @attribute_hash_list(ptr noundef %1, i32 noundef %27) #24
  %29 = load i64, ptr %17, align 8
  %30 = trunc i64 %29 to i16
  switch i16 %30, label %55 [
    i16 20, label %31
    i16 15, label %35
    i16 8, label %42
    i16 9, label %50
    i16 11, label %50
  ]

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = call fastcc i32 @type_hash_list(ptr noundef %33, i32 noundef %28) #24
  br label %55

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %55, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 5
  %41 = call i32 @iterative_hash(ptr noundef nonnull %40, i64 noundef 4, i32 noundef %28) #23
  br label %55

42:                                               ; preds = %26
  %43 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 14
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.tree_int_cst, ptr %44, i64 0, i32 1
  %46 = call i32 @iterative_hash(ptr noundef nonnull %45, i64 noundef 8, i32 noundef %28) #23
  %47 = load ptr, ptr %43, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.tree_int_cst, ptr %47, i64 0, i32 1, i32 1
  %49 = call i32 @iterative_hash(ptr noundef nonnull %48, i64 noundef 8, i32 noundef %46) #23
  br label %55

50:                                               ; preds = %26, %26
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #25
  %51 = getelementptr inbounds %struct.tree_type, ptr %17, i64 0, i32 6
  %52 = load i32, ptr %51, align 4
  %53 = and i32 %52, 1023
  store i32 %53, ptr %5, align 4, !tbaa !30
  %54 = call i32 @iterative_hash(ptr noundef nonnull %5, i64 noundef 4, i32 noundef %28) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #25
  br label %55

55:                                               ; preds = %26, %35, %39, %50, %42, %31
  %56 = phi i32 [ %28, %26 ], [ %54, %50 ], [ %49, %42 ], [ %41, %39 ], [ %28, %35 ], [ %34, %31 ]
  %57 = call ptr @type_hash_canon(i32 noundef %56, ptr noundef nonnull %17) #24
  %58 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 19
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 14), align 8, !tbaa !126
  %63 = call i32 %62(ptr noundef %57, ptr noundef nonnull %16) #23
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61, %55
  %66 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 19
  store ptr null, ptr %66, align 8, !tbaa !22
  br label %78

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 19
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, %57
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load ptr, ptr %58, align 8, !tbaa !22
  store ptr %72, ptr %68, align 8, !tbaa !22
  br label %78

73:                                               ; preds = %10, %10, %10, %10
  %74 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = tail call zeroext i8 (i32, ptr, ...) @warning(i32 noundef 45, ptr noundef nonnull @.str.221, ptr noundef %75) #23
  %77 = tail call ptr @build_qualified_type(ptr noundef nonnull %0, i32 noundef %2) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %100

78:                                               ; preds = %65, %71, %67
  %79 = call ptr @build_qualified_type(ptr noundef nonnull %57, i32 noundef %2) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #25
  br label %100

80:                                               ; preds = %3
  %81 = load i64, ptr %0, align 8
  %82 = trunc i64 %81 to i32
  %83 = lshr i32 %82, 20
  %84 = and i32 %83, 1
  %85 = lshr i32 %82, 18
  %86 = and i32 %85, 2
  %87 = or disjoint i32 %84, %86
  %88 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %89 = load i32, ptr %88, align 4
  %90 = lshr i32 %89, 11
  %91 = and i32 %90, 4
  %92 = or disjoint i32 %87, %91
  %93 = lshr i64 %81, 48
  %94 = trunc i64 %93 to i32
  %95 = and i32 %94, 65280
  %96 = or disjoint i32 %92, %95
  %97 = icmp eq i32 %96, %2
  br i1 %97, label %100, label %98

98:                                               ; preds = %80
  %99 = tail call ptr @build_qualified_type(ptr noundef nonnull %0, i32 noundef %2) #24
  br label %100

100:                                              ; preds = %78, %73, %98, %80
  %101 = phi ptr [ %99, %98 ], [ %0, %80 ], [ %79, %78 ], [ %77, %73 ]
  ret ptr %101
}

; Function Attrs: optsize
declare zeroext i8 @warning(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_qualified_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @get_qualified_type(ptr noundef %0, i32 noundef %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = tail call ptr @build_variant_type_copy(ptr noundef %0) #24
  tail call fastcc void @set_type_quals(ptr noundef %6, i32 noundef %1) #24
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %8, %0
  br i1 %11, label %12, label %17

12:                                               ; preds = %5, %10, %17
  %13 = phi ptr [ %18, %17 ], [ %6, %10 ], [ null, %5 ]
  %14 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 19
  store ptr %13, ptr %14, align 8, !tbaa !22
  br label %15

15:                                               ; preds = %12, %2
  %16 = phi ptr [ %3, %2 ], [ %6, %12 ]
  ret ptr %16

17:                                               ; preds = %10
  %18 = tail call ptr @build_qualified_type(ptr noundef nonnull %8, i32 noundef %1) #24
  br label %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_distinct_type_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @copy_node_stat(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 9
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr null, ptr %2
  %8 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 19
  store ptr %7, ptr %8, align 8
  %9 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 16
  store ptr %2, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 15
  store ptr null, ptr %10, align 8, !tbaa !22
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @iterative_hash(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @attribute_hash_list(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %12, %4 ], [ %0, %2 ]
  %6 = phi i32 [ %10, %4 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.tree_list, ptr %5, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_identifier, ptr %8, i64 0, i32 1, i32 2
  %10 = tail call i32 @iterative_hash(ptr noundef nonnull %9, i64 noundef 4, i32 noundef %6) #23
  %11 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %4, !llvm.loop !127

14:                                               ; preds = %4, %2
  %15 = phi i32 [ %1, %2 ], [ %10, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @type_hash_list(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr @global_trees, align 16, !tbaa !6
  br label %6

6:                                                ; preds = %4, %17
  %7 = phi ptr [ %18, %17 ], [ %5, %4 ]
  %8 = phi ptr [ %21, %17 ], [ %0, %4 ]
  %9 = phi i32 [ %19, %17 ], [ %1, %4 ]
  %10 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, %7
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 5
  %15 = tail call i32 @iterative_hash(ptr noundef nonnull %14, i64 noundef 4, i32 noundef %9) #23
  %16 = load ptr, ptr @global_trees, align 16, !tbaa !6
  br label %17

17:                                               ; preds = %6, %13
  %18 = phi ptr [ %16, %13 ], [ %7, %6 ]
  %19 = phi i32 [ %15, %13 ], [ %9, %6 ]
  %20 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !128

23:                                               ; preds = %17, %2
  %24 = phi i32 [ %1, %2 ], [ %19, %17 ]
  ret i32 %24
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @type_hash_canon(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 16
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5949, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = load i8, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 15), align 8, !tbaa !129
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = tail call ptr @type_hash_lookup(i32 noundef %0, ptr noundef nonnull %1) #24
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void @type_hash_add(i32 noundef %0, ptr noundef nonnull %1) #24
  br label %14

14:                                               ; preds = %10, %7, %13
  %15 = phi ptr [ %1, %13 ], [ %1, %7 ], [ %11, %10 ]
  ret ptr %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_type_attribute_variant(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 20
  %6 = and i32 %5, 1
  %7 = lshr i32 %4, 18
  %8 = and i32 %7, 2
  %9 = or disjoint i32 %6, %8
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 4
  %14 = or disjoint i32 %9, %13
  %15 = lshr i64 %3, 48
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65280
  %18 = or disjoint i32 %14, %17
  %19 = tail call ptr @build_type_attribute_qual_variant(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %18) #24
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @assign_assembler_name_if_neeeded(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @need_assembler_name_p(ptr noundef %0) #24, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @input_location, align 4, !tbaa !30
  %6 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !22
  store i32 %7, ptr @input_location, align 4, !tbaa !30
  %8 = tail call ptr @decl_assembler_name(ptr noundef %0) #24
  store i32 %5, ptr @input_location, align 4, !tbaa !30
  br label %9

9:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @need_assembler_name_p(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %39 [
    i16 29, label %4
    i16 32, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = and i64 %2, 65535
  %6 = getelementptr inbounds [191 x [64 x i8]], ptr @tree_contains_struct, i64 0, i64 %5, i64 13
  %7 = load i8, ptr %6, align 1, !tbaa !22
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %39, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %39

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 2048
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = and i64 %2, 201392127
  %20 = icmp eq i64 %19, 32
  %21 = and i64 %15, 33554432
  %22 = icmp eq i64 %21, 0
  %23 = and i1 %20, %22
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = icmp eq i64 %5, 29
  br i1 %25, label %26, label %38

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 4096
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = tail call ptr @cgraph_get_node(ptr noundef nonnull %0) #23
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i64, ptr %0, align 8
  %36 = and i64 %35, 150994944
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34, %24
  br label %39

39:                                               ; preds = %26, %34, %31, %18, %13, %4, %9, %1, %38
  %40 = phi i8 [ 1, %38 ], [ 0, %1 ], [ 0, %9 ], [ 0, %4 ], [ 0, %13 ], [ 0, %18 ], [ 0, %26 ], [ 1, %31 ], [ 0, %34 ]
  ret i8 %40
}

; Function Attrs: optsize
declare ptr @cgraph_get_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @free_lang_data() #0 {
  %1 = load i8, ptr @in_lto_p, align 1, !tbaa !22
  %2 = icmp eq i8 %1, 0
  %3 = load i32, ptr @flag_generate_lto, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %74

6:                                                ; preds = %0, %15
  %7 = phi i64 [ %16, %15 ], [ 0, %0 ]
  %8 = getelementptr inbounds [11 x ptr], ptr @integer_types, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = tail call i32 @get_alias_set(ptr noundef nonnull %9) #23
  %13 = load ptr, ptr %8, align 8, !tbaa !6
  %14 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 8
  store i32 %12, ptr %14, align 4, !tbaa !22
  br label %15

15:                                               ; preds = %6, %11
  %16 = add nuw nsw i64 %7, 1
  %17 = icmp eq i64 %16, 11
  br i1 %17, label %18, label %6, !llvm.loop !130

18:                                               ; preds = %15
  tail call fastcc void @free_lang_data_in_cgraph() #24
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  store ptr %19, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 43), align 8, !tbaa !6
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  store ptr %20, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !6
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %22 = load i64, ptr %21, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 7
  br i1 %24, label %25, label %42

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tree_type, ptr %21, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = tail call i32 @mode_for_size(i32 noundef 8, i32 noundef 2, i32 noundef 0) #23
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %34 = getelementptr inbounds %struct.tree_type, ptr %33, i64 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 1023
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i64, ptr %33, align 8
  %40 = and i64 %39, 2097152
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %38, %32, %25, %18
  %43 = tail call ptr @make_unsigned_type(i32 noundef 8) #23
  store ptr %43, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, -65536
  %46 = or disjoint i64 %45, 7
  store i64 %46, ptr %43, align 8
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %48 = tail call ptr @build_int_cst(ptr noundef %47, i64 noundef 1) #24
  %49 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %50 = getelementptr inbounds %struct.tree_type, ptr %49, i64 0, i32 14
  store ptr %48, ptr %50, align 8, !tbaa !22
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %52 = getelementptr inbounds %struct.tree_type, ptr %51, i64 0, i32 6
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -1024
  %55 = or disjoint i32 %54, 1
  store i32 %55, ptr %52, align 4
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 13
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  store ptr %58, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !6
  %59 = getelementptr inbounds %struct.tree_type, ptr %56, i64 0, i32 14
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  store ptr %60, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !6
  br label %61

61:                                               ; preds = %42, %38
  %62 = load ptr, ptr @integer_types, align 16, !tbaa !6
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 2097152
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store ptr %62, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !6
  br label %68

67:                                               ; preds = %61
  store ptr %62, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !6
  br label %68

68:                                               ; preds = %67, %66
  store ptr null, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 31), align 8, !tbaa !131
  store ptr @lhd_dwarf_name, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 23), align 8, !tbaa !132
  store ptr @gimple_decl_printable_name, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !133
  store ptr @lhd_set_decl_assembler_name, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 16), align 8, !tbaa !49
  store ptr @gimple_fold_obj_type_ref, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 40), align 8, !tbaa !134
  %69 = load ptr, ptr @global_dc, align 8, !tbaa !6
  %70 = getelementptr inbounds %struct.diagnostic_context, ptr %69, i64 0, i32 7
  store ptr @default_diagnostic_starter, ptr %70, align 8, !tbaa !135
  %71 = getelementptr inbounds %struct.diagnostic_context, ptr %69, i64 0, i32 8
  store ptr @default_diagnostic_finalizer, ptr %71, align 8, !tbaa !137
  %72 = load ptr, ptr %69, align 8, !tbaa !138
  %73 = getelementptr inbounds %struct.pretty_print_info, ptr %72, i64 0, i32 6
  store ptr @default_tree_printer, ptr %73, align 8, !tbaa !139
  br label %74

74:                                               ; preds = %0, %68
  ret i32 0
}

; Function Attrs: optsize
declare i32 @get_alias_set(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lang_data_in_cgraph() unnamed_addr #0 {
  %1 = alloca %struct.free_lang_data_d, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = tail call ptr @pointer_set_create() #23
  %5 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !142
  store ptr null, ptr %1, align 8, !tbaa !144
  %6 = tail call fastcc ptr @VEC_tree_heap_alloc() #24
  %7 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !145
  %8 = tail call fastcc ptr @VEC_tree_heap_alloc() #24
  %9 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 3
  store ptr %8, ptr %9, align 8, !tbaa !146
  %10 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %16, %0
  %13 = load ptr, ptr @alias_pairs, align 8
  %14 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %3) #24, !range !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %21, label %24

16:                                               ; preds = %0, %16
  %17 = phi ptr [ %19, %16 ], [ %10, %0 ]
  call fastcc void @find_decls_types_in_node(ptr noundef nonnull %17, ptr noundef nonnull %1) #24
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %12, label %16, !llvm.loop !147

21:                                               ; preds = %24, %12
  %22 = load ptr, ptr @varpool_nodes_queue, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %36

24:                                               ; preds = %12, %24
  %25 = phi i32 [ %28, %24 ], [ 0, %12 ]
  %26 = load ptr, ptr %3, align 8, !tbaa !6
  %27 = load ptr, ptr %26, align 8, !tbaa !148
  call fastcc void @find_decls_types(ptr noundef %27, ptr noundef nonnull %1) #24
  %28 = add i32 %25, 1
  %29 = load ptr, ptr @alias_pairs, align 8
  %30 = call fastcc i32 @VEC_alias_pair_base_iterate(ptr noundef %29, i32 noundef %28, ptr noundef nonnull %3) #24, !range !23
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %21, label %24, !llvm.loop !150

32:                                               ; preds = %36, %21
  %33 = load ptr, ptr %7, align 8
  %34 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %33, i32 noundef 0, ptr noundef nonnull %2) #24, !range !23
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %41, label %45

36:                                               ; preds = %21, %36
  %37 = phi ptr [ %39, %36 ], [ %22, %21 ]
  call fastcc void @find_decls_types_in_var(ptr noundef nonnull %37, ptr noundef nonnull %1) #24
  %38 = getelementptr inbounds %struct.varpool_node, ptr %37, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !6
  %40 = icmp eq ptr %39, null
  br i1 %40, label %32, label %36, !llvm.loop !151

41:                                               ; preds = %45, %32
  %42 = phi ptr [ %33, %32 ], [ %49, %45 ]
  %43 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %42, i32 noundef 0, ptr noundef nonnull %2) #24, !range !23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %52, label %56

45:                                               ; preds = %32, %45
  %46 = phi i32 [ %48, %45 ], [ 0, %32 ]
  %47 = load ptr, ptr %2, align 8, !tbaa !6
  call void @assign_assembler_name_if_neeeded(ptr noundef %47) #24
  %48 = add i32 %46, 1
  %49 = load ptr, ptr %7, align 8
  %50 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %49, i32 noundef %48, ptr noundef nonnull %2) #24, !range !23
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %41, label %45, !llvm.loop !152

52:                                               ; preds = %56, %41
  %53 = load ptr, ptr %9, align 8
  %54 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %53, i32 noundef 0, ptr noundef nonnull %2) #24, !range !23
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %70, label %63

56:                                               ; preds = %41, %56
  %57 = phi i32 [ %59, %56 ], [ 0, %41 ]
  %58 = load ptr, ptr %2, align 8, !tbaa !6
  call fastcc void @free_lang_data_in_decl(ptr noundef %58) #24
  %59 = add i32 %57, 1
  %60 = load ptr, ptr %7, align 8
  %61 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %60, i32 noundef %59, ptr noundef nonnull %2) #24, !range !23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %52, label %56, !llvm.loop !153

63:                                               ; preds = %52, %63
  %64 = phi i32 [ %66, %63 ], [ 0, %52 ]
  %65 = load ptr, ptr %2, align 8, !tbaa !6
  call fastcc void @free_lang_data_in_type(ptr noundef %65) #24
  %66 = add i32 %64, 1
  %67 = load ptr, ptr %9, align 8
  %68 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %67, i32 noundef %66, ptr noundef nonnull %2) #24, !range !23
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %63, !llvm.loop !154

70:                                               ; preds = %63, %52
  %71 = load ptr, ptr %5, align 8, !tbaa !142
  call void @pointer_set_destroy(ptr noundef %71) #23
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %1) #24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %7) #24
  call fastcc void @VEC_tree_heap_free(ptr noundef nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare i32 @mode_for_size(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_unsigned_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @lhd_dwarf_name(ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare ptr @gimple_decl_printable_name(ptr noundef, i32 noundef) #1

; Function Attrs: optsize
declare void @lhd_set_decl_assembler_name(ptr noundef) #1

; Function Attrs: optsize
declare ptr @gimple_fold_obj_type_ref(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @default_diagnostic_starter(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare void @default_diagnostic_finalizer(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare zeroext i8 @default_tree_printer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #1

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_tree_heap_alloc() unnamed_addr #0 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 100) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_decls_types_in_node(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !155
  tail call fastcc void @find_decls_types(ptr noundef %5, ptr noundef %1) #24
  %6 = load ptr, ptr %0, align 8, !tbaa !155
  %7 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %89, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %11 = icmp eq ptr %10, null
  %12 = load ptr, ptr @cfun, align 8
  %13 = icmp eq ptr %12, null
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4792, ptr noundef nonnull @.str.219) #23
  br label %16

16:                                               ; preds = %9, %15
  %17 = load ptr, ptr %0, align 8, !tbaa !155
  %18 = getelementptr inbounds %struct.tree_function_decl, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %16, %23
  %24 = phi ptr [ %28, %23 ], [ %21, %16 ]
  %25 = getelementptr inbounds %struct.tree_list, ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  tail call fastcc void @find_decls_types(ptr noundef %26, ptr noundef %1) #24
  %27 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %23, !llvm.loop !163

30:                                               ; preds = %23, %16
  %31 = load ptr, ptr %19, align 8, !tbaa !164
  %32 = load ptr, ptr %31, align 8, !tbaa !166
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30, %34
  %35 = phi ptr [ %36, %34 ], [ %32, %30 ]
  tail call fastcc void @find_decls_types_in_eh_region(ptr noundef nonnull %35, ptr noundef %1) #24
  %36 = tail call fastcc ptr @ehr_next(ptr noundef nonnull %35) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %34, !llvm.loop !168

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !169
  %41 = load ptr, ptr %40, align 8, !tbaa !170
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !172
  %44 = getelementptr inbounds %struct.control_flow_graph, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !174
  %46 = icmp eq ptr %43, %45
  br i1 %46, label %89, label %47

47:                                               ; preds = %38, %82
  %48 = phi ptr [ %84, %82 ], [ %43, %38 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %48) #23
  %49 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !76
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %47, %63
  %52 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %53 = call fastcc i32 @gimple_phi_num_args(ptr noundef %52) #24
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %51, %55
  %56 = phi i64 [ %59, %55 ], [ 0, %51 ]
  %57 = call fastcc ptr @gimple_phi_arg_def_ptr(ptr noundef %52, i64 noundef %56) #24
  %58 = load ptr, ptr %57, align 8, !tbaa !6
  call fastcc void @find_decls_types(ptr noundef %58, ptr noundef %1) #24
  %59 = add nuw nsw i64 %56, 1
  %60 = call fastcc i32 @gimple_phi_num_args(ptr noundef %52) #24
  %61 = zext i32 %60 to i64
  %62 = icmp ult i64 %59, %61
  br i1 %62, label %55, label %63, !llvm.loop !175

63:                                               ; preds = %55, %51
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %64 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !76
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %51, label %66, !llvm.loop !176

66:                                               ; preds = %63, %47
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %48) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %67 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !76
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %66, %79
  %70 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %71 = call fastcc i32 @gimple_num_ops(ptr noundef %70) #24
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %69, %73
  %74 = phi i32 [ %76, %73 ], [ 0, %69 ]
  %75 = call fastcc ptr @gimple_op(ptr noundef %70, i32 noundef %74) #24
  call fastcc void @find_decls_types(ptr noundef %75, ptr noundef %1) #24
  %76 = add nuw i32 %74, 1
  %77 = call fastcc i32 @gimple_num_ops(ptr noundef %70) #24
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %73, label %79, !llvm.loop !178

79:                                               ; preds = %73, %69
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %80 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !76
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %69, label %82, !llvm.loop !179

82:                                               ; preds = %79, %66
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %48, i64 0, i32 6
  %84 = load ptr, ptr %83, align 8, !tbaa !172
  %85 = load ptr, ptr %39, align 8, !tbaa !169
  %86 = getelementptr inbounds %struct.control_flow_graph, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !174
  %88 = icmp eq ptr %84, %87
  br i1 %88, label %89, label %47, !llvm.loop !180

89:                                               ; preds = %82, %38, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_alias_pair_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !181
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_alias_pair_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !6
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_decls_types(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 1
  br label %5

5:                                                ; preds = %2, %17
  %6 = phi ptr [ %0, %2 ], [ %18, %17 ]
  store ptr %6, ptr %3, align 8, !tbaa !6
  %7 = load ptr, ptr %4, align 8, !tbaa !142
  %8 = call i32 @pointer_set_contains(ptr noundef %7, ptr noundef %6) #23
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr %4, align 8, !tbaa !142
  %12 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @find_decls_types_r, ptr noundef nonnull %1, ptr noundef %11, ptr noundef null) #24
  br label %13

13:                                               ; preds = %10, %5
  %14 = load ptr, ptr %1, align 8, !tbaa !144
  %15 = call fastcc i32 @VEC_tree_base_length(ptr noundef %14) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = call fastcc ptr @VEC_tree_base_pop(ptr noundef %14) #24
  br label %5

19:                                               ; preds = %13
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_decls_types_in_var(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !183
  tail call fastcc void @find_decls_types(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lang_data_in_decl(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = add nsw i64 %3, -29
  %5 = icmp ult i64 %4, 12
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4364, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 2), align 8, !tbaa !185
  tail call void %8(ptr noundef nonnull %0) #23
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, -1090921693185
  store i64 %10, ptr %0, align 8
  %11 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  store ptr null, ptr %15, align 8, !tbaa !22
  %16 = load i64, ptr %0, align 8
  br label %17

17:                                               ; preds = %14, %7
  %18 = phi i64 [ %16, %14 ], [ %10, %7 ]
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 31
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  br label %27

24:                                               ; preds = %17
  %25 = tail call ptr @decl_function_context(ptr noundef nonnull %0) #24
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  store ptr %25, ptr %26, align 8, !tbaa !22
  br label %27

27:                                               ; preds = %21, %24
  %28 = phi ptr [ %23, %21 ], [ %25, %24 ]
  %29 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %30 = icmp eq ptr %28, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = load i64, ptr %28, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 38
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store ptr null, ptr %29, align 8, !tbaa !22
  br label %36

36:                                               ; preds = %35, %31, %27
  %37 = phi ptr [ null, %35 ], [ %28, %31 ], [ null, %27 ]
  %38 = icmp eq i64 %19, 32
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = icmp eq ptr %37, null
  br i1 %40, label %63, label %41

41:                                               ; preds = %39
  %42 = load i64, ptr %37, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 29
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.tree_decl_common, ptr %37, i64 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 2048
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  store ptr null, ptr %51, align 8, !tbaa !22
  br label %52

52:                                               ; preds = %50, %45, %41
  %53 = and i64 %18, 67108864
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %63, label %61

55:                                               ; preds = %36
  %56 = load i32, ptr @debug_info_level, align 4
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %20, i1 %57, i1 false
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 5
  br label %61

61:                                               ; preds = %52, %59
  %62 = phi ptr [ %60, %59 ], [ %29, %52 ]
  store ptr null, ptr %62, align 8, !tbaa !22
  br label %63

63:                                               ; preds = %61, %52, %39, %55
  %64 = trunc i64 %18 to i16
  switch i16 %64, label %128 [
    i16 29, label %65
    i16 32, label %100
    i16 35, label %124
  ]

65:                                               ; preds = %63
  %66 = tail call zeroext i8 @gimple_has_body_p(ptr noundef nonnull %0) #23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %98, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = icmp eq ptr %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %68, %72
  %73 = phi ptr [ %76, %72 ], [ %70, %68 ]
  %74 = getelementptr inbounds %struct.tree_decl_minimal, ptr %73, i64 0, i32 4
  store ptr %0, ptr %74, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %72, !llvm.loop !186

78:                                               ; preds = %72, %68
  %79 = tail call ptr @pointer_set_create() #23
  %80 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 9
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = icmp eq ptr %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %78, %85
  %86 = phi ptr [ %93, %85 ], [ %83, %78 ]
  %87 = getelementptr inbounds %struct.tree_list, ptr %86, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !22
  %89 = tail call i32 @pointer_set_insert(ptr noundef %79, ptr noundef %88) #23
  %90 = load ptr, ptr %87, align 8, !tbaa !22
  %91 = getelementptr inbounds %struct.tree_decl_minimal, ptr %90, i64 0, i32 4
  store ptr %0, ptr %91, align 8, !tbaa !22
  %92 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !22
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %85, !llvm.loop !187

95:                                               ; preds = %85, %78
  %96 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  %97 = load ptr, ptr %96, align 8, !tbaa !22
  tail call fastcc void @free_lang_data_in_block(ptr noundef %97, ptr noundef %79) #24
  tail call void @pointer_set_destroy(ptr noundef %79) #23
  br label %98

98:                                               ; preds = %95, %65
  %99 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  br label %126

100:                                              ; preds = %63
  %101 = tail call ptr @decl_debug_expr_lookup(ptr noundef nonnull %0) #24
  %102 = icmp eq ptr %101, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %100
  %104 = load i64, ptr %101, align 8
  %105 = and i64 %104, 67174399
  %106 = icmp eq i64 %105, 32
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.tree_decl_common, ptr %101, i64 0, i32 2
  %109 = load i64, ptr %108, align 8
  %110 = and i64 %109, 33554432
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  tail call void @decl_debug_expr_insert(ptr noundef nonnull %0, ptr noundef null) #24
  br label %113

113:                                              ; preds = %112, %107, %103, %100
  %114 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %115 = load i64, ptr %114, align 8
  %116 = and i64 %115, 33554432
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load i64, ptr %0, align 8
  %120 = and i64 %119, 68157440
  %121 = icmp eq i64 %120, 68157440
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  br label %126

124:                                              ; preds = %63
  %125 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 5
  store ptr null, ptr %125, align 8, !tbaa !22
  br label %126

126:                                              ; preds = %98, %124, %122
  %127 = phi ptr [ %123, %122 ], [ %29, %124 ], [ %99, %98 ]
  store ptr null, ptr %127, align 8, !tbaa !22
  br label %128

128:                                              ; preds = %126, %63, %113, %118
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lang_data_in_type(ptr noundef %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = add nsw i64 %3, -5
  %5 = icmp ult i64 %4, 18
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4198, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 2), align 8, !tbaa !185
  tail call void %8(ptr noundef nonnull %0) #23
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, -1090921693185
  store i64 %10, ptr %0, align 8
  %11 = and i64 %9, 65535
  %12 = icmp eq i64 %11, 20
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %40, label %17

17:                                               ; preds = %13, %34
  %18 = phi ptr [ %36, %34 ], [ %15, %13 ]
  %19 = getelementptr inbounds %struct.tree_list, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 1572864
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 11
  %28 = and i32 %27, 4
  %29 = lshr i64 %21, 48
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 65280
  %32 = or disjoint i32 %28, %31
  %33 = tail call ptr @build_qualified_type(ptr noundef nonnull %20, i32 noundef %32) #24
  store ptr %33, ptr %19, align 8, !tbaa !22
  tail call fastcc void @free_lang_data_in_type(ptr noundef %33) #24
  br label %34

34:                                               ; preds = %17, %24
  %35 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %17, !llvm.loop !188

38:                                               ; preds = %34
  %39 = load i64, ptr %0, align 8
  br label %40

40:                                               ; preds = %38, %13, %7
  %41 = phi i64 [ %39, %38 ], [ %10, %13 ], [ %10, %7 ]
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %43, -16
  %45 = icmp ult i32 %44, 3
  br i1 %45, label %46, label %76

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %46, %60
  %51 = phi ptr [ %63, %60 ], [ %48, %46 ]
  %52 = phi ptr [ %61, %60 ], [ null, %46 ]
  %53 = load i64, ptr %51, align 8
  %54 = and i64 %53, 65535
  %55 = icmp eq i64 %54, 31
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = icmp eq ptr %52, null
  %58 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 1
  %59 = select i1 %57, ptr %47, ptr %58
  store ptr %51, ptr %59, align 8, !tbaa !22
  br label %60

60:                                               ; preds = %56, %50
  %61 = phi ptr [ %52, %50 ], [ %51, %56 ]
  %62 = getelementptr inbounds %struct.tree_common, ptr %51, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %50, !llvm.loop !189

65:                                               ; preds = %60
  %66 = icmp eq ptr %61, null
  %67 = getelementptr inbounds %struct.tree_common, ptr %61, i64 0, i32 1
  %68 = select i1 %66, ptr %47, ptr %67
  br label %69

69:                                               ; preds = %65, %46
  %70 = phi ptr [ %47, %46 ], [ %68, %65 ]
  store ptr null, ptr %70, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  store ptr null, ptr %71, align 8, !tbaa !22
  %72 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75

75:                                               ; preds = %69
  tail call fastcc void @free_lang_data_in_binfo(ptr noundef nonnull %73) #24
  br label %78

76:                                               ; preds = %40
  %77 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 17
  store ptr null, ptr %77, align 8, !tbaa !22
  br label %78

78:                                               ; preds = %69, %75, %76
  %79 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 18
  store ptr null, ptr %79, align 8, !tbaa !22
  %80 = load i32, ptr @debug_info_level, align 4, !tbaa !30
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  store ptr null, ptr %83, align 8, !tbaa !22
  br label %84

84:                                               ; preds = %82, %78
  ret void
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_tree_heap_free(ptr nocapture noundef %0) unnamed_addr #17 {
  %2 = load ptr, ptr %0, align 8, !tbaa !6
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_decls_types_in_eh_region(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !190
  switch i32 %4, label %31 [
    i32 3, label %24
    i32 1, label %5
    i32 2, label %20
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %31, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 1
  br label %11

11:                                               ; preds = %9, %11
  %12 = phi ptr [ %7, %9 ], [ %18, %11 ]
  %13 = getelementptr inbounds %struct.eh_catch_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !192
  %15 = tail call fastcc ptr @get_eh_types_for_runtime(ptr noundef %14) #24
  store ptr %15, ptr %13, align 8, !tbaa !192
  %16 = load ptr, ptr %10, align 8, !tbaa !142
  %17 = tail call ptr @walk_tree_1(ptr noundef nonnull %13, ptr noundef nonnull @find_decls_types_r, ptr noundef %1, ptr noundef %16, ptr noundef null) #24
  %18 = load ptr, ptr %12, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %11, !llvm.loop !194

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = tail call fastcc ptr @get_eh_types_for_runtime(ptr noundef %22) #24
  store ptr %23, ptr %21, align 8, !tbaa !22
  br label %26

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 5
  br label %26

26:                                               ; preds = %20, %24
  %27 = phi ptr [ %25, %24 ], [ %21, %20 ]
  %28 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !142
  %30 = tail call ptr @walk_tree_1(ptr noundef nonnull %27, ptr noundef nonnull @find_decls_types_r, ptr noundef %1, ptr noundef %29, ptr noundef null) #24
  br label %31

31:                                               ; preds = %11, %26, %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ehr_next(ptr nocapture noundef readonly %0) unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !195
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !196
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %13
  %10 = phi ptr [ %11, %13 ], [ %0, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !197
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !196
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %17, !llvm.loop !198

17:                                               ; preds = %13, %9, %1, %5
  %18 = phi ptr [ %3, %1 ], [ %7, %5 ], [ %15, %13 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #8 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = load ptr, ptr %2, align 8, !tbaa !201
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_def_ptr(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #24
  %5 = getelementptr inbounds %struct.phi_arg_d, ptr %4, i64 0, i32 1
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !199
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  store ptr %4, ptr %0, align 8, !tbaa !199
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #15 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !199
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !204
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !205
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !22
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !76
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !6
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @get_eh_types_for_runtime(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.tree_list, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call ptr @lookup_type_for_runtime(ptr noundef %5) #23
  %7 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %6) #24
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %11
  %12 = phi ptr [ %20, %11 ], [ %9, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %7, %3 ]
  %14 = getelementptr inbounds %struct.tree_list, ptr %12, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = tail call ptr @lookup_type_for_runtime(ptr noundef %15) #23
  %17 = tail call ptr @build_tree_list_stat(ptr noundef null, ptr noundef %16) #24
  %18 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  store ptr %17, ptr %18, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %11, !llvm.loop !206

22:                                               ; preds = %11, %3, %1
  %23 = phi ptr [ null, %1 ], [ %7, %3 ], [ %7, %11 ]
  ret ptr %23
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_tree_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.tree_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  %9 = load ptr, ptr %0, align 8, !tbaa !6
  %10 = icmp eq ptr %9, null
  br i1 %10, label %340, label %11

11:                                               ; preds = %5
  %12 = icmp eq ptr %3, null
  %13 = icmp eq ptr %4, null
  br label %14

14:                                               ; preds = %11, %32
  %15 = phi ptr [ %9, %11 ], [ %34, %32 ]
  %16 = phi ptr [ %0, %11 ], [ %33, %32 ]
  br i1 %12, label %20, label %17

17:                                               ; preds = %14
  %18 = call i32 @pointer_set_insert(ptr noundef nonnull %3, ptr noundef nonnull %15) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %340

20:                                               ; preds = %17, %14
  store i32 1, ptr %6, align 4, !tbaa !30
  %21 = call ptr %1(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef %2) #23
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %340

23:                                               ; preds = %20
  %24 = load ptr, ptr %16, align 8, !tbaa !6
  %25 = load i64, ptr %24, align 8
  %26 = load i32, ptr %6, align 4, !tbaa !30
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = trunc i64 %25 to i16
  switch i16 %29, label %340 [
    i16 2, label %30
    i16 163, label %36
  ]

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  br label %32

32:                                               ; preds = %30, %36, %52, %79, %103, %166, %178, %72, %130, %190, %202, %223, %301, %329
  %33 = phi ptr [ %332, %329 ], [ %303, %301 ], [ %225, %223 ], [ %204, %202 ], [ %192, %190 ], [ %180, %178 ], [ %168, %166 ], [ %132, %130 ], [ %105, %103 ], [ %81, %79 ], [ %73, %72 ], [ %54, %52 ], [ %31, %30 ], [ %37, %36 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !6
  %35 = icmp eq ptr %34, null
  br i1 %35, label %340, label %14

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.tree_common, ptr %24, i64 0, i32 1
  br label %32

38:                                               ; preds = %23
  br i1 %13, label %45, label %39

39:                                               ; preds = %38
  %40 = call ptr %4(ptr noundef nonnull %16, ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #23
  %41 = icmp eq ptr %40, null
  %42 = load i32, ptr %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = select i1 %41, i1 %43, i1 false
  br i1 %44, label %45, label %340

45:                                               ; preds = %39, %38
  %46 = trunc i64 %25 to i16
  switch i16 %46, label %304 [
    i16 0, label %340
    i16 1, label %340
    i16 23, label %340
    i16 24, label %340
    i16 25, label %340
    i16 27, label %340
    i16 28, label %340
    i16 4, label %340
    i16 62, label %340
    i16 141, label %340
    i16 31, label %340
    i16 36, label %340
    i16 2, label %47
    i16 3, label %55
    i16 26, label %74
    i16 51, label %82
    i16 120, label %103
    i16 58, label %106
    i16 147, label %133
    i16 163, label %156
    i16 55, label %206
    i16 132, label %226
  ]

47:                                               ; preds = %45
  %48 = load ptr, ptr %16, align 8, !tbaa !6
  %49 = getelementptr inbounds %struct.tree_list, ptr %48, i64 0, i32 2
  %50 = call ptr @walk_tree_1(ptr noundef nonnull %49, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %340

52:                                               ; preds = %47
  %53 = load ptr, ptr %16, align 8, !tbaa !6
  %54 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 1
  br label %32

55:                                               ; preds = %45
  %56 = load ptr, ptr %16, align 8, !tbaa !6
  %57 = getelementptr inbounds %struct.tree_vec, ptr %56, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !22
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %340, label %60

60:                                               ; preds = %55
  %61 = sext i32 %58 to i64
  br label %62

62:                                               ; preds = %60, %68
  %63 = phi i64 [ %61, %60 ], [ %64, %68 ]
  %64 = add nsw i64 %63, -1
  %65 = and i64 %64, 4294967295
  %66 = icmp eq i64 %65, 0
  %67 = load ptr, ptr %16, align 8, !tbaa !6
  br i1 %66, label %72, label %68

68:                                               ; preds = %62
  %69 = getelementptr inbounds %struct.tree_vec, ptr %67, i64 0, i32 2, i64 %64
  %70 = call ptr @walk_tree_1(ptr noundef nonnull %69, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %71 = icmp eq ptr %70, null
  br i1 %71, label %62, label %340, !llvm.loop !207

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.tree_vec, ptr %67, i64 0, i32 2
  br label %32

74:                                               ; preds = %45
  %75 = load ptr, ptr %16, align 8, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_complex, ptr %75, i64 0, i32 1
  %77 = call ptr @walk_tree_1(ptr noundef nonnull %76, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %340

79:                                               ; preds = %74
  %80 = load ptr, ptr %16, align 8, !tbaa !6
  %81 = getelementptr inbounds %struct.tree_complex, ptr %80, i64 0, i32 2
  br label %32

82:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %83 = load ptr, ptr %16, align 8, !tbaa !6
  %84 = getelementptr inbounds %struct.tree_constructor, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  %86 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %85, i32 noundef 0, ptr noundef nonnull %7) #24, !range !23
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %95, label %96

88:                                               ; preds = %96
  %89 = add i32 %97, 1
  %90 = load ptr, ptr %16, align 8, !tbaa !6
  %91 = getelementptr inbounds %struct.tree_constructor, ptr %90, i64 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = call fastcc i32 @VEC_constructor_elt_base_iterate(ptr noundef %92, i32 noundef %89, ptr noundef nonnull %7) #24, !range !23
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96, !llvm.loop !208

95:                                               ; preds = %88, %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  br label %340

96:                                               ; preds = %82, %88
  %97 = phi i32 [ %89, %88 ], [ 0, %82 ]
  %98 = load ptr, ptr %7, align 8, !tbaa !6
  %99 = getelementptr inbounds %struct.constructor_elt_d, ptr %98, i64 0, i32 1
  %100 = call ptr @walk_tree_1(ptr noundef nonnull %99, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %101 = icmp eq ptr %100, null
  br i1 %101, label %88, label %102

102:                                              ; preds = %96
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  br label %340

103:                                              ; preds = %45
  %104 = load ptr, ptr %16, align 8, !tbaa !6
  %105 = getelementptr inbounds %struct.tree_exp, ptr %104, i64 0, i32 3
  br label %32

106:                                              ; preds = %45
  %107 = load ptr, ptr %16, align 8, !tbaa !6
  %108 = getelementptr inbounds %struct.tree_exp, ptr %107, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !22
  %110 = icmp eq ptr %109, null
  br i1 %110, label %130, label %115

111:                                              ; preds = %124
  %112 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !22
  %114 = icmp eq ptr %113, null
  br i1 %114, label %128, label %115, !llvm.loop !209

115:                                              ; preds = %106, %111
  %116 = phi ptr [ %113, %111 ], [ %109, %106 ]
  %117 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 5
  %118 = call ptr @walk_tree_1(ptr noundef nonnull %117, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %340

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 1
  %122 = call ptr @walk_tree_1(ptr noundef nonnull %121, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %340

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.tree_decl_common, ptr %116, i64 0, i32 4
  %126 = call ptr @walk_tree_1(ptr noundef nonnull %125, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %127 = icmp eq ptr %126, null
  br i1 %127, label %111, label %340

128:                                              ; preds = %111
  %129 = load ptr, ptr %16, align 8, !tbaa !6
  br label %130

130:                                              ; preds = %128, %106
  %131 = phi ptr [ %129, %128 ], [ %107, %106 ]
  %132 = getelementptr inbounds %struct.tree_exp, ptr %131, i64 1
  br label %32

133:                                              ; preds = %45
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  %134 = load ptr, ptr %16, align 8, !tbaa !6
  %135 = call fastcc { ptr, ptr } @tsi_start(ptr noundef %134) #24
  %136 = extractvalue { ptr, ptr } %135, 0
  %137 = extractvalue { ptr, ptr } %135, 1
  store ptr %136, ptr %8, align 8, !tbaa.struct !210
  %138 = getelementptr inbounds i8, ptr %8, i64 8
  store ptr %137, ptr %138, align 8, !tbaa.struct !211
  %139 = call fastcc zeroext i8 @tsi_end_p(ptr %136) #24
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %155

141:                                              ; preds = %133
  %142 = call fastcc ptr @tsi_stmt_ptr(ptr %136) #24
  %143 = call ptr @walk_tree_1(ptr noundef nonnull %142, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %144 = icmp eq ptr %143, null
  br i1 %144, label %151, label %149

145:                                              ; preds = %151
  %146 = call fastcc ptr @tsi_stmt_ptr(ptr %152) #24
  %147 = call ptr @walk_tree_1(ptr noundef nonnull %146, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %148 = icmp eq ptr %147, null
  br i1 %148, label %151, label %149, !llvm.loop !212

149:                                              ; preds = %145, %141
  %150 = phi ptr [ %143, %141 ], [ %147, %145 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  br label %340

151:                                              ; preds = %141, %145
  call fastcc void @tsi_next(ptr noundef nonnull %8) #24
  %152 = load ptr, ptr %8, align 8
  %153 = call fastcc zeroext i8 @tsi_end_p(ptr %152) #24
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %145, label %155, !llvm.loop !212

155:                                              ; preds = %151, %133
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  br label %340

156:                                              ; preds = %45
  %157 = load ptr, ptr %16, align 8, !tbaa !6
  %158 = getelementptr inbounds %struct.tree_omp_clause, ptr %157, i64 0, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !22
  switch i32 %159, label %205 [
    i32 1, label %160
    i32 2, label %160
    i32 3, label %160
    i32 6, label %160
    i32 7, label %160
    i32 8, label %160
    i32 9, label %160
    i32 10, label %160
    i32 11, label %166
    i32 12, label %166
    i32 13, label %166
    i32 15, label %166
    i32 4, label %169
    i32 14, label %184
    i32 5, label %196
  ]

160:                                              ; preds = %156, %156, %156, %156, %156, %156, %156, %156
  %161 = getelementptr inbounds %struct.tree_omp_clause, ptr %157, i64 0, i32 6
  %162 = call ptr @walk_tree_1(ptr noundef nonnull %161, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %340

164:                                              ; preds = %160
  %165 = load ptr, ptr %16, align 8, !tbaa !6
  br label %166

166:                                              ; preds = %164, %156, %156, %156, %156
  %167 = phi ptr [ %165, %164 ], [ %157, %156 ], [ %157, %156 ], [ %157, %156 ], [ %157, %156 ]
  %168 = getelementptr inbounds %struct.tree_common, ptr %167, i64 0, i32 1
  br label %32

169:                                              ; preds = %156
  %170 = getelementptr inbounds %struct.tree_omp_clause, ptr %157, i64 0, i32 6
  %171 = call ptr @walk_tree_1(ptr noundef nonnull %170, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %340

173:                                              ; preds = %169
  %174 = load ptr, ptr %16, align 8, !tbaa !6
  %175 = getelementptr inbounds %struct.tree_omp_clause, ptr %174, i64 1
  %176 = call ptr @walk_tree_1(ptr noundef nonnull %175, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %340

178:                                              ; preds = %173
  %179 = load ptr, ptr %16, align 8, !tbaa !6
  %180 = getelementptr inbounds %struct.tree_common, ptr %179, i64 0, i32 1
  br label %32

181:                                              ; preds = %184
  %182 = add nuw nsw i64 %185, 1
  %183 = icmp eq i64 %182, 3
  br i1 %183, label %190, label %184, !llvm.loop !213

184:                                              ; preds = %156, %181
  %185 = phi i64 [ %182, %181 ], [ 0, %156 ]
  %186 = load ptr, ptr %16, align 8, !tbaa !6
  %187 = getelementptr inbounds %struct.tree_omp_clause, ptr %186, i64 0, i32 6, i64 %185
  %188 = call ptr @walk_tree_1(ptr noundef nonnull %187, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %189 = icmp eq ptr %188, null
  br i1 %189, label %181, label %340

190:                                              ; preds = %181
  %191 = load ptr, ptr %16, align 8, !tbaa !6
  %192 = getelementptr inbounds %struct.tree_common, ptr %191, i64 0, i32 1
  br label %32

193:                                              ; preds = %196
  %194 = add nuw nsw i64 %197, 1
  %195 = icmp eq i64 %194, 4
  br i1 %195, label %202, label %196, !llvm.loop !214

196:                                              ; preds = %156, %193
  %197 = phi i64 [ %194, %193 ], [ 0, %156 ]
  %198 = load ptr, ptr %16, align 8, !tbaa !6
  %199 = getelementptr inbounds %struct.tree_omp_clause, ptr %198, i64 0, i32 6, i64 %197
  %200 = call ptr @walk_tree_1(ptr noundef nonnull %199, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %201 = icmp eq ptr %200, null
  br i1 %201, label %193, label %340

202:                                              ; preds = %193
  %203 = load ptr, ptr %16, align 8, !tbaa !6
  %204 = getelementptr inbounds %struct.tree_common, ptr %203, i64 0, i32 1
  br label %32

205:                                              ; preds = %156
  call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 10174, ptr noundef nonnull @.str.219) #23
  br label %340

206:                                              ; preds = %45
  %207 = load ptr, ptr %16, align 8, !tbaa !6
  %208 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 1, i32 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !22
  %210 = getelementptr inbounds %struct.tree_exp, ptr %207, i64 1
  %211 = load ptr, ptr %210, align 8, !tbaa !22
  %212 = icmp eq ptr %209, %211
  %213 = select i1 %212, i64 2, i64 3
  br label %217

214:                                              ; preds = %217
  %215 = add nuw nsw i64 %218, 1
  %216 = icmp eq i64 %215, %213
  br i1 %216, label %223, label %217, !llvm.loop !215

217:                                              ; preds = %206, %214
  %218 = phi i64 [ 0, %206 ], [ %215, %214 ]
  %219 = load ptr, ptr %16, align 8, !tbaa !6
  %220 = getelementptr inbounds %struct.tree_exp, ptr %219, i64 0, i32 3, i64 %218
  %221 = call ptr @walk_tree_1(ptr noundef nonnull %220, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %222 = icmp eq ptr %221, null
  br i1 %222, label %214, label %340

223:                                              ; preds = %214
  %224 = load ptr, ptr %16, align 8, !tbaa !6
  %225 = getelementptr inbounds %struct.tree_exp, ptr %224, i64 0, i32 3, i64 %213
  br label %32

226:                                              ; preds = %45
  %227 = load ptr, ptr %16, align 8, !tbaa !6
  %228 = getelementptr inbounds %struct.tree_exp, ptr %227, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !22
  %230 = load i64, ptr %229, align 8
  %231 = and i64 %230, 65535
  %232 = icmp eq i64 %231, 35
  br i1 %232, label %233, label %304

233:                                              ; preds = %226
  %234 = getelementptr inbounds %struct.tree_common, ptr %229, i64 0, i32 2
  %235 = load ptr, ptr %234, align 8, !tbaa !6
  %236 = load i64, ptr %235, align 8
  %237 = and i64 %236, 65535
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %340, label %239

239:                                              ; preds = %233
  %240 = call ptr %1(ptr noundef nonnull %234, ptr noundef nonnull %6, ptr noundef %2) #23
  %241 = icmp eq ptr %240, null
  %242 = load i32, ptr %6, align 4
  %243 = icmp ne i32 %242, 0
  %244 = select i1 %241, i1 %243, i1 false
  br i1 %244, label %245, label %340

245:                                              ; preds = %239
  %246 = load ptr, ptr %234, align 8, !tbaa !6
  %247 = call fastcc ptr @walk_type_fields(ptr noundef %246, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %340

249:                                              ; preds = %245
  %250 = load ptr, ptr %234, align 8, !tbaa !6
  %251 = load i64, ptr %250, align 8
  %252 = trunc i64 %251 to i16
  switch i16 %252, label %296 [
    i16 16, label %253
    i16 17, label %253
    i16 18, label %253
    i16 7, label %287
    i16 6, label %287
    i16 8, label %287
    i16 11, label %287
    i16 9, label %287
  ]

253:                                              ; preds = %249, %249, %249
  %254 = getelementptr inbounds %struct.tree_type, ptr %250, i64 0, i32 1
  %255 = load ptr, ptr %254, align 8, !tbaa !22
  %256 = icmp eq ptr %255, null
  br i1 %256, label %296, label %257

257:                                              ; preds = %253, %283
  %258 = phi ptr [ %285, %283 ], [ %255, %253 ]
  %259 = load i64, ptr %258, align 8
  %260 = and i64 %259, 65535
  %261 = icmp eq i64 %260, 31
  br i1 %261, label %262, label %283

262:                                              ; preds = %257
  %263 = getelementptr inbounds %struct.tree_field_decl, ptr %258, i64 0, i32 1
  %264 = call ptr @walk_tree_1(ptr noundef nonnull %263, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %265 = icmp eq ptr %264, null
  br i1 %265, label %266, label %340

266:                                              ; preds = %262
  %267 = getelementptr inbounds %struct.tree_decl_common, ptr %258, i64 0, i32 1
  %268 = call ptr @walk_tree_1(ptr noundef nonnull %267, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %340

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.tree_decl_common, ptr %258, i64 0, i32 4
  %272 = call ptr @walk_tree_1(ptr noundef nonnull %271, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %273 = icmp eq ptr %272, null
  br i1 %273, label %274, label %340

274:                                              ; preds = %270
  %275 = load ptr, ptr %234, align 8, !tbaa !6
  %276 = load i64, ptr %275, align 8
  %277 = and i64 %276, 65535
  %278 = icmp eq i64 %277, 18
  br i1 %278, label %279, label %283

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.tree_field_decl, ptr %258, i64 0, i32 3
  %281 = call ptr @walk_tree_1(ptr noundef nonnull %280, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %340

283:                                              ; preds = %274, %279, %257
  %284 = getelementptr inbounds %struct.tree_common, ptr %258, i64 0, i32 1
  %285 = load ptr, ptr %284, align 8, !tbaa !22
  %286 = icmp eq ptr %285, null
  br i1 %286, label %296, label %257, !llvm.loop !216

287:                                              ; preds = %249, %249, %249, %249, %249
  %288 = getelementptr inbounds %struct.tree_type, ptr %250, i64 0, i32 13
  %289 = call ptr @walk_tree_1(ptr noundef nonnull %288, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %290 = icmp eq ptr %289, null
  br i1 %290, label %291, label %340

291:                                              ; preds = %287
  %292 = load ptr, ptr %234, align 8, !tbaa !6
  %293 = getelementptr inbounds %struct.tree_type, ptr %292, i64 0, i32 14
  %294 = call ptr @walk_tree_1(ptr noundef nonnull %293, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %295 = icmp eq ptr %294, null
  br i1 %295, label %296, label %340

296:                                              ; preds = %283, %253, %249, %291
  %297 = load ptr, ptr %234, align 8, !tbaa !6
  %298 = getelementptr inbounds %struct.tree_type, ptr %297, i64 0, i32 2
  %299 = call ptr @walk_tree_1(ptr noundef nonnull %298, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %300 = icmp eq ptr %299, null
  br i1 %300, label %301, label %340

301:                                              ; preds = %296
  %302 = load ptr, ptr %234, align 8, !tbaa !6
  %303 = getelementptr inbounds %struct.tree_type, ptr %302, i64 0, i32 3
  br label %32

304:                                              ; preds = %226, %45
  %305 = and i64 %25, 65535
  %306 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !30
  %308 = icmp ugt i32 %307, 3
  %309 = load ptr, ptr %16, align 8, !tbaa !6
  br i1 %308, label %310, label %333

310:                                              ; preds = %304
  %311 = call fastcc i32 @tree_operand_length(ptr noundef %309) #24
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %340, label %313

313:                                              ; preds = %310
  %314 = add i32 %311, -1
  %315 = icmp sgt i32 %311, 1
  br i1 %315, label %316, label %329

316:                                              ; preds = %313
  %317 = zext nneg i32 %314 to i64
  br label %321

318:                                              ; preds = %321
  %319 = add nuw nsw i64 %322, 1
  %320 = icmp eq i64 %319, %317
  br i1 %320, label %327, label %321, !llvm.loop !217

321:                                              ; preds = %316, %318
  %322 = phi i64 [ 0, %316 ], [ %319, %318 ]
  %323 = load ptr, ptr %16, align 8, !tbaa !6
  %324 = getelementptr inbounds %struct.tree_exp, ptr %323, i64 0, i32 3, i64 %322
  %325 = call ptr @walk_tree_1(ptr noundef nonnull %324, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %326 = icmp eq ptr %325, null
  br i1 %326, label %318, label %340

327:                                              ; preds = %318
  %328 = load ptr, ptr %16, align 8, !tbaa !6
  br label %329

329:                                              ; preds = %327, %313
  %330 = phi ptr [ %328, %327 ], [ %309, %313 ]
  %331 = sext i32 %314 to i64
  %332 = getelementptr inbounds %struct.tree_exp, ptr %330, i64 0, i32 3, i64 %331
  br label %32

333:                                              ; preds = %304
  %334 = load i64, ptr %309, align 8
  %335 = and i64 %334, 65535
  %336 = add nsw i64 %335, -5
  %337 = icmp ult i64 %336, 18
  br i1 %337, label %338, label %340

338:                                              ; preds = %333
  %339 = call fastcc ptr @walk_type_fields(ptr noundef nonnull %309, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  br label %340

340:                                              ; preds = %32, %17, %20, %28, %39, %47, %74, %160, %169, %173, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %45, %55, %233, %239, %245, %287, %291, %296, %310, %262, %266, %270, %279, %217, %196, %184, %115, %120, %124, %68, %321, %5, %205, %333, %95, %155, %149, %102, %338
  %341 = phi ptr [ %339, %338 ], [ %100, %102 ], [ %150, %149 ], [ null, %155 ], [ null, %95 ], [ null, %333 ], [ null, %205 ], [ null, %5 ], [ %325, %321 ], [ %70, %68 ], [ %118, %115 ], [ %122, %120 ], [ %126, %124 ], [ %188, %184 ], [ %200, %196 ], [ %221, %217 ], [ %264, %262 ], [ %268, %266 ], [ %272, %270 ], [ %281, %279 ], [ null, %32 ], [ null, %17 ], [ %21, %20 ], [ null, %28 ], [ %40, %39 ], [ %50, %47 ], [ %77, %74 ], [ %162, %160 ], [ %171, %169 ], [ %176, %173 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %45 ], [ null, %55 ], [ null, %233 ], [ %240, %239 ], [ %247, %245 ], [ %289, %287 ], [ %294, %291 ], [ %299, %296 ], [ null, %310 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  ret ptr %341
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @find_decls_types_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !6
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 2
  br i1 %8, label %177, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc zeroext i8 @is_lang_specific(ptr noundef nonnull %5) #24, !range !76
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, ptr %1, align 4, !tbaa !30
  br label %177

13:                                               ; preds = %9
  %14 = add nsw i64 %7, -29
  %15 = icmp ult i64 %14, 12
  br i1 %15, label %16, label %67

16:                                               ; preds = %13
  tail call fastcc void @add_tree_to_fld_list(ptr noundef nonnull %5, ptr noundef %2) #24
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %18, ptr noundef %2) #24
  %19 = getelementptr inbounds %struct.tree_decl_minimal, ptr %5, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %20, ptr noundef %2) #24
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %22, ptr noundef %2) #24
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %24, ptr noundef %2) #24
  %25 = load i64, ptr %5, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 35
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %30, ptr noundef %2) #24
  br label %31

31:                                               ; preds = %28, %16
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %33, ptr noundef %2) #24
  %34 = getelementptr inbounds %struct.tree_decl_common, ptr %5, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %35, ptr noundef %2) #24
  %36 = load i64, ptr %5, align 8
  %37 = trunc i64 %36 to i16
  switch i16 %37, label %63 [
    i16 29, label %38
    i16 35, label %42
    i16 31, label %46
    i16 32, label %56
  ]

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %40, ptr noundef %2) #24
  %41 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 3
  br label %60

42:                                               ; preds = %31
  %43 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %44, ptr noundef %2) #24
  %45 = getelementptr inbounds %struct.tree_decl_non_common, ptr %5, i64 0, i32 4
  br label %60

46:                                               ; preds = %31
  %47 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %48, ptr noundef %2) #24
  %49 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %50, ptr noundef %2) #24
  %51 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %52, ptr noundef %2) #24
  %53 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %54, ptr noundef %2) #24
  %55 = getelementptr inbounds %struct.tree_field_decl, ptr %5, i64 0, i32 5
  br label %60

56:                                               ; preds = %31
  %57 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %5, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %58, ptr noundef %2) #24
  %59 = getelementptr inbounds %struct.tree_decl_with_vis, ptr %5, i64 0, i32 3
  br label %60

60:                                               ; preds = %38, %46, %56, %42
  %61 = phi ptr [ %45, %42 ], [ %59, %56 ], [ %55, %46 ], [ %41, %38 ]
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %62, ptr noundef %2) #24
  br label %63

63:                                               ; preds = %60, %31
  %64 = load i64, ptr %5, align 8
  %65 = and i64 %64, 65535
  %66 = icmp eq i64 %65, 31
  br i1 %66, label %173, label %170

67:                                               ; preds = %13
  %68 = add nsw i64 %7, -5
  %69 = icmp ult i64 %68, 18
  br i1 %69, label %70, label %174

70:                                               ; preds = %67
  tail call fastcc void @add_tree_to_fld_list(ptr noundef nonnull %5, ptr noundef %2) #24
  %71 = load i64, ptr %5, align 8
  %72 = trunc i64 %71 to i32
  %73 = and i32 %72, 65535
  %74 = add nsw i32 %73, -16
  %75 = icmp ult i32 %74, 3
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %78, ptr noundef %2) #24
  br label %79

79:                                               ; preds = %70, %76
  %80 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %81, ptr noundef %2) #24
  %82 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %83, ptr noundef %2) #24
  %84 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %85, ptr noundef %2) #24
  %86 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 9
  %87 = load ptr, ptr %86, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %87, ptr noundef %2) #24
  %88 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 10
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %89, ptr noundef %2) #24
  %90 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 12
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %91, ptr noundef %2) #24
  %92 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 13
  %93 = load ptr, ptr %92, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %93, ptr noundef %2) #24
  %94 = load i64, ptr %5, align 8
  %95 = trunc i64 %94 to i32
  %96 = and i32 %95, 65535
  %97 = add nsw i32 %96, -16
  %98 = icmp ult i32 %97, 3
  br i1 %98, label %102, label %99

99:                                               ; preds = %79
  %100 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %101 = load ptr, ptr %100, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %101, ptr noundef %2) #24
  br label %102

102:                                              ; preds = %79, %99
  %103 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 16
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %104, ptr noundef %2) #24
  %105 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 15
  %106 = load ptr, ptr %105, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %106, ptr noundef %2) #24
  %107 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 18
  %108 = load ptr, ptr %107, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %108, ptr noundef %2) #24
  %109 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 19
  %110 = load ptr, ptr %109, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %110, ptr noundef %2) #24
  %111 = load i64, ptr %5, align 8
  %112 = trunc i64 %111 to i32
  %113 = and i32 %112, 65535
  %114 = add nsw i32 %113, -16
  %115 = icmp ult i32 %114, 3
  br i1 %115, label %116, label %170

116:                                              ; preds = %102
  %117 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 17
  %118 = load ptr, ptr %117, align 8, !tbaa !22
  %119 = icmp eq ptr %118, null
  br i1 %119, label %156, label %120

120:                                              ; preds = %116
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %121 = getelementptr inbounds %struct.tree_binfo, ptr %118, i64 0, i32 9
  %122 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %4) #24, !range !23
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %120, %124
  %125 = phi i32 [ %129, %124 ], [ 0, %120 ]
  %126 = load ptr, ptr %4, align 8, !tbaa !6
  %127 = getelementptr inbounds %struct.tree_common, ptr %126, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %128, ptr noundef %2) #24
  %129 = add i32 %125, 1
  %130 = load ptr, ptr %117, align 8, !tbaa !22
  %131 = getelementptr inbounds %struct.tree_binfo, ptr %130, i64 0, i32 9
  %132 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %131, i32 noundef %129, ptr noundef nonnull %4) #24, !range !23
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %124, !llvm.loop !218

134:                                              ; preds = %124, %120
  %135 = phi ptr [ %118, %120 ], [ %130, %124 ]
  %136 = getelementptr inbounds %struct.tree_binfo, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !22
  %138 = icmp eq ptr %137, null
  br i1 %138, label %150, label %139

139:                                              ; preds = %134
  %140 = load i64, ptr %137, align 8
  %141 = and i64 %140, 65535
  %142 = icmp eq i64 %141, 2
  br i1 %142, label %143, label %150

143:                                              ; preds = %139, %143
  %144 = phi ptr [ %148, %143 ], [ %137, %139 ]
  %145 = getelementptr inbounds %struct.tree_list, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %146, ptr noundef %2) #24
  %147 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !22
  %149 = icmp eq ptr %148, null
  br i1 %149, label %150, label %143, !llvm.loop !219

150:                                              ; preds = %143, %134, %139
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %151 = load i64, ptr %5, align 8
  %152 = trunc i64 %151 to i32
  %153 = and i32 %152, 65535
  %154 = add nsw i32 %153, -16
  %155 = icmp ult i32 %154, 3
  br i1 %155, label %156, label %170

156:                                              ; preds = %116, %150
  %157 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 1
  %158 = load ptr, ptr %157, align 8, !tbaa !22
  %159 = icmp eq ptr %158, null
  br i1 %159, label %170, label %160

160:                                              ; preds = %156, %166
  %161 = phi ptr [ %168, %166 ], [ %158, %156 ]
  %162 = load i64, ptr %161, align 8
  %163 = and i64 %162, 65535
  %164 = icmp eq i64 %163, 31
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  tail call fastcc void @fld_worklist_push(ptr noundef nonnull %161, ptr noundef %2) #24
  br label %166

166:                                              ; preds = %165, %160
  %167 = getelementptr inbounds %struct.tree_common, ptr %161, i64 0, i32 1
  %168 = load ptr, ptr %167, align 8, !tbaa !22
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %160, !llvm.loop !220

170:                                              ; preds = %166, %150, %156, %102, %63
  %171 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 1
  %172 = load ptr, ptr %171, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %172, ptr noundef %2) #24
  br label %173

173:                                              ; preds = %170, %63
  store i32 0, ptr %1, align 4, !tbaa !30
  br label %174

174:                                              ; preds = %173, %67
  %175 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %176 = load ptr, ptr %175, align 8, !tbaa !22
  tail call fastcc void @fld_worklist_push(ptr noundef %176, ptr noundef %2) #24
  br label %177

177:                                              ; preds = %3, %174, %12
  ret ptr null
}

; Function Attrs: optsize
declare ptr @lookup_type_for_runtime(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_lang_specific(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i32
  %4 = and i32 %3, 65535
  %5 = icmp eq i32 %4, 22
  %6 = icmp ugt i32 %4, 187
  %7 = or i1 %5, %6
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_tree_to_fld_list(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = add nsw i64 %4, -29
  %6 = icmp ult i64 %5, 12
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 2
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %8, ptr noundef nonnull %0) #24
  %9 = load i32, ptr @debug_info_level, align 4, !tbaa !30
  %10 = icmp ugt i32 %9, 1
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  tail call fastcc void @save_debug_info_for_decl(ptr noundef nonnull %0) #24
  br label %21

12:                                               ; preds = %2
  %13 = add nsw i64 %4, -5
  %14 = icmp ult i64 %13, 18
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 3
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %16, ptr noundef nonnull %0) #24
  %17 = load i32, ptr @debug_info_level, align 4, !tbaa !30
  %18 = icmp ugt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  tail call fastcc void @save_debug_info_for_type(ptr noundef nonnull %0) #24
  br label %21

20:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4549, ptr noundef nonnull @.str.219) #23
  br label %21

21:                                               ; preds = %20, %19, %15, %7, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fld_worklist_push(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = tail call fastcc zeroext i8 @is_lang_specific(ptr noundef nonnull %0) #24, !range !76
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.free_lang_data_d, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !142
  %10 = tail call i32 @pointer_set_contains(ptr noundef %9, ptr noundef nonnull %0) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  tail call fastcc void @VEC_tree_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %0) #24
  br label %13

13:                                               ; preds = %12, %7, %4, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_debug_info_for_decl(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug_info_level, align 4, !tbaa !30
  %3 = icmp ugt i32 %2, 1
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = add nsw i64 %8, -29
  %10 = icmp ult i64 %9, 12
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4510, ptr noundef nonnull @.str.219) #23
  br label %12

12:                                               ; preds = %6, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @save_debug_info_for_type(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug_info_level, align 4, !tbaa !30
  %3 = icmp ugt i32 %2, 1
  %4 = icmp ne ptr %0, null
  %5 = and i1 %4, %3
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i64, ptr %0, align 8
  %8 = and i64 %7, 65535
  %9 = add nsw i64 %8, -5
  %10 = icmp ult i64 %9, 18
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4524, ptr noundef nonnull @.str.219) #23
  br label %12

12:                                               ; preds = %6, %11
  ret void
}

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !22
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.223, i32 noundef 3103, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !221
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !222
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !224
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !226
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.223, i32 noundef 1622, ptr noundef nonnull @.str.219) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !226
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #5 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !30
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc ptr @VEC_tree_base_pop(ptr nocapture noundef %0) unnamed_addr #10 {
  %2 = load i32, ptr %0, align 8, !tbaa !53
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !53
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  ret ptr %6
}

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lang_data_in_block(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %13, %15 ], [ %4, %2 ]
  %8 = phi ptr [ %16, %15 ], [ %3, %2 ]
  %9 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef nonnull %7) #23
  %10 = icmp eq i32 %9, 0
  %11 = load ptr, ptr %8, align 8, !tbaa !6
  %12 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  br i1 %10, label %14, label %15

14:                                               ; preds = %6
  store ptr %13, ptr %8, align 8, !tbaa !6
  br label %15

15:                                               ; preds = %6, %14
  %16 = phi ptr [ %8, %14 ], [ %12, %6 ]
  %17 = icmp eq ptr %13, null
  br i1 %17, label %18, label %6, !llvm.loop !227

18:                                               ; preds = %15, %2
  %19 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18, %22
  %23 = phi ptr [ %25, %22 ], [ %20, %18 ]
  tail call fastcc void @free_lang_data_in_block(ptr noundef nonnull %23, ptr noundef %1) #24
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !228

27:                                               ; preds = %22, %18
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @decl_debug_expr_lookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_map, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !55
  %3 = load ptr, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %5 = tail call i32 %4(ptr noundef %0) #23
  %6 = call ptr @htab_find_with_hash(ptr noundef %3, ptr noundef nonnull %2, i32 noundef %5) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.tree_map, ptr %6, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decl_debug_expr_insert(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 24) #23
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !6
  %5 = tail call i32 %4(ptr noundef %0) #23
  %6 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 1
  store i32 %5, ptr %6, align 8, !tbaa !25
  store ptr %0, ptr %3, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.tree_map, ptr %3, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !56
  %8 = load ptr, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %9 = tail call ptr @htab_find_slot_with_hash(ptr noundef %8, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 1) #23
  store ptr %3, ptr %9, align 8, !tbaa !6
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_lang_data_in_binfo(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 149
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 4181, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.tree_binfo, ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_binfo, ptr %0, i64 0, i32 5
  %10 = getelementptr inbounds %struct.tree_binfo, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %11 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull %2) #24, !range !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %7, %13
  %14 = phi i32 [ %16, %13 ], [ 0, %7 ]
  %15 = load ptr, ptr %2, align 8, !tbaa !6
  tail call fastcc void @free_lang_data_in_binfo(ptr noundef %15) #24
  %16 = add i32 %14, 1
  %17 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef nonnull %10, i32 noundef %16, ptr noundef nonnull %2) #24, !range !23
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %13, !llvm.loop !229

19:                                               ; preds = %13, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #18

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @is_attribute_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc i32 @is_attribute_with_length_p(ptr noundef %0, i32 noundef %4, ptr noundef %1) #24, !range !23
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef i32 @is_attribute_with_length_p(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load i64, ptr %2, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 1
  br i1 %6, label %7, label %70

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_identifier, ptr %2, i64 0, i32 1, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %9) #24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %70, label %16

16:                                               ; preds = %13, %7
  %17 = load i8, ptr %0, align 1, !tbaa !22
  %18 = icmp eq i8 %17, 95
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = getelementptr inbounds i8, ptr %0, i64 1
  %21 = load i8, ptr %20, align 1, !tbaa !22
  %22 = icmp eq i8 %21, 95
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5051, ptr noundef nonnull @.str.219) #23
  br label %24

24:                                               ; preds = %19, %23
  %25 = sext i32 %1 to i64
  %26 = getelementptr i8, ptr %0, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -2
  %28 = load i8, ptr %27, align 1, !tbaa !22
  %29 = icmp eq i8 %28, 95
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5052, ptr noundef nonnull @.str.219) #23
  br label %31

31:                                               ; preds = %24, %30
  %32 = getelementptr i8, ptr %26, i64 -1
  %33 = load i8, ptr %32, align 1, !tbaa !22
  %34 = icmp eq i8 %33, 95
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5053, ptr noundef nonnull @.str.219) #23
  br label %36

36:                                               ; preds = %31, %35
  %37 = add nsw i32 %1, -4
  %38 = icmp eq i32 %11, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %36
  %40 = getelementptr inbounds i8, ptr %0, i64 2
  %41 = sext i32 %11 to i64
  %42 = tail call i32 @strncmp(ptr noundef nonnull %40, ptr noundef %9, i64 noundef %41) #24
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %70, label %69

44:                                               ; preds = %16
  %45 = add nsw i32 %1, 4
  %46 = icmp eq i32 %11, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i8, ptr %9, align 1, !tbaa !22
  %49 = icmp eq i8 %48, 95
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = getelementptr inbounds i8, ptr %9, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !22
  %53 = icmp eq i8 %52, 95
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = sext i32 %11 to i64
  %56 = getelementptr i8, ptr %9, i64 %55
  %57 = getelementptr i8, ptr %56, i64 -2
  %58 = load i8, ptr %57, align 1, !tbaa !22
  %59 = icmp eq i8 %58, 95
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = getelementptr i8, ptr %56, i64 -1
  %62 = load i8, ptr %61, align 1, !tbaa !22
  %63 = icmp eq i8 %62, 95
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %9, i64 2
  %66 = sext i32 %1 to i64
  %67 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef nonnull %65, i64 noundef %66) #24
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %44, %47, %50, %54, %60, %64, %36, %39
  br label %70

70:                                               ; preds = %64, %39, %13, %3, %69
  %71 = phi i32 [ 0, %69 ], [ 0, %3 ], [ 1, %13 ], [ 1, %39 ], [ 1, %64 ]
  ret i32 %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lookup_attribute(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %2
  %5 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %4, %20
  %8 = phi ptr [ %1, %4 ], [ %22, %20 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5095, ptr noundef nonnull @.str.219) #23
  %15 = load ptr, ptr %9, align 8, !tbaa !22
  br label %16

16:                                               ; preds = %7, %14
  %17 = phi ptr [ %10, %7 ], [ %15, %14 ]
  %18 = tail call fastcc i32 @is_attribute_with_length_p(ptr noundef %0, i32 noundef %6, ptr noundef %17) #24, !range !23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %7, !llvm.loop !230

24:                                               ; preds = %16, %20, %2
  %25 = phi ptr [ null, %2 ], [ null, %20 ], [ %8, %16 ]
  ret ptr %25
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @remove_attribute(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !6
  %4 = icmp eq ptr %1, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %5, %25
  %9 = phi ptr [ %3, %5 ], [ %26, %25 ]
  %10 = phi ptr [ %1, %5 ], [ %23, %25 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 1
  br i1 %15, label %18, label %16

16:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5114, ptr noundef nonnull @.str.219) #23
  %17 = load ptr, ptr %11, align 8, !tbaa !22
  br label %18

18:                                               ; preds = %8, %16
  %19 = phi ptr [ %12, %8 ], [ %17, %16 ]
  %20 = tail call fastcc i32 @is_attribute_with_length_p(ptr noundef %0, i32 noundef %7, ptr noundef %19) #24, !range !23
  %21 = icmp eq i32 %20, 0
  %22 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  br i1 %21, label %25, label %24

24:                                               ; preds = %18
  store ptr %23, ptr %9, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %18, %24
  %26 = phi ptr [ %9, %24 ], [ %22, %18 ]
  %27 = icmp eq ptr %23, null
  br i1 %27, label %28, label %8, !llvm.loop !231

28:                                               ; preds = %25
  %29 = load ptr, ptr %3, align 8, !tbaa !6
  br label %30

30:                                               ; preds = %28, %2
  %31 = phi ptr [ %29, %28 ], [ null, %2 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @merge_attributes(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %70, label %4

4:                                                ; preds = %2
  %5 = icmp eq ptr %1, null
  br i1 %5, label %70, label %6

6:                                                ; preds = %4
  %7 = tail call i32 @attribute_list_contained(ptr noundef nonnull %0, ptr noundef nonnull %1) #24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %70

9:                                                ; preds = %6
  %10 = tail call i32 @attribute_list_contained(ptr noundef nonnull %1, ptr noundef nonnull %0) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %9
  %13 = tail call i32 @list_length(ptr noundef nonnull %0) #24
  %14 = tail call i32 @list_length(ptr noundef nonnull %1) #24
  %15 = icmp slt i32 %13, %14
  %16 = select i1 %15, ptr %0, ptr %1
  %17 = select i1 %15, ptr %1, ptr %0
  br label %18

18:                                               ; preds = %12, %65
  %19 = phi ptr [ %17, %12 ], [ %66, %65 ]
  %20 = phi ptr [ %16, %12 ], [ %68, %65 ]
  %21 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = getelementptr inbounds %struct.tree_identifier, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = tail call ptr @lookup_attribute(ptr noundef %24, ptr noundef %19) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %62, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct.tree_list, ptr %20, i64 0, i32 2
  br label %29

29:                                               ; preds = %27, %54
  %30 = phi ptr [ %25, %27 ], [ %60, %54 ]
  %31 = getelementptr inbounds %struct.tree_list, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load ptr, ptr %28, align 8, !tbaa !22
  br label %50

36:                                               ; preds = %29
  %37 = load i64, ptr %32, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 2
  %40 = load ptr, ptr %28, align 8, !tbaa !22
  br i1 %39, label %41, label %50

41:                                               ; preds = %36
  %42 = icmp eq ptr %40, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %41
  %44 = load i64, ptr %40, align 8
  %45 = and i64 %44, 65535
  %46 = icmp eq i64 %45, 2
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = tail call i32 @simple_cst_list_equal(ptr noundef nonnull %32, ptr noundef nonnull %40) #24, !range !23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %54, label %65

50:                                               ; preds = %34, %43, %41, %36
  %51 = phi ptr [ %35, %34 ], [ %40, %43 ], [ null, %41 ], [ %40, %36 ]
  %52 = tail call i32 @simple_cst_equal(ptr noundef %32, ptr noundef %51) #24, !range !47
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %65, label %54

54:                                               ; preds = %47, %50
  %55 = load ptr, ptr %21, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct.tree_identifier, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = tail call ptr @lookup_attribute(ptr noundef %57, ptr noundef %59) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %29, !llvm.loop !232

62:                                               ; preds = %54, %18
  %63 = tail call ptr @copy_node_stat(ptr noundef nonnull %20) #24
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 1
  store ptr %19, ptr %64, align 8, !tbaa !22
  br label %65

65:                                               ; preds = %47, %50, %62
  %66 = phi ptr [ %63, %62 ], [ %19, %50 ], [ %19, %47 ]
  %67 = getelementptr inbounds %struct.tree_common, ptr %20, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %18, !llvm.loop !233

70:                                               ; preds = %65, %9, %2, %4, %6
  %71 = phi ptr [ %0, %6 ], [ %0, %4 ], [ %1, %2 ], [ %1, %9 ], [ %66, %65 ]
  ret ptr %71
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @attribute_list_contained(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %81, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %0, null
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4, %22
  %9 = phi ptr [ %26, %22 ], [ %1, %4 ]
  %10 = phi ptr [ %24, %22 ], [ %0, %4 ]
  %11 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %12, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_list, ptr %9, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %18, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp ne ptr %24, null
  %28 = icmp ne ptr %26, null
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %8, label %30, !llvm.loop !234

30:                                               ; preds = %22, %4
  %31 = phi ptr [ %1, %4 ], [ %26, %22 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %81, label %33

33:                                               ; preds = %8, %16, %30
  %34 = phi ptr [ %31, %30 ], [ %9, %16 ], [ %9, %8 ]
  br label %35

35:                                               ; preds = %33, %77
  %36 = phi ptr [ %79, %77 ], [ %34, %33 ]
  %37 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.tree_identifier, ptr %38, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = tail call ptr @lookup_attribute(ptr noundef %40, ptr noundef %0) #24
  %42 = icmp eq ptr %41, null
  br i1 %42, label %81, label %43

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.tree_list, ptr %36, i64 0, i32 2
  br label %45

45:                                               ; preds = %43, %69
  %46 = phi ptr [ %41, %43 ], [ %75, %69 ]
  %47 = load ptr, ptr %44, align 8, !tbaa !22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %64, label %49

49:                                               ; preds = %45
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 2
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 2
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = tail call i32 @simple_cst_list_equal(ptr noundef nonnull %47, ptr noundef nonnull %55) #24, !range !23
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %69, label %77

64:                                               ; preds = %57, %53, %49, %45
  %65 = getelementptr inbounds %struct.tree_list, ptr %46, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = tail call i32 @simple_cst_equal(ptr noundef %47, ptr noundef %66) #24, !range !47
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %77, label %69

69:                                               ; preds = %61, %64
  %70 = load ptr, ptr %37, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.tree_identifier, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.tree_common, ptr %46, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = tail call ptr @lookup_attribute(ptr noundef %72, ptr noundef %74) #24
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %45, !llvm.loop !235

77:                                               ; preds = %61, %64
  %78 = getelementptr inbounds %struct.tree_common, ptr %36, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !22
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %35, !llvm.loop !236

81:                                               ; preds = %77, %35, %69, %30, %2
  %82 = phi i32 [ 1, %2 ], [ 1, %30 ], [ 0, %69 ], [ 0, %35 ], [ 1, %77 ]
  ret i32 %82
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @simple_cst_list_equal(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %23

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %19, %15 ], [ %1, %2 ]
  %8 = phi ptr [ %17, %15 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = tail call i32 @simple_cst_equal(ptr noundef %10, ptr noundef %12) #24, !range !47
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %28

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp ne ptr %17, null
  %21 = icmp ne ptr %19, null
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %6, label %23, !llvm.loop !237

23:                                               ; preds = %15, %2
  %24 = phi ptr [ %0, %2 ], [ %17, %15 ]
  %25 = phi ptr [ %1, %2 ], [ %19, %15 ]
  %26 = icmp eq ptr %24, %25
  %27 = zext i1 %26 to i32
  br label %28

28:                                               ; preds = %6, %23
  %29 = phi i32 [ %27, %23 ], [ 0, %6 ]
  ret i32 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @merge_type_attributes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call ptr @merge_attributes(ptr noundef %4, ptr noundef %6) #24
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @merge_decl_attributes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call ptr @merge_attributes(ptr noundef %4, ptr noundef %6) #24
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @check_qualified_type(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i32
  %6 = lshr i32 %5, 20
  %7 = and i32 %6, 1
  %8 = lshr i32 %5, 18
  %9 = and i32 %8, 2
  %10 = or disjoint i32 %7, %9
  %11 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = lshr i32 %12, 11
  %14 = and i32 %13, 4
  %15 = or disjoint i32 %10, %14
  %16 = lshr i64 %4, 48
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 65280
  %19 = or disjoint i32 %15, %18
  %20 = icmp eq i32 %19, %2
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 12
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 18
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 18
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %29, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = tail call i32 @attribute_list_equal(ptr noundef %35, ptr noundef %37) #24, !range !23
  %39 = trunc i32 %38 to i8
  br label %40

40:                                               ; preds = %33, %27, %21, %3
  %41 = phi i8 [ 0, %27 ], [ 0, %21 ], [ 0, %3 ], [ %39, %33 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_qualified_type(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 20
  %6 = and i32 %5, 1
  %7 = lshr i32 %4, 18
  %8 = and i32 %7, 2
  %9 = or disjoint i32 %6, %8
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 11
  %13 = and i32 %12, 4
  %14 = or disjoint i32 %9, %13
  %15 = lshr i64 %3, 48
  %16 = trunc i64 %15 to i32
  %17 = and i32 %16, 65280
  %18 = or disjoint i32 %14, %17
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %32, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %28
  %25 = phi ptr [ %30, %28 ], [ %22, %20 ]
  %26 = tail call zeroext i8 @check_qualified_type(ptr noundef nonnull %25, ptr noundef nonnull %0, i32 noundef %1) #24, !range !76
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %24, !llvm.loop !238

32:                                               ; preds = %24, %28, %20, %2
  %33 = phi ptr [ %0, %2 ], [ null, %20 ], [ %25, %24 ], [ null, %28 ]
  ret ptr %33
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_variant_type_copy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = tail call ptr @build_distinct_type_copy(ptr noundef %0) #24
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 19
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 15
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 15
  store ptr %9, ptr %10, align 8, !tbaa !22
  store ptr %4, ptr %8, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 16
  store ptr %3, ptr %11, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @set_type_quals(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 72057594036355071
  %5 = trunc i32 %1 to i21
  %6 = and i21 %5, 3
  %7 = tail call i21 @llvm.bitreverse.i21(i21 %6)
  %8 = zext i21 %7 to i64
  %9 = or disjoint i64 %4, %8
  %10 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = shl i32 %1, 11
  %13 = and i32 %12, 8192
  %14 = and i32 %11, -8193
  %15 = or disjoint i32 %14, %13
  store i32 %15, ptr %10, align 4
  %16 = lshr i32 %1, 8
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %19 = shl nuw i64 %18, 56
  %20 = or disjoint i64 %9, %19
  store i64 %20, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_map_base_marked_p(ptr nocapture noundef readonly %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !29
  %3 = tail call i32 @ggc_marked_p(ptr noundef %2) #23
  ret i32 %3
}

; Function Attrs: optsize
declare i32 @ggc_marked_p(ptr noundef) #1

; Function Attrs: optsize
declare ptr @htab_find(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i16 @decl_fini_priority_lookup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.tree_map_base, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5621, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %1, %6
  store ptr %0, ptr %2, align 8, !tbaa !29
  %8 = load ptr, ptr @init_priority_for_decl, align 8, !tbaa !6
  %9 = call ptr @htab_find(ptr noundef %8, ptr noundef nonnull %2) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.tree_priority_map, ptr %9, i64 0, i32 2
  %13 = load i16, ptr %12, align 2, !tbaa !239
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i16 [ %13, %11 ], [ -1, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i16 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @decl_priority_info(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.tree_priority_map, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  store ptr %0, ptr %2, align 8, !tbaa !240
  %3 = load ptr, ptr @init_priority_for_decl, align 8, !tbaa !6
  %4 = call ptr @htab_find_slot(ptr noundef %3, ptr noundef nonnull %2, i32 noundef 1) #23
  %5 = load ptr, ptr %4, align 8, !tbaa !6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #23
  store ptr %8, ptr %4, align 8, !tbaa !6
  store ptr %0, ptr %8, align 8, !tbaa !240
  %9 = getelementptr inbounds %struct.tree_priority_map, ptr %8, i64 0, i32 1
  store i16 -1, ptr %9, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.tree_priority_map, ptr %8, i64 0, i32 2
  store i16 -1, ptr %10, align 2, !tbaa !239
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi ptr [ %5, %1 ], [ %8, %7 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret ptr %12
}

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @decl_fini_priority_insert(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 29
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 5672, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @decl_priority_info(ptr noundef nonnull %0) #24
  %9 = getelementptr inbounds %struct.tree_priority_map, ptr %8, i64 0, i32 2
  store i16 %1, ptr %9, align 2, !tbaa !239
  ret void
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @type_hash_lookup(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.type_hash, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  tail call void @layout_type(ptr noundef %1) #23
  %4 = zext i32 %0 to i64
  store i64 %4, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.type_hash, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !21
  %6 = load ptr, ptr @type_hash_table, align 8, !tbaa !6
  %7 = call ptr @htab_find_with_hash(ptr noundef %6, ptr noundef nonnull %3, i32 noundef %0) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.type_hash, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !21
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret ptr %13
}

; Function Attrs: optsize
declare void @layout_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @type_hash_add(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @ggc_alloc_stat(i64 noundef 16) #23
  %4 = zext i32 %0 to i64
  store i64 %4, ptr %3, align 8, !tbaa !19
  %5 = getelementptr inbounds %struct.type_hash, ptr %3, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !21
  %6 = load ptr, ptr @type_hash_table, align 8, !tbaa !6
  %7 = tail call ptr @htab_find_slot_with_hash(ptr noundef %6, ptr noundef nonnull %3, i32 noundef %0, i32 noundef 1) #23
  store ptr %3, ptr %7, align 8, !tbaa !6
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @type_num_arguments(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1, %13
  %6 = phi ptr [ %16, %13 ], [ %3, %1 ]
  %7 = phi i32 [ %14, %13 ], [ 0, %1 ]
  %8 = getelementptr inbounds %struct.tree_list, ptr %6, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 19
  br i1 %12, label %18, label %13

13:                                               ; preds = %5
  %14 = add nuw nsw i32 %7, 1
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %5, !llvm.loop !241

18:                                               ; preds = %13, %5, %1
  %19 = phi i32 [ 0, %1 ], [ %7, %5 ], [ %14, %13 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_lt(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %47, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = lshr i32 %8, 21
  %10 = and i32 %9, 1
  %11 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = lshr i32 %14, 21
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %10, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %4
  %19 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %0) #24, !range !242
  %20 = tail call i32 @tree_int_cst_sgn(ptr noundef nonnull %1) #24, !range !242
  %21 = icmp slt i32 %19, %20
  %22 = icmp eq i32 %19, %20
  br i1 %22, label %33, label %47

23:                                               ; preds = %4
  %24 = icmp eq i32 %10, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !22
  %28 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %29 = load i64, ptr %28, align 8, !tbaa !22
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %47, label %31

31:                                               ; preds = %25
  %32 = icmp eq i64 %27, %29
  br i1 %32, label %41, label %47

33:                                               ; preds = %18, %23
  %34 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !22
  %36 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !22
  %38 = icmp ult i64 %35, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = icmp eq i64 %35, %37
  br i1 %40, label %41, label %47

41:                                               ; preds = %39, %31
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %43 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !22
  %45 = load i64, ptr %42, align 8, !tbaa !22
  %46 = icmp ult i64 %44, %45
  br label %47

47:                                               ; preds = %41, %18, %33, %39, %25, %31, %2
  %48 = phi i1 [ %21, %18 ], [ false, %2 ], [ true, %25 ], [ false, %31 ], [ true, %33 ], [ false, %39 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_sgn(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !22
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2097152
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !22
  %18 = icmp slt i64 %17, 0
  %19 = select i1 %18, i32 -1, i32 1
  br label %20

20:                                               ; preds = %15, %9, %5
  %21 = phi i32 [ 0, %5 ], [ 1, %9 ], [ %19, %15 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @tree_int_cst_compare(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #8 {
  %3 = tail call i32 @tree_int_cst_lt(ptr noundef %0, ptr noundef %1) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @tree_int_cst_lt(ptr noundef %1, ptr noundef %0) #24
  %7 = icmp ne i32 %6, 0
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i32 [ -1, %2 ], [ %8, %5 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_int_cst_msb(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #23
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = and i32 %14, 255
  br label %16

16:                                               ; preds = %11, %9
  %17 = phi i32 [ %10, %9 ], [ %15, %11 ]
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !22
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 3
  %23 = add nsw i32 %22, -1
  %24 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !22
  %28 = sext i32 %23 to i64
  call void @rshift_double(i64 noundef %25, i64 noundef %27, i64 noundef %28, i32 noundef 128, ptr noundef nonnull %3, ptr noundef nonnull %2, i32 noundef 0) #23
  %29 = load i64, ptr %3, align 8, !tbaa !63
  %30 = trunc i64 %29 to i32
  %31 = and i32 %30, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i32 %31
}

; Function Attrs: optsize
declare void @rshift_double(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_int_cst_min_precision(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call i32 @tree_int_cst_sgn(ptr noundef %0) #24, !range !242
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr @fold_build1_stat_loc(i32 noundef 0, i32 noundef 90, ptr noundef %7, ptr noundef %0) #23
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi ptr [ %8, %5 ], [ %0, %2 ]
  %11 = tail call i32 @integer_zerop(ptr noundef %10) #24, !range !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = tail call i32 @tree_floor_log2(ptr noundef %10) #24
  %15 = add nsw i32 %14, 1
  br label %16

16:                                               ; preds = %9, %13
  %17 = phi i32 [ %15, %13 ], [ 1, %9 ]
  %18 = icmp eq i8 %1, 0
  %19 = zext i1 %18 to i32
  %20 = add nsw i32 %17, %19
  ret i32 %20
}

; Function Attrs: optsize
declare zeroext i8 @real_identical(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @fixed_identical(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @compare_tree_int(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #8 {
  %3 = tail call i32 @tree_int_cst_sgn(ptr noundef %0) #24, !range !242
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !22
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !22
  %12 = icmp eq i64 %11, %1
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = icmp ult i64 %11, %1
  %15 = select i1 %14, i32 -1, i32 1
  br label %16

16:                                               ; preds = %13, %9, %5, %2
  %17 = phi i32 [ -1, %2 ], [ 1, %5 ], [ 0, %9 ], [ %15, %13 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @associative_tree_code(i32 noundef %0) local_unnamed_addr #5 {
  switch i32 %0, label %2 [
    i32 87, label %3
    i32 89, label %3
    i32 88, label %3
    i32 63, label %3
    i32 65, label %3
    i32 80, label %3
    i32 81, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i8 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i8 @commutative_tree_code(i32 noundef %0) local_unnamed_addr #5 {
  switch i32 %0, label %2 [
    i32 63, label %3
    i32 65, label %3
    i32 80, label %3
    i32 81, label %3
    i32 87, label %3
    i32 88, label %3
    i32 89, label %3
    i32 102, label %3
    i32 101, label %3
    i32 103, label %3
    i32 104, label %3
    i32 109, label %3
    i32 110, label %3
    i32 93, label %3
    i32 95, label %3
    i32 94, label %3
  ]

2:                                                ; preds = %1
  br label %3

3:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %2
  %4 = phi i8 [ 0, %2 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @iterative_hash_expr(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %2
  %6 = tail call i32 @iterative_hash_hashval_t(i32 noundef 0, i32 noundef %1) #24
  br label %155

7:                                                ; preds = %2
  %8 = load i64, ptr %0, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  store i32 %10, ptr %3, align 4, !tbaa !30
  %11 = trunc i64 %8 to i16
  switch i16 %11, label %96 [
    i16 23, label %17
    i16 24, label %24
    i16 25, label %29
    i16 28, label %34
    i16 26, label %40
    i16 27, label %47
    i16 141, label %51
    i16 2, label %56
    i16 51, label %12
    i16 29, label %81
  ]

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_constructor, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %14) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %155, label %65

17:                                               ; preds = %7
  %18 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !22
  %20 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %19, i32 noundef %1) #24
  %21 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !22
  %23 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %22, i32 noundef %20) #24
  br label %155

24:                                               ; preds = %7
  %25 = getelementptr inbounds %struct.tree_real_cst, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = tail call i32 @real_hash(ptr noundef %26) #23
  %28 = tail call i32 @iterative_hash_hashval_t(i32 noundef %27, i32 noundef %1) #24
  br label %155

29:                                               ; preds = %7
  %30 = getelementptr inbounds %struct.tree_fixed_cst, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = tail call i32 @fixed_hash(ptr noundef %31) #23
  %33 = tail call i32 @iterative_hash_hashval_t(i32 noundef %32, i32 noundef %1) #24
  br label %155

34:                                               ; preds = %7
  %35 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 2
  %36 = getelementptr inbounds %struct.tree_string, ptr %0, i64 0, i32 1
  %37 = load i32, ptr %36, align 8, !tbaa !22
  %38 = sext i32 %37 to i64
  %39 = tail call i32 @iterative_hash(ptr noundef nonnull %35, i64 noundef %38, i32 noundef %1) #23
  br label %155

40:                                               ; preds = %7
  %41 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = tail call i32 @iterative_hash_expr(ptr noundef %42, i32 noundef %1) #24
  %44 = getelementptr inbounds %struct.tree_complex, ptr %0, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = tail call i32 @iterative_hash_expr(ptr noundef %45, i32 noundef %43) #24
  br label %155

47:                                               ; preds = %7
  %48 = getelementptr inbounds %struct.tree_vector, ptr %0, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = tail call i32 @iterative_hash_expr(ptr noundef %49, i32 noundef %1) #24
  br label %155

51:                                               ; preds = %7
  %52 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %53 = load i32, ptr %52, align 8, !tbaa !22
  %54 = zext i32 %53 to i64
  %55 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %54, i32 noundef %1) #24
  br label %155

56:                                               ; preds = %7, %56
  %57 = phi ptr [ %63, %56 ], [ %0, %7 ]
  %58 = phi i32 [ %61, %56 ], [ %1, %7 ]
  %59 = getelementptr inbounds %struct.tree_list, ptr %57, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = tail call i32 @iterative_hash_expr(ptr noundef %60, i32 noundef %58) #24
  %62 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = icmp eq ptr %63, null
  br i1 %64, label %155, label %56, !llvm.loop !243

65:                                               ; preds = %12, %65
  %66 = phi ptr [ %77, %65 ], [ %14, %12 ]
  %67 = phi i64 [ %76, %65 ], [ 0, %12 ]
  %68 = phi i32 [ %75, %65 ], [ %1, %12 ]
  %69 = trunc i64 %67 to i32
  %70 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %66, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct.constructor_elt_d, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = load ptr, ptr %70, align 8, !tbaa !71
  %74 = tail call i32 @iterative_hash_expr(ptr noundef %73, i32 noundef %68) #24
  %75 = tail call i32 @iterative_hash_expr(ptr noundef %72, i32 noundef %74) #24
  %76 = add nuw nsw i64 %67, 1
  %77 = load ptr, ptr %13, align 8, !tbaa !22
  %78 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %77) #24
  %79 = zext i32 %78 to i64
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %65, label %155, !llvm.loop !244

81:                                               ; preds = %7
  %82 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 5
  %83 = load i32, ptr %82, align 8
  %84 = and i32 %83, 6144
  %85 = icmp eq i32 %84, 6144
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = and i32 %83, 2047
  %88 = zext nneg i32 %87 to i64
  %89 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %88
  %90 = load ptr, ptr %89, align 8, !tbaa !6
  %91 = icmp eq ptr %90, null
  br i1 %91, label %96, label %92

92:                                               ; preds = %86
  %93 = load i64, ptr %90, align 8
  %94 = trunc i64 %93 to i32
  %95 = and i32 %94, 65535
  store i32 %95, ptr %3, align 4, !tbaa !30
  br label %96

96:                                               ; preds = %81, %86, %92, %7
  %97 = phi i32 [ %10, %7 ], [ %95, %92 ], [ %10, %86 ], [ %10, %81 ]
  %98 = phi ptr [ %0, %7 ], [ %90, %92 ], [ %0, %86 ], [ %0, %81 ]
  %99 = zext nneg i32 %97 to i64
  %100 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !30
  %102 = shl i32 %101, 24
  %103 = icmp eq i32 %102, 50331648
  br i1 %103, label %104, label %109

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.tree_decl_minimal, ptr %98, i64 0, i32 2
  %106 = load i32, ptr %105, align 4, !tbaa !22
  %107 = zext i32 %106 to i64
  %108 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %107, i32 noundef %1) #24
  br label %155

109:                                              ; preds = %96
  %110 = ashr exact i32 %102, 24
  %111 = add nsw i32 %110, -4
  %112 = icmp ult i32 %111, 7
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 6628, ptr noundef nonnull @.str.219) #23
  br label %114

114:                                              ; preds = %109, %113
  %115 = call i32 @iterative_hash(ptr noundef nonnull %3, i64 noundef 4, i32 noundef %1) #23
  %116 = load i32, ptr %3, align 4
  switch i32 %116, label %128 [
    i32 117, label %117
    i32 116, label %117
    i32 113, label %117
  ]

117:                                              ; preds = %114, %114, %114
  %118 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = lshr i32 %121, 21
  %123 = and i32 %122, 1
  %124 = add i32 %123, %115
  %125 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %126 = load ptr, ptr %125, align 8, !tbaa !22
  %127 = call i32 @iterative_hash_expr(ptr noundef %126, i32 noundef %124) #24
  br label %155

128:                                              ; preds = %114
  %129 = call zeroext i8 @commutative_tree_code(i32 noundef %116) #24, !range !76
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !22
  %134 = call i32 @iterative_hash_expr(ptr noundef %133, i32 noundef 0) #24
  %135 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !22
  %137 = call i32 @iterative_hash_expr(ptr noundef %136, i32 noundef 0) #24
  %138 = call i32 @llvm.umin.i32(i32 %134, i32 %137)
  %139 = call i32 @llvm.umax.i32(i32 %134, i32 %137)
  %140 = call i32 @iterative_hash_hashval_t(i32 noundef %138, i32 noundef %115) #24
  %141 = call i32 @iterative_hash_hashval_t(i32 noundef %139, i32 noundef %140) #24
  br label %155

142:                                              ; preds = %128
  %143 = call fastcc i32 @tree_operand_length(ptr noundef nonnull %98) #24
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = zext nneg i32 %143 to i64
  br label %147

147:                                              ; preds = %145, %147
  %148 = phi i64 [ %146, %145 ], [ %150, %147 ]
  %149 = phi i32 [ %115, %145 ], [ %153, %147 ]
  %150 = add nsw i64 %148, -1
  %151 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !22
  %153 = call i32 @iterative_hash_expr(ptr noundef %152, i32 noundef %149) #24
  %154 = icmp ugt i64 %148, 1
  br i1 %154, label %147, label %155, !llvm.loop !245

155:                                              ; preds = %65, %56, %147, %12, %142, %104, %131, %117, %51, %47, %40, %34, %29, %24, %17, %5
  %156 = phi i32 [ %6, %5 ], [ %55, %51 ], [ %50, %47 ], [ %46, %40 ], [ %39, %34 ], [ %33, %29 ], [ %28, %24 ], [ %23, %17 ], [ %108, %104 ], [ %127, %117 ], [ %141, %131 ], [ %115, %142 ], [ %1, %12 ], [ %153, %147 ], [ %61, %56 ], [ %75, %65 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret i32 %156
}

; Function Attrs: optsize
declare i32 @real_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @fixed_hash(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @iterative_hash_exprs_commutative(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @iterative_hash_expr(ptr noundef %0, i32 noundef 0) #24
  %5 = tail call i32 @iterative_hash_expr(ptr noundef %1, i32 noundef 0) #24
  %6 = tail call i32 @llvm.umin.i32(i32 %4, i32 %5)
  %7 = tail call i32 @llvm.umax.i32(i32 %4, i32 %5)
  %8 = tail call i32 @iterative_hash_hashval_t(i32 noundef %6, i32 noundef %2) #24
  %9 = tail call i32 @iterative_hash_hashval_t(i32 noundef %7, i32 noundef %8) #24
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_pointer_type_for_mode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.224, ptr noundef %8) #24
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i8 %2, i8 1
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %6
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 10
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = zext i8 %11 to i32
  br label %21

21:                                               ; preds = %19, %42
  %22 = phi ptr [ %13, %19 ], [ %44, %42 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #23
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, ptr %22, align 8
  %38 = trunc i64 %37 to i32
  %39 = lshr i32 %38, 26
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, %20
  br i1 %41, label %74, label %42

42:                                               ; preds = %33, %36
  %43 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %21, !llvm.loop !246

46:                                               ; preds = %42, %6
  %47 = tail call ptr @make_node_stat(i32 noundef 10) #24
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  store ptr %0, ptr %48, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %1, 16
  %52 = and i32 %51, 16711680
  %53 = and i32 %50, -16711681
  %54 = or disjoint i32 %53, %52
  store i32 %54, ptr %49, align 4
  %55 = load i64, ptr %47, align 8
  %56 = and i8 %11, 1
  %57 = zext nneg i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 26
  %59 = and i64 %55, -67108865
  %60 = or disjoint i64 %59, %58
  store i64 %60, ptr %47, align 8
  %61 = load ptr, ptr %12, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 13
  store ptr %61, ptr %62, align 8, !tbaa !22
  store ptr %47, ptr %12, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %46
  %67 = icmp eq ptr %64, %0
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = tail call ptr @build_pointer_type_for_mode(ptr noundef nonnull %64, i32 noundef %1, i8 noundef zeroext %11) #24
  br label %70

70:                                               ; preds = %46, %68
  %71 = phi ptr [ %69, %68 ], [ null, %46 ]
  %72 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 19
  store ptr %71, ptr %72, align 8, !tbaa !22
  br label %73

73:                                               ; preds = %70, %66
  tail call void @layout_type(ptr noundef nonnull %47) #23
  br label %74

74:                                               ; preds = %36, %15, %3, %73
  %75 = phi ptr [ %47, %73 ], [ %0, %3 ], [ %13, %15 ], [ %22, %36 ]
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_pointer_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !247
  %11 = tail call i32 %10(i8 noundef zeroext %9) #23
  %12 = tail call ptr @build_pointer_type_for_mode(ptr noundef %0, i32 noundef %11, i8 noundef zeroext 0) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_reference_type_for_mode(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %5 = icmp eq ptr %4, %0
  br i1 %5, label %74, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.224, ptr noundef %8) #24
  %10 = icmp eq ptr %9, null
  %11 = select i1 %10, i8 %2, i8 1
  %12 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 10
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %6
  %16 = load i64, ptr %13, align 8
  %17 = and i64 %16, 65535
  %18 = icmp eq i64 %17, 12
  br i1 %18, label %19, label %74

19:                                               ; preds = %15
  %20 = zext i8 %11 to i32
  br label %21

21:                                               ; preds = %19, %42
  %22 = phi ptr [ %13, %19 ], [ %44, %42 ]
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 14
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = tail call i32 @vector_type_mode(ptr noundef nonnull %22) #23
  br label %33

28:                                               ; preds = %21
  %29 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 6
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  br label %33

33:                                               ; preds = %28, %26
  %34 = phi i32 [ %27, %26 ], [ %32, %28 ]
  %35 = icmp eq i32 %34, %1
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i64, ptr %22, align 8
  %38 = trunc i64 %37 to i32
  %39 = lshr i32 %38, 26
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, %20
  br i1 %41, label %74, label %42

42:                                               ; preds = %33, %36
  %43 = getelementptr inbounds %struct.tree_type, ptr %22, i64 0, i32 13
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %21, !llvm.loop !248

46:                                               ; preds = %42, %6
  %47 = tail call ptr @make_node_stat(i32 noundef 12) #24
  %48 = getelementptr inbounds %struct.tree_common, ptr %47, i64 0, i32 2
  store ptr %0, ptr %48, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 6
  %50 = load i32, ptr %49, align 4
  %51 = shl i32 %1, 16
  %52 = and i32 %51, 16711680
  %53 = and i32 %50, -16711681
  %54 = or disjoint i32 %53, %52
  store i32 %54, ptr %49, align 4
  %55 = load i64, ptr %47, align 8
  %56 = and i8 %11, 1
  %57 = zext nneg i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 26
  %59 = and i64 %55, -67108865
  %60 = or disjoint i64 %59, %58
  store i64 %60, ptr %47, align 8
  %61 = load ptr, ptr %12, align 8, !tbaa !22
  %62 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 13
  store ptr %61, ptr %62, align 8, !tbaa !22
  store ptr %47, ptr %12, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %46
  %67 = icmp eq ptr %64, %0
  br i1 %67, label %73, label %68

68:                                               ; preds = %66
  %69 = tail call ptr @build_reference_type_for_mode(ptr noundef nonnull %64, i32 noundef %1, i8 noundef zeroext %11) #24
  br label %70

70:                                               ; preds = %46, %68
  %71 = phi ptr [ %69, %68 ], [ null, %46 ]
  %72 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 19
  store ptr %71, ptr %72, align 8, !tbaa !22
  br label %73

73:                                               ; preds = %70, %66
  tail call void @layout_type(ptr noundef nonnull %47) #23
  br label %74

74:                                               ; preds = %36, %15, %3, %73
  %75 = phi ptr [ %47, %73 ], [ %0, %3 ], [ %13, %15 ], [ %22, %36 ]
  ret ptr %75
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_reference_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = lshr i64 %5, 56
  %7 = trunc i64 %6 to i8
  br label %8

8:                                                ; preds = %1, %4
  %9 = phi i8 [ %7, %4 ], [ 0, %1 ]
  %10 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 57), align 8, !tbaa !247
  %11 = tail call i32 %10(i8 noundef zeroext %9) #23
  %12 = tail call ptr @build_reference_type_for_mode(ptr noundef %0, i32 noundef %11, i8 noundef zeroext 0) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_type_no_quals(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %50 [
    i16 10, label %4
    i16 12, label %27
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call ptr @build_type_no_quals(ptr noundef %6) #24
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 14
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  %13 = load i64, ptr %0, align 8
  br label %19

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i64 [ %13, %11 ], [ %8, %14 ]
  %21 = phi i32 [ %12, %11 ], [ %18, %14 ]
  %22 = trunc i64 %20 to i32
  %23 = lshr i32 %22, 26
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = tail call ptr @build_pointer_type_for_mode(ptr noundef %7, i32 noundef %21, i8 noundef zeroext %25) #24
  br label %53

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = tail call ptr @build_type_no_quals(ptr noundef %29) #24
  %31 = load i64, ptr %0, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 14
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  %36 = load i64, ptr %0, align 8
  br label %42

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 16
  %41 = and i32 %40, 255
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i64 [ %36, %34 ], [ %31, %37 ]
  %44 = phi i32 [ %35, %34 ], [ %41, %37 ]
  %45 = trunc i64 %43 to i32
  %46 = lshr i32 %45, 26
  %47 = trunc i32 %46 to i8
  %48 = and i8 %47, 1
  %49 = tail call ptr @build_reference_type_for_mode(ptr noundef %30, i32 noundef %44, i8 noundef zeroext %48) #24
  br label %53

50:                                               ; preds = %1
  %51 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  br label %53

53:                                               ; preds = %50, %42, %19
  %54 = phi ptr [ %52, %50 ], [ %49, %42 ], [ %26, %19 ]
  ret ptr %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_index_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @make_node_stat(i32 noundef 8) #24
  %3 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1023
  %8 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -1024
  %11 = or disjoint i32 %10, %7
  store i32 %11, ptr %8, align 4
  %12 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 13
  store ptr %12, ptr %13, align 8, !tbaa !22
  %14 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %3, ptr noundef %0) #23
  %15 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 14
  store ptr %14, ptr %15, align 8, !tbaa !22
  %16 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 65535
  %19 = icmp eq i64 %18, 14
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = tail call i32 @vector_type_mode(ptr noundef nonnull %16) #23
  %22 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  br label %27

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi ptr [ %22, %20 ], [ %16, %23 ]
  %29 = phi i32 [ %21, %20 ], [ %26, %23 ]
  %30 = load i32, ptr %8, align 4
  %31 = shl i32 %29, 16
  %32 = and i32 %31, 16711680
  %33 = and i32 %30, -16711681
  %34 = or disjoint i32 %33, %32
  store i32 %34, ptr %8, align 4
  %35 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 2
  store ptr %36, ptr %37, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 3
  store ptr %39, ptr %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.tree_type, ptr %28, i64 0, i32 7
  %42 = load i32, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 7
  store i32 %42, ptr %43, align 8, !tbaa !22
  %44 = load i64, ptr %28, align 8
  %45 = and i64 %44, 4398046511104
  %46 = load i64, ptr %2, align 8
  %47 = and i64 %46, -4398046511105
  %48 = or disjoint i64 %47, %45
  store i64 %48, ptr %2, align 8
  %49 = tail call i32 @host_integerp(ptr noundef %0, i32 noundef 1) #24, !range !23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %27
  %52 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 1) #24
  %53 = trunc i64 %52 to i32
  %54 = tail call ptr @type_hash_canon(i32 noundef %53, ptr noundef nonnull %2) #24
  br label %57

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.tree_type, ptr %2, i64 0, i32 19
  store ptr null, ptr %56, align 8, !tbaa !22
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %54, %51 ], [ %2, %55 ]
  ret ptr %58
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_nonstandard_integer_type(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 8) #24
  %4 = trunc i64 %0 to i32
  %5 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %4, 1023
  %8 = and i32 %6, -1024
  %9 = or disjoint i32 %8, %7
  store i32 %9, ptr %5, align 4
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  tail call void @fixup_unsigned_type(ptr noundef nonnull %3) #23
  br label %13

12:                                               ; preds = %2
  tail call void @fixup_signed_type(ptr noundef nonnull %3) #23
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = tail call i32 @host_integerp(ptr noundef %15, i32 noundef 1) #24, !range !23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call i64 @tree_low_cst(ptr noundef %15, i32 noundef 1) #24
  %20 = trunc i64 %19 to i32
  %21 = tail call ptr @type_hash_canon(i32 noundef %20, ptr noundef nonnull %3) #24
  br label %22

22:                                               ; preds = %13, %18
  %23 = phi ptr [ %21, %18 ], [ %3, %13 ]
  ret ptr %23
}

; Function Attrs: optsize
declare void @fixup_unsigned_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fixup_signed_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_range_type(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call ptr @make_node_stat(i32 noundef 8) #24
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  store ptr %0, ptr %5, align 8, !tbaa !22
  %6 = icmp eq ptr %0, null
  %7 = load ptr, ptr @sizetype_tab, align 16
  %8 = select i1 %6, ptr %7, ptr %0
  %9 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef %1) #23
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 13
  store ptr %9, ptr %10, align 8, !tbaa !22
  %11 = icmp ne ptr %2, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef %8, ptr noundef nonnull %2) #23
  br label %14

14:                                               ; preds = %3, %12
  %15 = phi ptr [ %13, %12 ], [ null, %3 ]
  %16 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 14
  store ptr %15, ptr %16, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1023
  %20 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, -1024
  %23 = or disjoint i32 %22, %19
  store i32 %23, ptr %20, align 4
  %24 = load i64, ptr %8, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 14
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = tail call i32 @vector_type_mode(ptr noundef nonnull %8) #23
  %29 = load i32, ptr %20, align 4
  br label %33

30:                                               ; preds = %14
  %31 = load i32, ptr %17, align 4
  %32 = lshr i32 %31, 16
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %23, %30 ]
  %35 = phi i32 [ %28, %27 ], [ %32, %30 ]
  %36 = shl i32 %35, 16
  %37 = and i32 %36, 16711680
  %38 = and i32 %34, -16711681
  %39 = or disjoint i32 %38, %37
  store i32 %39, ptr %20, align 4
  %40 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 2
  store ptr %41, ptr %42, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 3
  store ptr %44, ptr %45, align 8, !tbaa !22
  %46 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 7
  %47 = load i32, ptr %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 7
  store i32 %47, ptr %48, align 8, !tbaa !22
  %49 = load i64, ptr %8, align 8
  %50 = and i64 %49, 4398046511104
  %51 = load i64, ptr %4, align 8
  %52 = and i64 %51, -4398046511105
  %53 = or disjoint i64 %52, %50
  store i64 %53, ptr %4, align 8
  %54 = tail call i32 @host_integerp(ptr noundef %1, i32 noundef 0) #24, !range !23
  %55 = icmp ne i32 %54, 0
  %56 = and i1 %11, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %33
  %58 = tail call i32 @host_integerp(ptr noundef nonnull %2, i32 noundef 0) #24, !range !23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = tail call i64 @tree_low_cst(ptr noundef nonnull %2, i32 noundef 0) #24
  %62 = tail call i64 @tree_low_cst(ptr noundef %1, i32 noundef 0) #24
  %63 = sub nsw i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = tail call ptr @type_hash_canon(i32 noundef %64, ptr noundef nonnull %4) #24
  br label %66

66:                                               ; preds = %33, %57, %60
  %67 = phi ptr [ %65, %60 ], [ %4, %57 ], [ %4, %33 ]
  ret ptr %67
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @subrange_type_for_debug_p(ptr noundef %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = and i32 %9, 65535
  %11 = add nsw i32 %10, -6
  %12 = icmp ult i32 %11, 3
  br i1 %12, label %13, label %79

13:                                               ; preds = %3
  %14 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 13), align 8, !tbaa !249
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  call void %14(ptr noundef nonnull %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %17 = load i64, ptr %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = and i32 %18, 65535
  br label %25

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  store ptr %22, ptr %4, align 8, !tbaa !6
  %23 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  store ptr %24, ptr %5, align 8, !tbaa !6
  br label %25

25:                                               ; preds = %20, %16
  %26 = phi i32 [ %10, %20 ], [ %19, %16 ]
  %27 = add nsw i32 %26, -7
  %28 = icmp ult i32 %27, 2
  br i1 %28, label %29, label %71

29:                                               ; preds = %25
  %30 = call i64 @int_size_in_bytes(ptr noundef nonnull %0) #24, !range !250
  %31 = call i64 @int_size_in_bytes(ptr noundef nonnull %7) #24, !range !250
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %71

33:                                               ; preds = %29
  %34 = load ptr, ptr %4, align 8, !tbaa !6
  %35 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 13
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = call i32 @tree_int_cst_equal(ptr noundef %34, ptr noundef %36) #24, !range !23
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %71, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %5, align 8, !tbaa !6
  %41 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 14
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = call i32 @tree_int_cst_equal(ptr noundef %40, ptr noundef %42) #24, !range !23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 12
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 12
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = icmp eq ptr %47, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %45
  %52 = load i64, ptr %47, align 8
  %53 = and i64 %52, 65535
  %54 = icmp eq i64 %53, 35
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.tree_decl_minimal, ptr %47, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  br label %58

58:                                               ; preds = %55, %51, %45
  %59 = phi ptr [ %57, %55 ], [ %47, %51 ], [ null, %45 ]
  %60 = icmp eq ptr %49, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i64, ptr %49, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 35
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.tree_decl_minimal, ptr %49, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  br label %68

68:                                               ; preds = %65, %61, %58
  %69 = phi ptr [ %67, %65 ], [ %49, %61 ], [ null, %58 ]
  %70 = icmp eq ptr %59, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %25, %68, %39, %33, %29
  %72 = icmp eq ptr %1, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %71
  %74 = load ptr, ptr %4, align 8, !tbaa !6
  store ptr %74, ptr %1, align 8, !tbaa !6
  br label %75

75:                                               ; preds = %73, %71
  %76 = icmp eq ptr %2, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %75
  %78 = load ptr, ptr %5, align 8, !tbaa !6
  store ptr %78, ptr %2, align 8, !tbaa !6
  br label %79

79:                                               ; preds = %3, %75, %77, %68
  %80 = phi i8 [ 0, %68 ], [ 0, %3 ], [ 1, %77 ], [ 1, %75 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret i8 %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_index_2_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @sizetype_tab, align 16, !tbaa !6
  %4 = tail call ptr @build_range_type(ptr noundef %3, ptr noundef %0, ptr noundef %1) #24
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_array_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 20
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.225) #23
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  br label %8

8:                                                ; preds = %6, %2
  %9 = phi ptr [ %7, %6 ], [ %0, %2 ]
  %10 = tail call ptr @make_node_stat(i32 noundef 15) #24
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  store ptr %9, ptr %11, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 1
  store ptr %1, ptr %12, align 8, !tbaa !22
  %13 = load i64, ptr %9, align 8
  %14 = and i64 %13, -72057594037927936
  %15 = load i64, ptr %10, align 8
  %16 = and i64 %15, 72057594037927935
  %17 = or disjoint i64 %16, %14
  store i64 %17, ptr %10, align 8
  tail call void @layout_type(ptr noundef nonnull %10) #23
  %18 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %51, label %21

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 5
  %23 = tail call i32 @iterative_hash(ptr noundef nonnull %22, i64 noundef 4, i32 noundef 0) #23
  %24 = icmp eq ptr %1, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %27 = tail call i32 @iterative_hash(ptr noundef nonnull %26, i64 noundef 4, i32 noundef %23) #23
  br label %28

28:                                               ; preds = %25, %21
  %29 = phi i32 [ %27, %25 ], [ %23, %21 ]
  %30 = tail call ptr @type_hash_canon(i32 noundef %29, ptr noundef nonnull %10) #24
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %49, label %38

38:                                               ; preds = %34
  br i1 %24, label %43, label %39

39:                                               ; preds = %38
  %40 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %45

43:                                               ; preds = %38
  %44 = icmp eq ptr %36, %9
  br i1 %44, label %51, label %53

45:                                               ; preds = %39
  %46 = icmp eq ptr %36, %9
  %47 = icmp eq ptr %41, %1
  %48 = and i1 %46, %47
  br i1 %48, label %51, label %53

49:                                               ; preds = %34, %39, %53
  %50 = phi ptr [ %55, %53 ], [ null, %39 ], [ null, %34 ]
  store ptr %50, ptr %31, align 8, !tbaa !22
  br label %51

51:                                               ; preds = %49, %45, %8, %28, %43
  %52 = phi ptr [ %10, %8 ], [ %30, %28 ], [ %30, %43 ], [ %30, %45 ], [ %30, %49 ]
  ret ptr %52

53:                                               ; preds = %45, %43
  %54 = phi ptr [ null, %43 ], [ %41, %45 ]
  %55 = tail call ptr @build_array_type(ptr noundef nonnull %36, ptr noundef %54) #24
  br label %49
}

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @strip_array_types(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 15
  br i1 %4, label %5, label %12

5:                                                ; preds = %1, %5
  %6 = phi ptr [ %8, %5 ], [ %0, %1 ]
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 15
  br i1 %11, label %5, label %12, !llvm.loop !251

12:                                               ; preds = %5, %1
  %13 = phi ptr [ %0, %1 ], [ %8, %5 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_function_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 20
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.226) #23
  %9 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %0, %2 ]
  %12 = tail call ptr @make_node_stat(i32 noundef 20) #24
  %13 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  store ptr %11, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !22
  %15 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 5
  %16 = tail call i32 @iterative_hash(ptr noundef nonnull %15, i64 noundef 4, i32 noundef 0) #23
  %17 = tail call fastcc i32 @type_hash_list(ptr noundef %1, i32 noundef %16) #24
  %18 = tail call ptr @type_hash_canon(i32 noundef %17, ptr noundef %12) #24
  %19 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 19
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  %22 = zext i1 %21 to i8
  store i8 %22, ptr %3, align 1, !tbaa !22
  %23 = icmp ne ptr %20, %11
  %24 = zext i1 %23 to i8
  store i8 %24, ptr %4, align 1, !tbaa !22
  %25 = call fastcc ptr @maybe_canonicalize_argtypes(ptr noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %26 = load i8, ptr %3, align 1, !tbaa !22
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %10
  %29 = load i8, ptr %4, align 1, !tbaa !22
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load ptr, ptr %19, align 8, !tbaa !22
  %33 = tail call ptr @build_function_type(ptr noundef %32, ptr noundef %25) #24
  br label %34

34:                                               ; preds = %10, %31
  %35 = phi ptr [ %33, %31 ], [ null, %10 ]
  %36 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 19
  store ptr %35, ptr %36, align 8, !tbaa !22
  br label %37

37:                                               ; preds = %34, %28
  %38 = getelementptr inbounds %struct.tree_type, ptr %18, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  tail call void @layout_type(ptr noundef nonnull %18) #23
  br label %42

42:                                               ; preds = %41, %37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #25
  ret ptr %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @maybe_canonicalize_argtypes(ptr noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %79, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !22
  br label %7

7:                                                ; preds = %5, %33
  %8 = phi i8 [ %34, %33 ], [ %6, %5 ]
  %9 = phi i8 [ %35, %33 ], [ %6, %5 ]
  %10 = phi i8 [ %36, %33 ], [ 0, %5 ]
  %11 = phi ptr [ %38, %33 ], [ %0, %5 ]
  %12 = icmp eq i8 %9, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  %17 = load ptr, ptr @global_trees, align 16
  %18 = icmp eq ptr %15, %17
  %19 = select i1 %16, i1 true, i1 %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i8 1, ptr %1, align 1, !tbaa !22
  br label %33

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.tree_type, ptr %15, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i8 1, ptr %1, align 1, !tbaa !22
  br label %33

26:                                               ; preds = %21
  %27 = icmp eq ptr %23, %15
  br i1 %27, label %28, label %32

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.tree_list, ptr %11, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %28, %26
  br label %33

33:                                               ; preds = %20, %28, %32, %25
  %34 = phi i8 [ 1, %20 ], [ 1, %25 ], [ %8, %32 ], [ %8, %28 ]
  %35 = phi i8 [ 1, %20 ], [ 1, %25 ], [ 0, %32 ], [ 0, %28 ]
  %36 = phi i8 [ %10, %20 ], [ %10, %25 ], [ 1, %32 ], [ %10, %28 ]
  %37 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %7, !llvm.loop !252

40:                                               ; preds = %7, %33
  %41 = phi i8 [ %8, %7 ], [ %34, %33 ]
  %42 = phi i8 [ %10, %7 ], [ %36, %33 ]
  %43 = icmp eq i8 %42, 0
  %44 = icmp ne i8 %41, 0
  %45 = select i1 %44, i1 true, i1 %43
  br i1 %45, label %79, label %46

46:                                               ; preds = %40
  br i1 %4, label %47, label %49

47:                                               ; preds = %46
  %48 = tail call ptr @nreverse(ptr noundef null) #24
  br label %77

49:                                               ; preds = %46
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  br label %51

51:                                               ; preds = %49, %64
  %52 = phi ptr [ %65, %64 ], [ %50, %49 ]
  %53 = phi i8 [ %67, %64 ], [ 0, %49 ]
  %54 = phi ptr [ %66, %64 ], [ null, %49 ]
  %55 = phi ptr [ %69, %64 ], [ %0, %49 ]
  %56 = icmp eq ptr %55, %52
  br i1 %56, label %64, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 19
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %61, ptr noundef %54) #24
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  br label %64

64:                                               ; preds = %51, %57
  %65 = phi ptr [ %63, %57 ], [ %52, %51 ]
  %66 = phi ptr [ %62, %57 ], [ %54, %51 ]
  %67 = phi i8 [ %53, %57 ], [ 1, %51 ]
  %68 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %51, !llvm.loop !253

71:                                               ; preds = %64
  %72 = icmp eq i8 %67, 0
  %73 = tail call ptr @nreverse(ptr noundef %66) #24
  br i1 %72, label %77, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %76 = tail call ptr @chainon(ptr noundef %73, ptr noundef %75) #24
  br label %77

77:                                               ; preds = %47, %74, %71
  %78 = phi ptr [ %76, %74 ], [ %73, %71 ], [ %48, %47 ]
  store i8 1, ptr %2, align 1, !tbaa !22
  br label %79

79:                                               ; preds = %3, %40, %77
  %80 = phi ptr [ %78, %77 ], [ %0, %40 ], [ null, %3 ]
  ret ptr %80
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_function_type_skip_args(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp ne ptr %4, null
  %6 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %7 = icmp ne ptr %4, %6
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %28

9:                                                ; preds = %2, %19
  %10 = phi ptr [ %23, %19 ], [ %4, %2 ]
  %11 = phi i32 [ %22, %19 ], [ 0, %2 ]
  %12 = phi ptr [ %20, %19 ], [ null, %2 ]
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef %11) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.tree_list, ptr %10, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  %18 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %17, ptr noundef %12) #24
  br label %19

19:                                               ; preds = %9, %15
  %20 = phi ptr [ %12, %9 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 1
  %22 = add nuw nsw i32 %11, 1
  %23 = load ptr, ptr %21, align 8, !tbaa !22
  %24 = icmp ne ptr %23, null
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %26 = icmp ne ptr %23, %25
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %9, label %28, !llvm.loop !254

28:                                               ; preds = %19, %2
  %29 = phi ptr [ null, %2 ], [ %20, %19 ]
  %30 = phi i1 [ %5, %2 ], [ %24, %19 ]
  %31 = tail call ptr @nreverse(ptr noundef %29) #24
  br i1 %30, label %32, label %37

32:                                               ; preds = %28
  %33 = icmp eq ptr %31, null
  %34 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  br i1 %33, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 1
  store ptr %34, ptr %36, align 8, !tbaa !22
  br label %37

37:                                               ; preds = %32, %35, %28
  %38 = phi ptr [ %31, %35 ], [ %31, %28 ], [ %34, %32 ]
  %39 = load i64, ptr %0, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 21
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 0) #23
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42, %37
  %46 = tail call ptr @copy_node_stat(ptr noundef nonnull %0) #24
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 1
  store ptr %38, ptr %47, align 8, !tbaa !22
  br label %56

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = tail call ptr @build_function_type(ptr noundef %50, ptr noundef %38) #24
  %52 = tail call ptr @build_distinct_type_copy(ptr noundef %51) #24
  %53 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 18
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = getelementptr inbounds %struct.tree_type, ptr %52, i64 0, i32 18
  store ptr %54, ptr %55, align 8, !tbaa !22
  br label %56

56:                                               ; preds = %48, %45
  %57 = phi ptr [ %46, %45 ], [ %52, %48 ]
  %58 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = icmp eq ptr %59, %0
  %61 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 16
  br i1 %60, label %66, label %62

62:                                               ; preds = %56
  store ptr %59, ptr %61, align 8, !tbaa !22
  %63 = getelementptr inbounds %struct.tree_type, ptr %59, i64 0, i32 15
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 15
  store ptr %64, ptr %65, align 8, !tbaa !22
  store ptr %57, ptr %63, align 8, !tbaa !22
  br label %68

66:                                               ; preds = %56
  store ptr %57, ptr %61, align 8, !tbaa !22
  %67 = getelementptr inbounds %struct.tree_type, ptr %57, i64 0, i32 15
  store ptr null, ptr %67, align 8, !tbaa !22
  br label %68

68:                                               ; preds = %66, %62
  ret ptr %57
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_function_decl_skip_args(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @copy_node_stat(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = tail call zeroext i8 @prototype_p(ptr noundef %5) #24, !range !76
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call ptr @build_function_type_skip_args(ptr noundef %5, ptr noundef %1) #24
  br label %10

10:                                               ; preds = %8, %2
  %11 = phi ptr [ %9, %8 ], [ %5, %2 ]
  %12 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !22
  %13 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.tree_decl_non_common, ptr %3, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %15, %10
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @prototype_p(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 10398, ptr noundef nonnull @.str.219) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp ne ptr %6, null
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_function_type_list(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call fastcc ptr @build_function_type_list_1(i8 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull %2) #24
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @build_function_type_list_1(i8 noundef zeroext %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = load i32, ptr %2, align 8
  %5 = icmp ult i32 %4, 41
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = zext nneg i32 %4 to i64
  %10 = getelementptr i8, ptr %8, i64 %9
  %11 = add nuw nsw i32 %4, 8
  store i32 %11, ptr %2, align 8
  br label %16

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr i8, ptr %14, i64 8
  store ptr %15, ptr %13, align 8
  br label %16

16:                                               ; preds = %12, %6
  %17 = phi ptr [ %10, %6 ], [ %14, %12 ]
  %18 = load ptr, ptr %17, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 2
  %22 = getelementptr inbounds %struct.__va_list_tag, ptr %2, i64 0, i32 3
  br label %23

23:                                               ; preds = %20, %37
  %24 = phi ptr [ %18, %20 ], [ %39, %37 ]
  %25 = phi ptr [ null, %20 ], [ %26, %37 ]
  %26 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef nonnull %24, ptr noundef %25) #24
  %27 = load i32, ptr %2, align 8
  %28 = icmp ult i32 %27, 41
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %22, align 8
  %31 = zext nneg i32 %27 to i64
  %32 = getelementptr i8, ptr %30, i64 %31
  %33 = add nuw nsw i32 %27, 8
  store i32 %33, ptr %2, align 8
  br label %37

34:                                               ; preds = %23
  %35 = load ptr, ptr %21, align 8
  %36 = getelementptr i8, ptr %35, i64 8
  store ptr %36, ptr %21, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = phi ptr [ %32, %29 ], [ %35, %34 ]
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %23, !llvm.loop !255

41:                                               ; preds = %37
  %42 = icmp eq i8 %0, 0
  %43 = icmp eq ptr %26, null
  br i1 %42, label %55, label %46

44:                                               ; preds = %16
  %45 = icmp eq i8 %0, 0
  br i1 %45, label %56, label %53

46:                                               ; preds = %41
  br i1 %43, label %53, label %47

47:                                               ; preds = %46
  %48 = tail call ptr @nreverse(ptr noundef nonnull %26) #24
  %49 = icmp eq ptr %48, null
  %50 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8
  %51 = icmp eq ptr %26, %50
  %52 = select i1 %49, i1 true, i1 %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %44, %46, %47
  %54 = phi ptr [ %48, %47 ], [ null, %46 ], [ null, %44 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 7286, ptr noundef nonnull @.str.219) #23
  br label %62

55:                                               ; preds = %41
  br i1 %43, label %56, label %58

56:                                               ; preds = %44, %55
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  br label %62

58:                                               ; preds = %55
  %59 = tail call ptr @nreverse(ptr noundef nonnull %26) #24
  %60 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %61 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !22
  br label %62

62:                                               ; preds = %47, %56, %58, %53
  %63 = phi ptr [ %54, %53 ], [ %57, %56 ], [ %59, %58 ], [ %48, %47 ]
  %64 = tail call ptr @build_function_type(ptr noundef %1, ptr noundef %63) #24
  ret ptr %64
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_varargs_function_type_list(ptr noundef %0, ...) local_unnamed_addr #0 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.va_start(ptr nonnull %2)
  %3 = call fastcc ptr @build_function_type_list_1(i8 noundef zeroext 1, ptr noundef %0, ptr noundef nonnull %2) #24
  call void @llvm.va_end(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_method_type_directly(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #25
  %6 = tail call ptr @make_node_stat(i32 noundef 21) #24
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 14
  store ptr %8, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  store ptr %1, ptr %10, align 8, !tbaa !22
  %11 = tail call ptr @build_pointer_type(ptr noundef %0) #24
  %12 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %11, ptr noundef %2) #24
  %13 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 1
  store ptr %12, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %15 = tail call i32 @iterative_hash(ptr noundef nonnull %14, i64 noundef 4, i32 noundef 0) #23
  %16 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %17 = tail call i32 @iterative_hash(ptr noundef nonnull %16, i64 noundef 4, i32 noundef %15) #23
  %18 = tail call fastcc i32 @type_hash_list(ptr noundef %12, i32 noundef %17) #24
  %19 = tail call ptr @type_hash_canon(i32 noundef %18, ptr noundef %6) #24
  %20 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %23, %3
  %29 = phi i8 [ 1, %3 ], [ %27, %23 ]
  store i8 %29, ptr %4, align 1, !tbaa !22
  %30 = icmp eq ptr %21, %0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp ne ptr %33, %1
  %35 = zext i1 %34 to i8
  br label %36

36:                                               ; preds = %31, %28
  %37 = phi i8 [ 1, %28 ], [ %35, %31 ]
  store i8 %37, ptr %5, align 1, !tbaa !22
  %38 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = call fastcc ptr @maybe_canonicalize_argtypes(ptr noundef %39, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %41 = load i8, ptr %4, align 1, !tbaa !22
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load i8, ptr %5, align 1, !tbaa !22
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %20, align 8, !tbaa !22
  %48 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = tail call ptr @build_method_type_directly(ptr noundef %47, ptr noundef %49, ptr noundef %40) #24
  br label %51

51:                                               ; preds = %36, %46
  %52 = phi ptr [ %50, %46 ], [ null, %36 ]
  %53 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 19
  store ptr %52, ptr %53, align 8, !tbaa !22
  br label %54

54:                                               ; preds = %51, %43
  %55 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  tail call void @layout_type(ptr noundef nonnull %19) #23
  br label %59

59:                                               ; preds = %58, %54
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #25
  ret ptr %19
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_method_type(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 20
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 7401, ptr noundef nonnull @.str.219) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = tail call ptr @build_method_type_directly(ptr noundef %0, ptr noundef %9, ptr noundef %11) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_offset_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 5) #24
  %4 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 14
  store ptr %5, ptr %6, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 5
  %9 = tail call i32 @iterative_hash(ptr noundef nonnull %8, i64 noundef 4, i32 noundef 0) #23
  %10 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 5
  %11 = tail call i32 @iterative_hash(ptr noundef nonnull %10, i64 noundef 4, i32 noundef %9) #23
  %12 = tail call ptr @type_hash_canon(i32 noundef %11, ptr noundef %3) #24
  %13 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  tail call void @layout_type(ptr noundef nonnull %12) #23
  br label %17

17:                                               ; preds = %16, %2
  %18 = getelementptr inbounds %struct.tree_type, ptr %12, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, %12
  br i1 %20, label %21, label %38

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 19
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %4, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 19
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, %0
  %34 = icmp eq ptr %27, %1
  %35 = and i1 %34, %33
  br i1 %35, label %38, label %39

36:                                               ; preds = %21, %25, %39
  %37 = phi ptr [ %40, %39 ], [ null, %25 ], [ null, %21 ]
  store ptr %37, ptr %18, align 8, !tbaa !22
  br label %38

38:                                               ; preds = %36, %17, %29
  ret ptr %12

39:                                               ; preds = %29
  %40 = tail call ptr @build_offset_type(ptr noundef %32, ptr noundef nonnull %27) #24
  br label %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @excess_precision_type(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @flag_excess_precision, align 4, !tbaa !30
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %159, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr @ix86_fpmath, align 4, !tbaa !30
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 3
  %8 = and i32 %5, 2
  %9 = xor i32 %8, 2
  %10 = select i1 %7, i32 -1, i32 %9
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %159 [
    i16 9, label %13
    i16 13, label %81
  ]

13:                                               ; preds = %4
  switch i32 %10, label %157 [
    i32 1, label %14
    i32 2, label %34
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = lshr i32 %16, 16
  %18 = and i32 %17, 255
  %19 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 14
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call i32 @vector_type_mode(ptr noundef nonnull %19) #23
  br label %30

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %27 = load i32, ptr %26, align 4
  %28 = lshr i32 %27, 16
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %25, %23
  %31 = phi i32 [ %24, %23 ], [ %29, %25 ]
  %32 = icmp eq i32 %18, %31
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16
  br i1 %32, label %160, label %159

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = lshr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 65535
  %42 = icmp eq i64 %41, 14
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = tail call i32 @vector_type_mode(ptr noundef nonnull %39) #23
  br label %50

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = lshr i32 %47, 16
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %45, %43
  %51 = phi i32 [ %44, %43 ], [ %49, %45 ]
  %52 = icmp eq i32 %38, %51
  br i1 %52, label %79, label %53

53:                                               ; preds = %50
  %54 = load i64, ptr %0, align 8
  %55 = and i64 %54, 65535
  %56 = icmp eq i64 %55, 14
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  br label %63

59:                                               ; preds = %53
  %60 = load i32, ptr %35, align 4
  %61 = lshr i32 %60, 16
  %62 = and i32 %61, 255
  br label %63

63:                                               ; preds = %59, %57
  %64 = phi i32 [ %58, %57 ], [ %62, %59 ]
  %65 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 14
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = tail call i32 @vector_type_mode(ptr noundef nonnull %65) #23
  br label %76

71:                                               ; preds = %63
  %72 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = lshr i32 %73, 16
  %75 = and i32 %74, 255
  br label %76

76:                                               ; preds = %71, %69
  %77 = phi i32 [ %70, %69 ], [ %75, %71 ]
  %78 = icmp eq i32 %64, %77
  br i1 %78, label %79, label %159

79:                                               ; preds = %76, %50
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !6
  br label %160

81:                                               ; preds = %4
  %82 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = load i64, ptr %83, align 8
  %85 = and i64 %84, 65535
  %86 = icmp eq i64 %85, 9
  br i1 %86, label %87, label %160

87:                                               ; preds = %81
  switch i32 %10, label %157 [
    i32 1, label %88
    i32 2, label %104
  ]

88:                                               ; preds = %87
  %89 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = lshr i32 %90, 16
  %92 = and i32 %91, 255
  %93 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %94 = load i64, ptr %93, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = tail call i32 @vector_type_mode(ptr noundef nonnull %93) #23
  br label %153

99:                                               ; preds = %88
  %100 = getelementptr inbounds %struct.tree_type, ptr %93, i64 0, i32 6
  %101 = load i32, ptr %100, align 4
  %102 = lshr i32 %101, 16
  %103 = and i32 %102, 255
  br label %153

104:                                              ; preds = %87
  %105 = getelementptr inbounds %struct.tree_type, ptr %83, i64 0, i32 6
  %106 = load i32, ptr %105, align 4
  %107 = lshr i32 %106, 16
  %108 = and i32 %107, 255
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %110 = load i64, ptr %109, align 8
  %111 = and i64 %110, 65535
  %112 = icmp eq i64 %111, 14
  br i1 %112, label %113, label %115

113:                                              ; preds = %104
  %114 = tail call i32 @vector_type_mode(ptr noundef nonnull %109) #23
  br label %120

115:                                              ; preds = %104
  %116 = getelementptr inbounds %struct.tree_type, ptr %109, i64 0, i32 6
  %117 = load i32, ptr %116, align 4
  %118 = lshr i32 %117, 16
  %119 = and i32 %118, 255
  br label %120

120:                                              ; preds = %115, %113
  %121 = phi i32 [ %114, %113 ], [ %119, %115 ]
  %122 = icmp eq i32 %108, %121
  br i1 %122, label %151, label %123

123:                                              ; preds = %120
  %124 = load ptr, ptr %82, align 8, !tbaa !22
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 65535
  %127 = icmp eq i64 %126, 14
  br i1 %127, label %128, label %130

128:                                              ; preds = %123
  %129 = tail call i32 @vector_type_mode(ptr noundef nonnull %124) #23
  br label %135

130:                                              ; preds = %123
  %131 = getelementptr inbounds %struct.tree_type, ptr %124, i64 0, i32 6
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = and i32 %133, 255
  br label %135

135:                                              ; preds = %130, %128
  %136 = phi i32 [ %129, %128 ], [ %134, %130 ]
  %137 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 65535
  %140 = icmp eq i64 %139, 14
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = tail call i32 @vector_type_mode(ptr noundef nonnull %137) #23
  br label %148

143:                                              ; preds = %135
  %144 = getelementptr inbounds %struct.tree_type, ptr %137, i64 0, i32 6
  %145 = load i32, ptr %144, align 4
  %146 = lshr i32 %145, 16
  %147 = and i32 %146, 255
  br label %148

148:                                              ; preds = %143, %141
  %149 = phi i32 [ %142, %141 ], [ %147, %143 ]
  %150 = icmp eq i32 %136, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %148, %120
  %152 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 30), align 16, !tbaa !6
  br label %160

153:                                              ; preds = %97, %99
  %154 = phi i32 [ %98, %97 ], [ %103, %99 ]
  %155 = icmp eq i32 %92, %154
  %156 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 29), align 8
  br i1 %155, label %160, label %159

157:                                              ; preds = %87, %13
  %158 = phi i32 [ 7543, %13 ], [ 7562, %87 ]
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef %158, ptr noundef nonnull @.str.219) #23
  br label %159

159:                                              ; preds = %157, %30, %76, %148, %4, %153, %1
  br label %160

160:                                              ; preds = %30, %81, %79, %151, %153, %159
  %161 = phi ptr [ %156, %153 ], [ null, %159 ], [ null, %81 ], [ %80, %79 ], [ %152, %151 ], [ %33, %30 ]
  ret ptr %161
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_unwidened(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %1, null
  %6 = select i1 %5, ptr %4, ptr %1
  %7 = getelementptr inbounds %struct.tree_type, ptr %6, i64 0, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1023
  %10 = icmp eq ptr %4, %1
  %11 = select i1 %5, i1 true, i1 %10
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1023
  %16 = icmp ugt i32 %9, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i64, ptr %4, align 8
  %19 = trunc i64 %18 to i32
  %20 = lshr i32 %19, 21
  %21 = and i32 %20, 1
  br label %22

22:                                               ; preds = %17, %12, %2
  %23 = phi i32 [ %21, %17 ], [ 0, %2 ], [ 0, %12 ]
  br label %24

24:                                               ; preds = %63, %22
  %25 = phi i32 [ %23, %22 ], [ %64, %63 ]
  %26 = phi ptr [ %0, %22 ], [ %65, %63 ]
  %27 = phi ptr [ %0, %22 ], [ %34, %63 ]
  br label %28

28:                                               ; preds = %24, %53
  %29 = phi ptr [ %34, %53 ], [ %27, %24 ]
  %30 = load i64, ptr %29, align 8
  %31 = trunc i64 %30 to i16
  switch i16 %31, label %72 [
    i16 116, label %32
    i16 113, label %32
  ]

32:                                               ; preds = %28, %28
  %33 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 14
  br i1 %39, label %72, label %40

40:                                               ; preds = %32
  %41 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_type, ptr %42, i64 0, i32 6
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 1023
  %46 = getelementptr inbounds %struct.tree_type, ptr %36, i64 0, i32 6
  %47 = load i32, ptr %46, align 4
  %48 = and i32 %47, 1023
  %49 = sub nsw i32 %45, %48
  %50 = icmp slt i32 %49, 0
  %51 = icmp ugt i32 %9, %45
  %52 = select i1 %50, i1 %51, i1 false
  br i1 %52, label %72, label %53

53:                                               ; preds = %40
  %54 = icmp sgt i32 %49, 0
  br i1 %54, label %55, label %28

55:                                               ; preds = %53
  %56 = icmp eq i32 %25, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %55
  %58 = icmp ugt i32 %9, %48
  %59 = select i1 %58, ptr %26, ptr %34
  br label %66

60:                                               ; preds = %55
  %61 = load i64, ptr %34, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %63 [
    i16 116, label %66
    i16 113, label %66
  ]

63:                                               ; preds = %60, %66
  %64 = phi i32 [ %70, %66 ], [ 0, %60 ]
  %65 = phi ptr [ %71, %66 ], [ %34, %60 ]
  br label %24

66:                                               ; preds = %57, %60, %60
  %67 = phi ptr [ %34, %60 ], [ %34, %60 ], [ %59, %57 ]
  %68 = and i64 %37, 2097152
  %69 = icmp eq i64 %68, 0
  %70 = select i1 %69, i32 %25, i32 1
  %71 = select i1 %69, ptr %67, ptr %34
  br label %63

72:                                               ; preds = %40, %32, %28
  br i1 %5, label %86, label %73

73:                                               ; preds = %72
  %74 = load i64, ptr %26, align 8
  %75 = and i64 %74, 65535
  %76 = icmp eq i64 %75, 23
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %79 = load ptr, ptr %78, align 8, !tbaa !22
  %80 = icmp eq ptr %79, %1
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = tail call i32 @int_fits_type_p(ptr noundef nonnull %26, ptr noundef nonnull %1) #24
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %81
  %85 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %1, ptr noundef nonnull %26) #23
  br label %86

86:                                               ; preds = %84, %81, %77, %73, %72
  %87 = phi ptr [ %85, %84 ], [ %26, %81 ], [ %26, %77 ], [ %26, %73 ], [ %26, %72 ]
  ret ptr %87
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @int_fits_type_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.double_int, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = tail call { i64, i64 } @tree_to_double_int(ptr noundef %0) #23
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  store i64 %5, ptr %3, align 8, !tbaa.struct !256
  %7 = getelementptr inbounds i8, ptr %3, i64 8
  store i64 %6, ptr %7, align 8, !tbaa.struct !257
  %8 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = load i64, ptr %9, align 8
  %11 = lshr i64 %10, 21
  %12 = trunc i64 %11 to i8
  %13 = and i8 %12, 1
  %14 = and i64 %10, 65535
  %15 = icmp eq i64 %14, 8
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1024
  %20 = icmp ne i32 %19, 0
  %21 = icmp ne i8 %13, 0
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = and i32 %18, 1023
  %25 = tail call { i64, i64 } @double_int_zext(i64 %5, i64 %6, i32 noundef %24) #23
  %26 = extractvalue { i64, i64 } %25, 0
  %27 = extractvalue { i64, i64 } %25, 1
  store i64 %26, ptr %3, align 8, !tbaa.struct !256
  store i64 %27, ptr %7, align 8, !tbaa.struct !257
  br label %28

28:                                               ; preds = %23, %16, %2
  %29 = phi i64 [ %27, %23 ], [ %6, %16 ], [ %6, %2 ]
  %30 = phi i64 [ %26, %23 ], [ %5, %16 ], [ %5, %2 ]
  %31 = zext nneg i8 %13 to i32
  %32 = icmp eq i8 %13, 0
  %33 = icmp ne i8 %13, 0
  br label %34

34:                                               ; preds = %200, %28
  %35 = phi ptr [ %1, %28 ], [ %198, %200 ]
  %36 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 13
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 14
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %37, null
  br i1 %40, label %88, label %41

41:                                               ; preds = %34
  %42 = load i64, ptr %37, align 8
  %43 = and i64 %42, 65535
  %44 = icmp eq i64 %43, 23
  br i1 %44, label %45, label %88

45:                                               ; preds = %41
  %46 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %37) #23
  %47 = extractvalue { i64, i64 } %46, 0
  %48 = extractvalue { i64, i64 } %46, 1
  %49 = load i64, ptr %35, align 8
  %50 = and i64 %49, 65535
  %51 = icmp eq i64 %50, 8
  br i1 %51, label %52, label %65

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = and i32 %54, 1024
  %56 = icmp eq i32 %55, 0
  %57 = and i64 %49, 2097152
  %58 = icmp eq i64 %57, 0
  %59 = or i1 %58, %56
  br i1 %59, label %65, label %60

60:                                               ; preds = %52
  %61 = and i32 %54, 1023
  %62 = tail call { i64, i64 } @double_int_zext(i64 %47, i64 %48, i32 noundef %61) #23
  %63 = extractvalue { i64, i64 } %62, 0
  %64 = extractvalue { i64, i64 } %62, 1
  br label %65

65:                                               ; preds = %60, %52, %45
  %66 = phi i64 [ %63, %60 ], [ %47, %52 ], [ %47, %45 ]
  %67 = phi i64 [ %64, %60 ], [ %48, %52 ], [ %48, %45 ]
  %68 = getelementptr inbounds %struct.tree_common, ptr %37, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = load i64, ptr %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = lshr i32 %71, 21
  %73 = and i32 %72, 1
  %74 = icmp eq i32 %73, %31
  br i1 %74, label %85, label %75

75:                                               ; preds = %65
  br i1 %32, label %76, label %79

76:                                               ; preds = %75
  %77 = tail call zeroext i8 @double_int_negative_p(i64 %30, i64 %29) #23
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %82, label %214

79:                                               ; preds = %75
  %80 = tail call zeroext i8 @double_int_negative_p(i64 %66, i64 %67) #23
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76, %79
  %83 = tail call i32 @double_int_ucmp(i64 %30, i64 %29, i64 %66, i64 %67) #23
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %214, label %88

85:                                               ; preds = %65
  %86 = tail call i32 @double_int_cmp(i64 %30, i64 %29, i64 %66, i64 %67, i8 noundef zeroext %13) #23
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %214, label %88

88:                                               ; preds = %82, %79, %34, %41, %85
  %89 = phi i1 [ true, %85 ], [ false, %41 ], [ false, %34 ], [ true, %79 ], [ true, %82 ]
  %90 = icmp eq ptr %39, null
  br i1 %90, label %141, label %91

91:                                               ; preds = %88
  %92 = load i64, ptr %39, align 8
  %93 = and i64 %92, 65535
  %94 = icmp eq i64 %93, 23
  br i1 %94, label %95, label %141

95:                                               ; preds = %91
  %96 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %39) #23
  %97 = extractvalue { i64, i64 } %96, 0
  %98 = extractvalue { i64, i64 } %96, 1
  %99 = load i64, ptr %35, align 8
  %100 = and i64 %99, 65535
  %101 = icmp eq i64 %100, 8
  br i1 %101, label %102, label %115

102:                                              ; preds = %95
  %103 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 1024
  %106 = icmp eq i32 %105, 0
  %107 = and i64 %99, 2097152
  %108 = icmp eq i64 %107, 0
  %109 = or i1 %108, %106
  br i1 %109, label %115, label %110

110:                                              ; preds = %102
  %111 = and i32 %104, 1023
  %112 = tail call { i64, i64 } @double_int_zext(i64 %97, i64 %98, i32 noundef %111) #23
  %113 = extractvalue { i64, i64 } %112, 0
  %114 = extractvalue { i64, i64 } %112, 1
  br label %115

115:                                              ; preds = %110, %102, %95
  %116 = phi i64 [ %113, %110 ], [ %97, %102 ], [ %97, %95 ]
  %117 = phi i64 [ %114, %110 ], [ %98, %102 ], [ %98, %95 ]
  %118 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 2
  %119 = load ptr, ptr %118, align 8, !tbaa !22
  %120 = load i64, ptr %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = lshr i32 %121, 21
  %123 = and i32 %122, 1
  %124 = icmp eq i32 %123, %31
  br i1 %124, label %136, label %125

125:                                              ; preds = %115
  br i1 %32, label %129, label %126

126:                                              ; preds = %125
  %127 = tail call zeroext i8 @double_int_negative_p(i64 %116, i64 %117) #23
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %132, label %214

129:                                              ; preds = %125
  %130 = tail call zeroext i8 @double_int_negative_p(i64 %30, i64 %29) #23
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126, %129
  %133 = tail call i32 @double_int_ucmp(i64 %30, i64 %29, i64 %116, i64 %117) #23
  %134 = icmp sgt i32 %133, 0
  %135 = or i1 %89, %134
  br i1 %135, label %210, label %141

136:                                              ; preds = %115
  %137 = tail call i32 @double_int_cmp(i64 %30, i64 %29, i64 %116, i64 %117, i8 noundef zeroext %13) #23
  %138 = icmp sgt i32 %137, 0
  %139 = or i1 %89, %138
  br i1 %139, label %212, label %141

140:                                              ; preds = %129
  br i1 %89, label %214, label %141

141:                                              ; preds = %136, %132, %88, %91, %140
  %142 = load i64, ptr %35, align 8
  %143 = and i64 %142, 2097152
  %144 = icmp eq i64 %143, 0
  %145 = or i1 %33, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %141
  %147 = tail call zeroext i8 @double_int_negative_p(i64 %30, i64 %29) #23
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %214

149:                                              ; preds = %146, %141
  %150 = getelementptr inbounds %struct.tree_type, ptr %35, i64 0, i32 6
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, 1023
  %153 = load ptr, ptr %8, align 8, !tbaa !22
  %154 = getelementptr inbounds %struct.tree_type, ptr %153, i64 0, i32 6
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, 1023
  %157 = icmp ugt i32 %152, %156
  br i1 %157, label %214, label %158

158:                                              ; preds = %149
  %159 = load i64, ptr %35, align 8
  %160 = and i64 %159, 2097152
  %161 = icmp eq i64 %160, 0
  %162 = and i1 %33, %161
  br i1 %162, label %163, label %192

163:                                              ; preds = %158
  %164 = load i64, ptr %153, align 8
  %165 = and i64 %164, 65535
  %166 = icmp eq i64 %165, 14
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = tail call i32 @vector_type_mode(ptr noundef nonnull %153) #23
  br label %172

169:                                              ; preds = %163
  %170 = lshr i32 %155, 16
  %171 = and i32 %170, 255
  br label %172

172:                                              ; preds = %169, %167
  %173 = phi i32 [ %168, %167 ], [ %171, %169 ]
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %174
  %176 = load i8, ptr %175, align 1, !tbaa !22
  %177 = zext i8 %176 to i32
  %178 = shl nuw nsw i32 %177, 3
  %179 = icmp ult i8 %176, 9
  br i1 %179, label %180, label %186

180:                                              ; preds = %172
  %181 = add nsw i32 %178, -1
  %182 = zext nneg i32 %181 to i64
  %183 = shl nuw i64 1, %182
  %184 = and i64 %30, %183
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %192, label %214

186:                                              ; preds = %172
  %187 = add nsw i32 %178, -65
  %188 = zext nneg i32 %187 to i64
  %189 = shl nuw i64 1, %188
  %190 = and i64 %29, %189
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %214

192:                                              ; preds = %180, %186, %158
  %193 = load i64, ptr %35, align 8
  %194 = and i64 %193, 65535
  %195 = icmp eq i64 %194, 8
  br i1 %195, label %196, label %207

196:                                              ; preds = %192
  %197 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %198 = load ptr, ptr %197, align 8, !tbaa !22
  %199 = icmp eq ptr %198, null
  br i1 %199, label %207, label %200

200:                                              ; preds = %196
  %201 = load i32, ptr %150, align 4
  %202 = getelementptr inbounds %struct.tree_type, ptr %198, i64 0, i32 6
  %203 = load i32, ptr %202, align 4
  %204 = xor i32 %203, %201
  %205 = and i32 %204, 1023
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %34, label %207

207:                                              ; preds = %200, %196, %192
  %208 = call i32 @fit_double_type(i64 noundef %30, i64 noundef %29, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %35) #23
  %209 = icmp eq i32 %208, 0
  br label %214

210:                                              ; preds = %132
  %211 = xor i1 %134, true
  br label %214

212:                                              ; preds = %136
  %213 = xor i1 %138, true
  br label %214

214:                                              ; preds = %82, %76, %85, %126, %140, %146, %149, %186, %180, %210, %212, %207
  %215 = phi i1 [ %209, %207 ], [ %211, %210 ], [ %213, %212 ], [ false, %82 ], [ false, %76 ], [ false, %85 ], [ false, %126 ], [ true, %140 ], [ false, %146 ], [ true, %149 ], [ false, %186 ], [ false, %180 ]
  %216 = zext i1 %215 to i32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  ret i32 %216
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_narrower(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = load i64, ptr %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = and i32 %6, 65535
  %8 = add nsw i32 %7, -6
  %9 = icmp ult i32 %8, 3
  %10 = load i64, ptr %0, align 8
  %11 = and i64 %10, 65535
  %12 = icmp eq i64 %11, 116
  br i1 %12, label %13, label %74

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1023
  %17 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = getelementptr inbounds %struct.tree_type, ptr %20, i64 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 1023
  %24 = icmp uge i32 %16, %23
  br i1 %24, label %35, label %74

25:                                               ; preds = %67
  %26 = and i32 %37, 1023
  %27 = getelementptr inbounds %struct.tree_exp, ptr %39, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = getelementptr inbounds %struct.tree_type, ptr %30, i64 0, i32 6
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 1023
  %34 = icmp ult i32 %26, %33
  br i1 %34, label %74, label %35

35:                                               ; preds = %13, %25
  %36 = phi i32 [ %33, %25 ], [ %23, %13 ]
  %37 = phi i32 [ %32, %25 ], [ %22, %13 ]
  %38 = phi ptr [ %30, %25 ], [ %20, %13 ]
  %39 = phi ptr [ %28, %25 ], [ %18, %13 ]
  %40 = phi i32 [ %26, %25 ], [ %16, %13 ]
  %41 = phi ptr [ %69, %25 ], [ %0, %13 ]
  %42 = phi i1 [ true, %25 ], [ false, %13 ]
  %43 = phi i32 [ %70, %25 ], [ 0, %13 ]
  %44 = phi i64 [ %68, %25 ], [ %5, %13 ]
  %45 = icmp eq i32 %40, %36
  br i1 %45, label %55, label %46

46:                                               ; preds = %35
  %47 = load i64, ptr %38, align 8
  %48 = trunc i64 %47 to i32
  %49 = lshr i32 %48, 21
  %50 = and i32 %49, 1
  br i1 %42, label %51, label %67

51:                                               ; preds = %46
  %52 = icmp eq i32 %43, %50
  br i1 %52, label %67, label %53

53:                                               ; preds = %51
  %54 = load i64, ptr %39, align 8
  br label %74

55:                                               ; preds = %35
  %56 = trunc i64 %44 to i32
  %57 = lshr i32 %56, 21
  %58 = and i32 %57, 1
  %59 = select i1 %42, i32 %43, i32 %58
  %60 = load i64, ptr %38, align 8
  %61 = trunc i64 %60 to i32
  %62 = and i32 %61, 65535
  %63 = add nsw i32 %62, -6
  %64 = icmp ult i32 %63, 3
  %65 = xor i1 %9, %64
  %66 = select i1 %65, ptr %41, ptr %39
  br label %67, !llvm.loop !258

67:                                               ; preds = %46, %55, %51
  %68 = phi i64 [ %47, %51 ], [ %60, %55 ], [ %47, %46 ]
  %69 = phi ptr [ %39, %51 ], [ %66, %55 ], [ %39, %46 ]
  %70 = phi i32 [ %43, %51 ], [ %59, %55 ], [ %50, %46 ]
  %71 = load i64, ptr %39, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 116
  br i1 %73, label %25, label %74

74:                                               ; preds = %25, %67, %13, %53, %2
  %75 = phi i64 [ %10, %2 ], [ %54, %53 ], [ %10, %13 ], [ %71, %67 ], [ %71, %25 ]
  %76 = phi ptr [ %0, %2 ], [ %41, %53 ], [ %0, %13 ], [ %69, %67 ], [ %69, %25 ]
  %77 = phi i1 [ false, %2 ], [ true, %53 ], [ %24, %13 ], [ %24, %67 ], [ %24, %25 ]
  %78 = phi i32 [ 0, %2 ], [ %43, %53 ], [ 0, %13 ], [ %70, %67 ], [ %70, %25 ]
  %79 = phi ptr [ %0, %2 ], [ %39, %53 ], [ %0, %13 ], [ %39, %67 ], [ %39, %25 ]
  %80 = and i64 %75, 65535
  %81 = icmp eq i64 %80, 41
  br i1 %81, label %82, label %145

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.tree_common, ptr %79, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = load i64, ptr %84, align 8
  %86 = trunc i64 %85 to i16
  switch i16 %86, label %87 [
    i16 9, label %145
    i16 11, label %145
  ]

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.tree_exp, ptr %79, i64 1
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  %90 = getelementptr inbounds %struct.tree_decl_common, ptr %89, i64 0, i32 1
  %91 = load ptr, ptr %90, align 8, !tbaa !22
  %92 = icmp eq ptr %91, null
  br i1 %92, label %145, label %93

93:                                               ; preds = %87
  %94 = tail call i32 @host_integerp(ptr noundef nonnull %91, i32 noundef 1) #24, !range !23
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %145, label %96

96:                                               ; preds = %93
  %97 = tail call i64 @tree_low_cst(ptr noundef nonnull %91, i32 noundef 1) #24
  %98 = load ptr, ptr %88, align 8, !tbaa !22
  %99 = load i64, ptr %98, align 8
  %100 = and i64 %99, 2097152
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = getelementptr inbounds %struct.tree_common, ptr %98, i64 0, i32 2
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = load i64, ptr %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = lshr i32 %106, 21
  %108 = and i32 %107, 1
  br label %109

109:                                              ; preds = %102, %96
  %110 = phi i32 [ 1, %96 ], [ %108, %102 ]
  %111 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !259
  %112 = trunc i64 %97 to i32
  %113 = tail call ptr %111(i32 noundef %112, i32 noundef %110) #23
  %114 = load ptr, ptr %83, align 8, !tbaa !22
  %115 = getelementptr inbounds %struct.tree_type, ptr %114, i64 0, i32 6
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, 1023
  %118 = zext nneg i32 %117 to i64
  %119 = icmp ult i64 %97, %118
  br i1 %119, label %120, label %145

120:                                              ; preds = %109
  %121 = load ptr, ptr %88, align 8, !tbaa !22
  %122 = getelementptr inbounds %struct.tree_decl_common, ptr %121, i64 0, i32 2
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 33554432
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %120
  br i1 %77, label %127, label %135

127:                                              ; preds = %126
  %128 = load i64, ptr %121, align 8
  %129 = trunc i64 %128 to i32
  %130 = lshr i32 %129, 21
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %78, %131
  %133 = icmp ne ptr %113, null
  %134 = select i1 %132, i1 %133, i1 false
  br i1 %134, label %142, label %145

135:                                              ; preds = %126
  %136 = icmp eq ptr %113, null
  br i1 %136, label %145, label %137

137:                                              ; preds = %135
  %138 = load i64, ptr %121, align 8
  %139 = trunc i64 %138 to i32
  %140 = lshr i32 %139, 21
  %141 = and i32 %140, 1
  br label %142

142:                                              ; preds = %127, %137
  %143 = phi i32 [ %141, %137 ], [ %78, %127 ]
  %144 = tail call ptr @fold_convert_loc(i32 noundef 0, ptr noundef nonnull %113, ptr noundef nonnull %79) #23
  br label %145

145:                                              ; preds = %109, %120, %127, %135, %142, %82, %82, %93, %87, %74
  %146 = phi ptr [ %76, %93 ], [ %76, %87 ], [ %76, %82 ], [ %76, %74 ], [ %76, %82 ], [ %76, %120 ], [ %144, %142 ], [ %76, %135 ], [ %76, %127 ], [ %76, %109 ]
  %147 = phi i32 [ %78, %93 ], [ %78, %87 ], [ %78, %82 ], [ %78, %74 ], [ %78, %82 ], [ %78, %120 ], [ %143, %142 ], [ %78, %135 ], [ %78, %127 ], [ %78, %109 ]
  store i32 %147, ptr %1, align 4, !tbaa !30
  ret ptr %146
}

; Function Attrs: optsize
declare { i64, i64 } @tree_to_double_int(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_zext(i64, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @double_int_negative_p(i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @double_int_ucmp(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @double_int_cmp(i64, i64, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @get_type_static_bounds(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load i64, ptr %0, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %6 [
    i16 10, label %22
    i16 12, label %22
  ]

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %6
  %11 = load i64, ptr %8, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 23
  br i1 %13, label %14, label %22

14:                                               ; preds = %10
  %15 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %8) #23
  %16 = extractvalue { i64, i64 } %15, 0
  %17 = extractvalue { i64, i64 } %15, 1
  %18 = load i64, ptr %0, align 8
  %19 = lshr i64 %18, 21
  %20 = trunc i64 %19 to i8
  %21 = and i8 %20, 1
  tail call void @mpz_set_double_int(ptr noundef %1, i64 %16, i64 %17, i8 noundef zeroext %21) #23
  br label %42

22:                                               ; preds = %3, %3, %10, %6
  %23 = and i64 %4, 2097152
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @mpz_set_ui(ptr noundef %1, i64 noundef 0) #23
  br label %42

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = add nsw i32 %29, -1
  %31 = tail call { i64, i64 } @double_int_mask(i32 noundef %30) #23
  %32 = extractvalue { i64, i64 } %31, 0
  %33 = extractvalue { i64, i64 } %31, 1
  %34 = tail call { i64, i64 } @double_int_add(i64 %32, i64 %33, i64 1, i64 0) #23
  %35 = extractvalue { i64, i64 } %34, 0
  %36 = extractvalue { i64, i64 } %34, 1
  %37 = load i32, ptr %27, align 4
  %38 = and i32 %37, 1023
  %39 = tail call { i64, i64 } @double_int_sext(i64 %35, i64 %36, i32 noundef %38) #23
  %40 = extractvalue { i64, i64 } %39, 0
  %41 = extractvalue { i64, i64 } %39, 1
  tail call void @mpz_set_double_int(ptr noundef %1, i64 %40, i64 %41, i8 noundef zeroext 0) #23
  br label %42

42:                                               ; preds = %25, %26, %14
  %43 = load i64, ptr %0, align 8
  %44 = trunc i64 %43 to i16
  switch i16 %44, label %45 [
    i16 10, label %61
    i16 12, label %61
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %47 = load ptr, ptr %46, align 8, !tbaa !22
  %48 = icmp eq ptr %47, null
  br i1 %48, label %61, label %49

49:                                               ; preds = %45
  %50 = load i64, ptr %47, align 8
  %51 = and i64 %50, 65535
  %52 = icmp eq i64 %51, 23
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = tail call { i64, i64 } @tree_to_double_int(ptr noundef nonnull %47) #23
  %55 = extractvalue { i64, i64 } %54, 0
  %56 = extractvalue { i64, i64 } %54, 1
  %57 = load i64, ptr %0, align 8
  %58 = lshr i64 %57, 21
  %59 = trunc i64 %58 to i8
  %60 = and i8 %59, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %55, i64 %56, i8 noundef zeroext %60) #23
  br label %76

61:                                               ; preds = %42, %42, %49, %45
  %62 = and i64 %43, 2097152
  %63 = icmp eq i64 %62, 0
  %64 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 1023
  br i1 %63, label %71, label %67

67:                                               ; preds = %61
  %68 = tail call { i64, i64 } @double_int_mask(i32 noundef %66) #23
  %69 = extractvalue { i64, i64 } %68, 0
  %70 = extractvalue { i64, i64 } %68, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %69, i64 %70, i8 noundef zeroext 1) #23
  br label %76

71:                                               ; preds = %61
  %72 = add nsw i32 %66, -1
  %73 = tail call { i64, i64 } @double_int_mask(i32 noundef %72) #23
  %74 = extractvalue { i64, i64 } %73, 0
  %75 = extractvalue { i64, i64 } %73, 1
  tail call void @mpz_set_double_int(ptr noundef %2, i64 %74, i64 %75, i8 noundef zeroext 1) #23
  br label %76

76:                                               ; preds = %67, %71, %53
  ret void
}

; Function Attrs: optsize
declare void @mpz_set_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @mpz_set_ui(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_mask(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_sext(i64, i64, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare { i64, i64 } @double_int_add(i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local zeroext i8 @auto_var_in_fn_p(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = add nsw i64 %4, -29
  %6 = icmp ult i64 %5, 12
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %19

11:                                               ; preds = %7
  %12 = trunc i64 %3 to i16
  switch i16 %12, label %16 [
    i16 32, label %13
    i16 34, label %13
    i16 30, label %19
  ]

13:                                               ; preds = %11, %11
  %14 = and i64 %3, 67108864
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11, %13
  %17 = icmp eq i64 %4, 36
  %18 = zext i1 %17 to i8
  br label %19

19:                                               ; preds = %11, %13, %16, %7, %2
  %20 = phi i8 [ 0, %7 ], [ 0, %2 ], [ 1, %13 ], [ %18, %16 ], [ 1, %11 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @variably_modified_type_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = load ptr, ptr @global_trees, align 16
  %14 = icmp eq ptr %13, %0
  br i1 %14, label %232, label %15

15:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %16 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !22
  store ptr %17, ptr %3, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  %19 = icmp eq ptr %17, %13
  %20 = or i1 %18, %19
  br i1 %20, label %32, label %21

21:                                               ; preds = %15
  %22 = load i64, ptr %17, align 8
  %23 = and i64 %22, 65535
  %24 = icmp eq i64 %23, 23
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %1, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %25
  %28 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load ptr, ptr @global_trees, align 16
  br label %32

32:                                               ; preds = %30, %21, %15
  %33 = phi ptr [ %31, %30 ], [ %13, %21 ], [ %13, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %34 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  store ptr %35, ptr %4, align 8, !tbaa !6
  %36 = icmp eq ptr %35, null
  %37 = icmp eq ptr %35, %33
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %49, label %40

39:                                               ; preds = %25, %27
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  br label %232

40:                                               ; preds = %32
  %41 = load i64, ptr %35, align 8
  %42 = and i64 %41, 65535
  %43 = icmp eq i64 %42, 23
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %1, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %44
  %47 = call ptr @walk_tree_1(ptr noundef nonnull %4, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46, %40, %32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  %50 = load i64, ptr %0, align 8
  %51 = trunc i64 %50 to i16
  switch i16 %51, label %229 [
    i16 10, label %53
    i16 12, label %53
    i16 14, label %53
    i16 20, label %58
    i16 21, label %58
    i16 8, label %63
    i16 9, label %63
    i16 11, label %63
    i16 6, label %63
    i16 7, label %63
    i16 16, label %100
    i16 17, label %100
    i16 18, label %100
    i16 15, label %188
  ]

52:                                               ; preds = %44, %46
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %232

53:                                               ; preds = %49, %49, %49
  %54 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = call zeroext i8 @variably_modified_type_p(ptr noundef %55, ptr noundef %1) #24
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %229, label %232

58:                                               ; preds = %49, %49
  %59 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = call zeroext i8 @variably_modified_type_p(ptr noundef %60, ptr noundef %1) #24
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %229, label %232

63:                                               ; preds = %49, %49, %49, %49, %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  %64 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %65 = load ptr, ptr %64, align 8, !tbaa !22
  store ptr %65, ptr %5, align 8, !tbaa !6
  %66 = icmp eq ptr %65, null
  %67 = load ptr, ptr @global_trees, align 16
  %68 = icmp eq ptr %65, %67
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %81, label %70

70:                                               ; preds = %63
  %71 = load i64, ptr %65, align 8
  %72 = and i64 %71, 65535
  %73 = icmp eq i64 %72, 23
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = icmp eq ptr %1, null
  br i1 %75, label %88, label %76

76:                                               ; preds = %74
  %77 = call ptr @walk_tree_1(ptr noundef nonnull %5, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load ptr, ptr @global_trees, align 16
  br label %81

81:                                               ; preds = %79, %70, %63
  %82 = phi ptr [ %80, %79 ], [ %67, %70 ], [ %67, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %83 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  store ptr %84, ptr %6, align 8, !tbaa !6
  %85 = icmp eq ptr %84, null
  %86 = icmp eq ptr %84, %82
  %87 = select i1 %85, i1 true, i1 %86
  br i1 %87, label %98, label %89

88:                                               ; preds = %74, %76
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  br label %232

89:                                               ; preds = %81
  %90 = load i64, ptr %84, align 8
  %91 = and i64 %90, 65535
  %92 = icmp eq i64 %91, 23
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %1, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = call ptr @walk_tree_1(ptr noundef nonnull %6, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %95, %89, %81
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %229

99:                                               ; preds = %93, %95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %232

100:                                              ; preds = %49, %49, %49
  %101 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !22
  %103 = icmp eq ptr %102, null
  br i1 %103, label %229, label %104

104:                                              ; preds = %100
  %105 = icmp eq ptr %1, null
  br label %106

106:                                              ; preds = %104, %184
  %107 = phi ptr [ %102, %104 ], [ %186, %184 ]
  %108 = load i64, ptr %107, align 8
  %109 = and i64 %108, 65535
  %110 = icmp eq i64 %109, 31
  br i1 %110, label %111, label %184

111:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  %112 = getelementptr inbounds %struct.tree_field_decl, ptr %107, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !22
  store ptr %113, ptr %7, align 8, !tbaa !6
  %114 = icmp eq ptr %113, null
  %115 = load ptr, ptr @global_trees, align 16
  %116 = icmp eq ptr %113, %115
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %128, label %118

118:                                              ; preds = %111
  %119 = load i64, ptr %113, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 23
  br i1 %121, label %128, label %122

122:                                              ; preds = %118
  br i1 %105, label %135, label %123

123:                                              ; preds = %122
  %124 = call ptr @walk_tree_1(ptr noundef nonnull %7, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load ptr, ptr @global_trees, align 16
  br label %128

128:                                              ; preds = %126, %118, %111
  %129 = phi ptr [ %127, %126 ], [ %115, %118 ], [ %115, %111 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %130 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 1
  %131 = load ptr, ptr %130, align 8, !tbaa !22
  store ptr %131, ptr %8, align 8, !tbaa !6
  %132 = icmp eq ptr %131, null
  %133 = icmp eq ptr %131, %129
  %134 = select i1 %132, i1 true, i1 %133
  br i1 %134, label %146, label %136

135:                                              ; preds = %122, %123
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  br label %232

136:                                              ; preds = %128
  %137 = load i64, ptr %131, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 23
  br i1 %139, label %146, label %140

140:                                              ; preds = %136
  br i1 %105, label %153, label %141

141:                                              ; preds = %140
  %142 = call ptr @walk_tree_1(ptr noundef nonnull %8, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load ptr, ptr @global_trees, align 16
  br label %146

146:                                              ; preds = %144, %136, %128
  %147 = phi ptr [ %145, %144 ], [ %129, %136 ], [ %129, %128 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #25
  %148 = getelementptr inbounds %struct.tree_decl_common, ptr %107, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !22
  store ptr %149, ptr %9, align 8, !tbaa !6
  %150 = icmp eq ptr %149, null
  %151 = icmp eq ptr %149, %147
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %162, label %154

153:                                              ; preds = %140, %141
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  br label %232

154:                                              ; preds = %146
  %155 = load i64, ptr %149, align 8
  %156 = and i64 %155, 65535
  %157 = icmp eq i64 %156, 23
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  br i1 %105, label %166, label %159

159:                                              ; preds = %158
  %160 = call ptr @walk_tree_1(ptr noundef nonnull %9, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %166

162:                                              ; preds = %159, %154, %146
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  %163 = load i64, ptr %0, align 8
  %164 = and i64 %163, 65535
  %165 = icmp eq i64 %164, 18
  br i1 %165, label %167, label %184

166:                                              ; preds = %158, %159
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #25
  br label %232

167:                                              ; preds = %162
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #25
  %168 = getelementptr inbounds %struct.tree_field_decl, ptr %107, i64 0, i32 3
  %169 = load ptr, ptr %168, align 8, !tbaa !22
  store ptr %169, ptr %10, align 8, !tbaa !6
  %170 = icmp eq ptr %169, null
  %171 = load ptr, ptr @global_trees, align 16
  %172 = icmp eq ptr %169, %171
  %173 = select i1 %170, i1 true, i1 %172
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load i64, ptr %169, align 8
  %176 = and i64 %175, 65535
  %177 = icmp eq i64 %176, 23
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  br i1 %105, label %183, label %179

179:                                              ; preds = %178
  %180 = call ptr @walk_tree_1(ptr noundef nonnull %10, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %179, %174, %167
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  br label %184

183:                                              ; preds = %178, %179
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #25
  br label %232

184:                                              ; preds = %182, %106, %162
  %185 = getelementptr inbounds %struct.tree_common, ptr %107, i64 0, i32 1
  %186 = load ptr, ptr %185, align 8, !tbaa !22
  %187 = icmp eq ptr %186, null
  br i1 %187, label %229, label %106, !llvm.loop !260

188:                                              ; preds = %49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #25
  %189 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %190 = load ptr, ptr %189, align 8, !tbaa !22
  %191 = getelementptr inbounds %struct.tree_type, ptr %190, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !22
  store ptr %192, ptr %11, align 8, !tbaa !6
  %193 = icmp eq ptr %192, null
  %194 = load ptr, ptr @global_trees, align 16
  %195 = icmp eq ptr %192, %194
  %196 = select i1 %193, i1 true, i1 %195
  br i1 %196, label %209, label %197

197:                                              ; preds = %188
  %198 = load i64, ptr %192, align 8
  %199 = and i64 %198, 65535
  %200 = icmp eq i64 %199, 23
  br i1 %200, label %209, label %201

201:                                              ; preds = %197
  %202 = icmp eq ptr %1, null
  br i1 %202, label %217, label %203

203:                                              ; preds = %201
  %204 = call ptr @walk_tree_1(ptr noundef nonnull %11, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %205 = icmp eq ptr %204, null
  br i1 %205, label %206, label %217

206:                                              ; preds = %203
  %207 = load ptr, ptr %189, align 8, !tbaa !22
  %208 = load ptr, ptr @global_trees, align 16
  br label %209

209:                                              ; preds = %206, %197, %188
  %210 = phi ptr [ %208, %206 ], [ %194, %197 ], [ %194, %188 ]
  %211 = phi ptr [ %207, %206 ], [ %190, %197 ], [ %190, %188 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #25
  %212 = getelementptr inbounds %struct.tree_type, ptr %211, i64 0, i32 3
  %213 = load ptr, ptr %212, align 8, !tbaa !22
  store ptr %213, ptr %12, align 8, !tbaa !6
  %214 = icmp eq ptr %213, null
  %215 = icmp eq ptr %213, %210
  %216 = select i1 %214, i1 true, i1 %215
  br i1 %216, label %227, label %218

217:                                              ; preds = %201, %203
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #25
  br label %232

218:                                              ; preds = %209
  %219 = load i64, ptr %213, align 8
  %220 = and i64 %219, 65535
  %221 = icmp eq i64 %220, 23
  br i1 %221, label %227, label %222

222:                                              ; preds = %218
  %223 = icmp eq ptr %1, null
  br i1 %223, label %228, label %224

224:                                              ; preds = %222
  %225 = call ptr @walk_tree_1(ptr noundef nonnull %12, ptr noundef nonnull @find_var_from_fn, ptr noundef nonnull %1, ptr noundef null, ptr noundef null) #24
  %226 = icmp eq ptr %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %224, %218, %209
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  br label %229

228:                                              ; preds = %222, %224
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #25
  br label %232

229:                                              ; preds = %184, %100, %227, %98, %49, %58, %53
  %230 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 30), align 8, !tbaa !261
  %231 = call zeroext i8 %230(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %232

232:                                              ; preds = %228, %217, %183, %166, %153, %135, %99, %88, %58, %53, %52, %39, %2, %229
  %233 = phi i8 [ %231, %229 ], [ 1, %228 ], [ 1, %217 ], [ 1, %183 ], [ 1, %166 ], [ 1, %153 ], [ 1, %135 ], [ 1, %99 ], [ 1, %88 ], [ 1, %52 ], [ 1, %39 ], [ 0, %2 ], [ 1, %53 ], [ 1, %58 ]
  ret i8 %233
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal ptr @find_var_from_fn(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef readnone %2) #15 {
  %4 = load ptr, ptr %0, align 8, !tbaa !6
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = add nsw i64 %6, -5
  %8 = icmp ult i64 %7, 18
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !30
  br label %17

10:                                               ; preds = %3
  %11 = add nsw i64 %6, -29
  %12 = icmp ult i64 %11, 12
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = tail call zeroext i8 @auto_var_in_fn_p(ptr noundef nonnull %4, ptr noundef %2) #24, !range !76
  %15 = icmp eq i8 %14, 0
  %16 = select i1 %15, ptr null, ptr %4
  br label %17

17:                                               ; preds = %13, %9, %10
  %18 = phi ptr [ null, %10 ], [ null, %9 ], [ %16, %13 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @get_containing_scope(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = add nsw i64 %3, -5
  %5 = icmp ult i64 %4, 18
  %6 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 18
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %8 = select i1 %5, ptr %6, ptr %7
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @decl_type_context(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %20, label %5

5:                                                ; preds = %1, %16
  %6 = phi ptr [ %17, %16 ], [ %3, %1 ]
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i16
  switch i16 %8, label %15 [
    i16 38, label %19
    i16 40, label %19
    i16 16, label %20
    i16 17, label %20
    i16 18, label %20
    i16 35, label %9
    i16 29, label %9
    i16 4, label %12
  ]

9:                                                ; preds = %5, %5
  %10 = getelementptr inbounds %struct.tree_decl_minimal, ptr %6, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  br label %16

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.tree_block, ptr %6, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  br label %16

15:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 8134, ptr noundef nonnull @.str.219) #23
  br label %16

16:                                               ; preds = %15, %12, %9
  %17 = phi ptr [ %6, %15 ], [ %14, %12 ], [ %11, %9 ]
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %5, !llvm.loop !262

19:                                               ; preds = %16, %5, %5
  br label %20

20:                                               ; preds = %5, %5, %5, %19, %1
  %21 = phi ptr [ null, %1 ], [ null, %19 ], [ %6, %5 ], [ %6, %5 ], [ %6, %5 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @get_callee_fndecl(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %38, label %4

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 59
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 8154, ptr noundef nonnull @.str.219) #23
  br label %9

9:                                                ; preds = %4, %8
  %10 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = tail call ptr @tree_strip_nop_conversions(ptr noundef %11) #24
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = add nsw i64 %14, -30
  %16 = icmp ult i64 %15, 11
  %17 = and i64 %13, 1572864
  %18 = icmp eq i64 %17, 1048576
  %19 = and i1 %18, %16
  br i1 %19, label %20, label %26

20:                                               ; preds = %9
  %21 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 5
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr %12, ptr %22
  %25 = load i64, ptr %24, align 8
  br label %26

26:                                               ; preds = %20, %9
  %27 = phi i64 [ %13, %9 ], [ %25, %20 ]
  %28 = phi ptr [ %12, %9 ], [ %24, %20 ]
  %29 = and i64 %27, 65535
  %30 = icmp eq i64 %29, 121
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_exp, ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 29
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %26
  br label %38

38:                                               ; preds = %31, %1, %37
  %39 = phi ptr [ null, %37 ], [ %0, %1 ], [ %33, %31 ]
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_tree_statistics() local_unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = tail call i64 @fwrite(ptr nonnull @.str.238, i64 25, i64 1, ptr %1) #26
  %3 = load ptr, ptr @stderr, align 8, !tbaa !6
  %4 = tail call i64 @fwrite(ptr nonnull @.str.239, i64 25, i64 1, ptr %3) #26
  tail call fastcc void @print_type_hash_statistics() #24
  tail call fastcc void @print_debug_expr_statistics() #24
  tail call fastcc void @print_value_expr_statistics() #24
  %5 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 17), align 8, !tbaa !263
  tail call void %5() #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_type_hash_statistics() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = load ptr, ptr @type_hash_table, align 8, !tbaa !6
  %3 = tail call i64 @htab_size(ptr noundef %2) #23
  %4 = load ptr, ptr @type_hash_table, align 8, !tbaa !6
  %5 = tail call i64 @htab_elements(ptr noundef %4) #23
  %6 = load ptr, ptr @type_hash_table, align 8, !tbaa !6
  %7 = tail call double @htab_collisions(ptr noundef %6) #23
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.240, i64 noundef %3, i64 noundef %5, double noundef %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_debug_expr_statistics() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = load ptr, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %3 = tail call i64 @htab_size(ptr noundef %2) #23
  %4 = load ptr, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %5 = tail call i64 @htab_elements(ptr noundef %4) #23
  %6 = load ptr, ptr @debug_expr_for_decl, align 8, !tbaa !6
  %7 = tail call double @htab_collisions(ptr noundef %6) #23
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.241, i64 noundef %3, i64 noundef %5, double noundef %7) #27
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_value_expr_statistics() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !6
  %2 = load ptr, ptr @value_expr_for_decl, align 8, !tbaa !6
  %3 = tail call i64 @htab_size(ptr noundef %2) #23
  %4 = load ptr, ptr @value_expr_for_decl, align 8, !tbaa !6
  %5 = tail call i64 @htab_elements(ptr noundef %4) #23
  %6 = load ptr, ptr @value_expr_for_decl, align 8, !tbaa !6
  %7 = tail call double @htab_collisions(ptr noundef %6) #23
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.242, i64 noundef %3, i64 noundef %5, double noundef %7) #27
  ret void
}

; Function Attrs: optsize
declare i64 @htab_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i64 @htab_elements(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare double @htab_collisions(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @crc32_string(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #11 {
  br label %3

3:                                                ; preds = %21, %2
  %4 = phi ptr [ %1, %2 ], [ %22, %21 ]
  %5 = phi i32 [ %0, %2 ], [ %18, %21 ]
  %6 = load i8, ptr %4, align 1, !tbaa !22
  %7 = sext i8 %6 to i32
  %8 = shl nsw i32 %7, 24
  br label %9

9:                                                ; preds = %3, %9
  %10 = phi i32 [ %5, %3 ], [ %18, %9 ]
  %11 = phi i32 [ 8, %3 ], [ %13, %9 ]
  %12 = phi i32 [ %8, %3 ], [ %19, %9 ]
  %13 = add nsw i32 %11, -1
  %14 = xor i32 %10, %12
  %15 = icmp slt i32 %14, 0
  %16 = select i1 %15, i32 79764919, i32 0
  %17 = shl i32 %10, 1
  %18 = xor i32 %16, %17
  %19 = shl i32 %12, 1
  %20 = icmp eq i32 %13, 0
  br i1 %20, label %21, label %9, !llvm.loop !264

21:                                               ; preds = %9
  %22 = getelementptr inbounds i8, ptr %4, i64 1
  %23 = icmp eq i8 %6, 0
  br i1 %23, label %24, label %3, !llvm.loop !265

24:                                               ; preds = %21
  ret i32 %18
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clean_symbol_name(ptr nocapture noundef %0) local_unnamed_addr #9 {
  %2 = load i8, ptr %0, align 1, !tbaa !22
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %19, label %4

4:                                                ; preds = %1, %15
  %5 = phi i8 [ %17, %15 ], [ %2, %1 ]
  %6 = phi ptr [ %16, %15 ], [ %0, %1 ]
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds [256 x i16], ptr @_sch_istable, i64 0, i64 %7
  %9 = load i16, ptr %8, align 2, !tbaa !266
  %10 = and i16 %9, 140
  %11 = icmp ne i16 %10, 0
  %12 = icmp eq i8 %5, 46
  %13 = or i1 %12, %11
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i8 95, ptr %6, align 1, !tbaa !22
  br label %15

15:                                               ; preds = %4, %14
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  %17 = load i8, ptr %16, align 1, !tbaa !22
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %4, !llvm.loop !267

19:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_file_function_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = alloca %struct.expanded_location, align 8
  %4 = load ptr, ptr @first_global_object_name, align 8, !tbaa !6
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  store ptr %4, ptr @libiberty_optr, align 8, !tbaa !6
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #24
  %8 = add i64 %7, 1
  store i64 %8, ptr @libiberty_len, align 8, !tbaa !63
  %9 = alloca i8, i64 %8, align 16
  store ptr %9, ptr @libiberty_nptr, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr nonnull align 1 %4, i64 %8, i1 false)
  br label %59

10:                                               ; preds = %1
  %11 = load i8, ptr %0, align 1, !tbaa !22
  %12 = icmp eq i8 %11, 73
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  %14 = icmp eq i8 %11, 68
  %15 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1
  %16 = icmp ne i8 %15, 0
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %21, label %36

18:                                               ; preds = %10
  %19 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 112), align 1, !tbaa !268
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %13, %18
  %22 = load ptr, ptr @main_input_filename, align 8, !tbaa !6
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, ptr @input_location, align 4, !tbaa !30
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %25) #24
  %26 = load ptr, ptr %2, align 8, !tbaa !269
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi ptr [ %22, %21 ], [ %26, %24 ]
  %29 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %28, i32 noundef 47) #24
  %30 = icmp eq ptr %29, null
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = select i1 %30, ptr %28, ptr %31
  store ptr %32, ptr @libiberty_optr, align 8, !tbaa !6
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #24
  %34 = add i64 %33, 1
  store i64 %34, ptr @libiberty_len, align 8, !tbaa !63
  %35 = alloca i8, i64 %34, align 16
  store ptr %35, ptr @libiberty_nptr, align 8, !tbaa !6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %35, ptr align 1 %32, i64 %34, i1 false)
  br label %59

36:                                               ; preds = %18, %13
  %37 = load ptr, ptr @weak_global_object_name, align 8, !tbaa !6
  %38 = load ptr, ptr @main_input_filename, align 8, !tbaa !6
  %39 = icmp eq ptr %37, null
  %40 = select i1 %39, ptr @.str.243, ptr %37
  %41 = icmp eq ptr %38, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, ptr @input_location, align 4, !tbaa !30
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %43) #24
  %44 = load ptr, ptr %3, align 8, !tbaa !269
  br label %45

45:                                               ; preds = %42, %36
  %46 = phi ptr [ %38, %36 ], [ %44, %42 ]
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %46) #24
  %48 = add i64 %47, 19
  %49 = and i64 %48, 4294967295
  %50 = alloca i8, i64 %49, align 16
  %51 = add i64 %47, 1
  %52 = and i64 %51, 4294967295
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %50, ptr align 1 %46, i64 %52, i1 false)
  %53 = and i64 %47, 4294967295
  %54 = getelementptr inbounds i8, ptr %50, i64 %53
  %55 = tail call i32 @crc32_string(i32 noundef 0, ptr noundef nonnull %40) #24
  %56 = tail call ptr @get_random_seed(i8 noundef zeroext 0) #23
  %57 = tail call i32 @crc32_string(i32 noundef 0, ptr noundef %56) #24
  %58 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(1) @.str.244, i32 noundef %55, i32 noundef %57) #24
  br label %59

59:                                               ; preds = %27, %45, %6
  %60 = phi ptr [ %9, %6 ], [ %35, %27 ], [ %50, %45 ]
  call void @clean_symbol_name(ptr noundef nonnull %60) #24
  %61 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #24
  %62 = add i64 %61, 15
  %63 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #24
  %64 = add i64 %62, %63
  %65 = alloca i8, i64 %64, align 16
  %66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %65, ptr noundef nonnull dereferenceable(1) @.str.245, ptr noundef %0, ptr noundef nonnull %60) #24
  %67 = call ptr @get_identifier(ptr noundef nonnull %65) #23
  ret ptr %67
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @get_random_seed(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @build_common_tree_nodes(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = tail call ptr @make_node_stat(i32 noundef 0) #24
  store ptr %3, ptr @global_trees, align 16, !tbaa !6
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  store ptr %3, ptr %4, align 8, !tbaa !22
  tail call void @initialize_sizetypes(i8 noundef zeroext %1) #23
  %5 = tail call ptr @make_signed_type(i32 noundef 8) #23
  store ptr %5, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8, !tbaa !6
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = or i32 %7, 16777216
  store i32 %8, ptr %6, align 4
  %9 = tail call ptr @make_unsigned_type(i32 noundef 8) #23
  store ptr %9, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16, !tbaa !6
  %10 = getelementptr inbounds %struct.tree_type, ptr %9, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = or i32 %11, 16777216
  store i32 %12, ptr %10, align 4
  %13 = icmp eq i8 %0, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = tail call ptr @make_signed_type(i32 noundef 8) #23
  br label %18

16:                                               ; preds = %2
  %17 = tail call ptr @make_unsigned_type(i32 noundef 8) #23
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  store ptr %19, ptr @integer_types, align 16, !tbaa !6
  %20 = getelementptr inbounds %struct.tree_type, ptr %19, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, 16777216
  store i32 %22, ptr %20, align 4
  %23 = tail call ptr @make_signed_type(i32 noundef 16) #23
  store ptr %23, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8, !tbaa !6
  %24 = tail call ptr @make_unsigned_type(i32 noundef 16) #23
  store ptr %24, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16, !tbaa !6
  %25 = tail call ptr @make_signed_type(i32 noundef 32) #23
  store ptr %25, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %26 = tail call ptr @make_unsigned_type(i32 noundef 32) #23
  store ptr %26, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16, !tbaa !6
  %27 = tail call ptr @make_signed_type(i32 noundef 32) #23
  store ptr %27, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 7), align 8, !tbaa !6
  %28 = tail call ptr @make_unsigned_type(i32 noundef 32) #23
  store ptr %28, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 8), align 16, !tbaa !6
  %29 = tail call ptr @make_signed_type(i32 noundef 64) #23
  store ptr %29, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8, !tbaa !6
  %30 = tail call ptr @make_unsigned_type(i32 noundef 64) #23
  store ptr %30, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16, !tbaa !6
  %31 = tail call ptr @make_unsigned_type(i32 noundef 8) #23
  store ptr %31, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, -65536
  %34 = or disjoint i64 %33, 7
  store i64 %34, ptr %31, align 8
  %35 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %36 = tail call ptr @build_int_cst(ptr noundef %35, i64 noundef 1) #24
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %38 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 14
  store ptr %36, ptr %38, align 8, !tbaa !22
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %40 = getelementptr inbounds %struct.tree_type, ptr %39, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -1024
  %43 = or disjoint i32 %42, 1
  store i32 %43, ptr %40, align 4
  %44 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 14), align 2, !tbaa !22
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 3
  %47 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %46, i32 noundef 0) #24
  store ptr %47, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 1), align 8, !tbaa !6
  %48 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 15), align 1, !tbaa !22
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 3
  %51 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %50, i32 noundef 0) #24
  store ptr %51, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 2), align 16, !tbaa !6
  %52 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !22
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 3
  %55 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %54, i32 noundef 0) #24
  store ptr %55, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 3), align 8, !tbaa !6
  %56 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !22
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 3
  %59 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %58, i32 noundef 0) #24
  store ptr %59, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 4), align 16, !tbaa !6
  %60 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 18), align 2, !tbaa !22
  %61 = zext i8 %60 to i32
  %62 = shl nuw nsw i32 %61, 3
  %63 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %62, i32 noundef 0) #24
  store ptr %63, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 5), align 8, !tbaa !6
  %64 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 14), align 2, !tbaa !22
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 3
  %67 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %66, i32 noundef 1) #24
  store ptr %67, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 6), align 16, !tbaa !6
  %68 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 15), align 1, !tbaa !22
  %69 = zext i8 %68 to i32
  %70 = shl nuw nsw i32 %69, 3
  %71 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %70, i32 noundef 1) #24
  store ptr %71, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 7), align 8, !tbaa !6
  %72 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 16), align 16, !tbaa !22
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 3
  %75 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %74, i32 noundef 1) #24
  store ptr %75, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 8), align 16, !tbaa !6
  %76 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 17), align 1, !tbaa !22
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 3
  %79 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %78, i32 noundef 1) #24
  store ptr %79, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 9), align 8, !tbaa !6
  %80 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 18), align 2, !tbaa !22
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 3
  %83 = tail call fastcc ptr @make_or_reuse_type(i32 noundef %82, i32 noundef 1) #24
  store ptr %83, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 10), align 16, !tbaa !6
  %84 = tail call ptr @get_identifier(ptr noundef nonnull @.str.246) #23
  store ptr %84, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 22), align 16, !tbaa !6
  %85 = tail call ptr @get_identifier(ptr noundef nonnull @.str.247) #23
  store ptr %85, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 23), align 8, !tbaa !6
  %86 = tail call ptr @get_identifier(ptr noundef nonnull @.str.203) #23
  store ptr %86, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 24), align 16, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare void @initialize_sizetypes(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_signed_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_or_reuse_type(i32 noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = add i32 %0, -8
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 29)
  %5 = icmp eq i32 %1, 0
  switch i32 %4, label %22 [
    i32 3, label %6
    i32 0, label %10
    i32 1, label %14
    i32 7, label %18
  ]

6:                                                ; preds = %2
  %7 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 6), align 16
  %8 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8
  %9 = select i1 %5, ptr %8, ptr %7
  br label %27

10:                                               ; preds = %2
  %11 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 2), align 16
  %12 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 1), align 8
  %13 = select i1 %5, ptr %12, ptr %11
  br label %27

14:                                               ; preds = %2
  %15 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 4), align 16
  %16 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 3), align 8
  %17 = select i1 %5, ptr %16, ptr %15
  br label %27

18:                                               ; preds = %2
  %19 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 10), align 16
  %20 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 9), align 8
  %21 = select i1 %5, ptr %20, ptr %19
  br label %27

22:                                               ; preds = %2
  br i1 %5, label %25, label %23

23:                                               ; preds = %22
  %24 = tail call ptr @make_unsigned_type(i32 noundef %0) #23
  br label %27

25:                                               ; preds = %22
  %26 = tail call ptr @make_signed_type(i32 noundef %0) #23
  br label %27

27:                                               ; preds = %25, %23, %18, %14, %10, %6
  %28 = phi ptr [ %9, %6 ], [ %13, %10 ], [ %17, %14 ], [ %21, %18 ], [ %24, %23 ], [ %26, %25 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @build_common_tree_nodes_2(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 0) #24
  store ptr %2, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 13), align 8, !tbaa !6
  %3 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef 1) #24
  store ptr %3, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !6
  %4 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef -1) #24
  store ptr %4, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 15), align 8, !tbaa !6
  %5 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 0) #23
  store ptr %5, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !6
  %6 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 0) #23
  store ptr %6, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 18), align 16, !tbaa !6
  %7 = tail call ptr @size_int_kind(i64 noundef 0, i32 noundef 2) #23
  store ptr %7, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 19), align 8, !tbaa !6
  %8 = tail call ptr @size_int_kind(i64 noundef 1, i32 noundef 2) #23
  store ptr %8, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 20), align 16, !tbaa !6
  %9 = tail call ptr @size_int_kind(i64 noundef 8, i32 noundef 2) #23
  store ptr %9, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 21), align 8, !tbaa !6
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !6
  %11 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  store ptr %12, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !6
  %13 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 14
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  store ptr %14, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !6
  %15 = tail call ptr @make_node_stat(i32 noundef 19) #24
  store ptr %15, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  tail call void @layout_type(ptr noundef %15) #23
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 7
  store i32 8, ptr %17, align 8, !tbaa !22
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, -4398046511105
  store i64 %20, ptr %18, align 8
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %22 = tail call ptr @build_pointer_type(ptr noundef %21) #24
  %23 = tail call ptr @build_int_cst(ptr noundef %22, i64 noundef 0) #24
  store ptr %23, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 16), align 16, !tbaa !6
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  tail call void @layout_type(ptr noundef %25) #23
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %27 = tail call ptr @build_pointer_type(ptr noundef %26) #24
  store ptr %27, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %29 = tail call ptr @build_qualified_type(ptr noundef %28, i32 noundef 1) #24
  %30 = tail call ptr @build_pointer_type(ptr noundef %29) #24
  store ptr %30, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !6
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  store ptr %31, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 48), align 16, !tbaa !6
  %32 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %32, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %33 = getelementptr inbounds %struct.tree_type, ptr %32, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, -1024
  %36 = or disjoint i32 %35, 32
  store i32 %36, ptr %33, align 4
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %37) #23
  %38 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %38, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  %39 = icmp eq i32 %0, 0
  %40 = getelementptr inbounds %struct.tree_type, ptr %38, i64 0, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, -1024
  %43 = select i1 %39, i32 64, i32 32
  %44 = or disjoint i32 %42, %43
  store i32 %44, ptr %40, align 4
  %45 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  tail call void @layout_type(ptr noundef %45) #23
  %46 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %46, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !6
  %47 = getelementptr inbounds %struct.tree_type, ptr %46, i64 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, -1024
  %50 = or disjoint i32 %49, 80
  store i32 %50, ptr %47, align 4
  %51 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %51) #23
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %53 = tail call ptr @build_pointer_type(ptr noundef %52) #24
  store ptr %53, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 34), align 16, !tbaa !6
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  %55 = tail call ptr @build_pointer_type(ptr noundef %54) #24
  store ptr %55, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 35), align 8, !tbaa !6
  %56 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !6
  %57 = tail call ptr @build_pointer_type(ptr noundef %56) #24
  store ptr %57, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 36), align 16, !tbaa !6
  %58 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %59 = tail call ptr @build_pointer_type(ptr noundef %58) #24
  store ptr %59, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 37), align 8, !tbaa !6
  %60 = tail call ptr @build_nonstandard_integer_type(i64 noundef 32, i32 noundef 1) #24
  store ptr %60, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 11), align 8, !tbaa !6
  %61 = tail call ptr @build_nonstandard_integer_type(i64 noundef 64, i32 noundef 1) #24
  store ptr %61, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 12), align 16, !tbaa !6
  %62 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %62, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !6
  %63 = getelementptr inbounds %struct.tree_type, ptr %62, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -1024
  %66 = or disjoint i32 %65, 32
  store i32 %66, ptr %63, align 4
  %67 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %67) #23
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !6
  %69 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -16711681
  %72 = or disjoint i32 %71, 2752512
  store i32 %72, ptr %69, align 4
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 49), align 8, !tbaa !6
  %74 = tail call ptr @build_pointer_type(ptr noundef %73) #24
  store ptr %74, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 52), align 16, !tbaa !6
  %75 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %75, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !6
  %76 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, -1024
  %79 = or disjoint i32 %78, 64
  store i32 %79, ptr %76, align 4
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !6
  tail call void @layout_type(ptr noundef %80) #23
  %81 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !6
  %82 = getelementptr inbounds %struct.tree_type, ptr %81, i64 0, i32 6
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, -16711681
  %85 = or disjoint i32 %84, 2818048
  store i32 %85, ptr %82, align 4
  %86 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 50), align 16, !tbaa !6
  %87 = tail call ptr @build_pointer_type(ptr noundef %86) #24
  store ptr %87, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 53), align 8, !tbaa !6
  %88 = tail call ptr @make_node_stat(i32 noundef 9) #24
  store ptr %88, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !6
  %89 = getelementptr inbounds %struct.tree_type, ptr %88, i64 0, i32 6
  %90 = load i32, ptr %89, align 4
  %91 = and i32 %90, -1024
  %92 = or disjoint i32 %91, 128
  store i32 %92, ptr %89, align 4
  %93 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !6
  tail call void @layout_type(ptr noundef %93) #23
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !6
  %95 = getelementptr inbounds %struct.tree_type, ptr %94, i64 0, i32 6
  %96 = load i32, ptr %95, align 4
  %97 = and i32 %96, -16711681
  %98 = or disjoint i32 %97, 2883584
  store i32 %98, ptr %95, align 4
  %99 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 51), align 8, !tbaa !6
  %100 = tail call ptr @build_pointer_type(ptr noundef %99) #24
  store ptr %100, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 54), align 16, !tbaa !6
  %101 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %102 = tail call ptr @build_complex_type(ptr noundef %101) #24
  store ptr %102, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 27), align 8, !tbaa !6
  %103 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 31), align 8, !tbaa !6
  %104 = tail call ptr @build_complex_type(ptr noundef %103) #24
  store ptr %104, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 28), align 16, !tbaa !6
  %105 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 32), align 16, !tbaa !6
  %106 = tail call ptr @build_complex_type(ptr noundef %105) #24
  store ptr %106, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 29), align 8, !tbaa !6
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 33), align 8, !tbaa !6
  %108 = tail call ptr @build_complex_type(ptr noundef %107) #24
  store ptr %108, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 30), align 16, !tbaa !6
  %109 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 0, i32 noundef 1) #23
  store ptr %109, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 57), align 8, !tbaa !6
  %110 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 1, i32 noundef 1) #23
  store ptr %110, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 61), align 8, !tbaa !6
  %111 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 0, i32 noundef 0) #23
  store ptr %111, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8, !tbaa !6
  %112 = tail call ptr @make_fract_type(i32 noundef 8, i32 noundef 1, i32 noundef 0) #23
  store ptr %112, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8, !tbaa !6
  %113 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 0, i32 noundef 1) #23
  store ptr %113, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 58), align 16, !tbaa !6
  %114 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 1, i32 noundef 1) #23
  store ptr %114, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 62), align 16, !tbaa !6
  %115 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 0, i32 noundef 0) #23
  store ptr %115, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16, !tbaa !6
  %116 = tail call ptr @make_fract_type(i32 noundef 16, i32 noundef 1, i32 noundef 0) #23
  store ptr %116, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16, !tbaa !6
  %117 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 0, i32 noundef 1) #23
  store ptr %117, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 59), align 8, !tbaa !6
  %118 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 1, i32 noundef 1) #23
  store ptr %118, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 63), align 8, !tbaa !6
  %119 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 0, i32 noundef 0) #23
  store ptr %119, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8, !tbaa !6
  %120 = tail call ptr @make_fract_type(i32 noundef 32, i32 noundef 1, i32 noundef 0) #23
  store ptr %120, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8, !tbaa !6
  %121 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 0, i32 noundef 1) #23
  store ptr %121, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 60), align 16, !tbaa !6
  %122 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 1, i32 noundef 1) #23
  store ptr %122, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 64), align 16, !tbaa !6
  %123 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 0, i32 noundef 0) #23
  store ptr %123, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16, !tbaa !6
  %124 = tail call ptr @make_fract_type(i32 noundef 64, i32 noundef 1, i32 noundef 0) #23
  store ptr %124, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16, !tbaa !6
  %125 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 0, i32 noundef 1) #23
  store ptr %125, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 73), align 8, !tbaa !6
  %126 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 1, i32 noundef 1) #23
  store ptr %126, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 77), align 8, !tbaa !6
  %127 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 0, i32 noundef 0) #23
  store ptr %127, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8, !tbaa !6
  %128 = tail call ptr @make_accum_type(i32 noundef 16, i32 noundef 1, i32 noundef 0) #23
  store ptr %128, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8, !tbaa !6
  %129 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 0, i32 noundef 1) #23
  store ptr %129, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 74), align 16, !tbaa !6
  %130 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 1, i32 noundef 1) #23
  store ptr %130, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 78), align 16, !tbaa !6
  %131 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 0, i32 noundef 0) #23
  store ptr %131, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16, !tbaa !6
  %132 = tail call ptr @make_accum_type(i32 noundef 32, i32 noundef 1, i32 noundef 0) #23
  store ptr %132, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16, !tbaa !6
  %133 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 0, i32 noundef 1) #23
  store ptr %133, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 75), align 8, !tbaa !6
  %134 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 1, i32 noundef 1) #23
  store ptr %134, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 79), align 8, !tbaa !6
  %135 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 0, i32 noundef 0) #23
  store ptr %135, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8, !tbaa !6
  %136 = tail call ptr @make_accum_type(i32 noundef 64, i32 noundef 1, i32 noundef 0) #23
  store ptr %136, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8, !tbaa !6
  %137 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 0, i32 noundef 1) #23
  store ptr %137, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 76), align 16, !tbaa !6
  %138 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 1, i32 noundef 1) #23
  store ptr %138, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 80), align 16, !tbaa !6
  %139 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 0, i32 noundef 0) #23
  store ptr %139, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16, !tbaa !6
  %140 = tail call ptr @make_accum_type(i32 noundef 128, i32 noundef 1, i32 noundef 0) #23
  store ptr %140, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16, !tbaa !6
  %141 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 20), align 4, !tbaa !22
  %142 = zext i8 %141 to i32
  %143 = shl nuw nsw i32 %142, 3
  %144 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %143, i32 noundef 0, i32 noundef 0) #24
  store ptr %144, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 89), align 8, !tbaa !6
  %145 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 25), align 1, !tbaa !22
  %146 = zext i8 %145 to i32
  %147 = shl nuw nsw i32 %146, 3
  %148 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %147, i32 noundef 1, i32 noundef 0) #24
  store ptr %148, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 94), align 16, !tbaa !6
  %149 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 20), align 4, !tbaa !22
  %150 = zext i8 %149 to i32
  %151 = shl nuw nsw i32 %150, 3
  %152 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %151, i32 noundef 0, i32 noundef 1) #24
  store ptr %152, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 99), align 8, !tbaa !6
  %153 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 25), align 1, !tbaa !22
  %154 = zext i8 %153 to i32
  %155 = shl nuw nsw i32 %154, 3
  %156 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %155, i32 noundef 1, i32 noundef 1) #24
  store ptr %156, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 104), align 16, !tbaa !6
  %157 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 21), align 1, !tbaa !22
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 %158, 3
  %160 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %159, i32 noundef 0, i32 noundef 0) #24
  store ptr %160, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 90), align 16, !tbaa !6
  %161 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 26), align 2, !tbaa !22
  %162 = zext i8 %161 to i32
  %163 = shl nuw nsw i32 %162, 3
  %164 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %163, i32 noundef 1, i32 noundef 0) #24
  store ptr %164, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 95), align 8, !tbaa !6
  %165 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 21), align 1, !tbaa !22
  %166 = zext i8 %165 to i32
  %167 = shl nuw nsw i32 %166, 3
  %168 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %167, i32 noundef 0, i32 noundef 1) #24
  store ptr %168, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 100), align 16, !tbaa !6
  %169 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 26), align 2, !tbaa !22
  %170 = zext i8 %169 to i32
  %171 = shl nuw nsw i32 %170, 3
  %172 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %171, i32 noundef 1, i32 noundef 1) #24
  store ptr %172, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 105), align 8, !tbaa !6
  %173 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 22), align 2, !tbaa !22
  %174 = zext i8 %173 to i32
  %175 = shl nuw nsw i32 %174, 3
  %176 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %175, i32 noundef 0, i32 noundef 0) #24
  store ptr %176, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 91), align 8, !tbaa !6
  %177 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 27), align 1, !tbaa !22
  %178 = zext i8 %177 to i32
  %179 = shl nuw nsw i32 %178, 3
  %180 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %179, i32 noundef 1, i32 noundef 0) #24
  store ptr %180, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 96), align 16, !tbaa !6
  %181 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 22), align 2, !tbaa !22
  %182 = zext i8 %181 to i32
  %183 = shl nuw nsw i32 %182, 3
  %184 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %183, i32 noundef 0, i32 noundef 1) #24
  store ptr %184, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 101), align 8, !tbaa !6
  %185 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 27), align 1, !tbaa !22
  %186 = zext i8 %185 to i32
  %187 = shl nuw nsw i32 %186, 3
  %188 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %187, i32 noundef 1, i32 noundef 1) #24
  store ptr %188, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 106), align 16, !tbaa !6
  %189 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 23), align 1, !tbaa !22
  %190 = zext i8 %189 to i32
  %191 = shl nuw nsw i32 %190, 3
  %192 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %191, i32 noundef 0, i32 noundef 0) #24
  store ptr %192, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 92), align 16, !tbaa !6
  %193 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 28), align 4, !tbaa !22
  %194 = zext i8 %193 to i32
  %195 = shl nuw nsw i32 %194, 3
  %196 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %195, i32 noundef 1, i32 noundef 0) #24
  store ptr %196, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 97), align 8, !tbaa !6
  %197 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 23), align 1, !tbaa !22
  %198 = zext i8 %197 to i32
  %199 = shl nuw nsw i32 %198, 3
  %200 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %199, i32 noundef 0, i32 noundef 1) #24
  store ptr %200, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 102), align 16, !tbaa !6
  %201 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 28), align 4, !tbaa !22
  %202 = zext i8 %201 to i32
  %203 = shl nuw nsw i32 %202, 3
  %204 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %203, i32 noundef 1, i32 noundef 1) #24
  store ptr %204, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 107), align 8, !tbaa !6
  %205 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 24), align 8, !tbaa !22
  %206 = zext i8 %205 to i32
  %207 = shl nuw nsw i32 %206, 3
  %208 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %207, i32 noundef 0, i32 noundef 0) #24
  store ptr %208, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 93), align 8, !tbaa !6
  %209 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 29), align 1, !tbaa !22
  %210 = zext i8 %209 to i32
  %211 = shl nuw nsw i32 %210, 3
  %212 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %211, i32 noundef 1, i32 noundef 0) #24
  store ptr %212, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 98), align 16, !tbaa !6
  %213 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 24), align 8, !tbaa !22
  %214 = zext i8 %213 to i32
  %215 = shl nuw nsw i32 %214, 3
  %216 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %215, i32 noundef 0, i32 noundef 1) #24
  store ptr %216, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 103), align 8, !tbaa !6
  %217 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 29), align 1, !tbaa !22
  %218 = zext i8 %217 to i32
  %219 = shl nuw nsw i32 %218, 3
  %220 = tail call fastcc ptr @make_or_reuse_fract_type(i32 noundef %219, i32 noundef 1, i32 noundef 1) #24
  store ptr %220, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 108), align 16, !tbaa !6
  %221 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 30), align 2, !tbaa !22
  %222 = zext i8 %221 to i32
  %223 = shl nuw nsw i32 %222, 3
  %224 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %223, i32 noundef 0, i32 noundef 0) #24
  store ptr %224, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 109), align 8, !tbaa !6
  %225 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 34), align 2, !tbaa !22
  %226 = zext i8 %225 to i32
  %227 = shl nuw nsw i32 %226, 3
  %228 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %227, i32 noundef 1, i32 noundef 0) #24
  store ptr %228, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 113), align 8, !tbaa !6
  %229 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 30), align 2, !tbaa !22
  %230 = zext i8 %229 to i32
  %231 = shl nuw nsw i32 %230, 3
  %232 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %231, i32 noundef 0, i32 noundef 1) #24
  store ptr %232, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 117), align 8, !tbaa !6
  %233 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 34), align 2, !tbaa !22
  %234 = zext i8 %233 to i32
  %235 = shl nuw nsw i32 %234, 3
  %236 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %235, i32 noundef 1, i32 noundef 1) #24
  store ptr %236, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 121), align 8, !tbaa !6
  %237 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 31), align 1, !tbaa !22
  %238 = zext i8 %237 to i32
  %239 = shl nuw nsw i32 %238, 3
  %240 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %239, i32 noundef 0, i32 noundef 0) #24
  store ptr %240, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 110), align 16, !tbaa !6
  %241 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 35), align 1, !tbaa !22
  %242 = zext i8 %241 to i32
  %243 = shl nuw nsw i32 %242, 3
  %244 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %243, i32 noundef 1, i32 noundef 0) #24
  store ptr %244, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 114), align 16, !tbaa !6
  %245 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 31), align 1, !tbaa !22
  %246 = zext i8 %245 to i32
  %247 = shl nuw nsw i32 %246, 3
  %248 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %247, i32 noundef 0, i32 noundef 1) #24
  store ptr %248, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 118), align 16, !tbaa !6
  %249 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 35), align 1, !tbaa !22
  %250 = zext i8 %249 to i32
  %251 = shl nuw nsw i32 %250, 3
  %252 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %251, i32 noundef 1, i32 noundef 1) #24
  store ptr %252, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 122), align 16, !tbaa !6
  %253 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 32), align 16, !tbaa !22
  %254 = zext i8 %253 to i32
  %255 = shl nuw nsw i32 %254, 3
  %256 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %255, i32 noundef 0, i32 noundef 0) #24
  store ptr %256, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 111), align 8, !tbaa !6
  %257 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 36), align 4, !tbaa !22
  %258 = zext i8 %257 to i32
  %259 = shl nuw nsw i32 %258, 3
  %260 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %259, i32 noundef 1, i32 noundef 0) #24
  store ptr %260, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 115), align 8, !tbaa !6
  %261 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 32), align 16, !tbaa !22
  %262 = zext i8 %261 to i32
  %263 = shl nuw nsw i32 %262, 3
  %264 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %263, i32 noundef 0, i32 noundef 1) #24
  store ptr %264, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 119), align 8, !tbaa !6
  %265 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 36), align 4, !tbaa !22
  %266 = zext i8 %265 to i32
  %267 = shl nuw nsw i32 %266, 3
  %268 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %267, i32 noundef 1, i32 noundef 1) #24
  store ptr %268, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 123), align 8, !tbaa !6
  %269 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 33), align 1, !tbaa !22
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 3
  %272 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %271, i32 noundef 0, i32 noundef 0) #24
  store ptr %272, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 112), align 16, !tbaa !6
  %273 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 37), align 1, !tbaa !22
  %274 = zext i8 %273 to i32
  %275 = shl nuw nsw i32 %274, 3
  %276 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %275, i32 noundef 1, i32 noundef 0) #24
  store ptr %276, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 116), align 16, !tbaa !6
  %277 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 33), align 1, !tbaa !22
  %278 = zext i8 %277 to i32
  %279 = shl nuw nsw i32 %278, 3
  %280 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %279, i32 noundef 0, i32 noundef 1) #24
  store ptr %280, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 120), align 16, !tbaa !6
  %281 = load i8, ptr getelementptr inbounds ([87 x i8], ptr @mode_size, i64 0, i64 37), align 1, !tbaa !22
  %282 = zext i8 %281 to i32
  %283 = shl nuw nsw i32 %282, 3
  %284 = tail call fastcc ptr @make_or_reuse_accum_type(i32 noundef %283, i32 noundef 1, i32 noundef 1) #24
  store ptr %284, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 124), align 16, !tbaa !6
  %285 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 69), align 8, !tbaa !271
  %286 = tail call ptr %285() #23
  %287 = load i64, ptr %286, align 8
  %288 = and i64 %287, 65535
  %289 = icmp eq i64 %288, 16
  br i1 %289, label %292, label %290

290:                                              ; preds = %1
  %291 = tail call ptr @build_variant_type_copy(ptr noundef nonnull %286) #24
  br label %292

292:                                              ; preds = %290, %1
  %293 = phi ptr [ %291, %290 ], [ %286, %1 ]
  store ptr %293, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 44), align 16, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @size_int_kind(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_fract_type(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_accum_type(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_or_reuse_fract_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = add i32 %0, -8
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 29)
  br i1 %4, label %28, label %7

7:                                                ; preds = %3
  switch i32 %6, label %49 [
    i32 0, label %8
    i32 1, label %13
    i32 3, label %18
    i32 7, label %23
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %1, 0
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 61), align 8
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 57), align 8
  %12 = select i1 %9, ptr %11, ptr %10
  br label %51

13:                                               ; preds = %7
  %14 = icmp eq i32 %1, 0
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 62), align 16
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 58), align 16
  %17 = select i1 %14, ptr %16, ptr %15
  br label %51

18:                                               ; preds = %7
  %19 = icmp eq i32 %1, 0
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 63), align 8
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 59), align 8
  %22 = select i1 %19, ptr %21, ptr %20
  br label %51

23:                                               ; preds = %7
  %24 = icmp eq i32 %1, 0
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 64), align 16
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 60), align 16
  %27 = select i1 %24, ptr %26, ptr %25
  br label %51

28:                                               ; preds = %3
  switch i32 %6, label %49 [
    i32 0, label %29
    i32 1, label %34
    i32 3, label %39
    i32 7, label %44
  ]

29:                                               ; preds = %28
  %30 = icmp eq i32 %1, 0
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 69), align 8
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 65), align 8
  %33 = select i1 %30, ptr %32, ptr %31
  br label %51

34:                                               ; preds = %28
  %35 = icmp eq i32 %1, 0
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 70), align 16
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 66), align 16
  %38 = select i1 %35, ptr %37, ptr %36
  br label %51

39:                                               ; preds = %28
  %40 = icmp eq i32 %1, 0
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 71), align 8
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 67), align 8
  %43 = select i1 %40, ptr %42, ptr %41
  br label %51

44:                                               ; preds = %28
  %45 = icmp eq i32 %1, 0
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 72), align 16
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 68), align 16
  %48 = select i1 %45, ptr %47, ptr %46
  br label %51

49:                                               ; preds = %28, %7
  %50 = tail call ptr @make_fract_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) #23
  br label %51

51:                                               ; preds = %49, %44, %39, %34, %29, %23, %18, %13, %8
  %52 = phi ptr [ %12, %8 ], [ %17, %13 ], [ %22, %18 ], [ %27, %23 ], [ %50, %49 ], [ %33, %29 ], [ %38, %34 ], [ %43, %39 ], [ %48, %44 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_or_reuse_accum_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %2, 0
  %5 = add i32 %0, -16
  %6 = tail call i32 @llvm.fshl.i32(i32 %5, i32 %5, i32 28)
  br i1 %4, label %28, label %7

7:                                                ; preds = %3
  switch i32 %6, label %49 [
    i32 0, label %8
    i32 1, label %13
    i32 3, label %18
    i32 7, label %23
  ]

8:                                                ; preds = %7
  %9 = icmp eq i32 %1, 0
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 77), align 8
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 73), align 8
  %12 = select i1 %9, ptr %11, ptr %10
  br label %51

13:                                               ; preds = %7
  %14 = icmp eq i32 %1, 0
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 78), align 16
  %16 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 74), align 16
  %17 = select i1 %14, ptr %16, ptr %15
  br label %51

18:                                               ; preds = %7
  %19 = icmp eq i32 %1, 0
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 79), align 8
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 75), align 8
  %22 = select i1 %19, ptr %21, ptr %20
  br label %51

23:                                               ; preds = %7
  %24 = icmp eq i32 %1, 0
  %25 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 80), align 16
  %26 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 76), align 16
  %27 = select i1 %24, ptr %26, ptr %25
  br label %51

28:                                               ; preds = %3
  switch i32 %6, label %49 [
    i32 0, label %29
    i32 1, label %34
    i32 3, label %39
    i32 7, label %44
  ]

29:                                               ; preds = %28
  %30 = icmp eq i32 %1, 0
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 85), align 8
  %32 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 81), align 8
  %33 = select i1 %30, ptr %32, ptr %31
  br label %51

34:                                               ; preds = %28
  %35 = icmp eq i32 %1, 0
  %36 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 86), align 16
  %37 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 82), align 16
  %38 = select i1 %35, ptr %37, ptr %36
  br label %51

39:                                               ; preds = %28
  %40 = icmp eq i32 %1, 0
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 87), align 8
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 83), align 8
  %43 = select i1 %40, ptr %42, ptr %41
  br label %51

44:                                               ; preds = %28
  %45 = icmp eq i32 %1, 0
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 88), align 16
  %47 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 84), align 16
  %48 = select i1 %45, ptr %47, ptr %46
  br label %51

49:                                               ; preds = %28, %7
  %50 = tail call ptr @make_accum_type(i32 noundef %0, i32 noundef %1, i32 noundef %2) #23
  br label %51

51:                                               ; preds = %49, %44, %39, %34, %29, %23, %18, %13, %8
  %52 = phi ptr [ %12, %8 ], [ %17, %13 ], [ %22, %18 ], [ %27, %23 ], [ %50, %49 ], [ %33, %29 ], [ %38, %34 ], [ %43, %39 ], [ %48, %44 ]
  ret ptr %52
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @build_common_builtin_nodes() local_unnamed_addr #0 {
  %1 = alloca [4 x i8], align 1
  %2 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 330), align 16, !tbaa !6
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 331), align 8
  %5 = icmp eq ptr %4, null
  %6 = select i1 %3, i1 true, i1 %5
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  %8 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !6
  %9 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %10 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %8, ptr noundef %9) #24
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !6
  %12 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %11, ptr noundef %10) #24
  %13 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %14 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %13, ptr noundef %12) #24
  %15 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %16 = tail call ptr @build_function_type(ptr noundef %15, ptr noundef %14) #24
  %17 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 330), align 16, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %7
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.248, ptr noundef %16, i32 noundef 330, ptr noundef nonnull @.str.249, i32 noundef 64) #24
  br label %20

20:                                               ; preds = %19, %7
  %21 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 331), align 8, !tbaa !6
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.250, ptr noundef %16, i32 noundef 331, ptr noundef nonnull @.str.251, i32 noundef 64) #24
  br label %24

24:                                               ; preds = %20, %23, %0
  %25 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 329), align 8, !tbaa !6
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !6
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %30 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %28, ptr noundef %29) #24
  %31 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !6
  %32 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %31, ptr noundef %30) #24
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 40), align 16, !tbaa !6
  %34 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %33, ptr noundef %32) #24
  %35 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %36 = tail call ptr @build_function_type(ptr noundef %35, ptr noundef %34) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.252, ptr noundef %36, i32 noundef 329, ptr noundef nonnull @.str.253, i32 noundef 66) #24
  br label %37

37:                                               ; preds = %27, %24
  %38 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 333), align 8, !tbaa !6
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !6
  %42 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %43 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %41, ptr noundef %42) #24
  %44 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %45 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %44, ptr noundef %43) #24
  %46 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %47 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %46, ptr noundef %45) #24
  %48 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %49 = tail call ptr @build_function_type(ptr noundef %48, ptr noundef %47) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.254, ptr noundef %49, i32 noundef 333, ptr noundef nonnull @.str.255, i32 noundef 64) #24
  br label %50

50:                                               ; preds = %40, %37
  %51 = load ptr, ptr getelementptr inbounds ([721 x ptr], ptr @built_in_decls, i64 0, i64 415), align 8, !tbaa !6
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !6
  %55 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %56 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %54, ptr noundef %55) #24
  %57 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %58 = tail call ptr @build_function_type(ptr noundef %57, ptr noundef %56) #24
  %59 = load i32, ptr @flag_stack_check, align 4, !tbaa !30
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 80, i32 16
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.256, ptr noundef %58, i32 noundef 415, ptr noundef nonnull @.str.257, i32 noundef %61) #24
  br label %62

62:                                               ; preds = %53, %50
  %63 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %64 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %65 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %63, ptr noundef %64) #24
  %66 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %67 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %66, ptr noundef %65) #24
  %68 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %69 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %68, ptr noundef %67) #24
  %70 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %71 = tail call ptr @build_function_type(ptr noundef %70, ptr noundef %69) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.258, ptr noundef %71, i32 noundef 520, ptr noundef nonnull @.str.258, i32 noundef 64) #24
  %72 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %73 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %74 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %72, ptr noundef %73) #24
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %76 = tail call ptr @build_function_type(ptr noundef %75, ptr noundef %74) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.259, ptr noundef %76, i32 noundef 521, ptr noundef nonnull @.str.259, i32 noundef 65) #24
  %77 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %78 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %79 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %77, ptr noundef %78) #24
  %80 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %81 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %80, ptr noundef %79) #24
  %82 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %83 = tail call ptr @build_function_type(ptr noundef %82, ptr noundef %81) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.260, ptr noundef %83, i32 noundef 522, ptr noundef nonnull @.str.260, i32 noundef 72) #24
  %84 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %85 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %86 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %84, ptr noundef %85) #24
  %87 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %88 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %87, ptr noundef %86) #24
  %89 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %90 = tail call ptr @build_function_type(ptr noundef %89, ptr noundef %88) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.261, ptr noundef %90, i32 noundef 523, ptr noundef nonnull @.str.261, i32 noundef 64) #24
  %91 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %92 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %93 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %91, ptr noundef %92) #24
  %94 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %95 = tail call ptr @build_function_type(ptr noundef %94, ptr noundef %93) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.262, ptr noundef %95, i32 noundef 524, ptr noundef nonnull @.str.262, i32 noundef 66) #24
  %96 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %97 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %98 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %96, ptr noundef %97) #24
  %99 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %100 = tail call ptr @build_function_type(ptr noundef %99, ptr noundef %98) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.263, ptr noundef %100, i32 noundef 525, ptr noundef nonnull @.str.263, i32 noundef 64) #24
  %101 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %102 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %103 = tail call ptr @build_function_type(ptr noundef %101, ptr noundef %102) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.264, ptr noundef %103, i32 noundef 526, ptr noundef nonnull @.str.264, i32 noundef 64) #24
  %104 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %105 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %106 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %104, ptr noundef %105) #24
  %107 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %108 = tail call ptr @build_function_type(ptr noundef %107, ptr noundef %106) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.265, ptr noundef %108, i32 noundef 527, ptr noundef nonnull @.str.265, i32 noundef 64) #24
  %109 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %110 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %111 = tail call ptr @build_function_type(ptr noundef %109, ptr noundef %110) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.266, ptr noundef %111, i32 noundef 546, ptr noundef nonnull @.str.267, i32 noundef 0) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.268, ptr noundef %111, i32 noundef 547, ptr noundef nonnull @.str.269, i32 noundef 0) #24
  %112 = load i8, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 120), align 1, !tbaa !272
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %62
  %115 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %116 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %117 = tail call ptr @build_function_type(ptr noundef %115, ptr noundef %116) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.270, ptr noundef %117, i32 noundef 551, ptr noundef nonnull @.str.271, i32 noundef 8) #24
  br label %118

118:                                              ; preds = %114, %62
  %119 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %120 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %121 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %119, ptr noundef %120) #24
  %122 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %123 = tail call ptr @build_function_type(ptr noundef %122, ptr noundef %121) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.272, ptr noundef %123, i32 noundef 550, ptr noundef nonnull @.str.273, i32 noundef 8) #24
  %124 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %125 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %126 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %124, ptr noundef %125) #24
  %127 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !6
  %128 = tail call ptr @build_function_type(ptr noundef %127, ptr noundef %126) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.274, ptr noundef %128, i32 noundef 552, ptr noundef nonnull @.str.274, i32 noundef 66) #24
  %129 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !273
  %130 = load ptr, ptr getelementptr inbounds (%struct.gcc_target, ptr @targetm, i64 0, i32 7), align 8, !tbaa !274
  %131 = tail call i32 %130() #23
  %132 = tail call ptr %129(i32 noundef %131, i32 noundef 0) #23
  %133 = tail call ptr @build_function_type(ptr noundef %132, ptr noundef %126) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.275, ptr noundef %133, i32 noundef 553, ptr noundef nonnull @.str.275, i32 noundef 66) #24
  %134 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %135 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %136 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %134, ptr noundef %135) #24
  %137 = load ptr, ptr getelementptr inbounds ([11 x ptr], ptr @integer_types, i64 0, i64 5), align 8, !tbaa !6
  %138 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %137, ptr noundef %136) #24
  %139 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %140 = tail call ptr @build_function_type(ptr noundef %139, ptr noundef %138) #24
  tail call fastcc void @local_define_builtin(ptr noundef nonnull @.str.276, ptr noundef %140, i32 noundef 554, ptr noundef nonnull @.str.276, i32 noundef 64) #24
  br label %141

141:                                              ; preds = %118, %181
  %142 = phi i64 [ 51, %118 ], [ %182, %181 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #25
  %143 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 2), align 8, !tbaa !273
  %144 = trunc i64 %142 to i32
  %145 = call ptr %143(i32 noundef %144, i32 noundef 0) #23
  %146 = icmp eq ptr %145, null
  br i1 %146, label %181, label %147

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.tree_common, ptr %145, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !22
  %150 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 55), align 8, !tbaa !6
  %151 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %149, ptr noundef %150) #24
  %152 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %149, ptr noundef %151) #24
  %153 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %149, ptr noundef %152) #24
  %154 = call ptr @tree_cons_stat(ptr noundef null, ptr noundef %149, ptr noundef %153) #24
  %155 = call ptr @build_function_type(ptr noundef nonnull %145, ptr noundef %154) #24
  %156 = add nuw nsw i64 %142, 662
  %157 = add nuw nsw i64 %142, 666
  %158 = getelementptr inbounds [87 x ptr], ptr @mode_name, i64 0, i64 %142
  %159 = load ptr, ptr %158, align 8, !tbaa !6
  %160 = load i8, ptr %159, align 1, !tbaa !22
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %173, label %162

162:                                              ; preds = %147, %162
  %163 = phi i8 [ %171, %162 ], [ %160, %147 ]
  %164 = phi ptr [ %170, %162 ], [ %1, %147 ]
  %165 = phi ptr [ %169, %162 ], [ %159, %147 ]
  %166 = zext i8 %163 to i64
  %167 = getelementptr inbounds [256 x i8], ptr @_sch_tolower, i64 0, i64 %166
  %168 = load i8, ptr %167, align 1, !tbaa !22
  store i8 %168, ptr %164, align 1, !tbaa !22
  %169 = getelementptr inbounds i8, ptr %165, i64 1
  %170 = getelementptr inbounds i8, ptr %164, i64 1
  %171 = load i8, ptr %169, align 1, !tbaa !22
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %162, !llvm.loop !275

173:                                              ; preds = %162, %147
  %174 = phi ptr [ %1, %147 ], [ %170, %162 ]
  store i8 0, ptr %174, align 1, !tbaa !22
  %175 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.277, ptr noundef nonnull %1, ptr noundef nonnull @.str.278, ptr noundef null) #23
  %176 = getelementptr inbounds [721 x ptr], ptr @built_in_names, i64 0, i64 %156
  store ptr %175, ptr %176, align 8, !tbaa !6
  %177 = trunc i64 %156 to i32
  call fastcc void @local_define_builtin(ptr noundef %175, ptr noundef %155, i32 noundef %177, ptr noundef %175, i32 noundef 65) #24
  %178 = call ptr (ptr, ...) @concat(ptr noundef nonnull @.str.279, ptr noundef nonnull %1, ptr noundef nonnull @.str.278, ptr noundef null) #23
  %179 = getelementptr inbounds [721 x ptr], ptr @built_in_names, i64 0, i64 %157
  store ptr %178, ptr %179, align 8, !tbaa !6
  %180 = trunc i64 %157 to i32
  call fastcc void @local_define_builtin(ptr noundef %178, ptr noundef %155, i32 noundef %180, ptr noundef %178, i32 noundef 65) #24
  br label %181

181:                                              ; preds = %141, %173
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #25
  %182 = add nuw nsw i64 %142, 1
  %183 = icmp eq i64 %182, 55
  br i1 %183, label %184, label %141, !llvm.loop !276

184:                                              ; preds = %181
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @local_define_builtin(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call ptr @add_builtin_function(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 3, ptr noundef %3, ptr noundef null) #23
  %7 = and i32 %4, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load i64, ptr %6, align 8
  %11 = or i64 %10, 1048576
  store i64 %11, ptr %6, align 8
  br label %12

12:                                               ; preds = %9, %5
  %13 = and i32 %4, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %17 = load i32, ptr %16, align 8
  %18 = or i32 %17, 134217728
  store i32 %18, ptr %16, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = and i32 %4, 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = or i32 %24, 268435456
  store i32 %25, ptr %23, align 8
  br label %26

26:                                               ; preds = %22, %19
  %27 = and i32 %4, 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i64, ptr %6, align 8
  %31 = or i64 %30, 524288
  store i64 %31, ptr %6, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = and i32 %4, 64
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i64, ptr %6, align 8
  %37 = or i64 %36, 33554432
  store i64 %37, ptr %6, align 8
  br label %38

38:                                               ; preds = %35, %32
  %39 = and i32 %4, 16
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.tree_function_decl, ptr %6, i64 0, i32 5
  %43 = load i32, ptr %42, align 8
  %44 = or i32 %43, 524288
  store i32 %44, ptr %42, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = zext i32 %2 to i64
  %47 = getelementptr inbounds [721 x ptr], ptr @built_in_decls, i64 0, i64 %46
  store ptr %6, ptr %47, align 8, !tbaa !6
  %48 = getelementptr inbounds [721 x ptr], ptr @implicit_built_in_decls, i64 0, i64 %46
  store ptr %6, ptr %48, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare ptr @concat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @add_builtin_function(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @reconstruct_complex_type(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %0, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %106 [
    i16 10, label %5
    i16 12, label %28
    i16 15, label %51
    i16 20, label %58
    i16 21, label %65
    i16 5, label %78
  ]

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call ptr @reconstruct_complex_type(ptr noundef %7, ptr noundef %1) #24
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 14
  br i1 %11, label %12, label %15

12:                                               ; preds = %5
  %13 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  %14 = load i64, ptr %0, align 8
  br label %20

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 255
  br label %20

20:                                               ; preds = %15, %12
  %21 = phi i64 [ %14, %12 ], [ %9, %15 ]
  %22 = phi i32 [ %13, %12 ], [ %19, %15 ]
  %23 = trunc i64 %21 to i32
  %24 = lshr i32 %23, 26
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = tail call ptr @build_pointer_type_for_mode(ptr noundef %8, i32 noundef %22, i8 noundef zeroext %26) #24
  br label %85

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = tail call ptr @reconstruct_complex_type(ptr noundef %30, ptr noundef %1) #24
  %32 = load i64, ptr %0, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 14
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = tail call i32 @vector_type_mode(ptr noundef nonnull %0) #23
  %37 = load i64, ptr %0, align 8
  br label %43

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %40, 16
  %42 = and i32 %41, 255
  br label %43

43:                                               ; preds = %38, %35
  %44 = phi i64 [ %37, %35 ], [ %32, %38 ]
  %45 = phi i32 [ %36, %35 ], [ %42, %38 ]
  %46 = trunc i64 %44 to i32
  %47 = lshr i32 %46, 26
  %48 = trunc i32 %47 to i8
  %49 = and i8 %48, 1
  %50 = tail call ptr @build_reference_type_for_mode(ptr noundef %31, i32 noundef %45, i8 noundef zeroext %49) #24
  br label %85

51:                                               ; preds = %2
  %52 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = tail call ptr @reconstruct_complex_type(ptr noundef %53, ptr noundef %1) #24
  %55 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = tail call ptr @build_array_type(ptr noundef %54, ptr noundef %56) #24
  br label %85

58:                                               ; preds = %2
  %59 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = tail call ptr @reconstruct_complex_type(ptr noundef %60, ptr noundef %1) #24
  %62 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = tail call ptr @build_function_type(ptr noundef %61, ptr noundef %63) #24
  br label %85

65:                                               ; preds = %2
  %66 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = tail call ptr @reconstruct_complex_type(ptr noundef %67, ptr noundef %1) #24
  %69 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !22
  %71 = getelementptr inbounds %struct.tree_list, ptr %70, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.tree_common, ptr %72, i64 0, i32 2
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = tail call ptr @build_method_type_directly(ptr noundef %74, ptr noundef %68, ptr noundef %76) #24
  br label %85

78:                                               ; preds = %2
  %79 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = tail call ptr @reconstruct_complex_type(ptr noundef %80, ptr noundef %1) #24
  %82 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %83 = load ptr, ptr %82, align 8, !tbaa !22
  %84 = tail call ptr @build_offset_type(ptr noundef %83, ptr noundef %81) #24
  br label %85

85:                                               ; preds = %43, %58, %78, %65, %51, %20
  %86 = phi ptr [ %27, %20 ], [ %50, %43 ], [ %57, %51 ], [ %64, %58 ], [ %77, %65 ], [ %84, %78 ]
  %87 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !22
  %89 = load i64, ptr %0, align 8
  %90 = trunc i64 %89 to i32
  %91 = lshr i32 %90, 20
  %92 = and i32 %91, 1
  %93 = lshr i32 %90, 18
  %94 = and i32 %93, 2
  %95 = or disjoint i32 %92, %94
  %96 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %97 = load i32, ptr %96, align 4
  %98 = lshr i32 %97, 11
  %99 = and i32 %98, 4
  %100 = or disjoint i32 %95, %99
  %101 = lshr i64 %89, 48
  %102 = trunc i64 %101 to i32
  %103 = and i32 %102, 65280
  %104 = or disjoint i32 %100, %103
  %105 = tail call ptr @build_type_attribute_qual_variant(ptr noundef %86, ptr noundef %88, i32 noundef %104) #24
  br label %106

106:                                              ; preds = %2, %85
  %107 = phi ptr [ %105, %85 ], [ %1, %2 ]
  ret ptr %107
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_vector_type_for_mode(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [87 x i8], ptr @mode_class, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !22
  switch i8 %5, label %33 [
    i8 12, label %6
    i8 17, label %6
    i8 13, label %6
    i8 14, label %6
    i8 15, label %6
    i8 16, label %6
    i8 2, label %10
  ]

6:                                                ; preds = %2, %2, %2, %2, %2, %2
  %7 = getelementptr inbounds [87 x i8], ptr @mode_nunits, i64 0, i64 %3
  %8 = load i8, ptr %7, align 1, !tbaa !22
  %9 = zext i8 %8 to i32
  br label %34

10:                                               ; preds = %2
  %11 = getelementptr inbounds [87 x i8], ptr @mode_size, i64 0, i64 %3
  %12 = load i8, ptr %11, align 1, !tbaa !22
  %13 = zext i8 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  %15 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !22
  %19 = urem i64 %14, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9268, ptr noundef nonnull @.str.219) #23
  %22 = load i8, ptr %11, align 1, !tbaa !22
  %23 = load ptr, ptr %15, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.tree_int_cst, ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !22
  %26 = zext i8 %22 to i64
  %27 = shl nuw nsw i64 %26, 3
  br label %28

28:                                               ; preds = %10, %21
  %29 = phi i64 [ %14, %10 ], [ %27, %21 ]
  %30 = phi i64 [ %18, %10 ], [ %25, %21 ]
  %31 = udiv i64 %29, %30
  %32 = trunc i64 %31 to i32
  br label %34

33:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9275, ptr noundef nonnull @.str.219) #23
  unreachable

34:                                               ; preds = %28, %6
  %35 = phi i32 [ %32, %28 ], [ %9, %6 ]
  %36 = tail call fastcc ptr @make_vector_type(ptr noundef %0, i32 noundef %35, i32 noundef %1) #24
  ret ptr %36
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_vector_type(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = tail call ptr @make_node_stat(i32 noundef 14) #24
  %5 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 16
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !22
  %8 = sext i32 %1 to i64
  %9 = tail call i32 @exact_log2(i64 noundef %8) #23
  %10 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 6
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %9, 1023
  %13 = and i32 %11, -16712704
  %14 = shl i32 %2, 16
  %15 = and i32 %14, 16711680
  %16 = or disjoint i32 %12, %15
  %17 = or disjoint i32 %16, %13
  store i32 %17, ptr %10, align 4
  %18 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 19
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %3
  %22 = icmp ne ptr %19, %0
  %23 = icmp ne i32 %2, 0
  %24 = or i1 %23, %22
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @make_vector_type(ptr noundef nonnull %19, i32 noundef %1, i32 noundef 0) #24
  br label %27

27:                                               ; preds = %3, %25
  %28 = phi ptr [ %26, %25 ], [ null, %3 ]
  %29 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 19
  store ptr %28, ptr %29, align 8, !tbaa !22
  br label %30

30:                                               ; preds = %27, %21
  tail call void @layout_type(ptr noundef nonnull %4) #23
  %31 = add nsw i32 %1, -1
  %32 = sext i32 %31 to i64
  %33 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %32) #24
  %34 = load ptr, ptr %5, align 8, !tbaa !22
  %35 = tail call ptr @build_index_type(ptr noundef %33) #24
  %36 = tail call ptr @build_array_type(ptr noundef %34, ptr noundef %35) #24
  %37 = tail call ptr @make_node_stat(i32 noundef 16) #24
  %38 = tail call ptr @get_identifier(ptr noundef nonnull @.str.280) #23
  %39 = tail call ptr @build_decl_stat(i32 noundef 0, i32 noundef 31, ptr noundef %38, ptr noundef %36) #24
  %40 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 1
  store ptr %39, ptr %40, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.tree_decl_minimal, ptr %39, i64 0, i32 4
  store ptr %37, ptr %41, align 8, !tbaa !22
  tail call void @layout_type(ptr noundef %37) #23
  %42 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 1
  store ptr %37, ptr %42, align 8, !tbaa !22
  %43 = getelementptr inbounds %struct.tree_type, ptr %4, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.tree_type, ptr %37, i64 0, i32 5
  store i32 %44, ptr %45, align 8, !tbaa !22
  %46 = tail call i32 @iterative_hash_host_wide_int(i64 noundef 14, i32 noundef 0) #24
  %47 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %8, i32 noundef %46) #24
  %48 = zext i32 %2 to i64
  %49 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %48, i32 noundef %47) #24
  %50 = load ptr, ptr %7, align 8, !tbaa !22
  %51 = getelementptr inbounds %struct.tree_type, ptr %50, i64 0, i32 5
  %52 = tail call i32 @iterative_hash(ptr noundef nonnull %51, i64 noundef 4, i32 noundef %49) #23
  %53 = tail call ptr @type_hash_canon(i32 noundef %52, ptr noundef nonnull %4) #24
  %54 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %75

57:                                               ; preds = %30
  %58 = load i64, ptr %0, align 8
  %59 = trunc i64 %58 to i32
  %60 = lshr i32 %59, 20
  %61 = and i32 %60, 1
  %62 = lshr i32 %59, 18
  %63 = and i32 %62, 2
  %64 = or disjoint i32 %61, %63
  %65 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = lshr i32 %66, 11
  %68 = and i32 %67, 4
  %69 = or disjoint i32 %64, %68
  %70 = lshr i64 %58, 48
  %71 = trunc i64 %70 to i32
  %72 = and i32 %71, 65280
  %73 = or disjoint i32 %69, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %97, label %75

75:                                               ; preds = %57, %30
  %76 = getelementptr inbounds %struct.tree_common, ptr %53, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !22
  %78 = icmp eq ptr %77, %0
  br i1 %78, label %97, label %79

79:                                               ; preds = %75
  %80 = load i64, ptr %0, align 8
  %81 = trunc i64 %80 to i32
  %82 = lshr i32 %81, 20
  %83 = and i32 %82, 1
  %84 = lshr i32 %81, 18
  %85 = and i32 %84, 2
  %86 = or disjoint i32 %83, %85
  %87 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 11
  %90 = and i32 %89, 4
  %91 = or disjoint i32 %86, %90
  %92 = lshr i64 %80, 48
  %93 = trunc i64 %92 to i32
  %94 = and i32 %93, 65280
  %95 = or disjoint i32 %91, %94
  %96 = tail call ptr @build_type_attribute_qual_variant(ptr noundef nonnull %53, ptr noundef %55, i32 noundef %95) #24
  br label %97

97:                                               ; preds = %57, %75, %79
  %98 = phi ptr [ %96, %79 ], [ %53, %75 ], [ %53, %57 ]
  ret ptr %98
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_vector_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call fastcc ptr @make_vector_type(ptr noundef %0, i32 noundef %1, i32 noundef 0) #24
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_opaque_vector_type(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @build_distinct_type_copy(ptr noundef %0) #24
  %4 = tail call fastcc ptr @make_vector_type(ptr noundef %3, i32 noundef %1, i32 noundef 0) #24
  %5 = load i64, ptr %4, align 8
  %6 = or i64 %5, 4294967296
  store i64 %6, ptr %4, align 8
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @initializer_zerop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %75 [
    i16 23, label %10
    i16 24, label %13
    i16 25, label %22
    i16 26, label %25
    i16 27, label %46
    i16 51, label %5
  ]

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_constructor, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %7) #24
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %75, label %66

10:                                               ; preds = %1
  %11 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #24, !range !23
  %12 = trunc i32 %11 to i8
  br label %75

13:                                               ; preds = %1
  %14 = tail call i32 @real_zerop(ptr noundef nonnull %2) #24, !range !23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.tree_real_cst, ptr %2, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = tail call zeroext i8 @real_isnegzero(ptr noundef %18) #23
  %20 = icmp eq i8 %19, 0
  %21 = zext i1 %20 to i8
  br label %75

22:                                               ; preds = %1
  %23 = tail call i32 @fixed_zerop(ptr noundef nonnull %2) #24, !range !23
  %24 = trunc i32 %23 to i8
  br label %75

25:                                               ; preds = %1
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %2) #24, !range !23
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %75

28:                                               ; preds = %25
  %29 = tail call i32 @real_zerop(ptr noundef nonnull %2) #24, !range !23
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %75, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = getelementptr inbounds %struct.tree_real_cst, ptr %33, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = tail call zeroext i8 @real_isnegzero(ptr noundef %35) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %75

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.tree_complex, ptr %2, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct.tree_real_cst, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = tail call zeroext i8 @real_isnegzero(ptr noundef %42) #23
  %44 = icmp eq i8 %43, 0
  %45 = zext i1 %44 to i8
  br label %75

46:                                               ; preds = %1
  %47 = getelementptr inbounds %struct.tree_vector, ptr %2, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %75, label %54

50:                                               ; preds = %54
  %51 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %75, label %54, !llvm.loop !277

54:                                               ; preds = %46, %50
  %55 = phi ptr [ %52, %50 ], [ %48, %46 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = tail call zeroext i8 @initializer_zerop(ptr noundef %57) #24, !range !76
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %75, label %50

60:                                               ; preds = %66
  %61 = add nuw nsw i64 %68, 1
  %62 = load ptr, ptr %6, align 8, !tbaa !22
  %63 = tail call fastcc i32 @VEC_constructor_elt_base_length(ptr noundef %62) #24
  %64 = zext i32 %63 to i64
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %75, !llvm.loop !278

66:                                               ; preds = %5, %60
  %67 = phi ptr [ %62, %60 ], [ %7, %5 ]
  %68 = phi i64 [ %61, %60 ], [ 0, %5 ]
  %69 = trunc i64 %68 to i32
  %70 = tail call fastcc ptr @VEC_constructor_elt_base_index(ptr noundef %67, i32 noundef %69) #24
  %71 = getelementptr inbounds %struct.constructor_elt_d, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !65
  %73 = tail call zeroext i8 @initializer_zerop(ptr noundef %72) #24, !range !76
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %60

75:                                               ; preds = %66, %60, %54, %50, %5, %46, %1, %25, %38, %31, %28, %13, %16, %22, %10
  %76 = phi i8 [ %24, %22 ], [ %12, %10 ], [ 0, %13 ], [ %21, %16 ], [ 1, %25 ], [ 0, %31 ], [ 0, %28 ], [ %45, %38 ], [ 0, %1 ], [ 1, %46 ], [ 1, %5 ], [ 0, %54 ], [ 1, %50 ], [ 0, %66 ], [ 1, %60 ]
  ret i8 %76
}

; Function Attrs: optsize
declare zeroext i8 @real_isnegzero(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_empty_stmt(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 17), align 8, !tbaa !6
  %4 = tail call ptr @build1_stat(i32 noundef 116, ptr noundef %2, ptr noundef %3) #24
  %5 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 1
  store i32 %0, ptr %5, align 8, !tbaa !22
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_omp_clause(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds [16 x i8], ptr @omp_clause_num_ops, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1, !tbaa !22
  %6 = zext i8 %5 to i64
  %7 = shl nuw nsw i64 %6, 3
  %8 = add nuw nsw i64 %7, 56
  %9 = tail call ptr @ggc_alloc_stat(i64 noundef %8) #23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %9, i8 0, i64 %8, i1 false)
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, -65536
  %12 = or disjoint i64 %11, 163
  store i64 %12, ptr %9, align 8
  %13 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 2
  store i32 %1, ptr %13, align 4, !tbaa !22
  %14 = getelementptr inbounds %struct.tree_omp_clause, ptr %9, i64 0, i32 1
  store i32 %0, ptr %14, align 8, !tbaa !22
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_call_list(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @list_length(ptr noundef %2) #24
  %5 = add nsw i32 %4, 3
  %6 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  store ptr %1, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = icmp eq ptr %2, null
  br i1 %10, label %22, label %11

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %20, %11 ], [ 0, %3 ]
  %13 = phi ptr [ %19, %11 ], [ %2, %3 ]
  %14 = getelementptr inbounds %struct.tree_list, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = add nuw nsw i64 %12, 3
  %17 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3, i64 %16
  store ptr %15, ptr %17, align 8, !tbaa !22
  %18 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = add nuw i64 %12, 1
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %11, !llvm.loop !279

22:                                               ; preds = %11, %3
  tail call fastcc void @process_call_operands(ptr noundef nonnull %6) #24
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_call_nary(ptr noundef %0, ptr noundef %1, i32 noundef %2, ...) local_unnamed_addr #0 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call ptr @build_call_valist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %4) #24
  call void @llvm.va_end(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_call_valist(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  %5 = add nsw i32 %2, 3
  %6 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %5) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  store ptr %0, ptr %7, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1
  store ptr %1, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 1, i32 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !22
  %10 = icmp sgt i32 %2, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %3, i64 0, i32 3
  %14 = zext nneg i32 %2 to i64
  br label %15

15:                                               ; preds = %11, %27
  %16 = phi i64 [ 0, %11 ], [ %32, %27 ]
  %17 = load i32, ptr %3, align 8
  %18 = icmp ult i32 %17, 41
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load ptr, ptr %13, align 8
  %21 = zext nneg i32 %17 to i64
  %22 = getelementptr i8, ptr %20, i64 %21
  %23 = add nuw nsw i32 %17, 8
  store i32 %23, ptr %3, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load ptr, ptr %12, align 8
  %26 = getelementptr i8, ptr %25, i64 8
  store ptr %26, ptr %12, align 8
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi ptr [ %22, %19 ], [ %25, %24 ]
  %29 = load ptr, ptr %28, align 8
  %30 = add nuw nsw i64 %16, 3
  %31 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3, i64 %30
  store ptr %29, ptr %31, align 8, !tbaa !22
  %32 = add nuw nsw i64 %16, 1
  %33 = icmp eq i64 %32, %14
  br i1 %33, label %34, label %15, !llvm.loop !280

34:                                               ; preds = %27, %4
  tail call fastcc void @process_call_operands(ptr noundef nonnull %6) #24
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_call_array_loc(i32 noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #0 {
  %6 = add nsw i32 %3, 3
  %7 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  store ptr %2, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !22
  %11 = icmp sgt i32 %3, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %5
  %13 = zext nneg i32 %3 to i64
  br label %14

14:                                               ; preds = %12, %14
  %15 = phi i64 [ 0, %12 ], [ %20, %14 ]
  %16 = getelementptr inbounds ptr, ptr %4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = add nuw nsw i64 %15, 3
  %19 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3, i64 %18
  store ptr %17, ptr %19, align 8, !tbaa !22
  %20 = add nuw nsw i64 %15, 1
  %21 = icmp eq i64 %20, %13
  br i1 %21, label %22, label %14, !llvm.loop !281

22:                                               ; preds = %14, %5
  tail call fastcc void @process_call_operands(ptr noundef nonnull %7) #24
  %23 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 1
  store i32 %0, ptr %23, align 8, !tbaa !22
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @build_call_vec(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = tail call fastcc i32 @VEC_tree_base_length(ptr noundef %2) #24
  %6 = add i32 %5, 3
  %7 = tail call ptr @build_vl_exp_stat(i32 noundef 59, i32 noundef %6) #24
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  store ptr %0, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1
  store ptr %1, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 1, i32 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !22
  %11 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %4) #24, !range !23
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %3, %13
  %14 = phi i32 [ %19, %13 ], [ 0, %3 ]
  %15 = load ptr, ptr %4, align 8, !tbaa !6
  %16 = add i32 %14, 3
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3, i64 %17
  store ptr %15, ptr %18, align 8, !tbaa !22
  %19 = add i32 %14, 1
  %20 = call fastcc i32 @VEC_tree_base_iterate(ptr noundef %2, i32 noundef %19, ptr noundef nonnull %4) #24, !range !23
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %13, !llvm.loop !282

22:                                               ; preds = %13, %3
  tail call fastcc void @process_call_operands(ptr noundef nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @in_array_bounds_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = load i64, ptr %3, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 23
  br i1 %6, label %7, label %28

7:                                                ; preds = %1
  %8 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #23
  %9 = tail call ptr @array_ref_up_bound(ptr noundef nonnull %0) #23
  %10 = icmp ne ptr %8, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %28

13:                                               ; preds = %7
  %14 = load i64, ptr %8, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = load i64, ptr %9, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %3, ptr noundef nonnull %8) #24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %9, ptr noundef nonnull %3) #24
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %24, %21, %7, %13, %17, %1
  %29 = phi i8 [ 0, %1 ], [ 0, %17 ], [ 0, %13 ], [ 0, %7 ], [ 0, %21 ], [ %27, %24 ]
  ret i8 %29
}

; Function Attrs: optsize
declare ptr @array_ref_low_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @array_ref_up_bound(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @range_in_array_bounds_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp ne ptr %7, null
  %11 = icmp ne ptr %9, null
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  %14 = load i64, ptr %7, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 23
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load i64, ptr %9, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 23
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = tail call ptr @array_ref_low_bound(ptr noundef nonnull %0) #23
  %23 = tail call ptr @array_ref_up_bound(ptr noundef nonnull %0) #23
  %24 = icmp ne ptr %22, null
  %25 = icmp ne ptr %23, null
  %26 = select i1 %24, i1 %25, i1 false
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i64, ptr %22, align 8
  %29 = and i64 %28, 65535
  %30 = icmp eq i64 %29, 23
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64, ptr %23, align 8
  %33 = and i64 %32, 65535
  %34 = icmp eq i64 %33, 23
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %7, ptr noundef nonnull %22) #24
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %23, ptr noundef nonnull %9) #24
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i8
  br label %42

42:                                               ; preds = %38, %35, %21, %27, %31, %1, %13, %17
  %43 = phi i8 [ 0, %17 ], [ 0, %13 ], [ 0, %1 ], [ 0, %31 ], [ 0, %27 ], [ 0, %21 ], [ 0, %35 ], [ %41, %38 ]
  ret i8 %43
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @needs_to_live_in_memory(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = load i64, ptr %7, align 8
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi i64 [ %8, %5 ], [ %2, %1 ]
  %11 = phi ptr [ %7, %5 ], [ %0, %1 ]
  %12 = and i64 %10, 262144
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %11) #24, !range !76
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = and i64 %10, 65535
  %19 = icmp eq i64 %18, 36
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %22 = tail call i32 @aggregate_value_p(ptr noundef nonnull %11, ptr noundef %21) #23
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i8
  br label %25

25:                                               ; preds = %17, %20, %14, %9
  %26 = phi i8 [ 1, %14 ], [ 1, %9 ], [ 0, %17 ], [ %24, %20 ]
  ret i8 %26
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = lshr i64 %7, 25
  %9 = trunc i64 %8 to i8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %5, %1
  %12 = phi i8 [ 1, %1 ], [ %10, %5 ]
  ret i8 %12
}

; Function Attrs: optsize
declare i32 @aggregate_value_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @fields_compatible_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = tail call i32 @operand_equal_p(ptr noundef %4, ptr noundef %6, i32 noundef 1) #23
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %24, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.tree_field_decl, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = tail call i32 @operand_equal_p(ptr noundef %11, ptr noundef %13, i32 noundef 1) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = tail call zeroext i8 @types_compatible_p(ptr noundef %18, ptr noundef %20) #23
  %22 = icmp ne i8 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %16, %9, %2
  %25 = phi i8 [ 0, %2 ], [ 0, %9 ], [ %23, %16 ]
  ret i8 %25
}

; Function Attrs: optsize
declare i32 @operand_equal_p(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_compatible_field(ptr nocapture noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %16, %14 ], [ %4, %2 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 31
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = tail call zeroext i8 @fields_compatible_p(ptr noundef nonnull %7, ptr noundef %1) #24, !range !76
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %6, %11
  %15 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %6, !llvm.loop !283

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i64, ptr %20, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 31
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = tail call zeroext i8 @fields_compatible_p(ptr noundef nonnull %20, ptr noundef %1) #24, !range !76
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %22, %18
  br label %30

30:                                               ; preds = %11, %26, %29
  %31 = phi ptr [ %1, %29 ], [ %20, %26 ], [ %7, %11 ]
  ret ptr %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @int_cst_value(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !22
  switch i64 %10, label %11 [
    i64 0, label %12
    i64 -1, label %12
  ]

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9651, ptr noundef nonnull @.str.219) #23
  br label %12

12:                                               ; preds = %1, %1, %11
  %13 = icmp ult i32 %6, 64
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = add nsw i32 %6, -1
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %8
  %19 = icmp eq i64 %18, 0
  %20 = shl i64 -2, %16
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = or i64 %20, %8
  br label %26

23:                                               ; preds = %14
  %24 = xor i64 %20, -1
  %25 = and i64 %8, %24
  br label %26

26:                                               ; preds = %21, %23, %12
  %27 = phi i64 [ %8, %12 ], [ %22, %21 ], [ %25, %23 ]
  ret i64 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i64 @widest_int_cst_value(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1023
  %7 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !22
  switch i64 %10, label %11 [
    i64 0, label %12
    i64 -1, label %12
  ]

11:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.218, i32 noundef 9680, ptr noundef nonnull @.str.219) #23
  br label %12

12:                                               ; preds = %1, %1, %11
  %13 = icmp ult i32 %6, 64
  br i1 %13, label %14, label %26

14:                                               ; preds = %12
  %15 = add nsw i32 %6, -1
  %16 = zext i32 %15 to i64
  %17 = shl nuw i64 1, %16
  %18 = and i64 %17, %8
  %19 = icmp eq i64 %18, 0
  %20 = shl i64 -2, %16
  br i1 %19, label %23, label %21

21:                                               ; preds = %14
  %22 = or i64 %20, %8
  br label %26

23:                                               ; preds = %14
  %24 = xor i64 %20, -1
  %25 = and i64 %8, %24
  br label %26

26:                                               ; preds = %21, %23, %12
  %27 = phi i64 [ %8, %12 ], [ %22, %21 ], [ %25, %23 ]
  ret i64 %27
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @signed_or_unsigned_type_for(i32 noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8
  %4 = trunc i64 %3 to i16
  switch i16 %4, label %13 [
    i16 10, label %5
    i16 12, label %5
  ]

5:                                                ; preds = %2, %2
  %6 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = load i64, ptr %7, align 8
  %9 = icmp ult i64 %8, 72057594037927936
  br i1 %9, label %10, label %24

10:                                               ; preds = %5
  %11 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 41), align 8, !tbaa !6
  %12 = load i64, ptr %11, align 8
  br label %13

13:                                               ; preds = %2, %10
  %14 = phi i64 [ %12, %10 ], [ %3, %2 ]
  %15 = phi ptr [ %11, %10 ], [ %1, %2 ]
  %16 = trunc i64 %14 to i32
  %17 = and i32 %16, 65535
  %18 = add nsw i32 %17, -6
  %19 = icmp ult i32 %18, 3
  br i1 %19, label %20, label %31

20:                                               ; preds = %13
  %21 = lshr i32 %16, 21
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, %0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20, %5
  %25 = phi ptr [ %1, %5 ], [ %15, %20 ]
  %26 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 34, i32 3), align 8, !tbaa !259
  %27 = getelementptr inbounds %struct.tree_type, ptr %25, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = tail call ptr %26(i32 noundef %29, i32 noundef %0) #23
  br label %31

31:                                               ; preds = %24, %13, %20
  %32 = phi ptr [ %15, %13 ], [ %15, %20 ], [ %30, %24 ]
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @unsigned_type_for(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @signed_or_unsigned_type_for(i32 noundef 1, ptr noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @signed_type_for(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @signed_or_unsigned_type_for(i32 noundef 0, ptr noundef %0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @upper_bound_in_type(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = icmp ugt i32 %5, %8
  %10 = select i1 %9, i32 4, i32 0
  %11 = load i64, ptr %0, align 8
  %12 = trunc i64 %11 to i32
  %13 = lshr i32 %12, 20
  %14 = and i32 %13, 2
  %15 = or disjoint i32 %14, %10
  %16 = load i64, ptr %1, align 8
  %17 = trunc i64 %16 to i32
  %18 = lshr i32 %17, 21
  %19 = and i32 %18, 1
  %20 = or disjoint i32 %15, %19
  switch i32 %20, label %27 [
    i32 0, label %21
    i32 1, label %21
    i32 2, label %28
    i32 3, label %28
    i32 4, label %23
    i32 5, label %25
    i32 6, label %28
    i32 7, label %26
  ]

21:                                               ; preds = %2, %2
  %22 = add nsw i32 %5, -1
  br label %28

23:                                               ; preds = %2
  %24 = add nsw i32 %8, -1
  br label %28

25:                                               ; preds = %2
  br label %28

26:                                               ; preds = %2
  br label %28

27:                                               ; preds = %2
  unreachable

28:                                               ; preds = %2, %2, %2, %26, %25, %23, %21
  %29 = phi i32 [ %8, %26 ], [ %8, %25 ], [ %24, %23 ], [ %22, %21 ], [ %5, %2 ], [ %5, %2 ], [ %5, %2 ]
  %30 = icmp ult i32 %29, 65
  %31 = sub nuw nsw i32 64, %29
  %32 = zext nneg i32 %31 to i64
  %33 = lshr i64 -1, %32
  %34 = sub nsw i32 128, %29
  %35 = zext nneg i32 %34 to i64
  %36 = lshr i64 -1, %35
  %37 = select i1 %30, i64 0, i64 %36
  %38 = select i1 %30, i64 %33, i64 -1
  %39 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %38, i64 noundef %37) #24
  ret ptr %39
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lower_bound_in_type(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 1023
  %6 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1023
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 2097152
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %2
  %13 = icmp ugt i32 %5, %8
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = load i64, ptr %1, align 8
  %16 = and i64 %15, 2097152
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %14, %12
  %19 = tail call i32 @llvm.umin.i32(i32 %5, i32 %8)
  %20 = icmp ult i32 %19, 65
  %21 = add nsw i32 %19, -1
  %22 = zext nneg i32 %21 to i64
  %23 = shl nsw i64 -1, %22
  %24 = add nsw i32 %19, -65
  %25 = zext nneg i32 %24 to i64
  %26 = shl nsw i64 -1, %25
  %27 = select i1 %20, i64 -1, i64 %26
  %28 = select i1 %20, i64 %23, i64 0
  br label %29

29:                                               ; preds = %2, %14, %18
  %30 = phi i64 [ %27, %18 ], [ 0, %14 ], [ 0, %2 ]
  %31 = phi i64 [ %28, %18 ], [ 0, %14 ], [ 0, %2 ]
  %32 = tail call ptr @build_int_cst_wide(ptr noundef nonnull %0, i64 noundef %31, i64 noundef %30) #24
  ret ptr %32
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @operand_equal_for_phi_arg_p(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %0, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %14, label %8

8:                                                ; preds = %4
  %9 = load i64, ptr %1, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  %13 = tail call i32 @operand_equal_p(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0) #23
  br label %14

14:                                               ; preds = %4, %8, %2, %12
  %15 = phi i32 [ %13, %12 ], [ 1, %2 ], [ 0, %8 ], [ 0, %4 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @num_ending_zeros(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !22
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.tree_int_cst, ptr %0, i64 0, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !22
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi i64 [ %5, %1 ], [ %9, %7 ]
  %12 = phi i32 [ 0, %1 ], [ 64, %7 ]
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %23, %13 ], [ %11, %10 ]
  %15 = phi i32 [ %24, %13 ], [ 32, %10 ]
  %16 = phi i32 [ %22, %13 ], [ %12, %10 ]
  %17 = zext nneg i32 %15 to i64
  %18 = lshr i64 %14, %17
  %19 = shl i64 %18, %17
  %20 = icmp eq i64 %19, %14
  %21 = select i1 %20, i32 %15, i32 0
  %22 = add i32 %21, %16
  %23 = select i1 %20, i64 %18, i64 %14
  %24 = lshr i32 %15, 1
  %25 = icmp ult i32 %15, 2
  br i1 %25, label %26, label %13, !llvm.loop !284

26:                                               ; preds = %13
  %27 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 1023
  %30 = tail call i32 @llvm.umin.i32(i32 %22, i32 %29)
  %31 = zext nneg i32 %30 to i64
  %32 = tail call ptr @build_int_cst_type(ptr noundef %3, i64 noundef %31) #24
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constructor_elt_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !68
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constructor_elt_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !6
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc { ptr, ptr } @tsi_start(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.tree_statement_list, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = insertvalue { ptr, ptr } poison, ptr %3, 0
  %5 = insertvalue { ptr, ptr } %4, ptr %0, 1
  ret { ptr, ptr } %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @tsi_end_p(ptr readnone %0) unnamed_addr #5 {
  %2 = icmp eq ptr %0, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @tsi_stmt_ptr(ptr readnone %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tree_statement_list_node, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @tsi_next(ptr nocapture noundef %0) unnamed_addr #15 {
  %2 = load ptr, ptr %0, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.tree_statement_list_node, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !287
  store ptr %4, ptr %0, align 8, !tbaa !285
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @walk_type_fields(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  %6 = load i64, ptr %0, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %82 [
    i16 10, label %8
    i16 12, label %8
    i16 13, label %34
    i16 21, label %38
    i16 20, label %42
    i16 15, label %59
    i16 5, label %74
  ]

8:                                                ; preds = %5, %5
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %34 [
    i16 10, label %13
    i16 12, label %13
  ]

13:                                               ; preds = %8, %8
  %14 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %34 [
    i16 10, label %18
    i16 12, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = load i64, ptr %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = icmp ne i32 %23, 12
  %27 = icmp ne ptr %3, null
  %28 = or i1 %27, %26
  br i1 %28, label %34, label %31

29:                                               ; preds = %18
  %30 = icmp eq ptr %3, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %29
  %32 = tail call ptr @walk_tree_without_duplicates_1(ptr noundef nonnull %9, ptr noundef %1, ptr noundef %2, ptr noundef null) #24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %82, label %83

34:                                               ; preds = %13, %8, %5, %29, %25
  %35 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %36 = tail call ptr @walk_tree_1(ptr noundef nonnull %35, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %82, label %83

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %40 = tail call ptr @walk_tree_1(ptr noundef nonnull %39, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %83

42:                                               ; preds = %5, %38
  %43 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %44 = tail call ptr @walk_tree_1(ptr noundef nonnull %43, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %83

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %82, label %54

50:                                               ; preds = %54
  %51 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp eq ptr %52, null
  br i1 %53, label %82, label %54, !llvm.loop !289

54:                                               ; preds = %46, %50
  %55 = phi ptr [ %52, %50 ], [ %48, %46 ]
  %56 = getelementptr inbounds %struct.tree_list, ptr %55, i64 0, i32 2
  %57 = tail call ptr @walk_tree_1(ptr noundef nonnull %56, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %50, label %83

59:                                               ; preds = %5
  %60 = icmp eq ptr %3, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !22
  %64 = load i64, ptr %63, align 8
  %65 = trunc i64 %64 to i16
  switch i16 %65, label %66 [
    i16 10, label %70
    i16 12, label %70
    i16 5, label %70
  ]

66:                                               ; preds = %61, %59
  %67 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %68 = tail call ptr @walk_tree_1(ptr noundef nonnull %67, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %83

70:                                               ; preds = %61, %61, %61, %66
  %71 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %72 = tail call ptr @walk_tree_1(ptr noundef nonnull %71, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %73 = icmp eq ptr %72, null
  br i1 %73, label %82, label %83

74:                                               ; preds = %5
  %75 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %76 = tail call ptr @walk_tree_1(ptr noundef nonnull %75, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 14
  %80 = tail call ptr @walk_tree_1(ptr noundef nonnull %79, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #24
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %50, %46, %5, %78, %70, %34, %31
  br label %83

83:                                               ; preds = %54, %78, %74, %70, %66, %42, %38, %34, %31, %82
  %84 = phi ptr [ null, %82 ], [ %32, %31 ], [ %36, %34 ], [ %40, %38 ], [ %44, %42 ], [ %68, %66 ], [ %72, %70 ], [ %76, %74 ], [ %80, %78 ], [ %57, %54 ]
  ret ptr %84
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @walk_tree_without_duplicates_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = tail call ptr @pointer_set_create() #23
  %6 = tail call ptr @walk_tree_1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %5, ptr noundef %3) #24
  tail call void @pointer_set_destroy(ptr noundef %5) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @call_expr_arglist(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_int_cst, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !22
  %6 = trunc i64 %5 to i32
  %7 = icmp sgt i32 %6, 3
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = add i64 %5, 4294967292
  %10 = and i64 %9, 4294967295
  br label %11

11:                                               ; preds = %8, %11
  %12 = phi i64 [ %10, %8 ], [ %18, %11 ]
  %13 = phi ptr [ null, %8 ], [ %17, %11 ]
  %14 = add nuw nsw i64 %12, 3
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %16, ptr noundef %13) #24
  %18 = add nsw i64 %12, -1
  %19 = icmp eq i64 %12, 0
  br i1 %19, label %20, label %11, !llvm.loop !290

20:                                               ; preds = %11, %1
  %21 = phi ptr [ null, %1 ], [ %17, %11 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @create_artificial_label(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !6
  %3 = tail call ptr @build_decl_stat(i32 noundef %0, i32 noundef 30, ptr noundef null, ptr noundef %2) #24
  %4 = getelementptr inbounds %struct.tree_decl_common, ptr %3, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = or i64 %5, 5120
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !6
  %8 = getelementptr inbounds %struct.tree_decl_minimal, ptr %3, i64 0, i32 4
  store ptr %7, ptr %8, align 8, !tbaa !22
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @get_name(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_strip_nop_conversions(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = add nsw i64 %4, -29
  %6 = icmp ult i64 %5, 12
  br i1 %6, label %7, label %15

7:                                                ; preds = %19, %1
  %8 = phi ptr [ %2, %1 ], [ %22, %19 ]
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.tree_identifier, ptr %10, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  br label %27

15:                                               ; preds = %1, %19
  %16 = phi i64 [ %24, %19 ], [ %4, %1 ]
  %17 = phi ptr [ %22, %19 ], [ %2, %1 ]
  %18 = icmp eq i64 %16, 121
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.tree_exp, ptr %17, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = tail call ptr @tree_strip_nop_conversions(ptr noundef %21) #24
  %23 = load i64, ptr %22, align 8
  %24 = and i64 %23, 65535
  %25 = add nsw i64 %24, -29
  %26 = icmp ult i64 %25, 12
  br i1 %26, label %7, label %15

27:                                               ; preds = %15, %7, %12
  %28 = phi ptr [ %14, %12 ], [ null, %7 ], [ null, %15 ]
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stdarg_p(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.function_args_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %3 = icmp eq ptr %0, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %1
  call fastcc void @function_args_iter_init(ptr noundef nonnull %2, ptr noundef nonnull %0) #24
  %5 = call fastcc ptr @function_args_iter_cond(ptr noundef nonnull %2) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %5, %4 ]
  call fastcc void @function_args_iter_next(ptr noundef nonnull %2) #24
  %9 = call fastcc ptr @function_args_iter_cond(ptr noundef nonnull %2) #24
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %7, !llvm.loop !291

11:                                               ; preds = %7, %4
  %12 = phi ptr [ null, %4 ], [ %8, %7 ]
  %13 = icmp ne ptr %12, null
  %14 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16
  %15 = icmp ne ptr %12, %14
  %16 = select i1 %13, i1 %15, i1 false
  %17 = zext i1 %16 to i8
  br label %18

18:                                               ; preds = %1, %11
  %19 = phi i8 [ %17, %11 ], [ 0, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret i8 %19
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @function_args_iter_init(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #10 {
  store ptr %1, ptr %0, align 8, !tbaa !285
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = getelementptr inbounds %struct.function_args_iterator, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !292
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @function_args_iter_cond(ptr nocapture noundef readonly %0) unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.function_args_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !292
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_list, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi ptr [ %7, %5 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @function_args_iter_next(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.function_args_iterator, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !292
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.281, i32 noundef 4670, ptr noundef nonnull @.str.219) #23
  %6 = load ptr, ptr %2, align 8, !tbaa !292
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %3, %1 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  store ptr %10, ptr %2, align 8, !tbaa !292
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @block_nonartificial_location(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %43, label %3

3:                                                ; preds = %1, %38
  %4 = phi ptr [ %39, %38 ], [ null, %1 ]
  %5 = phi ptr [ %41, %38 ], [ %0, %1 ]
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 4
  br i1 %8, label %9, label %43

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %43, label %13

13:                                               ; preds = %9, %18
  %14 = phi ptr [ %20, %18 ], [ %11, %9 ]
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 4
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.tree_block, ptr %14, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  %22 = icmp eq ptr %20, %14
  %23 = or i1 %21, %22
  br i1 %23, label %24, label %13, !llvm.loop !293

24:                                               ; preds = %18, %13
  %25 = trunc i64 %15 to i16
  switch i16 %25, label %43 [
    i16 29, label %26
    i16 4, label %38
  ]

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.tree_function_decl, ptr %14, i64 0, i32 5
  %28 = load i32, ptr %27, align 8
  %29 = and i32 %28, 2097152
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %14, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.282, ptr noundef %33) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 2
  br label %38

38:                                               ; preds = %36, %24
  %39 = phi ptr [ %37, %36 ], [ %4, %24 ]
  %40 = getelementptr inbounds %struct.tree_block, ptr %5, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %3

43:                                               ; preds = %9, %38, %3, %31, %26, %24, %1
  %44 = phi ptr [ null, %1 ], [ %4, %24 ], [ %4, %26 ], [ %4, %31 ], [ %4, %3 ], [ %39, %38 ], [ %4, %9 ]
  ret ptr %44
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local i32 @tree_nonartificial_location(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call ptr @tree_block(ptr noundef %0) #24
  %3 = load ptr, ptr %2, align 8, !tbaa !6
  %4 = tail call ptr @block_nonartificial_location(ptr noundef %3) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i32, ptr %4, align 4, !tbaa !30
  br label %17

8:                                                ; preds = %1
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = getelementptr inbounds [191 x i32], ptr @tree_code_type, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !30
  %13 = icmp ugt i32 %12, 3
  br i1 %13, label %14, label %17

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !22
  br label %17

17:                                               ; preds = %14, %8, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %14 ], [ 0, %8 ]
  ret i32 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_optimization_node() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cl_optimization_node, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_optimization_option, ptr %1, i64 0, i32 1
  tail call void @cl_optimization_save(ptr noundef nonnull %2) #23
  %3 = load ptr, ptr @cl_option_hash_table, align 8, !tbaa !6
  %4 = load ptr, ptr @cl_optimization_node, align 8, !tbaa !6
  %5 = tail call ptr @htab_find_slot(ptr noundef %3, ptr noundef %4, i32 noundef 1) #23
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @cl_optimization_node, align 8, !tbaa !6
  store ptr %9, ptr %5, align 8, !tbaa !6
  %10 = tail call ptr @make_node_stat(i32 noundef 186) #24
  store ptr %10, ptr @cl_optimization_node, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi ptr [ %6, %0 ], [ %9, %8 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @cl_optimization_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @build_target_option_node() local_unnamed_addr #0 {
  %1 = load ptr, ptr @cl_target_option_node, align 8, !tbaa !6
  %2 = getelementptr inbounds %struct.tree_target_option, ptr %1, i64 0, i32 1
  tail call void @cl_target_option_save(ptr noundef nonnull %2) #23
  %3 = load ptr, ptr @cl_option_hash_table, align 8, !tbaa !6
  %4 = load ptr, ptr @cl_target_option_node, align 8, !tbaa !6
  %5 = tail call ptr @htab_find_slot(ptr noundef %3, ptr noundef %4, i32 noundef 1) #23
  %6 = load ptr, ptr %5, align 8, !tbaa !6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @cl_target_option_node, align 8, !tbaa !6
  store ptr %9, ptr %5, align 8, !tbaa !6
  %10 = tail call ptr @make_node_stat(i32 noundef 187) #24
  store ptr %10, ptr @cl_target_option_node, align 8, !tbaa !6
  br label %11

11:                                               ; preds = %8, %0
  %12 = phi ptr [ %6, %0 ], [ %9, %8 ]
  ret ptr %12
}

; Function Attrs: optsize
declare void @cl_target_option_save(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @block_ultimate_origin(ptr noundef readonly %0) local_unnamed_addr #11 {
  %2 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  %8 = icmp eq ptr %3, %0
  %9 = select i1 %7, i1 %8, i1 false
  %10 = icmp eq ptr %3, null
  %11 = select i1 %9, i1 true, i1 %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %1, %17
  %13 = phi ptr [ %19, %17 ], [ %3, %1 ]
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 65535
  %16 = icmp eq i64 %15, 4
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.tree_block, ptr %13, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp ne ptr %19, null
  %21 = icmp ne ptr %19, %13
  %22 = and i1 %20, %21
  br i1 %22, label %12, label %31, !llvm.loop !294

23:                                               ; preds = %12
  %24 = add nsw i64 %15, -29
  %25 = icmp ult i64 %24, 12
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  %30 = select i1 %29, ptr %13, ptr %28
  br label %31

31:                                               ; preds = %17, %26, %23, %1
  %32 = phi ptr [ null, %1 ], [ %30, %26 ], [ %13, %23 ], [ %13, %17 ]
  ret ptr %32
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @list_equal_p(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %22

6:                                                ; preds = %2, %14
  %7 = phi ptr [ %18, %14 ], [ %1, %2 ]
  %8 = phi ptr [ %16, %14 ], [ %0, %2 ]
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = getelementptr inbounds %struct.tree_list, ptr %7, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp ne ptr %16, null
  %20 = icmp ne ptr %18, null
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %6, label %22, !llvm.loop !295

22:                                               ; preds = %14, %2
  %23 = phi i1 [ %3, %2 ], [ %19, %14 ]
  %24 = phi i1 [ %4, %2 ], [ %20, %14 ]
  %25 = select i1 %23, i1 true, i1 %24
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i8
  br label %28

28:                                               ; preds = %6, %22
  %29 = phi i8 [ %27, %22 ], [ 0, %6 ]
  ret i8 %29
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_nop_conversion(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %52 [
    i16 116, label %4
    i16 113, label %4
    i16 117, label %4
  ]

4:                                                ; preds = %1, %1, %1
  %5 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = load ptr, ptr @global_trees, align 16, !tbaa !6
  %8 = icmp eq ptr %6, %7
  br i1 %8, label %52, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = load i64, ptr %11, align 8
  %15 = trunc i64 %14 to i16
  switch i16 %15, label %27 [
    i16 6, label %16
    i16 7, label %16
    i16 8, label %16
    i16 10, label %16
    i16 12, label %16
    i16 5, label %16
  ]

16:                                               ; preds = %9, %9, %9, %9, %9, %9
  %17 = load i64, ptr %13, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %27 [
    i16 6, label %19
    i16 7, label %19
    i16 8, label %19
    i16 10, label %19
    i16 12, label %19
    i16 5, label %19
  ]

19:                                               ; preds = %16, %16, %16, %16, %16, %16
  %20 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = xor i32 %23, %21
  %25 = and i32 %24, 1023
  %26 = icmp eq i32 %25, 0
  br label %52

27:                                               ; preds = %16, %9
  %28 = and i64 %14, 65535
  %29 = icmp eq i64 %28, 14
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = tail call i32 @vector_type_mode(ptr noundef nonnull %11) #23
  br label %37

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tree_type, ptr %11, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  br label %37

37:                                               ; preds = %32, %30
  %38 = phi i32 [ %31, %30 ], [ %36, %32 ]
  %39 = load i64, ptr %13, align 8
  %40 = and i64 %39, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %13) #23
  br label %49

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %13, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = icmp eq i32 %38, %50
  br label %52

52:                                               ; preds = %4, %1, %49, %19
  %53 = phi i1 [ %26, %19 ], [ %51, %49 ], [ false, %1 ], [ false, %4 ]
  %54 = zext i1 %53 to i8
  ret i8 %54
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef ptr @tree_strip_sign_nop_conversions(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @tree_sign_nop_conversion(ptr noundef %0) #24, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1, %4
  %5 = phi ptr [ %7, %4 ], [ %0, %1 ]
  %6 = getelementptr inbounds %struct.tree_exp, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = tail call fastcc zeroext i8 @tree_sign_nop_conversion(ptr noundef %7) #24, !range !76
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %4, !llvm.loop !296

10:                                               ; preds = %4, %1
  %11 = phi ptr [ %0, %1 ], [ %7, %4 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @tree_sign_nop_conversion(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call fastcc zeroext i8 @tree_nop_conversion(ptr noundef %0) #24, !range !76
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = load i64, ptr %6, align 8
  %12 = load i64, ptr %10, align 8
  %13 = xor i64 %12, %11
  %14 = and i64 %13, 2097152
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %30

16:                                               ; preds = %4
  %17 = trunc i64 %11 to i32
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 10
  %20 = icmp eq i32 %18, 12
  %21 = or i1 %19, %20
  %22 = trunc i64 %12 to i32
  %23 = and i32 %22, 65535
  %24 = icmp eq i32 %23, 10
  %25 = icmp eq i32 %23, 12
  %26 = or i1 %24, %25
  %27 = xor i1 %21, %26
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i8
  br label %30

30:                                               ; preds = %4, %16, %1
  %31 = phi i8 [ 0, %1 ], [ 0, %4 ], [ %29, %16 ]
  ret i8 %31
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @lhd_gcc_personality() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gcc_eh_personality_decl, align 8, !tbaa !6
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call ptr @build_personality_function(ptr noundef nonnull @.str.283) #23
  store ptr %4, ptr @gcc_eh_personality_decl, align 8, !tbaa !6
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi ptr [ %4, %3 ], [ %1, %0 ]
  ret ptr %6
}

; Function Attrs: optsize
declare ptr @build_personality_function(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_mx_type_hash(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.type_hash, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !21
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @gt_ggc_mx_lang_tree_node(ptr noundef nonnull %8) #23
  br label %11

11:                                               ; preds = %1, %6, %10, %3
  ret void
}

; Function Attrs: optsize
declare i32 @ggc_set_mark(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gt_ggc_mx_lang_tree_node(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_ggc_m_P9type_hash4htab(ptr noundef %0) #0 {
  %2 = icmp ult ptr %0, inttoptr (i64 2 to ptr)
  br i1 %2, label %34, label %3

3:                                                ; preds = %1
  %4 = tail call i32 @ggc_set_mark(ptr noundef nonnull %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !297
  %9 = icmp eq ptr %8, null
  br i1 %9, label %34, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %12 = load i64, ptr %11, align 8, !tbaa !299
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %10, %23
  %15 = phi i64 [ %24, %23 ], [ %12, %10 ]
  %16 = phi i64 [ %25, %23 ], [ 0, %10 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !297
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  tail call void @gt_ggc_mx_type_hash(ptr noundef nonnull %19) #24
  %22 = load i64, ptr %11, align 8, !tbaa !299
  br label %23

23:                                               ; preds = %14, %21
  %24 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %25 = add i64 %16, 1
  %26 = icmp eq i64 %25, %24
  br i1 %26, label %27, label %14, !llvm.loop !300

27:                                               ; preds = %23
  %28 = load ptr, ptr %7, align 8, !tbaa !297
  br label %29

29:                                               ; preds = %27, %10
  %30 = phi ptr [ %28, %27 ], [ %8, %10 ]
  %31 = icmp ult ptr %30, inttoptr (i64 2 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @ggc_set_mark(ptr noundef nonnull %30) #23
  br label %34

34:                                               ; preds = %29, %1, %32, %6, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_nx_type_hash(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_9type_hash, i32 noundef 60) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.type_hash, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !21
  %7 = icmp eq ptr %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  tail call void @gt_pch_nx_lang_tree_node(ptr noundef nonnull %6) #23
  br label %9

9:                                                ; preds = %4, %8, %1
  ret void
}

; Function Attrs: optsize
declare i32 @gt_pch_note_object(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_9type_hash(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = icmp eq ptr %1, %0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.type_hash, ptr %1, i64 0, i32 1
  tail call void %2(ptr noundef nonnull %7, ptr noundef %3) #23
  br label %8

8:                                                ; preds = %6, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_pch_nx_lang_tree_node(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_n_P9type_hash4htab(ptr noundef %0) #0 {
  %2 = tail call i32 @gt_pch_note_object(ptr noundef %0, ptr noundef %0, ptr noundef nonnull @gt_pch_p_P9type_hash4htab, i32 noundef 197) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %30, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %0, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !299
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %27, label %12

12:                                               ; preds = %8, %21
  %13 = phi i64 [ %22, %21 ], [ %10, %8 ]
  %14 = phi i64 [ %23, %21 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !297
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !6
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %12
  tail call void @gt_pch_nx_type_hash(ptr noundef nonnull %17) #24
  %20 = load i64, ptr %9, align 8, !tbaa !299
  br label %21

21:                                               ; preds = %12, %19
  %22 = phi i64 [ %13, %12 ], [ %20, %19 ]
  %23 = add i64 %14, 1
  %24 = icmp eq i64 %23, %22
  br i1 %24, label %25, label %12, !llvm.loop !301

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !tbaa !297
  br label %27

27:                                               ; preds = %25, %8
  %28 = phi ptr [ %26, %25 ], [ %6, %8 ]
  %29 = tail call i32 @gt_pch_note_object(ptr noundef %28, ptr noundef nonnull %0, ptr noundef nonnull @gt_pch_p_P9type_hash4htab, i32 noundef 217) #23
  br label %30

30:                                               ; preds = %4, %27, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gt_pch_p_P9type_hash4htab(ptr noundef readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) #0 {
  %5 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !297
  %7 = icmp eq ptr %6, null
  br i1 %7, label %27, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.htab, ptr %1, i64 0, i32 4
  %10 = load i64, ptr %9, align 8, !tbaa !299
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8, %20
  %13 = phi i64 [ %21, %20 ], [ %10, %8 ]
  %14 = phi i64 [ %22, %20 ], [ 0, %8 ]
  %15 = load ptr, ptr %5, align 8, !tbaa !297
  %16 = icmp eq ptr %15, %0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = getelementptr inbounds ptr, ptr %0, i64 %14
  tail call void %2(ptr noundef %18, ptr noundef %3) #23
  %19 = load i64, ptr %9, align 8, !tbaa !299
  br label %20

20:                                               ; preds = %12, %17
  %21 = phi i64 [ %13, %12 ], [ %19, %17 ]
  %22 = add i64 %14, 1
  %23 = icmp eq i64 %22, %21
  br i1 %23, label %24, label %12, !llvm.loop !302

24:                                               ; preds = %20, %8
  %25 = icmp eq ptr %1, %0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  tail call void %2(ptr noundef nonnull %5, ptr noundef %3) #23
  br label %27

27:                                               ; preds = %24, %26, %4
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_tree_priority_map(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_tree_priority_map(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_mx_tree_map(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_nx_tree_map(ptr noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @type_hash_marked_p(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.type_hash, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !21
  %4 = tail call i32 @ggc_marked_p(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_type, ptr %3, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i32
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i32 [ 1, %1 ], [ %10, %6 ]
  ret i32 %12
}

; Function Attrs: optsize
declare void @gt_ggc_m_P17tree_priority_map4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_n_P17tree_priority_map4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_ggc_m_P9tree_node4htab(ptr noundef) #1

; Function Attrs: optsize
declare void @gt_pch_n_P9tree_node4htab(ptr noundef) #1

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i21 @llvm.bitreverse.i21(i21) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind willreturn memory(argmem: read) }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }
attributes #26 = { cold }
attributes #27 = { cold optsize }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"openmp", i32 51}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !7, i64 640}
!11 = !{!"lang_hooks", !7, i64 0, !12, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !13, i64 240, !14, i64 248, !15, i64 256, !16, i64 272, !17, i64 432, !18, i64 560, !7, i64 584, !7, i64 592, !7, i64 600, !7, i64 608, !7, i64 616, !7, i64 624, !7, i64 632, !7, i64 640, !7, i64 648, !7, i64 656, !7, i64 664, !8, i64 672}
!12 = !{!"long", !8, i64 0}
!13 = !{!"lang_hooks_for_tree_inlining", !7, i64 0}
!14 = !{!"lang_hooks_for_callgraph", !7, i64 0}
!15 = !{!"lang_hooks_for_tree_dump", !7, i64 0, !7, i64 8}
!16 = !{!"lang_hooks_for_decls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152}
!17 = !{!"lang_hooks_for_types", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !8, i64 120}
!18 = !{!"lang_hooks_for_lto", !7, i64 0, !7, i64 8, !7, i64 16}
!19 = !{!20, !12, i64 0}
!20 = !{!"type_hash", !12, i64 0, !7, i64 8}
!21 = !{!20, !7, i64 8}
!22 = !{!8, !8, i64 0}
!23 = !{i32 0, i32 2}
!24 = !{!11, !7, i64 520}
!25 = !{!26, !28, i64 8}
!26 = !{!"tree_map", !27, i64 0, !28, i64 8, !7, i64 16}
!27 = !{!"tree_map_base", !7, i64 0}
!28 = !{!"int", !8, i64 0}
!29 = !{!27, !7, i64 0}
!30 = !{!28, !28, i64 0}
!31 = !{!32, !7, i64 840}
!32 = !{!"gcc_target", !33, i64 0, !35, i64 368, !36, i64 664, !28, i64 744, !7, i64 752, !7, i64 760, !7, i64 768, !7, i64 776, !7, i64 784, !7, i64 792, !7, i64 800, !7, i64 808, !7, i64 816, !7, i64 824, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856, !7, i64 864, !7, i64 872, !7, i64 880, !7, i64 888, !7, i64 896, !7, i64 904, !7, i64 912, !7, i64 920, !7, i64 928, !7, i64 936, !7, i64 944, !7, i64 952, !7, i64 960, !7, i64 968, !7, i64 976, !7, i64 984, !7, i64 992, !7, i64 1000, !7, i64 1008, !7, i64 1016, !7, i64 1024, !7, i64 1032, !7, i64 1040, !7, i64 1048, !7, i64 1056, !12, i64 1064, !12, i64 1072, !7, i64 1080, !7, i64 1088, !7, i64 1096, !7, i64 1104, !7, i64 1112, !7, i64 1120, !7, i64 1128, !7, i64 1136, !7, i64 1144, !7, i64 1152, !7, i64 1160, !7, i64 1168, !37, i64 1176, !7, i64 1232, !7, i64 1240, !7, i64 1248, !7, i64 1256, !7, i64 1264, !7, i64 1272, !7, i64 1280, !7, i64 1288, !7, i64 1296, !7, i64 1304, !7, i64 1312, !7, i64 1320, !7, i64 1328, !7, i64 1336, !7, i64 1344, !7, i64 1352, !7, i64 1360, !7, i64 1368, !7, i64 1376, !7, i64 1384, !7, i64 1392, !7, i64 1400, !7, i64 1408, !7, i64 1416, !7, i64 1424, !7, i64 1432, !7, i64 1440, !7, i64 1448, !7, i64 1456, !12, i64 1464, !38, i64 1472, !7, i64 1664, !7, i64 1672, !7, i64 1680, !7, i64 1688, !7, i64 1696, !7, i64 1704, !7, i64 1712, !7, i64 1720, !7, i64 1728, !7, i64 1736, !7, i64 1744, !7, i64 1752, !7, i64 1760, !7, i64 1768, !7, i64 1776, !39, i64 1784, !40, i64 1792, !41, i64 1896, !42, i64 1968, !7, i64 2016, !8, i64 2024, !8, i64 2025, !8, i64 2026, !8, i64 2027, !8, i64 2028, !8, i64 2029, !8, i64 2030, !8, i64 2031, !8, i64 2032, !8, i64 2033, !8, i64 2034, !8, i64 2035}
!33 = !{!"asm_out", !7, i64 0, !7, i64 8, !7, i64 16, !34, i64 24, !34, i64 56, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288, !7, i64 296, !7, i64 304, !7, i64 312, !7, i64 320, !7, i64 328, !7, i64 336, !7, i64 344, !7, i64 352, !7, i64 360}
!34 = !{!"asm_int_op", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!35 = !{!"sched", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184, !7, i64 192, !7, i64 200, !7, i64 208, !7, i64 216, !7, i64 224, !7, i64 232, !7, i64 240, !7, i64 248, !7, i64 256, !7, i64 264, !7, i64 272, !7, i64 280, !7, i64 288}
!36 = !{!"vectorize", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72}
!37 = !{!"addr_space", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48}
!38 = !{!"calls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !7, i64 160, !7, i64 168, !7, i64 176, !7, i64 184}
!39 = !{!"c", !7, i64 0}
!40 = !{!"cxx", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96}
!41 = !{!"emutls", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !8, i64 64, !8, i64 65}
!42 = !{!"target_option_hooks", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.mustprogress"}
!45 = !{i32 0, i32 34}
!46 = distinct !{!46, !44}
!47 = !{i32 -1, i32 256}
!48 = distinct !{!48, !44}
!49 = !{!11, !7, i64 128}
!50 = !{!11, !7, i64 24}
!51 = !{!11, !12, i64 8}
!52 = !{i64 -17179869176, i64 17179869185}
!53 = !{!54, !28, i64 0}
!54 = !{!"VEC_tree_base", !28, i64 0, !28, i64 4, !8, i64 8}
!55 = !{!26, !7, i64 0}
!56 = !{!26, !7, i64 16}
!57 = !{!58, !59, i64 8}
!58 = !{!"tree_priority_map", !27, i64 0, !59, i64 8, !59, i64 10}
!59 = !{!"short", !8, i64 0}
!60 = distinct !{!60, !44}
!61 = !{!62, !28, i64 8}
!62 = !{!"param_info", !7, i64 0, !28, i64 8, !8, i64 12, !28, i64 16, !28, i64 20, !7, i64 24}
!63 = !{!12, !12, i64 0}
!64 = distinct !{!64, !44}
!65 = !{!66, !7, i64 8}
!66 = !{!"constructor_elt_d", !7, i64 0, !7, i64 8}
!67 = distinct !{!67, !44}
!68 = !{!69, !28, i64 0}
!69 = !{!"VEC_constructor_elt_base", !28, i64 0, !28, i64 4, !8, i64 8}
!70 = distinct !{!70, !44}
!71 = !{!66, !7, i64 0}
!72 = distinct !{!72, !44}
!73 = distinct !{!73, !44}
!74 = distinct !{!74, !44}
!75 = !{!54, !28, i64 4}
!76 = !{i8 0, i8 2}
!77 = distinct !{!77, !44}
!78 = !{i64 0, i64 65}
!79 = distinct !{!79, !44}
!80 = distinct !{!80, !44}
!81 = distinct !{!81, !44}
!82 = distinct !{!82, !44}
!83 = distinct !{!83, !44}
!84 = distinct !{!84, !44}
!85 = distinct !{!85, !44}
!86 = distinct !{!86, !44}
!87 = distinct !{!87, !44}
!88 = distinct !{!88, !44}
!89 = distinct !{!89, !44}
!90 = distinct !{!90, !44}
!91 = !{!11, !7, i64 496}
!92 = !{!11, !7, i64 504}
!93 = distinct !{!93, !44}
!94 = distinct !{!94, !44}
!95 = distinct !{!95, !44}
!96 = distinct !{!96, !44}
!97 = !{!98, !28, i64 12}
!98 = !{!"const_call_expr_arg_iterator_d", !7, i64 0, !28, i64 8, !28, i64 12}
!99 = !{!98, !28, i64 8}
!100 = !{!98, !7, i64 0}
!101 = !{i8 0, i8 3}
!102 = distinct !{!102, !44}
!103 = distinct !{!103, !44}
!104 = distinct !{!104, !44}
!105 = distinct !{!105, !44}
!106 = distinct !{!106, !44}
!107 = distinct !{!107, !44}
!108 = distinct !{!108, !44}
!109 = distinct !{!109, !44}
!110 = distinct !{!110, !44}
!111 = distinct !{!111, !44}
!112 = distinct !{!112, !44}
!113 = distinct !{!113, !44}
!114 = distinct !{!114, !44}
!115 = distinct !{!115, !44}
!116 = distinct !{!116, !44}
!117 = distinct !{!117, !44}
!118 = !{!11, !7, i64 648}
!119 = distinct !{!119, !44}
!120 = distinct !{!120, !44}
!121 = !{!122, !7, i64 0}
!122 = !{!"line_map", !7, i64 0, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20, !8, i64 21, !28, i64 22}
!123 = !{!122, !28, i64 12}
!124 = !{!122, !28, i64 8}
!125 = !{!122, !8, i64 21}
!126 = !{!32, !7, i64 832}
!127 = distinct !{!127, !44}
!128 = distinct !{!128, !44}
!129 = !{!11, !8, i64 552}
!130 = distinct !{!130, !44}
!131 = !{!11, !7, i64 248}
!132 = !{!11, !7, i64 184}
!133 = !{!11, !7, i64 176}
!134 = !{!11, !7, i64 616}
!135 = !{!136, !7, i64 3544}
!136 = !{!"diagnostic_context", !7, i64 0, !8, i64 8, !8, i64 56, !8, i64 57, !8, i64 60, !8, i64 3540, !8, i64 3541, !7, i64 3544, !7, i64 3552, !7, i64 3560, !7, i64 3568, !7, i64 3576, !28, i64 3584, !8, i64 3588}
!137 = !{!136, !7, i64 3552}
!138 = !{!136, !7, i64 0}
!139 = !{!140, !7, i64 40}
!140 = !{!"pretty_print_info", !7, i64 0, !7, i64 8, !28, i64 16, !28, i64 20, !28, i64 24, !141, i64 28, !7, i64 40, !8, i64 48, !8, i64 49, !8, i64 50}
!141 = !{!"", !28, i64 0, !28, i64 4}
!142 = !{!143, !7, i64 8}
!143 = !{!"free_lang_data_d", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24}
!144 = !{!143, !7, i64 0}
!145 = !{!143, !7, i64 16}
!146 = !{!143, !7, i64 24}
!147 = distinct !{!147, !44}
!148 = !{!149, !7, i64 0}
!149 = !{!"alias_pair", !7, i64 0, !7, i64 8}
!150 = distinct !{!150, !44}
!151 = distinct !{!151, !44}
!152 = distinct !{!152, !44}
!153 = distinct !{!153, !44}
!154 = distinct !{!154, !44}
!155 = !{!156, !7, i64 0}
!156 = !{!"cgraph_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !7, i64 104, !7, i64 112, !7, i64 120, !7, i64 128, !7, i64 136, !157, i64 144, !159, i64 184, !160, i64 224, !161, i64 232, !162, i64 256, !12, i64 288, !28, i64 296, !28, i64 300, !28, i64 304, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 308, !28, i64 309, !28, i64 309}
!157 = !{!"cgraph_local_info", !7, i64 0, !158, i64 8, !28, i64 32, !28, i64 32, !28, i64 32, !28, i64 32, !28, i64 32, !28, i64 32, !28, i64 32, !28, i64 32}
!158 = !{!"inline_summary", !12, i64 0, !28, i64 8, !28, i64 12, !28, i64 16, !28, i64 20}
!159 = !{!"cgraph_global_info", !12, i64 0, !12, i64 8, !7, i64 16, !28, i64 24, !28, i64 28, !28, i64 32, !8, i64 36}
!160 = !{!"cgraph_rtl_info", !28, i64 0}
!161 = !{!"cgraph_clone_info", !7, i64 0, !7, i64 8, !7, i64 16}
!162 = !{!"cgraph_thunk_info", !12, i64 0, !12, i64 8, !7, i64 16, !8, i64 24, !8, i64 25, !8, i64 26}
!163 = distinct !{!163, !44}
!164 = !{!165, !7, i64 0}
!165 = !{!"function", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !28, i64 104, !28, i64 108, !28, i64 112, !28, i64 116, !28, i64 120, !28, i64 124, !7, i64 128, !28, i64 136, !28, i64 137, !28, i64 138, !28, i64 138, !28, i64 138, !28, i64 138, !28, i64 138, !28, i64 138, !28, i64 138, !28, i64 139, !28, i64 139, !28, i64 139, !28, i64 139, !28, i64 139, !28, i64 139, !28, i64 139}
!166 = !{!167, !7, i64 0}
!167 = !{!"eh_status", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !8, i64 40}
!168 = distinct !{!168, !44}
!169 = !{!165, !7, i64 8}
!170 = !{!171, !7, i64 0}
!171 = !{!"control_flow_graph", !7, i64 0, !7, i64 8, !7, i64 16, !28, i64 24, !28, i64 28, !28, i64 32, !7, i64 40, !28, i64 48, !8, i64 52, !8, i64 60, !28, i64 68, !28, i64 72}
!172 = !{!173, !7, i64 56}
!173 = !{!"basic_block_def", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !8, i64 32, !7, i64 48, !7, i64 56, !8, i64 64, !12, i64 72, !28, i64 80, !28, i64 84, !28, i64 88, !28, i64 92, !28, i64 96}
!174 = !{!171, !7, i64 8}
!175 = distinct !{!175, !44}
!176 = distinct !{!176, !44}
!177 = !{i64 0, i64 8, !6, i64 8, i64 8, !6, i64 16, i64 8, !6}
!178 = distinct !{!178, !44}
!179 = distinct !{!179, !44}
!180 = distinct !{!180, !44}
!181 = !{!182, !28, i64 0}
!182 = !{!"VEC_alias_pair_base", !28, i64 0, !28, i64 4, !8, i64 8}
!183 = !{!184, !7, i64 0}
!184 = !{!"varpool_node", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !28, i64 32, !28, i64 36, !28, i64 36, !28, i64 36, !28, i64 36, !28, i64 36, !28, i64 36, !28, i64 36}
!185 = !{!11, !7, i64 16}
!186 = distinct !{!186, !44}
!187 = distinct !{!187, !44}
!188 = distinct !{!188, !44}
!189 = distinct !{!189, !44}
!190 = !{!191, !28, i64 28}
!191 = !{!"eh_region_d", !7, i64 0, !7, i64 8, !7, i64 16, !28, i64 24, !28, i64 28, !8, i64 32, !7, i64 56, !7, i64 64, !7, i64 72, !8, i64 80}
!192 = !{!193, !7, i64 16}
!193 = !{!"eh_catch_d", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32}
!194 = distinct !{!194, !44}
!195 = !{!191, !7, i64 8}
!196 = !{!191, !7, i64 16}
!197 = !{!191, !7, i64 0}
!198 = distinct !{!198, !44}
!199 = !{!200, !7, i64 0}
!200 = !{!"", !7, i64 0, !7, i64 8, !7, i64 16}
!201 = !{!202, !7, i64 0}
!202 = !{!"gimple_seq_node_d", !7, i64 0, !7, i64 8, !7, i64 16}
!203 = !{!202, !7, i64 16}
!204 = !{!200, !7, i64 8}
!205 = !{!200, !7, i64 16}
!206 = distinct !{!206, !44}
!207 = distinct !{!207, !44}
!208 = distinct !{!208, !44}
!209 = distinct !{!209, !44}
!210 = !{i64 0, i64 8, !6, i64 8, i64 8, !6}
!211 = !{i64 0, i64 8, !6}
!212 = distinct !{!212, !44}
!213 = distinct !{!213, !44}
!214 = distinct !{!214, !44}
!215 = distinct !{!215, !44}
!216 = distinct !{!216, !44}
!217 = distinct !{!217, !44}
!218 = distinct !{!218, !44}
!219 = distinct !{!219, !44}
!220 = distinct !{!220, !44}
!221 = !{!173, !28, i64 96}
!222 = !{!223, !7, i64 0}
!223 = !{!"gimple_bb_info", !7, i64 0, !7, i64 8}
!224 = !{!225, !7, i64 0}
!225 = !{!"gimple_seq_d", !7, i64 0, !7, i64 8, !7, i64 16}
!226 = !{i32 0, i32 256}
!227 = distinct !{!227, !44}
!228 = distinct !{!228, !44}
!229 = distinct !{!229, !44}
!230 = distinct !{!230, !44}
!231 = distinct !{!231, !44}
!232 = distinct !{!232, !44}
!233 = distinct !{!233, !44}
!234 = distinct !{!234, !44}
!235 = distinct !{!235, !44}
!236 = distinct !{!236, !44}
!237 = distinct !{!237, !44}
!238 = distinct !{!238, !44}
!239 = !{!58, !59, i64 10}
!240 = !{!58, !7, i64 0}
!241 = distinct !{!241, !44}
!242 = !{i32 -1, i32 2}
!243 = distinct !{!243, !44}
!244 = distinct !{!244, !44}
!245 = distinct !{!245, !44}
!246 = distinct !{!246, !44}
!247 = !{!32, !7, i64 1176}
!248 = distinct !{!248, !44}
!249 = !{!11, !7, i64 536}
!250 = !{i64 -1, i64 -9223372036854775808}
!251 = distinct !{!251, !44}
!252 = distinct !{!252, !44}
!253 = distinct !{!253, !44}
!254 = distinct !{!254, !44}
!255 = distinct !{!255, !44}
!256 = !{i64 0, i64 8, !63, i64 8, i64 8, !63}
!257 = !{i64 0, i64 8, !63}
!258 = distinct !{!258, !44}
!259 = !{!11, !7, i64 456}
!260 = distinct !{!260, !44}
!261 = !{!11, !7, i64 240}
!262 = distinct !{!262, !44}
!263 = !{!11, !7, i64 136}
!264 = distinct !{!264, !44}
!265 = distinct !{!265, !44}
!266 = !{!59, !59, i64 0}
!267 = distinct !{!267, !44}
!268 = !{!32, !8, i64 2027}
!269 = !{!270, !7, i64 0}
!270 = !{!"", !7, i64 0, !28, i64 8, !28, i64 12, !8, i64 16}
!271 = !{!32, !7, i64 1320}
!272 = !{!32, !8, i64 2035}
!273 = !{!11, !7, i64 448}
!274 = !{!32, !7, i64 776}
!275 = distinct !{!275, !44}
!276 = distinct !{!276, !44}
!277 = distinct !{!277, !44}
!278 = distinct !{!278, !44}
!279 = distinct !{!279, !44}
!280 = distinct !{!280, !44}
!281 = distinct !{!281, !44}
!282 = distinct !{!282, !44}
!283 = distinct !{!283, !44}
!284 = distinct !{!284, !44}
!285 = !{!286, !7, i64 0}
!286 = !{!"", !7, i64 0, !7, i64 8}
!287 = !{!288, !7, i64 8}
!288 = !{!"tree_statement_list_node", !7, i64 0, !7, i64 8, !7, i64 16}
!289 = distinct !{!289, !44}
!290 = distinct !{!290, !44}
!291 = distinct !{!291, !44}
!292 = !{!286, !7, i64 8}
!293 = distinct !{!293, !44}
!294 = distinct !{!294, !44}
!295 = distinct !{!295, !44}
!296 = distinct !{!296, !44}
!297 = !{!298, !7, i64 24}
!298 = !{!"htab", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !28, i64 56, !28, i64 60, !7, i64 64, !7, i64 72, !7, i64 80, !7, i64 88, !7, i64 96, !28, i64 104}
!299 = !{!298, !12, i64 32}
!300 = distinct !{!300, !44}
!301 = distinct !{!301, !44}
!302 = distinct !{!302, !44}
