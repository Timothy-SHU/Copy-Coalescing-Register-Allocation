; ModuleID = 'tree-cfg.c'
source_filename = "tree-cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.lang_hooks = type { ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_callgraph, %struct.lang_hooks_for_tree_dump, %struct.lang_hooks_for_decls, %struct.lang_hooks_for_types, %struct.lang_hooks_for_lto, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_tree_inlining = type { ptr }
%struct.lang_hooks_for_callgraph = type { ptr }
%struct.lang_hooks_for_tree_dump = type { ptr, ptr }
%struct.lang_hooks_for_decls = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lang_hooks_for_types = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.lang_hooks_for_lto = type { ptr, ptr, ptr }
%struct.cfg_hooks = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.VEC_basic_block_base = type { i32, i32, [1 x ptr] }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.tree_label_decl = type { %struct.tree_decl_with_rtl, i32, i32 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.label_record = type { ptr, i8 }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.eh_status = type { ptr, ptr, ptr, ptr, ptr, %union.eh_status_u }
%union.eh_status_u = type { ptr }
%struct.eh_landing_pad_d = type { ptr, ptr, ptr, ptr, i32 }
%struct.eh_region_d = type { ptr, ptr, ptr, i32, i32, %union.eh_region_u, ptr, ptr, ptr, i8 }
%union.eh_region_u = type { %struct.eh_region_u_allowed }
%struct.eh_region_u_allowed = type { ptr, ptr, i32 }
%struct.eh_catch_d = type { ptr, ptr, ptr, ptr, ptr }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.immediate_use_iterator_d = type { ptr, ptr, %struct.ssa_use_operand_d, ptr }
%struct.loop_iterator = type { ptr, i32 }
%struct.edge_def = type { ptr, ptr, %union.edge_def_insns, ptr, ptr, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { ptr }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.loops = type { i32, ptr, ptr, ptr }
%struct.loop = type { i32, i32, ptr, ptr, %struct.lpt_decision, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.double_int, %struct.double_int, i8, i8, i32, ptr, ptr, i8, ptr }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.VEC_edge_base = type { i32, i32, [1 x ptr] }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.walk_stmt_info = type { %struct.gimple_stmt_iterator, ptr, ptr, i8, i8, i8, i8, ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.edge_iterator = type { i32, ptr }
%struct.move_stmt_d = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.tree_block = type { %struct.tree_common, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.ssa_operand_iterator_d = type { i8, i32, ptr, ptr, i32, i32, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.omp_region = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }
%struct.expanded_location = type { ptr, i32, i32, i8 }
%struct.locus_discrim_map = type { i32, i32 }
%struct.VEC_eh_landing_pad_base = type { i32, i32, [1 x ptr] }
%struct.use_optype_d = type { ptr, %struct.ssa_use_operand_d }
%struct.VEC_int_base = type { i32, i32, [1 x i32] }
%struct.gimple_seq_d = type { ptr, ptr, ptr }
%struct.gimple_statement_bind = type { %struct.gimple_statement_base, ptr, ptr, ptr }
%struct.gimple_statement_try = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_eh_filter = type { %struct.gimple_statement_base, ptr, ptr }
%struct.gimple_statement_catch = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.gimple_bb_info = type { ptr, ptr }
%struct.VEC_loop_p_base = type { i32, i32, [1 x ptr] }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.pt_solution = type { i8, ptr }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_statement_eh_ctrl = type { %struct.gimple_statement_base, i32 }
%struct.gimple_statement_omp = type { %struct.gimple_statement_base, ptr }
%struct.def_optype_d = type { ptr, ptr }
%struct.VEC_edge_var_map_base = type { i32, i32, [1 x %struct._edge_var_map] }
%struct._edge_var_map = type { ptr, ptr, i32 }

@cfun = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [4 x i8] c"cfg\00", align 1
@pass_build_cfg = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str, ptr null, ptr @execute_build_cfg, ptr null, ptr null, i32 0, i32 50, i32 4, i32 8, i32 0, i32 0, i32 49 } }, align 8
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@edge_to_cases = internal unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"tree-cfg.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@global_dc = external local_unnamed_addr global ptr, align 8
@label_for_bb = internal unnamed_addr global ptr null, align 8
@cfgcleanup_altered_bbs = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@lang_hooks = external local_unnamed_addr global %struct.lang_hooks, align 8
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c";; Function %s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c";; \0A%d basic blocks, %d edges, last basic block %d.\0A\0A\00", align 1
@dump_cfg_stats.max_num_merged_labels = internal unnamed_addr global i64 0, align 8
@.str.6 = private unnamed_addr constant [16 x i8] c"%-30s%-13s%12s\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"%-30s%13d%11lu%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%-30s%13ld%11lu%c\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"%-43s%11lu%c\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"\0ACFG Statistics for %s\0A\0A\00", align 1
@.str.11 = private unnamed_addr constant [59 x i8] c"---------------------------------------------------------\0A\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  Number of  \00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"  instances  \00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"used \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"Basic blocks\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"Edges\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Total memory used by CFG data\00", align 1
@cfg_stats.0 = internal unnamed_addr global i64 0, align 8
@.str.20 = private unnamed_addr constant [47 x i8] c"Coalesced label blocks: %ld (Max so far: %ld)\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"verify_gimple failed\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@timevar_enable = external local_unnamed_addr global i8, align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"gimple_bb (phi) is set to a wrong basic block\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"missing PHI def\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"PHI argument is not a GIMPLE value\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"incorrect sharing of tree nodes\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"invalid GIMPLE statement\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"gimple_bb (stmt) is set to a wrong basic block\00", align 1
@.str.28 = private unnamed_addr constant [38 x i8] c"incorrect entry in label_to_block_map\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"incorrect setting of landing pad number\00", align 1
@eh_error_found = internal unnamed_addr global i1 false, align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"verify_stmts failed\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"%s (\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.33 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.34 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"%s  bb_%d (preds = {\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"}, succs = {\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"})\0A\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"%s  {\0A\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"%s  }\0A\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"gimple\00", align 1
@gimple_cfg_hooks = dso_local local_unnamed_addr global %struct.cfg_hooks { ptr @.str.43, ptr @gimple_verify_flow_info, ptr @gimple_dump_bb, ptr @create_bb, ptr @gimple_redirect_edge_and_branch, ptr @gimple_redirect_edge_and_branch_force, ptr @gimple_can_remove_branch_p, ptr @remove_bb, ptr @gimple_split_block, ptr @gimple_move_block_after, ptr @gimple_can_merge_blocks_p, ptr @gimple_merge_blocks, ptr @gimple_predict_edge, ptr @gimple_predicted_by_p, ptr @gimple_can_duplicate_bb_p, ptr @gimple_duplicate_bb, ptr @gimple_split_edge, ptr @gimple_make_forwarder_block, ptr null, ptr @gimple_block_ends_with_call_p, ptr @gimple_block_ends_with_condjump_p, ptr @gimple_flow_call_edges_add, ptr @gimple_execute_on_growing_pred, ptr @gimple_execute_on_shrinking_pred, ptr @gimple_duplicate_loop_to_header_edge, ptr @gimple_lv_add_condition_to_bb, ptr @gimple_lv_adjust_loop_header_phi, ptr @extract_true_false_edges_from_block, ptr @flush_pending_stmts }, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"crited\00", align 1
@pass_split_crit_edges = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.44, ptr null, ptr @split_critical_edges, ptr null, ptr null, i32 0, i32 67, i32 8, i32 64, i32 0, i32 0, i32 9 } }, align 8
@.str.45 = private unnamed_addr constant [22 x i8] c"*warn_function_return\00", align 1
@pass_warn_function_return = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.45, ptr null, ptr @execute_warn_function_return, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.46 = private unnamed_addr constant [24 x i8] c"*warn_function_noreturn\00", align 1
@pass_warn_function_noreturn = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.46, ptr null, ptr @execute_warn_function_noreturn, ptr null, ptr null, i32 0, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0 } }, align 8
@.str.47 = private unnamed_addr constant [20 x i8] c"*warn_unused_result\00", align 1
@pass_warn_unused_result = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.47, ptr @gate_warn_unused_result, ptr @run_warn_unused_result, ptr null, ptr null, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0 } }, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [15 x i8] c"Scope blocks:\0A\00", align 1
@found_computed_goto = internal unnamed_addr global i1 false, align 1
@discriminator_per_locus = internal unnamed_addr global ptr null, align 8
@.str.49 = private unnamed_addr constant [8 x i8] c"gotovar\00", align 1
@root_omp_region = external local_unnamed_addr global ptr, align 8
@.str.50 = private unnamed_addr constant [22 x i8] c"graph: { title: \22%s\22\0A\00", align 1
@.str.51 = private unnamed_addr constant [41 x i8] c"node: { title: \22ENTRY\22 label: \22ENTRY\22 }\0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"node: { title: \22EXIT\22 label: \22EXIT\22 }\0A\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"edge: { sourcename: \22ENTRY\22 targetname: \22%d\22\00", align 1
@.str.54 = private unnamed_addr constant [32 x i8] c" linestyle: dotted priority: 10\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c" linestyle: solid priority: 100\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c" }\0A\00", align 1
@gimple_code_name = external local_unnamed_addr constant [0 x ptr], align 8
@.str.57 = private unnamed_addr constant [13 x i8] c"no-statement\00", align 1
@.str.58 = private unnamed_addr constant [53 x i8] c"node: { title: \22%d\22 label: \22#%d\\n%s (%d)\\n%s (%d)\22}\0A\00", align 1
@.str.59 = private unnamed_addr constant [44 x i8] c"edge: { sourcename: \22%d\22 targetname: \22EXIT\22\00", align 1
@.str.60 = private unnamed_addr constant [42 x i8] c"edge: { sourcename: \22%d\22 targetname: \22%d\22\00", align 1
@.str.61 = private unnamed_addr constant [32 x i8] c" priority: 10 linestyle: dotted\00", align 1
@.str.62 = private unnamed_addr constant [32 x i8] c" priority: 100 linestyle: solid\00", align 1
@.str.63 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.64 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.65 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_var_tracking_assignments = external local_unnamed_addr global i32, align 4
@.str.66 = private unnamed_addr constant [39 x i8] c"invalid comparison code in gimple cond\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"invalid labels in gimple cond\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.68 = private unnamed_addr constant [37 x i8] c"non-trivial conversion at assignment\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"invalid operand in unary expression\00", align 1
@.str.70 = private unnamed_addr constant [36 x i8] c"type mismatch in address expression\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"invalid rhs for gimple memory store\00", align 1
@.str.72 = private unnamed_addr constant [36 x i8] c"invalid operands to array reference\00", align 1
@.str.73 = private unnamed_addr constant [33 x i8] c"type mismatch in array reference\00", align 1
@.str.74 = private unnamed_addr constant [39 x i8] c"type mismatch in array range reference\00", align 1
@.str.75 = private unnamed_addr constant [41 x i8] c"type mismatch in real/imagpart reference\00", align 1
@.str.76 = private unnamed_addr constant [37 x i8] c"type mismatch in component reference\00", align 1
@.str.77 = private unnamed_addr constant [49 x i8] c"Conversion of an SSA_NAME on the left hand side.\00", align 1
@.str.78 = private unnamed_addr constant [34 x i8] c"invalid expression for min lvalue\00", align 1
@.str.79 = private unnamed_addr constant [38 x i8] c"invalid operand in indirect reference\00", align 1
@.str.80 = private unnamed_addr constant [36 x i8] c"type mismatch in indirect reference\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@.str.81 = private unnamed_addr constant [39 x i8] c"non-register as LHS of unary operation\00", align 1
@.str.82 = private unnamed_addr constant [35 x i8] c"invalid operand in unary operation\00", align 1
@sizetype_tab = external local_unnamed_addr global [4 x ptr], align 16
@.str.83 = private unnamed_addr constant [32 x i8] c"invalid types in nop conversion\00", align 1
@.str.84 = private unnamed_addr constant [42 x i8] c"invalid types in address space conversion\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"invalid types in fixed-point conversion\00", align 1
@.str.86 = private unnamed_addr constant [46 x i8] c"invalid types in conversion to floating point\00", align 1
@.str.87 = private unnamed_addr constant [39 x i8] c"invalid types in conversion to integer\00", align 1
@.str.88 = private unnamed_addr constant [42 x i8] c"non-trivial conversion in unary operation\00", align 1
@.str.89 = private unnamed_addr constant [40 x i8] c"non-register as LHS of binary operation\00", align 1
@.str.90 = private unnamed_addr constant [37 x i8] c"invalid operands in binary operation\00", align 1
@.str.91 = private unnamed_addr constant [36 x i8] c"type mismatch in complex expression\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"type mismatch in shift expression\00", align 1
@.str.93 = private unnamed_addr constant [41 x i8] c"type mismatch in vector shift expression\00", align 1
@.str.94 = private unnamed_addr constant [56 x i8] c"non-element sized vector shift of floating point vector\00", align 1
@.str.95 = private unnamed_addr constant [50 x i8] c"invalid non-vector operands to vector valued plus\00", align 1
@.str.96 = private unnamed_addr constant [41 x i8] c"invalid (pointer) operands to plus/minus\00", align 1
@.str.97 = private unnamed_addr constant [41 x i8] c"type mismatch in pointer plus expression\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"type mismatch in binary truth expression\00", align 1
@.str.99 = private unnamed_addr constant [35 x i8] c"type mismatch in binary expression\00", align 1
@.str.100 = private unnamed_addr constant [32 x i8] c"invalid function in gimple call\00", align 1
@.str.101 = private unnamed_addr constant [28 x i8] c"non-function in gimple call\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"invalid LHS in gimple call\00", align 1
@.str.103 = private unnamed_addr constant [21 x i8] c"LHS in noreturn call\00", align 1
@.str.104 = private unnamed_addr constant [34 x i8] c"invalid conversion in gimple call\00", align 1
@.str.105 = private unnamed_addr constant [36 x i8] c"invalid static chain in gimple call\00", align 1
@.str.106 = private unnamed_addr constant [37 x i8] c"static chain in indirect gimple call\00", align 1
@.str.107 = private unnamed_addr constant [48 x i8] c"static chain with function that doesn't use one\00", align 1
@.str.108 = private unnamed_addr constant [32 x i8] c"invalid argument to gimple call\00", align 1
@.str.109 = private unnamed_addr constant [38 x i8] c"invalid operands in gimple comparison\00", align 1
@.str.110 = private unnamed_addr constant [39 x i8] c"type mismatch in comparison expression\00", align 1
@.str.111 = private unnamed_addr constant [50 x i8] c"goto destination is neither a label nor a pointer\00", align 1
@.str.112 = private unnamed_addr constant [36 x i8] c"invalid operand to switch statement\00", align 1
@.str.113 = private unnamed_addr constant [36 x i8] c"invalid operand in return statement\00", align 1
@.str.114 = private unnamed_addr constant [39 x i8] c"invalid conversion in return statement\00", align 1
@.str.115 = private unnamed_addr constant [19 x i8] c"Invalid PHI result\00", align 1
@.str.116 = private unnamed_addr constant [21 x i8] c"Invalid PHI argument\00", align 1
@.str.117 = private unnamed_addr constant [38 x i8] c"Incompatible types in PHI argument %u\00", align 1
@.str.118 = private unnamed_addr constant [35 x i8] c"invalid function in call statement\00", align 1
@.str.119 = private unnamed_addr constant [38 x i8] c"invalid pure const state for function\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"in statement\00", align 1
@cgraph_state = external local_unnamed_addr global i32, align 4
@.str.121 = private unnamed_addr constant [41 x i8] c"statement marked for throw, but doesn%'t\00", align 1
@.str.122 = private unnamed_addr constant [46 x i8] c"statement marked for throw in middle of block\00", align 1
@.str.123 = private unnamed_addr constant [42 x i8] c"SSA name in freelist but still referenced\00", align 1
@.str.124 = private unnamed_addr constant [62 x i8] c"Indirect reference's operand is not a register or a constant.\00", align 1
@.str.125 = private unnamed_addr constant [43 x i8] c"ASSERT_EXPR with an always-false condition\00", align 1
@.str.126 = private unnamed_addr constant [46 x i8] c"MODIFY_EXPR not expected while having tuples.\00", align 1
@.str.127 = private unnamed_addr constant [47 x i8] c"constant not recomputed when ADDR_EXPR changed\00", align 1
@.str.128 = private unnamed_addr constant [51 x i8] c"side effects not recomputed when ADDR_EXPR changed\00", align 1
@.str.129 = private unnamed_addr constant [43 x i8] c"address taken, but ADDRESSABLE bit not set\00", align 1
@.str.130 = private unnamed_addr constant [55 x i8] c"DECL_GIMPLE_REG_P set on a variable with address taken\00", align 1
@.str.131 = private unnamed_addr constant [31 x i8] c"non-integral used in condition\00", align 1
@.str.132 = private unnamed_addr constant [28 x i8] c"invalid conditional operand\00", align 1
@.str.133 = private unnamed_addr constant [34 x i8] c"invalid operand to unary operator\00", align 1
@.str.134 = private unnamed_addr constant [38 x i8] c"invalid COMPONENT_REF offset operator\00", align 1
@.str.135 = private unnamed_addr constant [20 x i8] c"invalid array index\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"invalid array lower bound\00", align 1
@.str.137 = private unnamed_addr constant [21 x i8] c"invalid array stride\00", align 1
@.str.138 = private unnamed_addr constant [50 x i8] c"invalid position or size operand to BIT_FIELD_REF\00", align 1
@.str.139 = private unnamed_addr constant [74 x i8] c"integral result type precision does not match field size of BIT_FIELD_REF\00", align 1
@mode_precision = external local_unnamed_addr constant [87 x i16], align 16
@.str.140 = private unnamed_addr constant [81 x i8] c"mode precision of non-integral result does not match field size of BIT_FIELD_REF\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"invalid reference prefix\00", align 1
@.str.142 = private unnamed_addr constant [49 x i8] c"invalid operand to plus/minus, type is a pointer\00", align 1
@.str.143 = private unnamed_addr constant [35 x i8] c"invalid operand to binary operator\00", align 1
@.str.144 = private unnamed_addr constant [64 x i8] c"invalid operand to pointer plus, first operand is not a pointer\00", align 1
@.str.145 = private unnamed_addr constant [89 x i8] c"invalid operand to pointer plus, second operand is not an integer with type of sizetype.\00", align 1
@.str.146 = private unnamed_addr constant [22 x i8] c"Dead STMT in EH table\00", align 1
@.str.147 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"bb_%d \00", align 1
@.str.149 = private unnamed_addr constant [35 x i8] c"%sloop_%d (header = %d, latch = %d\00", align 1
@.str.150 = private unnamed_addr constant [11 x i8] c", niter = \00", align 1
@.str.151 = private unnamed_addr constant [17 x i8] c", upper_bound = \00", align 1
@.str.152 = private unnamed_addr constant [14 x i8] c", estimate = \00", align 1
@.str.153 = private unnamed_addr constant [5 x i8] c"%s{\0A\00", align 1
@.str.154 = private unnamed_addr constant [5 x i8] c"%s}\0A\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.155 = private unnamed_addr constant [38 x i8] c"ENTRY_BLOCK has IL associated with it\00", align 1
@.str.156 = private unnamed_addr constant [37 x i8] c"EXIT_BLOCK has IL associated with it\00", align 1
@.str.157 = private unnamed_addr constant [28 x i8] c"fallthru to exit from bb %d\00", align 1
@.str.158 = private unnamed_addr constant [16 x i8] c"nonlocal label \00", align 1
@.str.159 = private unnamed_addr constant [47 x i8] c" is not first in a sequence of labels in bb %d\00", align 1
@.str.160 = private unnamed_addr constant [22 x i8] c"EH landing pad label \00", align 1
@.str.161 = private unnamed_addr constant [7 x i8] c"label \00", align 1
@.str.162 = private unnamed_addr constant [34 x i8] c" to block does not match in bb %d\00", align 1
@.str.163 = private unnamed_addr constant [32 x i8] c" has incorrect context in bb %d\00", align 1
@.str.164 = private unnamed_addr constant [45 x i8] c"control flow in the middle of basic block %d\00", align 1
@.str.165 = private unnamed_addr constant [33 x i8] c" in the middle of basic block %d\00", align 1
@.str.166 = private unnamed_addr constant [49 x i8] c"fallthru edge after a control statement in bb %d\00", align 1
@.str.167 = private unnamed_addr constant [49 x i8] c"true/false edge after a non-GIMPLE_COND in bb %d\00", align 1
@.str.168 = private unnamed_addr constant [42 x i8] c"wrong outgoing edge flags at end of bb %d\00", align 1
@.str.169 = private unnamed_addr constant [30 x i8] c"explicit goto at end of bb %d\00", align 1
@.str.170 = private unnamed_addr constant [44 x i8] c"return edge does not point to exit in bb %d\00", align 1
@.str.171 = private unnamed_addr constant [51 x i8] c"found default case not at the start of case vector\00", align 1
@.str.172 = private unnamed_addr constant [25 x i8] c"case labels not sorted: \00", align 1
@.str.173 = private unnamed_addr constant [18 x i8] c" is greater than \00", align 1
@.str.174 = private unnamed_addr constant [23 x i8] c" but comes before it.\0A\00", align 1
@.str.175 = private unnamed_addr constant [27 x i8] c"extra outgoing edge %d->%d\00", align 1
@.str.176 = private unnamed_addr constant [20 x i8] c"missing edge %i->%i\00", align 1
@.str.177 = private unnamed_addr constant [25 x i8] c"Removing basic block %d\0A\00", align 1
@.str.178 = private unnamed_addr constant [26 x i8] c"Merging blocks %d and %d\0A\00", align 1
@.str.179 = private unnamed_addr constant [34 x i8] c"%<noreturn%> function does return\00", align 1
@warn_return_type = external local_unnamed_addr global i32, align 4
@.str.180 = private unnamed_addr constant [41 x i8] c"control reaches end of non-void function\00", align 1
@warn_missing_noreturn = external local_unnamed_addr global i32, align 4
@.str.181 = private unnamed_addr constant [64 x i8] c"function might be possible candidate for attribute %<noreturn%>\00", align 1
@flag_warn_unused_result = external local_unnamed_addr global i8, align 1
@.str.182 = private unnamed_addr constant [19 x i8] c"warn_unused_result\00", align 1
@.str.183 = private unnamed_addr constant [73 x i8] c"ignoring return value of %qD, declared with attribute warn_unused_result\00", align 1
@.str.184 = private unnamed_addr constant [77 x i8] c"ignoring return value of function declared with attribute warn_unused_result\00", align 1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_empty_tree_cfg_for_function(ptr noundef %0) local_unnamed_addr #0 !prof !651 {
  tail call void @init_flow(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 7
  store i32 0, ptr %4, align 8, !tbaa !658
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 3
  store i32 2, ptr %5, align 8, !tbaa !660
  %6 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 5
  store i32 2, ptr %6, align 8, !tbaa !661
  %7 = tail call fastcc ptr @VEC_basic_block_gc_alloc() #24
  %8 = load ptr, ptr %2, align 8, !tbaa !652
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 2
  store ptr %7, ptr %9, align 8, !tbaa !662
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %9, i32 noundef 20) #24
  %10 = tail call fastcc ptr @VEC_basic_block_gc_alloc() #24
  %11 = load ptr, ptr %2, align 8, !tbaa !652
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 6
  store ptr %10, ptr %12, align 8, !tbaa !663
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %12, i32 noundef 20) #24
  %13 = load ptr, ptr %2, align 8, !tbaa !652
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !662
  %16 = load ptr, ptr %13, align 8, !tbaa !664
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %15, i32 noundef 0, ptr noundef %16) #24
  %17 = load ptr, ptr %2, align 8, !tbaa !652
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !662
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !665
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %19, i32 noundef 1, ptr noundef %21) #24
  %22 = load ptr, ptr %2, align 8, !tbaa !652
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !665
  %25 = load ptr, ptr %22, align 8, !tbaa !664
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 6
  store ptr %24, ptr %26, align 8, !tbaa !666
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %24, i64 0, i32 5
  store ptr %25, ptr %27, align 8, !tbaa !669
  ret void
}

; Function Attrs: optsize
declare void @init_flow(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_basic_block_gc_alloc() unnamed_addr #0 !prof !670 !PGOFuncName !671 {
  %1 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef null, i32 noundef 20) #23
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !673 {
  %3 = load ptr, ptr %0, align 8, !tbaa !674
  %4 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %3) #24
  tail call fastcc void @VEC_basic_block_gc_safe_grow(ptr noundef nonnull %0, i32 noundef %1) #24
  %5 = load ptr, ptr %0, align 8, !tbaa !674
  %6 = tail call fastcc ptr @VEC_basic_block_base_address(ptr noundef %5) #24
  %7 = sext i32 %4 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = sub nsw i32 %1, %4
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 %11, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_replace(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 !prof !675 !PGOFuncName !676 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %4
  store ptr %2, ptr %5, align 8, !tbaa !674
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @init_empty_tree_cfg() local_unnamed_addr #0 !prof !651 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  tail call void @init_empty_tree_cfg_for_function(ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_build_cfg() #0 !prof !677 !PGOFuncName !678 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %2 = tail call ptr @gimple_body(ptr noundef %1) #23
  tail call fastcc void @build_gimple_cfg(ptr noundef %2) #24
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  tail call void @gimple_set_body(ptr noundef %3, ptr noundef null) #23
  %4 = load ptr, ptr @dump_file, align 8, !tbaa !674
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6, !prof !679

6:                                                ; preds = %0
  %7 = load i32, ptr @dump_flags, align 4, !tbaa !680
  %8 = and i32 %7, 8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = tail call i64 @fwrite(ptr nonnull @.str.48, i64 14, i64 1, ptr nonnull %4)
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !674
  %13 = load i32, ptr @dump_flags, align 4, !tbaa !680
  tail call void @dump_scope_blocks(ptr noundef %12, i32 noundef %13) #23
  br label %14

14:                                               ; preds = %10, %6, %0
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @fold_cond_expr_cond() local_unnamed_addr #0 !prof !681 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  %4 = load ptr, ptr %3, align 8, !tbaa !664
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !666
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !665
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %51, label %10, !prof !682

10:                                               ; preds = %0, %42
  %11 = phi ptr [ %44, %42 ], [ %6, %0 ]
  %12 = tail call ptr @last_stmt(ptr noundef %11) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %42, label %14, !prof !683

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #24, !range !684
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %42, !prof !685

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %12) #24
  tail call void @fold_defer_overflow_warnings() #23
  %19 = tail call fastcc i32 @gimple_cond_code(ptr noundef nonnull %12) #24, !range !686
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !674
  %21 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef nonnull %12) #24
  %22 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef nonnull %12) #24
  %23 = tail call ptr @fold_binary_loc(i32 noundef %18, i32 noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %22) #23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !687

25:                                               ; preds = %17
  %26 = tail call i32 @integer_zerop(ptr noundef nonnull %23) #23
  %27 = trunc i32 %26 to i8
  %28 = tail call i32 @integer_onep(ptr noundef nonnull %23) #23
  %29 = trunc i32 %28 to i8
  br label %30

30:                                               ; preds = %17, %25
  %31 = phi i8 [ %27, %25 ], [ 0, %17 ]
  %32 = phi i8 [ %29, %25 ], [ 0, %17 ]
  %33 = icmp ne i8 %31, 0
  %34 = icmp ne i8 %32, 0
  %35 = select i1 %33, i1 true, i1 %34, !prof !688
  %36 = zext i1 %35 to i8
  tail call void @fold_undefer_overflow_warnings(i8 noundef zeroext %36, ptr noundef nonnull %12, i32 noundef 2) #23
  %37 = icmp eq i8 %31, 0
  br i1 %37, label %39, label %38, !prof !689

38:                                               ; preds = %30
  tail call fastcc void @gimple_cond_make_false(ptr noundef nonnull %12) #24
  br label %42

39:                                               ; preds = %30
  %40 = icmp eq i8 %32, 0
  br i1 %40, label %42, label %41, !prof !690

41:                                               ; preds = %39
  tail call fastcc void @gimple_cond_make_true(ptr noundef nonnull %12) #24
  br label %42

42:                                               ; preds = %38, %41, %39, %14, %10
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !666
  %45 = load ptr, ptr @cfun, align 8, !tbaa !674
  %46 = getelementptr inbounds %struct.function, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !652
  %48 = getelementptr inbounds %struct.control_flow_graph, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !665
  %50 = icmp eq ptr %44, %49
  br i1 %50, label %51, label %10, !prof !691, !llvm.loop !692

51:                                               ; preds = %42, %0
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @last_stmt(ptr noundef %0) local_unnamed_addr #4 !prof !694 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !696

5:                                                ; preds = %1, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !697

9:                                                ; preds = %5
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #24
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !698, !llvm.loop !699

12:                                               ; preds = %5, %9, %1
  %13 = phi ptr [ null, %1 ], [ null, %9 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !700 !PGOFuncName !701 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !702 !PGOFuncName !703 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !704
  ret i32 %3
}

; Function Attrs: optsize
declare void @fold_defer_overflow_warnings() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_binary_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_cond_code(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !705 !PGOFuncName !706 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_lhs(ptr noundef %0) unnamed_addr #0 !prof !705 !PGOFuncName !707 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_rhs(ptr noundef %0) unnamed_addr #0 !prof !705 !PGOFuncName !708 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @integer_onep(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @fold_undefer_overflow_warnings(i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_false(ptr noundef %0) unnamed_addr #0 !prof !709 !PGOFuncName !710 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !674
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #24
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !674
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #24
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_make_true(ptr noundef %0) unnamed_addr #0 !prof !711 !PGOFuncName !712 {
  %2 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !674
  tail call fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %2) #24
  %3 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 26), align 16, !tbaa !674
  tail call fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %3) #24
  %4 = load i32, ptr %0, align 8
  %5 = and i32 %4, 65535
  %6 = or disjoint i32 %5, 6619136
  store i32 %6, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @start_recording_case_labels() local_unnamed_addr #0 !prof !713 {
  %1 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !714

3:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 849, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %0, %3
  %5 = tail call ptr @pointer_map_create() #23
  store ptr %5, ptr @edge_to_cases, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @end_recording_case_labels() local_unnamed_addr #0 !prof !713 {
  %1 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  tail call void @pointer_map_traverse(ptr noundef %1, ptr noundef nonnull @edge_to_cases_cleanup, ptr noundef null) #23
  %2 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  tail call void @pointer_map_destroy(ptr noundef %2) #23
  store ptr null, ptr @edge_to_cases, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare void @pointer_map_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal noundef zeroext i8 @edge_to_cases_cleanup(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #6 !prof !715 !PGOFuncName !716 {
  %4 = load ptr, ptr %1, align 8, !tbaa !674
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6, !prof !717

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %4, %3 ]
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !704
  store ptr null, ptr %8, align 8, !tbaa !704
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6, !prof !718, !llvm.loop !719

11:                                               ; preds = %6, %3
  store ptr null, ptr %1, align 8, !tbaa !674
  ret i8 0
}

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @label_to_block_fn(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !720 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = getelementptr inbounds %struct.tree_label_decl, ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !704
  %6 = load ptr, ptr @global_dc, align 8, !tbaa !674
  %7 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 4
  %8 = load i32, ptr %7, align 8, !tbaa !680
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14, !prof !721

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.diagnostic_context, ptr %6, i64 0, i32 1, i64 5
  %12 = load i32, ptr %11, align 4, !tbaa !680
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14, !prof !721

14:                                               ; preds = %10, %2
  %15 = icmp slt i32 %5, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %17 = load ptr, ptr @cfun, align 8, !tbaa !674
  %18 = getelementptr inbounds %struct.function, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !652
  %20 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !662
  %22 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %21, i32 noundef 2) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %22) #24
  %23 = tail call ptr @gimple_build_label(ptr noundef nonnull %1) #23
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %23, i32 noundef 0) #23
  %24 = load i32, ptr %4, align 8, !tbaa !704
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %25

25:                                               ; preds = %16, %14, %10
  %26 = phi i32 [ %24, %16 ], [ %5, %14 ], [ %5, %10 ]
  %27 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !652
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !663
  %31 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %30) #24
  %32 = icmp ugt i32 %31, %26
  br i1 %32, label %33, label %35, !prof !721

33:                                               ; preds = %25
  %34 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %30, i32 noundef %26) #24
  br label %35

35:                                               ; preds = %25, %33
  %36 = phi ptr [ %34, %33 ], [ null, %25 ]
  ret ptr %36
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !722 !PGOFuncName !723 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !724
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !726
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !727
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_basic_block_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !728 !PGOFuncName !729 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !674
  ret ptr %5
}

; Function Attrs: optsize
declare ptr @gimple_build_label(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_insert_before(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !730 !PGOFuncName !731 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !732

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !733
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @make_abnormal_goto_edges(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #0 !prof !735 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !652
  %7 = load ptr, ptr %6, align 8, !tbaa !664
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !666
  %10 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !665
  %12 = icmp eq ptr %9, %11
  br i1 %12, label %49, label %13

13:                                               ; preds = %2
  %14 = icmp ne i8 %1, 0
  br label %15

15:                                               ; preds = %13, %40
  %16 = phi ptr [ %9, %13 ], [ %42, %40 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %16) #24
  %17 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %15, %37
  %20 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %21 = tail call fastcc i32 @gimple_code(ptr noundef %20) #24, !range !684
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %40

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @gimple_label_label(ptr noundef %20) #24
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 65536
  %27 = icmp eq i64 %26, 0
  %28 = or i1 %14, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 256
  %33 = icmp ne i64 %32, 0
  %34 = and i1 %14, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %16, i32 noundef 2) #23
  br label %40

37:                                               ; preds = %29
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %38 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %19, label %40, !llvm.loop !736

40:                                               ; preds = %37, %19, %15, %35
  %41 = getelementptr inbounds %struct.basic_block_def, ptr %16, i64 0, i32 6
  %42 = load ptr, ptr %41, align 8, !tbaa !666
  %43 = load ptr, ptr @cfun, align 8, !tbaa !674
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !652
  %46 = getelementptr inbounds %struct.control_flow_graph, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !665
  %48 = icmp eq ptr %42, %47
  br i1 %48, label %49, label %15, !llvm.loop !737

49:                                               ; preds = %40, %2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #5 !prof !738 !PGOFuncName !739 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !740 !PGOFuncName !741 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = load ptr, ptr %2, align 8, !tbaa !742
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_label_label(ptr noundef %0) unnamed_addr #0 !prof !744 !PGOFuncName !745 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @make_edge(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !746 !PGOFuncName !747 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !748
  store ptr %4, ptr %0, align 8, !tbaa !724
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @cleanup_dead_labels() local_unnamed_addr #0 !prof !681 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !652
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !661
  %9 = sext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 16) #23
  store ptr %10, ptr @label_for_bb, align 8, !tbaa !674
  %11 = load ptr, ptr @cfun, align 8, !tbaa !674
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !652
  %14 = load ptr, ptr %13, align 8, !tbaa !664
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !666
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !665
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %122, label %20, !prof !682

20:                                               ; preds = %0, %52
  %21 = phi ptr [ %54, %52 ], [ %16, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %21) #24
  %22 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %52, !prof !749

24:                                               ; preds = %20, %49
  %25 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %25) #24, !range !684
  %27 = icmp eq i32 %26, 4
  br i1 %27, label %28, label %52, !prof !750

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 9
  %30 = tail call fastcc ptr @gimple_label_label(ptr noundef %25) #24
  %31 = load ptr, ptr @label_for_bb, align 8, !tbaa !674
  %32 = load i32, ptr %29, align 8, !tbaa !751
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.label_record, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !752
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38, !prof !754

37:                                               ; preds = %28
  store ptr %30, ptr %34, align 8, !tbaa !752
  br label %49

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.tree_decl_common, ptr %30, i64 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 4096
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49, !prof !755

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = and i64 %45, 4096
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store ptr %30, ptr %34, align 8, !tbaa !752
  br label %52

49:                                               ; preds = %37, %43, %38
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %50 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %24, label %52, !prof !756, !llvm.loop !757

52:                                               ; preds = %49, %24, %20, %48
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 6
  %54 = load ptr, ptr %53, align 8, !tbaa !666
  %55 = load ptr, ptr @cfun, align 8, !tbaa !674
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !652
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !665
  %60 = icmp eq ptr %54, %59
  br i1 %60, label %61, label %20, !prof !758, !llvm.loop !759

61:                                               ; preds = %52
  %62 = load ptr, ptr %57, align 8, !tbaa !664
  %63 = getelementptr inbounds %struct.basic_block_def, ptr %62, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !666
  %65 = icmp eq ptr %64, %54
  br i1 %65, label %122, label %66, !prof !760

66:                                               ; preds = %61, %113
  %67 = phi ptr [ %115, %113 ], [ %64, %61 ]
  %68 = tail call ptr @last_stmt(ptr noundef %67) #24
  %69 = icmp eq ptr %68, null
  br i1 %69, label %113, label %70, !prof !761

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %68) #24, !range !684
  %72 = trunc i32 %71 to i8
  switch i8 %72, label %113 [
    i8 1, label %73
    i8 5, label %83
    i8 7, label %96
    i8 3, label %107
  ], !prof !762

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef nonnull %68) #24
  %75 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef nonnull %68) #24
  %76 = icmp eq ptr %74, null
  br i1 %76, label %79, label %77, !prof !763

77:                                               ; preds = %73
  %78 = tail call fastcc ptr @main_block_label(ptr noundef nonnull %74) #24
  tail call fastcc void @gimple_cond_set_true_label(ptr noundef nonnull %68, ptr noundef %78) #24
  br label %79

79:                                               ; preds = %77, %73
  %80 = icmp eq ptr %75, null
  br i1 %80, label %113, label %81, !prof !763

81:                                               ; preds = %79
  %82 = tail call fastcc ptr @main_block_label(ptr noundef nonnull %75) #24
  tail call fastcc void @gimple_cond_set_false_label(ptr noundef nonnull %68, ptr noundef %82) #24
  br label %113

83:                                               ; preds = %70
  %84 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %68) #24
  %85 = zext i32 %84 to i64
  %86 = icmp eq i32 %84, 0
  br i1 %86, label %113, label %87, !prof !764

87:                                               ; preds = %83, %87
  %88 = phi i64 [ %94, %87 ], [ 0, %83 ]
  %89 = trunc i64 %88 to i32
  %90 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %68, i32 noundef %89) #24
  %91 = getelementptr inbounds %struct.tree_exp, ptr %90, i64 1, i32 0, i32 1
  %92 = load ptr, ptr %91, align 8, !tbaa !704
  %93 = tail call fastcc ptr @main_block_label(ptr noundef %92) #24
  store ptr %93, ptr %91, align 8, !tbaa !704
  %94 = add nuw nsw i64 %88, 1
  %95 = icmp eq i64 %94, %85
  br i1 %95, label %113, label %87, !prof !765, !llvm.loop !766

96:                                               ; preds = %70
  %97 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef nonnull %68) #24, !range !684
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %113, label %99

99:                                               ; preds = %96, %99
  %100 = phi i32 [ %105, %99 ], [ 0, %96 ]
  %101 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef nonnull %68, i32 noundef %100) #24
  %102 = getelementptr inbounds %struct.tree_list, ptr %101, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !704
  %104 = tail call fastcc ptr @main_block_label(ptr noundef %103) #24
  store ptr %104, ptr %102, align 8, !tbaa !704
  %105 = add nuw nsw i32 %100, 1
  %106 = icmp eq i32 %105, %97
  br i1 %106, label %113, label %99, !llvm.loop !767

107:                                              ; preds = %70
  %108 = tail call fastcc zeroext i8 @computed_goto_p(ptr noundef nonnull %68) #24, !range !695
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %113, !prof !768

110:                                              ; preds = %107
  %111 = tail call fastcc ptr @gimple_goto_dest(ptr noundef nonnull %68) #24
  %112 = tail call fastcc ptr @main_block_label(ptr noundef %111) #24
  tail call fastcc void @gimple_goto_set_dest(ptr noundef nonnull %68, ptr noundef %112) #24
  br label %113

113:                                              ; preds = %99, %87, %96, %83, %110, %107, %70, %81, %79, %66
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !666
  %116 = load ptr, ptr @cfun, align 8, !tbaa !674
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !652
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !665
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %66, !prof !758, !llvm.loop !769

122:                                              ; preds = %113, %0, %61
  tail call fastcc void @cleanup_dead_labels_eh() #24
  %123 = load ptr, ptr @cfun, align 8, !tbaa !674
  %124 = getelementptr inbounds %struct.function, ptr %123, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !652
  %126 = load ptr, ptr %125, align 8, !tbaa !664
  %127 = getelementptr inbounds %struct.basic_block_def, ptr %126, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !666
  %129 = getelementptr inbounds %struct.control_flow_graph, ptr %125, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !665
  %131 = icmp eq ptr %128, %130
  br i1 %131, label %178, label %132, !prof !682

132:                                              ; preds = %122, %169
  %133 = phi ptr [ %171, %169 ], [ %128, %122 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %134 = load ptr, ptr @label_for_bb, align 8, !tbaa !674
  %135 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 9
  %136 = load i32, ptr %135, align 8, !tbaa !751
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.label_record, ptr %134, i64 %137
  %139 = load ptr, ptr %138, align 8, !tbaa !752
  %140 = icmp eq ptr %139, null
  br i1 %140, label %169, label %141, !prof !770

141:                                              ; preds = %132
  %142 = getelementptr inbounds %struct.label_record, ptr %134, i64 %137, i32 1
  %143 = load i8, ptr %142, align 8, !tbaa !771
  %144 = icmp eq i8 %143, 0
  %145 = select i1 %144, ptr null, ptr %139, !prof !772
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %133) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %146 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %169, !prof !774

148:                                              ; preds = %141, %166
  %149 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %150 = call fastcc i32 @gimple_code(ptr noundef %149) #24, !range !684
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %169, !prof !775

152:                                              ; preds = %148
  %153 = call fastcc ptr @gimple_label_label(ptr noundef %149) #24
  %154 = icmp eq ptr %153, %145
  br i1 %154, label %164, label %155, !prof !776

155:                                              ; preds = %152
  %156 = getelementptr inbounds %struct.tree_decl_common, ptr %153, i64 0, i32 2
  %157 = load i64, ptr %156, align 8
  %158 = and i64 %157, 4352
  %159 = icmp eq i64 %158, 4096
  br i1 %159, label %160, label %164, !prof !777

160:                                              ; preds = %155
  %161 = load i64, ptr %153, align 8
  %162 = and i64 %161, 65536
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %165, label %164, !prof !778

164:                                              ; preds = %160, %155, %152
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  br label %166

165:                                              ; preds = %160
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #23
  br label %166

166:                                              ; preds = %164, %165
  %167 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %148, label %169, !prof !779

169:                                              ; preds = %166, %148, %141, %132
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  %170 = getelementptr inbounds %struct.basic_block_def, ptr %133, i64 0, i32 6
  %171 = load ptr, ptr %170, align 8, !tbaa !666
  %172 = load ptr, ptr @cfun, align 8, !tbaa !674
  %173 = getelementptr inbounds %struct.function, ptr %172, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !652
  %175 = getelementptr inbounds %struct.control_flow_graph, ptr %174, i64 0, i32 1
  %176 = load ptr, ptr %175, align 8, !tbaa !665
  %177 = icmp eq ptr %171, %176
  br i1 %177, label %178, label %132, !prof !758, !llvm.loop !780

178:                                              ; preds = %169, %122
  %179 = load ptr, ptr @label_for_bb, align 8, !tbaa !674
  call void @free(ptr noundef %179) #24
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_true_label(ptr noundef %0) unnamed_addr #0 !prof !781 !PGOFuncName !782 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_cond_false_label(ptr noundef %0) unnamed_addr #0 !prof !781 !PGOFuncName !783 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 3) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_true_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !784 !PGOFuncName !785 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 2, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @main_block_label(ptr noundef %0) unnamed_addr #0 !prof !786 !PGOFuncName !787 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !674
  %3 = tail call ptr @label_to_block_fn(ptr noundef %2, ptr noundef %0) #24
  %4 = load ptr, ptr @label_for_bb, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 9
  %6 = load i32, ptr %5, align 8, !tbaa !751
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.label_record, ptr %4, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !752
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12, !prof !788

11:                                               ; preds = %1
  store ptr %0, ptr %8, align 8, !tbaa !752
  br label %12

12:                                               ; preds = %11, %1
  %13 = phi ptr [ %9, %1 ], [ %0, %11 ]
  %14 = getelementptr inbounds %struct.label_record, ptr %4, i64 %7, i32 1
  store i8 1, ptr %14, align 8, !tbaa !771
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_false_label(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !784 !PGOFuncName !789 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 3, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_switch_num_labels(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !790 !PGOFuncName !791 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = icmp ugt i32 %2, 1
  br i1 %3, label %5, label %4, !prof !792

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 3162, ptr noundef nonnull @.str.2) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = add i32 %2, -1
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !793 !PGOFuncName !794 {
  %3 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %4 = add i32 %1, 1
  %5 = icmp ugt i32 %3, %4
  br i1 %5, label %7, label %6, !prof !795

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 3215, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %4) #24
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_nlabels(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !796 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %3 = load i8, ptr %2, align 1, !tbaa !704
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_label_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !797 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 5
  %4 = load i8, ptr %3, align 1, !tbaa !704
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 2710, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !704
  %11 = zext i8 %10 to i32
  %12 = add nsw i32 %11, %1
  %13 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 4
  %14 = load i8, ptr %13, align 2, !tbaa !704
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %12, %15
  %17 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %16) #24
  ret ptr %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @computed_goto_p(ptr noundef %0) unnamed_addr #0 !prof !798 !PGOFuncName !799 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %10, !prof !800

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #24
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp ne i64 %7, 30
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_goto_dest(ptr noundef %0) unnamed_addr #0 !prof !801 !PGOFuncName !802 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_goto_set_dest(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !803 !PGOFuncName !804 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @cleanup_dead_labels_eh() unnamed_addr #0 !prof !681 !PGOFuncName !805 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  %2 = load ptr, ptr @cfun, align 8, !tbaa !674
  %3 = load ptr, ptr %2, align 8, !tbaa !806
  %4 = icmp eq ptr %3, null
  br i1 %4, label %66, label %5, !prof !807

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.eh_status, ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !808
  %8 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %1) #24, !range !810
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %35, label %10, !prof !811

10:                                               ; preds = %5, %27
  %11 = phi i32 [ %28, %27 ], [ 1, %5 ]
  %12 = load ptr, ptr %1, align 8, !tbaa !674
  %13 = icmp eq ptr %12, null
  br i1 %13, label %27, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !812
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = tail call fastcc ptr @main_block_label(ptr noundef nonnull %16) #24
  %20 = load ptr, ptr %15, align 8, !tbaa !812
  %21 = icmp eq ptr %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_label_decl, ptr %20, i64 0, i32 2
  store i32 0, ptr %23, align 4, !tbaa !704
  %24 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %12, i64 0, i32 4
  %25 = load i32, ptr %24, align 8, !tbaa !814
  %26 = getelementptr inbounds %struct.tree_label_decl, ptr %19, i64 0, i32 2
  store i32 %25, ptr %26, align 4, !tbaa !704
  br label %27

27:                                               ; preds = %10, %14, %22, %18
  %28 = add nuw nsw i32 %11, 1
  %29 = load ptr, ptr @cfun, align 8, !tbaa !674
  %30 = load ptr, ptr %29, align 8, !tbaa !806
  %31 = getelementptr inbounds %struct.eh_status, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !808
  %33 = call fastcc i32 @VEC_eh_landing_pad_base_iterate(ptr noundef %32, i32 noundef %28, ptr noundef nonnull %1) #24, !range !810
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %10, !prof !815, !llvm.loop !816

35:                                               ; preds = %27, %5
  %36 = phi ptr [ %3, %5 ], [ %30, %27 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !817
  %38 = icmp eq ptr %37, null
  br i1 %38, label %66, label %39, !prof !811

39:                                               ; preds = %35, %63
  %40 = phi ptr [ %64, %63 ], [ %37, %35 ]
  %41 = getelementptr inbounds %struct.eh_region_d, ptr %40, i64 0, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !818
  switch i32 %42, label %63 [
    i32 2, label %57
    i32 1, label %43
  ]

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.eh_region_d, ptr %40, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !704
  %46 = icmp eq ptr %45, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %43, %54
  %48 = phi ptr [ %55, %54 ], [ %45, %43 ]
  %49 = getelementptr inbounds %struct.eh_catch_d, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !820
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = tail call fastcc ptr @main_block_label(ptr noundef nonnull %50) #24
  store ptr %53, ptr %49, align 8, !tbaa !820
  br label %54

54:                                               ; preds = %47, %52
  %55 = load ptr, ptr %48, align 8, !tbaa !704
  %56 = icmp eq ptr %55, null
  br i1 %56, label %63, label %47, !llvm.loop !822

57:                                               ; preds = %39
  %58 = getelementptr inbounds %struct.eh_region_d, ptr %40, i64 0, i32 5, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !704
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %57
  %62 = tail call fastcc ptr @main_block_label(ptr noundef nonnull %59) #24
  store ptr %62, ptr %58, align 8, !tbaa !704
  br label %63

63:                                               ; preds = %54, %43, %39, %61, %57
  %64 = tail call fastcc ptr @ehr_next(ptr noundef nonnull %40) #24
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %39, !prof !815, !llvm.loop !823

66:                                               ; preds = %63, %35, %0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @gsi_remove(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #10

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @group_case_labels() local_unnamed_addr #0 !prof !824 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  %4 = load ptr, ptr %3, align 8, !tbaa !664
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !666
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !665
  %9 = icmp eq ptr %6, %8
  br i1 %9, label %122, label %10, !prof !825

10:                                               ; preds = %0, %113
  %11 = phi ptr [ %115, %113 ], [ %6, %0 ]
  %12 = tail call ptr @last_stmt(ptr noundef %11) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %113, label %14, !prof !826

14:                                               ; preds = %10
  %15 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %12) #24, !range !684
  %16 = icmp eq i32 %15, 5
  br i1 %16, label %17, label %113, !prof !827

17:                                               ; preds = %14
  %18 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %12) #24
  %19 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef nonnull %12) #24
  %20 = getelementptr inbounds %struct.tree_exp, ptr %19, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !704
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %32, !prof !828

23:                                               ; preds = %17
  %24 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef nonnull %12) #24
  %25 = getelementptr inbounds %struct.tree_exp, ptr %24, i64 1
  %26 = load ptr, ptr %25, align 8, !tbaa !704
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32, !prof !828

28:                                               ; preds = %23
  %29 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef nonnull %12) #24
  %30 = getelementptr inbounds %struct.tree_exp, ptr %29, i64 1, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !704
  br label %32

32:                                               ; preds = %17, %23, %28
  %33 = phi ptr [ %31, %28 ], [ null, %23 ], [ null, %17 ]
  %34 = phi i32 [ 1, %28 ], [ 0, %23 ], [ 0, %17 ]
  %35 = icmp slt i32 %34, %18
  br i1 %35, label %43, label %40, !prof !829

36:                                               ; preds = %88
  %37 = sub i32 %45, %18
  %38 = add i32 %37, 1
  %39 = add i32 %38, %44
  br label %40

40:                                               ; preds = %93, %36, %32
  %41 = phi i32 [ %18, %32 ], [ %39, %36 ], [ %94, %93 ]
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %97, label %109, !prof !829

43:                                               ; preds = %32, %93
  %44 = phi i32 [ %95, %93 ], [ %34, %32 ]
  %45 = phi i32 [ %94, %93 ], [ %18, %32 ]
  %46 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %12, i32 noundef %44) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %49, !prof !830

48:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1325, ptr noundef nonnull @.str.2) #23
  br label %49

49:                                               ; preds = %43, %48
  %50 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 0, i32 3
  %51 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !704
  %53 = icmp eq ptr %52, %33
  br i1 %53, label %54, label %57, !prof !830

54:                                               ; preds = %49
  tail call fastcc void @gimple_switch_set_label(ptr noundef nonnull %12, i32 noundef %44, ptr noundef null) #24
  %55 = add nsw i32 %44, 1
  %56 = add nsw i32 %45, -1
  br label %93, !llvm.loop !831

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_exp, ptr %46, i64 1
  %59 = load ptr, ptr %58, align 8, !tbaa !704
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %63, !prof !832

61:                                               ; preds = %57
  %62 = load ptr, ptr %50, align 8, !tbaa !704
  br label %63

63:                                               ; preds = %57, %61
  %64 = phi ptr [ %62, %61 ], [ %59, %57 ]
  %65 = add nsw i32 %44, 1
  %66 = icmp slt i32 %65, %18
  br i1 %66, label %67, label %93, !prof !829

67:                                               ; preds = %63, %88
  %68 = phi i32 [ %91, %88 ], [ %65, %63 ]
  %69 = phi ptr [ %89, %88 ], [ %64, %63 ]
  %70 = phi i32 [ %90, %88 ], [ %45, %63 ]
  %71 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %12, i32 noundef %68) #24
  %72 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 0, i32 3
  %73 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !704
  %75 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 14), align 16, !tbaa !674
  %76 = tail call ptr @int_const_binop(i32 noundef 63, ptr noundef %69, ptr noundef %75, i32 noundef 1) #23
  %77 = icmp eq ptr %74, %52
  br i1 %77, label %78, label %93, !prof !833

78:                                               ; preds = %67
  %79 = load ptr, ptr %72, align 8, !tbaa !704
  %80 = tail call i32 @tree_int_cst_equal(ptr noundef %79, ptr noundef %76) #23
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %93, label %82, !prof !834

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.tree_exp, ptr %71, i64 1
  %84 = load ptr, ptr %83, align 8, !tbaa !704
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %88, !prof !835

86:                                               ; preds = %82
  %87 = load ptr, ptr %72, align 8, !tbaa !704
  br label %88

88:                                               ; preds = %86, %82
  %89 = phi ptr [ %87, %86 ], [ %84, %82 ]
  store ptr %89, ptr %58, align 8, !tbaa !704
  tail call fastcc void @gimple_switch_set_label(ptr noundef nonnull %12, i32 noundef %68, ptr noundef null) #24
  %90 = add nsw i32 %70, -1
  %91 = add i32 %68, 1
  %92 = icmp eq i32 %91, %18
  br i1 %92, label %36, label %67, !prof !836

93:                                               ; preds = %78, %67, %63, %54
  %94 = phi i32 [ %56, %54 ], [ %45, %63 ], [ %70, %67 ], [ %70, %78 ]
  %95 = phi i32 [ %55, %54 ], [ %65, %63 ], [ %68, %67 ], [ %68, %78 ]
  %96 = icmp slt i32 %95, %18
  br i1 %96, label %43, label %40, !prof !837

97:                                               ; preds = %40, %105
  %98 = phi i32 [ %107, %105 ], [ 0, %40 ]
  %99 = phi i32 [ %104, %105 ], [ 0, %40 ]
  br label %100

100:                                              ; preds = %100, %97
  %101 = phi i32 [ %104, %100 ], [ %99, %97 ]
  %102 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %12, i32 noundef %101) #24
  %103 = icmp eq ptr %102, null
  %104 = add nsw i32 %101, 1
  br i1 %103, label %100, label %105, !prof !838, !llvm.loop !839

105:                                              ; preds = %100
  %106 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %12, i32 noundef %101) #24
  tail call fastcc void @gimple_switch_set_label(ptr noundef nonnull %12, i32 noundef %98, ptr noundef %106) #24
  %107 = add nuw nsw i32 %98, 1
  %108 = icmp eq i32 %107, %41
  br i1 %108, label %109, label %97, !prof !840, !llvm.loop !841

109:                                              ; preds = %105, %40
  %110 = icmp sgt i32 %41, %18
  br i1 %110, label %111, label %112, !prof !842

111:                                              ; preds = %109
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1380, ptr noundef nonnull @.str.2) #23
  br label %112

112:                                              ; preds = %109, %111
  tail call fastcc void @gimple_switch_set_num_labels(ptr noundef nonnull %12, i32 noundef %41) #24
  br label %113

113:                                              ; preds = %112, %14, %10
  %114 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %115 = load ptr, ptr %114, align 8, !tbaa !666
  %116 = load ptr, ptr @cfun, align 8, !tbaa !674
  %117 = getelementptr inbounds %struct.function, ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !652
  %119 = getelementptr inbounds %struct.control_flow_graph, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !665
  %121 = icmp eq ptr %115, %120
  br i1 %121, label %122, label %10, !prof !843, !llvm.loop !844

122:                                              ; preds = %113, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_default_label(ptr noundef %0) unnamed_addr #0 !prof !845 !PGOFuncName !846 {
  %2 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_switch_set_label(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !847 !PGOFuncName !848 {
  %4 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %5 = add i32 %1, 1
  %6 = icmp ugt i32 %4, %5
  br i1 %6, label %8, label %7, !prof !849

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 3225, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = icmp eq ptr %2, null
  br i1 %9, label %15, label %10, !prof !850

10:                                               ; preds = %8
  %11 = load i64, ptr %2, align 8
  %12 = and i64 %11, 65535
  %13 = icmp eq i64 %12, 139
  br i1 %13, label %15, label %14, !prof !851

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 3226, ptr noundef nonnull @.str.2) #23
  br label %15

15:                                               ; preds = %8, %10, %14
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %5, ptr noundef %2) #24
  ret void
}

; Function Attrs: optsize
declare ptr @int_const_binop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_switch_set_num_labels(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !824 !PGOFuncName !852 {
  %3 = add i32 %1, 1
  tail call fastcc void @gimple_set_num_ops(ptr noundef %0, i32 noundef %3) #24
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @has_zero_uses_1(ptr noundef readonly %0) local_unnamed_addr #12 !prof !735 {
  br label %2

2:                                                ; preds = %7, %1
  %3 = phi ptr [ %0, %1 ], [ %5, %7 ]
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !853
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %5, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !704
  %10 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %9) #24, !range !695
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %2, !llvm.loop !855

12:                                               ; preds = %2, %7
  %13 = phi i8 [ 0, %7 ], [ 1, %2 ]
  ret i8 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_debug(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !856 !PGOFuncName !857 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = icmp eq i32 %2, 2
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @single_imm_use_1(ptr noundef readonly %0, ptr noundef writeonly %1, ptr noundef writeonly %2) local_unnamed_addr #4 !prof !735 {
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !853
  %6 = icmp eq ptr %5, %0
  br i1 %6, label %21, label %7

7:                                                ; preds = %3, %16
  %8 = phi ptr [ %19, %16 ], [ %5, %3 ]
  %9 = phi ptr [ %17, %16 ], [ null, %3 ]
  %10 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !704
  %12 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %11) #24, !range !695
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = icmp eq ptr %9, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %14, %7
  %17 = phi ptr [ %9, %7 ], [ %8, %14 ]
  %18 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %8, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !853
  %20 = icmp eq ptr %19, %0
  br i1 %20, label %21, label %7, !llvm.loop !858

21:                                               ; preds = %16, %14, %3
  %22 = phi ptr [ null, %3 ], [ null, %14 ], [ %17, %16 ]
  %23 = icmp eq ptr %1, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store ptr %22, ptr %1, align 8, !tbaa !674
  br label %25

25:                                               ; preds = %24, %21
  %26 = icmp eq ptr %2, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = icmp eq ptr %22, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %22, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !704
  br label %32

32:                                               ; preds = %27, %29
  %33 = phi ptr [ %31, %29 ], [ null, %27 ]
  store ptr %33, ptr %2, align 8, !tbaa !674
  br label %34

34:                                               ; preds = %32, %25
  %35 = icmp ne ptr %22, null
  %36 = zext i1 %35 to i8
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @replace_uses_by(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !859 {
  %3 = alloca %struct.immediate_use_iterator_d, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.loop_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #25
  %6 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %3, ptr noundef %0) #24
  %7 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %73, !prof !860

9:                                                ; preds = %2, %69
  %10 = phi ptr [ %70, %69 ], [ %6, %2 ]
  %11 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %3) #24
  %12 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #24, !range !695
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %37, !prof !861

14:                                               ; preds = %9, %33
  %15 = phi ptr [ %34, %33 ], [ %11, %9 ]
  call void @replace_exp(ptr noundef %15, ptr noundef %1) #23
  %16 = call fastcc i32 @gimple_code(ptr noundef %10) #24, !range !684
  %17 = icmp eq i32 %16, 16
  br i1 %17, label %18, label %33, !prof !862

18:                                               ; preds = %14
  %19 = call fastcc i32 @phi_arg_index_from_use(ptr noundef %15) #24
  %20 = sext i32 %19 to i64
  %21 = call fastcc ptr @gimple_phi_arg_edge(ptr noundef %10, i64 noundef %20) #24
  %22 = getelementptr inbounds %struct.edge_def, ptr %21, i64 0, i32 7
  %23 = load i32, ptr %22, align 8, !tbaa !863
  %24 = and i32 %23, 2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = call zeroext i8 @is_gimple_reg(ptr noundef %0) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1518, ptr noundef nonnull @.str.2) #23
  br label %30

30:                                               ; preds = %26, %29
  %31 = load i64, ptr %1, align 8
  %32 = or i64 %31, 4194304
  store i64 %32, ptr %1, align 8
  br label %33

33:                                               ; preds = %14, %30, %18
  %34 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %3) #24
  %35 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %3) #24, !range !695
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %14, label %37, !prof !865, !llvm.loop !866

37:                                               ; preds = %33, %9
  %38 = call fastcc i32 @gimple_code(ptr noundef %10) #24, !range !684
  %39 = icmp eq i32 %38, 16
  br i1 %39, label %69, label %40, !prof !862

40:                                               ; preds = %37
  %41 = call zeroext i8 @fold_stmt_inplace(ptr noundef %10) #23
  %42 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !674
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44, !prof !862

44:                                               ; preds = %40
  %45 = call fastcc ptr @gimple_bb(ptr noundef %10) #24
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %45, i64 0, i32 9
  %47 = load i32, ptr %46, align 8, !tbaa !751
  %48 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %42, i32 noundef %47) #23
  br label %49

49:                                               ; preds = %44, %40
  %50 = call fastcc i32 @gimple_num_ops(ptr noundef %10) #24
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %67, label %52, !prof !865

52:                                               ; preds = %49, %62
  %53 = phi i64 [ %63, %62 ], [ 0, %49 ]
  %54 = trunc i64 %53 to i32
  %55 = call fastcc ptr @gimple_op(ptr noundef %10, i32 noundef %54) #24
  %56 = icmp eq ptr %55, null
  br i1 %56, label %62, label %57, !prof !867

57:                                               ; preds = %52
  %58 = load i64, ptr %55, align 8
  %59 = and i64 %58, 65535
  %60 = icmp eq i64 %59, 121
  br i1 %60, label %61, label %62, !prof !868

61:                                               ; preds = %57
  call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %55) #23
  br label %62

62:                                               ; preds = %61, %57, %52
  %63 = add nuw nsw i64 %53, 1
  %64 = call fastcc i32 @gimple_num_ops(ptr noundef %10) #24
  %65 = zext i32 %64 to i64
  %66 = icmp ult i64 %63, %65
  br i1 %66, label %52, label %67, !prof !869, !llvm.loop !870

67:                                               ; preds = %62, %49
  %68 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef %10, ptr noundef %10) #23
  call fastcc void @update_stmt(ptr noundef %10) #24
  br label %69

69:                                               ; preds = %37, %67
  %70 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %3) #24
  %71 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %3) #24, !range !695
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %9, label %73, !prof !871, !llvm.loop !872

73:                                               ; preds = %69, %2
  %74 = call fastcc zeroext i8 @has_zero_uses(ptr noundef %0) #24, !range !695
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77, !prof !873

76:                                               ; preds = %73
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1548, ptr noundef nonnull @.str.2) #23
  br label %77

77:                                               ; preds = %73, %76
  %78 = load ptr, ptr @cfun, align 8, !tbaa !674
  %79 = getelementptr inbounds %struct.function, ptr %78, i64 0, i32 4
  %80 = load ptr, ptr %79, align 8, !tbaa !874
  %81 = icmp eq ptr %80, null
  br i1 %81, label %90, label %82, !prof !875

82:                                               ; preds = %77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call fastcc void @fel_init(ptr noundef nonnull %5, ptr noundef nonnull %4) #24
  %83 = load ptr, ptr %4, align 8, !tbaa !674
  %84 = icmp eq ptr %83, null
  br i1 %84, label %89, label %85

85:                                               ; preds = %82, %85
  %86 = phi ptr [ %87, %85 ], [ %83, %82 ]
  call void @substitute_in_loop_info(ptr noundef nonnull %86, ptr noundef %0, ptr noundef %1) #23
  call fastcc void @fel_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #24
  %87 = load ptr, ptr %4, align 8, !tbaa !674
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %85, !llvm.loop !876

89:                                               ; preds = %85, %82
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %90

90:                                               ; preds = %89, %77
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_imm_use_stmt(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !877 !PGOFuncName !878 {
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  %4 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  store ptr %3, ptr %4, align 8, !tbaa !879
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !853
  store ptr %6, ptr %0, align 8, !tbaa !881
  %7 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  %8 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !695
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14, !prof !882

10:                                               ; preds = %2
  tail call fastcc void @link_use_stmts_after(ptr noundef %6, ptr noundef nonnull %0) #24
  %11 = load ptr, ptr %0, align 8, !tbaa !881
  %12 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !704
  br label %14

14:                                               ; preds = %2, %10
  %15 = phi ptr [ %13, %10 ], [ null, %2 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_stmt_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !883 !PGOFuncName !884 {
  %2 = load ptr, ptr %0, align 8, !tbaa !881
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !879
  %5 = icmp eq ptr %2, %4
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @first_imm_use_on_stmt(ptr nocapture noundef %0) unnamed_addr #7 !prof !885 !PGOFuncName !886 {
  %2 = load ptr, ptr %0, align 8, !tbaa !881
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !853
  %5 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  store ptr %4, ptr %5, align 8, !tbaa !887
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef readonly %0) unnamed_addr #5 !prof !888 !PGOFuncName !889 {
  %2 = load ptr, ptr %0, align 8, !tbaa !881
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %4 = icmp eq ptr %2, %3
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare void @replace_exp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_phi_arg_edge(ptr nocapture noundef readonly %0, i64 noundef %1) unnamed_addr #9 !prof !735 !PGOFuncName !890 {
  %3 = tail call fastcc ptr @gimple_bb(ptr noundef %0) #24
  %4 = load ptr, ptr %3, align 8, !tbaa !891
  %5 = trunc i64 %1 to i32
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %4, i32 noundef %5) #24
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @phi_arg_index_from_use(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !892 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  %4 = tail call fastcc i32 @gimple_code(ptr noundef %3) #24, !range !684
  %5 = icmp eq i32 %4, 16
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 544, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %3, i32 noundef 0) #24
  %9 = ptrtoint ptr %0 to i64
  %10 = ptrtoint ptr %8 to i64
  %11 = sub i64 %9, %10
  %12 = sdiv exact i64 %11, 48
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @next_imm_use_on_stmt(ptr noundef %0) unnamed_addr #7 !prof !885 !PGOFuncName !893 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !887
  store ptr %3, ptr %0, align 8, !tbaa !881
  %4 = tail call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %0) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %9, !prof !862

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %3, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !853
  store ptr %8, ptr %2, align 8, !tbaa !887
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %3, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @fold_stmt_inplace(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bb(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !894 !PGOFuncName !895 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !896 !PGOFuncName !897 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !704
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !898 !PGOFuncName !899 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !900

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !674
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: optsize
declare void @recompute_tree_invariant_for_addr_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @maybe_clean_or_replace_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @update_stmt(ptr noundef %0) unnamed_addr #0 !prof !885 !PGOFuncName !901 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !862

4:                                                ; preds = %1
  tail call void @gimple_set_modified(ptr noundef %0, i8 noundef zeroext 1) #23
  tail call void @update_stmt_operands(ptr noundef %0) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @next_imm_use_stmt(ptr noundef %0) unnamed_addr #0 !prof !885 !PGOFuncName !902 {
  %2 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !903
  store ptr %4, ptr %0, align 8, !tbaa !881
  %5 = tail call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %0) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !862

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !tbaa !904
  %9 = icmp eq ptr %8, null
  br i1 %9, label %15, label %10, !prof !862

10:                                               ; preds = %7
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %2) #24
  br label %15

11:                                               ; preds = %1
  tail call fastcc void @link_use_stmts_after(ptr noundef %4, ptr noundef nonnull %0) #24
  %12 = load ptr, ptr %0, align 8, !tbaa !881
  %13 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %12, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !704
  br label %15

15:                                               ; preds = %7, %10, %11
  %16 = phi ptr [ %14, %11 ], [ null, %10 ], [ null, %7 ]
  ret ptr %16
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @has_zero_uses(ptr noundef readonly %0) unnamed_addr #12 !prof !859 !PGOFuncName !905 {
  %2 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 5, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !853
  %5 = icmp eq ptr %2, %4
  br i1 %5, label %11, label %6, !prof !875

6:                                                ; preds = %1
  %7 = load i32, ptr @flag_var_tracking_assignments, align 4, !tbaa !680
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call zeroext i8 @has_zero_uses_1(ptr noundef nonnull %2) #24, !range !695
  br label %11

11:                                               ; preds = %6, %1, %9
  %12 = phi i8 [ %10, %9 ], [ 1, %1 ], [ 0, %6 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_init(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !906 {
  %3 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !907
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !874
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store ptr null, ptr %0, align 8, !tbaa !909
  store ptr null, ptr %1, align 8, !tbaa !674
  br label %38

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @number_of_loops() #24
  %11 = tail call fastcc ptr @VEC_int_heap_alloc(i32 noundef %10) #24
  store ptr %11, ptr %0, align 8, !tbaa !909
  %12 = load ptr, ptr @cfun, align 8, !tbaa !674
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !874
  %15 = getelementptr inbounds %struct.loops, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !910
  br label %17

17:                                               ; preds = %27, %9
  %18 = phi ptr [ %16, %9 ], [ %28, %27 ]
  %19 = load i32, ptr %18, align 8, !tbaa !912
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !909
  tail call fastcc void @VEC_int_base_quick_push(ptr noundef %22, i32 noundef %19) #24
  br label %23

23:                                               ; preds = %21, %17
  %24 = getelementptr inbounds %struct.loop, ptr %18, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !916
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %29, %23
  %28 = phi ptr [ %25, %23 ], [ %32, %29 ]
  br label %17

29:                                               ; preds = %23, %34
  %30 = phi ptr [ %35, %34 ], [ %18, %23 ]
  %31 = getelementptr inbounds %struct.loop, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !917
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %27

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %30) #24
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %29, !llvm.loop !918

37:                                               ; preds = %34
  tail call fastcc void @fel_next(ptr noundef nonnull %0, ptr noundef %1) #24
  br label %38

38:                                               ; preds = %37, %8
  ret void
}

; Function Attrs: optsize
declare void @substitute_in_loop_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @fel_next(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !919 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.loop_iterator, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !907
  br label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ %5, %2 ]
  %8 = load ptr, ptr %0, align 8, !tbaa !909
  %9 = call fastcc i32 @VEC_int_base_iterate(ptr noundef %8, i32 noundef %7, ptr noundef nonnull %3) #24, !range !810
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = add i32 %7, 1
  store i32 %12, ptr %4, align 8, !tbaa !907
  %13 = load i32, ptr %3, align 4, !tbaa !680
  %14 = tail call fastcc ptr @get_loop(i32 noundef %13) #24
  store ptr %14, ptr %1, align 8, !tbaa !674
  %15 = icmp eq ptr %14, null
  br i1 %15, label %6, label %17, !llvm.loop !920

16:                                               ; preds = %6
  tail call fastcc void @VEC_int_heap_free(ptr noundef nonnull %0) #24
  store ptr null, ptr %1, align 8, !tbaa !674
  br label %17

17:                                               ; preds = %11, %16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @single_noncomplex_succ(ptr noundef readonly %0) local_unnamed_addr #9 !prof !735 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !921
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %22

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 0) #24
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %3, i32 noundef 1) #24
  %9 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %10 = load i32, ptr %9, align 8, !tbaa !863
  %11 = and i32 %10, 14
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %15 = load i32, ptr %14, align 8, !tbaa !863
  %16 = and i32 %15, 14
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13, %6
  %19 = phi ptr [ %8, %6 ], [ %7, %13 ]
  %20 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !922
  br label %22

22:                                               ; preds = %18, %13, %1
  %23 = phi ptr [ %0, %1 ], [ %0, %13 ], [ %21, %18 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_edge_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !923 !PGOFuncName !924 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !925

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !926
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_edge_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !928 !PGOFuncName !929 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_edge_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !674
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @notice_special_calls(ptr noundef %0) local_unnamed_addr #0 !prof !930 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #23
  %3 = and i32 %2, 32
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %10, label %5, !prof !931

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !674
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 20
  %8 = load i32, ptr %7, align 8
  %9 = or i32 %8, 524288
  store i32 %9, ptr %7, align 8
  br label %10

10:                                               ; preds = %5, %1
  %11 = and i32 %2, 128
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13, !prof !931

13:                                               ; preds = %10
  %14 = load ptr, ptr @cfun, align 8, !tbaa !674
  %15 = getelementptr inbounds %struct.function, ptr %14, i64 0, i32 20
  %16 = load i32, ptr %15, align 8
  %17 = or i32 %16, 262144
  store i32 %17, ptr %15, align 8
  br label %18

18:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @clear_special_calls() local_unnamed_addr #13 !prof !932 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 20
  %3 = load i32, ptr %2, align 8
  %4 = and i32 %3, -786433
  store i32 %4, ptr %2, align 8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @find_taken_edge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 !prof !933 {
  %3 = tail call ptr @last_stmt(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !934

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1839, ptr noundef nonnull @.str.2) #23
  br label %6

6:                                                ; preds = %2, %5
  %7 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %3) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !934

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1840, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %6, %9
  %11 = icmp eq ptr %1, null
  br i1 %11, label %37, label %12, !prof !935

12:                                               ; preds = %10
  %13 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %1) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %37, label %15, !prof !936

15:                                               ; preds = %12
  %16 = tail call fastcc i32 @gimple_code(ptr noundef %3) #24, !range !684
  %17 = trunc i32 %16 to i8
  switch i8 %17, label %22 [
    i8 1, label %18
    i8 5, label %20
  ], !prof !937

18:                                               ; preds = %15
  %19 = tail call fastcc ptr @find_taken_edge_cond_expr(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %37

20:                                               ; preds = %15
  %21 = tail call fastcc ptr @find_taken_edge_switch_expr(ptr noundef %0, ptr noundef nonnull %1) #24
  br label %37

22:                                               ; preds = %15
  %23 = tail call fastcc zeroext i8 @computed_goto_p(ptr noundef %3) #24, !range !695
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load i64, ptr %1, align 8
  %27 = trunc i64 %26 to i16
  switch i16 %27, label %37 [
    i16 121, label %28
    i16 133, label %28
  ]

28:                                               ; preds = %25, %25
  %29 = getelementptr inbounds %struct.tree_exp, ptr %1, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !704
  %31 = load i64, ptr %30, align 8
  %32 = and i64 %31, 65535
  %33 = icmp eq i64 %32, 30
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = tail call fastcc ptr @find_taken_edge_computed_goto(ptr noundef %0, ptr noundef nonnull %30) #24
  br label %37

36:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1868, ptr noundef nonnull @.str.2) #23
  br label %37

37:                                               ; preds = %28, %25, %12, %10, %36, %34, %20, %18
  %38 = phi ptr [ %19, %18 ], [ %21, %20 ], [ %35, %34 ], [ null, %36 ], [ null, %10 ], [ null, %12 ], [ null, %25 ], [ null, %28 ]
  ret ptr %38
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i8 @is_ctrl_stmt(ptr nocapture noundef readonly %0) local_unnamed_addr #5 !prof !938 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %4 [
    i8 1, label %5
    i8 5, label %5
    i8 3, label %5
    i8 9, label %5
    i8 14, label %5
  ], !prof !939

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %1, %1, %1, %1, %4
  %6 = phi i8 [ 0, %4 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ], [ 1, %1 ]
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_min_invariant(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_taken_edge_cond_expr(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !940 !PGOFuncName !941 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @extract_true_false_edges_from_block(ptr noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %4) #24
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 23
  br i1 %7, label %9, label %8, !prof !942

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1905, ptr noundef nonnull @.str.2) #23
  br label %9

9:                                                ; preds = %2, %8
  %10 = tail call i32 @integer_zerop(ptr noundef nonnull %1) #23
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = select i1 %11, ptr %13, ptr %12, !prof !943
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret ptr %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_taken_edge_switch_expr(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !944 {
  %3 = tail call ptr @last_stmt(ptr noundef %0) #24
  %4 = tail call fastcc ptr @find_case_label_for_value(ptr noundef %3, ptr noundef %1) #24
  %5 = load ptr, ptr @cfun, align 8, !tbaa !674
  %6 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !704
  %8 = tail call ptr @label_to_block_fn(ptr noundef %5, ptr noundef %7) #24
  %9 = tail call ptr @find_edge(ptr noundef %0, ptr noundef %8) #23
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1926, ptr noundef nonnull @.str.2) #23
  br label %12

12:                                               ; preds = %2, %11
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_taken_edge_computed_goto(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !945 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = tail call ptr @label_to_block_fn(ptr noundef %3, ptr noundef %1) #24
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @find_edge(ptr noundef %0, ptr noundef nonnull %4) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1888, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %9, %6, %2
  %11 = phi ptr [ %7, %6 ], [ null, %9 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_debug_bb(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @gimple_dump_bb(ptr noundef %0, ptr noundef %2, i32 noundef 0, i32 noundef 16448) #23
  ret void
}

; Function Attrs: optsize
declare void @gimple_dump_bb(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_debug_bb_n(i32 noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !674
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !652
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !662
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef %0) #24
  tail call void @gimple_debug_bb(ptr noundef %7) #24
  %8 = load ptr, ptr @cfun, align 8, !tbaa !674
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !652
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !662
  %13 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %0) #24
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_debug_cfg(i32 noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @gimple_dump_cfg(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gimple_dump_cfg(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !735 {
  %3 = and i32 %1, 8
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !946
  %7 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %8 = tail call ptr %6(ptr noundef %7, i32 noundef 2) #23
  %9 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #24
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef %8) #24
  %11 = load ptr, ptr @cfun, align 8, !tbaa !674
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !652
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 3
  %15 = load i32, ptr %14, align 8, !tbaa !660
  %16 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !954
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !661
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i32 noundef %15, i32 noundef %17, i32 noundef %19) #24
  tail call void @brief_dump_cfg(ptr noundef %0) #23
  %21 = tail call i32 @fputc(i32 10, ptr %0)
  br label %22

22:                                               ; preds = %5, %2
  %23 = and i32 %1, 16
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @dump_cfg_stats(ptr noundef %0) #24
  br label %26

26:                                               ; preds = %25, %22
  %27 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %28 = or i32 %1, 32
  tail call void @dump_function_to_file(ptr noundef %27, ptr noundef %0, i32 noundef %28) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: optsize
declare void @brief_dump_cfg(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_cfg_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !946
  %3 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %4 = tail call ptr %2(ptr noundef %3, i32 noundef 2) #23
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef %4) #24
  %6 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 58, i64 1, ptr %0)
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #24
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #24
  %9 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 58, i64 1, ptr %0)
  %10 = load ptr, ptr @cfun, align 8, !tbaa !674
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !652
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !660
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 104
  %17 = icmp ult i64 %16, 10240
  %18 = icmp ult i64 %16, 10485760
  %19 = select i1 %18, i64 10, i64 20
  %20 = select i1 %17, i64 0, i64 %19
  %21 = lshr i64 %16, %20
  %22 = select i1 %18, i32 107, i32 77
  %23 = select i1 %17, i32 98, i32 %22
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.17, i32 noundef %14, i64 noundef %21, i32 noundef %23) #24
  %25 = load ptr, ptr @cfun, align 8, !tbaa !674
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !652
  %28 = load ptr, ptr %27, align 8, !tbaa !664
  %29 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !665
  %31 = getelementptr inbounds %struct.basic_block_def, ptr %28, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !666
  %33 = icmp eq ptr %32, %30
  br i1 %33, label %45, label %34

34:                                               ; preds = %1, %34
  %35 = phi ptr [ %43, %34 ], [ %32, %1 ]
  %36 = phi i64 [ %41, %34 ], [ 0, %1 ]
  %37 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !921
  %39 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %38) #24
  %40 = zext i32 %39 to i64
  %41 = add nuw nsw i64 %36, %40
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %35, i64 0, i32 6
  %43 = load ptr, ptr %42, align 8, !tbaa !666
  %44 = icmp eq ptr %43, %30
  br i1 %44, label %45, label %34, !llvm.loop !955

45:                                               ; preds = %34, %1
  %46 = phi i64 [ 0, %1 ], [ %41, %34 ]
  %47 = shl i64 %46, 6
  %48 = add i64 %47, %16
  %49 = icmp ult i64 %47, 10240
  %50 = icmp ult i64 %47, 10485760
  %51 = select i1 %50, i64 10, i64 20
  %52 = select i1 %49, i64 0, i64 %51
  %53 = lshr i64 %47, %52
  %54 = select i1 %50, i32 107, i32 77
  %55 = select i1 %49, i32 98, i32 %54
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.18, i64 noundef %46, i64 noundef %53, i32 noundef %55) #24
  %57 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 58, i64 1, ptr %0)
  %58 = icmp ult i64 %48, 10240
  %59 = icmp ult i64 %48, 10485760
  %60 = select i1 %59, i64 10, i64 20
  %61 = select i1 %58, i64 0, i64 %60
  %62 = lshr i64 %48, %61
  %63 = select i1 %59, i32 107, i32 77
  %64 = select i1 %58, i32 98, i32 %63
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.19, i64 noundef %62, i32 noundef %64) #24
  %66 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 58, i64 1, ptr %0)
  %67 = tail call i32 @fputc(i32 10, ptr %0)
  %68 = load i64, ptr @cfg_stats.0, align 8, !tbaa !956
  %69 = load i64, ptr @dump_cfg_stats.max_num_merged_labels, align 8, !tbaa !958
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %45
  store i64 %68, ptr @dump_cfg_stats.max_num_merged_labels, align 8, !tbaa !958
  br label %72

72:                                               ; preds = %71, %45
  %73 = phi i64 [ %68, %71 ], [ %69, %45 ]
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef %68, i64 noundef %73) #24
  %75 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @dump_function_to_file(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !prof !735 {
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !946
  %5 = tail call ptr %4(ptr noundef %0, i32 noundef 2) #23
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.31, ptr noundef %5) #24
  %7 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = icmp eq ptr %8, null
  %10 = and i32 %2, 65536
  br i1 %9, label %29, label %11

11:                                               ; preds = %3
  %12 = icmp eq i32 %10, 0
  br label %13

13:                                               ; preds = %11, %25
  %14 = phi ptr [ %8, %11 ], [ %27, %25 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !704
  %17 = load i32, ptr @dump_flags, align 4, !tbaa !680
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef %16, i32 noundef %17) #23
  %18 = tail call i32 @fputc(i32 32, ptr %1)
  %19 = load i32, ptr @dump_flags, align 4, !tbaa !680
  tail call void @print_generic_expr(ptr noundef %1, ptr noundef nonnull %14, i32 noundef %19) #23
  br i1 %12, label %21, label %20

20:                                               ; preds = %13
  tail call void @print_node(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef nonnull %14, i32 noundef 4) #23
  br label %21

21:                                               ; preds = %20, %13
  %22 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !704
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %1)
  %27 = load ptr, ptr %22, align 8, !tbaa !704
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !959

29:                                               ; preds = %21, %25, %3
  %30 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %1)
  %31 = icmp eq i32 %10, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @print_node(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %0, i32 noundef 2) #23
  br label %33

33:                                               ; preds = %32, %29
  %34 = getelementptr inbounds %struct.tree_function_decl, ptr %0, i64 0, i32 1
  %35 = load ptr, ptr %34, align 8, !tbaa !704
  %36 = icmp eq ptr %35, null
  %37 = and i32 %2, 524288
  %38 = icmp eq i32 %37, 0
  %39 = or i1 %38, %36
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  tail call void @dump_eh_tree(ptr noundef %1, ptr noundef nonnull %35) #23
  br label %41

41:                                               ; preds = %40, %33
  %42 = and i32 %2, 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %41
  %45 = tail call zeroext i8 @gimple_has_body_p(ptr noundef nonnull %0) #23
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = or i32 %2, 2
  tail call void @dump_node(ptr noundef nonnull %0, i32 noundef %48, ptr noundef %1) #23
  br label %186

49:                                               ; preds = %44, %41
  %50 = load ptr, ptr %34, align 8, !tbaa !704
  tail call void @push_cfun(ptr noundef %50) #23
  %51 = load ptr, ptr @cfun, align 8, !tbaa !674
  %52 = icmp eq ptr %51, null
  br i1 %52, label %138, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !960
  %56 = icmp eq ptr %55, %0
  br i1 %56, label %57, label %80

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !961
  %60 = icmp eq ptr %59, null
  br i1 %60, label %80, label %61

61:                                               ; preds = %57
  %62 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %1)
  %63 = load ptr, ptr @cfun, align 8, !tbaa !674
  %64 = getelementptr inbounds %struct.function, ptr %63, i64 0, i32 9
  %65 = load ptr, ptr %64, align 8, !tbaa !704
  %66 = icmp eq ptr %65, null
  br i1 %66, label %80, label %67

67:                                               ; preds = %61, %72
  %68 = phi ptr [ %75, %72 ], [ %65, %61 ]
  %69 = getelementptr inbounds %struct.tree_list, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !704
  tail call void @print_generic_decl(ptr noundef %1, ptr noundef %70, i32 noundef %2) #23
  br i1 %31, label %72, label %71

71:                                               ; preds = %67
  tail call void @print_node(ptr noundef %1, ptr noundef nonnull @.str.12, ptr noundef %70, i32 noundef 4) #23
  br label %72

72:                                               ; preds = %71, %67
  %73 = tail call i32 @fputc(i32 10, ptr %1)
  %74 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !704
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %67, !llvm.loop !962

77:                                               ; preds = %72
  %78 = load ptr, ptr @cfun, align 8, !tbaa !674
  %79 = icmp eq ptr %78, null
  br i1 %79, label %138, label %80

80:                                               ; preds = %61, %57, %53, %77
  %81 = phi i8 [ 1, %77 ], [ 0, %53 ], [ 0, %57 ], [ 0, %61 ]
  %82 = phi i1 [ false, %77 ], [ true, %53 ], [ true, %57 ], [ true, %61 ]
  %83 = phi i1 [ false, %77 ], [ true, %53 ], [ true, %57 ], [ false, %61 ]
  %84 = phi ptr [ %78, %77 ], [ %51, %53 ], [ %51, %57 ], [ %63, %61 ]
  %85 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !960
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %138

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.function, ptr %84, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !652
  %91 = icmp eq ptr %90, null
  br i1 %91, label %138, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.control_flow_graph, ptr %90, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !662
  %95 = icmp eq ptr %94, null
  br i1 %95, label %138, label %96

96:                                               ; preds = %92
  %97 = load ptr, ptr %90, align 8, !tbaa !664
  tail call void @check_bb_profile(ptr noundef %97, ptr noundef %1) #23
  br i1 %83, label %98, label %100

98:                                               ; preds = %96
  %99 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %1)
  br label %100

100:                                              ; preds = %98, %96
  %101 = load ptr, ptr @cfun, align 8, !tbaa !674
  br i1 %82, label %111, label %102

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct.function, ptr %101, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !652
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 3
  %106 = load i32, ptr %105, align 8, !tbaa !660
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %102
  %109 = tail call i32 @fputc(i32 10, ptr %1)
  %110 = load ptr, ptr @cfun, align 8, !tbaa !674
  br label %111

111:                                              ; preds = %108, %102, %100
  %112 = phi ptr [ %110, %108 ], [ %101, %102 ], [ %101, %100 ]
  %113 = getelementptr inbounds %struct.function, ptr %112, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !652
  %115 = load ptr, ptr %114, align 8, !tbaa !664
  %116 = getelementptr inbounds %struct.basic_block_def, ptr %115, i64 0, i32 6
  %117 = load ptr, ptr %116, align 8, !tbaa !666
  %118 = getelementptr inbounds %struct.control_flow_graph, ptr %114, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !665
  %120 = icmp eq ptr %117, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %111, %121
  %122 = phi ptr [ %124, %121 ], [ %117, %111 ]
  tail call void @gimple_dump_bb(ptr noundef %122, ptr noundef %1, i32 noundef 2, i32 noundef %2) #23
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %122, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !666
  %125 = load ptr, ptr @cfun, align 8, !tbaa !674
  %126 = getelementptr inbounds %struct.function, ptr %125, i64 0, i32 1
  %127 = load ptr, ptr %126, align 8, !tbaa !652
  %128 = getelementptr inbounds %struct.control_flow_graph, ptr %127, i64 0, i32 1
  %129 = load ptr, ptr %128, align 8, !tbaa !665
  %130 = icmp eq ptr %124, %129
  br i1 %130, label %131, label %121, !llvm.loop !963

131:                                              ; preds = %121, %111
  %132 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %1)
  %133 = load ptr, ptr @cfun, align 8, !tbaa !674
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 1
  %135 = load ptr, ptr %134, align 8, !tbaa !652
  %136 = getelementptr inbounds %struct.control_flow_graph, ptr %135, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !665
  tail call void @check_bb_profile(ptr noundef %137, ptr noundef %1) #23
  br label %184

138:                                              ; preds = %49, %92, %88, %80, %77
  %139 = phi i8 [ %81, %92 ], [ %81, %88 ], [ %81, %80 ], [ 1, %77 ], [ 0, %49 ]
  %140 = phi i1 [ %83, %92 ], [ %83, %88 ], [ %83, %80 ], [ false, %77 ], [ true, %49 ]
  %141 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 1
  %142 = load ptr, ptr %141, align 8, !tbaa !704
  %143 = icmp eq ptr %142, null
  br i1 %143, label %144, label %164

144:                                              ; preds = %138
  %145 = tail call ptr @gimple_body(ptr noundef nonnull %0) #23
  %146 = tail call fastcc ptr @gimple_seq_first_stmt(ptr noundef %145) #24
  %147 = icmp eq ptr %146, null
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = tail call fastcc ptr @gimple_seq_last_stmt(ptr noundef %145) #24
  %150 = icmp eq ptr %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %146) #24, !range !684
  %153 = icmp eq i32 %152, 10
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  tail call void @print_gimple_seq(ptr noundef %1, ptr noundef %145, i32 noundef 0, i32 noundef %2) #23
  br label %184

155:                                              ; preds = %151, %148, %144
  br i1 %140, label %156, label %158

156:                                              ; preds = %155
  %157 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %1)
  br label %158

158:                                              ; preds = %156, %155
  %159 = icmp eq i8 %139, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %158
  %161 = tail call i32 @fputc(i32 10, ptr %1)
  br label %162

162:                                              ; preds = %160, %158
  tail call void @print_gimple_seq(ptr noundef %1, ptr noundef %145, i32 noundef 2, i32 noundef %2) #23
  %163 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %1)
  br label %184

164:                                              ; preds = %138
  %165 = load i64, ptr %142, align 8
  %166 = and i64 %165, 65535
  %167 = icmp eq i64 %166, 58
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  br i1 %140, label %175, label %169

169:                                              ; preds = %168
  %170 = getelementptr inbounds %struct.tree_exp, ptr %142, i64 1
  %171 = load ptr, ptr %170, align 8, !tbaa !704
  br label %175

172:                                              ; preds = %164
  br i1 %140, label %173, label %175

173:                                              ; preds = %172
  %174 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 2, i64 1, ptr %1)
  br label %175

175:                                              ; preds = %172, %173, %168, %169
  %176 = phi ptr [ %171, %169 ], [ %142, %168 ], [ %142, %173 ], [ %142, %172 ]
  %177 = phi i32 [ 2, %169 ], [ 0, %168 ], [ 2, %173 ], [ 2, %172 ]
  %178 = icmp eq i8 %139, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = tail call i32 @fputc(i32 10, ptr %1)
  br label %181

181:                                              ; preds = %179, %175
  tail call void @print_generic_stmt_indented(ptr noundef %1, ptr noundef %176, i32 noundef %2, i32 noundef %177) #23
  br i1 %140, label %184, label %182

182:                                              ; preds = %181
  %183 = tail call i64 @fwrite(ptr nonnull @.str.36, i64 2, i64 1, ptr %1)
  br label %184

184:                                              ; preds = %181, %182, %154, %162, %131
  %185 = tail call i64 @fwrite(ptr nonnull @.str.37, i64 2, i64 1, ptr %1)
  tail call void @pop_cfun() #23
  br label %186

186:                                              ; preds = %184, %47
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_cfg_stats() local_unnamed_addr #0 !prof !735 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @dump_cfg_stats(ptr noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @is_ctrl_altering_stmt(ptr noundef %0) local_unnamed_addr #0 !prof !964 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !965

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2210, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %6 = trunc i32 %5 to i8
  switch i8 %6, label %25 [
    i8 8, label %7
    i8 15, label %27
    i8 7, label %22
    i8 26, label %27
    i8 27, label %27
    i8 23, label %27
    i8 30, label %27
    i8 31, label %27
    i8 32, label %27
    i8 29, label %27
    i8 24, label %27
    i8 25, label %27
    i8 22, label %27
    i8 28, label %27
    i8 19, label %27
    i8 20, label %27
    i8 21, label %27
  ], !prof !966

7:                                                ; preds = %4
  %8 = tail call i32 @gimple_call_flags(ptr noundef %0) #23
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19, !prof !967

11:                                               ; preds = %7
  %12 = load ptr, ptr @cfun, align 8, !tbaa !674
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 20
  %14 = load i32, ptr %13, align 8
  %15 = and i32 %14, 1048576
  %16 = and i32 %8, 8
  %17 = or disjoint i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %25, label %27, !prof !968

19:                                               ; preds = %7
  %20 = and i32 %8, 8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %25, label %27, !prof !969

22:                                               ; preds = %4
  %23 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %0) #24, !range !684
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %11, %19, %4, %22
  %26 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef %0) #23
  br label %27

27:                                               ; preds = %19, %11, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %4, %22, %4, %25
  %28 = phi i8 [ %26, %25 ], [ 1, %4 ], [ 1, %22 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %4 ], [ 1, %11 ], [ 1, %19 ]
  ret i8 %28
}

; Function Attrs: optsize
declare zeroext i8 @stmt_can_throw_internal(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @simple_goto_p(ptr noundef %0) local_unnamed_addr #0 !prof !803 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %4, label %10, !prof !768

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #24
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 65535
  %8 = icmp eq i64 %7, 30
  %9 = zext i1 %8 to i8
  br label %10

10:                                               ; preds = %4, %1
  %11 = phi i8 [ 0, %1 ], [ %9, %4 ]
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %0) local_unnamed_addr #0 !prof !970 {
  %2 = tail call fastcc zeroext i8 @computed_goto_p(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %17, !prof !971

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %17, label %7, !prof !972

7:                                                ; preds = %4
  %8 = tail call zeroext i8 @gimple_has_side_effects(ptr noundef %0) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10, !prof !973

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !674
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 20
  %13 = load i32, ptr %12, align 8
  %14 = lshr i32 %13, 20
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  br label %17

17:                                               ; preds = %4, %7, %10, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %7 ], [ %16, %10 ], [ 0, %4 ]
  ret i8 %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !974 !PGOFuncName !975 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_side_effects(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @stmt_ends_bb_p(ptr noundef %0) local_unnamed_addr #0 !prof !976 {
  %2 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %8, !prof !977

4:                                                ; preds = %1
  %5 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef %0) #24
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 1, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @delete_tree_cfg_annotations() local_unnamed_addr #13 !prof !651 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  %4 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 6
  store ptr null, ptr %4, align 8, !tbaa !663
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local noundef ptr @first_stmt(ptr noundef %0) local_unnamed_addr #4 !prof !978 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !979

5:                                                ; preds = %1, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !980

9:                                                ; preds = %5
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !981, !llvm.loop !982

12:                                               ; preds = %5, %9, %1
  %13 = phi ptr [ null, %1 ], [ null, %9 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !983 !PGOFuncName !984 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #24
  %4 = tail call fastcc ptr @gimple_seq_last(ptr noundef %3) #24
  store ptr %4, ptr %0, align 8, !tbaa !724
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !726
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !727
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev(ptr nocapture noundef %0) unnamed_addr #7 !prof !985 !PGOFuncName !986 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !987
  store ptr %4, ptr %0, align 8, !tbaa !724
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @last_and_only_stmt(ptr noundef %0) local_unnamed_addr #4 !prof !988 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_last_nondebug_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %14, !prof !989

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  call fastcc void @gsi_prev_nondebug(ptr noundef nonnull %2) #24
  %7 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14, !prof !990

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %11 = tail call fastcc i32 @gimple_code(ptr noundef %10) #24, !range !684
  %12 = icmp eq i32 %11, 4
  %13 = select i1 %12, ptr %6, ptr null, !prof !991
  br label %14

14:                                               ; preds = %9, %5, %1
  %15 = phi ptr [ null, %1 ], [ %6, %5 ], [ %13, %9 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %15
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_last_nondebug_bb(ptr dead_on_unwind noalias nocapture writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #4 !prof !988 !PGOFuncName !992 {
  tail call fastcc void @gsi_last_bb(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %10, !prof !989

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !993

9:                                                ; preds = %5
  tail call fastcc void @gsi_prev_nondebug(ptr noundef %0) #24
  br label %10

10:                                               ; preds = %9, %5, %2
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_prev_nondebug(ptr nocapture noundef %0) unnamed_addr #4 !prof !985 !PGOFuncName !994 {
  br label %2

2:                                                ; preds = %5, %1
  tail call fastcc void @gsi_prev(ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %9, !prof !990

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %7 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %2, !prof !993, !llvm.loop !995

9:                                                ; preds = %2, %5
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_types_in_gimple_seq(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.21) #23
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !996 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %34

5:                                                ; preds = %1, %29
  %6 = phi i8 [ %31, %29 ], [ 0, %1 ]
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %8 = tail call fastcc i32 @gimple_code(ptr noundef %7) #24, !range !684
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %25 [
    i8 10, label %10
    i8 17, label %13
    i8 12, label %19
    i8 11, label %22
  ]

10:                                               ; preds = %5
  %11 = tail call fastcc ptr @gimple_bind_body(ptr noundef %7) #24
  %12 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %11) #24, !range !695
  br label %29

13:                                               ; preds = %5
  %14 = tail call fastcc ptr @gimple_try_eval(ptr noundef %7) #24
  %15 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %14) #24, !range !695
  %16 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %7) #24
  %17 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %16) #24, !range !695
  %18 = or i8 %15, %17
  br label %29

19:                                               ; preds = %5
  %20 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %7) #24
  %21 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %20) #24, !range !695
  br label %29

22:                                               ; preds = %5
  %23 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %7) #24
  %24 = tail call fastcc zeroext i8 @verify_types_in_gimple_seq_2(ptr noundef %23) #24, !range !695
  br label %29

25:                                               ; preds = %5
  %26 = tail call fastcc zeroext i8 @verify_types_in_gimple_stmt(ptr noundef %7) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @debug_gimple_stmt(ptr noundef %7) #23
  br label %29

29:                                               ; preds = %25, %28, %22, %19, %13, %10
  %30 = phi i8 [ %24, %22 ], [ %21, %19 ], [ %18, %13 ], [ %12, %10 ], [ %26, %28 ], [ 0, %25 ]
  %31 = or i8 %30, %6
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %32 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %5, label %34, !llvm.loop !997

34:                                               ; preds = %29, %1
  %35 = phi i8 [ 0, %1 ], [ %31, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret i8 %35
}

; Function Attrs: optsize
declare void @internal_error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @tree_node_can_be_shared(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !680
  %6 = and i32 %5, -2
  %7 = icmp eq i32 %6, 2
  br i1 %7, label %45, label %8

8:                                                ; preds = %1
  %9 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %0) #23
  %10 = icmp ne i8 %9, 0
  %11 = load ptr, ptr @global_trees, align 16
  %12 = freeze ptr %11
  %13 = icmp eq ptr %12, %0
  %14 = or i1 %10, %13
  br i1 %14, label %45, label %15

15:                                               ; preds = %8
  %16 = load i64, ptr %0, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 141, label %45
    i16 1, label %45
    i16 139, label %45
  ]

18:                                               ; preds = %15, %35
  %19 = phi i64 [ %38, %35 ], [ %16, %15 ]
  %20 = phi ptr [ %37, %35 ], [ %0, %15 ]
  %21 = trunc i64 %19 to i32
  %22 = and i32 %21, 65535
  %23 = add nsw i32 %22, -45
  %24 = icmp ult i32 %23, 2
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 1
  %27 = load ptr, ptr %26, align 8, !tbaa !704
  %28 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %27) #23
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, ptr %20, align 8
  br label %32

32:                                               ; preds = %30, %18
  %33 = phi i64 [ %31, %30 ], [ %19, %18 ]
  %34 = trunc i64 %33 to i16
  switch i16 %34, label %39 [
    i16 41, label %35
    i16 43, label %35
    i16 44, label %35
  ]

35:                                               ; preds = %32, %32, %32, %25
  %36 = getelementptr inbounds %struct.tree_exp, ptr %20, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !704
  %38 = load i64, ptr %37, align 8
  br label %18, !llvm.loop !998

39:                                               ; preds = %32
  %40 = and i64 %33, 65535
  %41 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %40
  %42 = load i32, ptr %41, align 4, !tbaa !680
  %43 = icmp eq i32 %42, 3
  %44 = zext i1 %43 to i8
  br label %45

45:                                               ; preds = %15, %15, %15, %1, %39, %8
  %46 = phi i8 [ 1, %1 ], [ 1, %15 ], [ 1, %8 ], [ %44, %39 ], [ 1, %15 ], [ 1, %15 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @verify_stmts() local_unnamed_addr #0 !prof !735 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.walk_stmt_info, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %5 = load i8, ptr @timevar_enable, align 1, !tbaa !704
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 108) #23
  br label %8

8:                                                ; preds = %7, %0
  %9 = tail call ptr @pointer_set_create() #23
  %10 = tail call ptr @pointer_set_create() #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %11 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  store ptr %9, ptr %11, align 8, !tbaa !999
  %12 = load ptr, ptr @cfun, align 8, !tbaa !674
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !652
  %15 = load ptr, ptr %14, align 8, !tbaa !664
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !666
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %14, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !665
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %133, label %31

21:                                               ; preds = %129, %76
  %22 = phi i8 [ %77, %76 ], [ %130, %129 ]
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %32, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !666
  %25 = load ptr, ptr @cfun, align 8, !tbaa !674
  %26 = getelementptr inbounds %struct.function, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !652
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !665
  %30 = icmp eq ptr %24, %29
  br i1 %30, label %133, label %31, !llvm.loop !1001

31:                                               ; preds = %8, %21
  %32 = phi ptr [ %24, %21 ], [ %17, %8 ]
  %33 = phi i8 [ %22, %21 ], [ 0, %8 ]
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %32) #23
  %34 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %76

36:                                               ; preds = %31, %72
  %37 = phi i8 [ %73, %72 ], [ %33, %31 ]
  %38 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %39 = call i32 @pointer_set_insert(ptr noundef %10, ptr noundef %38) #23
  %40 = call fastcc ptr @gimple_bb(ptr noundef %38) #24
  %41 = icmp eq ptr %40, %32
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  call void (ptr, ...) @error(ptr noundef nonnull @.str.22) #23
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i8 [ 1, %42 ], [ %37, %36 ]
  %45 = call fastcc i32 @gimple_phi_num_args(ptr noundef %38) #24
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %43, %66
  %48 = phi i8 [ %67, %66 ], [ %44, %43 ]
  %49 = phi i64 [ %68, %66 ], [ 0, %43 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  %50 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %38, i64 noundef %49) #24
  store ptr %50, ptr %3, align 8, !tbaa !674
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  call void (ptr, ...) @error(ptr noundef nonnull @.str.23) #23
  call void @debug_gimple_stmt(ptr noundef %38) #23
  br label %66

53:                                               ; preds = %47
  %54 = load i64, ptr %50, align 8
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %56 [
    i16 141, label %61
    i16 29, label %61
  ]

56:                                               ; preds = %53
  %57 = call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %50) #23
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  call void (ptr, ...) @error(ptr noundef nonnull @.str.24) #23
  call void @debug_gimple_stmt(ptr noundef %38) #23
  %60 = load ptr, ptr %3, align 8, !tbaa !674
  call void @debug_generic_expr(ptr noundef %60) #23
  br label %61

61:                                               ; preds = %53, %53, %56, %59
  %62 = phi i8 [ %48, %56 ], [ 1, %59 ], [ %48, %53 ], [ %48, %53 ]
  %63 = call ptr @walk_tree_1(ptr noundef nonnull %3, ptr noundef nonnull @verify_node_sharing, ptr noundef %9, ptr noundef null, ptr noundef null) #23
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #23
  call void @debug_gimple_stmt(ptr noundef %38) #23
  call void @debug_generic_expr(ptr noundef nonnull %63) #23
  br label %66

66:                                               ; preds = %61, %65, %52
  %67 = phi i8 [ 1, %52 ], [ 1, %65 ], [ %62, %61 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  %68 = add nuw nsw i64 %49, 1
  %69 = call fastcc i32 @gimple_phi_num_args(ptr noundef %38) #24
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %47, label %72, !llvm.loop !1002

72:                                               ; preds = %66, %43
  %73 = phi i8 [ %44, %43 ], [ %67, %66 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %36, label %76, !llvm.loop !1003

76:                                               ; preds = %72, %31
  %77 = phi i8 [ %33, %31 ], [ %73, %72 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %32) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %21

80:                                               ; preds = %76, %129
  %81 = phi i8 [ %130, %129 ], [ %77, %76 ]
  %82 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %83 = call fastcc i32 @gimple_code(ptr noundef %82) #24, !range !684
  %84 = trunc i32 %83 to i8
  switch i8 %84, label %86 [
    i8 34, label %85
    i8 10, label %85
  ]

85:                                               ; preds = %80, %80
  call void (ptr, ...) @error(ptr noundef nonnull @.str.26) #23
  call void @debug_gimple_stmt(ptr noundef %82) #23
  br label %86

86:                                               ; preds = %80, %85
  %87 = phi i8 [ 1, %85 ], [ %81, %80 ]
  %88 = call i32 @pointer_set_insert(ptr noundef %10, ptr noundef %82) #23
  %89 = call fastcc ptr @gimple_bb(ptr noundef %82) #24
  %90 = icmp eq ptr %89, %32
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  call void (ptr, ...) @error(ptr noundef nonnull @.str.27) #23
  call void @debug_gimple_stmt(ptr noundef %82) #23
  br label %92

92:                                               ; preds = %91, %86
  %93 = phi i8 [ 1, %91 ], [ %87, %86 ]
  %94 = call fastcc i32 @gimple_code(ptr noundef %82) #24, !range !684
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %96, label %121

96:                                               ; preds = %92
  %97 = call fastcc ptr @gimple_label_label(ptr noundef %82) #24
  %98 = getelementptr inbounds %struct.tree_label_decl, ptr %97, i64 0, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !704
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load ptr, ptr @cfun, align 8, !tbaa !674
  %103 = getelementptr inbounds %struct.function, ptr %102, i64 0, i32 1
  %104 = load ptr, ptr %103, align 8, !tbaa !652
  %105 = getelementptr inbounds %struct.control_flow_graph, ptr %104, i64 0, i32 6
  %106 = load ptr, ptr %105, align 8, !tbaa !663
  %107 = call fastcc ptr @VEC_basic_block_base_index(ptr noundef %106, i32 noundef %99) #24
  %108 = icmp eq ptr %107, %32
  br i1 %108, label %110, label %109

109:                                              ; preds = %101, %96
  call void (ptr, ...) @error(ptr noundef nonnull @.str.28) #23
  br label %110

110:                                              ; preds = %109, %101
  %111 = phi i8 [ 1, %109 ], [ %93, %101 ]
  %112 = getelementptr inbounds %struct.tree_label_decl, ptr %97, i64 0, i32 2
  %113 = load i32, ptr %112, align 4, !tbaa !704
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %110
  %116 = call ptr @get_eh_landing_pad_from_number(i32 noundef %113) #23
  %117 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !812
  %119 = icmp eq ptr %97, %118
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  call void (ptr, ...) @error(ptr noundef nonnull @.str.29) #23
  br label %121

121:                                              ; preds = %110, %120, %115, %92
  %122 = phi i8 [ %93, %92 ], [ %111, %110 ], [ 1, %120 ], [ %111, %115 ]
  %123 = call fastcc zeroext i8 @verify_stmt(ptr noundef nonnull %1) #24, !range !695
  %124 = or i8 %123, %122
  %125 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %126 = call ptr @walk_gimple_op(ptr noundef %125, ptr noundef nonnull @verify_node_sharing, ptr noundef nonnull %2) #23
  %127 = icmp eq ptr %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  call void (ptr, ...) @error(ptr noundef nonnull @.str.25) #23
  call void @debug_gimple_stmt(ptr noundef %82) #23
  call void @debug_generic_expr(ptr noundef nonnull %126) #23
  br label %129

129:                                              ; preds = %128, %121
  %130 = phi i8 [ 1, %128 ], [ %124, %121 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %131 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %132 = icmp eq i8 %131, 0
  br i1 %132, label %80, label %21, !llvm.loop !1004

133:                                              ; preds = %21, %8
  %134 = phi i8 [ 0, %8 ], [ %22, %21 ]
  %135 = phi ptr [ %12, %8 ], [ %25, %21 ]
  store i1 false, ptr @eh_error_found, align 1
  %136 = call ptr @get_eh_throw_stmt_table(ptr noundef nonnull %135) #23
  %137 = icmp eq ptr %136, null
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load ptr, ptr @cfun, align 8, !tbaa !674
  %140 = call ptr @get_eh_throw_stmt_table(ptr noundef %139) #23
  call void @htab_traverse(ptr noundef %140, ptr noundef nonnull @verify_eh_throw_stmt_node, ptr noundef %10) #23
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i1, ptr @eh_error_found, align 1
  %143 = zext i1 %142 to i8
  %144 = or i8 %134, %143
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  call void (ptr, ...) @internal_error(ptr noundef nonnull @.str.30) #23
  br label %147

147:                                              ; preds = %146, %141
  call void @pointer_set_destroy(ptr noundef %9) #23
  call void @pointer_set_destroy(ptr noundef %10) #23
  call void @verify_histograms() #23
  %148 = load i8, ptr @timevar_enable, align 1, !tbaa !704
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %147
  call void @timevar_pop_1(i32 noundef 108) #23
  br label %151

151:                                              ; preds = %150, %147
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret void
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pointer_set_create() local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pointer_set_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @error(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1005 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !704
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #0 !prof !877 !PGOFuncName !1006 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #24
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #24
  ret ptr %5
}

; Function Attrs: optsize
declare void @debug_gimple_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @debug_generic_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @walk_tree_1(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @verify_node_sharing(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !735 !PGOFuncName !1007 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !999
  %6 = load ptr, ptr %0, align 8, !tbaa !674
  %7 = tail call zeroext i8 @tree_node_can_be_shared(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !680
  br label %16

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !674
  %12 = tail call i32 @pointer_set_insert(ptr noundef %5, ptr noundef %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %0, align 8, !tbaa !674
  br label %16

16:                                               ; preds = %10, %14, %9
  %17 = phi ptr [ null, %9 ], [ %15, %14 ], [ null, %10 ]
  ret ptr %17
}

; Function Attrs: optsize
declare ptr @get_eh_landing_pad_from_number(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_stmt(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !735 !PGOFuncName !1008 {
  %2 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #25
  %3 = tail call fastcc zeroext i8 @gsi_one_before_end_p(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24, !range !695
  %4 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %5 = tail call fastcc zeroext i8 @is_gimple_omp(ptr noundef %4) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %59

7:                                                ; preds = %1
  %8 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %4) #24, !range !695
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %31, label %10

10:                                               ; preds = %7
  %11 = tail call fastcc ptr @gimple_call_fn(ptr noundef %4) #24
  %12 = tail call zeroext i8 @is_gimple_call_addr(ptr noundef %11) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.118) #23
  br label %59

15:                                               ; preds = %10
  %16 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %4) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 29
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_function_decl, ptr %16, i64 0, i32 5
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 402653184
  %26 = icmp eq i32 %25, 268435456
  %27 = and i64 %19, 1048576
  %28 = icmp eq i64 %27, 0
  %29 = and i1 %28, %26
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.119) #23
  br label %59

31:                                               ; preds = %22, %18, %15, %7
  %32 = tail call fastcc zeroext i8 @is_gimple_debug(ptr noundef %4) #24, !range !695
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 56, i1 false)
  %35 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %36 = call ptr @walk_gimple_op(ptr noundef %35, ptr noundef nonnull @verify_expr, ptr noundef nonnull %2) #23
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  call void @debug_generic_expr(ptr noundef nonnull %36) #23
  %39 = call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %40 = call fastcc i32 @gimple_location(ptr noundef %39) #24
  call void (i32, ptr, ...) @inform(i32 noundef %40, ptr noundef nonnull @.str.120) #23
  call void @debug_gimple_stmt(ptr noundef %4) #23
  br label %59

41:                                               ; preds = %34
  %42 = call i32 @lookup_stmt_eh_lp(ptr noundef %4) #23
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %41
  %45 = call zeroext i8 @stmt_could_throw_p(ptr noundef %4) #23
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, ptr @cgraph_state, align 4, !tbaa !680
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %59, label %57

50:                                               ; preds = %44
  %51 = icmp slt i32 %42, 1
  %52 = icmp ne i8 %3, 0
  %53 = select i1 %51, i1 true, i1 %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = call zeroext i8 @stmt_can_throw_internal(ptr noundef %4) #23
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54, %47
  %58 = phi ptr [ @.str.121, %47 ], [ @.str.122, %54 ]
  call void (ptr, ...) @error(ptr noundef nonnull %58) #23
  call void @debug_gimple_stmt(ptr noundef %4) #23
  br label %59

59:                                               ; preds = %30, %14, %41, %50, %54, %47, %31, %1, %57, %38
  %60 = phi i8 [ 1, %38 ], [ 1, %57 ], [ 0, %1 ], [ 0, %31 ], [ 0, %47 ], [ 0, %54 ], [ 0, %50 ], [ 0, %41 ], [ 1, %14 ], [ 1, %30 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #25
  ret i8 %60
}

; Function Attrs: optsize
declare ptr @walk_gimple_op(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_eh_throw_stmt_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @htab_traverse(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @verify_eh_throw_stmt_node(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !prof !735 !PGOFuncName !1009 {
  %3 = load ptr, ptr %0, align 8, !tbaa !674
  %4 = load ptr, ptr %3, align 8, !tbaa !1010
  %5 = tail call i32 @pointer_set_contains(ptr noundef %1, ptr noundef %4) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.146) #23
  %8 = load ptr, ptr %3, align 8, !tbaa !1010
  tail call void @debug_gimple_stmt(ptr noundef %8) #23
  store i1 true, ptr @eh_error_found, align 1
  br label %9

9:                                                ; preds = %7, %2
  ret i32 1
}

; Function Attrs: optsize
declare void @pointer_set_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @verify_histograms() local_unnamed_addr #1

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimple_block_label(ptr noundef %0) local_unnamed_addr #0 !prof !1012 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !773
  %4 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %22, !prof !1013

6:                                                ; preds = %1, %19
  %7 = phi i1 [ true, %19 ], [ false, %1 ]
  %8 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %8) #24, !range !684
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %22, !prof !1014

11:                                               ; preds = %6
  %12 = tail call fastcc ptr @gimple_label_label(ptr noundef %8) #24
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %12, i64 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 256
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19, !prof !1015

17:                                               ; preds = %11
  br i1 %7, label %18, label %25, !prof !1016

18:                                               ; preds = %17
  call void @gsi_move_before(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  br label %25

19:                                               ; preds = %11
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %20 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %6, label %22, !prof !1017, !llvm.loop !1018

22:                                               ; preds = %19, %6, %1
  %23 = tail call ptr @create_artificial_label(i32 noundef 0) #23
  %24 = tail call ptr @gimple_build_label(ptr noundef %23) #23
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %24, i32 noundef 0) #23
  br label %25

25:                                               ; preds = %17, %18, %22
  %26 = phi ptr [ %23, %22 ], [ %12, %18 ], [ %12, %17 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %26
}

; Function Attrs: optsize
declare void @gsi_move_before(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_artificial_label(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_args_after_copy_bb(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %4) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  %6 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !1020
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %2) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1, %9
  %10 = load ptr, ptr %2, align 8, !tbaa !674
  tail call fastcc void @add_phi_args_after_copy_edge(ptr noundef %10) #24
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %11 = load i32, ptr %3, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = call fastcc zeroext i8 @ei_cond(i32 %11, ptr %12, ptr noundef nonnull %2) #24, !range !695
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %9, !llvm.loop !1021

15:                                               ; preds = %9, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @ei_start_1(ptr noundef %0) unnamed_addr #16 !prof !1022 !PGOFuncName !1023 {
  ret ptr %0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ei_cond(i32 %0, ptr %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 !prof !1024 !PGOFuncName !1025 {
  %4 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %8, !prof !1026

6:                                                ; preds = %3
  %7 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %8

8:                                                ; preds = %3, %6
  %9 = phi ptr [ %7, %6 ], [ null, %3 ]
  %10 = phi i8 [ 1, %6 ], [ 0, %3 ]
  store ptr %9, ptr %2, align 8, !tbaa !674
  ret i8 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_phi_args_after_copy_edge(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1027 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !1028
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %7 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !922
  %9 = tail call fastcc ptr @phi_nodes(ptr noundef %8) #24
  %10 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %9) #24, !range !695
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %76

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 13
  %14 = load i32, ptr %13, align 8, !tbaa !1029
  %15 = and i32 %14, 128
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call ptr @get_bb_original(ptr noundef nonnull %6) #23
  br label %19

19:                                               ; preds = %12, %17
  %20 = phi ptr [ %18, %17 ], [ %6, %12 ]
  %21 = load ptr, ptr %7, align 8, !tbaa !922
  %22 = getelementptr inbounds %struct.basic_block_def, ptr %21, i64 0, i32 13
  %23 = load i32, ptr %22, align 8, !tbaa !1029
  %24 = and i32 %23, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = tail call ptr @get_bb_original(ptr noundef nonnull %21) #23
  br label %28

28:                                               ; preds = %19, %26
  %29 = phi ptr [ %27, %26 ], [ %21, %19 ]
  %30 = tail call ptr @find_edge(ptr noundef %20, ptr noundef %29) #23
  store ptr %30, ptr %2, align 8, !tbaa !674
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 1
  %34 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %33) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  %35 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %34, ptr %35, align 8, !tbaa.struct !1020
  %36 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %34, ptr noundef nonnull %2) #24, !range !695
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %32, %49
  %39 = load ptr, ptr %2, align 8, !tbaa !674
  %40 = getelementptr inbounds %struct.edge_def, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !922
  %42 = getelementptr inbounds %struct.basic_block_def, ptr %41, i64 0, i32 13
  %43 = load i32, ptr %42, align 8, !tbaa !1029
  %44 = and i32 %43, 128
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = tail call ptr @get_bb_original(ptr noundef nonnull %41) #23
  %48 = icmp eq ptr %47, %29
  br i1 %48, label %54, label %49

49:                                               ; preds = %38, %46
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %50 = load i32, ptr %3, align 8
  %51 = load ptr, ptr %35, align 8
  %52 = call fastcc zeroext i8 @ei_cond(i32 %50, ptr %51, ptr noundef nonnull %2) #24, !range !695
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %38, !llvm.loop !1030

54:                                               ; preds = %49, %46, %32
  %55 = load ptr, ptr %2, align 8, !tbaa !674
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4962, ptr noundef nonnull @.str.2) #23
  unreachable

58:                                               ; preds = %54, %28
  %59 = phi ptr [ %55, %54 ], [ %30, %28 ]
  %60 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !922
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %61) #23
  %62 = load ptr, ptr %7, align 8, !tbaa !922
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %62) #23
  %63 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.edge_def, ptr %59, i64 0, i32 6
  br label %67

67:                                               ; preds = %65, %67
  %68 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %69 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24
  %70 = load i32, ptr %66, align 4, !tbaa !1031
  %71 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %68, i32 noundef %70) #24
  %72 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %71) #24
  %73 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %68, ptr noundef nonnull %59) #24
  call void @add_phi_arg(ptr noundef %69, ptr noundef %72, ptr noundef nonnull %0, i32 noundef %73) #23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  call fastcc void @gsi_next(ptr noundef nonnull %5) #24
  %74 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %67, label %76, !llvm.loop !1032

76:                                               ; preds = %67, %58, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @ei_next(ptr nocapture noundef %0) unnamed_addr #0 !prof !1033 !PGOFuncName !1034 {
  %2 = load i32, ptr %0, align 8
  %3 = getelementptr inbounds { i32, ptr }, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call fastcc ptr @ei_container(ptr %4) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7, !prof !1035

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8
  %9 = tail call fastcc ptr @ei_container(ptr %8) #24
  br label %10

10:                                               ; preds = %1, %7
  %11 = phi ptr [ %9, %7 ], [ null, %1 ]
  %12 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %11) #24
  %13 = icmp ult i32 %2, %12
  br i1 %13, label %15, label %14, !prof !1036

14:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.147, i32 noundef 738, ptr noundef nonnull @.str.2) #23
  br label %15

15:                                               ; preds = %10, %14
  %16 = load i32, ptr %0, align 8, !tbaa !1037
  %17 = add i32 %16, 1
  store i32 %17, ptr %0, align 8, !tbaa !1037
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @add_phi_args_after_copy(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 !prof !735 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  br label %10

7:                                                ; preds = %10
  br i1 %4, label %25, label %8

8:                                                ; preds = %7
  %9 = zext i32 %1 to i64
  br label %19

10:                                               ; preds = %5, %10
  %11 = phi i64 [ 0, %5 ], [ %17, %10 ]
  %12 = getelementptr inbounds ptr, ptr %0, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !674
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 13
  %15 = load i32, ptr %14, align 8, !tbaa !1029
  %16 = or i32 %15, 128
  store i32 %16, ptr %14, align 8, !tbaa !1029
  %17 = add nuw nsw i64 %11, 1
  %18 = icmp eq i64 %17, %6
  br i1 %18, label %7, label %10, !llvm.loop !1039

19:                                               ; preds = %8, %19
  %20 = phi i64 [ 0, %8 ], [ %23, %19 ]
  %21 = getelementptr inbounds ptr, ptr %0, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !674
  tail call void @add_phi_args_after_copy_bb(ptr noundef %22) #24
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %9
  br i1 %24, label %25, label %19, !llvm.loop !1040

25:                                               ; preds = %19, %3, %7
  %26 = icmp eq ptr %2, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %25
  tail call fastcc void @add_phi_args_after_copy_edge(ptr noundef nonnull %2) #24
  br label %28

28:                                               ; preds = %27, %25
  br i1 %4, label %40, label %29

29:                                               ; preds = %28
  %30 = zext i32 %1 to i64
  br label %31

31:                                               ; preds = %29, %31
  %32 = phi i64 [ 0, %29 ], [ %38, %31 ]
  %33 = getelementptr inbounds ptr, ptr %0, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !674
  %35 = getelementptr inbounds %struct.basic_block_def, ptr %34, i64 0, i32 13
  %36 = load i32, ptr %35, align 8, !tbaa !1029
  %37 = and i32 %36, -129
  store i32 %37, ptr %35, align 8, !tbaa !1029
  %38 = add nuw nsw i64 %32, 1
  %39 = icmp eq i64 %38, %30
  br i1 %39, label %40, label %31, !llvm.loop !1041

40:                                               ; preds = %31, %28
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_duplicate_sese_region(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !735 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %6, align 8, !tbaa !674
  %9 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !922
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %13 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %2, i32 noundef %3) #23
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %127, label %15

15:                                               ; preds = %5
  %16 = icmp eq i32 %3, 0
  br i1 %16, label %36, label %17

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 2
  %19 = zext i32 %3 to i64
  br label %20

20:                                               ; preds = %17, %33
  %21 = phi i64 [ 0, %17 ], [ %34, %33 ]
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !674
  %24 = getelementptr inbounds %struct.basic_block_def, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !1042
  %26 = icmp eq ptr %25, %12
  br i1 %26, label %27, label %127

27:                                               ; preds = %20
  %28 = load ptr, ptr %9, align 8, !tbaa !922
  %29 = icmp eq ptr %23, %28
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %18, align 8, !tbaa !1043
  %32 = icmp eq ptr %23, %31
  br i1 %32, label %127, label %33

33:                                               ; preds = %27, %30
  %34 = add nuw nsw i64 %21, 1
  %35 = icmp eq i64 %34, %19
  br i1 %35, label %36, label %20, !llvm.loop !1044

36:                                               ; preds = %33, %15
  tail call void @set_loop_copy(ptr noundef %12, ptr noundef %12) #23
  %37 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 2
  %38 = load ptr, ptr %37, align 8, !tbaa !1043
  %39 = load ptr, ptr %9, align 8, !tbaa !922
  %40 = icmp eq ptr %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = tail call fastcc ptr @loop_outer(ptr noundef nonnull %12) #24
  tail call void @set_loop_copy(ptr noundef nonnull %12, ptr noundef %42) #23
  %43 = getelementptr inbounds %struct.loop, ptr %12, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !1045
  %45 = load ptr, ptr %1, align 8, !tbaa !1028
  %46 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %44, ptr noundef %45) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %127, label %48

48:                                               ; preds = %41
  br i1 %16, label %63, label %49

49:                                               ; preds = %48
  %50 = zext i32 %3 to i64
  br label %51

51:                                               ; preds = %49, %60
  %52 = phi i64 [ 0, %49 ], [ %61, %60 ]
  %53 = getelementptr inbounds ptr, ptr %2, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !674
  %55 = load ptr, ptr %1, align 8, !tbaa !1028
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %60, label %57

57:                                               ; preds = %51
  %58 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %54, ptr noundef %55) #23
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %127

60:                                               ; preds = %51, %57
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, %50
  br i1 %62, label %63, label %51, !llvm.loop !1046

63:                                               ; preds = %60, %48, %36
  %64 = icmp eq ptr %4, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %63
  %66 = zext i32 %3 to i64
  %67 = shl nuw nsw i64 %66, 3
  %68 = tail call ptr @xmalloc(i64 noundef %67) #23
  br label %69

69:                                               ; preds = %65, %63
  %70 = phi ptr [ %4, %63 ], [ %68, %65 ]
  %71 = load ptr, ptr @cfun, align 8, !tbaa !674
  %72 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %71) #23
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5085, ptr noundef nonnull @.str.2) #23
  br label %75

75:                                               ; preds = %69, %74
  tail call void @initialize_original_copy_tables() #23
  %76 = tail call ptr @get_dominated_by_region(i32 noundef 1, ptr noundef %2, i32 noundef %3) #23
  store ptr %76, ptr %8, align 8, !tbaa !674
  %77 = load ptr, ptr %9, align 8, !tbaa !922
  %78 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 8
  %79 = load i64, ptr %78, align 8, !tbaa !1047
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %83 = load i64, ptr %82, align 8, !tbaa !1048
  %84 = tail call i64 @llvm.smin.i64(i64 %83, i64 %79)
  br label %99

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.basic_block_def, ptr %77, i64 0, i32 11
  %87 = load i32, ptr %86, align 8, !tbaa !1049
  %88 = load ptr, ptr %0, align 8, !tbaa !1028
  %89 = getelementptr inbounds %struct.basic_block_def, ptr %88, i64 0, i32 11
  %90 = load i32, ptr %89, align 8, !tbaa !1049
  %91 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %92 = load i32, ptr %91, align 4, !tbaa !1050
  %93 = mul nsw i32 %92, %90
  %94 = add nsw i32 %93, 5000
  %95 = sdiv i32 %94, 10000
  %96 = icmp eq i32 %87, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %85
  %98 = tail call i32 @llvm.smin.i32(i32 %95, i32 %87)
  br label %99

99:                                               ; preds = %97, %81, %85
  %100 = phi i32 [ 0, %81 ], [ 1, %85 ], [ %87, %97 ]
  %101 = phi i32 [ 0, %81 ], [ %95, %85 ], [ %98, %97 ]
  %102 = phi i64 [ %84, %81 ], [ 0, %85 ], [ 0, %97 ]
  %103 = tail call fastcc ptr @split_edge_bb_loc(ptr noundef nonnull %0) #24
  call void @copy_bbs(ptr noundef %2, i32 noundef %3, ptr noundef %70, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %7, ptr noundef %12, ptr noundef %103) #23
  br i1 %80, label %106, label %104

104:                                              ; preds = %99
  %105 = sub nsw i64 %79, %102
  call void @scale_bbs_frequencies_gcov_type(ptr noundef %2, i32 noundef %3, i64 noundef %105, i64 noundef %79) #23
  call void @scale_bbs_frequencies_gcov_type(ptr noundef %70, i32 noundef %3, i64 noundef %102, i64 noundef %79) #23
  br label %108

106:                                              ; preds = %99
  %107 = sub nsw i32 %100, %101
  call void @scale_bbs_frequencies_int(ptr noundef %2, i32 noundef %3, i32 noundef %107, i32 noundef %100) #23
  call void @scale_bbs_frequencies_int(ptr noundef %70, i32 noundef %3, i32 noundef %101, i32 noundef %100) #23
  br label %108

108:                                              ; preds = %106, %104
  br i1 %40, label %109, label %113

109:                                              ; preds = %108
  %110 = load ptr, ptr %6, align 8, !tbaa !674
  %111 = load <2 x ptr>, ptr %110, align 8, !tbaa !674
  %112 = shufflevector <2 x ptr> %111, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %112, ptr %37, align 8, !tbaa !674
  br label %113

113:                                              ; preds = %109, %108
  %114 = load ptr, ptr %9, align 8, !tbaa !922
  %115 = call ptr @get_bb_copy(ptr noundef %114) #23
  %116 = call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %115) #23
  %117 = icmp eq ptr %116, null
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5140, ptr noundef nonnull @.str.2) #23
  br label %119

119:                                              ; preds = %113, %118
  call void @flush_pending_stmts(ptr noundef nonnull %0) #23
  %120 = load ptr, ptr %9, align 8, !tbaa !922
  %121 = load ptr, ptr %0, align 8, !tbaa !1028
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %120, ptr noundef %121) #23
  %122 = load ptr, ptr %9, align 8, !tbaa !922
  %123 = call ptr @get_bb_original(ptr noundef %122) #23
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %8, ptr noundef %123) #24
  %124 = load ptr, ptr %8, align 8, !tbaa !674
  call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %124, i8 noundef zeroext 0) #23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %8) #24
  call void @add_phi_args_after_copy(ptr noundef %70, i32 noundef %3, ptr noundef null) #24
  call void @update_ssa(i32 noundef 2048) #23
  br i1 %64, label %125, label %126

125:                                              ; preds = %119
  call void @free(ptr noundef %70) #24
  br label %126

126:                                              ; preds = %125, %119
  call void @free_original_copy_tables() #23
  br label %127

127:                                              ; preds = %30, %20, %57, %41, %5, %126
  %128 = phi i8 [ 1, %126 ], [ 0, %5 ], [ 0, %41 ], [ 0, %57 ], [ 0, %20 ], [ 0, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  ret i8 %128
}

; Function Attrs: optsize
declare zeroext i8 @can_copy_bbs_p(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @set_loop_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @loop_outer(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !735 !PGOFuncName !1051 {
  %2 = getelementptr inbounds %struct.loop, ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !1052
  %4 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add i32 %4, -1
  %8 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %3, i32 noundef %7) #24
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: optsize
declare zeroext i8 @dominated_by_p(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @initialize_original_copy_tables() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_dominated_by_region(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @copy_bbs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @split_edge_bb_loc(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1053 !PGOFuncName !1054 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !922
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !669
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7, !prof !1055

7:                                                ; preds = %1
  %8 = tail call ptr @find_edge(ptr noundef nonnull %5, ptr noundef nonnull %3) #23
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !1056

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.edge_def, ptr %8, i64 0, i32 7
  %12 = load i32, ptr %11, align 8, !tbaa !863
  %13 = and i32 %12, 14
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17, !prof !1057

15:                                               ; preds = %10
  %16 = load ptr, ptr %0, align 8, !tbaa !1028
  br label %17

17:                                               ; preds = %7, %10, %1, %15
  %18 = phi ptr [ %16, %15 ], [ null, %1 ], [ %5, %10 ], [ %5, %7 ]
  ret ptr %18
}

; Function Attrs: optsize
declare void @scale_bbs_frequencies_gcov_type(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @scale_bbs_frequencies_int(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @redirect_edge_and_branch(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_bb_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @flush_pending_stmts(ptr noundef) #1

; Function Attrs: optsize
declare void @set_immediate_dominator(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1058 !PGOFuncName !1059 {
  tail call fastcc void @VEC_basic_block_heap_reserve(ptr noundef %0) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !674
  tail call fastcc void @VEC_basic_block_base_quick_push(ptr noundef %3, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @get_bb_original(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @iterate_fix_dominators(i32 noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_basic_block_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1060 !PGOFuncName !1061 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1062

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare void @update_ssa(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_original_copy_tables() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @gimple_duplicate_sese_tail(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !735 {
  %6 = alloca ptr, align 8
  %7 = alloca [2 x ptr], align 16
  %8 = alloca [2 x ptr], align 16
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.gimple_stmt_iterator, align 8
  %12 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !922
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !1042
  %16 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !922
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1042
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #25
  %20 = load ptr, ptr %1, align 8, !tbaa !1028
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !921
  %23 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %22) #24
  %24 = icmp eq i32 %23, 2
  br i1 %24, label %29, label %25

25:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5218, ptr noundef nonnull @.str.2) #23
  %26 = load ptr, ptr %1, align 8, !tbaa !1028
  %27 = getelementptr inbounds %struct.basic_block_def, ptr %26, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !921
  br label %29

29:                                               ; preds = %5, %25
  %30 = phi ptr [ %22, %5 ], [ %28, %25 ]
  store ptr %1, ptr %7, align 16, !tbaa !674
  %31 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %30, i32 noundef 0) #24
  %32 = icmp eq ptr %31, %1
  %33 = zext i1 %32 to i32
  %34 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %30, i32 noundef %33) #24
  %35 = getelementptr inbounds [2 x ptr], ptr %7, i64 0, i64 1
  store ptr %34, ptr %35, align 8, !tbaa !674
  %36 = tail call zeroext i8 @can_copy_bbs_p(ptr noundef %2, i32 noundef %3) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %207, label %38

38:                                               ; preds = %29
  tail call void @initialize_original_copy_tables() #23
  tail call void @set_loop_copy(ptr noundef %19, ptr noundef %15) #23
  tail call void @duplicate_subloops(ptr noundef %19, ptr noundef %15) #23
  %39 = icmp eq ptr %4, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = zext i32 %3 to i64
  %42 = shl nuw nsw i64 %41, 3
  %43 = tail call ptr @xmalloc(i64 noundef %42) #23
  br label %44

44:                                               ; preds = %40, %38
  %45 = phi ptr [ %4, %38 ], [ %43, %40 ]
  %46 = load ptr, ptr @cfun, align 8, !tbaa !674
  %47 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %46) #23
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %44
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5235, ptr noundef nonnull @.str.2) #23
  br label %50

50:                                               ; preds = %44, %49
  %51 = tail call ptr @get_dominated_by_region(i32 noundef 1, ptr noundef %2, i32 noundef %3) #23
  store ptr %51, ptr %6, align 8, !tbaa !674
  %52 = load ptr, ptr %1, align 8, !tbaa !1028
  %53 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 8
  %54 = load i64, ptr %53, align 8, !tbaa !1047
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 9
  %58 = load i64, ptr %57, align 8, !tbaa !1048
  %59 = tail call i64 @llvm.smin.i64(i64 %58, i64 %54)
  br label %70

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.basic_block_def, ptr %52, i64 0, i32 11
  %62 = load i32, ptr %61, align 8, !tbaa !1049
  %63 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 8
  %64 = load i32, ptr %63, align 4, !tbaa !1050
  %65 = mul nsw i32 %64, %62
  %66 = add nsw i32 %65, 5000
  %67 = sdiv i32 %66, 10000
  %68 = tail call i32 @llvm.umax.i32(i32 %62, i32 1)
  %69 = tail call i32 @llvm.smin.i32(i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %60, %56
  %71 = phi i32 [ 0, %56 ], [ %69, %60 ]
  %72 = phi i64 [ %59, %56 ], [ 0, %60 ]
  %73 = phi i32 [ 0, %56 ], [ %68, %60 ]
  %74 = tail call fastcc ptr @split_edge_bb_loc(ptr noundef nonnull %1) #24
  call void @copy_bbs(ptr noundef %2, i32 noundef %3, ptr noundef %45, ptr noundef nonnull %7, i32 noundef 2, ptr noundef nonnull %8, ptr noundef %19, ptr noundef %74) #23
  br i1 %55, label %77, label %75

75:                                               ; preds = %70
  %76 = sub nsw i64 %54, %72
  call void @scale_bbs_frequencies_gcov_type(ptr noundef %2, i32 noundef %3, i64 noundef %76, i64 noundef %54) #23
  call void @scale_bbs_frequencies_gcov_type(ptr noundef %45, i32 noundef %3, i64 noundef %72, i64 noundef %54) #23
  br label %79

77:                                               ; preds = %70
  %78 = sub nsw i32 %73, %71
  call void @scale_bbs_frequencies_int(ptr noundef %2, i32 noundef %3, i32 noundef %78, i32 noundef %73) #23
  call void @scale_bbs_frequencies_int(ptr noundef %45, i32 noundef %3, i32 noundef %71, i32 noundef %73) #23
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr %16, align 8, !tbaa !922
  %81 = call ptr @get_bb_copy(ptr noundef %80) #23
  %82 = load ptr, ptr %0, align 8, !tbaa !1028
  %83 = call ptr @last_stmt(ptr noundef %82) #24
  %84 = icmp eq ptr %83, null
  br i1 %84, label %90, label %85

85:                                               ; preds = %79
  %86 = load ptr, ptr %0, align 8, !tbaa !1028
  %87 = call ptr @last_stmt(ptr noundef %86) #24
  %88 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %87) #24, !range !695
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85, %79
  %91 = load ptr, ptr %0, align 8, !tbaa !1028
  br label %94

92:                                               ; preds = %85
  %93 = call ptr @split_edge(ptr noundef nonnull %0) #23
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi ptr [ %93, %92 ], [ %91, %90 ]
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %81, ptr noundef %95) #23
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %95) #24
  %96 = load ptr, ptr %1, align 8, !tbaa !1028
  %97 = call ptr @last_stmt(ptr noundef %96) #24
  %98 = call fastcc i32 @gimple_code(ptr noundef %97) #24, !range !684
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5291, ptr noundef nonnull @.str.2) #23
  br label %101

101:                                              ; preds = %94, %100
  %102 = call ptr @gimple_copy(ptr noundef %97) #23
  %103 = load ptr, ptr %35, align 8, !tbaa !674
  %104 = getelementptr inbounds %struct.edge_def, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !922
  %106 = getelementptr inbounds %struct.loop, ptr %19, i64 0, i32 3
  %107 = load ptr, ptr %106, align 8, !tbaa !1045
  %108 = icmp eq ptr %105, %107
  %109 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  br i1 %108, label %141, label %110

110:                                              ; preds = %101
  %111 = getelementptr inbounds %struct.tree_common, ptr %109, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !704
  %113 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  %114 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  %115 = getelementptr inbounds %struct.tree_common, ptr %114, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !704
  %117 = call ptr @build_int_cst(ptr noundef %116, i64 noundef 1) #23
  %118 = call ptr @fold_build2_stat_loc(i32 noundef 0, i32 noundef 64, ptr noundef %112, ptr noundef %113, ptr noundef %117) #23
  %119 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65535
  %122 = icmp eq i64 %121, 141
  br i1 %122, label %123, label %141

123:                                              ; preds = %110
  %124 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  %125 = getelementptr inbounds %struct.tree_ssa_name, ptr %124, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !704
  %127 = call fastcc ptr @gimple_bb(ptr noundef %126) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %127) #24
  %128 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #24, !range !695
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %123, %136
  %131 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #24
  %132 = call fastcc ptr @gimple_cond_rhs(ptr noundef %102) #24
  %133 = getelementptr inbounds %struct.tree_ssa_name, ptr %132, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !704
  %135 = icmp eq ptr %131, %134
  br i1 %135, label %139, label %136

136:                                              ; preds = %130
  call fastcc void @gsi_next(ptr noundef nonnull %10) #24
  %137 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %10) #24, !range !695
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %130, label %139, !llvm.loop !1063

139:                                              ; preds = %136, %130, %123
  %140 = call ptr @force_gimple_operand_gsi(ptr noundef nonnull %10, ptr noundef %118, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 0, i32 noundef 2) #23
  br label %141

141:                                              ; preds = %101, %110, %139
  %142 = phi ptr [ %140, %139 ], [ %118, %110 ], [ %109, %101 ]
  %143 = call ptr @unshare_expr(ptr noundef %142) #23
  call fastcc void @gimple_cond_set_rhs(ptr noundef %102, ptr noundef %143) #24
  %144 = call fastcc ptr @gimple_cond_lhs(ptr noundef %102) #24
  %145 = call ptr @unshare_expr(ptr noundef %144) #23
  call fastcc void @gimple_cond_set_lhs(ptr noundef %102, ptr noundef %145) #24
  call void @gsi_insert_after(ptr noundef nonnull %9, ptr noundef %102, i32 noundef 0) #23
  %146 = call fastcc ptr @single_succ_edge(ptr noundef %95) #24
  %147 = load ptr, ptr %35, align 8, !tbaa !674
  %148 = getelementptr inbounds %struct.edge_def, ptr %147, i64 0, i32 7
  %149 = load i32, ptr %148, align 8, !tbaa !863
  %150 = getelementptr inbounds %struct.edge_def, ptr %146, i64 0, i32 7
  store i32 %149, ptr %150, align 8, !tbaa !863
  %151 = load ptr, ptr %7, align 16, !tbaa !674
  %152 = getelementptr inbounds %struct.edge_def, ptr %151, i64 0, i32 7
  %153 = load i32, ptr %152, align 8, !tbaa !863
  %154 = call ptr @make_edge(ptr noundef %95, ptr noundef %81, i32 noundef %153) #23
  call void @rescan_loop_exit(ptr noundef %154, i8 noundef zeroext 1, i8 noundef zeroext 0) #23
  call void @add_phi_args_after_copy(ptr noundef %45, i32 noundef %3, ptr noundef %154) #24
  %155 = load ptr, ptr %12, align 8, !tbaa !922
  %156 = load ptr, ptr %7, align 16, !tbaa !674
  %157 = load ptr, ptr %35, align 8, !tbaa !674
  %158 = getelementptr inbounds %struct.edge_def, ptr %157, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !922
  %160 = call ptr @redirect_edge_and_branch(ptr noundef %156, ptr noundef %159) #23
  %161 = getelementptr inbounds %struct.edge_def, ptr %160, i64 0, i32 2
  store ptr null, ptr %161, align 8, !tbaa !704
  %162 = icmp eq i32 %3, 0
  br i1 %162, label %197, label %163

163:                                              ; preds = %141
  %164 = zext i32 %3 to i64
  br label %165

165:                                              ; preds = %163, %194
  %166 = phi i64 [ 0, %163 ], [ %195, %194 ]
  %167 = getelementptr inbounds ptr, ptr %45, i64 %166
  %168 = load ptr, ptr %167, align 8, !tbaa !674
  %169 = call ptr @get_bb_original(ptr noundef %168) #23
  %170 = load ptr, ptr %106, align 8, !tbaa !1045
  %171 = icmp eq ptr %169, %170
  br i1 %171, label %172, label %194

172:                                              ; preds = %165
  %173 = load ptr, ptr %167, align 8, !tbaa !674
  %174 = call fastcc ptr @single_succ_edge(ptr noundef %173) #24
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5347, ptr noundef nonnull @.str.2) #23
  br label %177

177:                                              ; preds = %172, %176
  %178 = load ptr, ptr %167, align 8, !tbaa !674
  %179 = call fastcc ptr @single_succ_edge(ptr noundef %178) #24
  %180 = call ptr @redirect_edge_and_branch(ptr noundef %179, ptr noundef %155) #23
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 2
  store ptr null, ptr %181, align 8, !tbaa !704
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %11, ptr noundef %155) #23
  %182 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %11) #24, !range !695
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %177, %184
  %185 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %11) #24
  %186 = load ptr, ptr %8, align 16, !tbaa !674
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 6
  %188 = load i32, ptr %187, align 4, !tbaa !1031
  %189 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %185, i32 noundef %188) #24
  %190 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %189) #24
  %191 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %185, ptr noundef %180) #24
  call void @add_phi_arg(ptr noundef %185, ptr noundef %190, ptr noundef %180, i32 noundef %191) #23
  call fastcc void @gsi_next(ptr noundef nonnull %11) #24
  %192 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %11) #24, !range !695
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %184, label %194, !llvm.loop !1064

194:                                              ; preds = %184, %177, %165
  %195 = add nuw nsw i64 %166, 1
  %196 = icmp eq i64 %195, %164
  br i1 %196, label %197, label %165, !llvm.loop !1065

197:                                              ; preds = %194, %141
  %198 = load ptr, ptr %8, align 16, !tbaa !674
  %199 = getelementptr inbounds [2 x ptr], ptr %8, i64 0, i64 1
  %200 = load ptr, ptr %199, align 8, !tbaa !674
  %201 = getelementptr inbounds %struct.edge_def, ptr %200, i64 0, i32 1
  %202 = load ptr, ptr %201, align 8, !tbaa !922
  %203 = call ptr @redirect_edge_and_branch(ptr noundef %198, ptr noundef %202) #23
  %204 = getelementptr inbounds %struct.edge_def, ptr %203, i64 0, i32 2
  store ptr null, ptr %204, align 8, !tbaa !704
  call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %51, i8 noundef zeroext 0) #23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %6) #24
  call void @update_ssa(i32 noundef 2048) #23
  br i1 %39, label %205, label %206

205:                                              ; preds = %197
  call void @free(ptr noundef %45) #24
  br label %206

206:                                              ; preds = %205, %197
  call void @free_original_copy_tables() #23
  br label %207

207:                                              ; preds = %29, %206
  %208 = phi i8 [ 1, %206 ], [ 0, %29 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  ret i8 %208
}

; Function Attrs: optsize
declare void @duplicate_subloops(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold_build2_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @build_int_cst(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @force_gimple_operand_gsi(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_rhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1066 !PGOFuncName !1067 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 1, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @unshare_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cond_set_lhs(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1066 !PGOFuncName !1068 {
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef 0, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare void @gsi_insert_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ_edge(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1069 !PGOFuncName !1070 {
  %2 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5, !prof !1071

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.147, i32 noundef 645, ptr noundef nonnull @.str.2) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !921
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  ret ptr %8
}

; Function Attrs: optsize
declare void @rescan_loop_exit(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1072 !PGOFuncName !1073 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1074
  %4 = load ptr, ptr %3, align 8, !tbaa !674
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1075 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #24
  ret ptr %3
}

; Function Attrs: optsize
declare void @add_phi_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !1076 {
  %3 = getelementptr inbounds %struct.edge_def, ptr %1, i64 0, i32 6
  %4 = load i32, ptr %3, align 4, !tbaa !1031
  %5 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %4) #24
  %6 = getelementptr inbounds %struct.phi_arg_d, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !1077
  ret i32 %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @gather_blocks_in_sese_region(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 !prof !735 {
  %4 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %0) #23
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3, %10
  %7 = phi ptr [ %11, %10 ], [ %4, %3 ]
  tail call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef %2, ptr noundef nonnull %7) #24
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @gather_blocks_in_sese_region(ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2) #24
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %7) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !1079

13:                                               ; preds = %10, %3
  ret void
}

; Function Attrs: optsize
declare ptr @first_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @next_dom_son(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @mark_virtual_ops_in_bb(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #23
  %4 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1, %6
  %7 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  call void @mark_virtual_ops_for_renaming(ptr noundef %7) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %8 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %6, label %10, !llvm.loop !1080

10:                                               ; preds = %6, %1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %13
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  call void @mark_virtual_ops_for_renaming(ptr noundef %14) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %15 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %13, label %17, !llvm.loop !1081

17:                                               ; preds = %13, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @mark_virtual_ops_for_renaming(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @move_sese_region_to_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !735 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.move_stmt_d, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %10 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %1) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #25
  %11 = load ptr, ptr @cfun, align 8, !tbaa !674
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !1042
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %9) #25
  %14 = icmp eq ptr %1, %2
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = icmp eq ptr %2, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %1) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5967, ptr noundef nonnull @.str.2) #23
  br label %21

21:                                               ; preds = %15, %17, %20
  store ptr null, ptr %5, align 8, !tbaa !674
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %1) #24
  call void @gather_blocks_in_sese_region(ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %5) #24
  %22 = load ptr, ptr %5, align 8
  %23 = tail call fastcc ptr @VEC_basic_block_base_address(ptr noundef %22) #24
  %24 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %22) #24
  %25 = tail call ptr @get_dominated_by_region(i32 noundef 1, ptr noundef %23, i32 noundef %24) #23
  store ptr %25, ptr %6, align 8, !tbaa !674
  %26 = load ptr, ptr %1, align 8, !tbaa !891
  %27 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %26) #24
  %28 = zext i32 %27 to i64
  %29 = tail call ptr @xcalloc(i64 noundef %28, i64 noundef 8) #23
  %30 = tail call ptr @xcalloc(i64 noundef %28, i64 noundef 4) #23
  %31 = shl nuw nsw i64 %28, 2
  %32 = tail call ptr @xmalloc(i64 noundef %31) #23
  %33 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %1) #24
  %34 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %33) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %21, %36
  %37 = phi ptr [ %49, %36 ], [ %34, %21 ]
  %38 = phi i32 [ %47, %36 ], [ 0, %21 ]
  %39 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 8
  %40 = load i32, ptr %39, align 4, !tbaa !1050
  %41 = zext i32 %38 to i64
  %42 = getelementptr inbounds i32, ptr %32, i64 %41
  store i32 %40, ptr %42, align 4, !tbaa !680
  %43 = getelementptr inbounds %struct.edge_def, ptr %37, i64 0, i32 7
  %44 = load i32, ptr %43, align 8, !tbaa !863
  %45 = getelementptr inbounds i32, ptr %30, i64 %41
  store i32 %44, ptr %45, align 4, !tbaa !680
  %46 = load ptr, ptr %37, align 8, !tbaa !1028
  %47 = add i32 %38, 1
  %48 = getelementptr inbounds ptr, ptr %29, i64 %41
  store ptr %46, ptr %48, align 8, !tbaa !674
  tail call void @remove_edge(ptr noundef nonnull %37) #23
  %49 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %33) #24
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !llvm.loop !1082

51:                                               ; preds = %36, %21
  %52 = icmp eq ptr %2, null
  br i1 %52, label %81, label %53

53:                                               ; preds = %51
  %54 = getelementptr inbounds %struct.basic_block_def, ptr %2, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !921
  %56 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %55) #24
  %57 = zext i32 %56 to i64
  %58 = tail call ptr @xcalloc(i64 noundef %57, i64 noundef 8) #23
  %59 = tail call ptr @xcalloc(i64 noundef %57, i64 noundef 4) #23
  %60 = shl nuw nsw i64 %57, 2
  %61 = tail call ptr @xmalloc(i64 noundef %60) #23
  %62 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %54) #24
  %63 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %62) #24
  %64 = icmp eq ptr %63, null
  br i1 %64, label %81, label %65

65:                                               ; preds = %53, %65
  %66 = phi ptr [ %79, %65 ], [ %63, %53 ]
  %67 = phi i32 [ %77, %65 ], [ 0, %53 ]
  %68 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 8
  %69 = load i32, ptr %68, align 4, !tbaa !1050
  %70 = zext i32 %67 to i64
  %71 = getelementptr inbounds i32, ptr %61, i64 %70
  store i32 %69, ptr %71, align 4, !tbaa !680
  %72 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 7
  %73 = load i32, ptr %72, align 8, !tbaa !863
  %74 = getelementptr inbounds i32, ptr %59, i64 %70
  store i32 %73, ptr %74, align 4, !tbaa !680
  %75 = getelementptr inbounds %struct.edge_def, ptr %66, i64 0, i32 1
  %76 = load ptr, ptr %75, align 8, !tbaa !922
  %77 = add i32 %67, 1
  %78 = getelementptr inbounds ptr, ptr %58, i64 %70
  store ptr %76, ptr %78, align 8, !tbaa !674
  tail call void @remove_edge(ptr noundef nonnull %66) #23
  %79 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %62) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %65, !llvm.loop !1083

81:                                               ; preds = %65, %53, %51
  %82 = phi i32 [ 0, %51 ], [ %56, %53 ], [ %56, %65 ]
  %83 = phi ptr [ null, %51 ], [ %61, %53 ], [ %61, %65 ]
  %84 = phi ptr [ null, %51 ], [ %59, %53 ], [ %59, %65 ]
  %85 = phi ptr [ null, %51 ], [ %58, %53 ], [ %58, %65 ]
  %86 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !652
  %88 = icmp eq ptr %87, null
  br i1 %88, label %90, label %89

89:                                               ; preds = %81
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6023, ptr noundef nonnull @.str.2) #23
  br label %90

90:                                               ; preds = %81, %89
  tail call void @push_cfun(ptr noundef nonnull %0) #23
  tail call void @init_empty_tree_cfg() #24
  %91 = load ptr, ptr %11, align 8, !tbaa !806
  %92 = icmp eq ptr %91, null
  br i1 %92, label %110, label %93

93:                                               ; preds = %90
  %94 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %7) #24, !range !810
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  tail call void @init_eh_for_function() #23
  br label %110

97:                                               ; preds = %93, %97
  %98 = phi ptr [ %101, %97 ], [ null, %93 ]
  %99 = phi i32 [ %102, %97 ], [ 0, %93 ]
  %100 = load ptr, ptr %7, align 8, !tbaa !674
  %101 = tail call fastcc ptr @find_outermost_region_in_block(ptr noundef nonnull %11, ptr noundef %100, ptr noundef %98) #24
  %102 = add i32 %99, 1
  %103 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %22, i32 noundef %102, ptr noundef nonnull %7) #24, !range !810
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %97, !llvm.loop !1084

105:                                              ; preds = %97
  tail call void @init_eh_for_function() #23
  %106 = icmp eq ptr %101, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %105
  %108 = tail call ptr @htab_create(i64 noundef 17, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @tree_map_base_eq, ptr noundef nonnull @free) #23
  %109 = tail call ptr @duplicate_eh_regions(ptr noundef nonnull %11, ptr noundef nonnull %101, i32 noundef 0, ptr noundef nonnull @new_label_mapper, ptr noundef %108) #23
  br label %110

110:                                              ; preds = %96, %105, %107, %90
  %111 = phi ptr [ null, %90 ], [ %108, %107 ], [ null, %105 ], [ null, %96 ]
  %112 = phi ptr [ null, %90 ], [ %109, %107 ], [ null, %105 ], [ null, %96 ]
  tail call void @pop_cfun() #23
  %113 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %22) #24
  %114 = icmp ugt i32 %113, 1
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6050, ptr noundef nonnull @.str.2) #23
  br label %116

116:                                              ; preds = %110, %115
  %117 = load ptr, ptr %86, align 8, !tbaa !652
  %118 = load ptr, ptr %117, align 8, !tbaa !664
  %119 = tail call ptr @pointer_map_create() #23
  %120 = getelementptr inbounds i8, ptr %9, i64 56
  store i64 0, ptr %120, align 8
  store ptr %3, ptr %9, align 8, !tbaa !1085
  %121 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %122 = load ptr, ptr %121, align 8, !tbaa !960
  %123 = getelementptr inbounds %struct.tree_decl_common, ptr %122, i64 0, i32 5
  %124 = load ptr, ptr %123, align 8, !tbaa !704
  %125 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 1
  store ptr %124, ptr %125, align 8, !tbaa !1087
  %126 = load ptr, ptr @cfun, align 8, !tbaa !674
  %127 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 6
  %128 = load ptr, ptr %127, align 8, !tbaa !960
  %129 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 2
  store ptr %128, ptr %129, align 8, !tbaa !1088
  %130 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 3
  store ptr %122, ptr %130, align 8, !tbaa !1089
  %131 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 4
  store ptr %119, ptr %131, align 8, !tbaa !1090
  %132 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 5
  store ptr %111, ptr %132, align 8, !tbaa !1091
  %133 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 6
  store ptr %112, ptr %133, align 8, !tbaa !1092
  %134 = getelementptr inbounds %struct.move_stmt_d, ptr %9, i64 0, i32 7
  store i8 1, ptr %134, align 8, !tbaa !1093
  %135 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %7) #24, !range !810
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %148, label %137

137:                                              ; preds = %116, %137
  %138 = phi ptr [ %140, %137 ], [ %118, %116 ]
  %139 = phi i32 [ %143, %137 ], [ 0, %116 ]
  %140 = load ptr, ptr %7, align 8, !tbaa !674
  %141 = icmp ne ptr %140, %2
  %142 = zext i1 %141 to i8
  call fastcc void @move_block_to_fn(ptr noundef %0, ptr noundef %140, ptr noundef %138, i8 noundef zeroext %142, ptr noundef nonnull %9) #24
  %143 = add i32 %139, 1
  %144 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %22, i32 noundef %143, ptr noundef nonnull %7) #24, !range !810
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %137, !llvm.loop !1094

146:                                              ; preds = %137
  %147 = load ptr, ptr %121, align 8, !tbaa !960
  br label %148

148:                                              ; preds = %146, %116
  %149 = phi ptr [ %147, %146 ], [ %122, %116 ]
  %150 = icmp eq ptr %3, null
  br i1 %150, label %178, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds %struct.tree_decl_common, ptr %149, i64 0, i32 5
  %153 = load ptr, ptr %152, align 8, !tbaa !704
  %154 = getelementptr inbounds %struct.tree_block, ptr %153, i64 0, i32 5
  %155 = load ptr, ptr %154, align 8, !tbaa !704
  %156 = icmp eq ptr %155, null
  br i1 %156, label %161, label %157

157:                                              ; preds = %151
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6078, ptr noundef nonnull @.str.2) #23
  %158 = load ptr, ptr %121, align 8, !tbaa !960
  %159 = getelementptr inbounds %struct.tree_decl_common, ptr %158, i64 0, i32 5
  %160 = load ptr, ptr %159, align 8, !tbaa !704
  br label %161

161:                                              ; preds = %151, %157
  %162 = phi ptr [ %153, %151 ], [ %160, %157 ]
  %163 = getelementptr inbounds %struct.tree_block, ptr %3, i64 0, i32 5
  %164 = load ptr, ptr %163, align 8, !tbaa !704
  %165 = getelementptr inbounds %struct.tree_block, ptr %162, i64 0, i32 5
  store ptr %164, ptr %165, align 8, !tbaa !704
  %166 = icmp eq ptr %164, null
  br i1 %166, label %176, label %167

167:                                              ; preds = %161, %167
  %168 = phi ptr [ %174, %167 ], [ %164, %161 ]
  %169 = load ptr, ptr %121, align 8, !tbaa !960
  %170 = getelementptr inbounds %struct.tree_decl_common, ptr %169, i64 0, i32 5
  %171 = load ptr, ptr %170, align 8, !tbaa !704
  %172 = getelementptr inbounds %struct.tree_block, ptr %168, i64 0, i32 6
  store ptr %171, ptr %172, align 8, !tbaa !704
  %173 = getelementptr inbounds %struct.tree_common, ptr %168, i64 0, i32 1
  %174 = load ptr, ptr %173, align 8, !tbaa !704
  %175 = icmp eq ptr %174, null
  br i1 %175, label %176, label %167, !llvm.loop !1095

176:                                              ; preds = %167, %161
  store ptr null, ptr %163, align 8, !tbaa !704
  %177 = load ptr, ptr %121, align 8, !tbaa !960
  br label %178

178:                                              ; preds = %176, %148
  %179 = phi ptr [ %177, %176 ], [ %149, %148 ]
  %180 = getelementptr inbounds %struct.tree_decl_common, ptr %179, i64 0, i32 5
  %181 = load ptr, ptr %180, align 8, !tbaa !704
  call fastcc void @replace_block_vars_by_duplicates(ptr noundef %181, ptr noundef %119, ptr noundef %179) #24
  %182 = icmp eq ptr %111, null
  br i1 %182, label %184, label %183

183:                                              ; preds = %178
  call void @htab_delete(ptr noundef nonnull %111) #23
  br label %184

184:                                              ; preds = %183, %178
  %185 = icmp eq ptr %112, null
  br i1 %185, label %187, label %186

186:                                              ; preds = %184
  call void @pointer_map_destroy(ptr noundef nonnull %112) #23
  br label %187

187:                                              ; preds = %186, %184
  call void @pointer_map_destroy(ptr noundef %119) #23
  call void @push_cfun(ptr noundef nonnull %0) #23
  %188 = load ptr, ptr @cfun, align 8, !tbaa !674
  %189 = getelementptr inbounds %struct.function, ptr %188, i64 0, i32 1
  %190 = load ptr, ptr %189, align 8, !tbaa !652
  %191 = load ptr, ptr %190, align 8, !tbaa !664
  %192 = call ptr @make_edge(ptr noundef %191, ptr noundef nonnull %1, i32 noundef 1) #23
  br i1 %52, label %200, label %193

193:                                              ; preds = %187
  %194 = load ptr, ptr @cfun, align 8, !tbaa !674
  %195 = getelementptr inbounds %struct.function, ptr %194, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !652
  %197 = getelementptr inbounds %struct.control_flow_graph, ptr %196, i64 0, i32 1
  %198 = load ptr, ptr %197, align 8, !tbaa !665
  %199 = call ptr @make_edge(ptr noundef nonnull %2, ptr noundef %198, i32 noundef 0) #23
  br label %200

200:                                              ; preds = %193, %187
  call void @pop_cfun() #23
  %201 = load ptr, ptr %29, align 8, !tbaa !674
  %202 = call ptr @create_empty_bb(ptr noundef %201) #23
  %203 = load ptr, ptr @cfun, align 8, !tbaa !674
  %204 = getelementptr inbounds %struct.function, ptr %203, i64 0, i32 4
  %205 = load ptr, ptr %204, align 8, !tbaa !874
  %206 = icmp eq ptr %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  call void @add_bb_to_loop(ptr noundef %202, ptr noundef %13) #23
  br label %208

208:                                              ; preds = %207, %200
  %209 = icmp eq i32 %27, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %214, %208
  %211 = icmp eq i32 %82, 0
  br i1 %211, label %238, label %212

212:                                              ; preds = %210
  %213 = zext i32 %82 to i64
  br label %226

214:                                              ; preds = %208, %214
  %215 = phi i64 [ %224, %214 ], [ 0, %208 ]
  %216 = getelementptr inbounds ptr, ptr %29, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !674
  %218 = getelementptr inbounds i32, ptr %30, i64 %215
  %219 = load i32, ptr %218, align 4, !tbaa !680
  %220 = call ptr @make_edge(ptr noundef %217, ptr noundef %202, i32 noundef %219) #23
  %221 = getelementptr inbounds i32, ptr %32, i64 %215
  %222 = load i32, ptr %221, align 4, !tbaa !680
  %223 = getelementptr inbounds %struct.edge_def, ptr %220, i64 0, i32 8
  store i32 %222, ptr %223, align 4, !tbaa !1050
  %224 = add nuw nsw i64 %215, 1
  %225 = icmp eq i64 %224, %28
  br i1 %225, label %210, label %214, !llvm.loop !1096

226:                                              ; preds = %212, %226
  %227 = phi i64 [ 0, %212 ], [ %236, %226 ]
  %228 = getelementptr inbounds ptr, ptr %85, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !674
  %230 = getelementptr inbounds i32, ptr %84, i64 %227
  %231 = load i32, ptr %230, align 4, !tbaa !680
  %232 = call ptr @make_edge(ptr noundef %202, ptr noundef %229, i32 noundef %231) #23
  %233 = getelementptr inbounds i32, ptr %83, i64 %227
  %234 = load i32, ptr %233, align 4, !tbaa !680
  %235 = getelementptr inbounds %struct.edge_def, ptr %232, i64 0, i32 8
  store i32 %234, ptr %235, align 4, !tbaa !1050
  %236 = add nuw nsw i64 %227, 1
  %237 = icmp eq i64 %236, %213
  br i1 %237, label %238, label %226, !llvm.loop !1097

238:                                              ; preds = %226, %210
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %202, ptr noundef %10) #23
  %239 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %8) #24, !range !810
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %238, %241
  %242 = phi i32 [ %244, %241 ], [ 0, %238 ]
  %243 = load ptr, ptr %8, align 8, !tbaa !674
  call void @set_immediate_dominator(i32 noundef 1, ptr noundef %243, ptr noundef %202) #23
  %244 = add i32 %242, 1
  %245 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %25, i32 noundef %244, ptr noundef nonnull %8) #24, !range !810
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %241, !llvm.loop !1098

247:                                              ; preds = %241, %238
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %6) #24
  br i1 %52, label %249, label %248

248:                                              ; preds = %247
  call void @free(ptr noundef %83) #24
  call void @free(ptr noundef %84) #24
  call void @free(ptr noundef %85) #24
  br label %249

249:                                              ; preds = %248, %247
  call void @free(ptr noundef %32) #24
  call void @free(ptr noundef %30) #24
  call void @free(ptr noundef %29) #24
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  ret ptr %202
}

; Function Attrs: optsize
declare ptr @get_immediate_dominator(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_basic_block_base_address(ptr noundef readnone %0) unnamed_addr #16 !prof !672 !PGOFuncName !1099 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1100
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_safe_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1101 !PGOFuncName !1102 {
  %3 = tail call fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7, !prof !1103

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_edge(i32 %0, ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  ret ptr %8
}

; Function Attrs: optsize
declare void @remove_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_basic_block_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !1104 !PGOFuncName !1105 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1106

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !733
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1107

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !674
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !674
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_outermost_region_in_block(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1108 {
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %1) #24
  %5 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %25

7:                                                ; preds = %3, %21
  %8 = phi ptr [ %22, %21 ], [ %2, %3 ]
  %9 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %10 = tail call i32 @lookup_stmt_eh_lp_fn(ptr noundef %0, ptr noundef %9) #23
  %11 = tail call ptr @get_eh_region_from_lp_number_fn(ptr noundef %0, i32 noundef %10) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %7
  %14 = icmp eq ptr %8, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %13
  %16 = icmp eq ptr %11, %8
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @eh_region_outermost(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %8) #23
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5863, ptr noundef nonnull @.str.2) #23
  br label %21

21:                                               ; preds = %13, %20, %17, %15, %7
  %22 = phi ptr [ %18, %17 ], [ null, %20 ], [ %8, %15 ], [ %8, %7 ], [ %11, %13 ]
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %7, label %25, !llvm.loop !1109

25:                                               ; preds = %21, %3
  %26 = phi ptr [ %2, %3 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  ret ptr %26
}

; Function Attrs: optsize
declare void @init_eh_for_function() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #1

; Function Attrs: optsize
declare i32 @tree_map_base_eq(ptr noundef, ptr noundef) #1

; Function Attrs: optsize
declare ptr @duplicate_eh_regions(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @new_label_mapper(ptr noundef %0, ptr noundef %1) #0 !prof !735 !PGOFuncName !1110 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 30
  br i1 %5, label %7, label %6

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5878, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = tail call ptr @xmalloc(i64 noundef 24) #23
  %9 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !704
  %11 = getelementptr inbounds %struct.tree_map, ptr %8, i64 0, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !1111
  store ptr %0, ptr %8, align 8, !tbaa !1114
  %12 = tail call ptr @create_artificial_label(i32 noundef 0) #23
  %13 = getelementptr inbounds %struct.tree_map, ptr %8, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !1115
  %14 = getelementptr inbounds %struct.tree_label_decl, ptr %0, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !704
  %16 = getelementptr inbounds %struct.tree_label_decl, ptr %12, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !704
  %17 = load ptr, ptr %13, align 8, !tbaa !1115
  %18 = getelementptr inbounds %struct.tree_label_decl, ptr %17, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !704
  %20 = load ptr, ptr @cfun, align 8, !tbaa !674
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !652
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 11
  %24 = load i32, ptr %23, align 8, !tbaa !1116
  %25 = icmp slt i32 %19, %24
  br i1 %25, label %28, label %26

26:                                               ; preds = %7
  %27 = add nsw i32 %19, 1
  store i32 %27, ptr %23, align 8, !tbaa !1116
  br label %28

28:                                               ; preds = %26, %7
  %29 = load i32, ptr %11, align 8, !tbaa !1111
  %30 = tail call ptr @htab_find_slot_with_hash(ptr noundef %1, ptr noundef nonnull %8, i32 noundef %29, i32 noundef 1) #23
  %31 = load ptr, ptr %30, align 8, !tbaa !674
  %32 = icmp eq ptr %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5889, ptr noundef nonnull @.str.2) #23
  br label %34

34:                                               ; preds = %28, %33
  store ptr %8, ptr %30, align 8, !tbaa !674
  %35 = load ptr, ptr %13, align 8, !tbaa !1115
  ret ptr %35
}

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_block_to_fn(ptr noundef %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 !prof !735 !PGOFuncName !1117 {
  %6 = alloca %struct.edge_iterator, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.gimple_stmt_iterator, align 8
  %9 = alloca %struct.ssa_operand_iterator_d, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  %11 = alloca %struct.walk_stmt_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #25
  tail call void @delete_from_dominance_info(i32 noundef 1, ptr noundef %1) #23
  %12 = load ptr, ptr @cfun, align 8, !tbaa !674
  %13 = getelementptr inbounds %struct.function, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !874
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  tail call void @remove_bb_from_loops(ptr noundef %1) #23
  br label %17

17:                                               ; preds = %16, %5
  %18 = tail call zeroext i8 @move_block_after(ptr noundef %1, ptr noundef %2) #23
  %19 = icmp eq i8 %3, 0
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %22 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %21) #24
  store i32 0, ptr %6, align 8, !tbaa.struct !1019
  %23 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %22, ptr %23, align 8, !tbaa.struct !1020
  %24 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %22, ptr noundef nonnull %7) #24, !range !695
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  br label %28

28:                                               ; preds = %26, %28
  %29 = load ptr, ptr @cfun, align 8, !tbaa !674
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !652
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !954
  %34 = add nsw i32 %33, -1
  store i32 %34, ptr %32, align 4, !tbaa !954
  %35 = load ptr, ptr %27, align 8, !tbaa !652
  %36 = getelementptr inbounds %struct.control_flow_graph, ptr %35, i64 0, i32 4
  %37 = load i32, ptr %36, align 4, !tbaa !954
  %38 = add nsw i32 %37, 1
  store i32 %38, ptr %36, align 4, !tbaa !954
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %39 = load i32, ptr %6, align 8
  %40 = load ptr, ptr %23, align 8
  %41 = call fastcc zeroext i8 @ei_cond(i32 %39, ptr %40, ptr noundef nonnull %7) #24, !range !695
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %28, !llvm.loop !1118

43:                                               ; preds = %28, %20, %17
  %44 = load ptr, ptr @cfun, align 8, !tbaa !674
  %45 = getelementptr inbounds %struct.function, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !652
  %47 = getelementptr inbounds %struct.control_flow_graph, ptr %46, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !662
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %50 = load i32, ptr %49, align 8, !tbaa !751
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %48, i32 noundef %50, ptr noundef null) #24
  %51 = load ptr, ptr @cfun, align 8, !tbaa !674
  %52 = getelementptr inbounds %struct.function, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !652
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %53, i64 0, i32 3
  %55 = load i32, ptr %54, align 8, !tbaa !660
  %56 = add nsw i32 %55, -1
  store i32 %56, ptr %54, align 8, !tbaa !660
  %57 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !652
  %59 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 3
  %60 = load i32, ptr %59, align 8, !tbaa !660
  %61 = add nsw i32 %60, 1
  store i32 %61, ptr %59, align 8, !tbaa !660
  %62 = load i32, ptr %49, align 8, !tbaa !751
  %63 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 5
  %64 = load i32, ptr %63, align 8, !tbaa !661
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %68, label %66

66:                                               ; preds = %43
  %67 = add nsw i32 %62, 1
  store i32 %67, ptr %63, align 8, !tbaa !661
  br label %68

68:                                               ; preds = %66, %43
  %69 = phi i32 [ %67, %66 ], [ %64, %43 ]
  %70 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !662
  %72 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %71) #24
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %80, label %74

74:                                               ; preds = %68
  %75 = add nsw i32 %69, 3
  %76 = sdiv i32 %75, 4
  %77 = add nsw i32 %76, %69
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %70, i32 noundef %77) #24
  %78 = load ptr, ptr %70, align 8, !tbaa !662
  %79 = load i32, ptr %49, align 8, !tbaa !751
  br label %80

80:                                               ; preds = %74, %68
  %81 = phi i32 [ %79, %74 ], [ %62, %68 ]
  %82 = phi ptr [ %78, %74 ], [ %71, %68 ]
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %82, i32 noundef %81, ptr noundef nonnull %1) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %8, ptr noundef nonnull %1) #23
  %83 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24, !range !695
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %120

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.move_stmt_d, ptr %4, i64 0, i32 4
  %87 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  br label %88

88:                                               ; preds = %85, %117
  %89 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24
  %90 = call fastcc ptr @gimple_phi_result_ptr(ptr noundef %89) #24
  %91 = call fastcc ptr @get_def_from_ptr(ptr noundef nonnull %90) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #25
  %92 = call zeroext i8 @is_gimple_reg(ptr noundef %91) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  call void @remove_phi_node(ptr noundef nonnull %8, i8 noundef zeroext 1) #23
  br label %117, !llvm.loop !1119

95:                                               ; preds = %88
  %96 = load ptr, ptr %86, align 8, !tbaa !1090
  %97 = load ptr, ptr %87, align 8, !tbaa !960
  %98 = call fastcc ptr @replace_ssa_name(ptr noundef %91, ptr noundef %96, ptr noundef %97) #24
  store ptr %98, ptr %90, align 8, !tbaa !674
  %99 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %9, ptr noundef %89, i32 noundef 1) #24
  %100 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #24
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %95, %112
  %103 = phi ptr [ %113, %112 ], [ %99, %95 ]
  %104 = call fastcc ptr @get_use_from_ptr(ptr noundef %103) #24
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 65535
  %107 = icmp eq i64 %106, 141
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load ptr, ptr %86, align 8, !tbaa !1090
  %110 = load ptr, ptr %87, align 8, !tbaa !960
  %111 = call fastcc ptr @replace_ssa_name(ptr noundef nonnull %104, ptr noundef %109, ptr noundef %110) #24
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %103, ptr noundef %111) #24
  br label %112

112:                                              ; preds = %102, %108
  %113 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %9) #24
  %114 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %9) #24
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %102, label %116, !llvm.loop !1120

116:                                              ; preds = %112, %95
  call fastcc void @gsi_next(ptr noundef nonnull %8) #24
  br label %117

117:                                              ; preds = %116, %94
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #25
  %118 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24, !range !695
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %88, label %120

120:                                              ; preds = %117, %80
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %10, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #25
  %121 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24, !range !695
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %177

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.walk_stmt_info, ptr %11, i64 0, i32 1
  %125 = getelementptr inbounds %struct.control_flow_graph, ptr %58, i64 0, i32 6
  %126 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 6
  %127 = getelementptr inbounds %struct.move_stmt_d, ptr %4, i64 0, i32 6
  br label %128

128:                                              ; preds = %123, %167
  %129 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %11, i8 0, i64 56, i1 false)
  store ptr %4, ptr %124, align 8, !tbaa !999
  %130 = call ptr @walk_gimple_stmt(ptr noundef nonnull %8, ptr noundef nonnull @move_stmt_r, ptr noundef nonnull @move_stmt_op, ptr noundef nonnull %11) #23
  %131 = call fastcc i32 @gimple_code(ptr noundef %129) #24, !range !684
  %132 = icmp eq i32 %131, 4
  br i1 %132, label %133, label %167

133:                                              ; preds = %128
  %134 = call fastcc ptr @gimple_label_label(ptr noundef %129) #24
  %135 = getelementptr inbounds %struct.tree_label_decl, ptr %134, i64 0, i32 1
  %136 = load i32, ptr %135, align 8, !tbaa !704
  %137 = icmp sgt i32 %136, -1
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5788, ptr noundef nonnull @.str.2) #23
  br label %139

139:                                              ; preds = %133, %138
  %140 = load ptr, ptr %125, align 8, !tbaa !663
  %141 = call fastcc i32 @VEC_basic_block_base_length(ptr noundef %140) #24
  %142 = icmp ugt i32 %141, %136
  br i1 %142, label %148, label %143

143:                                              ; preds = %139
  %144 = mul nsw i32 %136, 3
  %145 = sdiv i32 %144, 2
  %146 = add nsw i32 %145, 1
  call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %125, i32 noundef %146) #24
  %147 = load ptr, ptr %125, align 8, !tbaa !663
  br label %148

148:                                              ; preds = %143, %139
  %149 = phi ptr [ %147, %143 ], [ %140, %139 ]
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %149, i32 noundef %136, ptr noundef %1) #24
  %150 = load ptr, ptr @cfun, align 8, !tbaa !674
  %151 = getelementptr inbounds %struct.function, ptr %150, i64 0, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !652
  %153 = getelementptr inbounds %struct.control_flow_graph, ptr %152, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !663
  call fastcc void @VEC_basic_block_base_replace(ptr noundef %154, i32 noundef %136, ptr noundef null) #24
  %155 = getelementptr inbounds %struct.tree_decl_minimal, ptr %134, i64 0, i32 4
  %156 = load ptr, ptr %155, align 8, !tbaa !704
  %157 = load ptr, ptr %126, align 8, !tbaa !960
  %158 = icmp eq ptr %156, %157
  br i1 %158, label %160, label %159

159:                                              ; preds = %148
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5801, ptr noundef nonnull @.str.2) #23
  br label %160

160:                                              ; preds = %148, %159
  %161 = load ptr, ptr %57, align 8, !tbaa !652
  %162 = getelementptr inbounds %struct.control_flow_graph, ptr %161, i64 0, i32 11
  %163 = load i32, ptr %162, align 8, !tbaa !1116
  %164 = icmp slt i32 %136, %163
  br i1 %164, label %167, label %165

165:                                              ; preds = %160
  %166 = add nsw i32 %136, 1
  store i32 %166, ptr %162, align 8, !tbaa !1116
  br label %167

167:                                              ; preds = %160, %165, %128
  %168 = load ptr, ptr @cfun, align 8, !tbaa !674
  %169 = load ptr, ptr %127, align 8, !tbaa !1092
  %170 = call zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef %0, ptr noundef %129, ptr noundef %168, ptr noundef %129, ptr noundef %169, i32 noundef 0) #23
  %171 = load ptr, ptr @cfun, align 8, !tbaa !674
  %172 = call zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef %171, ptr noundef %129) #23
  %173 = load ptr, ptr @cfun, align 8, !tbaa !674
  call void @gimple_duplicate_stmt_histograms(ptr noundef %0, ptr noundef %129, ptr noundef %173, ptr noundef %129) #23
  %174 = load ptr, ptr @cfun, align 8, !tbaa !674
  call void @gimple_remove_stmt_histograms(ptr noundef %174, ptr noundef %129) #23
  call void @free_stmt_operands(ptr noundef %129) #23
  call void @push_cfun(ptr noundef %0) #23
  call fastcc void @update_stmt(ptr noundef %129) #24
  call void @pop_cfun() #23
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %11) #25
  call fastcc void @gsi_next(ptr noundef nonnull %8) #24
  %175 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %8) #24, !range !695
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %128, label %177, !llvm.loop !1121

177:                                              ; preds = %167, %120
  %178 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %179 = call fastcc ptr @ei_start_1(ptr noundef nonnull %178) #24
  store i32 0, ptr %6, align 8, !tbaa.struct !1019
  %180 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %179, ptr %180, align 8, !tbaa.struct !1020
  %181 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %179, ptr noundef nonnull %7) #24, !range !695
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %205, label %183

183:                                              ; preds = %177
  %184 = getelementptr inbounds %struct.move_stmt_d, ptr %4, i64 0, i32 1
  br label %185

185:                                              ; preds = %183, %200
  %186 = load ptr, ptr %7, align 8, !tbaa !674
  %187 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 5
  %188 = load i32, ptr %187, align 8, !tbaa !1122
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = load ptr, ptr %4, align 8, !tbaa !1085
  %192 = icmp eq ptr %191, null
  br i1 %192, label %197, label %193

193:                                              ; preds = %190
  %194 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 4
  %195 = load ptr, ptr %194, align 8, !tbaa !1123
  %196 = icmp eq ptr %195, %191
  br i1 %196, label %197, label %200

197:                                              ; preds = %193, %190
  %198 = load ptr, ptr %184, align 8, !tbaa !1087
  %199 = getelementptr inbounds %struct.edge_def, ptr %186, i64 0, i32 4
  store ptr %198, ptr %199, align 8, !tbaa !1123
  br label %200

200:                                              ; preds = %193, %197, %185
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %201 = load i32, ptr %6, align 8
  %202 = load ptr, ptr %180, align 8
  %203 = call fastcc zeroext i8 @ei_cond(i32 %201, ptr %202, ptr noundef nonnull %7) #24, !range !695
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %185, !llvm.loop !1124

205:                                              ; preds = %200, %177
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_block_vars_by_duplicates(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1125 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !674
  %7 = icmp eq ptr %6, null
  br i1 %7, label %43, label %8

8:                                                ; preds = %3, %38
  %9 = phi ptr [ %41, %38 ], [ %6, %3 ]
  %10 = phi ptr [ %40, %38 ], [ %5, %3 ]
  store ptr %9, ptr %4, align 8, !tbaa !674
  %11 = load i64, ptr %9, align 8
  %12 = and i64 %11, 65534
  %13 = icmp eq i64 %12, 32
  br i1 %13, label %14, label %38

14:                                               ; preds = %8
  call fastcc void @replace_by_duplicate_decl(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #24
  %15 = load ptr, ptr %4, align 8, !tbaa !674
  %16 = load ptr, ptr %10, align 8, !tbaa !674
  %17 = icmp eq ptr %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %14
  %19 = load i64, ptr %16, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 32
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_common, ptr %16, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 67108864
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @decl_value_expr_lookup(ptr noundef nonnull %16) #23
  tail call void @decl_value_expr_insert(ptr noundef %15, ptr noundef %28) #23
  %29 = getelementptr inbounds %struct.tree_decl_common, ptr %15, i64 0, i32 2
  %30 = load i64, ptr %29, align 8
  %31 = or i64 %30, 67108864
  store i64 %31, ptr %29, align 8
  %32 = load ptr, ptr %10, align 8, !tbaa !674
  br label %33

33:                                               ; preds = %27, %22, %18
  %34 = phi ptr [ %32, %27 ], [ %16, %22 ], [ %16, %18 ]
  %35 = getelementptr inbounds %struct.tree_common, ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !704
  %37 = getelementptr inbounds %struct.tree_common, ptr %15, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !704
  store ptr %15, ptr %10, align 8, !tbaa !674
  br label %38

38:                                               ; preds = %8, %14, %33
  %39 = phi ptr [ %9, %8 ], [ %15, %14 ], [ %15, %33 ]
  %40 = getelementptr inbounds %struct.tree_common, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !674
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %8, !llvm.loop !1126

43:                                               ; preds = %38, %3
  %44 = getelementptr inbounds %struct.tree_block, ptr %0, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !704
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %43, %47
  %48 = phi ptr [ %50, %47 ], [ %45, %43 ]
  tail call fastcc void @replace_block_vars_by_duplicates(ptr noundef nonnull %48, ptr noundef %1, ptr noundef %2) #24
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !704
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %47, !llvm.loop !1127

52:                                               ; preds = %47, %43
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_empty_bb(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @add_bb_to_loop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_expr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_node(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_eh_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_decl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @check_bb_profile(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_body(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_first_stmt(ptr noundef readonly %0) unnamed_addr #9 !prof !735 !PGOFuncName !1128 {
  %2 = tail call fastcc ptr @gimple_seq_first(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !742
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_seq_last_stmt(ptr noundef readonly %0) unnamed_addr #9 !prof !735 !PGOFuncName !1129 {
  %2 = tail call fastcc ptr @gimple_seq_last(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !742
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare void @print_gimple_seq(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @print_generic_stmt_indented(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_function(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !735 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @dump_function_to_file(ptr noundef %0, ptr noundef %3, i32 noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_loops_bb(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !prof !735 {
  %5 = sext i32 %2 to i64
  %6 = add nsw i64 %5, 1
  %7 = alloca i8, i64 %6, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %7, i8 32, i64 %5, i1 false)
  %8 = getelementptr inbounds i8, ptr %7, i64 %5
  store i8 0, ptr %8, align 1, !tbaa !704
  %9 = icmp sgt i32 %3, 1
  br i1 %9, label %10, label %21

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %12 = load i32, ptr %11, align 8, !tbaa !751
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, ptr noundef nonnull %7, i32 noundef %12) #24
  call fastcc void @print_pred_bbs(ptr noundef %0, ptr noundef %1) #24
  %14 = call i64 @fwrite(ptr nonnull @.str.39, i64 12, i64 1, ptr %0)
  call fastcc void @print_succ_bbs(ptr noundef %0, ptr noundef %1) #24
  %15 = call i64 @fwrite(ptr nonnull @.str.40, i64 3, i64 1, ptr %0)
  %16 = icmp eq i32 %3, 2
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, ptr noundef nonnull %7) #24
  %19 = add nsw i32 %2, 4
  call void @gimple_dump_bb(ptr noundef nonnull %1, ptr noundef %0, i32 noundef %19, i32 noundef 16448) #23
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, ptr noundef nonnull %7) #24
  br label %21

21:                                               ; preds = %4, %17, %10
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_pred_bbs(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1130 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  %5 = tail call fastcc ptr @ei_start_1(ptr noundef %1) #24
  store i32 0, ptr %4, align 8, !tbaa.struct !1019
  %6 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %5, ptr %6, align 8, !tbaa.struct !1020
  %7 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %5, ptr noundef nonnull %3) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %19, label %9

9:                                                ; preds = %2, %9
  %10 = load ptr, ptr %3, align 8, !tbaa !674
  %11 = load ptr, ptr %10, align 8, !tbaa !1028
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 9
  %13 = load i32, ptr %12, align 8, !tbaa !751
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.148, i32 noundef %13) #24
  call fastcc void @ei_next(ptr noundef nonnull %4) #24
  %15 = load i32, ptr %4, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = call fastcc zeroext i8 @ei_cond(i32 %15, ptr %16, ptr noundef nonnull %3) #24, !range !695
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %9, !llvm.loop !1131

19:                                               ; preds = %9, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_succ_bbs(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1132 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 1
  %6 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %5) #24
  store i32 0, ptr %4, align 8, !tbaa.struct !1019
  %7 = getelementptr inbounds i8, ptr %4, i64 8
  store ptr %6, ptr %7, align 8, !tbaa.struct !1020
  %8 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %6, ptr noundef nonnull %3) #24, !range !695
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2, %10
  %11 = load ptr, ptr %3, align 8, !tbaa !674
  %12 = getelementptr inbounds %struct.edge_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !922
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !751
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.148, i32 noundef %15) #24
  call fastcc void @ei_next(ptr noundef nonnull %4) #24
  %17 = load i32, ptr %4, align 8
  %18 = load ptr, ptr %7, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %3) #24, !range !695
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %10, !llvm.loop !1133

21:                                               ; preds = %10, %2
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @print_loops(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !735 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !652
  %6 = load ptr, ptr %5, align 8, !tbaa !664
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1042
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call fastcc void @print_loop_and_siblings(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %1) #24
  br label %13

13:                                               ; preds = %12, %8, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_loop_and_siblings(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !735 !PGOFuncName !1134 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4, %6
  %7 = phi ptr [ %9, %6 ], [ %1, %4 ]
  tail call fastcc void @print_loop(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %2, i32 noundef %3) #24
  %8 = getelementptr inbounds %struct.loop, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !917
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %6

11:                                               ; preds = %6, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_loops(i32 noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_loops(ptr noundef %2, i32 noundef %0) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_loop(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !735 {
  %3 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call fastcc void @print_loop(ptr noundef %3, ptr noundef %0, i32 noundef 0, i32 noundef %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @print_loop(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 !prof !735 !PGOFuncName !1135 {
  %5 = icmp eq ptr %1, null
  br i1 %5, label %79, label %6

6:                                                ; preds = %4
  %7 = sext i32 %2 to i64
  %8 = add nsw i64 %7, 1
  %9 = alloca i8, i64 %8, align 16
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %9, i8 32, i64 %7, i1 false)
  %10 = getelementptr inbounds i8, ptr %9, i64 %7
  store i8 0, ptr %10, align 1, !tbaa !704
  %11 = load i32, ptr %1, align 8, !tbaa !912
  %12 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !1043
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 9
  %15 = load i32, ptr %14, align 8, !tbaa !751
  %16 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !1045
  %18 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %19 = load i32, ptr %18, align 8, !tbaa !751
  %20 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef nonnull %9, i32 noundef %11, i32 noundef %15, i32 noundef %19) #24
  %21 = call i64 @fwrite(ptr nonnull @.str.150, i64 10, i64 1, ptr %0)
  %22 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !1136
  call void @print_generic_expr(ptr noundef %0, ptr noundef %23, i32 noundef 0) #23
  %24 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 14
  %25 = load i8, ptr %24, align 8, !tbaa !1137
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %6
  %28 = call i64 @fwrite(ptr nonnull @.str.151, i64 16, i64 1, ptr %0)
  %29 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 12
  %30 = load i64, ptr %29, align 8
  %31 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 12, i32 1
  %32 = load i64, ptr %31, align 8
  call void @dump_double_int(ptr noundef %0, i64 %30, i64 %32, i8 noundef zeroext 1) #23
  br label %33

33:                                               ; preds = %27, %6
  %34 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 15
  %35 = load i8, ptr %34, align 1, !tbaa !1138
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = call i64 @fwrite(ptr nonnull @.str.152, i64 13, i64 1, ptr %0)
  %39 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 13
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 13, i32 1
  %42 = load i64, ptr %41, align 8
  call void @dump_double_int(ptr noundef %0, i64 %40, i64 %42, i8 noundef zeroext 1) #23
  br label %43

43:                                               ; preds = %37, %33
  %44 = call i64 @fwrite(ptr nonnull @.str.34, i64 2, i64 1, ptr %0)
  %45 = icmp sgt i32 %3, 0
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.153, ptr noundef nonnull %9) #24
  %48 = load ptr, ptr @cfun, align 8, !tbaa !674
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !652
  %51 = load ptr, ptr %50, align 8, !tbaa !664
  %52 = getelementptr inbounds %struct.basic_block_def, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !666
  %54 = getelementptr inbounds %struct.control_flow_graph, ptr %50, i64 0, i32 1
  %55 = load ptr, ptr %54, align 8, !tbaa !665
  %56 = icmp eq ptr %53, %55
  br i1 %56, label %74, label %57

57:                                               ; preds = %46, %65
  %58 = phi ptr [ %66, %65 ], [ %48, %46 ]
  %59 = phi ptr [ %68, %65 ], [ %53, %46 ]
  %60 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !1042
  %62 = icmp eq ptr %61, %1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  call void @print_loops_bb(ptr noundef %0, ptr noundef nonnull %59, i32 noundef %2, i32 noundef %3) #24
  %64 = load ptr, ptr @cfun, align 8, !tbaa !674
  br label %65

65:                                               ; preds = %57, %63
  %66 = phi ptr [ %58, %57 ], [ %64, %63 ]
  %67 = getelementptr inbounds %struct.basic_block_def, ptr %59, i64 0, i32 6
  %68 = load ptr, ptr %67, align 8, !tbaa !666
  %69 = getelementptr inbounds %struct.function, ptr %66, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !652
  %71 = getelementptr inbounds %struct.control_flow_graph, ptr %70, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !665
  %73 = icmp eq ptr %68, %72
  br i1 %73, label %74, label %57, !llvm.loop !1139

74:                                               ; preds = %65, %46
  %75 = getelementptr inbounds %struct.loop, ptr %1, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !916
  %77 = add nsw i32 %2, 2
  call fastcc void @print_loop_and_siblings(ptr noundef %0, ptr noundef %76, i32 noundef %77, i32 noundef %3) #24
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.154, ptr noundef nonnull %9) #24
  br label %79

79:                                               ; preds = %43, %74, %4
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_loop_num(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 !prof !735 {
  %3 = tail call fastcc ptr @get_loop(i32 noundef %0) #24
  tail call void @debug_loop(ptr noundef %3, i32 noundef %1) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_loop(i32 noundef %0) unnamed_addr #9 !prof !735 !PGOFuncName !1140 {
  %2 = load ptr, ptr @cfun, align 8, !tbaa !674
  %3 = getelementptr inbounds %struct.function, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !874
  %5 = getelementptr inbounds %struct.loops, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1141
  %7 = tail call fastcc ptr @VEC_loop_p_base_index(ptr noundef %6, i32 noundef %0) #24
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_purge_dead_abnormal_call_edges(ptr noundef %0) local_unnamed_addr #0 !prof !735 {
  %2 = alloca %struct.edge_iterator, align 8
  %3 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %0) #24, !range !695
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 20
  %6 = load i32, ptr %5, align 8
  %7 = and i32 %6, 1048576
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %1
  %10 = tail call ptr @last_stmt(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef nonnull %10) #24, !range !695
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %40

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %17 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %16) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1019
  %18 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %17, ptr %18, align 8, !tbaa.struct !1020
  %19 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %17) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %15, %34
  %22 = phi ptr [ %35, %34 ], [ %17, %15 ]
  %23 = phi i32 [ %36, %34 ], [ 0, %15 ]
  %24 = phi ptr [ %38, %34 ], [ %19, %15 ]
  %25 = phi i8 [ %37, %34 ], [ %3, %15 ]
  %26 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !863
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  tail call void @remove_edge(ptr noundef nonnull %24) #23
  br label %34

31:                                               ; preds = %21
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %32 = load i32, ptr %2, align 8
  %33 = load ptr, ptr %18, align 8
  br label %34

34:                                               ; preds = %31, %30
  %35 = phi ptr [ %22, %30 ], [ %33, %31 ]
  %36 = phi i32 [ %23, %30 ], [ %32, %31 ]
  %37 = phi i8 [ 1, %30 ], [ %25, %31 ]
  %38 = tail call fastcc ptr @ei_safe_edge(i32 %36, ptr %35) #24
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %21, !llvm.loop !1142

40:                                               ; preds = %34, %15, %12
  %41 = phi i8 [ %3, %12 ], [ %3, %15 ], [ %37, %34 ]
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void @free_dominance_info(i32 noundef 1) #23
  br label %44

44:                                               ; preds = %43, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  br label %45

45:                                               ; preds = %44, %1
  %46 = phi i8 [ %41, %44 ], [ %3, %1 ]
  ret i8 %46
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef %0) local_unnamed_addr #0 !prof !1143 {
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %3 = tail call ptr @last_stmt(ptr noundef %0) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1144

5:                                                ; preds = %1
  %6 = tail call zeroext i8 @stmt_can_throw_internal(ptr noundef nonnull %3) #23
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %33, !prof !1145

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %10 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %9) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1019
  %11 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %10, ptr %11, align 8, !tbaa.struct !1020
  %12 = tail call fastcc ptr @ei_safe_edge(i32 0, ptr %10) #24
  %13 = icmp eq ptr %12, null
  br i1 %13, label %33, label %14, !prof !1146

14:                                               ; preds = %8, %27
  %15 = phi ptr [ %28, %27 ], [ %10, %8 ]
  %16 = phi i32 [ %29, %27 ], [ 0, %8 ]
  %17 = phi ptr [ %31, %27 ], [ %12, %8 ]
  %18 = phi i8 [ %30, %27 ], [ 0, %8 ]
  %19 = getelementptr inbounds %struct.edge_def, ptr %17, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !863
  %21 = and i32 %20, 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23, !prof !1147

23:                                               ; preds = %14
  tail call void @remove_edge_and_dominated_blocks(ptr noundef nonnull %17) #24
  br label %27

24:                                               ; preds = %14
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %25 = load i32, ptr %2, align 8
  %26 = load ptr, ptr %11, align 8
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi ptr [ %15, %23 ], [ %26, %24 ]
  %29 = phi i32 [ %16, %23 ], [ %25, %24 ]
  %30 = phi i8 [ 1, %23 ], [ %18, %24 ]
  %31 = tail call fastcc ptr @ei_safe_edge(i32 %29, ptr %28) #24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %14, !prof !1148, !llvm.loop !1149

33:                                               ; preds = %27, %8, %5
  %34 = phi i8 [ 0, %5 ], [ 0, %8 ], [ %30, %27 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  ret i8 %34
}

; Function Attrs: optsize
declare void @free_dominance_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @remove_edge_and_dominated_blocks(ptr noundef %0) local_unnamed_addr #0 !prof !1150 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.edge_iterator, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store ptr null, ptr %2, align 8, !tbaa !674
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  store ptr null, ptr %3, align 8, !tbaa !674
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %8) #25
  %9 = tail call zeroext i8 @dom_info_available_p(i32 noundef 1) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12, !prof !1151

11:                                               ; preds = %1
  tail call void @remove_edge(ptr noundef %0) #23
  br label %169

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !922
  %15 = load ptr, ptr @cfun, align 8, !tbaa !674
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !652
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !665
  %20 = icmp eq ptr %14, %19
  br i1 %20, label %21, label %30, !prof !1151

21:                                               ; preds = %12
  %22 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !674
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !1028
  %26 = getelementptr inbounds %struct.basic_block_def, ptr %25, i64 0, i32 9
  %27 = load i32, ptr %26, align 8, !tbaa !751
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %22, i32 noundef %27) #23
  br label %29

29:                                               ; preds = %24, %21
  tail call void @remove_edge(ptr noundef nonnull %0) #23
  br label %169

30:                                               ; preds = %12
  %31 = tail call fastcc ptr @ei_start_1(ptr noundef %14) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !1019
  %32 = getelementptr inbounds i8, ptr %5, i64 8
  store ptr %31, ptr %32, align 8, !tbaa.struct !1020
  %33 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %31, ptr noundef nonnull %4) #24, !range !695
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35, !prof !1152

35:                                               ; preds = %30, %43
  %36 = load ptr, ptr %4, align 8, !tbaa !674
  %37 = icmp eq ptr %36, %0
  br i1 %37, label %43, label %38, !prof !1153

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 8, !tbaa !1028
  %40 = load ptr, ptr %13, align 8, !tbaa !922
  %41 = tail call zeroext i8 @dominated_by_p(i32 noundef 1, ptr noundef %39, ptr noundef %40) #23
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %48, label %43, !prof !1154

43:                                               ; preds = %38, %35
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %44 = load i32, ptr %5, align 8
  %45 = load ptr, ptr %32, align 8
  %46 = call fastcc zeroext i8 @ei_cond(i32 %44, ptr %45, ptr noundef nonnull %4) #24, !range !695
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %35, !prof !1155, !llvm.loop !1156

48:                                               ; preds = %43, %38, %30
  %49 = phi i1 [ true, %30 ], [ false, %38 ], [ true, %43 ]
  %50 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %51 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #23
  %52 = load ptr, ptr %13, align 8, !tbaa !922
  br i1 %49, label %58, label %53, !prof !1157

53:                                               ; preds = %48
  %54 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %52) #23
  %55 = getelementptr inbounds %struct.basic_block_def, ptr %54, i64 0, i32 9
  %56 = load i32, ptr %55, align 8, !tbaa !751
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %56) #23
  br label %125

58:                                               ; preds = %48
  %59 = tail call ptr @get_all_dominated_blocks(i32 noundef 1, ptr noundef %52) #23
  store ptr %59, ptr %2, align 8, !tbaa !674
  %60 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %59, i32 noundef 0, ptr noundef nonnull %7) #24, !range !810
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %65, !prof !1152

62:                                               ; preds = %91, %58
  %63 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %59, i32 noundef 0, ptr noundef nonnull %7) #24, !range !810
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %104, label %95, !prof !1152

65:                                               ; preds = %58, %91
  %66 = phi i32 [ %92, %91 ], [ 0, %58 ]
  %67 = load ptr, ptr %7, align 8, !tbaa !674
  %68 = getelementptr inbounds %struct.basic_block_def, ptr %67, i64 0, i32 1
  %69 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %68) #24
  store i32 0, ptr %5, align 8, !tbaa.struct !1019
  store ptr %69, ptr %32, align 8, !tbaa.struct !1020
  %70 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %69, ptr noundef nonnull %4) #24, !range !695
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %91, label %72, !prof !1158

72:                                               ; preds = %65, %86
  %73 = load ptr, ptr %4, align 8, !tbaa !674
  %74 = getelementptr inbounds %struct.edge_def, ptr %73, i64 0, i32 1
  %75 = load ptr, ptr %74, align 8, !tbaa !922
  %76 = load ptr, ptr @cfun, align 8, !tbaa !674
  %77 = getelementptr inbounds %struct.function, ptr %76, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !652
  %79 = getelementptr inbounds %struct.control_flow_graph, ptr %78, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !665
  %81 = icmp eq ptr %75, %80
  br i1 %81, label %86, label %82, !prof !1159

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.basic_block_def, ptr %75, i64 0, i32 9
  %84 = load i32, ptr %83, align 8, !tbaa !751
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %50, i32 noundef %84) #23
  br label %86

86:                                               ; preds = %72, %82
  call fastcc void @ei_next(ptr noundef nonnull %5) #24
  %87 = load i32, ptr %5, align 8
  %88 = load ptr, ptr %32, align 8
  %89 = call fastcc zeroext i8 @ei_cond(i32 %87, ptr %88, ptr noundef nonnull %4) #24, !range !695
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %91, label %72, !prof !1160, !llvm.loop !1161

91:                                               ; preds = %86, %65
  %92 = add i32 %66, 1
  %93 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %59, i32 noundef %92, ptr noundef nonnull %7) #24, !range !810
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %62, label %65, !prof !1162, !llvm.loop !1163

95:                                               ; preds = %62, %95
  %96 = phi i32 [ %101, %95 ], [ 0, %62 ]
  %97 = load ptr, ptr %7, align 8, !tbaa !674
  %98 = getelementptr inbounds %struct.basic_block_def, ptr %97, i64 0, i32 9
  %99 = load i32, ptr %98, align 8, !tbaa !751
  %100 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef %50, i32 noundef %99) #23
  %101 = add i32 %96, 1
  %102 = call fastcc i32 @VEC_basic_block_base_iterate(ptr noundef %59, i32 noundef %101, ptr noundef nonnull %7) #24, !range !810
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %95, !prof !1162, !llvm.loop !1164

104:                                              ; preds = %95, %62
  %105 = phi i32 [ 0, %62 ], [ %101, %95 ]
  store i32 %105, ptr %6, align 4, !tbaa !680
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %50, ptr noundef nonnull %6) #24
  %106 = load ptr, ptr %7, align 8, !tbaa !674
  %107 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %6) #24, !range !695
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %123, label %109, !prof !1152

109:                                              ; preds = %104, %109
  %110 = load ptr, ptr @cfun, align 8, !tbaa !674
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 1
  %112 = load ptr, ptr %111, align 8, !tbaa !652
  %113 = getelementptr inbounds %struct.control_flow_graph, ptr %112, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !662
  %115 = load i32, ptr %6, align 4, !tbaa !680
  %116 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %114, i32 noundef %115) #24
  %117 = tail call ptr @get_immediate_dominator(i32 noundef 1, ptr noundef %116) #23
  %118 = getelementptr inbounds %struct.basic_block_def, ptr %117, i64 0, i32 9
  %119 = load i32, ptr %118, align 8, !tbaa !751
  %120 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %51, i32 noundef %119) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  %121 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %6) #24, !range !695
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %109, !prof !1165, !llvm.loop !1166

123:                                              ; preds = %109, %104
  %124 = phi ptr [ %106, %104 ], [ %116, %109 ]
  store ptr %124, ptr %7, align 8, !tbaa !674
  br label %125

125:                                              ; preds = %123, %53
  %126 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !674
  %127 = icmp eq ptr %126, null
  br i1 %127, label %135, label %128, !prof !1151

128:                                              ; preds = %125
  %129 = load ptr, ptr %0, align 8, !tbaa !1028
  %130 = getelementptr inbounds %struct.basic_block_def, ptr %129, i64 0, i32 9
  %131 = load i32, ptr %130, align 8, !tbaa !751
  %132 = tail call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %126, i32 noundef %131) #23
  %133 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !674
  %134 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %133, ptr noundef %50) #23
  br label %135

135:                                              ; preds = %128, %125
  br i1 %49, label %137, label %136, !prof !1157

136:                                              ; preds = %135
  tail call void @remove_edge(ptr noundef %0) #23
  br label %147

137:                                              ; preds = %135
  %138 = load ptr, ptr %2, align 8
  %139 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %138) #24
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %146, label %141, !prof !1152

141:                                              ; preds = %137, %141
  %142 = phi i32 [ %143, %141 ], [ %139, %137 ]
  %143 = add i32 %142, -1
  %144 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %138, i32 noundef %143) #24
  tail call void @delete_basic_block(ptr noundef %144) #23
  %145 = icmp eq i32 %143, 0
  br i1 %145, label %146, label %141, !prof !1162, !llvm.loop !1167

146:                                              ; preds = %141, %137
  store i32 -1, ptr %6, align 4, !tbaa !680
  br label %147

147:                                              ; preds = %146, %136
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %8, ptr noundef %51, ptr noundef nonnull %6) #24
  %148 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %6) #24, !range !695
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %167, label %150, !prof !1168

150:                                              ; preds = %147, %164
  %151 = load ptr, ptr @cfun, align 8, !tbaa !674
  %152 = getelementptr inbounds %struct.function, ptr %151, i64 0, i32 1
  %153 = load ptr, ptr %152, align 8, !tbaa !652
  %154 = getelementptr inbounds %struct.control_flow_graph, ptr %153, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !662
  %156 = load i32, ptr %6, align 4, !tbaa !680
  %157 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %155, i32 noundef %156) #24
  %158 = tail call ptr @first_dom_son(i32 noundef 1, ptr noundef %157) #23
  %159 = icmp eq ptr %158, null
  br i1 %159, label %164, label %160, !prof !1169

160:                                              ; preds = %150, %160
  %161 = phi ptr [ %162, %160 ], [ %158, %150 ]
  call fastcc void @VEC_basic_block_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %161) #24
  %162 = tail call ptr @next_dom_son(i32 noundef 1, ptr noundef nonnull %161) #23
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %160, !prof !1170, !llvm.loop !1171

164:                                              ; preds = %160, %150
  call fastcc void @bmp_iter_next(ptr noundef nonnull %8, ptr noundef nonnull %6) #24
  %165 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %8, ptr noundef nonnull %6) #24, !range !695
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %150, !prof !1172, !llvm.loop !1173

167:                                              ; preds = %164, %147
  %168 = load ptr, ptr %3, align 8, !tbaa !674
  tail call void @iterate_fix_dominators(i32 noundef 1, ptr noundef %168, i8 noundef zeroext 1) #23
  tail call void @bitmap_obstack_free(ptr noundef %50) #23
  tail call void @bitmap_obstack_free(ptr noundef %51) #23
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %2) #24
  call fastcc void @VEC_basic_block_heap_free(ptr noundef nonnull %3) #24
  br label %169

169:                                              ; preds = %167, %29, %11
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @dom_info_available_p(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_all_dominated_blocks(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !1174 !PGOFuncName !1175 {
  %4 = load ptr, ptr %1, align 8, !tbaa !1176
  store ptr %4, ptr %0, align 8, !tbaa !1178
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !1180
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !1181

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !1178
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !1182
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !1184
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !958
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !1185
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !680
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #4 !prof !1186 !PGOFuncName !1187 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1185
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !1188

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !1189

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !680
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !1190, !llvm.loop !1191

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !680
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !680
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !1184
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !1178
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !1184
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !1192

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !958
  store i64 %35, ptr %3, align 8, !tbaa !1185
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !1193

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !680
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !680
  %40 = load i32, ptr %23, align 8, !tbaa !1184
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !1184
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !1194, !llvm.loop !1195

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !1196
  store ptr %44, ptr %0, align 8, !tbaa !1178
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !1197

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !1182
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !680
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !1185
  store i32 %16, ptr %1, align 4, !tbaa !680
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #2 !prof !1198 !PGOFuncName !1199 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1185
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !1185
  %6 = load i32, ptr %1, align 4, !tbaa !680
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !680
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @delete_basic_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @gimple_purge_all_dead_eh_edges(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !735 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #25
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %0, ptr noundef nonnull %2) #24
  %4 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %1, %23
  %7 = phi i8 [ %24, %23 ], [ 0, %1 ]
  %8 = load ptr, ptr @cfun, align 8, !tbaa !674
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !652
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !662
  %13 = load i32, ptr %2, align 4, !tbaa !680
  %14 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %12, i32 noundef %13) #24
  %15 = icmp ne ptr %14, null
  %16 = icmp ne i8 %7, 0
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6844, ptr noundef nonnull @.str.2) #23
  br label %23

19:                                               ; preds = %6
  br i1 %15, label %20, label %23

20:                                               ; preds = %19
  %21 = tail call zeroext i8 @gimple_purge_dead_eh_edges(ptr noundef nonnull %14) #24, !range !695
  %22 = or i8 %21, %7
  br label %23

23:                                               ; preds = %18, %20, %19
  %24 = phi i8 [ %22, %20 ], [ %7, %19 ], [ 0, %18 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %2) #24
  %25 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %2) #24, !range !695
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %6, !llvm.loop !1200

27:                                               ; preds = %23, %1
  %28 = phi i8 [ 0, %1 ], [ %24, %23 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret i8 %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gimple_verify_flow_info() #0 !prof !735 !PGOFuncName !1201 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %7 = load ptr, ptr @cfun, align 8, !tbaa !674
  %8 = getelementptr inbounds %struct.function, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !652
  %10 = load ptr, ptr %9, align 8, !tbaa !664
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !704
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %0
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.155) #23
  %15 = load ptr, ptr @cfun, align 8, !tbaa !674
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !652
  br label %18

18:                                               ; preds = %14, %0
  %19 = phi ptr [ %17, %14 ], [ %9, %0 ]
  %20 = phi i32 [ 1, %14 ], [ 0, %0 ]
  %21 = getelementptr inbounds %struct.control_flow_graph, ptr %19, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !665
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !704
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.156) #23
  %27 = load ptr, ptr @cfun, align 8, !tbaa !674
  %28 = getelementptr inbounds %struct.function, ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !652
  %30 = getelementptr inbounds %struct.control_flow_graph, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !665
  br label %32

32:                                               ; preds = %26, %18
  %33 = phi ptr [ %31, %26 ], [ %22, %18 ]
  %34 = phi i32 [ 1, %26 ], [ %20, %18 ]
  %35 = tail call fastcc ptr @ei_start_1(ptr noundef %33) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  %36 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %35, ptr %36, align 8, !tbaa.struct !1020
  %37 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %35, ptr noundef nonnull %2) #24, !range !695
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %32, %50
  %40 = phi i32 [ %51, %50 ], [ %34, %32 ]
  %41 = load ptr, ptr %2, align 8, !tbaa !674
  %42 = getelementptr inbounds %struct.edge_def, ptr %41, i64 0, i32 7
  %43 = load i32, ptr %42, align 8, !tbaa !863
  %44 = and i32 %43, 1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load ptr, ptr %41, align 8, !tbaa !1028
  %48 = getelementptr inbounds %struct.basic_block_def, ptr %47, i64 0, i32 9
  %49 = load i32, ptr %48, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.157, i32 noundef %49) #23
  br label %50

50:                                               ; preds = %39, %46
  %51 = phi i32 [ 1, %46 ], [ %40, %39 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %52 = load i32, ptr %3, align 8
  %53 = load ptr, ptr %36, align 8
  %54 = call fastcc zeroext i8 @ei_cond(i32 %52, ptr %53, ptr noundef nonnull %2) #24, !range !695
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %39, !llvm.loop !1202

56:                                               ; preds = %50, %32
  %57 = phi i32 [ %34, %32 ], [ %51, %50 ]
  %58 = load ptr, ptr @cfun, align 8, !tbaa !674
  %59 = getelementptr inbounds %struct.function, ptr %58, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !652
  %61 = load ptr, ptr %60, align 8, !tbaa !664
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %61, i64 0, i32 6
  %63 = load ptr, ptr %62, align 8, !tbaa !666
  %64 = getelementptr inbounds %struct.control_flow_graph, ptr %60, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !665
  %66 = icmp eq ptr %63, %65
  br i1 %66, label %447, label %67

67:                                               ; preds = %56, %437
  %68 = phi ptr [ %440, %437 ], [ %63, %56 ]
  %69 = phi i32 [ %438, %437 ], [ %57, %56 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %68) #24
  %70 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %127

72:                                               ; preds = %67
  %73 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %74

74:                                               ; preds = %72, %123
  %75 = phi i32 [ %69, %72 ], [ %124, %123 ]
  %76 = phi ptr [ null, %72 ], [ %77, %123 ]
  %77 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %78 = tail call fastcc i32 @gimple_code(ptr noundef %77) #24, !range !684
  %79 = icmp eq i32 %78, 4
  br i1 %79, label %80, label %127

80:                                               ; preds = %74
  %81 = tail call fastcc ptr @gimple_label_label(ptr noundef %77) #24
  %82 = icmp eq ptr %76, null
  br i1 %82, label %103, label %83

83:                                               ; preds = %80
  %84 = getelementptr inbounds %struct.tree_decl_common, ptr %81, i64 0, i32 2
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 256
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.158) #23
  %89 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %89, ptr noundef nonnull %81, i32 noundef 0) #23
  %90 = load ptr, ptr @stderr, align 8, !tbaa !674
  %91 = load i32, ptr %73, align 8, !tbaa !751
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef nonnull @.str.159, i32 noundef %91) #26
  br label %93

93:                                               ; preds = %88, %83
  %94 = phi i32 [ %75, %83 ], [ 1, %88 ]
  %95 = getelementptr inbounds %struct.tree_label_decl, ptr %81, i64 0, i32 2
  %96 = load i32, ptr %95, align 4, !tbaa !704
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.160) #23
  %99 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %99, ptr noundef nonnull %81, i32 noundef 0) #23
  %100 = load ptr, ptr @stderr, align 8, !tbaa !674
  %101 = load i32, ptr %73, align 8, !tbaa !751
  %102 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef nonnull @.str.159, i32 noundef %101) #26
  br label %103

103:                                              ; preds = %80, %98, %93
  %104 = phi i32 [ 1, %98 ], [ %94, %93 ], [ %75, %80 ]
  %105 = load ptr, ptr @cfun, align 8, !tbaa !674
  %106 = tail call ptr @label_to_block_fn(ptr noundef %105, ptr noundef %81) #24
  %107 = icmp eq ptr %106, %68
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.161) #23
  %109 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %109, ptr noundef %81, i32 noundef 0) #23
  %110 = load ptr, ptr @stderr, align 8, !tbaa !674
  %111 = load i32, ptr %73, align 8, !tbaa !751
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef nonnull @.str.162, i32 noundef %111) #26
  br label %113

113:                                              ; preds = %108, %103
  %114 = phi i32 [ 1, %108 ], [ %104, %103 ]
  %115 = tail call ptr @decl_function_context(ptr noundef %81) #23
  %116 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.161) #23
  %119 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %119, ptr noundef %81, i32 noundef 0) #23
  %120 = load ptr, ptr @stderr, align 8, !tbaa !674
  %121 = load i32, ptr %73, align 8, !tbaa !751
  %122 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef nonnull @.str.163, i32 noundef %121) #26
  br label %123

123:                                              ; preds = %118, %113
  %124 = phi i32 [ %114, %113 ], [ 1, %118 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %125 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %74, label %127, !llvm.loop !1203

127:                                              ; preds = %123, %74, %67
  %128 = phi i32 [ %69, %67 ], [ %75, %74 ], [ %124, %123 ]
  %129 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %157

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %133

133:                                              ; preds = %131, %153
  %134 = phi i32 [ %128, %131 ], [ %154, %153 ]
  %135 = phi i8 [ 0, %131 ], [ %144, %153 ]
  %136 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %137 = icmp eq i8 %135, 0
  br i1 %137, label %140, label %138

138:                                              ; preds = %133
  %139 = load i32, ptr %132, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.164, i32 noundef %139) #23
  br label %140

140:                                              ; preds = %138, %133
  %141 = phi i32 [ 1, %138 ], [ %134, %133 ]
  %142 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %136) #24, !range !695
  %143 = icmp eq i8 %142, 0
  %144 = select i1 %143, i8 %135, i8 1
  %145 = tail call fastcc i32 @gimple_code(ptr noundef %136) #24, !range !684
  %146 = icmp eq i32 %145, 4
  br i1 %146, label %147, label %153

147:                                              ; preds = %140
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.161) #23
  %148 = load ptr, ptr @stderr, align 8, !tbaa !674
  %149 = tail call fastcc ptr @gimple_label_label(ptr noundef %136) #24
  tail call void @print_generic_expr(ptr noundef %148, ptr noundef %149, i32 noundef 0) #23
  %150 = load ptr, ptr @stderr, align 8, !tbaa !674
  %151 = load i32, ptr %132, align 8, !tbaa !751
  %152 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.165, i32 noundef %151) #26
  br label %153

153:                                              ; preds = %147, %140
  %154 = phi i32 [ 1, %147 ], [ %141, %140 ]
  call fastcc void @gsi_next(ptr noundef nonnull %1) #24
  %155 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %133, label %157, !llvm.loop !1204

157:                                              ; preds = %153, %127
  %158 = phi i32 [ %128, %127 ], [ %154, %153 ]
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %68) #24
  %159 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %161, label %437

161:                                              ; preds = %157
  %162 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %163 = tail call fastcc i32 @gimple_code(ptr noundef %162) #24, !range !684
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %437, label %165

165:                                              ; preds = %161
  %166 = tail call zeroext i8 @verify_eh_edges(ptr noundef %162) #23
  %167 = zext i8 %166 to i32
  %168 = or i32 %158, %167
  %169 = tail call zeroext i8 @is_ctrl_stmt(ptr noundef %162) #24, !range !695
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %193, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 1
  %173 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %172) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %173, ptr %36, align 8, !tbaa.struct !1020
  %174 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %173, ptr noundef nonnull %2) #24, !range !695
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %193, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %178

178:                                              ; preds = %176, %187
  %179 = phi i32 [ %168, %176 ], [ %188, %187 ]
  %180 = load ptr, ptr %2, align 8, !tbaa !674
  %181 = getelementptr inbounds %struct.edge_def, ptr %180, i64 0, i32 7
  %182 = load i32, ptr %181, align 8, !tbaa !863
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %187, label %185

185:                                              ; preds = %178
  %186 = load i32, ptr %177, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.166, i32 noundef %186) #23
  br label %187

187:                                              ; preds = %178, %185
  %188 = phi i32 [ 1, %185 ], [ %179, %178 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %189 = load i32, ptr %3, align 8
  %190 = load ptr, ptr %36, align 8
  %191 = call fastcc zeroext i8 @ei_cond(i32 %189, ptr %190, ptr noundef nonnull %2) #24, !range !695
  %192 = icmp eq i8 %191, 0
  br i1 %192, label %193, label %178, !llvm.loop !1205

193:                                              ; preds = %187, %171, %165
  %194 = phi i32 [ %168, %165 ], [ %168, %171 ], [ %188, %187 ]
  %195 = tail call fastcc i32 @gimple_code(ptr noundef %162) #24, !range !684
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %219, label %197

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 1
  %199 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %198) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %199, ptr %36, align 8, !tbaa.struct !1020
  %200 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %199, ptr noundef nonnull %2) #24, !range !695
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %219, label %202

202:                                              ; preds = %197
  %203 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %204

204:                                              ; preds = %202, %213
  %205 = phi i32 [ %194, %202 ], [ %214, %213 ]
  %206 = load ptr, ptr %2, align 8, !tbaa !674
  %207 = getelementptr inbounds %struct.edge_def, ptr %206, i64 0, i32 7
  %208 = load i32, ptr %207, align 8, !tbaa !863
  %209 = and i32 %208, 3072
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = load i32, ptr %203, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.167, i32 noundef %212) #23
  br label %213

213:                                              ; preds = %204, %211
  %214 = phi i32 [ 1, %211 ], [ %205, %204 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %215 = load i32, ptr %3, align 8
  %216 = load ptr, ptr %36, align 8
  %217 = call fastcc zeroext i8 @ei_cond(i32 %215, ptr %216, ptr noundef nonnull %2) #24, !range !695
  %218 = icmp eq i8 %217, 0
  br i1 %218, label %219, label %204, !llvm.loop !1206

219:                                              ; preds = %213, %197, %193
  %220 = phi i32 [ %194, %193 ], [ %194, %197 ], [ %214, %213 ]
  %221 = tail call fastcc i32 @gimple_code(ptr noundef %162) #24, !range !684
  %222 = add nsw i32 %221, -1
  %223 = tail call i32 @llvm.fshl.i32(i32 %222, i32 %222, i32 31)
  switch i32 %223, label %437 [
    i32 0, label %224
    i32 1, label %253
    i32 4, label %281
    i32 2, label %305
    i32 7, label %433
  ]

224:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @extract_true_false_edges_from_block(ptr noundef %68, ptr noundef nonnull %4, ptr noundef nonnull %5) #24
  %225 = load ptr, ptr %4, align 8, !tbaa !674
  %226 = icmp ne ptr %225, null
  %227 = load ptr, ptr %5, align 8
  %228 = icmp ne ptr %227, null
  %229 = select i1 %226, i1 %228, i1 false
  br i1 %229, label %230, label %248

230:                                              ; preds = %224
  %231 = getelementptr inbounds %struct.edge_def, ptr %225, i64 0, i32 7
  %232 = load i32, ptr %231, align 8, !tbaa !863
  %233 = and i32 %232, 1024
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %230
  %236 = getelementptr inbounds %struct.edge_def, ptr %227, i64 0, i32 7
  %237 = load i32, ptr %236, align 8, !tbaa !863
  %238 = and i32 %232, 3
  %239 = icmp eq i32 %238, 0
  %240 = and i32 %237, 2051
  %241 = icmp eq i32 %240, 2048
  %242 = and i1 %239, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %235
  %244 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 1
  %245 = load ptr, ptr %244, align 8, !tbaa !921
  %246 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %245) #24
  %247 = icmp ugt i32 %246, 2
  br i1 %247, label %248, label %251

248:                                              ; preds = %243, %235, %230, %224
  %249 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %250 = load i32, ptr %249, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.168, i32 noundef %250) #23
  br label %251

251:                                              ; preds = %248, %243
  %252 = phi i32 [ 1, %248 ], [ %220, %243 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  br label %437

253:                                              ; preds = %219
  %254 = tail call zeroext i8 @simple_goto_p(ptr noundef %162) #24, !range !695
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %259, label %256

256:                                              ; preds = %253
  %257 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %258 = load i32, ptr %257, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.169, i32 noundef %258) #23
  br label %437

259:                                              ; preds = %253
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 1
  %261 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %260) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %261, ptr %36, align 8, !tbaa.struct !1020
  %262 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %261, ptr noundef nonnull %2) #24, !range !695
  %263 = icmp eq i8 %262, 0
  br i1 %263, label %437, label %264

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %266

266:                                              ; preds = %264, %275
  %267 = phi i32 [ %220, %264 ], [ %276, %275 ]
  %268 = load ptr, ptr %2, align 8, !tbaa !674
  %269 = getelementptr inbounds %struct.edge_def, ptr %268, i64 0, i32 7
  %270 = load i32, ptr %269, align 8, !tbaa !863
  %271 = and i32 %270, 3075
  %272 = icmp eq i32 %271, 2
  br i1 %272, label %275, label %273

273:                                              ; preds = %266
  %274 = load i32, ptr %265, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.168, i32 noundef %274) #23
  br label %275

275:                                              ; preds = %266, %273
  %276 = phi i32 [ 1, %273 ], [ %267, %266 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %277 = load i32, ptr %3, align 8
  %278 = load ptr, ptr %36, align 8
  %279 = call fastcc zeroext i8 @ei_cond(i32 %277, ptr %278, ptr noundef nonnull %2) #24, !range !695
  %280 = icmp eq i8 %279, 0
  br i1 %280, label %437, label %266, !llvm.loop !1207

281:                                              ; preds = %219
  %282 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %68) #24, !range !695
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %290, label %284

284:                                              ; preds = %281
  %285 = tail call fastcc ptr @single_succ_edge(ptr noundef %68) #24
  %286 = getelementptr inbounds %struct.edge_def, ptr %285, i64 0, i32 7
  %287 = load i32, ptr %286, align 8, !tbaa !863
  %288 = and i32 %287, 3075
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %284, %281
  %291 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %292 = load i32, ptr %291, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.168, i32 noundef %292) #23
  br label %293

293:                                              ; preds = %290, %284
  %294 = phi i32 [ 1, %290 ], [ %220, %284 ]
  %295 = tail call fastcc ptr @single_succ(ptr noundef %68) #24
  %296 = load ptr, ptr @cfun, align 8, !tbaa !674
  %297 = getelementptr inbounds %struct.function, ptr %296, i64 0, i32 1
  %298 = load ptr, ptr %297, align 8, !tbaa !652
  %299 = getelementptr inbounds %struct.control_flow_graph, ptr %298, i64 0, i32 1
  %300 = load ptr, ptr %299, align 8, !tbaa !665
  %301 = icmp eq ptr %295, %300
  br i1 %301, label %437, label %302

302:                                              ; preds = %293
  %303 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  %304 = load i32, ptr %303, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.170, i32 noundef %304) #23
  br label %437

305:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #25
  %306 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %162) #24
  %307 = zext i32 %306 to i64
  %308 = icmp eq i32 %306, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = tail call fastcc ptr @gimple_switch_label(ptr noundef %162, i32 noundef 0) #24
  br label %358

311:                                              ; preds = %305, %323
  %312 = phi i64 [ %324, %323 ], [ 0, %305 ]
  %313 = trunc i64 %312 to i32
  %314 = tail call fastcc ptr @gimple_switch_label(ptr noundef %162, i32 noundef %313) #24
  %315 = getelementptr inbounds %struct.tree_exp, ptr %314, i64 1, i32 0, i32 1
  %316 = load ptr, ptr %315, align 8, !tbaa !704
  %317 = load ptr, ptr @cfun, align 8, !tbaa !674
  %318 = tail call ptr @label_to_block_fn(ptr noundef %317, ptr noundef %316) #24
  %319 = getelementptr inbounds %struct.basic_block_def, ptr %318, i64 0, i32 2
  %320 = load ptr, ptr %319, align 8, !tbaa !1208
  %321 = icmp ult ptr %320, inttoptr (i64 2 to ptr)
  br i1 %321, label %323, label %322

322:                                              ; preds = %311
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4431, ptr noundef nonnull @.str.2) #23
  br label %323

323:                                              ; preds = %311, %322
  store ptr inttoptr (i64 1 to ptr), ptr %319, align 8, !tbaa !1208
  %324 = add nuw nsw i64 %312, 1
  %325 = icmp eq i64 %324, %307
  br i1 %325, label %326, label %311, !llvm.loop !1209

326:                                              ; preds = %323
  %327 = tail call fastcc ptr @gimple_switch_label(ptr noundef %162, i32 noundef 0) #24
  %328 = icmp eq i32 %306, 1
  br i1 %328, label %358, label %329

329:                                              ; preds = %326, %353
  %330 = phi i32 [ %355, %353 ], [ %220, %326 ]
  %331 = phi ptr [ %354, %353 ], [ %327, %326 ]
  %332 = phi i64 [ %356, %353 ], [ 1, %326 ]
  %333 = trunc i64 %332 to i32
  %334 = tail call fastcc ptr @gimple_switch_label(ptr noundef %162, i32 noundef %333) #24
  %335 = getelementptr inbounds %struct.tree_exp, ptr %334, i64 0, i32 3
  %336 = load ptr, ptr %335, align 8, !tbaa !704
  %337 = icmp eq ptr %336, null
  br i1 %337, label %338, label %339

338:                                              ; preds = %329
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.171) #23
  br label %353

339:                                              ; preds = %329
  %340 = getelementptr inbounds %struct.tree_exp, ptr %331, i64 0, i32 3
  %341 = load ptr, ptr %340, align 8, !tbaa !704
  %342 = icmp eq ptr %341, null
  br i1 %342, label %353, label %343

343:                                              ; preds = %339
  %344 = tail call i32 @tree_int_cst_lt(ptr noundef nonnull %341, ptr noundef nonnull %336) #23
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %346, label %353

346:                                              ; preds = %343
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.172) #23
  %347 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %347, ptr noundef nonnull %331, i32 noundef 0) #23
  %348 = load ptr, ptr @stderr, align 8, !tbaa !674
  %349 = tail call i64 @fwrite(ptr nonnull @.str.173, i64 17, i64 1, ptr %348) #27
  %350 = load ptr, ptr @stderr, align 8, !tbaa !674
  tail call void @print_generic_expr(ptr noundef %350, ptr noundef nonnull %334, i32 noundef 0) #23
  %351 = load ptr, ptr @stderr, align 8, !tbaa !674
  %352 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 22, i64 1, ptr %351) #27
  br label %353

353:                                              ; preds = %339, %343, %346, %338
  %354 = phi ptr [ %331, %338 ], [ %334, %346 ], [ %334, %343 ], [ %334, %339 ]
  %355 = phi i32 [ 1, %338 ], [ 1, %346 ], [ %330, %343 ], [ %330, %339 ]
  %356 = add nuw nsw i64 %332, 1
  %357 = icmp eq i64 %356, %307
  br i1 %357, label %358, label %329, !llvm.loop !1210

358:                                              ; preds = %353, %309, %326
  %359 = phi i32 [ %220, %326 ], [ %220, %309 ], [ %355, %353 ]
  %360 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 1
  %361 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %360) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %361, ptr %36, align 8, !tbaa.struct !1020
  %362 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %361, ptr noundef nonnull %6) #24, !range !695
  %363 = icmp eq i8 %362, 0
  br i1 %363, label %366, label %364

364:                                              ; preds = %358
  %365 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %370

366:                                              ; preds = %393, %358
  %367 = phi i32 [ %359, %358 ], [ %394, %393 ]
  br i1 %308, label %419, label %368

368:                                              ; preds = %366
  %369 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 9
  br label %399

370:                                              ; preds = %364, %393
  %371 = phi i32 [ %359, %364 ], [ %394, %393 ]
  %372 = load ptr, ptr %6, align 8, !tbaa !674
  %373 = getelementptr inbounds %struct.edge_def, ptr %372, i64 0, i32 1
  %374 = load ptr, ptr %373, align 8, !tbaa !922
  %375 = getelementptr inbounds %struct.basic_block_def, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !1208
  %377 = icmp eq ptr %376, null
  br i1 %377, label %378, label %383

378:                                              ; preds = %370
  %379 = load i32, ptr %365, align 8, !tbaa !751
  %380 = getelementptr inbounds %struct.basic_block_def, ptr %374, i64 0, i32 9
  %381 = load i32, ptr %380, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.175, i32 noundef %379, i32 noundef %381) #23
  %382 = load ptr, ptr %373, align 8, !tbaa !922
  br label %383

383:                                              ; preds = %378, %370
  %384 = phi ptr [ %374, %370 ], [ %382, %378 ]
  %385 = phi i32 [ %371, %370 ], [ 1, %378 ]
  %386 = getelementptr inbounds %struct.basic_block_def, ptr %384, i64 0, i32 2
  store ptr inttoptr (i64 2 to ptr), ptr %386, align 8, !tbaa !1208
  %387 = getelementptr inbounds %struct.edge_def, ptr %372, i64 0, i32 7
  %388 = load i32, ptr %387, align 8, !tbaa !863
  %389 = and i32 %388, 3075
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %383
  %392 = load i32, ptr %365, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.168, i32 noundef %392) #23
  br label %393

393:                                              ; preds = %383, %391
  %394 = phi i32 [ 1, %391 ], [ %385, %383 ]
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %395 = load i32, ptr %3, align 8
  %396 = load ptr, ptr %36, align 8
  %397 = call fastcc zeroext i8 @ei_cond(i32 %395, ptr %396, ptr noundef nonnull %6) #24, !range !695
  %398 = icmp eq i8 %397, 0
  br i1 %398, label %366, label %370, !llvm.loop !1211

399:                                              ; preds = %368, %415
  %400 = phi i32 [ %367, %368 ], [ %416, %415 ]
  %401 = phi i64 [ 0, %368 ], [ %417, %415 ]
  %402 = trunc i64 %401 to i32
  %403 = tail call fastcc ptr @gimple_switch_label(ptr noundef %162, i32 noundef %402) #24
  %404 = getelementptr inbounds %struct.tree_exp, ptr %403, i64 1, i32 0, i32 1
  %405 = load ptr, ptr %404, align 8, !tbaa !704
  %406 = load ptr, ptr @cfun, align 8, !tbaa !674
  %407 = tail call ptr @label_to_block_fn(ptr noundef %406, ptr noundef %405) #24
  %408 = getelementptr inbounds %struct.basic_block_def, ptr %407, i64 0, i32 2
  %409 = load ptr, ptr %408, align 8, !tbaa !1208
  %410 = icmp eq ptr %409, inttoptr (i64 2 to ptr)
  br i1 %410, label %415, label %411

411:                                              ; preds = %399
  %412 = load i32, ptr %369, align 8, !tbaa !751
  %413 = getelementptr inbounds %struct.basic_block_def, ptr %407, i64 0, i32 9
  %414 = load i32, ptr %413, align 8, !tbaa !751
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.176, i32 noundef %412, i32 noundef %414) #23
  br label %415

415:                                              ; preds = %411, %399
  %416 = phi i32 [ 1, %411 ], [ %400, %399 ]
  %417 = add nuw nsw i64 %401, 1
  %418 = icmp eq i64 %417, %307
  br i1 %418, label %419, label %399, !llvm.loop !1212

419:                                              ; preds = %415, %366
  %420 = phi i32 [ %367, %366 ], [ %416, %415 ]
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %361, ptr %36, align 8, !tbaa.struct !1020
  %421 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %361, ptr noundef nonnull %6) #24, !range !695
  %422 = icmp eq i8 %421, 0
  br i1 %422, label %432, label %423

423:                                              ; preds = %419, %423
  %424 = load ptr, ptr %6, align 8, !tbaa !674
  %425 = getelementptr inbounds %struct.edge_def, ptr %424, i64 0, i32 1
  %426 = load ptr, ptr %425, align 8, !tbaa !922
  %427 = getelementptr inbounds %struct.basic_block_def, ptr %426, i64 0, i32 2
  store ptr null, ptr %427, align 8, !tbaa !1208
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %428 = load i32, ptr %3, align 8
  %429 = load ptr, ptr %36, align 8
  %430 = call fastcc zeroext i8 @ei_cond(i32 %428, ptr %429, ptr noundef nonnull %6) #24, !range !695
  %431 = icmp eq i8 %430, 0
  br i1 %431, label %432, label %423, !llvm.loop !1213

432:                                              ; preds = %423, %419
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #25
  br label %437

433:                                              ; preds = %219
  %434 = tail call zeroext i8 @verify_eh_dispatch_edge(ptr noundef %162) #23
  %435 = zext i8 %434 to i32
  %436 = or i32 %220, %435
  br label %437

437:                                              ; preds = %275, %259, %251, %432, %433, %256, %302, %293, %219, %161, %157
  %438 = phi i32 [ %158, %157 ], [ %158, %161 ], [ %220, %219 ], [ %436, %433 ], [ %420, %432 ], [ 1, %302 ], [ %294, %293 ], [ 1, %256 ], [ %252, %251 ], [ %220, %259 ], [ %276, %275 ]
  %439 = getelementptr inbounds %struct.basic_block_def, ptr %68, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !666
  %441 = load ptr, ptr @cfun, align 8, !tbaa !674
  %442 = getelementptr inbounds %struct.function, ptr %441, i64 0, i32 1
  %443 = load ptr, ptr %442, align 8, !tbaa !652
  %444 = getelementptr inbounds %struct.control_flow_graph, ptr %443, i64 0, i32 1
  %445 = load ptr, ptr %444, align 8, !tbaa !665
  %446 = icmp eq ptr %440, %445
  br i1 %446, label %447, label %67, !llvm.loop !1214

447:                                              ; preds = %437, %56
  %448 = phi i32 [ %57, %56 ], [ %438, %437 ]
  %449 = tail call i32 @dom_info_state(i32 noundef 1) #23
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %452, label %451

451:                                              ; preds = %447
  tail call void @verify_dominators(i32 noundef 1) #23
  br label %452

452:                                              ; preds = %451, %447
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  ret i32 %448
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @create_bb(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) #0 !prof !1215 !PGOFuncName !1216 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %6, label %5, !prof !1217

5:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 431, ptr noundef nonnull @.str.2) #23
  br label %6

6:                                                ; preds = %3, %5
  %7 = tail call ptr @alloc_block() #23
  %8 = load ptr, ptr @cfun, align 8, !tbaa !674
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !652
  %11 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !661
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 9
  store i32 %12, ptr %13, align 8, !tbaa !751
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 13
  store i32 1, ptr %14, align 8, !tbaa !1029
  %15 = tail call ptr @ggc_alloc_cleared_stat(i64 noundef 16) #23
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 7
  store ptr %15, ptr %16, align 8, !tbaa !704
  %17 = icmp eq ptr %0, null
  br i1 %17, label %18, label %20, !prof !1218

18:                                               ; preds = %6
  %19 = tail call ptr @gimple_seq_alloc() #23
  br label %20

20:                                               ; preds = %6, %18
  %21 = phi ptr [ %19, %18 ], [ %0, %6 ]
  tail call fastcc void @set_bb_seq(ptr noundef nonnull %7, ptr noundef %21) #24
  tail call void @link_block(ptr noundef nonnull %7, ptr noundef %2) #23
  %22 = load ptr, ptr @cfun, align 8, !tbaa !674
  %23 = getelementptr inbounds %struct.function, ptr %22, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !652
  %25 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !661
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.control_flow_graph, ptr %24, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !662
  %30 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %29) #24
  %31 = zext i32 %30 to i64
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %44, !prof !1219

33:                                               ; preds = %20
  %34 = add nsw i32 %26, 3
  %35 = sdiv i32 %34, 4
  %36 = add nsw i32 %35, %26
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %28, i32 noundef %36) #24
  %37 = load ptr, ptr @cfun, align 8, !tbaa !674
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !652
  %40 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !662
  %42 = getelementptr inbounds %struct.control_flow_graph, ptr %39, i64 0, i32 5
  %43 = load i32, ptr %42, align 8, !tbaa !661
  br label %44

44:                                               ; preds = %33, %20
  %45 = phi i32 [ %43, %33 ], [ %26, %20 ]
  %46 = phi ptr [ %41, %33 ], [ %29, %20 ]
  tail call fastcc void @VEC_basic_block_base_replace(ptr noundef %46, i32 noundef %45, ptr noundef nonnull %7) #24
  %47 = load ptr, ptr @cfun, align 8, !tbaa !674
  %48 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !652
  %50 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 3
  %51 = load i32, ptr %50, align 8, !tbaa !660
  %52 = add nsw i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !660
  %53 = getelementptr inbounds %struct.control_flow_graph, ptr %49, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !661
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %53, align 8, !tbaa !661
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gimple_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #0 !prof !1220 !PGOFuncName !1221 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !1028
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 8, !tbaa !863
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %120, !prof !1222

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !922
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %120, label %13, !prof !1223

13:                                               ; preds = %9
  %14 = and i32 %6, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %18, label %16, !prof !1222

16:                                               ; preds = %13
  %17 = tail call ptr @redirect_eh_edge(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %120

18:                                               ; preds = %13
  %19 = load ptr, ptr @cfun, align 8, !tbaa !674
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !652
  %22 = load ptr, ptr %21, align 8, !tbaa !664
  %23 = icmp eq ptr %4, %22
  br i1 %23, label %27, label %24, !prof !1224

24:                                               ; preds = %18
  %25 = tail call fastcc ptr @gimple_try_redirect_by_replacing_jump(ptr noundef nonnull %0, ptr noundef %1) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %120, !prof !1225

27:                                               ; preds = %24, %18
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %4) #24
  %28 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %113, !prof !1226

30:                                               ; preds = %27
  %31 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %32 = icmp eq ptr %31, null
  br i1 %32, label %113, label %33, !prof !760

33:                                               ; preds = %30
  %34 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %31) #24, !range !684
  %35 = trunc i32 %34 to i8
  switch i8 %35, label %113 [
    i8 1, label %118
    i8 3, label %36
    i8 5, label %37
    i8 7, label %75
    i8 9, label %105
    i8 28, label %118
    i8 21, label %118
    i8 31, label %118
    i8 23, label %118
    i8 15, label %108
  ], !prof !1227

36:                                               ; preds = %33
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4670, ptr noundef nonnull @.str.2) #23
  br label %37

37:                                               ; preds = %33, %36
  %38 = tail call ptr @gimple_block_label(ptr noundef %1) #24
  %39 = tail call fastcc ptr @get_cases_for_edge(ptr noundef nonnull %0, ptr noundef nonnull %31) #24
  %40 = icmp eq ptr %39, null
  br i1 %40, label %57, label %41, !prof !1228

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !1028
  %43 = tail call ptr @find_edge(ptr noundef %42, ptr noundef %1) #23
  br label %44

44:                                               ; preds = %41, %44
  %45 = phi ptr [ %39, %41 ], [ %48, %44 ]
  %46 = getelementptr inbounds %struct.tree_exp, ptr %45, i64 1, i32 0, i32 1
  store ptr %38, ptr %46, align 8, !tbaa !704
  %47 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !704
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %44, !prof !1229, !llvm.loop !1230

50:                                               ; preds = %44
  %51 = icmp eq ptr %43, null
  br i1 %51, label %118, label %52, !prof !1231

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.tree_common, ptr %45, i64 0, i32 1
  %54 = tail call fastcc ptr @get_cases_for_edge(ptr noundef nonnull %43, ptr noundef nonnull %31) #24
  %55 = getelementptr inbounds %struct.tree_common, ptr %54, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !704
  store ptr %56, ptr %53, align 8, !tbaa !704
  store ptr %39, ptr %55, align 8, !tbaa !704
  br label %118

57:                                               ; preds = %37
  %58 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef nonnull %31) #24
  %59 = zext i32 %58 to i64
  %60 = icmp eq i32 %58, 0
  br i1 %60, label %118, label %61

61:                                               ; preds = %57, %72
  %62 = phi i64 [ %73, %72 ], [ 0, %57 ]
  %63 = trunc i64 %62 to i32
  %64 = tail call fastcc ptr @gimple_switch_label(ptr noundef nonnull %31, i32 noundef %63) #24
  %65 = load ptr, ptr @cfun, align 8, !tbaa !674
  %66 = getelementptr inbounds %struct.tree_exp, ptr %64, i64 1, i32 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !704
  %68 = tail call ptr @label_to_block_fn(ptr noundef %65, ptr noundef %67) #24
  %69 = load ptr, ptr %10, align 8, !tbaa !922
  %70 = icmp eq ptr %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %61
  store ptr %38, ptr %66, align 8, !tbaa !704
  br label %72

72:                                               ; preds = %71, %61
  %73 = add nuw nsw i64 %62, 1
  %74 = icmp eq i64 %73, %59
  br i1 %74, label %118, label %61, !llvm.loop !1232

75:                                               ; preds = %33
  %76 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef nonnull %31) #24, !range !684
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %100, label %78

78:                                               ; preds = %75, %94
  %79 = phi ptr [ %95, %94 ], [ null, %75 ]
  %80 = phi i32 [ %96, %94 ], [ 0, %75 ]
  %81 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef nonnull %31, i32 noundef %80) #24
  %82 = load ptr, ptr @cfun, align 8, !tbaa !674
  %83 = getelementptr inbounds %struct.tree_list, ptr %81, i64 0, i32 2
  %84 = load ptr, ptr %83, align 8, !tbaa !704
  %85 = tail call ptr @label_to_block_fn(ptr noundef %82, ptr noundef %84) #24
  %86 = load ptr, ptr %10, align 8, !tbaa !922
  %87 = icmp eq ptr %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %78
  %89 = icmp eq ptr %79, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %88
  %91 = tail call ptr @gimple_block_label(ptr noundef %1) #24
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi ptr [ %79, %88 ], [ %91, %90 ]
  store ptr %93, ptr %83, align 8, !tbaa !704
  br label %94

94:                                               ; preds = %92, %78
  %95 = phi ptr [ %93, %92 ], [ %79, %78 ]
  %96 = add nuw nsw i32 %80, 1
  %97 = icmp eq i32 %96, %76
  br i1 %97, label %98, label %78, !llvm.loop !1233

98:                                               ; preds = %94
  %99 = icmp eq ptr %95, null
  br i1 %99, label %100, label %118

100:                                              ; preds = %75, %98
  %101 = load i32, ptr %5, align 8, !tbaa !863
  %102 = and i32 %101, 1
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %100
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4735, ptr noundef nonnull @.str.2) #23
  br label %118

105:                                              ; preds = %33
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #23
  %106 = load i32, ptr %5, align 8, !tbaa !863
  %107 = or i32 %106, 1
  store i32 %107, ptr %5, align 8, !tbaa !863
  br label %118

108:                                              ; preds = %33
  %109 = load i32, ptr %5, align 8, !tbaa !863
  %110 = and i32 %109, 1
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  tail call void @redirect_eh_dispatch_edge(ptr noundef nonnull %31, ptr noundef nonnull %0, ptr noundef %1) #23
  br label %118

113:                                              ; preds = %27, %30, %33
  %114 = load i32, ptr %5, align 8, !tbaa !863
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %118, !prof !1234

117:                                              ; preds = %113
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4759, ptr noundef nonnull @.str.2) #23
  br label %118

118:                                              ; preds = %72, %57, %104, %100, %98, %52, %50, %117, %113, %108, %112, %33, %33, %33, %33, %105, %33
  %119 = call ptr @ssa_redirect_edge(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %120

120:                                              ; preds = %24, %9, %2, %118, %16
  %121 = phi ptr [ %17, %16 ], [ %119, %118 ], [ null, %2 ], [ null, %9 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret ptr %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @gimple_redirect_edge_and_branch_force(ptr noundef %0, ptr noundef %1) #0 !prof !735 !PGOFuncName !1235 {
  %3 = tail call ptr @gimple_redirect_edge_and_branch(ptr noundef %0, ptr noundef %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 4789, ptr noundef nonnull @.str.2) #23
  br label %6

6:                                                ; preds = %2, %5
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal zeroext i8 @gimple_can_remove_branch_p(ptr nocapture noundef readonly %0) #5 !prof !735 !PGOFuncName !1236 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !863
  %4 = and i32 %3, 10
  %5 = icmp eq i32 %4, 0
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @remove_bb(ptr noundef %0) #0 !prof !1237 !PGOFuncName !1238 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !674
  %7 = icmp eq ptr %6, null
  br i1 %7, label %19, label %8, !prof !1239

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %10 = load i32, ptr %9, align 8, !tbaa !751
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %6, ptr noundef nonnull @.str.177, i32 noundef %10) #24
  %12 = load i32, ptr @dump_flags, align 4, !tbaa !680
  %13 = and i32 %12, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %8
  %16 = load ptr, ptr @dump_file, align 8, !tbaa !674
  tail call void @dump_bb(ptr noundef nonnull %0, ptr noundef %16, i32 noundef 0) #23
  %17 = load ptr, ptr @dump_file, align 8, !tbaa !674
  %18 = tail call i32 @fputc(i32 10, ptr %17)
  br label %19

19:                                               ; preds = %8, %15, %1
  %20 = load ptr, ptr @cfun, align 8, !tbaa !674
  %21 = getelementptr inbounds %struct.function, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !874
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24, !prof !1240

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !1042
  %27 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !1045
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %34, label %30, !prof !1241

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.loop, ptr %26, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !1043
  %33 = icmp eq ptr %32, %0
  br i1 %33, label %34, label %35, !prof !1241

34:                                               ; preds = %30, %24
  tail call void @free_numbers_of_iterations_estimates_loop(ptr noundef nonnull %26) #23
  br label %35

35:                                               ; preds = %30, %34, %19
  %36 = tail call fastcc ptr @bb_seq(ptr noundef %0) #24
  %37 = icmp eq ptr %36, null
  br i1 %37, label %87, label %38, !prof !1242

38:                                               ; preds = %35
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %39 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %87, !prof !1243

41:                                               ; preds = %38, %84
  %42 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %43 = call fastcc i32 @gimple_code(ptr noundef %42) #24, !range !684
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %73, !prof !1244

45:                                               ; preds = %41
  %46 = call fastcc ptr @gimple_label_label(ptr noundef %42) #24
  %47 = load i64, ptr %46, align 8
  %48 = and i64 %47, 65536
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %56, !prof !1245

50:                                               ; preds = %45
  %51 = call fastcc ptr @gimple_label_label(ptr noundef %42) #24
  %52 = getelementptr inbounds %struct.tree_decl_common, ptr %51, i64 0, i32 2
  %53 = load i64, ptr %52, align 8
  %54 = and i64 %53, 256
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %73, label %56, !prof !1245

56:                                               ; preds = %50, %45
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %57 = call fastcc ptr @gimple_label_label(ptr noundef %42) #24
  %58 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 256
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %56
  %63 = call fastcc ptr @gimple_label_label(ptr noundef %42) #24
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %63, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = and i64 %65, -257
  store i64 %66, ptr %64, align 8
  %67 = call fastcc ptr @gimple_label_label(ptr noundef %42) #24
  %68 = load i64, ptr %67, align 8
  %69 = or i64 %68, 65536
  store i64 %69, ptr %67, align 8
  br label %70

70:                                               ; preds = %62, %56
  %71 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !669
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %72) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 0) #23
  call void @gsi_insert_before(ptr noundef nonnull %3, ptr noundef %42, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %79

73:                                               ; preds = %50, %41
  %74 = load ptr, ptr @cfun, align 8, !tbaa !674
  %75 = call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %74) #24, !range !695
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %78, label %77, !prof !1246

77:                                               ; preds = %73
  call void @release_defs(ptr noundef %42) #23
  br label %78

78:                                               ; preds = %77, %73
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #23
  br label %79

79:                                               ; preds = %78, %70
  %80 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %83, label %82, !prof !1247

82:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %5, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  br label %84

83:                                               ; preds = %79
  call fastcc void @gsi_prev(ptr noundef nonnull %2) #24
  br label %84

84:                                               ; preds = %83, %82
  %85 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %41, label %87, !prof !1248, !llvm.loop !1249

87:                                               ; preds = %84, %38, %35
  call fastcc void @remove_phi_nodes_and_edges_for_unreachable_block(ptr noundef %0) #24
  %88 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  store ptr null, ptr %88, align 8, !tbaa !704
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gimple_split_block(ptr noundef %0, ptr noundef readonly %1) #0 !prof !1250 !PGOFuncName !1251 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #25
  %7 = tail call ptr @create_empty_bb(ptr noundef %0) #23
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !921
  %10 = getelementptr inbounds %struct.basic_block_def, ptr %7, i64 0, i32 1
  store ptr %9, ptr %10, align 8, !tbaa !921
  store ptr null, ptr %8, align 8, !tbaa !921
  %11 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %10) #24
  store i32 0, ptr %6, align 8, !tbaa.struct !1019
  %12 = getelementptr inbounds i8, ptr %6, i64 8
  store ptr %11, ptr %12, align 8, !tbaa.struct !1020
  %13 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %11, ptr noundef nonnull %5) #24, !range !695
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %21, label %15, !prof !1252

15:                                               ; preds = %2, %15
  %16 = load ptr, ptr %5, align 8, !tbaa !674
  store ptr %7, ptr %16, align 8, !tbaa !1028
  call fastcc void @ei_next(ptr noundef nonnull %6) #24
  %17 = load i32, ptr %6, align 8
  %18 = load ptr, ptr %12, align 8
  %19 = call fastcc zeroext i8 @ei_cond(i32 %17, ptr %18, ptr noundef nonnull %5) #24, !range !695
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %15, !prof !1253, !llvm.loop !1254

21:                                               ; preds = %15, %2
  %22 = icmp eq ptr %1, null
  br i1 %22, label %27, label %23, !prof !1255

23:                                               ; preds = %21
  %24 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %1) #24, !range !684
  %25 = icmp eq i32 %24, 4
  %26 = select i1 %25, ptr null, ptr %1, !prof !1255
  br label %27

27:                                               ; preds = %23, %21
  %28 = phi ptr [ null, %21 ], [ %26, %23 ]
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #24
  %29 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %44, !prof !1256

31:                                               ; preds = %27
  %32 = icmp eq ptr %28, null
  br label %33

33:                                               ; preds = %31, %41
  %34 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %35 = tail call fastcc i32 @gimple_code(ptr noundef %34) #24, !range !684
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %41, label %37, !prof !1255

37:                                               ; preds = %33
  br i1 %32, label %44, label %38, !prof !1255

38:                                               ; preds = %37
  %39 = icmp eq ptr %28, %34
  br i1 %39, label %40, label %41, !prof !1257

40:                                               ; preds = %38
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  br label %44

41:                                               ; preds = %38, %33
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %42 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %33, label %44, !prof !1258, !llvm.loop !1259

44:                                               ; preds = %41, %37, %27, %40
  %45 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %55, !prof !1257

47:                                               ; preds = %44
  %48 = call ptr @gsi_split_seq_before(ptr noundef nonnull %3) #23
  call fastcc void @set_bb_seq(ptr noundef %7, ptr noundef %48) #24
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %48) #24
  %49 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %55, !prof !1260

51:                                               ; preds = %47, %51
  %52 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  call void @gimple_set_bb(ptr noundef %52, ptr noundef %7) #23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  %53 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %51, label %55, !prof !1261, !llvm.loop !1262

55:                                               ; preds = %51, %47, %44
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @gimple_move_block_after(ptr noundef %0, ptr noundef %1) #0 !prof !1263 !PGOFuncName !1264 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !669
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %7, label %6, !prof !1265

6:                                                ; preds = %2
  tail call void @unlink_block(ptr noundef nonnull %0) #23
  tail call void @link_block(ptr noundef nonnull %0, ptr noundef %1) #23
  br label %7

7:                                                ; preds = %2, %6
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef zeroext i8 @gimple_can_merge_blocks_p(ptr noundef %0, ptr noundef %1) #0 !prof !1266 !PGOFuncName !1267 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %4 = tail call fastcc zeroext i8 @single_succ_p(ptr noundef %0) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %75, label %6, !prof !1268

6:                                                ; preds = %2
  %7 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !863
  %10 = and i32 %9, 10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %75, !prof !1269

12:                                               ; preds = %6
  %13 = tail call fastcc ptr @single_succ(ptr noundef %0) #24
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %75, !prof !1269

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %1) #24, !range !695
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %75, label %18, !prof !1270

18:                                               ; preds = %15
  %19 = load ptr, ptr @cfun, align 8, !tbaa !674
  %20 = getelementptr inbounds %struct.function, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !652
  %22 = getelementptr inbounds %struct.control_flow_graph, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !665
  %24 = icmp eq ptr %23, %1
  br i1 %24, label %75, label %25, !prof !1271

25:                                               ; preds = %18
  %26 = tail call ptr @last_stmt(ptr noundef %0) #24
  %27 = icmp eq ptr %26, null
  br i1 %27, label %40, label %28, !prof !1272

28:                                               ; preds = %25
  %29 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %26) #24, !range !695
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %75, !prof !1273

31:                                               ; preds = %28
  %32 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %26) #24, !range !684
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %40, !prof !1274

34:                                               ; preds = %31
  %35 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %26) #24
  %36 = getelementptr inbounds %struct.tree_decl_common, ptr %35, i64 0, i32 2
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 256
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %75, !prof !1275

40:                                               ; preds = %25, %34, %31
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %1) #24
  %41 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %56, !prof !1276

43:                                               ; preds = %40, %53
  %44 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %45 = tail call fastcc i32 @gimple_code(ptr noundef %44) #24, !range !684
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %56, !prof !1277

47:                                               ; preds = %43
  %48 = tail call fastcc ptr @gimple_label_label(ptr noundef %44) #24
  %49 = getelementptr inbounds %struct.tree_decl_common, ptr %48, i64 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 4096
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %75, label %53

53:                                               ; preds = %47
  call fastcc void @gsi_next(ptr noundef nonnull %3) #24
  %54 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %43, label %56, !prof !1278, !llvm.loop !1279

56:                                               ; preds = %53, %43, %40
  %57 = load ptr, ptr @cfun, align 8, !tbaa !674
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !874
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61, !prof !1280

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !1042
  %64 = getelementptr inbounds %struct.loop, ptr %63, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !1045
  %66 = icmp eq ptr %65, %1
  br i1 %66, label %75, label %67

67:                                               ; preds = %61, %56
  %68 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #24
  %69 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %68) #24, !range !695
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %71, label %74, !prof !1281

71:                                               ; preds = %67
  %72 = tail call zeroext i8 @name_mappings_registered_p() #23
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %75, !prof !1282

74:                                               ; preds = %71, %67
  br label %75

75:                                               ; preds = %47, %71, %61, %34, %28, %18, %15, %12, %6, %2, %74
  %76 = phi i8 [ 1, %74 ], [ 0, %2 ], [ 0, %6 ], [ 0, %12 ], [ 0, %15 ], [ 0, %18 ], [ 0, %28 ], [ 0, %34 ], [ 0, %61 ], [ 0, %71 ], [ 0, %47 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret i8 %76
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_merge_blocks(ptr noundef %0, ptr noundef %1) #0 !prof !1263 !PGOFuncName !1283 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  %7 = alloca %struct.gimple_stmt_iterator, align 8
  %8 = alloca %struct.immediate_use_iterator_d, align 8
  %9 = alloca %struct.gimple_stmt_iterator, align 8
  %10 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %11 = tail call fastcc ptr @phi_nodes(ptr noundef %1) #24
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !674
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !1284

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %16 = load i32, ptr %15, align 8, !tbaa !751
  %17 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 9
  %18 = load i32, ptr %17, align 8, !tbaa !751
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.178, i32 noundef %16, i32 noundef %18) #24
  br label %20

20:                                               ; preds = %14, %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %7, ptr noundef %11) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #25
  %21 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24, !range !695
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %95, !prof !1285

23:                                               ; preds = %20, %91
  %24 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24
  %25 = call fastcc ptr @gimple_phi_result(ptr noundef %24) #24
  %26 = call fastcc ptr @gimple_phi_arg_def(ptr noundef %24, i64 noundef 0) #24
  %27 = call zeroext i8 @is_gimple_reg(ptr noundef %25) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29, !prof !1286

29:                                               ; preds = %23
  %30 = call zeroext i8 @may_propagate_copy(ptr noundef %25, ptr noundef %26) #23
  %31 = icmp ne i8 %30, 0
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i1 [ true, %23 ], [ %31, %29 ]
  %34 = load ptr, ptr @cfun, align 8, !tbaa !674
  %35 = getelementptr inbounds %struct.function, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !874
  %37 = icmp eq ptr %36, null
  br i1 %37, label %55, label %38, !prof !1287

38:                                               ; preds = %32
  %39 = call fastcc zeroext i8 @loops_state_satisfies_p() #24
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %38
  %42 = call zeroext i8 @is_gimple_reg(ptr noundef %25) #23
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load i64, ptr %26, align 8
  %46 = and i64 %45, 65535
  %47 = icmp eq i64 %46, 141
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 3
  %50 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 3
  %51 = load ptr, ptr %49, align 8, !tbaa !1042
  %52 = load ptr, ptr %50, align 8, !tbaa !1042
  %53 = icmp eq ptr %51, %52
  %54 = select i1 %53, i1 %33, i1 false
  br i1 %54, label %62, label %56, !prof !1287

55:                                               ; preds = %44, %41, %38, %32
  br i1 %33, label %62, label %56, !prof !1287

56:                                               ; preds = %48, %55
  %57 = call zeroext i8 @is_gimple_reg(ptr noundef %25) #23
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1596, ptr noundef nonnull @.str.2) #23
  br label %60

60:                                               ; preds = %56, %59
  %61 = call ptr @gimple_build_assign_stat(ptr noundef %25, ptr noundef %26) #23
  call void @gsi_insert_after(ptr noundef nonnull %4, ptr noundef %61, i32 noundef 0) #23
  br label %91

62:                                               ; preds = %48, %55
  %63 = call zeroext i8 @is_gimple_reg(ptr noundef %25) #23
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %90, !prof !1286

65:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %8) #25
  %66 = call fastcc ptr @first_imm_use_stmt(ptr noundef nonnull %8, ptr noundef %25) #24
  %67 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %8) #24, !range !695
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %82, !prof !1288

69:                                               ; preds = %65, %78
  %70 = call fastcc ptr @first_imm_use_on_stmt(ptr noundef nonnull %8) #24
  %71 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %8) #24, !range !695
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %69, %73
  %74 = phi ptr [ %75, %73 ], [ %70, %69 ]
  call fastcc void @set_ssa_use_from_ptr(ptr noundef %74, ptr noundef %26) #24
  %75 = call fastcc ptr @next_imm_use_on_stmt(ptr noundef nonnull %8) #24
  %76 = call fastcc zeroext i8 @end_imm_use_on_stmt_p(ptr noundef nonnull %8) #24, !range !695
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %73, label %78, !llvm.loop !1289

78:                                               ; preds = %73, %69
  %79 = call fastcc ptr @next_imm_use_stmt(ptr noundef nonnull %8) #24
  %80 = call fastcc zeroext i8 @end_imm_use_stmt_p(ptr noundef nonnull %8) #24, !range !695
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %69, label %82, !prof !1290, !llvm.loop !1291

82:                                               ; preds = %78, %65
  %83 = load i64, ptr %25, align 8
  %84 = and i64 %83, 4194304
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %89, label %86, !prof !1292

86:                                               ; preds = %82
  %87 = load i64, ptr %26, align 8
  %88 = or i64 %87, 4194304
  store i64 %88, ptr %26, align 8
  br label %89

89:                                               ; preds = %86, %82
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %8) #25
  br label %91

90:                                               ; preds = %62
  call void @replace_uses_by(ptr noundef %25, ptr noundef %26) #24
  br label %91

91:                                               ; preds = %89, %90, %60
  %92 = phi i8 [ 0, %60 ], [ 1, %90 ], [ 1, %89 ]
  call void @remove_phi_node(ptr noundef nonnull %5, i8 noundef zeroext %92) #23
  %93 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24, !range !695
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %23, label %95, !prof !1293, !llvm.loop !1294

95:                                               ; preds = %91, %20
  %96 = call zeroext i8 @move_block_after(ptr noundef %1, ptr noundef %0) #23
  %97 = call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %98 = getelementptr inbounds %struct.edge_def, ptr %97, i64 0, i32 7
  %99 = load i32, ptr %98, align 8, !tbaa !863
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103, !prof !1295

102:                                              ; preds = %95
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1634, ptr noundef nonnull @.str.2) #23
  br label %103

103:                                              ; preds = %95, %102
  %104 = call ptr @last_stmt(ptr noundef %0) #24
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106, !prof !1296

106:                                              ; preds = %103
  %107 = call ptr @last_stmt(ptr noundef %0) #24
  %108 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %107) #24, !range !695
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110, !prof !1297

110:                                              ; preds = %106
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 1635, ptr noundef nonnull @.str.2) #23
  br label %111

111:                                              ; preds = %103, %106, %110
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %9, ptr noundef %1) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %9, i64 24, i1 false), !tbaa.struct !773
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #25
  %112 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %135, !prof !1298

114:                                              ; preds = %111, %132
  %115 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %116 = call fastcc i32 @gimple_code(ptr noundef %115) #24, !range !684
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %131, !prof !1299

118:                                              ; preds = %114
  %119 = call fastcc ptr @gimple_label_label(ptr noundef %115) #24
  call void @gsi_remove(ptr noundef nonnull %4, i8 noundef zeroext 0) #23
  %120 = load i64, ptr %119, align 8
  %121 = and i64 %120, 65536
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %118
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %10, ptr noundef %0) #24
  call void @gsi_insert_before(ptr noundef nonnull %10, ptr noundef %115, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #25
  br label %124

124:                                              ; preds = %123, %118
  %125 = getelementptr inbounds %struct.tree_label_decl, ptr %119, i64 0, i32 2
  %126 = load i32, ptr %125, align 4, !tbaa !704
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = call ptr @get_eh_landing_pad_from_number(i32 noundef %126) #23
  %130 = getelementptr inbounds %struct.eh_landing_pad_d, ptr %129, i64 0, i32 2
  store ptr null, ptr %130, align 8, !tbaa !812
  br label %132

131:                                              ; preds = %114
  call void @gimple_set_bb(ptr noundef %115, ptr noundef %0) #23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  br label %132

132:                                              ; preds = %124, %128, %131
  %133 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %114, label %135, !prof !1300, !llvm.loop !1301

135:                                              ; preds = %132, %111
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %0) #24
  %136 = call fastcc ptr @bb_seq(ptr noundef %1) #24
  call void @gsi_insert_seq_after(ptr noundef nonnull %3, ptr noundef %136, i32 noundef 0) #23
  call fastcc void @set_bb_seq(ptr noundef %1, ptr noundef null) #24
  %137 = load ptr, ptr @cfgcleanup_altered_bbs, align 8, !tbaa !674
  %138 = icmp eq ptr %137, null
  br i1 %138, label %143, label %139, !prof !1295

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 9
  %141 = load i32, ptr %140, align 8, !tbaa !751
  %142 = call zeroext i8 @bitmap_set_bit(ptr noundef nonnull %137, i32 noundef %141) #23
  br label %143

143:                                              ; preds = %139, %135
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare void @gimple_predict_edge(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: optsize
declare zeroext i8 @gimple_predicted_by_p(ptr noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal noundef zeroext i8 @gimple_can_duplicate_bb_p(ptr nocapture readnone %0) #16 !prof !735 !PGOFuncName !1302 {
  ret i8 1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @gimple_duplicate_bb(ptr noundef %0) #0 !prof !1303 !PGOFuncName !1304 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %5 = tail call fastcc ptr @phi_nodes(ptr noundef %0) #24
  %6 = load ptr, ptr @cfun, align 8, !tbaa !674
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !652
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !665
  %11 = getelementptr inbounds %struct.basic_block_def, ptr %10, i64 0, i32 5
  %12 = load ptr, ptr %11, align 8, !tbaa !669
  %13 = tail call ptr @create_empty_bb(ptr noundef %12) #23
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %5) #24
  %14 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %25, !prof !1305

16:                                               ; preds = %1, %16
  %17 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %18 = tail call fastcc ptr @gimple_phi_result(ptr noundef %17) #24
  %19 = tail call ptr @create_phi_node(ptr noundef %18, ptr noundef %13) #23
  %20 = tail call fastcc ptr @gimple_phi_result(ptr noundef %19) #24
  %21 = tail call fastcc ptr @gimple_phi_result_ptr(ptr noundef %19) #24
  %22 = tail call ptr @create_new_def_for(ptr noundef %20, ptr noundef %19, ptr noundef nonnull %21) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %23 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %16, label %25, !prof !1306, !llvm.loop !1307

25:                                               ; preds = %16, %1
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %13) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %26 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %49, !prof !1308

28:                                               ; preds = %25, %46
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #25
  %29 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %30 = call fastcc i32 @gimple_code(ptr noundef %29) #24, !range !684
  %31 = icmp eq i32 %30, 4
  br i1 %31, label %46, label %32, !prof !1309

32:                                               ; preds = %28
  %33 = call ptr @gimple_copy(ptr noundef %29) #23
  call void @gsi_insert_after(ptr noundef nonnull %3, ptr noundef %33, i32 noundef 0) #23
  %34 = call zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef %33, ptr noundef %29) #23
  %35 = load ptr, ptr @cfun, align 8, !tbaa !674
  call void @gimple_duplicate_stmt_histograms(ptr noundef %35, ptr noundef %33, ptr noundef %35, ptr noundef %29) #23
  %36 = call fastcc ptr @op_iter_init_def(ptr noundef nonnull %4, ptr noundef %33) #24
  %37 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #24
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %46, !prof !1310

39:                                               ; preds = %32, %39
  %40 = phi ptr [ %43, %39 ], [ %36, %32 ]
  %41 = call fastcc ptr @get_def_from_ptr(ptr noundef %40) #24
  %42 = call ptr @create_new_def_for(ptr noundef %41, ptr noundef %33, ptr noundef %40) #23
  %43 = call fastcc ptr @op_iter_next_def(ptr noundef nonnull %4) #24
  %44 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %4) #24
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %39, label %46, !prof !1311, !llvm.loop !1312

46:                                               ; preds = %39, %32, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #25
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %47 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %28, label %49, !prof !1313, !llvm.loop !1314

49:                                               ; preds = %46, %25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef ptr @gimple_split_edge(ptr noundef %0) #0 !prof !1053 !PGOFuncName !1315 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 7
  %3 = load i32, ptr %2, align 8, !tbaa !863
  %4 = and i32 %3, 2
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1316

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2468, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !922
  %10 = tail call fastcc ptr @split_edge_bb_loc(ptr noundef nonnull %0) #24
  %11 = tail call ptr @create_empty_bb(ptr noundef %10) #23
  %12 = load ptr, ptr %0, align 8, !tbaa !1028
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 11
  %14 = load i32, ptr %13, align 8, !tbaa !1049
  %15 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 8
  %16 = load i32, ptr %15, align 4, !tbaa !1050
  %17 = mul nsw i32 %16, %14
  %18 = add nsw i32 %17, 5000
  %19 = sdiv i32 %18, 10000
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 11
  store i32 %19, ptr %20, align 8, !tbaa !1049
  %21 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !1048
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 8
  store i64 %22, ptr %23, align 8, !tbaa !1047
  %24 = tail call ptr @make_edge(ptr noundef %11, ptr noundef %9, i32 noundef 1) #23
  %25 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 8
  store i32 10000, ptr %25, align 4, !tbaa !1050
  %26 = load i64, ptr %21, align 8, !tbaa !1048
  %27 = getelementptr inbounds %struct.edge_def, ptr %24, i64 0, i32 9
  store i64 %26, ptr %27, align 8, !tbaa !1048
  %28 = tail call ptr @redirect_edge_and_branch(ptr noundef nonnull %0, ptr noundef %11) #23
  %29 = icmp eq ptr %28, %0
  br i1 %29, label %31, label %30, !prof !1316

30:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2482, ptr noundef nonnull @.str.2) #23
  br label %31

31:                                               ; preds = %7, %30
  tail call fastcc void @reinstall_phi_args(ptr noundef nonnull %24, ptr noundef %28) #24
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_make_forwarder_block(ptr noundef %0) #0 !prof !735 !PGOFuncName !1317 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !922
  %7 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %6) #24, !range !695
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 8, !tbaa !1028
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %10) #23
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9, %13
  %14 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %15 = call fastcc ptr @gimple_phi_result(ptr noundef %14) #24
  %16 = call ptr @create_phi_node(ptr noundef %15, ptr noundef %6) #23
  %17 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !704
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %15, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !704
  %20 = call fastcc ptr @make_ssa_name(ptr noundef %19, ptr noundef %14) #24
  call fastcc void @gimple_phi_set_result(ptr noundef %14, ptr noundef %20) #24
  %21 = call fastcc ptr @gimple_phi_result(ptr noundef %14) #24
  call void @add_phi_arg(ptr noundef %16, ptr noundef %21, ptr noundef nonnull %0, i32 noundef 0) #23
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  %22 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %13, label %24, !llvm.loop !1318

24:                                               ; preds = %13, %9
  %25 = call fastcc ptr @ei_start_1(ptr noundef %6) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  %26 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %25, ptr %26, align 8, !tbaa.struct !1020
  %27 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %25, ptr noundef nonnull %2) #24, !range !695
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24, %33
  %30 = load ptr, ptr %2, align 8, !tbaa !674
  %31 = icmp eq ptr %30, %0
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  call void @flush_pending_stmts(ptr noundef %30) #23
  br label %33

33:                                               ; preds = %29, %32
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %34 = load i32, ptr %3, align 8
  %35 = load ptr, ptr %26, align 8
  %36 = call fastcc zeroext i8 @ei_cond(i32 %34, ptr %35, ptr noundef nonnull %2) #24, !range !695
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %29, !llvm.loop !1319

38:                                               ; preds = %33, %24, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal zeroext i8 @gimple_block_ends_with_call_p(ptr noundef %0) #4 !prof !735 !PGOFuncName !1320 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_last_nondebug_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %4 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %3) #24, !range !695
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret i8 %4
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal zeroext i8 @gimple_block_ends_with_condjump_p(ptr noundef %0) #4 !prof !735 !PGOFuncName !1321 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %2) #24, !range !684
  %6 = icmp eq i32 %5, 1
  %7 = zext i1 %6 to i8
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i8 [ 0, %1 ], [ %7, %4 ]
  ret i8 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @gimple_flow_call_edges_add(ptr noundef readonly %0) #0 !prof !735 !PGOFuncName !1322 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !652
  %7 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !661
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !660
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %109, label %12

12:                                               ; preds = %1
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %6, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !665
  %16 = getelementptr inbounds %struct.basic_block_def, ptr %15, i64 0, i32 5
  %17 = load ptr, ptr %16, align 8, !tbaa !669
  br i1 %13, label %30, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.basic_block_def, ptr %17, i64 0, i32 9
  %20 = load i32, ptr %19, align 8, !tbaa !751
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !958
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %12, %18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %17) #24
  %31 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %33
  %37 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef nonnull %34) #24, !range !695
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %36
  %40 = load ptr, ptr @cfun, align 8, !tbaa !674
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !652
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !665
  %45 = tail call ptr @find_edge(ptr noundef %17, ptr noundef %44) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %39
  %48 = tail call ptr @gimple_build_nop() #23
  tail call void @gsi_insert_on_edge(ptr noundef nonnull %45, ptr noundef %48) #23
  tail call void @gsi_commit_edge_inserts() #23
  br label %49

49:                                               ; preds = %30, %39, %47, %36, %33
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  br label %50

50:                                               ; preds = %49, %18
  %51 = icmp sgt i32 %8, 0
  br i1 %51, label %52, label %109

52:                                               ; preds = %50, %102
  %53 = phi i32 [ %104, %102 ], [ 0, %50 ]
  %54 = phi i32 [ %103, %102 ], [ 0, %50 ]
  %55 = load ptr, ptr @cfun, align 8, !tbaa !674
  %56 = getelementptr inbounds %struct.function, ptr %55, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !652
  %58 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !662
  %60 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %59, i32 noundef %53) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %61 = icmp eq ptr %60, null
  br i1 %61, label %102, label %62

62:                                               ; preds = %52
  br i1 %13, label %73, label %63

63:                                               ; preds = %62
  %64 = lshr i32 %53, 6
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !958
  %68 = and i32 %53, 63
  %69 = zext nneg i32 %68 to i64
  %70 = shl nuw i64 1, %69
  %71 = and i64 %67, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %102, label %73

73:                                               ; preds = %63, %62
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %60) #24
  %74 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %73
  %77 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  br label %78

78:                                               ; preds = %98, %76
  %79 = phi i32 [ %54, %76 ], [ %99, %98 ]
  %80 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %81 = tail call fastcc zeroext i8 @need_fake_edge_p(ptr noundef %80) #24, !range !695
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %78
  %84 = icmp eq ptr %80, %77
  br i1 %84, label %90, label %85

85:                                               ; preds = %83
  %86 = tail call ptr @split_block(ptr noundef nonnull %60, ptr noundef %80) #23
  %87 = icmp ne ptr %86, null
  %88 = zext i1 %87 to i32
  %89 = add nsw i32 %79, %88
  br label %90

90:                                               ; preds = %85, %83
  %91 = phi i32 [ %79, %83 ], [ %89, %85 ]
  %92 = load ptr, ptr @cfun, align 8, !tbaa !674
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !652
  %95 = getelementptr inbounds %struct.control_flow_graph, ptr %94, i64 0, i32 1
  %96 = load ptr, ptr %95, align 8, !tbaa !665
  %97 = tail call ptr @make_edge(ptr noundef nonnull %60, ptr noundef %96, i32 noundef 16) #23
  br label %98

98:                                               ; preds = %90, %78
  %99 = phi i32 [ %91, %90 ], [ %79, %78 ]
  call fastcc void @gsi_prev(ptr noundef nonnull %3) #24
  %100 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %78, label %102, !llvm.loop !1323

102:                                              ; preds = %98, %73, %63, %52
  %103 = phi i32 [ %54, %52 ], [ %54, %63 ], [ %54, %73 ], [ %99, %98 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  %104 = add nuw nsw i32 %53, 1
  %105 = icmp eq i32 %104, %8
  br i1 %105, label %106, label %52, !llvm.loop !1324

106:                                              ; preds = %102
  %107 = icmp eq i32 %103, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %106
  tail call void @verify_flow_info() #23
  br label %109

109:                                              ; preds = %50, %106, %108, %1
  %110 = phi i32 [ 0, %1 ], [ %103, %108 ], [ 0, %106 ], [ 0, %50 ]
  ret i32 %110
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_execute_on_growing_pred(ptr nocapture noundef readonly %0) #0 !prof !1325 !PGOFuncName !1326 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !922
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %3) #24
  %5 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %4) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !1327

7:                                                ; preds = %1
  tail call void @reserve_phi_args_for_new_edge(ptr noundef %3) #23
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_execute_on_shrinking_pred(ptr noundef %0) #0 !prof !1328 !PGOFuncName !1329 {
  %2 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !922
  %4 = tail call fastcc ptr @phi_nodes(ptr noundef %3) #24
  %5 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %4) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %8, !prof !1330

7:                                                ; preds = %1
  tail call void @remove_phi_args(ptr noundef nonnull %0) #23
  br label %8

8:                                                ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @gimple_duplicate_loop_to_header_edge(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_lv_add_condition_to_bb(ptr nocapture readnone %0, ptr nocapture readnone %1, ptr noundef %2, ptr noundef %3) #0 !prof !735 !PGOFuncName !1331 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  %6 = tail call ptr @gimple_build_cond_from_tree(ptr noundef %3, ptr noundef null, ptr noundef null) #23
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %2) #24
  call void @gsi_insert_after(ptr noundef nonnull %5, ptr noundef %6, i32 noundef 0) #23
  %7 = call fastcc ptr @single_succ_edge(ptr noundef %2) #24
  %8 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !863
  %10 = and i32 %9, -2050
  %11 = or disjoint i32 %10, 2048
  store i32 %11, ptr %8, align 8, !tbaa !863
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal void @gimple_lv_adjust_loop_header_phi(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !prof !735 !PGOFuncName !1332 {
  %5 = alloca %struct.gimple_stmt_iterator, align 8
  %6 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #25
  %7 = tail call ptr @find_edge(ptr noundef %2, ptr noundef %1) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 6897, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %4, %9
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %6, ptr noundef %1) #23
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %5, ptr noundef %0) #23
  %11 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !695
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.edge_def, ptr %7, i64 0, i32 6
  br label %15

15:                                               ; preds = %13, %18
  %16 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24, !range !695
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %5) #24
  %20 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24
  %21 = load i32, ptr %14, align 4, !tbaa !1031
  %22 = call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %20, i32 noundef %21) #24
  %23 = call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %22) #24
  %24 = call fastcc i32 @gimple_phi_arg_location_from_edge(ptr noundef %20, ptr noundef %7) #24
  call void @add_phi_arg(ptr noundef %19, ptr noundef %23, ptr noundef %3, i32 noundef %24) #23
  call fastcc void @gsi_next(ptr noundef nonnull %6) #24
  call fastcc void @gsi_next(ptr noundef nonnull %5) #24
  %25 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %6) #24, !range !695
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %15, label %27, !llvm.loop !1333

27:                                               ; preds = %15, %18, %10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @extract_true_false_edges_from_block(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) #13 !prof !1334 {
  %4 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !921
  %6 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %5, i32 noundef 0) #24
  %7 = getelementptr inbounds %struct.edge_def, ptr %6, i64 0, i32 7
  %8 = load i32, ptr %7, align 8, !tbaa !863
  %9 = and i32 %8, 1024
  %10 = icmp eq i32 %9, 0
  %11 = select i1 %10, ptr %2, ptr %1, !prof !1335
  %12 = select i1 %10, ptr %1, ptr %2, !prof !1335
  store ptr %6, ptr %11, align 8, !tbaa !674
  %13 = load ptr, ptr %4, align 8, !tbaa !921
  %14 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %13, i32 noundef 1) #24
  store ptr %14, ptr %12, align 8, !tbaa !674
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @split_critical_edges() #0 !prof !1336 !PGOFuncName !1337 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  tail call void @start_recording_case_labels() #24
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !652
  %7 = load ptr, ptr %6, align 8, !tbaa !674
  %8 = icmp eq ptr %7, null
  br i1 %8, label %90, label %9, !prof !1338

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %2, i64 8
  br label %11

11:                                               ; preds = %9, %86
  %12 = phi ptr [ %7, %9 ], [ %88, %86 ]
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 1
  %14 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1019
  store ptr %14, ptr %10, align 8, !tbaa.struct !1020
  %15 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %14, ptr noundef nonnull %1) #24, !range !695
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %86, label %17, !prof !1339

17:                                               ; preds = %11, %81
  %18 = load ptr, ptr %1, align 8, !tbaa !674
  %19 = load ptr, ptr %18, align 8, !tbaa !1028
  %20 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !921
  %22 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %21) #24
  %23 = icmp ugt i32 %22, 1
  %24 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !922
  br i1 %23, label %26, label %37, !prof !1340

26:                                               ; preds = %17
  %27 = load ptr, ptr %25, align 8, !tbaa !891
  %28 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %27) #24
  %29 = icmp ugt i32 %28, 1
  br i1 %29, label %30, label %37, !prof !1341

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %32 = load i32, ptr %31, align 8, !tbaa !863
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37, !prof !1342

35:                                               ; preds = %30
  %36 = tail call ptr @split_edge(ptr noundef nonnull %18) #23
  br label %81

37:                                               ; preds = %17, %30, %26
  %38 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 1
  %39 = tail call fastcc zeroext i8 @single_pred_p(ptr noundef %25) #24, !range !695
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %43, !prof !1343

41:                                               ; preds = %37
  %42 = load ptr, ptr @cfun, align 8, !tbaa !674
  br label %55

43:                                               ; preds = %37
  %44 = tail call fastcc ptr @phi_nodes(ptr noundef %25) #24
  %45 = tail call fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef %44) #24, !range !695
  %46 = icmp eq i8 %45, 0
  %47 = load ptr, ptr @cfun, align 8, !tbaa !674
  br i1 %46, label %55, label %48, !prof !1344

48:                                               ; preds = %43
  %49 = load ptr, ptr %38, align 8, !tbaa !922
  %50 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !652
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !665
  %54 = icmp eq ptr %49, %53
  br i1 %54, label %55, label %81, !prof !1345

55:                                               ; preds = %41, %48, %43
  %56 = phi ptr [ %42, %41 ], [ %47, %48 ], [ %47, %43 ]
  %57 = load ptr, ptr %18, align 8, !tbaa !1028
  %58 = getelementptr inbounds %struct.function, ptr %56, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !652
  %60 = load ptr, ptr %59, align 8, !tbaa !664
  %61 = icmp eq ptr %57, %60
  br i1 %61, label %81, label %62, !prof !1346

62:                                               ; preds = %55
  %63 = getelementptr inbounds %struct.edge_def, ptr %18, i64 0, i32 7
  %64 = load i32, ptr %63, align 8, !tbaa !863
  %65 = and i32 %64, 2
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81, !prof !1347

67:                                               ; preds = %62
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %57) #24
  %68 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %80, !prof !1348

70:                                               ; preds = %67
  %71 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %72 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef %71) #24, !range !695
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %80, label %74, !prof !1349

74:                                               ; preds = %70
  %75 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %76 = tail call fastcc i32 @gimple_code(ptr noundef %75) #24, !range !684
  %77 = icmp eq i32 %76, 9
  br i1 %77, label %80, label %78, !prof !1350

78:                                               ; preds = %74
  %79 = tail call ptr @split_edge(ptr noundef nonnull %18) #23
  br label %80

80:                                               ; preds = %78, %74, %70, %67
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  br label %81

81:                                               ; preds = %35, %80, %62, %55, %48
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %82 = load i32, ptr %2, align 8
  %83 = load ptr, ptr %10, align 8
  %84 = call fastcc zeroext i8 @ei_cond(i32 %82, ptr %83, ptr noundef nonnull %1) #24, !range !695
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %17, !prof !1351, !llvm.loop !1352

86:                                               ; preds = %81, %11
  %87 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %88 = load ptr, ptr %87, align 8, !tbaa !674
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %11, !prof !1353, !llvm.loop !1354

90:                                               ; preds = %86, %0
  tail call void @end_recording_case_labels() #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_build3(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 !prof !735 {
  %7 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %8 = tail call fastcc i32 @gimple_location(ptr noundef %7) #24
  %9 = tail call ptr @fold_build3_stat_loc(i32 noundef %8, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #23
  %10 = tail call ptr @tree_strip_nop_conversions(ptr noundef %9) #23
  %11 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %10, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  ret ptr %11
}

; Function Attrs: optsize
declare ptr @fold_build3_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_build2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 !prof !735 {
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %7 = tail call fastcc i32 @gimple_location(ptr noundef %6) #24
  %8 = tail call ptr @fold_build2_stat_loc(i32 noundef %7, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #23
  %9 = tail call ptr @tree_strip_nop_conversions(ptr noundef %8) #23
  %10 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %9, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local ptr @gimplify_build1(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 !prof !735 {
  %5 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %6 = tail call fastcc i32 @gimple_location(ptr noundef %5) #24
  %7 = tail call ptr @fold_build1_stat_loc(i32 noundef %6, i32 noundef %1, ptr noundef %2, ptr noundef %3) #23
  %8 = tail call ptr @tree_strip_nop_conversions(ptr noundef %7) #23
  %9 = tail call ptr @force_gimple_operand_gsi(ptr noundef %0, ptr noundef %8, i8 noundef zeroext 1, ptr noundef null, i8 noundef zeroext 1, i32 noundef 1) #23
  ret ptr %9
}

; Function Attrs: optsize
declare ptr @fold_build1_stat_loc(i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_warn_function_return() #0 !prof !677 !PGOFuncName !1355 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #25
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !960
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 524288
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %43, label %9, !prof !679

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !652
  %12 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !665
  %14 = load ptr, ptr %13, align 8, !tbaa !891
  %15 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %14) #24
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %43, label %17

17:                                               ; preds = %9
  %18 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %13) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1019
  %19 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %18, ptr %19, align 8, !tbaa.struct !1020
  %20 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %18, ptr noundef nonnull %1) #24, !range !695
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %31
  %23 = load ptr, ptr %1, align 8, !tbaa !674
  %24 = load ptr, ptr %23, align 8, !tbaa !1028
  %25 = tail call ptr @last_stmt(ptr noundef %24) #24
  %26 = tail call fastcc i32 @gimple_code(ptr noundef %25) #24, !range !684
  %27 = icmp eq i32 %26, 9
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = tail call fastcc i32 @gimple_location(ptr noundef %25) #24
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22, %28
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %32 = load i32, ptr %2, align 8
  %33 = load ptr, ptr %19, align 8
  %34 = call fastcc zeroext i8 @ei_cond(i32 %32, ptr %33, ptr noundef nonnull %1) #24, !range !695
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %22, !llvm.loop !1356

36:                                               ; preds = %31, %17
  %37 = load ptr, ptr @cfun, align 8, !tbaa !674
  %38 = getelementptr inbounds %struct.function, ptr %37, i64 0, i32 16
  %39 = load i32, ptr %38, align 4, !tbaa !1357
  br label %40

40:                                               ; preds = %28, %36
  %41 = phi i32 [ %39, %36 ], [ %29, %28 ]
  %42 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %41, i32 noundef 0, ptr noundef nonnull @.str.179) #23
  br label %102

43:                                               ; preds = %9, %0
  %44 = load i32, ptr @warn_return_type, align 4, !tbaa !680
  %45 = icmp ne i32 %44, 0
  %46 = and i64 %6, 8388608
  %47 = icmp eq i64 %46, 0
  %48 = and i1 %47, %45
  br i1 %48, label %49, label %102, !prof !1358

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !652
  %52 = getelementptr inbounds %struct.control_flow_graph, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !665
  %54 = load ptr, ptr %53, align 8, !tbaa !891
  %55 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %54) #24
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %102, label %57

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !704
  %60 = getelementptr inbounds %struct.tree_common, ptr %59, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !704
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 19
  br i1 %64, label %102, label %65

65:                                               ; preds = %57
  %66 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %53) #24
  store i32 0, ptr %2, align 8, !tbaa.struct !1019
  %67 = getelementptr inbounds i8, ptr %2, i64 8
  store ptr %66, ptr %67, align 8, !tbaa.struct !1020
  %68 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %66, ptr noundef nonnull %1) #24, !range !695
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %102, label %70

70:                                               ; preds = %65, %97
  %71 = load ptr, ptr %1, align 8, !tbaa !674
  %72 = load ptr, ptr %71, align 8, !tbaa !1028
  %73 = tail call ptr @last_stmt(ptr noundef %72) #24
  %74 = tail call fastcc i32 @gimple_code(ptr noundef %73) #24, !range !684
  %75 = icmp eq i32 %74, 9
  br i1 %75, label %76, label %97

76:                                               ; preds = %70
  %77 = tail call fastcc ptr @gimple_return_retval(ptr noundef %73) #24
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = tail call fastcc zeroext i8 @gimple_no_warning_p(ptr noundef %73) #24, !range !695
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %79
  %83 = tail call fastcc i32 @gimple_location(ptr noundef %73) #24
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr @cfun, align 8, !tbaa !674
  %87 = getelementptr inbounds %struct.function, ptr %86, i64 0, i32 16
  %88 = load i32, ptr %87, align 4, !tbaa !1357
  br label %89

89:                                               ; preds = %82, %85
  %90 = phi i32 [ %88, %85 ], [ %83, %82 ]
  %91 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %90, i32 noundef 172, ptr noundef nonnull @.str.180) #23
  %92 = load ptr, ptr @cfun, align 8, !tbaa !674
  %93 = getelementptr inbounds %struct.function, ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !960
  %95 = load i64, ptr %94, align 8
  %96 = or i64 %95, 8388608
  store i64 %96, ptr %94, align 8
  br label %102

97:                                               ; preds = %79, %76, %70
  call fastcc void @ei_next(ptr noundef nonnull %2) #24
  %98 = load i32, ptr %2, align 8
  %99 = load ptr, ptr %67, align 8
  %100 = call fastcc zeroext i8 @ei_cond(i32 %98, ptr %99, ptr noundef nonnull %1) #24, !range !695
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %102, label %70, !llvm.loop !1359

102:                                              ; preds = %97, %65, %89, %43, %49, %57, %40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #25
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @execute_warn_function_noreturn() #0 !prof !1336 !PGOFuncName !1360 {
  %1 = load i32, ptr @warn_missing_noreturn, align 4, !tbaa !680
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %29, label %3, !prof !1350

3:                                                ; preds = %0
  %4 = load ptr, ptr @cfun, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !960
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 524288
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.function, ptr %4, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !652
  %13 = getelementptr inbounds %struct.control_flow_graph, ptr %12, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !665
  %15 = load ptr, ptr %14, align 8, !tbaa !891
  %16 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %15) #24
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %10
  %19 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 12), align 8, !tbaa !1361
  %20 = tail call zeroext i8 %19(ptr noundef nonnull %6) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  %23 = load ptr, ptr @cfun, align 8, !tbaa !674
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !960
  %26 = getelementptr inbounds %struct.tree_decl_minimal, ptr %25, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !704
  %28 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %27, i32 noundef 133, ptr noundef nonnull @.str.181) #23
  br label %29

29:                                               ; preds = %22, %18, %10, %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_warn_unused_result() #18 !prof !677 !PGOFuncName !1362 {
  %1 = load i8, ptr @flag_warn_unused_result, align 1, !tbaa !704
  ret i8 %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @run_warn_unused_result() #0 !prof !677 !PGOFuncName !1363 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %2 = tail call ptr @gimple_body(ptr noundef %1) #23
  tail call fastcc void @do_warn_unused_result(ptr noundef %2) #24
  ret i32 0
}

; Function Attrs: optsize
declare ptr @vec_gc_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_safe_grow(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1364 {
  %3 = load ptr, ptr %0, align 8, !tbaa !674
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1100

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !733
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = sub nsw i32 %1, %8
  tail call fastcc void @VEC_basic_block_gc_reserve_exact(ptr noundef nonnull %0, i32 noundef %9) #24
  %10 = load ptr, ptr %0, align 8, !tbaa !674, !nonnull !1365, !noundef !1365
  store i32 %1, ptr %10, align 8, !tbaa !733
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_gc_reserve_exact(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 !prof !672 !PGOFuncName !1366 {
  %3 = load ptr, ptr %0, align 8, !tbaa !674
  %4 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %3, i32 noundef %1) #24, !range !810
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8, !prof !1367

6:                                                ; preds = %2
  %7 = tail call ptr @vec_gc_p_reserve_exact(ptr noundef %3, i32 noundef %1) #23
  store ptr %7, ptr %0, align 8, !tbaa !674
  br label %8

8:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_basic_block_base_space(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !1368 !PGOFuncName !1369 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !1370

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !1371
  %7 = load i32, ptr %0, align 8, !tbaa !733
  %8 = sub i32 %6, %7
  %9 = icmp uge i32 %8, %1
  br label %12

10:                                               ; preds = %2
  %11 = icmp eq i32 %1, 0
  br label %12

12:                                               ; preds = %10, %4
  %13 = phi i1 [ %9, %4 ], [ %11, %10 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_gimple_cfg(ptr noundef %0) unnamed_addr #0 !prof !677 !PGOFuncName !1372 {
  %2 = alloca i32, align 4
  tail call void @gimple_register_cfg_hooks() #23
  store i64 0, ptr @cfg_stats.0, align 8
  tail call void @init_empty_tree_cfg() #24
  store i1 false, ptr @found_computed_goto, align 1
  tail call fastcc void @make_blocks(ptr noundef %0) #24
  %3 = load i1, ptr @found_computed_goto, align 1
  br i1 %3, label %4, label %5, !prof !1373

4:                                                ; preds = %1
  tail call fastcc void @factor_computed_gotos() #24
  br label %5

5:                                                ; preds = %4, %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !674
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !652
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !660
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %20, !prof !1373

12:                                               ; preds = %5
  %13 = load ptr, ptr %8, align 8, !tbaa !664
  %14 = tail call ptr @create_empty_bb(ptr noundef %13) #23
  %15 = load ptr, ptr @cfun, align 8, !tbaa !674
  %16 = getelementptr inbounds %struct.function, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !652
  %18 = getelementptr inbounds %struct.control_flow_graph, ptr %17, i64 0, i32 3
  %19 = load i32, ptr %18, align 8, !tbaa !660
  br label %20

20:                                               ; preds = %12, %5
  %21 = phi i32 [ %19, %12 ], [ %10, %5 ]
  %22 = phi ptr [ %17, %12 ], [ %8, %5 ]
  %23 = getelementptr inbounds %struct.control_flow_graph, ptr %22, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !662
  %25 = tail call fastcc i32 @VEC_basic_block_base_length(ptr noundef %24) #24
  %26 = zext i32 %25 to i64
  %27 = sext i32 %21 to i64
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %30, !prof !1373

29:                                               ; preds = %20
  tail call fastcc void @VEC_basic_block_gc_safe_grow_cleared(ptr noundef nonnull %23, i32 noundef %21) #24
  br label %30

30:                                               ; preds = %29, %20
  tail call void @cleanup_dead_labels() #24
  tail call void @group_case_labels() #24
  %31 = tail call ptr @htab_create(i64 noundef 13, ptr noundef nonnull @locus_map_hash, ptr noundef nonnull @locus_map_eq, ptr noundef nonnull @free) #23
  store ptr %31, ptr @discriminator_per_locus, align 8, !tbaa !674
  tail call fastcc void @make_edges() #24
  tail call void @cleanup_dead_labels() #24
  %32 = load ptr, ptr @discriminator_per_locus, align 8, !tbaa !674
  tail call void @htab_delete(ptr noundef %32) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #25
  %33 = call ptr @dump_begin(i32 noundef 7, ptr noundef nonnull %2) #23
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35, !prof !679

35:                                               ; preds = %30
  call fastcc void @gimple_cfg2vcg(ptr noundef nonnull %33) #24
  call void @dump_end(i32 noundef 7, ptr noundef nonnull %33) #23
  br label %36

36:                                               ; preds = %35, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @gimple_set_body(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_scope_blocks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_register_cfg_hooks() local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_blocks(ptr noundef %0) unnamed_addr #0 !prof !677 !PGOFuncName !1374 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %72, !prof !1375

5:                                                ; preds = %1
  %6 = load ptr, ptr @cfun, align 8, !tbaa !674
  %7 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !652
  %9 = load ptr, ptr %8, align 8, !tbaa !664
  br label %10

10:                                               ; preds = %5, %68
  %11 = phi ptr [ %29, %68 ], [ %0, %5 ]
  %12 = phi ptr [ %16, %68 ], [ null, %5 ]
  %13 = phi i8 [ %69, %68 ], [ 1, %5 ]
  %14 = phi i1 [ true, %68 ], [ false, %5 ]
  %15 = phi ptr [ %28, %68 ], [ %9, %5 ]
  %16 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %18, label %21, !prof !1376

18:                                               ; preds = %10
  %19 = call fastcc zeroext i8 @stmt_starts_bb_p(ptr noundef %16, ptr noundef %12) #24, !range !695
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %27, label %21, !prof !1377

21:                                               ; preds = %18, %10
  br i1 %14, label %22, label %24, !prof !1378

22:                                               ; preds = %21
  %23 = call ptr @gsi_split_seq_before(ptr noundef nonnull %2) #23
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi ptr [ %11, %21 ], [ %23, %22 ]
  %26 = call ptr @create_basic_block(ptr noundef %25, ptr noundef null, ptr noundef %15) #23
  br label %27

27:                                               ; preds = %24, %18
  %28 = phi ptr [ %26, %24 ], [ %15, %18 ]
  %29 = phi ptr [ %25, %24 ], [ %11, %18 ]
  call void @gimple_set_bb(ptr noundef %16, ptr noundef %28) #23
  %30 = call fastcc zeroext i8 @computed_goto_p(ptr noundef %16) #24, !range !695
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %33, label %32, !prof !1379

32:                                               ; preds = %27
  store i1 true, ptr @found_computed_goto, align 1
  br label %33

33:                                               ; preds = %32, %27
  %34 = call zeroext i8 @stmt_ends_bb_p(ptr noundef %16) #24, !range !695
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %68, label %36, !prof !1376

36:                                               ; preds = %33
  %37 = call fastcc zeroext i8 @gimple_has_lhs(ptr noundef %16) #24, !range !695
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %68, label %39, !prof !1380

39:                                               ; preds = %36
  %40 = call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef %16) #24, !range !695
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %39
  %43 = call ptr @gimple_get_lhs(ptr noundef %16) #23
  %44 = getelementptr inbounds %struct.tree_common, ptr %43, i64 0, i32 2
  %45 = load ptr, ptr %44, align 8, !tbaa !704
  %46 = call zeroext i8 @is_gimple_reg_type(ptr noundef %45) #23
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %68, label %48

48:                                               ; preds = %42
  %49 = call ptr @gimple_get_lhs(ptr noundef %16) #23
  %50 = getelementptr inbounds %struct.tree_common, ptr %49, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !704
  %52 = call ptr @create_tmp_var(ptr noundef %51, ptr noundef null) #23
  %53 = call ptr @gimple_build_assign_stat(ptr noundef %49, ptr noundef %52) #23
  %54 = call fastcc i32 @gimple_location(ptr noundef %16) #24
  call fastcc void @gimple_set_location(ptr noundef %53, i32 noundef %54) #24
  %55 = call fastcc ptr @gimple_block(ptr noundef %16) #24
  call fastcc void @gimple_set_block(ptr noundef %53, ptr noundef %55) #24
  call void @gimple_set_lhs(ptr noundef %16, ptr noundef %52) #23
  %56 = getelementptr inbounds %struct.tree_common, ptr %52, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !704
  %58 = load i64, ptr %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = and i32 %59, 65535
  %61 = add nsw i32 %60, -13
  %62 = icmp ult i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = getelementptr inbounds %struct.tree_decl_common, ptr %52, i64 0, i32 2
  %65 = load i64, ptr %64, align 8
  %66 = or i64 %65, 134217728
  store i64 %66, ptr %64, align 8
  br label %67

67:                                               ; preds = %48, %63
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %53, i32 noundef 1) #23
  br label %68

68:                                               ; preds = %36, %39, %42, %67, %33
  %69 = phi i8 [ 0, %33 ], [ 1, %67 ], [ 1, %42 ], [ 1, %39 ], [ 1, %36 ]
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %70 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %10, label %72, !prof !1381, !llvm.loop !1382

72:                                               ; preds = %68, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @factor_computed_gotos() unnamed_addr #0 !prof !735 !PGOFuncName !1383 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !652
  %6 = load ptr, ptr %5, align 8, !tbaa !664
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !666
  %9 = getelementptr inbounds %struct.control_flow_graph, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !665
  %11 = icmp eq ptr %8, %10
  br i1 %11, label %52, label %12

12:                                               ; preds = %0, %40
  %13 = phi ptr [ %45, %40 ], [ %8, %0 ]
  %14 = phi ptr [ %43, %40 ], [ null, %0 ]
  %15 = phi ptr [ %42, %40 ], [ null, %0 ]
  %16 = phi ptr [ %41, %40 ], [ null, %0 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %13) #24
  %17 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24, !range !695
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %12
  %20 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #24
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %40, label %22

22:                                               ; preds = %19
  %23 = call fastcc zeroext i8 @computed_goto_p(ptr noundef %20) #24, !range !695
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %40, label %25

25:                                               ; preds = %22
  %26 = icmp eq ptr %16, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %25
  %28 = call ptr @create_empty_bb(ptr noundef %13) #23
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %28) #24
  %29 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !674
  %30 = call ptr @create_tmp_var(ptr noundef %29, ptr noundef nonnull @.str.49) #23
  %31 = call ptr @create_artificial_label(i32 noundef 0) #23
  %32 = call ptr @gimple_build_label(ptr noundef %31) #23
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %32, i32 noundef 0) #23
  %33 = call ptr @gimple_build_goto(ptr noundef %30) #23
  call void @gsi_insert_after(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  br label %34

34:                                               ; preds = %27, %25
  %35 = phi ptr [ %16, %25 ], [ %33, %27 ]
  %36 = phi ptr [ %15, %25 ], [ %30, %27 ]
  %37 = phi ptr [ %14, %25 ], [ %31, %27 ]
  %38 = call fastcc ptr @gimple_goto_dest(ptr noundef %20) #24
  %39 = call ptr @gimple_build_assign_stat(ptr noundef %36, ptr noundef %38) #23
  call void @gsi_insert_before(ptr noundef nonnull %1, ptr noundef %39, i32 noundef 1) #23
  call fastcc void @gimple_goto_set_dest(ptr noundef %20, ptr noundef %37) #24
  br label %40

40:                                               ; preds = %22, %34, %19, %12
  %41 = phi ptr [ %16, %12 ], [ %16, %19 ], [ %35, %34 ], [ %16, %22 ]
  %42 = phi ptr [ %15, %12 ], [ %15, %19 ], [ %36, %34 ], [ %15, %22 ]
  %43 = phi ptr [ %14, %12 ], [ %14, %19 ], [ %37, %34 ], [ %14, %22 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #25
  %44 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !666
  %46 = load ptr, ptr @cfun, align 8, !tbaa !674
  %47 = getelementptr inbounds %struct.function, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !652
  %49 = getelementptr inbounds %struct.control_flow_graph, ptr %48, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !665
  %51 = icmp eq ptr %45, %50
  br i1 %51, label %52, label %12, !llvm.loop !1384

52:                                               ; preds = %40, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @locus_map_hash(ptr nocapture noundef readonly %0) #5 !prof !1385 !PGOFuncName !1386 {
  %2 = load i32, ptr %0, align 4, !tbaa !1387
  ret i32 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @locus_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 !prof !1389 !PGOFuncName !1390 {
  %3 = load i32, ptr %0, align 4, !tbaa !1387
  %4 = load i32, ptr %1, align 4, !tbaa !1387
  %5 = icmp eq i32 %3, %4
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_edges() unnamed_addr #0 !prof !677 !PGOFuncName !1391 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !652
  %4 = load ptr, ptr %3, align 8, !tbaa !664
  %5 = getelementptr inbounds %struct.control_flow_graph, ptr %3, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !662
  %7 = tail call fastcc ptr @VEC_basic_block_base_index(ptr noundef %6, i32 noundef 2) #24
  %8 = tail call ptr @make_edge(ptr noundef %4, ptr noundef %7, i32 noundef 1) #23
  %9 = load ptr, ptr @cfun, align 8, !tbaa !674
  %10 = getelementptr inbounds %struct.function, ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !652
  %12 = load ptr, ptr %11, align 8, !tbaa !664
  %13 = getelementptr inbounds %struct.basic_block_def, ptr %12, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !666
  %15 = getelementptr inbounds %struct.control_flow_graph, ptr %11, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !665
  %17 = icmp eq ptr %14, %16
  br i1 %17, label %145, label %18, !prof !1392

18:                                               ; preds = %0, %134
  %19 = phi ptr [ %138, %134 ], [ %14, %0 ]
  %20 = phi ptr [ %135, %134 ], [ null, %0 ]
  %21 = phi i8 [ %136, %134 ], [ undef, %0 ]
  %22 = tail call ptr @last_stmt(ptr noundef %19) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %122, label %24, !prof !1393

24:                                               ; preds = %18
  %25 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %22) #24, !range !684
  %26 = trunc i32 %25 to i8
  switch i8 %26, label %114 [
    i8 3, label %27
    i8 9, label %28
    i8 1, label %35
    i8 5, label %36
    i8 14, label %37
    i8 15, label %38
    i8 8, label %40
    i8 6, label %49
    i8 7, label %53
    i8 26, label %54
    i8 27, label %54
    i8 23, label %54
    i8 32, label %54
    i8 24, label %54
    i8 25, label %54
    i8 22, label %54
    i8 29, label %54
    i8 30, label %56
    i8 31, label %134
    i8 19, label %126
    i8 20, label %126
    i8 28, label %58
    i8 21, label %65
  ], !prof !1394

27:                                               ; preds = %24
  tail call fastcc void @make_goto_expr_edges(ptr noundef %19) #24
  br label %134

28:                                               ; preds = %24
  %29 = load ptr, ptr @cfun, align 8, !tbaa !674
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !652
  %32 = getelementptr inbounds %struct.control_flow_graph, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !665
  %34 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %33, i32 noundef 0) #23
  br label %134

35:                                               ; preds = %24
  tail call fastcc void @make_cond_expr_edges(ptr noundef %19) #24
  br label %134

36:                                               ; preds = %24
  tail call fastcc void @make_gimple_switch_edges(ptr noundef %19) #24
  br label %134

37:                                               ; preds = %24
  tail call void @make_eh_edges(ptr noundef nonnull %22) #23
  br label %134

38:                                               ; preds = %24
  %39 = tail call zeroext i8 @make_eh_dispatch_edges(ptr noundef nonnull %22) #23
  br label %118

40:                                               ; preds = %24
  %41 = tail call zeroext i8 @stmt_can_make_abnormal_goto(ptr noundef nonnull %22) #24, !range !695
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %44, label %43, !prof !1395

43:                                               ; preds = %40
  tail call void @make_abnormal_goto_edges(ptr noundef %19, i8 noundef zeroext 1) #24
  br label %44

44:                                               ; preds = %43, %40
  tail call void @make_eh_edges(ptr noundef nonnull %22) #23
  %45 = tail call i32 @gimple_call_flags(ptr noundef nonnull %22) #23
  %46 = and i32 %45, 8
  %47 = icmp eq i32 %46, 0
  %48 = zext i1 %47 to i8
  br label %118

49:                                               ; preds = %24
  %50 = tail call zeroext i8 @is_ctrl_altering_stmt(ptr noundef nonnull %22) #24
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %126, label %52, !prof !1396

52:                                               ; preds = %49
  tail call void @make_eh_edges(ptr noundef nonnull %22) #23
  br label %126

53:                                               ; preds = %24
  tail call fastcc void @make_gimple_asm_edges(ptr noundef %19) #24
  br label %126

54:                                               ; preds = %24, %24, %24, %24, %24, %24, %24, %24
  %55 = tail call ptr @new_omp_region(ptr noundef %19, i32 noundef %25, ptr noundef %20) #23
  br label %126

56:                                               ; preds = %24
  %57 = tail call ptr @new_omp_region(ptr noundef %19, i32 noundef 30, ptr noundef %20) #23
  br label %126

58:                                               ; preds = %24
  %59 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 4
  store ptr %19, ptr %59, align 8, !tbaa !1397
  %60 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !1399
  %62 = icmp ne i32 %61, 29
  %63 = zext i1 %62 to i8
  %64 = load ptr, ptr %20, align 8, !tbaa !1400
  br label %118

65:                                               ; preds = %24
  %66 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 5
  store ptr %19, ptr %66, align 8, !tbaa !1401
  %67 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 7
  %68 = load i32, ptr %67, align 8, !tbaa !1399
  switch i32 %68, label %113 [
    i32 23, label %69
    i32 30, label %85
  ]

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !1402
  %72 = tail call fastcc ptr @single_succ_edge(ptr noundef %71) #24
  %73 = getelementptr inbounds %struct.edge_def, ptr %72, i64 0, i32 7
  %74 = load i32, ptr %73, align 8, !tbaa !863
  %75 = or i32 %74, 2
  store i32 %75, ptr %73, align 8, !tbaa !863
  %76 = load ptr, ptr %70, align 8, !tbaa !1402
  %77 = tail call fastcc ptr @single_succ(ptr noundef %76) #24
  %78 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %77, i32 noundef 2) #23
  %79 = load ptr, ptr %70, align 8, !tbaa !1402
  %80 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !666
  %82 = tail call ptr @make_edge(ptr noundef %79, ptr noundef %81, i32 noundef 2) #23
  %83 = load ptr, ptr %80, align 8, !tbaa !666
  %84 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %83, i32 noundef 3) #23
  br label %134

85:                                               ; preds = %65
  %86 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !1402
  %88 = tail call fastcc ptr @single_succ(ptr noundef %87) #24
  %89 = getelementptr inbounds %struct.omp_region, ptr %20, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !674
  %91 = icmp eq ptr %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %85, %98
  %93 = phi ptr [ %106, %98 ], [ %90, %85 ]
  %94 = getelementptr inbounds %struct.omp_region, ptr %93, i64 0, i32 7
  %95 = load i32, ptr %94, align 8, !tbaa !1399
  %96 = icmp eq i32 %95, 29
  br i1 %96, label %98, label %97

97:                                               ; preds = %92
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 645, ptr noundef nonnull @.str.2) #23
  br label %98

98:                                               ; preds = %92, %97
  %99 = getelementptr inbounds %struct.omp_region, ptr %93, i64 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !1402
  %101 = tail call ptr @make_edge(ptr noundef %88, ptr noundef %100, i32 noundef 0) #23
  %102 = getelementptr inbounds %struct.omp_region, ptr %93, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !1397
  %104 = tail call ptr @make_edge(ptr noundef %103, ptr noundef %19, i32 noundef 1) #23
  %105 = getelementptr inbounds %struct.omp_region, ptr %93, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !674
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %92, !llvm.loop !1403

108:                                              ; preds = %98, %85
  %109 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %88, i32 noundef 0) #23
  %110 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %111 = load ptr, ptr %110, align 8, !tbaa !666
  %112 = tail call ptr @make_edge(ptr noundef %88, ptr noundef %111, i32 noundef 0) #23
  br label %134

113:                                              ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 661, ptr noundef nonnull @.str.2) #23
  br label %118

114:                                              ; preds = %24
  %115 = tail call zeroext i8 @stmt_ends_bb_p(ptr noundef nonnull %22) #24, !range !695
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 666, ptr noundef nonnull @.str.2) #23
  br label %126

118:                                              ; preds = %38, %44, %58, %113
  %119 = phi i8 [ %21, %113 ], [ %63, %58 ], [ %48, %44 ], [ %39, %38 ]
  %120 = phi ptr [ %20, %113 ], [ %64, %58 ], [ %20, %44 ], [ %20, %38 ]
  %121 = icmp eq i8 %119, 0
  br i1 %121, label %134, label %126, !prof !837

122:                                              ; preds = %18
  %123 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %124 = load ptr, ptr %123, align 8, !tbaa !666
  %125 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %124, i32 noundef 1) #23
  br label %134

126:                                              ; preds = %24, %24, %117, %114, %49, %52, %53, %54, %56, %118
  %127 = phi i8 [ %119, %118 ], [ 1, %56 ], [ 1, %54 ], [ 1, %53 ], [ 1, %52 ], [ 1, %49 ], [ 1, %114 ], [ 1, %117 ], [ 1, %24 ], [ 1, %24 ]
  %128 = phi ptr [ %120, %118 ], [ %57, %56 ], [ %55, %54 ], [ %20, %53 ], [ %20, %52 ], [ %20, %49 ], [ %20, %114 ], [ %20, %117 ], [ %20, %24 ], [ %20, %24 ]
  %129 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !666
  %131 = tail call ptr @make_edge(ptr noundef %19, ptr noundef %130, i32 noundef 1) #23
  %132 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %22) #24
  %133 = load ptr, ptr %129, align 8, !tbaa !666
  tail call fastcc void @assign_discriminator(i32 noundef %132, ptr noundef %133) #24
  br label %134

134:                                              ; preds = %24, %27, %28, %35, %36, %37, %69, %108, %122, %126, %118
  %135 = phi ptr [ %20, %122 ], [ %128, %126 ], [ %120, %118 ], [ %20, %108 ], [ %20, %69 ], [ %20, %37 ], [ %20, %36 ], [ %20, %35 ], [ %20, %28 ], [ %20, %27 ], [ %20, %24 ]
  %136 = phi i8 [ 1, %122 ], [ %127, %126 ], [ 0, %118 ], [ 0, %108 ], [ 0, %69 ], [ 0, %37 ], [ 0, %36 ], [ 0, %35 ], [ 0, %28 ], [ 0, %27 ], [ 0, %24 ]
  %137 = getelementptr inbounds %struct.basic_block_def, ptr %19, i64 0, i32 6
  %138 = load ptr, ptr %137, align 8, !tbaa !666
  %139 = load ptr, ptr @cfun, align 8, !tbaa !674
  %140 = getelementptr inbounds %struct.function, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !652
  %142 = getelementptr inbounds %struct.control_flow_graph, ptr %141, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !665
  %144 = icmp eq ptr %138, %143
  br i1 %144, label %145, label %18, !prof !1404, !llvm.loop !1405

145:                                              ; preds = %134, %0
  %146 = load ptr, ptr @root_omp_region, align 8, !tbaa !674
  %147 = icmp eq ptr %146, null
  br i1 %147, label %149, label %148, !prof !679

148:                                              ; preds = %145
  tail call void @free_omp_regions() #23
  br label %149

149:                                              ; preds = %148, %145
  tail call void @fold_cond_expr_cond() #24
  ret void
}

; Function Attrs: optsize
declare ptr @dump_begin(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_cfg2vcg(ptr nocapture noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1406 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.edge_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #25
  %4 = load ptr, ptr getelementptr inbounds (%struct.lang_hooks, ptr @lang_hooks, i64 0, i32 22), align 8, !tbaa !946
  %5 = load ptr, ptr @current_function_decl, align 8, !tbaa !674
  %6 = tail call ptr %4(ptr noundef %5, i32 noundef 2) #23
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.50, ptr noundef %6) #24
  %8 = tail call i64 @fwrite(ptr nonnull @.str.51, i64 40, i64 1, ptr %0)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.52, i64 38, i64 1, ptr %0)
  %10 = load ptr, ptr @cfun, align 8, !tbaa !674
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !652
  %13 = load ptr, ptr %12, align 8, !tbaa !664
  %14 = getelementptr inbounds %struct.basic_block_def, ptr %13, i64 0, i32 1
  %15 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %14) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  %16 = getelementptr inbounds i8, ptr %3, i64 8
  store ptr %15, ptr %16, align 8, !tbaa.struct !1020
  %17 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %15, ptr noundef nonnull %2) #24, !range !695
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %1, %19
  %20 = load ptr, ptr %2, align 8, !tbaa !674
  %21 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !922
  %23 = getelementptr inbounds %struct.basic_block_def, ptr %22, i64 0, i32 9
  %24 = load i32, ptr %23, align 8, !tbaa !751
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.53, i32 noundef %24) #24
  %26 = getelementptr inbounds %struct.edge_def, ptr %20, i64 0, i32 7
  %27 = load i32, ptr %26, align 8, !tbaa !863
  %28 = and i32 %27, 16
  %29 = icmp eq i32 %28, 0
  %30 = select i1 %29, ptr @.str.55, ptr @.str.54
  %31 = tail call i64 @fwrite(ptr nonnull %30, i64 31, i64 1, ptr %0)
  %32 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 3, i64 1, ptr %0)
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %33 = load i32, ptr %3, align 8
  %34 = load ptr, ptr %16, align 8
  %35 = call fastcc zeroext i8 @ei_cond(i32 %33, ptr %34, ptr noundef nonnull %2) #24, !range !695
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %19, !llvm.loop !1407

37:                                               ; preds = %19, %1
  %38 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #24
  %39 = load ptr, ptr @cfun, align 8, !tbaa !674
  %40 = getelementptr inbounds %struct.function, ptr %39, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !652
  %42 = load ptr, ptr %41, align 8, !tbaa !664
  %43 = getelementptr inbounds %struct.basic_block_def, ptr %42, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !666
  %45 = getelementptr inbounds %struct.control_flow_graph, ptr %41, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !665
  %47 = icmp eq ptr %44, %46
  br i1 %47, label %126, label %48

48:                                               ; preds = %37, %117
  %49 = phi ptr [ %119, %117 ], [ %44, %37 ]
  %50 = tail call ptr @first_stmt(ptr noundef %49) #24
  %51 = tail call ptr @last_stmt(ptr noundef %49) #24
  %52 = icmp eq ptr %50, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %50) #24, !range !684
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !674
  %58 = tail call fastcc i32 @get_lineno(ptr noundef nonnull %50) #24
  br label %59

59:                                               ; preds = %48, %53
  %60 = phi i32 [ %58, %53 ], [ 0, %48 ]
  %61 = phi ptr [ %57, %53 ], [ @.str.57, %48 ]
  %62 = icmp eq ptr %51, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %51) #24, !range !684
  %65 = zext nneg i32 %64 to i64
  %66 = getelementptr inbounds [0 x ptr], ptr @gimple_code_name, i64 0, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !674
  %68 = tail call fastcc i32 @get_lineno(ptr noundef nonnull %51) #24
  br label %69

69:                                               ; preds = %59, %63
  %70 = phi i32 [ %68, %63 ], [ 0, %59 ]
  %71 = phi ptr [ %67, %63 ], [ @.str.57, %59 ]
  %72 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 9
  %73 = load i32, ptr %72, align 8, !tbaa !751
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef %73, i32 noundef %73, ptr noundef %61, i32 noundef %60, ptr noundef %71, i32 noundef %70) #24
  %75 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 1
  %76 = tail call fastcc ptr @ei_start_1(ptr noundef nonnull %75) #24
  store i32 0, ptr %3, align 8, !tbaa.struct !1019
  store ptr %76, ptr %16, align 8, !tbaa.struct !1020
  %77 = call fastcc zeroext i8 @ei_cond(i32 0, ptr %76, ptr noundef nonnull %2) #24, !range !695
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %69, %96
  %80 = load ptr, ptr %2, align 8, !tbaa !674
  %81 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !922
  %83 = load ptr, ptr @cfun, align 8, !tbaa !674
  %84 = getelementptr inbounds %struct.function, ptr %83, i64 0, i32 1
  %85 = load ptr, ptr %84, align 8, !tbaa !652
  %86 = getelementptr inbounds %struct.control_flow_graph, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !665
  %88 = icmp eq ptr %82, %87
  %89 = load i32, ptr %72, align 8, !tbaa !751
  br i1 %88, label %90, label %92

90:                                               ; preds = %79
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.59, i32 noundef %89) #24
  br label %96

92:                                               ; preds = %79
  %93 = getelementptr inbounds %struct.basic_block_def, ptr %82, i64 0, i32 9
  %94 = load i32, ptr %93, align 8, !tbaa !751
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %89, i32 noundef %94) #24
  br label %96

96:                                               ; preds = %92, %90
  %97 = getelementptr inbounds %struct.edge_def, ptr %80, i64 0, i32 7
  %98 = load i32, ptr %97, align 8, !tbaa !863
  %99 = and i32 %98, 16
  %100 = icmp eq i32 %99, 0
  %101 = select i1 %100, ptr @.str.62, ptr @.str.61
  %102 = tail call i64 @fwrite(ptr nonnull %101, i64 31, i64 1, ptr %0)
  %103 = tail call i64 @fwrite(ptr nonnull @.str.56, i64 3, i64 1, ptr %0)
  call fastcc void @ei_next(ptr noundef nonnull %3) #24
  %104 = load i32, ptr %3, align 8
  %105 = load ptr, ptr %16, align 8
  %106 = call fastcc zeroext i8 @ei_cond(i32 %104, ptr %105, ptr noundef nonnull %2) #24, !range !695
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %79, !llvm.loop !1408

108:                                              ; preds = %96, %69
  %109 = getelementptr inbounds %struct.basic_block_def, ptr %49, i64 0, i32 6
  %110 = load ptr, ptr %109, align 8, !tbaa !666
  %111 = load ptr, ptr @cfun, align 8, !tbaa !674
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !652
  %114 = getelementptr inbounds %struct.control_flow_graph, ptr %113, i64 0, i32 1
  %115 = load ptr, ptr %114, align 8, !tbaa !665
  %116 = icmp eq ptr %110, %115
  br i1 %116, label %126, label %117

117:                                              ; preds = %108
  %118 = tail call i32 @fputc(i32 noundef 10, ptr noundef %0) #24
  %119 = load ptr, ptr %109, align 8, !tbaa !666
  %120 = load ptr, ptr @cfun, align 8, !tbaa !674
  %121 = getelementptr inbounds %struct.function, ptr %120, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !652
  %123 = getelementptr inbounds %struct.control_flow_graph, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !665
  %125 = icmp eq ptr %119, %124
  br i1 %125, label %126, label %48, !llvm.loop !1409

126:                                              ; preds = %108, %117, %37
  %127 = tail call i32 @fputs(ptr noundef nonnull @.str.63, ptr noundef %0) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare void @dump_end(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !1410 !PGOFuncName !1411 {
  %3 = tail call fastcc ptr @gimple_seq_first(ptr noundef %1) #24
  store ptr %3, ptr %0, align 8, !tbaa !724
  %4 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !726
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6, !prof !1412

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !tbaa !742
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9, !prof !1413

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_bb(ptr noundef nonnull %7) #24
  br label %11

11:                                               ; preds = %2, %6, %9
  %12 = phi ptr [ %10, %9 ], [ null, %6 ], [ null, %2 ]
  %13 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !727
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @stmt_starts_bb_p(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1414 !PGOFuncName !1415 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %32, label %4, !prof !1416

4:                                                ; preds = %2
  %5 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %0) #24, !range !684
  %6 = icmp eq i32 %5, 4
  br i1 %6, label %7, label %32, !prof !1417

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %0) #24
  %9 = getelementptr inbounds %struct.tree_decl_common, ptr %8, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 256
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %32, !prof !1418

13:                                               ; preds = %7
  %14 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %0) #24
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 65536
  %17 = icmp ne i64 %16, 0
  %18 = icmp eq ptr %1, null
  %19 = or i1 %18, %17
  br i1 %19, label %32, label %20, !prof !1419

20:                                               ; preds = %13
  %21 = tail call fastcc i32 @gimple_code(ptr noundef nonnull %1) #24, !range !684
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %32, !prof !1420

23:                                               ; preds = %20
  %24 = tail call fastcc ptr @gimple_label_label(ptr noundef nonnull %1) #24
  %25 = getelementptr inbounds %struct.tree_decl_common, ptr %24, i64 0, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 256
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32, !prof !1421

29:                                               ; preds = %23
  %30 = load i64, ptr @cfg_stats.0, align 8, !tbaa !956
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr @cfg_stats.0, align 8, !tbaa !956
  br label %32

32:                                               ; preds = %4, %20, %23, %7, %13, %2, %29
  %33 = phi i8 [ 0, %29 ], [ 0, %2 ], [ 1, %13 ], [ 1, %7 ], [ 1, %23 ], [ 1, %20 ], [ 0, %4 ]
  ret i8 %33
}

; Function Attrs: optsize
declare ptr @gsi_split_seq_before(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_basic_block(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_set_bb(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_has_lhs(ptr noundef %0) unnamed_addr #0 !prof !1422 !PGOFuncName !1423 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %11, !prof !1380

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !695
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7, !prof !1424

7:                                                ; preds = %4
  %8 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %9 = icmp ne ptr %8, null
  %10 = zext i1 %9 to i8
  br label %11

11:                                               ; preds = %4, %7, %1
  %12 = phi i8 [ 1, %1 ], [ 0, %4 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_tmp_var(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_assign_stat(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_location(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !735 !PGOFuncName !1425 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 2
  store i32 %1, ptr %3, align 8, !tbaa !704
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_block(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #11 !prof !735 !PGOFuncName !1426 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  store ptr %1, ptr %3, align 8, !tbaa !704
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_block(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1427 !PGOFuncName !1428 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: optsize
declare void @gimple_set_lhs(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #5 !prof !1429 !PGOFuncName !1430 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1431

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1432
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1422 !PGOFuncName !1434 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #0 !prof !1435 !PGOFuncName !1436 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: optsize
declare ptr @gimple_build_goto(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_goto_expr_edges(ptr noundef %0) unnamed_addr #0 !prof !803 !PGOFuncName !1437 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %4 = tail call zeroext i8 @simple_goto_p(ptr noundef %3) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %19, label %6, !prof !1438

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %3) #24
  %8 = load ptr, ptr @cfun, align 8, !tbaa !674
  %9 = tail call ptr @label_to_block_fn(ptr noundef %8, ptr noundef %7) #24
  %10 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %9, i32 noundef 1) #23
  %11 = tail call fastcc i32 @gimple_location(ptr noundef %3) #24
  %12 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 5
  store i32 %11, ptr %12, align 8, !tbaa !1122
  tail call fastcc void @assign_discriminator(i32 noundef %11, ptr noundef %9) #24
  %13 = load i32, ptr %12, align 8, !tbaa !1122
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15, !prof !1439

15:                                               ; preds = %6
  %16 = tail call fastcc ptr @gimple_block(ptr noundef %3) #24
  %17 = getelementptr inbounds %struct.edge_def, ptr %10, i64 0, i32 4
  store ptr %16, ptr %17, align 8, !tbaa !1123
  br label %18

18:                                               ; preds = %15, %6
  call void @gsi_remove(ptr noundef nonnull %2, i8 noundef zeroext 1) #23
  br label %20

19:                                               ; preds = %1
  tail call void @make_abnormal_goto_edges(ptr noundef %0, i8 noundef zeroext 0) #24
  br label %20

20:                                               ; preds = %19, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_cond_expr_edges(ptr noundef %0) unnamed_addr #0 !prof !1440 !PGOFuncName !1441 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #24
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5, !prof !1442

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 788, ptr noundef nonnull @.str.2) #23
  br label %5

5:                                                ; preds = %1, %4
  %6 = tail call fastcc i32 @gimple_code(ptr noundef %2) #24, !range !684
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %9, label %8, !prof !1443

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 789, ptr noundef nonnull @.str.2) #23
  br label %9

9:                                                ; preds = %5, %8
  %10 = tail call fastcc i32 @gimple_location(ptr noundef %2) #24
  %11 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %2) #24
  %12 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %2) #24
  %13 = load ptr, ptr @cfun, align 8, !tbaa !674
  %14 = tail call ptr @label_to_block_fn(ptr noundef %13, ptr noundef %11) #24
  %15 = load ptr, ptr @cfun, align 8, !tbaa !674
  %16 = tail call ptr @label_to_block_fn(ptr noundef %15, ptr noundef %12) #24
  %17 = tail call ptr @first_stmt(ptr noundef %14) #24
  %18 = tail call ptr @first_stmt(ptr noundef %16) #24
  %19 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %14, i32 noundef 1024) #23
  tail call fastcc void @assign_discriminator(i32 noundef %10, ptr noundef %14) #24
  %20 = tail call fastcc i32 @gimple_location(ptr noundef %17) #24
  %21 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 5
  store i32 %20, ptr %21, align 8, !tbaa !1122
  %22 = icmp eq i32 %20, 0
  br i1 %22, label %26, label %23, !prof !1443

23:                                               ; preds = %9
  %24 = tail call fastcc ptr @gimple_block(ptr noundef %17) #24
  %25 = getelementptr inbounds %struct.edge_def, ptr %19, i64 0, i32 4
  store ptr %24, ptr %25, align 8, !tbaa !1123
  br label %26

26:                                               ; preds = %23, %9
  %27 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %16, i32 noundef 2048) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %36, label %29, !prof !1442

29:                                               ; preds = %26
  tail call fastcc void @assign_discriminator(i32 noundef %10, ptr noundef %16) #24
  %30 = tail call fastcc i32 @gimple_location(ptr noundef %18) #24
  %31 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 5
  store i32 %30, ptr %31, align 8, !tbaa !1122
  %32 = icmp eq i32 %30, 0
  br i1 %32, label %36, label %33, !prof !1443

33:                                               ; preds = %29
  %34 = tail call fastcc ptr @gimple_block(ptr noundef %18) #24
  %35 = getelementptr inbounds %struct.edge_def, ptr %27, i64 0, i32 4
  store ptr %34, ptr %35, align 8, !tbaa !1123
  br label %36

36:                                               ; preds = %29, %33, %26
  tail call fastcc void @gimple_cond_set_true_label(ptr noundef %2, ptr noundef null) #24
  tail call fastcc void @gimple_cond_set_false_label(ptr noundef %2, ptr noundef null) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_gimple_switch_edges(ptr noundef %0) unnamed_addr #0 !prof !1336 !PGOFuncName !1444 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #24
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %2) #24
  %4 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %2) #24
  %5 = zext i32 %4 to i64
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %18, label %7, !prof !1338

7:                                                ; preds = %1, %7
  %8 = phi i64 [ %16, %7 ], [ 0, %1 ]
  %9 = trunc i64 %8 to i32
  %10 = tail call fastcc ptr @gimple_switch_label(ptr noundef %2, i32 noundef %9) #24
  %11 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 1, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !704
  %13 = load ptr, ptr @cfun, align 8, !tbaa !674
  %14 = tail call ptr @label_to_block_fn(ptr noundef %13, ptr noundef %12) #24
  %15 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %14, i32 noundef 0) #23
  tail call fastcc void @assign_discriminator(i32 noundef %3, ptr noundef %14) #24
  %16 = add nuw nsw i64 %8, 1
  %17 = icmp eq i64 %16, %5
  br i1 %17, label %18, label %7, !prof !1445, !llvm.loop !1446

18:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: optsize
declare void @make_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @make_eh_dispatch_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_gimple_asm_edges(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1447 {
  %2 = tail call ptr @last_stmt(ptr noundef %0) #24
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %2) #24
  %4 = tail call fastcc i32 @gimple_asm_nlabels(ptr noundef %2) #24, !range !684
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %14, %6 ], [ 0, %1 ]
  %8 = tail call fastcc ptr @gimple_asm_label_op(ptr noundef %2, i32 noundef %7) #24
  %9 = getelementptr inbounds %struct.tree_list, ptr %8, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !704
  %11 = load ptr, ptr @cfun, align 8, !tbaa !674
  %12 = tail call ptr @label_to_block_fn(ptr noundef %11, ptr noundef %10) #24
  %13 = tail call ptr @make_edge(ptr noundef %0, ptr noundef %12, i32 noundef 0) #23
  tail call fastcc void @assign_discriminator(i32 noundef %3, ptr noundef %12) #24
  %14 = add nuw nsw i32 %7, 1
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %16, label %6, !llvm.loop !1448

16:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare ptr @new_omp_region(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @single_succ(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1266 !PGOFuncName !1449 {
  %2 = tail call fastcc ptr @single_succ_edge(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.edge_def, ptr %2, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !922
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @assign_discriminator(i32 noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1450 !PGOFuncName !1451 {
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %24, label %4, !prof !1452

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %1, i64 0, i32 12
  %6 = load i32, ptr %5, align 4, !tbaa !1453
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %24, !prof !1454

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @first_non_label_stmt(ptr noundef nonnull %1) #24
  %10 = tail call ptr @last_stmt(ptr noundef nonnull %1) #24
  %11 = icmp eq ptr %9, null
  br i1 %11, label %16, label %12, !prof !1455

12:                                               ; preds = %8
  %13 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %9) #24
  %14 = tail call fastcc zeroext i8 @same_line_p(i32 noundef %0, i32 noundef %13) #24, !range !695
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22, !prof !1456

16:                                               ; preds = %12, %8
  %17 = icmp eq ptr %10, null
  br i1 %17, label %24, label %18, !prof !1457

18:                                               ; preds = %16
  %19 = tail call fastcc i32 @gimple_location(ptr noundef nonnull %10) #24
  %20 = tail call fastcc zeroext i8 @same_line_p(i32 noundef %0, i32 noundef %19) #24, !range !695
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !1458

22:                                               ; preds = %18, %12
  %23 = tail call fastcc i32 @next_discriminator_for_locus(i32 noundef %0) #24
  store i32 %23, ptr %5, align 4, !tbaa !1453
  br label %24

24:                                               ; preds = %16, %18, %22, %2, %4
  ret void
}

; Function Attrs: optsize
declare void @free_omp_regions() local_unnamed_addr #1

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @first_non_label_stmt(ptr noundef %0) unnamed_addr #4 !prof !1459 !PGOFuncName !1460 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %12, !prof !1256

5:                                                ; preds = %1, %9
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #24, !range !684
  %8 = icmp eq i32 %7, 4
  br i1 %8, label %9, label %12, !prof !1461

9:                                                ; preds = %5
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %10 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %5, label %12, !prof !1462, !llvm.loop !1463

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ null, %1 ], [ null, %9 ], [ %6, %5 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @same_line_p(i32 noundef %0, i32 noundef %1) unnamed_addr #0 !prof !1464 !PGOFuncName !1465 {
  %3 = alloca %struct.expanded_location, align 8
  %4 = alloca %struct.expanded_location, align 8
  %5 = icmp eq i32 %0, %1
  br i1 %5, label %24, label %6, !prof !1466

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %3, i32 noundef %0) #23
  %7 = load ptr, ptr %3, align 8, !tbaa.struct !1467
  %8 = getelementptr inbounds i8, ptr %3, i64 8
  %9 = load i32, ptr %8, align 8, !tbaa.struct !1468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %4, i32 noundef %1) #23
  %10 = load ptr, ptr %4, align 8, !tbaa.struct !1467
  %11 = getelementptr inbounds i8, ptr %4, i64 8
  %12 = load i32, ptr %11, align 8, !tbaa.struct !1468
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %24, !prof !1469

14:                                               ; preds = %6
  %15 = icmp eq ptr %7, %10
  br i1 %15, label %24, label %16, !prof !1470

16:                                               ; preds = %14
  %17 = icmp ne ptr %7, null
  %18 = icmp ne ptr %10, null
  %19 = select i1 %17, i1 %18, i1 false
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) %10) #24
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i8
  br label %24

24:                                               ; preds = %16, %20, %14, %6, %2
  %25 = phi i8 [ 1, %2 ], [ 0, %6 ], [ 1, %14 ], [ 0, %16 ], [ %23, %20 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @next_discriminator_for_locus(i32 noundef %0) unnamed_addr #0 !prof !1471 !PGOFuncName !1472 {
  %2 = alloca %struct.locus_discrim_map, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #25
  store i32 %0, ptr %2, align 4, !tbaa !1387
  %3 = getelementptr inbounds %struct.locus_discrim_map, ptr %2, i64 0, i32 1
  store i32 0, ptr %3, align 4, !tbaa !1473
  %4 = load ptr, ptr @discriminator_per_locus, align 8, !tbaa !674
  %5 = call ptr @htab_find_slot_with_hash(ptr noundef %4, ptr noundef nonnull %2, i32 noundef %0, i32 noundef 1) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8, !prof !1474

7:                                                ; preds = %1
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = load ptr, ptr %5, align 8, !tbaa !674
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !1475

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.locus_discrim_map, ptr %9, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !1473
  %14 = add nsw i32 %13, 1
  br label %23

15:                                               ; preds = %8
  %16 = call ptr @xmalloc(i64 noundef 8) #23
  store ptr %16, ptr %5, align 8, !tbaa !674
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %20, !prof !1476

18:                                               ; preds = %15
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 728, ptr noundef nonnull @.str.2) #23
  %19 = load ptr, ptr %5, align 8, !tbaa !674
  br label %20

20:                                               ; preds = %15, %18
  %21 = phi ptr [ %16, %15 ], [ %19, %18 ]
  store i32 %0, ptr %21, align 4, !tbaa !1387
  %22 = getelementptr inbounds %struct.locus_discrim_map, ptr %21, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !1473
  br label %23

23:                                               ; preds = %11, %20
  %24 = phi i32 [ 1, %20 ], [ %14, %11 ]
  %25 = phi ptr [ %21, %20 ], [ %9, %11 ]
  %26 = getelementptr inbounds %struct.locus_discrim_map, ptr %25, i64 0, i32 1
  store i32 %24, ptr %26, align 4, !tbaa !1473
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #25
  ret i32 %24
}

; Function Attrs: optsize
declare void @expand_location(ptr dead_on_unwind writable sret(%struct.expanded_location) align 8, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @get_lineno(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !735 !PGOFuncName !1477 {
  %2 = alloca %struct.expanded_location, align 8
  %3 = tail call fastcc i32 @gimple_location(ptr noundef %0) #24
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  call void @expand_location(ptr dead_on_unwind nonnull writable sret(%struct.expanded_location) align 8 %2, i32 noundef %3) #23
  %6 = getelementptr inbounds %struct.expanded_location, ptr %2, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !1478
  br label %8

8:                                                ; preds = %1, %5
  %9 = phi i32 [ %7, %5 ], [ -1, %1 ]
  ret i32 %9
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1480 !PGOFuncName !1481 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1029
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1482

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1483

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1484
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !1486 !PGOFuncName !1487 {
  %4 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !695
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6, !prof !1488

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %8 = icmp ugt i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1489

9:                                                ; preds = %6, %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 1665, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %6, %9
  %11 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #24
  %12 = zext i32 %1 to i64
  %13 = getelementptr inbounds ptr, ptr %11, i64 %12
  store ptr %2, ptr %13, align 8, !tbaa !674
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1490 !PGOFuncName !1491 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #0 !prof !1492 !PGOFuncName !1493 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #24
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !958
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1494

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 1622, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1492 !PGOFuncName !1495 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #24
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #16 !prof !1492 !PGOFuncName !1496 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !680
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_eh_landing_pad_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !681 !PGOFuncName !1497 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !807

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1498
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !807

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_eh_landing_pad_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !674
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !674
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @ehr_next(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !735 !PGOFuncName !1500 {
  %2 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1501
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %17

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.eh_region_d, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1502
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5, %13
  %10 = phi ptr [ %11, %13 ], [ %0, %5 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !1503
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.eh_region_d, ptr %11, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !1502
  %16 = icmp eq ptr %15, null
  br i1 %16, label %9, label %17, !llvm.loop !1504

17:                                               ; preds = %13, %9, %1, %5
  %18 = phi ptr [ %3, %1 ], [ %7, %5 ], [ %15, %13 ], [ null, %9 ]
  ret ptr %18
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_set_num_ops(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !824 !PGOFuncName !1505 {
  %3 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  store i32 %1, ptr %3, align 4, !tbaa !704
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @link_use_stmts_after(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !885 !PGOFuncName !1506 {
  %3 = alloca %struct.ssa_operand_iterator_d, align 8
  %4 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %0) #24
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #25
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %6) #23
  %8 = icmp eq i8 %7, 0
  %9 = tail call fastcc i32 @gimple_code(ptr noundef %5) #24, !range !684
  %10 = icmp eq i32 %9, 16
  br i1 %10, label %11, label %28, !prof !862

11:                                               ; preds = %2
  %12 = select i1 %8, i32 4, i32 1
  %13 = call fastcc ptr @op_iter_init_phiuse(ptr noundef nonnull %3, ptr noundef %5, i32 noundef %12) #24
  %14 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %11, %23
  %17 = phi ptr [ %25, %23 ], [ %13, %11 ]
  %18 = phi ptr [ %24, %23 ], [ %0, %11 ]
  %19 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %17) #24
  %20 = icmp eq ptr %19, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = tail call fastcc ptr @move_use_after_head(ptr noundef %17, ptr noundef %0, ptr noundef %18) #24
  br label %23

23:                                               ; preds = %16, %21
  %24 = phi ptr [ %22, %21 ], [ %18, %16 ]
  %25 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %26 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %16, label %53, !llvm.loop !1507

28:                                               ; preds = %2
  br i1 %8, label %45, label %29, !prof !862

29:                                               ; preds = %28
  %30 = call fastcc ptr @op_iter_init_use(ptr noundef nonnull %3, ptr noundef %5, i32 noundef 1) #24
  %31 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %53, !prof !861

33:                                               ; preds = %29, %40
  %34 = phi ptr [ %42, %40 ], [ %30, %29 ]
  %35 = phi ptr [ %41, %40 ], [ %0, %29 ]
  %36 = tail call fastcc ptr @get_use_from_ptr(ptr noundef %34) #24
  %37 = icmp eq ptr %36, %6
  br i1 %37, label %38, label %40, !prof !1508

38:                                               ; preds = %33
  %39 = tail call fastcc ptr @move_use_after_head(ptr noundef %34, ptr noundef %0, ptr noundef %35) #24
  br label %40

40:                                               ; preds = %33, %38
  %41 = phi ptr [ %39, %38 ], [ %35, %33 ]
  %42 = call fastcc ptr @op_iter_next_use(ptr noundef nonnull %3) #24
  %43 = call fastcc zeroext i8 @op_iter_done(ptr noundef nonnull %3) #24
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %33, label %53, !prof !1509, !llvm.loop !1510

45:                                               ; preds = %28
  %46 = tail call fastcc ptr @gimple_vuse_op(ptr noundef %5) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  %49 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %46) #24
  %50 = icmp eq ptr %49, %6
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call fastcc ptr @move_use_after_head(ptr noundef nonnull %46, ptr noundef nonnull %0, ptr noundef nonnull %0) #24
  br label %53

53:                                               ; preds = %40, %23, %29, %11, %48, %51, %45
  %54 = phi ptr [ %52, %51 ], [ %0, %48 ], [ %0, %45 ], [ %0, %11 ], [ %0, %29 ], [ %24, %23 ], [ %41, %40 ]
  %55 = getelementptr inbounds %struct.immediate_use_iterator_d, ptr %1, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !904
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58, !prof !1511

58:                                               ; preds = %53
  tail call fastcc void @delink_imm_use(ptr noundef nonnull %55) #24
  br label %59

59:                                               ; preds = %58, %53
  tail call fastcc void @link_imm_use_to_list(ptr noundef nonnull %55, ptr noundef %54) #24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_phiuse(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1512 {
  %4 = tail call fastcc ptr @gimple_phi_result(ptr noundef %1) #24
  tail call fastcc void @clear_and_done_ssa_iter(ptr noundef %0) #24
  store i8 0, ptr %0, align 8, !tbaa !1513
  %5 = and i32 %2, 5
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 918, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %3, %7
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %4) #23
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, i32 4, i32 1
  %12 = and i32 %11, %2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1513
  br label %21

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  store ptr %1, ptr %16, align 8, !tbaa !1515
  %17 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %1) #24
  %18 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  store i32 %17, ptr %18, align 4, !tbaa !1516
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %19, align 4, !tbaa !1517
  %20 = tail call fastcc ptr @op_iter_next_use(ptr noundef nonnull %0) #24
  br label %21

21:                                               ; preds = %15, %14
  %22 = phi ptr [ null, %14 ], [ %20, %15 ]
  ret ptr %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @op_iter_done(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1518 !PGOFuncName !1519 {
  %2 = load i8, ptr %0, align 8, !tbaa !1513
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef ptr @move_use_after_head(ptr noundef %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #20 !prof !885 !PGOFuncName !1520 {
  %4 = icmp eq ptr %0, %1
  br i1 %4, label %10, label %5, !prof !1511

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !853
  %8 = icmp eq ptr %7, %0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5
  tail call fastcc void @delink_imm_use(ptr noundef %0) #24
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %2) #24
  br label %10

10:                                               ; preds = %5, %9, %3
  %11 = phi ptr [ %0, %9 ], [ %2, %3 ], [ %0, %5 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_next_use(ptr nocapture noundef %0) unnamed_addr #0 !prof !1521 !PGOFuncName !1522 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1523
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5, !prof !1524

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.use_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %3, align 8, !tbaa !1525
  store ptr %7, ptr %2, align 8, !tbaa !1523
  br label %20

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  %10 = load i32, ptr %9, align 8, !tbaa !1527
  %11 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 5
  %12 = load i32, ptr %11, align 4, !tbaa !1516
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %19, !prof !862

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !1515
  %17 = add nsw i32 %10, 1
  store i32 %17, ptr %9, align 8, !tbaa !1527
  %18 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %16, i32 noundef %10) #24
  br label %20

19:                                               ; preds = %8
  store i8 1, ptr %0, align 8, !tbaa !1513
  br label %20

20:                                               ; preds = %19, %14, %5
  %21 = phi ptr [ %6, %5 ], [ %18, %14 ], [ null, %19 ]
  ret ptr %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_use(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !885 !PGOFuncName !1528 {
  %4 = and i32 %2, 11
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6, !prof !1529

6:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 771, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %3, %6
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef %2) #24
  %8 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 2, ptr %8, align 4, !tbaa !1517
  %9 = tail call fastcc ptr @op_iter_next_use(ptr noundef %0) #24
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_vuse_op(ptr noundef readonly %0) unnamed_addr #9 !prof !735 !PGOFuncName !1530 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  %7 = icmp eq ptr %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1531
  %11 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %12 = icmp eq ptr %10, %11
  %13 = getelementptr inbounds %struct.use_optype_d, ptr %6, i64 0, i32 1
  %14 = select i1 %12, ptr %13, ptr null
  br label %15

15:                                               ; preds = %8, %4, %1
  %16 = phi ptr [ null, %1 ], [ null, %4 ], [ %14, %8 ]
  ret ptr %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @delink_imm_use(ptr nocapture noundef %0) unnamed_addr #20 !prof !885 !PGOFuncName !1532 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1533
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !862

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !853
  %7 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !853
  store ptr %2, ptr %6, align 8, !tbaa !1533
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %8

8:                                                ; preds = %1, %4
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef %1) unnamed_addr #20 !prof !885 !PGOFuncName !1534 {
  store ptr %1, ptr %0, align 8, !tbaa !1533
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !853
  %5 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !853
  store ptr %0, ptr %4, align 8, !tbaa !1533
  store ptr %0, ptr %3, align 8, !tbaa !853
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1535 !PGOFuncName !1536 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @clear_and_done_ssa_iter(ptr nocapture noundef writeonly %0) unnamed_addr #11 !prof !735 !PGOFuncName !1537 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i64 36, i1 false)
  store i8 1, ptr %0, align 8, !tbaa !1513
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @op_iter_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 !prof !1538 !PGOFuncName !1539 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  %6 = and i32 %2, 10
  %7 = icmp eq i32 %6, 8
  br i1 %7, label %14, label %8, !prof !1540

8:                                                ; preds = %3
  %9 = and i32 %2, 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11, !prof !1541

11:                                               ; preds = %8
  %12 = and i32 %2, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3, %11
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 747, ptr noundef nonnull @.str.2) #23
  br label %15

15:                                               ; preds = %8, %11, %14
  %16 = icmp eq i32 %6, 0
  br i1 %16, label %20, label %17, !prof !1542

17:                                               ; preds = %15
  %18 = tail call fastcc ptr @gimple_def_ops(ptr noundef %1) #24
  %19 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !1543
  br i1 %5, label %22, label %29, !prof !1542

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  store ptr null, ptr %21, align 8, !tbaa !1543
  br label %29

22:                                               ; preds = %17
  %23 = icmp eq ptr %18, null
  br i1 %23, label %29, label %24, !prof !1544

24:                                               ; preds = %22
  %25 = tail call fastcc ptr @gimple_vdef(ptr noundef %1) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %18, align 8, !tbaa !1545
  store ptr %28, ptr %19, align 8, !tbaa !1543
  br label %29

29:                                               ; preds = %20, %27, %24, %22, %17
  %30 = and i32 %2, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34, !prof !1547

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr null, ptr %33, align 8, !tbaa !1523
  br label %46

34:                                               ; preds = %29
  %35 = tail call fastcc ptr @gimple_use_ops(ptr noundef %1) #24
  %36 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 3
  store ptr %35, ptr %36, align 8, !tbaa !1523
  %37 = and i32 %2, 4
  %38 = icmp ne i32 %37, 0
  %39 = icmp eq ptr %35, null
  %40 = select i1 %38, i1 true, i1 %39
  br i1 %40, label %46, label %41, !prof !1548

41:                                               ; preds = %34
  %42 = tail call fastcc ptr @gimple_vuse(ptr noundef %1) #24
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44, !prof !1511

44:                                               ; preds = %41
  %45 = load ptr, ptr %35, align 8, !tbaa !1525
  store ptr %45, ptr %36, align 8, !tbaa !1523
  br label %46

46:                                               ; preds = %32, %44, %41, %34
  store i8 0, ptr %0, align 8, !tbaa !1513
  %47 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %47, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_def_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1549 !PGOFuncName !1550 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !1309

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vdef(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1551 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_use_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !885 !PGOFuncName !1552 {
  %2 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !862

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_vuse(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !885 !PGOFuncName !1553 {
  %2 = tail call fastcc zeroext i8 @gimple_has_mem_ops(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4, !prof !862

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_statement_with_memory_ops_base, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  br label %7

7:                                                ; preds = %1, %4
  %8 = phi ptr [ %6, %4 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !885 !PGOFuncName !1554 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = add nsw i32 %2, -6
  %4 = icmp ult i32 %3, 4
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 !prof !877 !PGOFuncName !1555 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !704
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1556

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 3103, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: optsize
declare void @gimple_set_modified(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare void @update_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_int_heap_alloc(i32 noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1557 {
  %2 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef %0, i64 noundef 8, i64 noundef 4) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @number_of_loops() unnamed_addr #9 !prof !735 !PGOFuncName !1558 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !874
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = getelementptr inbounds %struct.loops, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1141
  %8 = tail call fastcc i32 @VEC_loop_p_base_length(ptr noundef %7) #24
  br label %9

9:                                                ; preds = %0, %5
  %10 = phi i32 [ %8, %5 ], [ 0, %0 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_int_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #2 !prof !735 !PGOFuncName !1559 {
  %3 = load i32, ptr %0, align 4, !tbaa !1560
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1560
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !680
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_loop_p_base_length(ptr noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1562 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1563
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_int_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !735 !PGOFuncName !1565 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1560
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_int_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !680
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !680
  ret i32 %14
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_int_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !735 !PGOFuncName !1566 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #24
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare ptr @find_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @find_case_label_for_value(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1567 {
  %3 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %0) #24
  %4 = tail call fastcc ptr @gimple_switch_default_label(ptr noundef %0) #24
  %5 = icmp ugt i32 %3, 1
  br i1 %5, label %6, label %34

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  br label %8

8:                                                ; preds = %6, %31
  %9 = phi i64 [ %20, %31 ], [ 0, %6 ]
  %10 = phi i64 [ %19, %31 ], [ %7, %6 ]
  %11 = add i64 %9, %10
  %12 = lshr i64 %11, 1
  %13 = trunc i64 %12 to i32
  %14 = tail call fastcc ptr @gimple_switch_label(ptr noundef %0, i32 noundef %13) #24
  %15 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !704
  %17 = tail call i32 @tree_int_cst_compare(ptr noundef %16, ptr noundef %1) #23
  %18 = icmp sgt i32 %17, 0
  %19 = select i1 %18, i64 %12, i64 %10
  %20 = select i1 %18, i64 %9, i64 %12
  %21 = getelementptr inbounds %struct.tree_exp, ptr %14, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !704
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = icmp eq i32 %17, 0
  br i1 %25, label %34, label %31

26:                                               ; preds = %8
  %27 = icmp slt i32 %17, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %26
  %29 = tail call i32 @tree_int_cst_compare(ptr noundef nonnull %22, ptr noundef %1) #23
  %30 = icmp sgt i32 %29, -1
  br i1 %30, label %34, label %31

31:                                               ; preds = %24, %28, %26
  %32 = sub i64 %19, %20
  %33 = icmp ugt i64 %32, 1
  br i1 %33, label %8, label %34, !llvm.loop !1568

34:                                               ; preds = %31, %24, %28, %2
  %35 = phi ptr [ %4, %2 ], [ %14, %28 ], [ %14, %24 ], [ %4, %31 ]
  ret ptr %35
}

; Function Attrs: optsize
declare i32 @tree_int_cst_compare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_last(ptr noundef readonly %0) unnamed_addr #5 !prof !983 !PGOFuncName !1569 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3, !prof !1570

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.gimple_seq_d, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !1571
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_bind_body(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !677 !PGOFuncName !1572 {
  %2 = getelementptr inbounds %struct.gimple_statement_bind, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_eval(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1573 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_try_cleanup(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1574 {
  %2 = getelementptr inbounds %struct.gimple_statement_try, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_eh_filter_failure(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1575 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_filter, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_catch_handler(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1576 {
  %2 = getelementptr inbounds %struct.gimple_statement_catch, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @verify_types_in_gimple_stmt(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1577 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %51 [
    i8 6, label %4
    i8 4, label %6
    i8 8, label %12
    i8 1, label %14
    i8 3, label %43
    i8 5, label %45
    i8 9, label %47
    i8 7, label %52
    i8 16, label %49
    i8 18, label %52
    i8 33, label %52
    i8 14, label %52
    i8 15, label %52
    i8 13, label %52
    i8 26, label %52
    i8 27, label %52
    i8 23, label %52
    i8 30, label %52
    i8 31, label %52
    i8 32, label %52
    i8 29, label %52
    i8 24, label %52
    i8 25, label %52
    i8 22, label %52
    i8 28, label %52
    i8 19, label %52
    i8 20, label %52
    i8 21, label %52
    i8 2, label %52
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @verify_gimple_assign(ptr noundef %0) #24
  br label %52

6:                                                ; preds = %1
  %7 = tail call fastcc ptr @gimple_label_label(ptr noundef %0) #24
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 30
  %11 = zext i1 %10 to i8
  br label %52

12:                                               ; preds = %1
  %13 = tail call fastcc zeroext i8 @verify_gimple_call(ptr noundef %0) #24, !range !695
  br label %52

14:                                               ; preds = %1
  %15 = tail call fastcc i32 @gimple_cond_code(ptr noundef %0) #24, !range !686
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !680
  %19 = icmp eq i32 %18, 5
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.66) #23
  br label %52

21:                                               ; preds = %14
  %22 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %0) #24
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = tail call fastcc ptr @gimple_cond_true_label(ptr noundef %0) #24
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp eq i64 %27, 30
  br i1 %28, label %29, label %37

29:                                               ; preds = %24, %21
  %30 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %0) #24
  %31 = icmp eq ptr %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = tail call fastcc ptr @gimple_cond_false_label(ptr noundef %0) #24
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 30
  br i1 %36, label %38, label %37

37:                                               ; preds = %32, %24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.67) #23
  br label %52

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !674
  %40 = tail call fastcc ptr @gimple_cond_lhs(ptr noundef %0) #24
  %41 = tail call fastcc ptr @gimple_cond_rhs(ptr noundef %0) #24
  %42 = tail call fastcc zeroext i8 @verify_gimple_comparison(ptr noundef %39, ptr noundef %40, ptr noundef %41) #24, !range !695
  br label %52

43:                                               ; preds = %1
  %44 = tail call fastcc zeroext i8 @verify_gimple_goto(ptr noundef %0) #24, !range !695
  br label %52

45:                                               ; preds = %1
  %46 = tail call fastcc zeroext i8 @verify_gimple_switch(ptr noundef %0) #24, !range !695
  br label %52

47:                                               ; preds = %1
  %48 = tail call fastcc zeroext i8 @verify_gimple_return(ptr noundef %0) #24, !range !695
  br label %52

49:                                               ; preds = %1
  %50 = tail call fastcc zeroext i8 @verify_gimple_phi(ptr noundef %0) #24
  br label %52

51:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3828, ptr noundef nonnull @.str.2) #23
  br label %52

52:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %51, %49, %47, %45, %43, %38, %37, %20, %12, %6, %4
  %53 = phi i8 [ 0, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ 1, %20 ], [ %42, %38 ], [ 1, %37 ], [ %13, %12 ], [ %11, %6 ], [ %5, %4 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ], [ 0, %1 ]
  ret i8 %53
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_assign(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1578 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) #24, !range !684
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %10 [
    i8 3, label %4
    i8 2, label %6
    i8 1, label %8
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc zeroext i8 @verify_gimple_assign_single(ptr noundef %0) #24
  br label %11

6:                                                ; preds = %1
  %7 = tail call fastcc zeroext i8 @verify_gimple_assign_unary(ptr noundef %0) #24, !range !695
  br label %11

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i8 @verify_gimple_assign_binary(ptr noundef %0) #24, !range !695
  br label %11

10:                                               ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3616, ptr noundef nonnull @.str.2) #23
  br label %11

11:                                               ; preds = %10, %8, %6, %4
  %12 = phi i8 [ 0, %10 ], [ %9, %8 ], [ %7, %6 ], [ %5, %4 ]
  ret i8 %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_call(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1579 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 50
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %2) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.100) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %2) #23
  br label %120

10:                                               ; preds = %6, %1
  %11 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !704
  %13 = load i64, ptr %12, align 8
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %21 [
    i16 10, label %15
    i16 12, label %15
  ]

15:                                               ; preds = %10, %10
  %16 = getelementptr inbounds %struct.tree_common, ptr %12, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !704
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 65534
  %20 = icmp eq i64 %19, 20
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %10
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.101) #23
  br label %120

22:                                               ; preds = %15
  %23 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %24 = icmp eq ptr %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %27 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef %26) #23
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %31 = tail call fastcc zeroext i8 @verify_types_in_gimple_reference(ptr noundef %30, i8 noundef zeroext 1) #24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %25
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.102) #23
  br label %120

34:                                               ; preds = %29, %22
  %35 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %36 = icmp eq ptr %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = tail call fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) #24, !range !695
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.103) #23
  br label %120

41:                                               ; preds = %37, %34
  %42 = load ptr, ptr %11, align 8, !tbaa !704
  %43 = getelementptr inbounds %struct.tree_common, ptr %42, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !704
  %45 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %46 = icmp eq ptr %45, null
  br i1 %46, label %78, label %47

47:                                               ; preds = %41
  %48 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %49 = getelementptr inbounds %struct.tree_common, ptr %48, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !704
  %51 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !704
  %53 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %50, ptr noundef %52) #23
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %57 = getelementptr inbounds %struct.tree_common, ptr %56, i64 0, i32 2
  %58 = load ptr, ptr %57, align 8, !tbaa !704
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 10
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %64 = getelementptr inbounds %struct.tree_common, ptr %63, i64 0, i32 2
  %65 = load ptr, ptr %64, align 8, !tbaa !704
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 65535
  %68 = icmp eq i64 %67, 12
  br i1 %68, label %69, label %73

69:                                               ; preds = %62, %55
  %70 = load ptr, ptr %51, align 8, !tbaa !704
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %73 [
    i16 10, label %78
    i16 12, label %78
  ]

73:                                               ; preds = %69, %62
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.104) #23
  %74 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #24
  %75 = getelementptr inbounds %struct.tree_common, ptr %74, i64 0, i32 2
  %76 = load ptr, ptr %75, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %76) #23
  %77 = load ptr, ptr %51, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %77) #23
  br label %120

78:                                               ; preds = %69, %69, %47, %41
  %79 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #24
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #24
  %83 = tail call zeroext i8 @is_gimple_val(ptr noundef %82) #23
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.105) #23
  %86 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #24
  tail call void @debug_generic_stmt(ptr noundef %86) #23
  br label %120

87:                                               ; preds = %81, %78
  %88 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #24
  %89 = icmp eq ptr %88, null
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = load i64, ptr %2, align 8
  %92 = and i64 %91, 65535
  %93 = icmp eq i64 %92, 121
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %96 = load ptr, ptr %95, align 8, !tbaa !704
  %97 = load i64, ptr %96, align 8
  %98 = and i64 %97, 65535
  %99 = icmp eq i64 %98, 29
  br i1 %99, label %101, label %100

100:                                              ; preds = %94, %90
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.106) #23
  br label %120

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.tree_function_decl, ptr %96, i64 0, i32 5
  %103 = load i32, ptr %102, align 8
  %104 = and i32 %103, 4194304
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.107) #23
  br label %120

107:                                              ; preds = %101, %87
  %108 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #24
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %120, label %110

110:                                              ; preds = %107, %116
  %111 = phi i32 [ %117, %116 ], [ 0, %107 ]
  %112 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %111) #24
  %113 = tail call zeroext i8 @is_gimple_operand(ptr noundef %112) #23
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %110
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.108) #23
  tail call void @debug_generic_expr(ptr noundef %112) #23
  br label %116

116:                                              ; preds = %115, %110
  %117 = add nuw i32 %111, 1
  %118 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #24
  %119 = icmp ult i32 %117, %118
  br i1 %119, label %110, label %120, !llvm.loop !1580

120:                                              ; preds = %116, %107, %106, %100, %85, %73, %40, %33, %21, %9
  %121 = phi i8 [ 1, %21 ], [ 1, %33 ], [ 1, %40 ], [ 1, %100 ], [ 1, %106 ], [ 1, %85 ], [ 1, %73 ], [ 1, %9 ], [ 0, %107 ], [ 0, %116 ]
  ret i8 %121
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_comparison(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1581 {
  %4 = getelementptr inbounds %struct.tree_common, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !704
  %8 = tail call zeroext i8 @is_gimple_val(ptr noundef %1) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %2) #23
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.109) #23
  br label %59

14:                                               ; preds = %10
  %15 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %7) #23
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %52

17:                                               ; preds = %14
  %18 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %7, ptr noundef %5) #23
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %17
  %21 = load i64, ptr %5, align 8
  %22 = trunc i64 %21 to i16
  switch i16 %22, label %58 [
    i16 10, label %23
    i16 12, label %23
  ]

23:                                               ; preds = %20, %20
  %24 = load i64, ptr %7, align 8
  %25 = trunc i64 %24 to i16
  switch i16 %25, label %58 [
    i16 10, label %26
    i16 12, label %26
  ]

26:                                               ; preds = %23, %23
  %27 = and i64 %21, 65535
  %28 = icmp eq i64 %27, 14
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = tail call i32 @vector_type_mode(ptr noundef nonnull %5) #23
  %31 = load i64, ptr %7, align 8
  br label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %34 = load i32, ptr %33, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 255
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i64 [ %31, %29 ], [ %24, %32 ]
  %39 = phi i32 [ %30, %29 ], [ %36, %32 ]
  %40 = and i64 %38, 65535
  %41 = icmp eq i64 %40, 14
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = tail call i32 @vector_type_mode(ptr noundef nonnull %7) #23
  br label %49

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 6
  %46 = load i32, ptr %45, align 4
  %47 = lshr i32 %46, 16
  %48 = and i32 %47, 255
  br label %49

49:                                               ; preds = %44, %42
  %50 = phi i32 [ %43, %42 ], [ %48, %44 ]
  %51 = icmp eq i32 %39, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %49, %17, %14
  %53 = load i64, ptr %0, align 8
  %54 = trunc i64 %53 to i32
  %55 = and i32 %54, 65535
  %56 = add nsw i32 %55, -6
  %57 = icmp ult i32 %56, 3
  br i1 %57, label %59, label %58

58:                                               ; preds = %52, %23, %20, %49
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.110) #23
  tail call void @debug_generic_expr(ptr noundef %0) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef %7) #23
  br label %59

59:                                               ; preds = %52, %58, %13
  %60 = phi i8 [ 1, %58 ], [ 1, %13 ], [ 0, %52 ]
  ret i8 %60
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_goto(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1582 {
  %2 = tail call fastcc ptr @gimple_goto_dest(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 30
  br i1 %5, label %15, label %6

6:                                                ; preds = %1
  %7 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %2) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !704
  %12 = load i64, ptr %11, align 8
  %13 = trunc i64 %12 to i16
  switch i16 %13, label %14 [
    i16 10, label %15
    i16 12, label %15
  ]

14:                                               ; preds = %9, %6
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.111) #23
  br label %15

15:                                               ; preds = %1, %9, %9, %14
  %16 = phi i8 [ 1, %14 ], [ 0, %9 ], [ 0, %9 ], [ 0, %1 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_switch(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1583 {
  %2 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #24
  %3 = tail call zeroext i8 @is_gimple_val(ptr noundef %2) #23
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.112) #23
  %6 = tail call fastcc ptr @gimple_switch_index(ptr noundef %0) #24
  tail call void @debug_generic_stmt(ptr noundef %6) #23
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i8 [ 1, %5 ], [ 0, %1 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_return(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1584 {
  %2 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #24
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = getelementptr inbounds %struct.function, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !960
  %6 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !704
  %8 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !704
  %10 = icmp eq ptr %2, null
  br i1 %10, label %40, label %11

11:                                               ; preds = %1
  %12 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %2) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i64, ptr %2, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 36
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.113) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %2) #23
  br label %40

19:                                               ; preds = %14, %11
  %20 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !704
  %22 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %9, ptr noundef %21) #23
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load i64, ptr %2, align 8
  %26 = and i64 %25, 65535
  %27 = icmp eq i64 %26, 36
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load ptr, ptr %20, align 8, !tbaa !704
  %30 = load i64, ptr %29, align 8
  %31 = and i64 %30, 65535
  %32 = icmp eq i64 %31, 12
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !704
  %36 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %9, ptr noundef %35) #23
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28, %24
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.114) #23
  tail call void @debug_generic_stmt(ptr noundef %9) #23
  %39 = load ptr, ptr %20, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %39) #23
  br label %40

40:                                               ; preds = %19, %33, %1, %38, %18
  %41 = phi i8 [ 1, %38 ], [ 1, %18 ], [ 0, %1 ], [ 0, %33 ], [ 0, %19 ]
  ret i8 %41
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_phi(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1585 {
  %2 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !704
  %5 = load i64, ptr %2, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #24
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %43, label %12

11:                                               ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.115) #23
  br label %43

12:                                               ; preds = %8, %38
  %13 = phi i64 [ %39, %38 ], [ 0, %8 ]
  %14 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %13) #24
  %15 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #24
  %16 = tail call zeroext i8 @is_gimple_reg(ptr noundef %15) #23
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call zeroext i8 @is_gimple_val(ptr noundef %14) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %18, %12
  %22 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #24
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %14) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %18
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.116) #23
  tail call void @debug_generic_stmt(ptr noundef %14) #23
  br label %43

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !704
  %32 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %4, ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %36 = trunc i64 %13 to i32
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.117, i32 noundef %36) #23
  tail call void @debug_generic_stmt(ptr noundef %4) #23
  %37 = load ptr, ptr %35, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %37) #23
  br label %43

38:                                               ; preds = %29
  %39 = add nuw nsw i64 %13, 1
  %40 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #24
  %41 = zext i32 %40 to i64
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %12, label %43, !llvm.loop !1586

43:                                               ; preds = %38, %8, %34, %28, %11
  %44 = phi i8 [ 1, %11 ], [ 1, %28 ], [ 1, %34 ], [ 0, %8 ], [ 0, %38 ]
  ret i8 %44
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_class(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1587 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !686
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #24, !range !684
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_assign_single(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1588 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !686
  %3 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %8) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.68) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef %8) #23
  br label %69

12:                                               ; preds = %1
  %13 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %3) #24, !range !695
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call fastcc zeroext i8 @verify_types_in_gimple_reference(ptr noundef nonnull %3, i8 noundef zeroext 1) #24
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i8 [ %16, %15 ], [ 0, %12 ]
  %19 = trunc i32 %2 to i16
  switch i16 %19, label %69 [
    i16 121, label %20
    i16 41, label %44
    i16 42, label %44
    i16 47, label %44
    i16 48, label %44
    i16 49, label %44
    i16 45, label %44
    i16 46, label %44
    i16 118, label %44
    i16 43, label %44
    i16 44, label %44
    i16 152, label %44
    i16 34, label %58
    i16 32, label %58
  ]

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tree_exp, ptr %6, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !704
  %23 = tail call zeroext i8 @is_gimple_addressable(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.69) #23
  br label %69

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.tree_common, ptr %22, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !704
  %29 = load ptr, ptr %7, align 8, !tbaa !704
  %30 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !704
  %32 = tail call zeroext i8 @types_compatible_p(ptr noundef %28, ptr noundef %31) #23
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load ptr, ptr %7, align 8, !tbaa !704
  %36 = load ptr, ptr %27, align 8, !tbaa !704
  %37 = tail call fastcc zeroext i8 @one_pointer_to_useless_type_conversion_p(ptr noundef %35, ptr noundef %36) #24, !range !695
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.70) #23
  %40 = load ptr, ptr %7, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %40) #23
  %41 = load ptr, ptr %27, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %41) #23
  br label %69

42:                                               ; preds = %34, %26
  %43 = tail call fastcc zeroext i8 @verify_types_in_gimple_reference(ptr noundef nonnull %22, i8 noundef zeroext 1) #24
  br label %69

44:                                               ; preds = %17, %17, %17, %17, %17, %17, %17, %17, %17, %17, %17
  %45 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #23
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load ptr, ptr %4, align 8, !tbaa !704
  %49 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %48) #23
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.71) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %3) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %6) #23
  br label %69

52:                                               ; preds = %47, %44
  %53 = icmp eq i8 %18, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %52
  %55 = tail call fastcc zeroext i8 @verify_types_in_gimple_reference(ptr noundef nonnull %6, i8 noundef zeroext 0) #24
  %56 = icmp ne i8 %55, 0
  %57 = zext i1 %56 to i8
  br label %69

58:                                               ; preds = %17, %17
  %59 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %3) #23
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = tail call zeroext i8 @is_gimple_reg(ptr noundef nonnull %6) #23
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load ptr, ptr %4, align 8, !tbaa !704
  %66 = tail call zeroext i8 @is_gimple_reg_type(ptr noundef %65) #23
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.71) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %3) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %6) #23
  br label %69

69:                                               ; preds = %17, %58, %61, %64, %52, %54, %25, %39, %42, %68, %51, %11
  %70 = phi i8 [ 1, %68 ], [ 1, %51 ], [ 1, %11 ], [ %43, %42 ], [ 1, %39 ], [ 1, %25 ], [ 1, %52 ], [ %57, %54 ], [ %18, %64 ], [ %18, %61 ], [ %18, %58 ], [ %18, %17 ]
  ret i8 %70
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_assign_unary(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1589 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !686
  %3 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #23
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %1
  %12 = load i32, ptr @optimize, align 4, !tbaa !680
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, ptr %5, align 8
  %16 = and i64 %15, 65535
  %17 = icmp eq i64 %16, 13
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %11
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.81) #23
  br label %138

19:                                               ; preds = %14, %1
  %20 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %6) #23
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.82) #23
  br label %138

23:                                               ; preds = %19
  %24 = trunc i32 %2 to i16
  switch i16 %24, label %133 [
    i16 116, label %25
    i16 113, label %25
    i16 114, label %88
    i16 115, label %104
    i16 78, label %111
    i16 77, label %122
    i16 174, label %138
    i16 175, label %138
    i16 164, label %138
    i16 165, label %138
    i16 166, label %138
    i16 176, label %138
    i16 177, label %138
    i16 96, label %134
    i16 79, label %134
    i16 82, label %134
    i16 90, label %134
    i16 112, label %134
    i16 117, label %134
    i16 124, label %134
  ]

25:                                               ; preds = %23, %23
  %26 = load i64, ptr %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = and i32 %27, 65535
  %29 = trunc i64 %26 to i16
  switch i16 %29, label %30 [
    i16 10, label %34
    i16 12, label %34
  ]

30:                                               ; preds = %25
  %31 = load i64, ptr %8, align 8
  %32 = trunc i64 %31 to i32
  %33 = and i32 %32, 65535
  br label %51

34:                                               ; preds = %25, %25
  %35 = load i64, ptr %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = and i32 %36, 65535
  %38 = add nsw i32 %37, -6
  %39 = icmp ult i32 %38, 3
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 1023
  %44 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 1023
  %47 = icmp uge i32 %43, %46
  %48 = load ptr, ptr @sizetype_tab, align 16
  %49 = icmp eq ptr %8, %48
  %50 = select i1 %47, i1 true, i1 %49
  br i1 %50, label %138, label %51

51:                                               ; preds = %30, %34, %40
  %52 = phi i32 [ %33, %30 ], [ %37, %34 ], [ %37, %40 ]
  %53 = phi i32 [ %32, %30 ], [ %36, %34 ], [ %36, %40 ]
  %54 = phi i64 [ %31, %30 ], [ %35, %34 ], [ %35, %40 ]
  %55 = trunc i64 %54 to i16
  switch i16 %55, label %70 [
    i16 10, label %56
    i16 12, label %56
  ]

56:                                               ; preds = %51, %51
  %57 = add nsw i32 %28, -6
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = and i32 %61, 1023
  %63 = getelementptr inbounds %struct.tree_type, ptr %5, i64 0, i32 6
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, 1023
  %66 = icmp uge i32 %62, %65
  %67 = load ptr, ptr @sizetype_tab, align 16
  %68 = icmp eq ptr %5, %67
  %69 = select i1 %66, i1 true, i1 %68
  br i1 %69, label %138, label %70

70:                                               ; preds = %56, %59, %51
  switch i16 %29, label %77 [
    i16 5, label %71
    i16 8, label %74
  ]

71:                                               ; preds = %70
  %72 = and i64 %54, 65535
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %138, label %77

74:                                               ; preds = %70
  %75 = and i64 %54, 65535
  %76 = icmp eq i64 %75, 5
  br i1 %76, label %138, label %77

77:                                               ; preds = %70, %71, %74
  %78 = and i32 %27, 65534
  %79 = icmp eq i32 %78, 6
  %80 = icmp eq i32 %28, 8
  %81 = or i1 %79, %80
  %82 = and i32 %53, 65534
  %83 = icmp eq i32 %82, 6
  %84 = icmp eq i32 %52, 8
  %85 = or i1 %83, %84
  %86 = xor i1 %81, %85
  br i1 %86, label %87, label %138

87:                                               ; preds = %77
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.83) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  br label %138

88:                                               ; preds = %23
  %89 = load i64, ptr %8, align 8
  %90 = trunc i64 %89 to i16
  switch i16 %90, label %103 [
    i16 10, label %91
    i16 12, label %91
  ]

91:                                               ; preds = %88, %88
  %92 = load i64, ptr %5, align 8
  %93 = trunc i64 %92 to i16
  switch i16 %93, label %103 [
    i16 10, label %94
    i16 12, label %94
  ]

94:                                               ; preds = %91, %91
  %95 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !704
  %97 = load i64, ptr %96, align 8
  %98 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !704
  %100 = load i64, ptr %99, align 8
  %101 = xor i64 %100, %97
  %102 = icmp ult i64 %101, 72057594037927936
  br i1 %102, label %103, label %138

103:                                              ; preds = %91, %88, %94
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.84) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  br label %138

104:                                              ; preds = %23
  %105 = tail call fastcc zeroext i8 @valid_fixed_convert_types_p(ptr noundef %5, ptr noundef %8) #24, !range !695
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %104
  %108 = tail call fastcc zeroext i8 @valid_fixed_convert_types_p(ptr noundef %8, ptr noundef %5) #24, !range !695
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %107
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.85) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef %8) #23
  br label %138

111:                                              ; preds = %23
  %112 = load i64, ptr %8, align 8
  %113 = trunc i64 %112 to i32
  %114 = and i32 %113, 65535
  %115 = add nsw i32 %114, -6
  %116 = icmp ult i32 %115, 3
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i64, ptr %5, align 8
  %119 = and i64 %118, 65535
  %120 = icmp eq i64 %119, 9
  br i1 %120, label %138, label %121

121:                                              ; preds = %111, %117
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.86) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  br label %138

122:                                              ; preds = %23
  %123 = load i64, ptr %5, align 8
  %124 = trunc i64 %123 to i32
  %125 = and i32 %124, 65535
  %126 = add nsw i32 %125, -6
  %127 = icmp ult i32 %126, 3
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i64, ptr %8, align 8
  %130 = and i64 %129, 65535
  %131 = icmp eq i64 %130, 9
  br i1 %131, label %138, label %132

132:                                              ; preds = %122, %128
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.87) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %5) #23
  tail call void @debug_generic_expr(ptr noundef %8) #23
  br label %138

133:                                              ; preds = %23
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3206, ptr noundef nonnull @.str.2) #23
  br label %134

134:                                              ; preds = %23, %23, %23, %23, %23, %23, %23, %133
  %135 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %8) #23
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.88) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef %8) #23
  br label %138

138:                                              ; preds = %134, %23, %23, %23, %23, %23, %23, %23, %128, %117, %104, %107, %94, %77, %71, %74, %40, %59, %137, %132, %121, %110, %103, %87, %22, %18
  %139 = phi i8 [ 1, %137 ], [ 1, %132 ], [ 1, %121 ], [ 1, %110 ], [ 1, %103 ], [ 1, %87 ], [ 1, %22 ], [ 1, %18 ], [ 0, %59 ], [ 0, %40 ], [ 0, %74 ], [ 0, %71 ], [ 0, %77 ], [ 0, %94 ], [ 0, %107 ], [ 0, %104 ], [ 0, %117 ], [ 0, %128 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %23 ], [ 0, %134 ]
  ret i8 %139
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_gimple_assign_binary(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1590 {
  %2 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #24, !range !686
  %3 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #24
  %4 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !704
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #24
  %10 = getelementptr inbounds %struct.tree_common, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !704
  %12 = tail call zeroext i8 @is_gimple_reg(ptr noundef %3) #23
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, ptr @optimize, align 4, !tbaa !680
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, ptr %5, align 8
  %19 = and i64 %18, 65535
  %20 = icmp eq i64 %19, 13
  br i1 %20, label %22, label %21

21:                                               ; preds = %17, %14
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.89) #23
  br label %212

22:                                               ; preds = %17, %1
  %23 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %6) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %9) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.90) #23
  br label %212

29:                                               ; preds = %25
  %30 = trunc i32 %2 to i16
  switch i16 %30, label %204 [
    i16 123, label %33
    i16 83, label %50
    i16 84, label %50
    i16 85, label %50
    i16 86, label %50
    i16 170, label %93
    i16 171, label %93
    i16 63, label %132
    i16 64, label %31
    i16 66, label %168
    i16 91, label %182
    i16 92, label %182
    i16 93, label %183
    i16 94, label %183
    i16 95, label %183
    i16 97, label %202
    i16 98, label %202
    i16 99, label %202
    i16 100, label %202
    i16 101, label %202
    i16 102, label %202
    i16 103, label %202
    i16 104, label %202
    i16 105, label %202
    i16 106, label %202
    i16 107, label %202
    i16 108, label %202
    i16 109, label %202
    i16 110, label %202
    i16 168, label %212
    i16 169, label %212
    i16 172, label %212
    i16 173, label %212
    i16 178, label %212
    i16 179, label %212
    i16 180, label %212
    i16 181, label %212
    i16 182, label %212
    i16 183, label %212
    i16 184, label %212
    i16 65, label %205
    i16 67, label %205
    i16 68, label %205
    i16 69, label %205
    i16 70, label %205
    i16 71, label %205
    i16 72, label %205
    i16 73, label %205
    i16 74, label %205
    i16 75, label %205
    i16 76, label %205
    i16 80, label %205
    i16 81, label %205
    i16 87, label %205
    i16 88, label %205
    i16 89, label %205
  ]

31:                                               ; preds = %29
  %32 = load i64, ptr %5, align 8
  br label %158

33:                                               ; preds = %29
  %34 = load i64, ptr %5, align 8
  %35 = and i64 %34, 65535
  %36 = icmp eq i64 %35, 13
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64, ptr %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = and i32 %39, 65534
  %41 = add nsw i32 %40, -6
  %42 = icmp ult i32 %41, 4
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load i64, ptr %11, align 8
  %45 = trunc i64 %44 to i32
  %46 = and i32 %45, 65534
  %47 = add nsw i32 %46, -6
  %48 = icmp ult i32 %47, 4
  br i1 %48, label %212, label %49

49:                                               ; preds = %43, %37, %33
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.91) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %5) #23
  tail call void @debug_generic_expr(ptr noundef %8) #23
  tail call void @debug_generic_expr(ptr noundef %11) #23
  br label %212

50:                                               ; preds = %29, %29, %29, %29
  %51 = load i64, ptr %8, align 8
  %52 = trunc i64 %51 to i16
  switch i16 %52, label %92 [
    i16 6, label %61
    i16 7, label %61
    i16 8, label %61
    i16 11, label %61
    i16 14, label %53
  ]

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !704
  %56 = load i64, ptr %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 65535
  %59 = add nsw i32 %58, -6
  %60 = icmp ult i32 %59, 3
  br i1 %60, label %61, label %92

61:                                               ; preds = %53, %50, %50, %50, %50
  %62 = load i64, ptr %11, align 8
  %63 = trunc i64 %62 to i32
  %64 = and i32 %63, 65535
  %65 = add nsw i32 %64, -6
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %89, label %67

67:                                               ; preds = %61
  %68 = and i64 %51, 65535
  %69 = icmp eq i64 %68, 14
  br i1 %69, label %70, label %92

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %72 = load ptr, ptr %71, align 8, !tbaa !704
  %73 = load i64, ptr %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = and i32 %74, 65535
  %76 = add nsw i32 %75, -6
  %77 = icmp ult i32 %76, 3
  %78 = and i64 %62, 65535
  %79 = icmp eq i64 %78, 14
  %80 = and i1 %79, %77
  br i1 %80, label %81, label %92

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !704
  %84 = load i64, ptr %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = add nsw i32 %86, -6
  %88 = icmp ult i32 %87, 3
  br i1 %88, label %89, label %92

89:                                               ; preds = %81, %61
  %90 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %8) #23
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %212

92:                                               ; preds = %81, %70, %53, %50, %89, %67
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.92) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  tail call void @debug_generic_expr(ptr noundef %11) #23
  br label %212

93:                                               ; preds = %29, %29
  %94 = load i64, ptr %8, align 8
  %95 = and i64 %94, 65535
  %96 = icmp eq i64 %95, 14
  br i1 %96, label %97, label %116

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !704
  %100 = load i64, ptr %99, align 8
  %101 = trunc i64 %100 to i16
  switch i16 %101, label %116 [
    i16 6, label %102
    i16 7, label %102
    i16 8, label %102
    i16 11, label %102
    i16 9, label %102
  ]

102:                                              ; preds = %97, %97, %97, %97, %97
  %103 = load i64, ptr %11, align 8
  %104 = trunc i64 %103 to i16
  switch i16 %104, label %116 [
    i16 6, label %113
    i16 7, label %113
    i16 8, label %113
    i16 14, label %105
  ]

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !704
  %108 = load i64, ptr %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = and i32 %109, 65535
  %111 = add nsw i32 %110, -6
  %112 = icmp ult i32 %111, 3
  br i1 %112, label %113, label %116

113:                                              ; preds = %105, %102, %102, %102
  %114 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef nonnull %8) #23
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %105, %102, %97, %113, %93
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.93) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  tail call void @debug_generic_expr(ptr noundef %11) #23
  br label %212

117:                                              ; preds = %113
  %118 = load ptr, ptr %98, align 8, !tbaa !704
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 65535
  %121 = icmp eq i64 %120, 9
  br i1 %121, label %122, label %212

122:                                              ; preds = %117
  %123 = load i64, ptr %9, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 23
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = getelementptr inbounds %struct.tree_type, ptr %118, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !704
  %129 = tail call ptr @div_if_zero_remainder(i32 noundef 76, ptr noundef nonnull %9, ptr noundef %128) #23
  %130 = icmp eq ptr %129, null
  br i1 %130, label %131, label %212

131:                                              ; preds = %126, %122
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.94) #23
  br label %212

132:                                              ; preds = %29
  %133 = load i64, ptr %5, align 8
  %134 = and i64 %133, 65535
  %135 = icmp eq i64 %134, 14
  br i1 %135, label %136, label %158

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.tree_common, ptr %5, i64 0, i32 2
  %138 = load ptr, ptr %137, align 8, !tbaa !704
  %139 = load i64, ptr %138, align 8
  %140 = trunc i64 %139 to i16
  switch i16 %140, label %158 [
    i16 10, label %141
    i16 12, label %141
  ]

141:                                              ; preds = %136, %136
  %142 = load i64, ptr %8, align 8
  %143 = and i64 %142, 65535
  %144 = icmp eq i64 %143, 14
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load i64, ptr %11, align 8
  %147 = and i64 %146, 65535
  %148 = icmp eq i64 %147, 14
  br i1 %148, label %150, label %149

149:                                              ; preds = %145, %141
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.95) #23
  br label %212

150:                                              ; preds = %145
  %151 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !704
  %153 = getelementptr inbounds %struct.tree_common, ptr %11, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !704
  %155 = load i64, ptr %154, align 8
  %156 = trunc i64 %155 to i16
  switch i16 %156, label %168 [
    i16 10, label %157
    i16 12, label %157
  ]

157:                                              ; preds = %150, %150
  br label %168

158:                                              ; preds = %31, %136, %132
  %159 = phi i64 [ %32, %31 ], [ %133, %136 ], [ %133, %132 ]
  %160 = trunc i64 %159 to i16
  switch i16 %160, label %161 [
    i16 10, label %167
    i16 12, label %167
  ]

161:                                              ; preds = %158
  %162 = load i64, ptr %8, align 8
  %163 = trunc i64 %162 to i16
  switch i16 %163, label %164 [
    i16 10, label %167
    i16 12, label %167
  ]

164:                                              ; preds = %161
  %165 = load i64, ptr %11, align 8
  %166 = trunc i64 %165 to i16
  switch i16 %166, label %205 [
    i16 10, label %167
    i16 12, label %167
  ]

167:                                              ; preds = %164, %164, %161, %161, %158, %158
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.96) #23
  br label %212

168:                                              ; preds = %150, %29, %157
  %169 = phi ptr [ %8, %29 ], [ %154, %157 ], [ %152, %150 ]
  %170 = phi ptr [ %5, %29 ], [ %138, %157 ], [ %138, %150 ]
  %171 = phi ptr [ %11, %29 ], [ %152, %157 ], [ %154, %150 ]
  %172 = load i64, ptr %169, align 8
  %173 = trunc i64 %172 to i16
  switch i16 %173, label %181 [
    i16 10, label %174
    i16 12, label %174
  ]

174:                                              ; preds = %168, %168
  %175 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %170, ptr noundef nonnull %169) #23
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %181, label %177

177:                                              ; preds = %174
  %178 = load ptr, ptr @sizetype_tab, align 16, !tbaa !674
  %179 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %178, ptr noundef %171) #23
  %180 = icmp eq i8 %179, 0
  br i1 %180, label %181, label %212

181:                                              ; preds = %168, %177, %174
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.97) #23
  tail call void @debug_generic_stmt(ptr noundef %170) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %169) #23
  tail call void @debug_generic_stmt(ptr noundef %171) #23
  br label %212

182:                                              ; preds = %29, %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3394, ptr noundef nonnull @.str.2) #23
  br label %183

183:                                              ; preds = %29, %29, %29, %182
  %184 = load i64, ptr %8, align 8
  %185 = trunc i64 %184 to i32
  %186 = and i32 %185, 65535
  %187 = add nsw i32 %186, -6
  %188 = icmp ult i32 %187, 3
  br i1 %188, label %189, label %201

189:                                              ; preds = %183
  %190 = load i64, ptr %11, align 8
  %191 = trunc i64 %190 to i32
  %192 = and i32 %191, 65535
  %193 = add nsw i32 %192, -6
  %194 = icmp ult i32 %193, 3
  br i1 %194, label %195, label %201

195:                                              ; preds = %189
  %196 = load i64, ptr %5, align 8
  %197 = trunc i64 %196 to i32
  %198 = and i32 %197, 65535
  %199 = add nsw i32 %198, -6
  %200 = icmp ult i32 %199, 3
  br i1 %200, label %212, label %201

201:                                              ; preds = %195, %189, %183
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.98) #23
  tail call void @debug_generic_expr(ptr noundef %5) #23
  tail call void @debug_generic_expr(ptr noundef nonnull %8) #23
  tail call void @debug_generic_expr(ptr noundef %11) #23
  br label %212

202:                                              ; preds = %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29
  %203 = tail call fastcc zeroext i8 @verify_gimple_comparison(ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %9) #24, !range !695
  br label %212

204:                                              ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 3467, ptr noundef nonnull @.str.2) #23
  br label %205

205:                                              ; preds = %164, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %204
  %206 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %8) #23
  %207 = icmp eq i8 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %205
  %209 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %5, ptr noundef %11) #23
  %210 = icmp eq i8 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208, %205
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.99) #23
  tail call void @debug_generic_stmt(ptr noundef %5) #23
  tail call void @debug_generic_stmt(ptr noundef %8) #23
  tail call void @debug_generic_stmt(ptr noundef %11) #23
  br label %212

212:                                              ; preds = %195, %43, %208, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %29, %177, %117, %126, %89, %211, %202, %201, %181, %167, %149, %131, %116, %92, %49, %28, %21
  %213 = phi i8 [ 1, %211 ], [ %203, %202 ], [ 1, %201 ], [ 1, %181 ], [ 1, %167 ], [ 1, %149 ], [ 1, %116 ], [ 1, %131 ], [ 1, %92 ], [ 1, %49 ], [ 1, %28 ], [ 1, %21 ], [ 0, %43 ], [ 0, %89 ], [ 0, %126 ], [ 0, %117 ], [ 0, %177 ], [ 0, %195 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %29 ], [ 0, %208 ]
  ret i8 %213
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #16 !prof !735 !PGOFuncName !1591 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !704
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1592 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #24, !range !686
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #24, !range !684
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #24
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !735 !PGOFuncName !1593 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
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
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 1446, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1594 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1595 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @useless_type_conversion_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1596 {
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

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_types_in_gimple_reference(ptr noundef %0, i8 noundef zeroext %1) unnamed_addr #0 !prof !735 !PGOFuncName !1597 {
  %3 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %149, label %5

5:                                                ; preds = %2
  %6 = icmp eq i8 %1, 0
  br label %7

7:                                                ; preds = %5, %146
  %8 = phi ptr [ %0, %5 ], [ %10, %146 ]
  %9 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !704
  %11 = load i64, ptr %8, align 8
  %12 = trunc i64 %11 to i32
  %13 = and i32 %12, 65535
  %14 = add nsw i32 %13, -45
  %15 = icmp ult i32 %14, 2
  br i1 %15, label %16, label %36

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %18 = load ptr, ptr %17, align 8, !tbaa !704
  %19 = tail call zeroext i8 @is_gimple_val(ptr noundef %18) #23
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !704
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %23) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25, %21
  %29 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1, i32 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !704
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %30) #23
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32, %25, %16
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.72) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %8) #23
  br label %157

36:                                               ; preds = %7, %28, %32
  %37 = load i64, ptr %8, align 8
  %38 = and i64 %37, 65535
  %39 = icmp eq i64 %38, 45
  br i1 %39, label %40, label %58

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !704
  %43 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !704
  %45 = getelementptr inbounds %struct.tree_common, ptr %44, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !704
  %47 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %42, ptr noundef %46) #23
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %40
  %50 = load i64, ptr %8, align 8
  br label %58

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %53 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.73) #23
  %54 = load ptr, ptr %52, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %54) #23
  %55 = load ptr, ptr %53, align 8, !tbaa !704
  %56 = getelementptr inbounds %struct.tree_common, ptr %55, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %57) #23
  br label %157

58:                                               ; preds = %49, %36
  %59 = phi i64 [ %50, %49 ], [ %37, %36 ]
  %60 = and i64 %59, 65535
  %61 = icmp eq i64 %60, 46
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !704
  %65 = getelementptr inbounds %struct.tree_common, ptr %64, i64 0, i32 2
  %66 = load ptr, ptr %65, align 8, !tbaa !704
  %67 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !704
  %69 = getelementptr inbounds %struct.tree_common, ptr %68, i64 0, i32 2
  %70 = load ptr, ptr %69, align 8, !tbaa !704
  %71 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %66, ptr noundef %70) #23
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %62
  %74 = load i64, ptr %8, align 8
  br label %84

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %77 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.74) #23
  %78 = load ptr, ptr %76, align 8, !tbaa !704
  %79 = getelementptr inbounds %struct.tree_common, ptr %78, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %80) #23
  %81 = load ptr, ptr %77, align 8, !tbaa !704
  %82 = getelementptr inbounds %struct.tree_common, ptr %81, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %83) #23
  br label %157

84:                                               ; preds = %73, %58
  %85 = phi i64 [ %74, %73 ], [ %59, %58 ]
  %86 = trunc i64 %85 to i32
  %87 = and i32 %86, 65535
  %88 = add nsw i32 %87, -43
  %89 = icmp ult i32 %88, 2
  br i1 %89, label %90, label %108

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %92 = load ptr, ptr %91, align 8, !tbaa !704
  %93 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %94 = load ptr, ptr %93, align 8, !tbaa !704
  %95 = getelementptr inbounds %struct.tree_common, ptr %94, i64 0, i32 2
  %96 = load ptr, ptr %95, align 8, !tbaa !704
  %97 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %92, ptr noundef %96) #23
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %90
  %100 = load i64, ptr %8, align 8
  br label %108

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %103 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.75) #23
  %104 = load ptr, ptr %102, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %104) #23
  %105 = load ptr, ptr %103, align 8, !tbaa !704
  %106 = getelementptr inbounds %struct.tree_common, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %107) #23
  br label %157

108:                                              ; preds = %99, %84
  %109 = phi i64 [ %100, %99 ], [ %85, %84 ]
  %110 = and i64 %109, 65535
  %111 = icmp eq i64 %110, 41
  br i1 %111, label %112, label %130

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !704
  %115 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  %116 = load ptr, ptr %115, align 8, !tbaa !704
  %117 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !704
  %119 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %114, ptr noundef %118) #23
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %112
  %122 = load i64, ptr %8, align 8
  br label %130

123:                                              ; preds = %112
  %124 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %125 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.76) #23
  %126 = load ptr, ptr %124, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %126) #23
  %127 = load ptr, ptr %125, align 8, !tbaa !704
  %128 = getelementptr inbounds %struct.tree_common, ptr %127, i64 0, i32 2
  %129 = load ptr, ptr %128, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %129) #23
  br label %157

130:                                              ; preds = %121, %108
  %131 = phi i64 [ %122, %121 ], [ %109, %108 ]
  %132 = and i64 %131, 65535
  %133 = icmp eq i64 %132, 118
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  br i1 %6, label %143, label %135

135:                                              ; preds = %134
  %136 = load i64, ptr %10, align 8
  %137 = and i64 %136, 65535
  %138 = icmp eq i64 %137, 141
  br i1 %138, label %142, label %139

139:                                              ; preds = %135
  %140 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef nonnull %10) #23
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139, %135
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.77) #23
  tail call void @debug_generic_stmt(ptr noundef nonnull %8) #23
  br label %157

143:                                              ; preds = %139, %134
  %144 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %10) #24, !range !695
  %145 = icmp eq i8 %144, 0
  br i1 %145, label %157, label %146

146:                                              ; preds = %130, %143
  %147 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %10) #24, !range !695
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %149, label %7

149:                                              ; preds = %146, %2
  %150 = phi ptr [ %0, %2 ], [ %10, %146 ]
  %151 = icmp eq i8 %1, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %150) #23
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152, %149
  %156 = tail call fastcc zeroext i8 @verify_types_in_gimple_min_lval(ptr noundef %150) #24, !range !695
  br label %157

157:                                              ; preds = %143, %35, %51, %75, %101, %123, %142, %152, %155
  %158 = phi i8 [ 0, %152 ], [ %156, %155 ], [ 1, %35 ], [ 1, %51 ], [ 1, %75 ], [ 1, %101 ], [ 1, %123 ], [ 1, %142 ], [ 0, %143 ]
  ret i8 %158
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_addressable(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @types_compatible_p(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @one_pointer_to_useless_type_conversion_p(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !1598 {
  %3 = getelementptr inbounds %struct.tree_type, ptr %1, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !704
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %10
  %7 = phi ptr [ %12, %10 ], [ %4, %2 ]
  %8 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %0, ptr noundef nonnull %7) #23
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 13
  %12 = load ptr, ptr %11, align 8, !tbaa !704
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %6, !llvm.loop !1599

14:                                               ; preds = %10, %6, %2
  %15 = phi i8 [ 1, %2 ], [ 0, %10 ], [ 1, %6 ]
  ret i8 %15
}

; Function Attrs: optsize
declare void @debug_generic_stmt(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_val(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @verify_types_in_gimple_min_lval(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1600 {
  %2 = tail call zeroext i8 @is_gimple_id(ptr noundef %0) #23
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %7 [
    i16 47, label %8
    i16 48, label %8
    i16 49, label %8
    i16 152, label %8
  ]

7:                                                ; preds = %4
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.78) #23
  br label %31

8:                                                ; preds = %4, %4, %4, %4
  %9 = and i64 %5, 65535
  %10 = icmp eq i64 %9, 152
  br i1 %10, label %31, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !704
  %14 = tail call zeroext i8 @is_gimple_val(ptr noundef %13) #23
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.79) #23
  tail call void @debug_generic_stmt(ptr noundef %13) #23
  br label %31

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !704
  %20 = getelementptr inbounds %struct.tree_common, ptr %13, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !704
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !704
  %24 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %19, ptr noundef %23) #23
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %17
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.80) #23
  %27 = load ptr, ptr %18, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %27) #23
  %28 = load ptr, ptr %20, align 8, !tbaa !704
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !704
  tail call void @debug_generic_stmt(ptr noundef %30) #23
  br label %31

31:                                               ; preds = %17, %8, %1, %26, %16, %7
  %32 = phi i8 [ 1, %26 ], [ 1, %16 ], [ 1, %7 ], [ 0, %1 ], [ 0, %8 ], [ 0, %17 ]
  ret i8 %32
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @valid_fixed_convert_types_p(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 !prof !735 !PGOFuncName !1601 {
  %3 = load i64, ptr %0, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 11
  br i1 %5, label %6, label %15

6:                                                ; preds = %2
  %7 = load i64, ptr %1, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  %10 = add nsw i32 %9, -6
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %15, label %12

12:                                               ; preds = %6
  %13 = icmp eq i32 %9, 11
  %14 = zext i1 %13 to i8
  br label %15

15:                                               ; preds = %6, %12, %2
  %16 = phi i8 [ 0, %2 ], [ %14, %12 ], [ 1, %6 ]
  ret i8 %16
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1602 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #24
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare ptr @div_if_zero_remainder(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #0 !prof !1603 !PGOFuncName !1604 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #24
  ret ptr %2
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_lvalue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_call_noreturn_p(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1605 {
  %2 = tail call i32 @gimple_call_flags(ptr noundef %0) #23
  %3 = trunc i32 %2 to i8
  %4 = lshr i8 %3, 3
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1606 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1607 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #24
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1608 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #24
  ret ptr %4
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_operand(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @vector_type_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_switch_index(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1609 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1610 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #24
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gsi_one_before_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !735 !PGOFuncName !1611 {
  %2 = load ptr, ptr %0, align 8, !tbaa !724
  %3 = icmp eq ptr %2, null
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !748
  %7 = icmp eq ptr %6, null
  %8 = zext i1 %7 to i8
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i8 [ 0, %1 ], [ %8, %4 ]
  ret i8 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_omp(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1612 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %3 = trunc i32 %2 to i8
  %4 = add i8 %3, -19
  %5 = icmp ult i8 %4, 14
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_call_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #0 !prof !1613 !PGOFuncName !1614 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #24
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1615

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal ptr @verify_expr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture readnone %2) #0 !prof !735 !PGOFuncName !1616 {
  %4 = load ptr, ptr %0, align 8, !tbaa !674
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !680
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  store i32 0, ptr %1, align 4, !tbaa !680
  %11 = load i64, ptr %4, align 8
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i64 [ %11, %10 ], [ %5, %3 ]
  %14 = trunc i64 %13 to i16
  switch i16 %14, label %268 [
    i16 141, label %15
    i16 47, label %20
    i16 148, label %29
    i16 53, label %37
    i16 121, label %39
    i16 56, label %73
    i16 117, label %88
    i16 116, label %89
    i16 113, label %89
    i16 77, label %89
    i16 78, label %89
    i16 79, label %89
    i16 82, label %89
    i16 90, label %89
    i16 96, label %89
    i16 43, label %96
    i16 44, label %96
    i16 41, label %96
    i16 45, label %96
    i16 46, label %96
    i16 42, label %96
    i16 118, label %96
    i16 63, label %207
    i16 64, label %207
    i16 66, label %227
    i16 97, label %244
    i16 98, label %244
    i16 99, label %244
    i16 100, label %244
    i16 101, label %244
    i16 102, label %244
    i16 103, label %244
    i16 104, label %244
    i16 105, label %244
    i16 106, label %244
    i16 107, label %244
    i16 108, label %244
    i16 109, label %244
    i16 110, label %244
    i16 65, label %244
    i16 67, label %244
    i16 68, label %244
    i16 69, label %244
    i16 70, label %244
    i16 71, label %244
    i16 72, label %244
    i16 73, label %244
    i16 74, label %244
    i16 75, label %244
    i16 76, label %244
    i16 80, label %244
    i16 81, label %244
    i16 83, label %244
    i16 84, label %244
    i16 85, label %244
    i16 86, label %244
    i16 87, label %244
    i16 88, label %244
    i16 89, label %244
    i16 51, label %258
  ]

15:                                               ; preds = %12
  %16 = and i64 %13, 33554432
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %268, label %18

18:                                               ; preds = %15
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.123) #23
  %19 = load ptr, ptr %0, align 8, !tbaa !674
  br label %268

20:                                               ; preds = %12
  %21 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !704
  %23 = tail call zeroext i8 @is_gimple_reg(ptr noundef %22) #23
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %268

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %22) #23
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %268

28:                                               ; preds = %25
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.124) #23
  br label %268

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %31 = load ptr, ptr %30, align 8, !tbaa !704
  %32 = tail call ptr @fold(ptr noundef %31) #23
  %33 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 25), align 8, !tbaa !674
  %34 = icmp eq ptr %32, %33
  br i1 %34, label %35, label %268

35:                                               ; preds = %29
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.125) #23
  %36 = load ptr, ptr %0, align 8, !tbaa !674
  br label %268

37:                                               ; preds = %12
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.126) #23
  %38 = load ptr, ptr %0, align 8, !tbaa !674
  br label %268

39:                                               ; preds = %12
  %40 = tail call zeroext i8 @is_gimple_address(ptr noundef nonnull %4) #23
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2544, ptr noundef nonnull @.str.2) #23
  br label %43

43:                                               ; preds = %39, %42
  %44 = load i64, ptr %4, align 8
  tail call void @recompute_tree_invariant_for_addr_expr(ptr noundef nonnull %4) #23
  %45 = load i64, ptr %4, align 8
  %46 = xor i64 %45, %44
  %47 = and i64 %46, 131072
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.127) #23
  br label %268

50:                                               ; preds = %43
  %51 = and i64 %46, 65536
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.128) #23
  br label %268

54:                                               ; preds = %50, %54
  %55 = phi ptr [ %57, %54 ], [ %4, %50 ]
  %56 = getelementptr inbounds %struct.tree_exp, ptr %55, i64 0, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !704
  %58 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %57) #24, !range !695
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %54, !llvm.loop !1617

60:                                               ; preds = %54
  %61 = load i64, ptr %57, align 8
  %62 = trunc i64 %61 to i16
  switch i16 %62, label %268 [
    i16 32, label %63
    i16 34, label %63
    i16 36, label %63
  ]

63:                                               ; preds = %60, %60, %60
  %64 = and i64 %61, 262144
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.129) #23
  br label %268

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.tree_decl_common, ptr %57, i64 0, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 134217728
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %268, label %72

72:                                               ; preds = %67
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.130) #23
  br label %268

73:                                               ; preds = %12
  %74 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !704
  %76 = getelementptr inbounds %struct.tree_common, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !704
  %78 = load i64, ptr %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = and i32 %79, 65535
  %81 = add nsw i32 %80, -6
  %82 = icmp ult i32 %81, 3
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.131) #23
  br label %268

84:                                               ; preds = %73
  %85 = tail call zeroext i8 @is_gimple_condexpr(ptr noundef nonnull %75) #23
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %268

87:                                               ; preds = %84
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.132) #23
  br label %268

88:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2605, ptr noundef nonnull @.str.2) #23
  br label %89

89:                                               ; preds = %88, %12, %12, %12, %12, %12, %12, %12, %12
  %90 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %91 = load ptr, ptr %90, align 8, !tbaa !704
  %92 = tail call zeroext i8 @is_gimple_val(ptr noundef %91) #23
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %268

94:                                               ; preds = %89
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.133) #23
  %95 = load ptr, ptr %90, align 8, !tbaa !704
  br label %268

96:                                               ; preds = %12, %12, %12, %12, %12, %12, %12
  %97 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef nonnull %4) #24, !range !695
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %198, label %99

99:                                               ; preds = %96, %193
  %100 = phi ptr [ %195, %193 ], [ %4, %96 ]
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 65535
  %103 = icmp eq i64 %102, 41
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 1
  %106 = load ptr, ptr %105, align 8, !tbaa !704
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %106) #23
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %111, label %193

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.134) #23
  %113 = load ptr, ptr %112, align 8, !tbaa !704
  br label %268

114:                                              ; preds = %104, %99
  %115 = trunc i64 %101 to i16
  switch i16 %115, label %193 [
    i16 45, label %116
    i16 46, label %116
    i16 42, label %144
  ]

116:                                              ; preds = %114, %114
  %117 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %118 = load ptr, ptr %117, align 8, !tbaa !704
  %119 = tail call zeroext i8 @is_gimple_val(ptr noundef %118) #23
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.135) #23
  %123 = load ptr, ptr %122, align 8, !tbaa !704
  br label %268

124:                                              ; preds = %116
  %125 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !704
  %127 = icmp eq ptr %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %124
  %129 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %126) #23
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 1
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.136) #23
  %133 = load ptr, ptr %132, align 8, !tbaa !704
  br label %268

134:                                              ; preds = %128, %124
  %135 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 2
  %136 = load ptr, ptr %135, align 8, !tbaa !704
  %137 = icmp eq ptr %136, null
  br i1 %137, label %193, label %138

138:                                              ; preds = %134
  %139 = tail call zeroext i8 @is_gimple_val(ptr noundef nonnull %136) #23
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %193

141:                                              ; preds = %138
  %142 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 2
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.137) #23
  %143 = load ptr, ptr %142, align 8, !tbaa !704
  br label %268

144:                                              ; preds = %114
  %145 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1
  %146 = load ptr, ptr %145, align 8, !tbaa !704
  %147 = tail call i32 @host_integerp(ptr noundef %146, i32 noundef 1) #23
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 1, i32 0, i32 1
  %151 = load ptr, ptr %150, align 8, !tbaa !704
  %152 = tail call i32 @host_integerp(ptr noundef %151, i32 noundef 1) #23
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149, %144
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.138) #23
  br label %268

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.tree_common, ptr %100, i64 0, i32 2
  %157 = load ptr, ptr %156, align 8, !tbaa !704
  %158 = load i64, ptr %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = and i32 %159, 65535
  %161 = add nsw i32 %160, -6
  %162 = icmp ult i32 %161, 3
  br i1 %162, label %163, label %173

163:                                              ; preds = %155
  %164 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 6
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, 1023
  %167 = zext nneg i32 %166 to i64
  %168 = load ptr, ptr %145, align 8, !tbaa !704
  %169 = getelementptr inbounds %struct.tree_int_cst, ptr %168, i64 0, i32 1
  %170 = load i64, ptr %169, align 8, !tbaa !704
  %171 = icmp eq i64 %170, %167
  br i1 %171, label %173, label %172

172:                                              ; preds = %163
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.139) #23
  br label %268

173:                                              ; preds = %155, %163
  %174 = trunc i64 %158 to i16
  switch i16 %174, label %177 [
    i16 6, label %193
    i16 7, label %193
    i16 8, label %193
    i16 14, label %175
  ]

175:                                              ; preds = %173
  %176 = tail call i32 @vector_type_mode(ptr noundef nonnull %157) #23
  br label %182

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.tree_type, ptr %157, i64 0, i32 6
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %179, 16
  %181 = and i32 %180, 255
  br label %182

182:                                              ; preds = %177, %175
  %183 = phi i32 [ %176, %175 ], [ %181, %177 ]
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [87 x i16], ptr @mode_precision, i64 0, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !1618
  %187 = zext i16 %186 to i64
  %188 = load ptr, ptr %145, align 8, !tbaa !704
  %189 = getelementptr inbounds %struct.tree_int_cst, ptr %188, i64 0, i32 1
  %190 = load i64, ptr %189, align 8, !tbaa !704
  %191 = icmp eq i64 %190, %187
  br i1 %191, label %193, label %192

192:                                              ; preds = %182
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.140) #23
  br label %268

193:                                              ; preds = %173, %173, %173, %114, %138, %134, %182, %108
  %194 = getelementptr inbounds %struct.tree_exp, ptr %100, i64 0, i32 3
  %195 = load ptr, ptr %194, align 8, !tbaa !704
  %196 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %195) #24, !range !695
  %197 = icmp eq i8 %196, 0
  br i1 %197, label %198, label %99, !llvm.loop !1620

198:                                              ; preds = %193, %96
  %199 = phi ptr [ %4, %96 ], [ %195, %193 ]
  %200 = tail call zeroext i8 @is_gimple_min_invariant(ptr noundef %199) #23
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = tail call zeroext i8 @is_gimple_lvalue(ptr noundef %199) #23
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.141) #23
  br label %268

206:                                              ; preds = %202, %198
  store i32 0, ptr %1, align 4, !tbaa !680
  br label %268

207:                                              ; preds = %12, %12
  %208 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !704
  %210 = load i64, ptr %209, align 8
  %211 = trunc i64 %210 to i16
  switch i16 %211, label %213 [
    i16 10, label %212
    i16 12, label %212
  ]

212:                                              ; preds = %207, %207
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.142) #23
  br label %268

213:                                              ; preds = %207
  %214 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %215 = load ptr, ptr %214, align 8, !tbaa !704
  %216 = tail call zeroext i8 @is_gimple_val(ptr noundef %215) #23
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %213
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.143) #23
  %219 = load ptr, ptr %214, align 8, !tbaa !704
  br label %268

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %222 = load ptr, ptr %221, align 8, !tbaa !704
  %223 = tail call zeroext i8 @is_gimple_val(ptr noundef %222) #23
  %224 = icmp eq i8 %223, 0
  br i1 %224, label %225, label %268

225:                                              ; preds = %220
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.143) #23
  %226 = load ptr, ptr %221, align 8, !tbaa !704
  br label %268

227:                                              ; preds = %12
  %228 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %229 = load ptr, ptr %228, align 8, !tbaa !704
  %230 = getelementptr inbounds %struct.tree_common, ptr %229, i64 0, i32 2
  %231 = load ptr, ptr %230, align 8, !tbaa !704
  %232 = load i64, ptr %231, align 8
  %233 = trunc i64 %232 to i16
  switch i16 %233, label %234 [
    i16 10, label %235
    i16 12, label %235
  ]

234:                                              ; preds = %227
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.144) #23
  br label %268

235:                                              ; preds = %227, %227
  %236 = load ptr, ptr @sizetype_tab, align 16, !tbaa !674
  %237 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %238 = load ptr, ptr %237, align 8, !tbaa !704
  %239 = getelementptr inbounds %struct.tree_common, ptr %238, i64 0, i32 2
  %240 = load ptr, ptr %239, align 8, !tbaa !704
  %241 = tail call zeroext i8 @useless_type_conversion_p(ptr noundef %236, ptr noundef %240) #23
  %242 = icmp eq i8 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.145) #23
  br label %268

244:                                              ; preds = %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %12, %235
  %245 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !704
  %247 = tail call zeroext i8 @is_gimple_val(ptr noundef %246) #23
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %244
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.143) #23
  %250 = load ptr, ptr %245, align 8, !tbaa !704
  br label %268

251:                                              ; preds = %244
  %252 = getelementptr inbounds %struct.tree_exp, ptr %4, i64 1
  %253 = load ptr, ptr %252, align 8, !tbaa !704
  %254 = tail call zeroext i8 @is_gimple_val(ptr noundef %253) #23
  %255 = icmp eq i8 %254, 0
  br i1 %255, label %256, label %268

256:                                              ; preds = %251
  tail call void (ptr, ...) @error(ptr noundef nonnull @.str.143) #23
  %257 = load ptr, ptr %252, align 8, !tbaa !704
  br label %268

258:                                              ; preds = %12
  %259 = and i64 %13, 131072
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %268, label %261

261:                                              ; preds = %258
  %262 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %263 = load ptr, ptr %262, align 8, !tbaa !704
  %264 = load i64, ptr %263, align 8
  %265 = and i64 %264, 65535
  %266 = icmp eq i64 %265, 14
  br i1 %266, label %267, label %268

267:                                              ; preds = %261
  store i32 0, ptr %1, align 4, !tbaa !680
  br label %268

268:                                              ; preds = %60, %66, %72, %53, %49, %206, %15, %25, %20, %29, %84, %89, %220, %251, %267, %261, %258, %12, %67, %256, %249, %243, %234, %225, %218, %212, %205, %192, %172, %154, %141, %131, %121, %111, %94, %87, %83, %37, %35, %28, %18
  %269 = phi ptr [ %257, %256 ], [ %250, %249 ], [ %4, %243 ], [ %4, %234 ], [ %4, %212 ], [ %226, %225 ], [ %219, %218 ], [ %113, %111 ], [ %143, %141 ], [ %133, %131 ], [ %123, %121 ], [ %100, %172 ], [ %100, %192 ], [ %100, %154 ], [ %199, %205 ], [ %95, %94 ], [ %75, %87 ], [ %75, %83 ], [ %38, %37 ], [ %36, %35 ], [ %22, %28 ], [ %19, %18 ], [ null, %67 ], [ null, %12 ], [ null, %258 ], [ null, %261 ], [ null, %267 ], [ null, %251 ], [ null, %220 ], [ null, %89 ], [ null, %84 ], [ null, %29 ], [ null, %20 ], [ null, %25 ], [ null, %15 ], [ null, %206 ], [ null, %60 ], [ %57, %66 ], [ %57, %72 ], [ %4, %53 ], [ %4, %49 ]
  ret ptr %269
}

; Function Attrs: optsize
declare void @inform(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @stmt_could_throw_p(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @fold(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @is_gimple_condexpr(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @pointer_set_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %0, ptr %1) unnamed_addr #0 !prof !1621 !PGOFuncName !1622 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1623

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %8) #24
  %10 = icmp eq i32 %9, %0
  %11 = zext i1 %10 to i8
  ret i8 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_edge(i32 %0, ptr %1) unnamed_addr #0 !prof !1624 !PGOFuncName !1625 {
  %3 = tail call fastcc ptr @ei_container(ptr %1) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1626

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @ei_container(ptr %1) #24
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi ptr [ %6, %5 ], [ null, %2 ]
  %9 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %8, i32 noundef %0) #24
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @ei_container(ptr readonly %0) unnamed_addr #0 !prof !1627 !PGOFuncName !1628 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4, !prof !1629

3:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.147, i32 noundef 687, ptr noundef nonnull @.str.2) #23
  br label %4

4:                                                ; preds = %1, %3
  %5 = load ptr, ptr %0, align 8, !tbaa !674
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_seq_empty_p(ptr noundef readonly %0) unnamed_addr #5 !prof !1630 !PGOFuncName !1631 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3, !prof !1632

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1432
  %5 = icmp eq ptr %4, null
  %6 = zext i1 %5 to i8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i8 [ 1, %1 ], [ %6, %3 ]
  ret i8 %8
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @phi_nodes(ptr nocapture noundef readonly %0) unnamed_addr #0 !prof !1633 !PGOFuncName !1634 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1029
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1635

6:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 510, ptr noundef nonnull @.str.2) #23
  br label %7

7:                                                ; preds = %1, %6
  %8 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !704
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11, !prof !1636

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.gimple_bb_info, ptr %9, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !1637
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi ptr [ %13, %11 ], [ null, %7 ]
  ret ptr %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_loop_p_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #5 !prof !735 !PGOFuncName !1638 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_loop_p_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !674
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_basic_block_heap_reserve(ptr nocapture noundef %0) unnamed_addr #0 !prof !1058 !PGOFuncName !1639 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  %3 = tail call fastcc i32 @VEC_basic_block_base_space(ptr noundef %2, i32 noundef 1) #24, !range !810
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1640

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #23
  store ptr %6, ptr %0, align 8, !tbaa !674
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_basic_block_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #2 !prof !1058 !PGOFuncName !1641 {
  %3 = load i32, ptr %0, align 8, !tbaa !733
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !733
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_basic_block_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !674
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_succ_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1642 !PGOFuncName !1643 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !921
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 1
  %6 = zext i1 %5 to i8
  ret i8 %6
}

; Function Attrs: optsize
declare i32 @lookup_stmt_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_eh_region_from_lp_number_fn(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @eh_region_outermost(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @delete_from_dominance_info(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_bb_from_loops(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @move_block_after(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @get_def_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1644 !PGOFuncName !1645 {
  %2 = load ptr, ptr %0, align 8, !tbaa !674
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @gimple_phi_result_ptr(ptr noundef readnone %0) unnamed_addr #16 !prof !1646 !PGOFuncName !1647 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: optsize
declare void @remove_phi_node(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @replace_ssa_name(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1648 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #25
  %5 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  store ptr %6, ptr %4, align 8, !tbaa !674
  %7 = tail call zeroext i8 @is_gimple_reg(ptr noundef %0) #23
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5447, ptr noundef nonnull @.str.2) #23
  br label %10

10:                                               ; preds = %3, %9
  %11 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef nonnull %0) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  call fastcc void @replace_by_duplicate_decl(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2) #24
  %14 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !704
  tail call void @push_cfun(ptr noundef %15) #23
  %16 = load ptr, ptr @cfun, align 8, !tbaa !674
  %17 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %16) #24, !range !695
  %18 = icmp eq i8 %17, 0
  %19 = load ptr, ptr %4, align 8, !tbaa !674
  br i1 %18, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call zeroext i8 @add_referenced_var(ptr noundef %19) #23
  br label %22

22:                                               ; preds = %20, %13
  %23 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !704
  %25 = tail call fastcc ptr @make_ssa_name(ptr noundef %19, ptr noundef %24) #24
  %26 = load i64, ptr %0, align 8
  %27 = and i64 %26, 4294967296
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  tail call void @set_default_def(ptr noundef %19, ptr noundef %25) #23
  br label %30

30:                                               ; preds = %29, %22
  tail call void @pop_cfun() #23
  %31 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef nonnull %0) #23
  store ptr %25, ptr %31, align 8, !tbaa !674
  br label %34

32:                                               ; preds = %10
  %33 = load ptr, ptr %11, align 8, !tbaa !674
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi ptr [ %33, %32 ], [ %25, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #25
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_ssa_use_from_ptr(ptr noundef %0, ptr noundef %1) unnamed_addr #20 !prof !735 !PGOFuncName !1649 {
  tail call fastcc void @delink_imm_use(ptr noundef %0) #24
  %3 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !1074
  store ptr %1, ptr %4, align 8, !tbaa !674
  tail call fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) #24
  ret void
}

; Function Attrs: optsize
declare ptr @walk_gimple_stmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @move_stmt_r(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 !prof !735 !PGOFuncName !1650 {
  %4 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !999
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef byval(%struct.gimple_stmt_iterator) align 8 %0) #24
  %7 = load ptr, ptr %5, align 8, !tbaa !1085
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = tail call fastcc ptr @gimple_block(ptr noundef %6) #24
  %11 = icmp eq ptr %10, %7
  %12 = icmp eq ptr %10, null
  %13 = or i1 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %9, %3
  %15 = getelementptr inbounds %struct.move_stmt_d, ptr %5, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !1087
  tail call fastcc void @gimple_set_block(ptr noundef %6, ptr noundef %16) #24
  br label %17

17:                                               ; preds = %9, %14
  %18 = tail call fastcc i32 @gimple_code(ptr noundef %6) #24, !range !684
  %19 = trunc i32 %18 to i8
  switch i8 %19, label %42 [
    i8 8, label %20
    i8 14, label %36
    i8 15, label %39
    i8 28, label %50
    i8 21, label %50
  ]

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %6) #24
  %22 = icmp eq ptr %21, null
  br i1 %22, label %50, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.tree_function_decl, ptr %21, i64 0, i32 5
  %25 = load i32, ptr %24, align 8
  %26 = and i32 %25, 6144
  %27 = icmp eq i32 %26, 6144
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = and i32 %25, 2047
  switch i32 %29, label %50 [
    i32 554, label %30
    i32 552, label %33
    i32 553, label %33
  ]

30:                                               ; preds = %28
  %31 = tail call fastcc ptr @gimple_call_arg(ptr noundef %6, i32 noundef 1) #24
  %32 = tail call fastcc ptr @move_stmt_eh_region_tree_nr(ptr noundef %31, ptr noundef nonnull %5) #24
  tail call fastcc void @gimple_call_set_arg(ptr noundef %6, i32 noundef 1, ptr noundef %32) #24
  br label %33

33:                                               ; preds = %28, %28, %30
  %34 = tail call fastcc ptr @gimple_call_arg(ptr noundef %6, i32 noundef 0) #24
  %35 = tail call fastcc ptr @move_stmt_eh_region_tree_nr(ptr noundef %34, ptr noundef nonnull %5) #24
  tail call fastcc void @gimple_call_set_arg(ptr noundef %6, i32 noundef 0, ptr noundef %35) #24
  br label %50

36:                                               ; preds = %17
  %37 = tail call fastcc i32 @gimple_resx_region(ptr noundef %6) #24
  %38 = tail call fastcc i32 @move_stmt_eh_region_nr(i32 noundef %37, ptr noundef nonnull %5) #24
  tail call fastcc void @gimple_resx_set_region(ptr noundef %6, i32 noundef %38) #24
  br label %50

39:                                               ; preds = %17
  %40 = tail call fastcc i32 @gimple_eh_dispatch_region(ptr noundef %6) #24
  %41 = tail call fastcc i32 @move_stmt_eh_region_nr(i32 noundef %40, ptr noundef nonnull %5) #24
  tail call fastcc void @gimple_eh_dispatch_set_region(ptr noundef %6, i32 noundef %41) #24
  br label %50

42:                                               ; preds = %17
  %43 = tail call fastcc zeroext i8 @is_gimple_omp(ptr noundef %6) #24, !range !695
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.move_stmt_d, ptr %5, i64 0, i32 7
  %47 = load i8, ptr %46, align 8, !tbaa !1093
  store i8 0, ptr %46, align 8, !tbaa !1093
  store i8 1, ptr %1, align 1, !tbaa !704
  %48 = tail call fastcc ptr @gimple_omp_body(ptr noundef %6) #24
  %49 = tail call ptr @walk_gimple_seq(ptr noundef %48, ptr noundef nonnull @move_stmt_r, ptr noundef nonnull @move_stmt_op, ptr noundef nonnull %2) #23
  store i8 %47, ptr %46, align 8, !tbaa !1093
  br label %50

50:                                               ; preds = %20, %23, %28, %33, %42, %45, %17, %17, %39, %36
  ret ptr null
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noalias noundef ptr @move_stmt_op(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 !prof !735 !PGOFuncName !1651 {
  %4 = alloca %struct.tree_map, align 8
  %5 = getelementptr inbounds %struct.walk_stmt_info, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !999
  %7 = load ptr, ptr %0, align 8, !tbaa !674
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !680
  %12 = add i32 %11, -4
  %13 = icmp ult i32 %12, 7
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = tail call ptr @tree_block(ptr noundef nonnull %7) #23
  %16 = load ptr, ptr %15, align 8, !tbaa !674
  %17 = icmp eq ptr %16, null
  br i1 %17, label %88, label %18

18:                                               ; preds = %14
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5498, ptr noundef nonnull @.str.2) #23
  br label %88

19:                                               ; preds = %3
  %20 = icmp eq i32 %11, 3
  %21 = icmp eq i64 %9, 141
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %85

23:                                               ; preds = %19
  %24 = trunc i64 %8 to i16
  switch i16 %24, label %50 [
    i16 141, label %25
    i16 30, label %31
  ]

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !1090
  %28 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !1089
  %30 = tail call fastcc ptr @replace_ssa_name(ptr noundef nonnull %7, ptr noundef %27, ptr noundef %29) #24
  store ptr %30, ptr %0, align 8, !tbaa !674
  br label %84

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !1091
  %34 = icmp eq ptr %33, null
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  store ptr %7, ptr %4, align 8, !tbaa !1114
  %36 = getelementptr inbounds %struct.tree_decl_minimal, ptr %7, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !704
  %38 = call ptr @htab_find_with_hash(ptr noundef nonnull %33, ptr noundef nonnull %4, i32 noundef %37) #23
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.tree_map, ptr %38, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !1115
  store ptr %42, ptr %0, align 8, !tbaa !674
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi ptr [ %42, %40 ], [ %7, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi ptr [ %44, %43 ], [ %7, %31 ]
  %47 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !1089
  %49 = getelementptr inbounds %struct.tree_decl_minimal, ptr %46, i64 0, i32 4
  store ptr %48, ptr %49, align 8, !tbaa !704
  br label %84

50:                                               ; preds = %23
  %51 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 7
  %52 = load i8, ptr %51, align 8, !tbaa !1093
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %50
  %55 = trunc i64 %8 to i16
  switch i16 %55, label %65 [
    i16 32, label %56
    i16 33, label %59
  ]

56:                                               ; preds = %54
  %57 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %7) #24, !range !695
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54, %56
  %60 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !1090
  %62 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !1089
  tail call fastcc void @replace_by_duplicate_decl(ptr noundef nonnull %0, ptr noundef %61, ptr noundef %63) #24
  %64 = load i64, ptr %7, align 8
  br label %65

65:                                               ; preds = %54, %56, %59
  %66 = phi i64 [ %8, %56 ], [ %64, %59 ], [ %8, %54 ]
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %84 [
    i16 32, label %73
    i16 34, label %73
    i16 36, label %73
    i16 141, label %68
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.tree_ssa_name, ptr %7, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !704
  %71 = load i64, ptr %70, align 8
  %72 = trunc i64 %71 to i16
  switch i16 %72, label %84 [
    i16 32, label %73
    i16 34, label %73
    i16 36, label %73
  ]

73:                                               ; preds = %68, %68, %68, %65, %65, %65
  %74 = load ptr, ptr @cfun, align 8, !tbaa !674
  %75 = tail call fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef %74) #24, !range !695
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.move_stmt_d, ptr %6, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !1089
  %80 = getelementptr inbounds %struct.tree_function_decl, ptr %79, i64 0, i32 1
  %81 = load ptr, ptr %80, align 8, !tbaa !704
  tail call void @push_cfun(ptr noundef %81) #23
  %82 = load ptr, ptr %0, align 8, !tbaa !674
  %83 = tail call zeroext i8 @add_referenced_var(ptr noundef %82) #23
  tail call void @pop_cfun() #23
  br label %84

84:                                               ; preds = %68, %65, %45, %73, %77, %50, %25
  store i32 0, ptr %1, align 4, !tbaa !680
  br label %88

85:                                               ; preds = %19
  %86 = icmp eq i32 %11, 2
  br i1 %86, label %87, label %88

87:                                               ; preds = %85
  store i32 0, ptr %1, align 4, !tbaa !680
  br label %88

88:                                               ; preds = %18, %14, %84, %87, %85
  ret ptr null
}

; Function Attrs: optsize
declare zeroext i8 @maybe_duplicate_eh_stmt_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @remove_stmt_from_eh_lp_fn(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_duplicate_stmt_histograms(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @gimple_remove_stmt_histograms(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_stmt_operands(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @replace_by_duplicate_decl(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1652 {
  %4 = load ptr, ptr %0, align 8, !tbaa !674
  %5 = getelementptr inbounds %struct.tree_function_decl, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !704
  %7 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !704
  %9 = icmp eq ptr %8, %2
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = tail call ptr @pointer_map_contains(ptr noundef %1, ptr noundef nonnull %4) #23
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  %14 = tail call ptr @pointer_map_insert(ptr noundef %1, ptr noundef nonnull %4) #23
  %15 = load i64, ptr %4, align 8
  %16 = trunc i64 %15 to i16
  switch i16 %16, label %31 [
    i16 32, label %22
    i16 34, label %22
    i16 36, label %22
    i16 141, label %17
  ]

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.tree_ssa_name, ptr %4, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !704
  %20 = load i64, ptr %19, align 8
  %21 = trunc i64 %20 to i16
  switch i16 %21, label %31 [
    i16 32, label %22
    i16 34, label %22
    i16 36, label %22
  ]

22:                                               ; preds = %17, %17, %17, %13, %13, %13
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %4, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !704
  %25 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !704
  %27 = tail call ptr @copy_var_decl(ptr noundef nonnull %4, ptr noundef %24, ptr noundef %26) #23
  %28 = getelementptr inbounds %struct.function, ptr %6, i64 0, i32 9
  %29 = load ptr, ptr %28, align 8, !tbaa !961
  %30 = tail call ptr @tree_cons_stat(ptr noundef null, ptr noundef %27, ptr noundef %29) #23
  store ptr %30, ptr %28, align 8, !tbaa !961
  br label %37

31:                                               ; preds = %17, %13
  %32 = and i64 %15, 65535
  %33 = icmp eq i64 %32, 33
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 5423, ptr noundef nonnull @.str.2) #23
  br label %35

35:                                               ; preds = %31, %34
  %36 = tail call ptr @copy_node_stat(ptr noundef nonnull %4) #23
  br label %37

37:                                               ; preds = %35, %22
  %38 = phi ptr [ %27, %22 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct.tree_decl_minimal, ptr %38, i64 0, i32 4
  store ptr %2, ptr %39, align 8, !tbaa !704
  store ptr %38, ptr %14, align 8, !tbaa !674
  br label %42

40:                                               ; preds = %10
  %41 = load ptr, ptr %11, align 8, !tbaa !674
  br label %42

42:                                               ; preds = %40, %37
  %43 = phi ptr [ %41, %40 ], [ %38, %37 ]
  store ptr %43, ptr %0, align 8, !tbaa !674
  br label %44

44:                                               ; preds = %3, %42
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(ptr noundef readonly %0) unnamed_addr #9 !prof !1653 !PGOFuncName !1654 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !1247

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1655
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7, !prof !1246

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.gimple_df, ptr %5, i64 0, i32 10
  %9 = load i8, ptr %8, align 8
  %10 = and i8 %9, 1
  br label %11

11:                                               ; preds = %7, %3, %1
  %12 = phi i8 [ 0, %3 ], [ 0, %1 ], [ %10, %7 ]
  ret i8 %12
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @make_ssa_name(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !735 !PGOFuncName !1656 {
  %3 = load ptr, ptr @cfun, align 8, !tbaa !674
  %4 = tail call ptr @make_ssa_name_fn(ptr noundef %3, ptr noundef %0, ptr noundef %1) #23
  ret ptr %4
}

; Function Attrs: optsize
declare void @set_default_def(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_var_decl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_cons_stat(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @copy_node_stat(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @make_ssa_name_fn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @link_imm_use(ptr noundef %0, ptr noundef %1) unnamed_addr #20 !prof !735 !PGOFuncName !1657 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = load i64, ptr %1, align 8
  %6 = and i64 %5, 65535
  %7 = icmp eq i64 %6, 141
  br i1 %7, label %9, label %8

8:                                                ; preds = %4, %2
  store ptr null, ptr %0, align 8, !tbaa !1533
  br label %11

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.tree_ssa_name, ptr %1, i64 0, i32 5
  tail call fastcc void @link_imm_use_to_list(ptr noundef %0, ptr noundef nonnull %10) #24
  br label %11

11:                                               ; preds = %9, %8
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @move_stmt_eh_region_tree_nr(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !1658 {
  %3 = tail call i64 @tree_low_cst(ptr noundef %0, i32 noundef 0) #23
  %4 = trunc i64 %3 to i32
  %5 = tail call fastcc i32 @move_stmt_eh_region_nr(i32 noundef %4, ptr noundef %1) #24
  %6 = sext i32 %5 to i64
  %7 = tail call ptr @build_int_cst(ptr noundef null, i64 noundef %6) #23
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @gimple_call_set_arg(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 !prof !735 !PGOFuncName !1659 {
  %4 = add nuw nsw i32 %1, 3
  tail call fastcc void @gimple_set_op(ptr noundef %0, i32 noundef %4, ptr noundef %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_resx_region(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1660 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !704
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @move_stmt_eh_region_nr(i32 noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !735 !PGOFuncName !1661 {
  %3 = tail call ptr @get_eh_region_from_number(i32 noundef %0) #23
  %4 = getelementptr inbounds %struct.move_stmt_d, ptr %1, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !1092
  %6 = tail call ptr @pointer_map_contains(ptr noundef %5, ptr noundef %3) #23
  %7 = load ptr, ptr %6, align 8, !tbaa !674
  %8 = getelementptr inbounds %struct.eh_region_d, ptr %7, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !1662
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_resx_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !735 !PGOFuncName !1663 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !704
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_eh_dispatch_region(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1664 {
  %2 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !704
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_eh_dispatch_set_region(ptr nocapture noundef writeonly %0, i32 noundef %1) unnamed_addr #11 !prof !735 !PGOFuncName !1665 {
  %3 = getelementptr inbounds %struct.gimple_statement_eh_ctrl, ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 8, !tbaa !704
  ret void
}

; Function Attrs: optsize
declare ptr @walk_gimple_seq(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_omp_body(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1666 {
  %2 = getelementptr inbounds %struct.gimple_statement_omp, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !704
  ret ptr %3
}

; Function Attrs: optsize
declare i64 @tree_low_cst(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @get_eh_region_from_number(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @tree_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1667 {
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
declare void @decl_value_expr_insert(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_value_expr_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @dump_double_int(ptr noundef, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @decl_function_context(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @verify_eh_edges(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @tree_int_cst_lt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @verify_eh_dispatch_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare i32 @dom_info_state(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @verify_dominators(i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @alloc_block() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ggc_alloc_cleared_stat(i64 noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_bb_seq(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 !prof !1668 !PGOFuncName !1669 {
  %3 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %4 = load i32, ptr %3, align 8, !tbaa !1029
  %5 = and i32 %4, 512
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !1670

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.64, i32 noundef 248, ptr noundef nonnull @.str.2) #23
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !704
  store ptr %1, ptr %10, align 8, !tbaa !1484
  ret void
}

; Function Attrs: optsize
declare ptr @gimple_seq_alloc() local_unnamed_addr #1

; Function Attrs: optsize
declare void @link_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @redirect_eh_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_try_redirect_by_replacing_jump(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1671 !PGOFuncName !1672 {
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !1028
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #25
  %5 = getelementptr inbounds %struct.basic_block_def, ptr %4, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !921
  %7 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %6) #24
  %8 = icmp eq i32 %7, 2
  br i1 %8, label %9, label %27, !prof !1673

9:                                                ; preds = %2
  %10 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef 0) #24
  %11 = icmp eq ptr %10, %0
  %12 = zext i1 %11 to i32
  %13 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %6, i32 noundef %12) #24
  %14 = getelementptr inbounds %struct.edge_def, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !922
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %17, label %27, !prof !1674

17:                                               ; preds = %9
  call fastcc void @gsi_last_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef nonnull %4) #24
  %18 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24, !range !695
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %27, !prof !1675

20:                                               ; preds = %17
  %21 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %3) #24
  %22 = tail call fastcc i32 @gimple_code(ptr noundef %21) #24, !range !684
  %23 = trunc i32 %22 to i8
  switch i8 %23, label %27 [
    i8 1, label %24
    i8 5, label %24
  ], !prof !1676

24:                                               ; preds = %20, %20
  call void @gsi_remove(ptr noundef nonnull %3, i8 noundef zeroext 1) #23
  %25 = call ptr @ssa_redirect_edge(ptr noundef nonnull %0, ptr noundef %1) #23
  %26 = getelementptr inbounds %struct.edge_def, ptr %25, i64 0, i32 7
  store i32 1, ptr %26, align 8, !tbaa !863
  br label %27

27:                                               ; preds = %20, %17, %2, %9, %24
  %28 = phi ptr [ %25, %24 ], [ null, %9 ], [ null, %2 ], [ null, %17 ], [ null, %20 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #25
  ret ptr %28
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_cases_for_edge(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1012 !PGOFuncName !1677 {
  %3 = tail call fastcc zeroext i8 @recording_case_labels_p() #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %35, label %5, !prof !1228

5:                                                ; preds = %2
  %6 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  %7 = tail call ptr @pointer_map_contains(ptr noundef %6, ptr noundef %0) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %32, !prof !1678

9:                                                ; preds = %5
  %10 = tail call fastcc i32 @gimple_switch_num_labels(ptr noundef %1) #24
  %11 = zext i32 %10 to i64
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %29, label %13, !prof !1679

13:                                               ; preds = %9, %13
  %14 = phi i64 [ %27, %13 ], [ 0, %9 ]
  %15 = trunc i64 %14 to i32
  %16 = tail call fastcc ptr @gimple_switch_label(ptr noundef %1, i32 noundef %15) #24
  %17 = getelementptr inbounds %struct.tree_exp, ptr %16, i64 1, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !704
  %19 = load ptr, ptr @cfun, align 8, !tbaa !674
  %20 = tail call ptr @label_to_block_fn(ptr noundef %19, ptr noundef %18) #24
  %21 = load ptr, ptr %0, align 8, !tbaa !1028
  %22 = tail call ptr @find_edge(ptr noundef %21, ptr noundef %20) #23
  %23 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  %24 = tail call ptr @pointer_map_insert(ptr noundef %23, ptr noundef %22) #23
  %25 = load ptr, ptr %24, align 8, !tbaa !674
  %26 = getelementptr inbounds %struct.tree_common, ptr %16, i64 0, i32 1
  store ptr %25, ptr %26, align 8, !tbaa !704
  store ptr %16, ptr %24, align 8, !tbaa !674
  %27 = add nuw nsw i64 %14, 1
  %28 = icmp eq i64 %27, %11
  br i1 %28, label %29, label %13, !prof !1680, !llvm.loop !1681

29:                                               ; preds = %13, %9
  %30 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  %31 = tail call ptr @pointer_map_contains(ptr noundef %30, ptr noundef %0) #23
  br label %32

32:                                               ; preds = %5, %29
  %33 = phi ptr [ %31, %29 ], [ %7, %5 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !674
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi ptr [ null, %2 ], [ %34, %32 ]
  ret ptr %36
}

; Function Attrs: optsize
declare void @redirect_eh_dispatch_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @ssa_redirect_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @recording_case_labels_p() unnamed_addr #18 !prof !1012 !PGOFuncName !1682 {
  %1 = load ptr, ptr @edge_to_cases, align 8, !tbaa !674
  %2 = icmp ne ptr %1, null
  %3 = zext i1 %2 to i8
  ret i8 %3
}

; Function Attrs: optsize
declare void @dump_bb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @free_numbers_of_iterations_estimates_loop(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @release_defs(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_phi_nodes_and_edges_for_unreachable_block(ptr noundef %0) unnamed_addr #0 !prof !1237 !PGOFuncName !1683 {
  tail call void @remove_phi_nodes(ptr noundef %0) #23
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !921
  %4 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %3) #24
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %12, label %6, !prof !1684

6:                                                ; preds = %1, %6
  %7 = phi ptr [ %9, %6 ], [ %3, %1 ]
  %8 = tail call fastcc ptr @VEC_edge_base_index(ptr noundef %7, i32 noundef 0) #24
  tail call void @remove_edge(ptr noundef %8) #23
  %9 = load ptr, ptr %2, align 8, !tbaa !921
  %10 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %9) #24
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %6, !prof !1685, !llvm.loop !1686

12:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: optsize
declare void @remove_phi_nodes(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @unlink_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @single_pred_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1687 !PGOFuncName !1688 {
  %2 = load ptr, ptr %0, align 8, !tbaa !891
  %3 = tail call fastcc i32 @VEC_edge_base_length(ptr noundef %2) #24
  %4 = icmp eq i32 %3, 1
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: optsize
declare zeroext i8 @name_mappings_registered_p() local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @may_propagate_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @loops_state_satisfies_p() unnamed_addr #9 !prof !735 !PGOFuncName !1689 {
  %1 = load ptr, ptr @cfun, align 8, !tbaa !674
  %2 = getelementptr inbounds %struct.function, ptr %1, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !874
  %4 = load i32, ptr %3, align 8, !tbaa !1690
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 5
  %7 = and i8 %6, 1
  ret i8 %7
}

; Function Attrs: optsize
declare void @gsi_insert_seq_after(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_phi_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @create_new_def_for(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @maybe_duplicate_eh_stmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @op_iter_init_def(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !1549 !PGOFuncName !1691 {
  tail call fastcc void @op_iter_init(ptr noundef %0, ptr noundef %1, i32 noundef 10) #24
  %3 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 1
  store i32 3, ptr %3, align 4, !tbaa !1517
  %4 = tail call fastcc ptr @op_iter_next_def(ptr noundef %0) #24
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc ptr @op_iter_next_def(ptr nocapture noundef %0) unnamed_addr #7 !prof !1692 !PGOFuncName !1693 {
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !1543
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !1694

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.def_optype_d, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !1695
  %8 = load ptr, ptr %3, align 8, !tbaa !1545
  store ptr %8, ptr %2, align 8, !tbaa !1543
  br label %10

9:                                                ; preds = %1
  store i8 1, ptr %0, align 8, !tbaa !1513
  br label %10

10:                                               ; preds = %9, %5
  %11 = phi ptr [ %7, %5 ], [ null, %9 ]
  ret ptr %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @reinstall_phi_args(ptr noundef %0, ptr noundef %1) unnamed_addr #0 !prof !1053 !PGOFuncName !1696 {
  %3 = alloca ptr, align 8
  %4 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #25
  %5 = tail call ptr @redirect_edge_var_map_vector(ptr noundef %1) #23
  %6 = icmp eq ptr %5, null
  br i1 %6, label %30, label %7, !prof !1697

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.edge_def, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !922
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %4, ptr noundef %9) #23
  %10 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef nonnull %5, i32 noundef 0, ptr noundef nonnull %3) #24, !range !810
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %29, label %12, !prof !1698

12:                                               ; preds = %7, %24
  %13 = phi i32 [ %26, %24 ], [ 0, %7 ]
  %14 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24, !range !695
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %29, !prof !1699

16:                                               ; preds = %12
  %17 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %4) #24
  %18 = load ptr, ptr %3, align 8, !tbaa !674
  %19 = call fastcc ptr @redirect_edge_var_map_result(ptr noundef %18) #24
  %20 = call fastcc ptr @redirect_edge_var_map_def(ptr noundef %18) #24
  %21 = call fastcc ptr @gimple_phi_result(ptr noundef %17) #24
  %22 = icmp eq ptr %19, %21
  br i1 %22, label %24, label %23, !prof !1700

23:                                               ; preds = %16
  call void @fancy_abort(ptr noundef nonnull @.str.1, i32 noundef 2430, ptr noundef nonnull @.str.2) #23
  br label %24

24:                                               ; preds = %16, %23
  %25 = call fastcc i32 @redirect_edge_var_map_location(ptr noundef %18) #24
  call void @add_phi_arg(ptr noundef %17, ptr noundef %20, ptr noundef %0, i32 noundef %25) #23
  %26 = add nuw nsw i32 %13, 1
  call fastcc void @gsi_next(ptr noundef nonnull %4) #24
  %27 = call fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef nonnull %5, i32 noundef %26, ptr noundef nonnull %3) #24, !range !810
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %12, !prof !1701, !llvm.loop !1702

29:                                               ; preds = %12, %24, %7
  call void @redirect_edge_var_map_clear(ptr noundef %1) #23
  br label %30

30:                                               ; preds = %2, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #25
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #25
  ret void
}

; Function Attrs: optsize
declare ptr @redirect_edge_var_map_vector(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_edge_var_map_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #2 !prof !1703 !PGOFuncName !1704 {
  %4 = load i32, ptr %0, align 8, !tbaa !1705
  %5 = icmp ugt i32 %4, %1
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_edge_var_map_base, ptr %0, i64 0, i32 2, i64 %6
  %8 = select i1 %5, ptr %7, ptr null, !prof !1699
  %9 = zext i1 %5 to i32
  store ptr %8, ptr %2, align 8, !tbaa !674
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_result(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1707 !PGOFuncName !1708 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1709
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @redirect_edge_var_map_def(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1707 !PGOFuncName !1711 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !1712
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @redirect_edge_var_map_location(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !1707 !PGOFuncName !1713 {
  %2 = getelementptr inbounds %struct._edge_var_map, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 8, !tbaa !1714
  ret i32 %3
}

; Function Attrs: optsize
declare void @redirect_edge_var_map_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal fastcc void @gimple_phi_set_result(ptr nocapture noundef writeonly %0, ptr noundef %1) unnamed_addr #11 !prof !735 !PGOFuncName !1715 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !704
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @need_fake_edge_p(ptr noundef %0) unnamed_addr #0 !prof !735 !PGOFuncName !1716 {
  %2 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !695
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #24
  %6 = tail call i32 @gimple_call_flags(ptr noundef %0) #23
  br label %7

7:                                                ; preds = %4, %1
  %8 = phi ptr [ %5, %4 ], [ null, %1 ]
  %9 = phi i32 [ %6, %4 ], [ 0, %1 ]
  %10 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #24, !range !695
  %11 = icmp ne i8 %10, 0
  %12 = icmp ne ptr %8, null
  %13 = select i1 %11, i1 %12, i1 false
  br i1 %13, label %14, label %31

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.tree_function_decl, ptr %8, i64 0, i32 5
  %16 = load i32, ptr %15, align 8
  %17 = lshr i32 %16, 11
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  %20 = and i32 %9, 64
  %21 = icmp ne i32 %20, 0
  %22 = select i1 %19, i1 %21, i1 false
  %23 = and i32 %9, 128
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %22, i1 %24, i1 false
  br i1 %25, label %26, label %31

26:                                               ; preds = %14
  %27 = icmp eq i32 %18, 3
  %28 = and i32 %16, 2047
  %29 = icmp eq i32 %28, 453
  %30 = and i1 %29, %27
  br i1 %30, label %31, label %45

31:                                               ; preds = %26, %14, %7
  %32 = and i32 %9, 8
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %11, i1 %33, i1 false
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = tail call fastcc i32 @gimple_code(ptr noundef %0) #24, !range !684
  %37 = icmp eq i32 %36, 7
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = tail call fastcc zeroext i8 @gimple_asm_volatile_p(ptr noundef %0) #24, !range !695
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = tail call fastcc zeroext i8 @gimple_asm_input_p(ptr noundef %0) #24, !range !695
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %38, %41, %31, %26, %44
  %46 = phi i8 [ 0, %44 ], [ 0, %26 ], [ 1, %31 ], [ 1, %41 ], [ 1, %38 ]
  ret i8 %46
}

; Function Attrs: optsize
declare void @gsi_insert_on_edge(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_nop() local_unnamed_addr #1

; Function Attrs: optsize
declare void @gsi_commit_edge_inserts() local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @split_block(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @verify_flow_info() local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_volatile_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1717 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 17
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_asm_input_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1718 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 16
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: optsize
declare void @reserve_phi_args_for_new_edge(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @remove_phi_args(ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare ptr @gimple_build_cond_from_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare zeroext i8 @warning_at(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_no_warning_p(ptr nocapture noundef readonly %0) unnamed_addr #5 !prof !735 !PGOFuncName !1719 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 8
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_warn_unused_result(ptr noundef %0) unnamed_addr #0 !prof !1720 !PGOFuncName !1721 {
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #25
  call fastcc void @gsi_start(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %0) #24
  %3 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %42, !prof !1722

5:                                                ; preds = %1, %39
  %6 = tail call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24
  %7 = tail call fastcc i32 @gimple_code(ptr noundef %6) #24, !range !684
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %39 [
    i8 10, label %9
    i8 17, label %11
    i8 11, label %14
    i8 12, label %16
    i8 8, label %18
  ], !prof !1723

9:                                                ; preds = %5
  %10 = tail call fastcc ptr @gimple_bind_body(ptr noundef %6) #24
  tail call fastcc void @do_warn_unused_result(ptr noundef %10) #24
  br label %39

11:                                               ; preds = %5
  %12 = tail call fastcc ptr @gimple_try_eval(ptr noundef %6) #24
  tail call fastcc void @do_warn_unused_result(ptr noundef %12) #24
  %13 = tail call fastcc ptr @gimple_try_cleanup(ptr noundef %6) #24
  tail call fastcc void @do_warn_unused_result(ptr noundef %13) #24
  br label %39

14:                                               ; preds = %5
  %15 = tail call fastcc ptr @gimple_catch_handler(ptr noundef %6) #24
  tail call fastcc void @do_warn_unused_result(ptr noundef %15) #24
  br label %39

16:                                               ; preds = %5
  %17 = tail call fastcc ptr @gimple_eh_filter_failure(ptr noundef %6) #24
  tail call fastcc void @do_warn_unused_result(ptr noundef %17) #24
  br label %39

18:                                               ; preds = %5
  %19 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %6) #24
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %39, !prof !1724

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %6) #24
  %23 = tail call fastcc ptr @gimple_call_fn(ptr noundef %6) #24
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !704
  %26 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !704
  %28 = getelementptr inbounds %struct.tree_type, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !704
  %30 = tail call ptr @lookup_attribute(ptr noundef nonnull @.str.182, ptr noundef %29) #23
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32, !prof !1615

32:                                               ; preds = %21
  %33 = tail call fastcc i32 @gimple_location(ptr noundef %6) #24
  %34 = icmp eq ptr %22, null
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %33, i32 noundef 227, ptr noundef nonnull @.str.183, ptr noundef nonnull %22) #23
  br label %39

37:                                               ; preds = %32
  %38 = tail call zeroext i8 (i32, i32, ptr, ...) @warning_at(i32 noundef %33, i32 noundef 227, ptr noundef nonnull @.str.184) #23
  br label %39

39:                                               ; preds = %35, %37, %5, %21, %18, %16, %14, %11, %9
  call fastcc void @gsi_next(ptr noundef nonnull %2) #24
  %40 = tail call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #24, !range !695
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %5, label %42, !prof !1725, !llvm.loop !1726

42:                                               ; preds = %39, %1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #25
  ret void
}

; Function Attrs: optsize
declare ptr @lookup_attribute(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

attributes #0 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { nounwind optsize }
attributes #24 = { optsize }
attributes #25 = { nounwind }
attributes #26 = { cold optsize }
attributes #27 = { cold }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!650}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!35 = !{ptr @init_empty_tree_cfg_for_function, ptr @init_flow, i64 41}
!36 = !{ptr @init_empty_tree_cfg_for_function, ptr @VEC_basic_block_gc_alloc, i64 82}
!37 = !{ptr @init_empty_tree_cfg_for_function, ptr @VEC_basic_block_gc_safe_grow_cleared, i64 82}
!38 = !{ptr @init_empty_tree_cfg_for_function, ptr @VEC_basic_block_base_replace, i64 82}
!39 = !{ptr @VEC_basic_block_gc_alloc, ptr @vec_gc_p_reserve_exact, i64 82}
!40 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_length, i64 580}
!41 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_gc_safe_grow, i64 580}
!42 = !{ptr @VEC_basic_block_gc_safe_grow_cleared, ptr @VEC_basic_block_base_address, i64 580}
!43 = !{ptr @init_empty_tree_cfg, ptr @init_empty_tree_cfg_for_function, i64 41}
!44 = !{ptr @execute_build_cfg, ptr @gimple_body, i64 40}
!45 = !{ptr @execute_build_cfg, ptr @build_gimple_cfg, i64 40}
!46 = !{ptr @execute_build_cfg, ptr @gimple_set_body, i64 40}
!47 = !{ptr @fold_cond_expr_cond, ptr @last_stmt, i64 484668}
!48 = !{ptr @fold_cond_expr_cond, ptr @gimple_code, i64 470602}
!49 = !{ptr @fold_cond_expr_cond, ptr @gimple_location, i64 423701}
!50 = !{ptr @fold_cond_expr_cond, ptr @fold_defer_overflow_warnings, i64 423701}
!51 = !{ptr @fold_cond_expr_cond, ptr @gimple_cond_code, i64 423701}
!52 = !{ptr @fold_cond_expr_cond, ptr @gimple_cond_lhs, i64 423701}
!53 = !{ptr @fold_cond_expr_cond, ptr @gimple_cond_rhs, i64 423701}
!54 = !{ptr @fold_cond_expr_cond, ptr @fold_binary_loc, i64 423701}
!55 = !{ptr @fold_cond_expr_cond, ptr @integer_zerop, i64 33863}
!56 = !{ptr @fold_cond_expr_cond, ptr @integer_onep, i64 33863}
!57 = !{ptr @fold_cond_expr_cond, ptr @fold_undefer_overflow_warnings, i64 423701}
!58 = !{ptr @fold_cond_expr_cond, ptr @gimple_cond_make_false, i64 64}
!59 = !{ptr @fold_cond_expr_cond, ptr @gimple_cond_make_true, i64 120}
!60 = !{ptr @last_stmt, ptr @gsi_last_bb, i64 16465541}
!61 = !{ptr @last_stmt, ptr @gsi_end_p, i64 16465542}
!62 = !{ptr @last_stmt, ptr @gsi_stmt, i64 16465525}
!63 = !{ptr @last_stmt, ptr @is_gimple_debug, i64 16465525}
!64 = !{ptr @last_stmt, ptr @gsi_prev, i64 1}
!65 = !{ptr @gimple_cond_lhs, ptr @gimple_op, i64 427292}
!66 = !{ptr @gimple_cond_rhs, ptr @gimple_op, i64 427292}
!67 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_lhs, i64 64}
!68 = !{ptr @gimple_cond_make_false, ptr @gimple_cond_set_rhs, i64 64}
!69 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_lhs, i64 120}
!70 = !{ptr @gimple_cond_make_true, ptr @gimple_cond_set_rhs, i64 120}
!71 = !{ptr @start_recording_case_labels, ptr @fancy_abort, i64 1}
!72 = !{ptr @start_recording_case_labels, ptr @pointer_map_create, i64 827}
!73 = !{ptr @end_recording_case_labels, ptr @pointer_map_traverse, i64 827}
!74 = !{ptr @end_recording_case_labels, ptr @pointer_map_destroy, i64 827}
!75 = !{ptr @label_to_block_fn, ptr @VEC_basic_block_base_index, i64 762167}
!76 = !{ptr @label_to_block_fn, ptr @gsi_start_bb, i64 1}
!77 = !{ptr @label_to_block_fn, ptr @gimple_build_label, i64 1}
!78 = !{ptr @label_to_block_fn, ptr @gsi_insert_before, i64 1}
!79 = !{ptr @label_to_block_fn, ptr @VEC_basic_block_base_length, i64 762167}
!80 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 1929070}
!81 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 1929070}
!82 = !{ptr @gimple_label_label, ptr @gimple_op, i64 871732}
!83 = !{ptr @cleanup_dead_labels, ptr @xcalloc, i64 118}
!84 = !{ptr @cleanup_dead_labels, ptr @gsi_start_bb, i64 900725}
!85 = !{ptr @cleanup_dead_labels, ptr @gsi_end_p, i64 1698903}
!86 = !{ptr @cleanup_dead_labels, ptr @gsi_stmt, i64 1691015}
!87 = !{ptr @cleanup_dead_labels, ptr @gimple_code, i64 2204939}
!88 = !{ptr @cleanup_dead_labels, ptr @gimple_label_label, i64 798178}
!89 = !{ptr @cleanup_dead_labels, ptr @gsi_next, i64 593684}
!90 = !{ptr @cleanup_dead_labels, ptr @last_stmt, i64 525349}
!91 = !{ptr @cleanup_dead_labels, ptr @gimple_cond_true_label, i64 424117}
!92 = !{ptr @cleanup_dead_labels, ptr @gimple_cond_false_label, i64 424117}
!93 = !{ptr @cleanup_dead_labels, ptr @main_block_label, i64 372321}
!94 = !{ptr @cleanup_dead_labels, ptr @gimple_cond_set_true_label, i64 142563}
!95 = !{ptr @cleanup_dead_labels, ptr @gimple_cond_set_false_label, i64 142563}
!96 = !{ptr @cleanup_dead_labels, ptr @gimple_switch_num_labels, i64 116}
!97 = !{ptr @cleanup_dead_labels, ptr @gimple_switch_label, i64 43810}
!98 = !{ptr @cleanup_dead_labels, ptr @gimple_asm_nlabels, i64 1}
!99 = !{ptr @cleanup_dead_labels, ptr @gimple_asm_label_op, i64 20}
!100 = !{ptr @cleanup_dead_labels, ptr @computed_goto_p, i64 43366}
!101 = !{ptr @cleanup_dead_labels, ptr @gimple_goto_dest, i64 43365}
!102 = !{ptr @cleanup_dead_labels, ptr @gimple_goto_set_dest, i64 43365}
!103 = !{ptr @cleanup_dead_labels, ptr @cleanup_dead_labels_eh, i64 118}
!104 = !{ptr @cleanup_dead_labels, ptr @gsi_remove, i64 204494}
!105 = !{ptr @cleanup_dead_labels, ptr @free, i64 118}
!106 = !{ptr @gimple_cond_true_label, ptr @gimple_op, i64 571486}
!107 = !{ptr @gimple_cond_false_label, ptr @gimple_op, i64 571486}
!108 = !{ptr @gimple_cond_set_true_label, ptr @gimple_set_op, i64 287544}
!109 = !{ptr @main_block_label, ptr @label_to_block_fn, i64 375458}
!110 = !{ptr @gimple_cond_set_false_label, ptr @gimple_set_op, i64 287544}
!111 = !{ptr @gimple_switch_num_labels, ptr @gimple_num_ops, i64 325}
!112 = !{ptr @gimple_switch_num_labels, ptr @fancy_abort, i64 1}
!113 = !{ptr @gimple_switch_label, ptr @gimple_num_ops, i64 172364}
!114 = !{ptr @gimple_switch_label, ptr @fancy_abort, i64 1}
!115 = !{ptr @gimple_switch_label, ptr @gimple_op, i64 172364}
!116 = !{ptr @computed_goto_p, ptr @gimple_code, i64 700159}
!117 = !{ptr @computed_goto_p, ptr @gimple_goto_dest, i64 87467}
!118 = !{ptr @gimple_goto_dest, ptr @gimple_op, i64 218665}
!119 = !{ptr @gimple_goto_set_dest, ptr @gimple_set_op, i64 43733}
!120 = !{ptr @cleanup_dead_labels_eh, ptr @VEC_eh_landing_pad_base_iterate, i64 118}
!121 = !{ptr @cleanup_dead_labels_eh, ptr @main_block_label, i64 4}
!122 = !{ptr @cleanup_dead_labels_eh, ptr @ehr_next, i64 1}
!123 = !{ptr @group_case_labels, ptr @last_stmt, i64 337603}
!124 = !{ptr @group_case_labels, ptr @gimple_code, i64 326227}
!125 = !{ptr @group_case_labels, ptr @gimple_switch_num_labels, i64 78}
!126 = !{ptr @group_case_labels, ptr @gimple_switch_default_label, i64 231}
!127 = !{ptr @group_case_labels, ptr @gimple_switch_label, i64 163496}
!128 = !{ptr @group_case_labels, ptr @fancy_abort, i64 3}
!129 = !{ptr @group_case_labels, ptr @gimple_switch_set_label, i64 52604}
!130 = !{ptr @group_case_labels, ptr @int_const_binop, i64 72645}
!131 = !{ptr @group_case_labels, ptr @tree_int_cst_equal, i64 38457}
!132 = !{ptr @group_case_labels, ptr @gimple_switch_set_num_labels, i64 78}
!133 = !{ptr @gimple_switch_default_label, ptr @gimple_switch_label, i64 234}
!134 = !{ptr @gimple_switch_set_label, ptr @gimple_num_ops, i64 34936}
!135 = !{ptr @gimple_switch_set_label, ptr @fancy_abort, i64 2}
!136 = !{ptr @gimple_switch_set_label, ptr @gimple_set_op, i64 34936}
!137 = !{ptr @gimple_switch_set_num_labels, ptr @gimple_set_num_ops, i64 78}
!138 = !{ptr @is_gimple_debug, ptr @gimple_code, i64 16069941}
!139 = !{ptr @replace_uses_by, ptr @first_imm_use_stmt, i64 18}
!140 = !{ptr @replace_uses_by, ptr @end_imm_use_stmt_p, i64 30}
!141 = !{ptr @replace_uses_by, ptr @first_imm_use_on_stmt, i64 12}
!142 = !{ptr @replace_uses_by, ptr @end_imm_use_on_stmt_p, i64 24}
!143 = !{ptr @replace_uses_by, ptr @replace_exp, i64 12}
!144 = !{ptr @replace_uses_by, ptr @gimple_code, i64 24}
!145 = !{ptr @replace_uses_by, ptr @phi_arg_index_from_use, i64 1}
!146 = !{ptr @replace_uses_by, ptr @gimple_phi_arg_edge, i64 1}
!147 = !{ptr @replace_uses_by, ptr @next_imm_use_on_stmt, i64 12}
!148 = !{ptr @replace_uses_by, ptr @fold_stmt_inplace, i64 11}
!149 = !{ptr @replace_uses_by, ptr @gimple_bb, i64 11}
!150 = !{ptr @replace_uses_by, ptr @bitmap_set_bit, i64 11}
!151 = !{ptr @replace_uses_by, ptr @gimple_num_ops, i64 38}
!152 = !{ptr @replace_uses_by, ptr @gimple_op, i64 27}
!153 = !{ptr @replace_uses_by, ptr @recompute_tree_invariant_for_addr_expr, i64 6}
!154 = !{ptr @replace_uses_by, ptr @maybe_clean_or_replace_eh_stmt, i64 11}
!155 = !{ptr @replace_uses_by, ptr @update_stmt, i64 11}
!156 = !{ptr @replace_uses_by, ptr @next_imm_use_stmt, i64 12}
!157 = !{ptr @replace_uses_by, ptr @has_zero_uses, i64 18}
!158 = !{ptr @replace_uses_by, ptr @fancy_abort, i64 1}
!159 = !{ptr @replace_uses_by, ptr @fel_init, i64 1}
!160 = !{ptr @replace_uses_by, ptr @substitute_in_loop_info, i64 18}
!161 = !{ptr @replace_uses_by, ptr @fel_next, i64 18}
!162 = !{ptr @first_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 24}
!163 = !{ptr @first_imm_use_stmt, ptr @link_use_stmts_after, i64 12}
!164 = !{ptr @next_imm_use_on_stmt, ptr @end_imm_use_on_stmt_p, i64 12}
!165 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 3334048}
!166 = !{ptr @gimple_op, ptr @gimple_ops, i64 3334047}
!167 = !{ptr @update_stmt, ptr @gimple_has_ops, i64 12}
!168 = !{ptr @update_stmt, ptr @gimple_set_modified, i64 11}
!169 = !{ptr @update_stmt, ptr @update_stmt_operands, i64 11}
!170 = !{ptr @next_imm_use_stmt, ptr @end_imm_use_stmt_p, i64 12}
!171 = !{ptr @next_imm_use_stmt, ptr @delink_imm_use, i64 10}
!172 = !{ptr @next_imm_use_stmt, ptr @link_use_stmts_after, i64 1}
!173 = !{ptr @has_zero_uses, ptr @has_zero_uses_1, i64 1}
!174 = !{ptr @notice_special_calls, ptr @gimple_call_flags, i64 414602}
!175 = !{ptr @find_taken_edge, ptr @last_stmt, i64 3566109}
!176 = !{ptr @find_taken_edge, ptr @fancy_abort, i64 2}
!177 = !{ptr @find_taken_edge, ptr @is_ctrl_stmt, i64 3566109}
!178 = !{ptr @find_taken_edge, ptr @is_gimple_min_invariant, i64 301066}
!179 = !{ptr @find_taken_edge, ptr @gimple_code, i64 44227}
!180 = !{ptr @find_taken_edge, ptr @find_taken_edge_cond_expr, i64 44226}
!181 = !{ptr @is_ctrl_stmt, ptr @gimple_code, i64 10675729}
!182 = !{ptr @find_taken_edge_cond_expr, ptr @extract_true_false_edges_from_block, i64 44226}
!183 = !{ptr @find_taken_edge_cond_expr, ptr @fancy_abort, i64 1}
!184 = !{ptr @find_taken_edge_cond_expr, ptr @integer_zerop, i64 44226}
!185 = !{ptr @is_ctrl_altering_stmt, ptr @fancy_abort, i64 1}
!186 = !{ptr @is_ctrl_altering_stmt, ptr @gimple_code, i64 5267176}
!187 = !{ptr @is_ctrl_altering_stmt, ptr @gimple_call_flags, i64 1038185}
!188 = !{ptr @is_ctrl_altering_stmt, ptr @gimple_asm_nlabels, i64 1}
!189 = !{ptr @is_ctrl_altering_stmt, ptr @stmt_can_throw_internal, i64 5265576}
!190 = !{ptr @simple_goto_p, ptr @gimple_code, i64 43733}
!191 = !{ptr @simple_goto_p, ptr @gimple_goto_dest, i64 43732}
!192 = !{ptr @stmt_can_make_abnormal_goto, ptr @computed_goto_p, i64 395}
!193 = !{ptr @stmt_can_make_abnormal_goto, ptr @is_gimple_call, i64 394}
!194 = !{ptr @stmt_can_make_abnormal_goto, ptr @gimple_has_side_effects, i64 110}
!195 = !{ptr @is_gimple_call, ptr @gimple_code, i64 188039}
!196 = !{ptr @stmt_ends_bb_p, ptr @is_ctrl_stmt, i64 6775005}
!197 = !{ptr @stmt_ends_bb_p, ptr @is_ctrl_altering_stmt, i64 3597897}
!198 = !{ptr @first_stmt, ptr @gsi_start_bb, i64 604670}
!199 = !{ptr @first_stmt, ptr @gsi_end_p, i64 604671}
!200 = !{ptr @first_stmt, ptr @gsi_stmt, i64 604646}
!201 = !{ptr @first_stmt, ptr @is_gimple_debug, i64 604646}
!202 = !{ptr @first_stmt, ptr @gsi_next, i64 1}
!203 = !{ptr @gsi_last_bb, ptr @bb_seq, i64 17546516}
!204 = !{ptr @gsi_last_bb, ptr @gimple_seq_last, i64 17546516}
!205 = !{ptr @last_and_only_stmt, ptr @gsi_last_nondebug_bb, i64 4773}
!206 = !{ptr @last_and_only_stmt, ptr @gsi_end_p, i64 6156}
!207 = !{ptr @last_and_only_stmt, ptr @gsi_stmt, i64 2293}
!208 = !{ptr @last_and_only_stmt, ptr @gsi_prev_nondebug, i64 1383}
!209 = !{ptr @last_and_only_stmt, ptr @gimple_code, i64 910}
!210 = !{ptr @gsi_last_nondebug_bb, ptr @gsi_last_bb, i64 4773}
!211 = !{ptr @gsi_last_nondebug_bb, ptr @gsi_end_p, i64 4773}
!212 = !{ptr @gsi_last_nondebug_bb, ptr @gsi_stmt, i64 1383}
!213 = !{ptr @gsi_last_nondebug_bb, ptr @is_gimple_debug, i64 1383}
!214 = !{ptr @gsi_last_nondebug_bb, ptr @gsi_prev_nondebug, i64 1}
!215 = !{ptr @gsi_prev_nondebug, ptr @gsi_prev, i64 1384}
!216 = !{ptr @gsi_prev_nondebug, ptr @gsi_end_p, i64 1384}
!217 = !{ptr @gsi_prev_nondebug, ptr @gsi_stmt, i64 910}
!218 = !{ptr @gsi_prev_nondebug, ptr @is_gimple_debug, i64 910}
!219 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 24}
!220 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 24}
!221 = !{ptr @gimple_block_label, ptr @gsi_start_bb, i64 103}
!222 = !{ptr @gimple_block_label, ptr @gsi_end_p, i64 105}
!223 = !{ptr @gimple_block_label, ptr @gsi_stmt, i64 103}
!224 = !{ptr @gimple_block_label, ptr @gimple_code, i64 103}
!225 = !{ptr @gimple_block_label, ptr @gimple_label_label, i64 54}
!226 = !{ptr @gimple_block_label, ptr @gsi_move_before, i64 2}
!227 = !{ptr @gimple_block_label, ptr @gsi_next, i64 2}
!228 = !{ptr @gimple_block_label, ptr @create_artificial_label, i64 51}
!229 = !{ptr @gimple_block_label, ptr @gimple_build_label, i64 51}
!230 = !{ptr @gimple_block_label, ptr @gsi_insert_before, i64 51}
!231 = !{ptr @ei_cond, ptr @ei_end_p, i64 833542}
!232 = !{ptr @ei_cond, ptr @ei_edge, i64 490608}
!233 = !{ptr @ei_next, ptr @ei_container, i64 18381271}
!234 = !{ptr @ei_next, ptr @VEC_edge_base_length, i64 9190636}
!235 = !{ptr @ei_next, ptr @fancy_abort, i64 1}
!236 = !{ptr @split_edge_bb_loc, ptr @find_edge, i64 195941}
!237 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_heap_reserve, i64 37853}
!238 = !{ptr @VEC_basic_block_heap_safe_push, ptr @VEC_basic_block_base_quick_push, i64 37853}
!239 = !{ptr @VEC_basic_block_heap_free, ptr @free, i64 972}
!240 = !{ptr @gimple_cond_set_rhs, ptr @gimple_set_op, i64 184}
!241 = !{ptr @gimple_cond_set_lhs, ptr @gimple_set_op, i64 184}
!242 = !{ptr @single_succ_edge, ptr @single_succ_p, i64 805044}
!243 = !{ptr @single_succ_edge, ptr @fancy_abort, i64 1}
!244 = !{ptr @single_succ_edge, ptr @VEC_edge_base_index, i64 805044}
!245 = !{ptr @ei_safe_edge, ptr @ei_end_p, i64 13372709}
!246 = !{ptr @ei_safe_edge, ptr @ei_edge, i64 8700470}
!247 = !{ptr @gimple_purge_dead_eh_edges, ptr @last_stmt, i64 4672239}
!248 = !{ptr @gimple_purge_dead_eh_edges, ptr @stmt_can_throw_internal, i64 4231481}
!249 = !{ptr @gimple_purge_dead_eh_edges, ptr @ei_start_1, i64 4672238}
!250 = !{ptr @gimple_purge_dead_eh_edges, ptr @ei_safe_edge, i64 13372705}
!251 = !{ptr @gimple_purge_dead_eh_edges, ptr @remove_edge_and_dominated_blocks, i64 1}
!252 = !{ptr @gimple_purge_dead_eh_edges, ptr @ei_next, i64 8700466}
!253 = !{ptr @remove_edge_and_dominated_blocks, ptr @dom_info_available_p, i64 707}
!254 = !{ptr @remove_edge_and_dominated_blocks, ptr @remove_edge, i64 443}
!255 = !{ptr @remove_edge_and_dominated_blocks, ptr @bitmap_set_bit, i64 2602}
!256 = !{ptr @remove_edge_and_dominated_blocks, ptr @ei_start_1, i64 1319}
!257 = !{ptr @remove_edge_and_dominated_blocks, ptr @ei_cond, i64 2794}
!258 = !{ptr @remove_edge_and_dominated_blocks, ptr @dominated_by_p, i64 553}
!259 = !{ptr @remove_edge_and_dominated_blocks, ptr @ei_next, i64 1475}
!260 = !{ptr @remove_edge_and_dominated_blocks, ptr @bitmap_obstack_alloc_stat, i64 1410}
!261 = !{ptr @remove_edge_and_dominated_blocks, ptr @get_immediate_dominator, i64 885}
!262 = !{ptr @remove_edge_and_dominated_blocks, ptr @get_all_dominated_blocks, i64 265}
!263 = !{ptr @remove_edge_and_dominated_blocks, ptr @VEC_basic_block_base_iterate, i64 1758}
!264 = !{ptr @remove_edge_and_dominated_blocks, ptr @bitmap_clear_bit, i64 614}
!265 = !{ptr @remove_edge_and_dominated_blocks, ptr @bmp_iter_set_init, i64 970}
!266 = !{ptr @remove_edge_and_dominated_blocks, ptr @bmp_iter_set, i64 2247}
!267 = !{ptr @remove_edge_and_dominated_blocks, ptr @VEC_basic_block_base_index, i64 1891}
!268 = !{ptr @remove_edge_and_dominated_blocks, ptr @bmp_iter_next, i64 1277}
!269 = !{ptr @remove_edge_and_dominated_blocks, ptr @bitmap_ior_into, i64 704}
!270 = !{ptr @remove_edge_and_dominated_blocks, ptr @VEC_basic_block_base_length, i64 265}
!271 = !{ptr @remove_edge_and_dominated_blocks, ptr @delete_basic_block, i64 614}
!272 = !{ptr @remove_edge_and_dominated_blocks, ptr @first_dom_son, i64 833}
!273 = !{ptr @remove_edge_and_dominated_blocks, ptr @VEC_basic_block_heap_safe_push, i64 37694}
!274 = !{ptr @remove_edge_and_dominated_blocks, ptr @next_dom_son, i64 37694}
!275 = !{ptr @remove_edge_and_dominated_blocks, ptr @iterate_fix_dominators, i64 705}
!276 = !{ptr @remove_edge_and_dominated_blocks, ptr @bitmap_obstack_free, i64 1410}
!277 = !{ptr @remove_edge_and_dominated_blocks, ptr @VEC_basic_block_heap_free, i64 1410}
!278 = !{ptr @create_bb, ptr @fancy_abort, i64 1}
!279 = !{ptr @create_bb, ptr @alloc_block, i64 423476}
!280 = !{ptr @create_bb, ptr @ggc_alloc_cleared_stat, i64 423476}
!281 = !{ptr @create_bb, ptr @gimple_seq_alloc, i64 235606}
!282 = !{ptr @create_bb, ptr @set_bb_seq, i64 423476}
!283 = !{ptr @create_bb, ptr @link_block, i64 423476}
!284 = !{ptr @create_bb, ptr @VEC_basic_block_base_length, i64 423476}
!285 = !{ptr @create_bb, ptr @VEC_basic_block_gc_safe_grow_cleared, i64 499}
!286 = !{ptr @create_bb, ptr @VEC_basic_block_base_replace, i64 423476}
!287 = !{ptr @gimple_redirect_edge_and_branch, ptr @redirect_eh_edge, i64 1}
!288 = !{ptr @gimple_redirect_edge_and_branch, ptr @gimple_try_redirect_by_replacing_jump, i64 559628}
!289 = !{ptr @gimple_redirect_edge_and_branch, ptr @gsi_last_bb, i64 559007}
!290 = !{ptr @gimple_redirect_edge_and_branch, ptr @gsi_end_p, i64 559007}
!291 = !{ptr @gimple_redirect_edge_and_branch, ptr @gsi_stmt, i64 550845}
!292 = !{ptr @gimple_redirect_edge_and_branch, ptr @gimple_code, i64 550845}
!293 = !{ptr @gimple_redirect_edge_and_branch, ptr @gimple_block_label, i64 22}
!294 = !{ptr @gimple_redirect_edge_and_branch, ptr @get_cases_for_edge, i64 21}
!295 = !{ptr @gimple_redirect_edge_and_branch, ptr @find_edge, i64 21}
!296 = !{ptr @gimple_redirect_edge_and_branch, ptr @gimple_switch_label, i64 4}
!297 = !{ptr @gimple_redirect_edge_and_branch, ptr @label_to_block_fn, i64 8}
!298 = !{ptr @gimple_redirect_edge_and_branch, ptr @gimple_asm_label_op, i64 4}
!299 = !{ptr @gimple_redirect_edge_and_branch, ptr @fancy_abort, i64 1}
!300 = !{ptr @gimple_redirect_edge_and_branch, ptr @ssa_redirect_edge, i64 559007}
!301 = !{ptr @remove_bb, ptr @fprintf, i64 1}
!302 = !{ptr @remove_bb, ptr @free_numbers_of_iterations_estimates_loop, i64 2}
!303 = !{ptr @remove_bb, ptr @bb_seq, i64 267984}
!304 = !{ptr @remove_bb, ptr @gsi_last_bb, i64 269183}
!305 = !{ptr @remove_bb, ptr @gsi_end_p, i64 270385}
!306 = !{ptr @remove_bb, ptr @gsi_stmt, i64 1201}
!307 = !{ptr @remove_bb, ptr @gimple_code, i64 1201}
!308 = !{ptr @remove_bb, ptr @gimple_label_label, i64 147}
!309 = !{ptr @remove_bb, ptr @gsi_start_bb, i64 2}
!310 = !{ptr @remove_bb, ptr @gsi_remove, i64 1201}
!311 = !{ptr @remove_bb, ptr @gsi_insert_before, i64 2}
!312 = !{ptr @remove_bb, ptr @gimple_in_ssa_p, i64 1199}
!313 = !{ptr @remove_bb, ptr @release_defs, i64 526}
!314 = !{ptr @remove_bb, ptr @gsi_prev, i64 1}
!315 = !{ptr @remove_bb, ptr @remove_phi_nodes_and_edges_for_unreachable_block, i64 267984}
!316 = !{ptr @gimple_split_block, ptr @create_empty_bb, i64 48}
!317 = !{ptr @gimple_split_block, ptr @ei_start_1, i64 48}
!318 = !{ptr @gimple_split_block, ptr @ei_cond, i64 2948}
!319 = !{ptr @gimple_split_block, ptr @ei_next, i64 2900}
!320 = !{ptr @gimple_split_block, ptr @gimple_code, i64 97}
!321 = !{ptr @gimple_split_block, ptr @gsi_start_bb, i64 48}
!322 = !{ptr @gimple_split_block, ptr @gsi_end_p, i64 204}
!323 = !{ptr @gimple_split_block, ptr @gsi_stmt, i64 109}
!324 = !{ptr @gimple_split_block, ptr @gsi_next, i64 108}
!325 = !{ptr @gimple_split_block, ptr @gsi_split_seq_before, i64 47}
!326 = !{ptr @gimple_split_block, ptr @set_bb_seq, i64 47}
!327 = !{ptr @gimple_split_block, ptr @gsi_start, i64 47}
!328 = !{ptr @gimple_split_block, ptr @gimple_set_bb, i64 59}
!329 = !{ptr @gimple_move_block_after, ptr @unlink_block, i64 864}
!330 = !{ptr @gimple_move_block_after, ptr @link_block, i64 864}
!331 = !{ptr @gimple_can_merge_blocks_p, ptr @single_succ_p, i64 401812}
!332 = !{ptr @gimple_can_merge_blocks_p, ptr @single_succ_edge, i64 401811}
!333 = !{ptr @gimple_can_merge_blocks_p, ptr @single_succ, i64 401810}
!334 = !{ptr @gimple_can_merge_blocks_p, ptr @single_pred_p, i64 401809}
!335 = !{ptr @gimple_can_merge_blocks_p, ptr @last_stmt, i64 2544}
!336 = !{ptr @gimple_can_merge_blocks_p, ptr @stmt_ends_bb_p, i64 2129}
!337 = !{ptr @gimple_can_merge_blocks_p, ptr @gimple_code, i64 4668}
!338 = !{ptr @gimple_can_merge_blocks_p, ptr @gimple_label_label, i64 5}
!339 = !{ptr @gimple_can_merge_blocks_p, ptr @gsi_start_bb, i64 2542}
!340 = !{ptr @gimple_can_merge_blocks_p, ptr @gsi_end_p, i64 2543}
!341 = !{ptr @gimple_can_merge_blocks_p, ptr @gsi_stmt, i64 2540}
!342 = !{ptr @gimple_can_merge_blocks_p, ptr @gsi_next, i64 1}
!343 = !{ptr @gimple_can_merge_blocks_p, ptr @phi_nodes, i64 2542}
!344 = !{ptr @gimple_can_merge_blocks_p, ptr @gimple_seq_empty_p, i64 2542}
!345 = !{ptr @gimple_can_merge_blocks_p, ptr @name_mappings_registered_p, i64 1141}
!346 = !{ptr @gimple_merge_blocks, ptr @phi_nodes, i64 1420}
!347 = !{ptr @gimple_merge_blocks, ptr @fprintf, i64 1}
!348 = !{ptr @gimple_merge_blocks, ptr @gsi_last_bb, i64 2840}
!349 = !{ptr @gimple_merge_blocks, ptr @gsi_start, i64 1420}
!350 = !{ptr @gimple_merge_blocks, ptr @gsi_end_p, i64 4662}
!351 = !{ptr @gimple_merge_blocks, ptr @gsi_stmt, i64 1822}
!352 = !{ptr @gimple_merge_blocks, ptr @gimple_phi_result, i64 25}
!353 = !{ptr @gimple_merge_blocks, ptr @gimple_phi_arg_def, i64 25}
!354 = !{ptr @gimple_merge_blocks, ptr @is_gimple_reg, i64 51}
!355 = !{ptr @gimple_merge_blocks, ptr @may_propagate_copy, i64 18}
!356 = !{ptr @gimple_merge_blocks, ptr @loops_state_satisfies_p, i64 1}
!357 = !{ptr @gimple_merge_blocks, ptr @gimple_build_assign_stat, i64 1}
!358 = !{ptr @gimple_merge_blocks, ptr @gsi_insert_after, i64 1}
!359 = !{ptr @gimple_merge_blocks, ptr @first_imm_use_stmt, i64 6}
!360 = !{ptr @gimple_merge_blocks, ptr @end_imm_use_stmt_p, i64 7}
!361 = !{ptr @gimple_merge_blocks, ptr @first_imm_use_on_stmt, i64 1}
!362 = !{ptr @gimple_merge_blocks, ptr @end_imm_use_on_stmt_p, i64 12}
!363 = !{ptr @gimple_merge_blocks, ptr @set_ssa_use_from_ptr, i64 11}
!364 = !{ptr @gimple_merge_blocks, ptr @next_imm_use_on_stmt, i64 11}
!365 = !{ptr @gimple_merge_blocks, ptr @next_imm_use_stmt, i64 1}
!366 = !{ptr @gimple_merge_blocks, ptr @replace_uses_by, i64 18}
!367 = !{ptr @gimple_merge_blocks, ptr @remove_phi_node, i64 25}
!368 = !{ptr @gimple_merge_blocks, ptr @move_block_after, i64 1420}
!369 = !{ptr @gimple_merge_blocks, ptr @single_succ_edge, i64 1420}
!370 = !{ptr @gimple_merge_blocks, ptr @fancy_abort, i64 2}
!371 = !{ptr @gimple_merge_blocks, ptr @last_stmt, i64 2691}
!372 = !{ptr @gimple_merge_blocks, ptr @stmt_ends_bb_p, i64 1271}
!373 = !{ptr @gimple_merge_blocks, ptr @gsi_start_bb, i64 1420}
!374 = !{ptr @gimple_merge_blocks, ptr @gimple_code, i64 1797}
!375 = !{ptr @gimple_merge_blocks, ptr @gimple_label_label, i64 1}
!376 = !{ptr @gimple_merge_blocks, ptr @gsi_remove, i64 1}
!377 = !{ptr @gimple_merge_blocks, ptr @get_eh_landing_pad_from_number, i64 1}
!378 = !{ptr @gimple_merge_blocks, ptr @gimple_set_bb, i64 1796}
!379 = !{ptr @gimple_merge_blocks, ptr @gsi_next, i64 1796}
!380 = !{ptr @gimple_merge_blocks, ptr @bb_seq, i64 1420}
!381 = !{ptr @gimple_merge_blocks, ptr @gsi_insert_seq_after, i64 1420}
!382 = !{ptr @gimple_merge_blocks, ptr @set_bb_seq, i64 1420}
!383 = !{ptr @gimple_merge_blocks, ptr @bitmap_set_bit, i64 1419}
!384 = !{ptr @gimple_duplicate_bb, ptr @phi_nodes, i64 39461}
!385 = !{ptr @gimple_duplicate_bb, ptr @create_empty_bb, i64 39461}
!386 = !{ptr @gimple_duplicate_bb, ptr @gsi_start, i64 39461}
!387 = !{ptr @gimple_duplicate_bb, ptr @gsi_end_p, i64 204394}
!388 = !{ptr @gimple_duplicate_bb, ptr @gsi_stmt, i64 125472}
!389 = !{ptr @gimple_duplicate_bb, ptr @gimple_phi_result, i64 75596}
!390 = !{ptr @gimple_duplicate_bb, ptr @create_phi_node, i64 37798}
!391 = !{ptr @gimple_duplicate_bb, ptr @gimple_phi_result_ptr, i64 37798}
!392 = !{ptr @gimple_duplicate_bb, ptr @create_new_def_for, i64 90122}
!393 = !{ptr @gimple_duplicate_bb, ptr @gsi_next, i64 125472}
!394 = !{ptr @gimple_duplicate_bb, ptr @gsi_start_bb, i64 78922}
!395 = !{ptr @gimple_duplicate_bb, ptr @gimple_code, i64 87674}
!396 = !{ptr @gimple_duplicate_bb, ptr @gimple_copy, i64 87673}
!397 = !{ptr @gimple_duplicate_bb, ptr @gsi_insert_after, i64 87673}
!398 = !{ptr @gimple_duplicate_bb, ptr @maybe_duplicate_eh_stmt, i64 87673}
!399 = !{ptr @gimple_duplicate_bb, ptr @gimple_duplicate_stmt_histograms, i64 87673}
!400 = !{ptr @gimple_duplicate_bb, ptr @op_iter_init_def, i64 87673}
!401 = !{ptr @gimple_duplicate_bb, ptr @op_iter_done, i64 139997}
!402 = !{ptr @gimple_duplicate_bb, ptr @get_def_from_ptr, i64 52324}
!403 = !{ptr @gimple_duplicate_bb, ptr @op_iter_next_def, i64 52324}
!404 = !{ptr @gimple_split_edge, ptr @fancy_abort, i64 2}
!405 = !{ptr @gimple_split_edge, ptr @split_edge_bb_loc, i64 195942}
!406 = !{ptr @gimple_split_edge, ptr @create_empty_bb, i64 195942}
!407 = !{ptr @gimple_split_edge, ptr @make_edge, i64 195942}
!408 = !{ptr @gimple_split_edge, ptr @redirect_edge_and_branch, i64 195942}
!409 = !{ptr @gimple_split_edge, ptr @reinstall_phi_args, i64 195942}
!410 = !{ptr @gimple_execute_on_growing_pred, ptr @phi_nodes, i64 1200253}
!411 = !{ptr @gimple_execute_on_growing_pred, ptr @gimple_seq_empty_p, i64 1200253}
!412 = !{ptr @gimple_execute_on_growing_pred, ptr @reserve_phi_args_for_new_edge, i64 542486}
!413 = !{ptr @gimple_execute_on_shrinking_pred, ptr @phi_nodes, i64 903126}
!414 = !{ptr @gimple_execute_on_shrinking_pred, ptr @gimple_seq_empty_p, i64 903126}
!415 = !{ptr @gimple_execute_on_shrinking_pred, ptr @remove_phi_args, i64 493970}
!416 = !{ptr @extract_true_false_edges_from_block, ptr @VEC_edge_base_index, i64 1786568}
!417 = !{ptr @split_critical_edges, ptr @start_recording_case_labels, i64 38}
!418 = !{ptr @split_critical_edges, ptr @ei_start_1, i64 333237}
!419 = !{ptr @split_critical_edges, ptr @ei_cond, i64 806603}
!420 = !{ptr @split_critical_edges, ptr @VEC_edge_base_length, i64 751031}
!421 = !{ptr @split_critical_edges, ptr @split_edge, i64 180075}
!422 = !{ptr @split_critical_edges, ptr @single_pred_p, i64 293292}
!423 = !{ptr @split_critical_edges, ptr @phi_nodes, i64 97665}
!424 = !{ptr @split_critical_edges, ptr @gimple_seq_empty_p, i64 97665}
!425 = !{ptr @split_critical_edges, ptr @gsi_last_bb, i64 195664}
!426 = !{ptr @split_critical_edges, ptr @gsi_end_p, i64 195664}
!427 = !{ptr @split_critical_edges, ptr @gsi_stmt, i64 3278}
!428 = !{ptr @split_critical_edges, ptr @stmt_ends_bb_p, i64 3240}
!429 = !{ptr @split_critical_edges, ptr @gimple_code, i64 38}
!430 = !{ptr @split_critical_edges, ptr @ei_next, i64 473366}
!431 = !{ptr @split_critical_edges, ptr @end_recording_case_labels, i64 38}
!432 = !{ptr @execute_warn_function_return, ptr @VEC_edge_base_length, i64 1}
!433 = !{ptr @execute_warn_function_return, ptr @ei_start_1, i64 1}
!434 = !{ptr @execute_warn_function_return, ptr @ei_cond, i64 11}
!435 = !{ptr @execute_warn_function_return, ptr @last_stmt, i64 10}
!436 = !{ptr @execute_warn_function_return, ptr @gimple_code, i64 10}
!437 = !{ptr @execute_warn_function_return, ptr @gimple_location, i64 4}
!438 = !{ptr @execute_warn_function_return, ptr @ei_next, i64 10}
!439 = !{ptr @execute_warn_function_return, ptr @warning_at, i64 1}
!440 = !{ptr @execute_warn_function_return, ptr @gimple_return_retval, i64 1}
!441 = !{ptr @run_warn_unused_result, ptr @gimple_body, i64 40}
!442 = !{ptr @run_warn_unused_result, ptr @do_warn_unused_result, i64 40}
!443 = !{ptr @VEC_basic_block_gc_safe_grow, ptr @VEC_basic_block_gc_reserve_exact, i64 580}
!444 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @VEC_basic_block_base_space, i64 580}
!445 = !{ptr @VEC_basic_block_gc_reserve_exact, ptr @vec_gc_p_reserve_exact, i64 497}
!446 = !{ptr @build_gimple_cfg, ptr @gimple_register_cfg_hooks, i64 40}
!447 = !{ptr @build_gimple_cfg, ptr @init_empty_tree_cfg, i64 40}
!448 = !{ptr @build_gimple_cfg, ptr @make_blocks, i64 40}
!449 = !{ptr @build_gimple_cfg, ptr @factor_computed_gotos, i64 1}
!450 = !{ptr @build_gimple_cfg, ptr @create_empty_bb, i64 1}
!451 = !{ptr @build_gimple_cfg, ptr @VEC_basic_block_base_length, i64 40}
!452 = !{ptr @build_gimple_cfg, ptr @VEC_basic_block_gc_safe_grow_cleared, i64 1}
!453 = !{ptr @build_gimple_cfg, ptr @cleanup_dead_labels, i64 80}
!454 = !{ptr @build_gimple_cfg, ptr @group_case_labels, i64 40}
!455 = !{ptr @build_gimple_cfg, ptr @htab_create, i64 40}
!456 = !{ptr @build_gimple_cfg, ptr @make_edges, i64 40}
!457 = !{ptr @build_gimple_cfg, ptr @htab_delete, i64 40}
!458 = !{ptr @build_gimple_cfg, ptr @dump_begin, i64 40}
!459 = !{ptr @build_gimple_cfg, ptr @gimple_cfg2vcg, i64 1}
!460 = !{ptr @build_gimple_cfg, ptr @dump_end, i64 1}
!461 = !{ptr @make_blocks, ptr @gsi_start, i64 40}
!462 = !{ptr @make_blocks, ptr @gsi_end_p, i64 640070}
!463 = !{ptr @make_blocks, ptr @gsi_stmt, i64 640030}
!464 = !{ptr @make_blocks, ptr @stmt_starts_bb_p, i64 456963}
!465 = !{ptr @make_blocks, ptr @gsi_split_seq_before, i64 183249}
!466 = !{ptr @make_blocks, ptr @create_basic_block, i64 183289}
!467 = !{ptr @make_blocks, ptr @gimple_set_bb, i64 640030}
!468 = !{ptr @make_blocks, ptr @computed_goto_p, i64 640030}
!469 = !{ptr @make_blocks, ptr @stmt_ends_bb_p, i64 640030}
!470 = !{ptr @make_blocks, ptr @gimple_has_lhs, i64 183068}
!471 = !{ptr @make_blocks, ptr @stmt_can_make_abnormal_goto, i64 1}
!472 = !{ptr @make_blocks, ptr @gimple_get_lhs, i64 1}
!473 = !{ptr @make_blocks, ptr @is_gimple_reg_type, i64 1}
!474 = !{ptr @make_blocks, ptr @gsi_next, i64 640030}
!475 = !{ptr @make_edges, ptr @VEC_basic_block_base_index, i64 40}
!476 = !{ptr @make_edges, ptr @make_edge, i64 329}
!477 = !{ptr @make_edges, ptr @last_stmt, i64 183289}
!478 = !{ptr @make_edges, ptr @gimple_code, i64 183288}
!479 = !{ptr @make_edges, ptr @make_goto_expr_edges, i64 42662}
!480 = !{ptr @make_edges, ptr @make_cond_expr_edges, i64 140248}
!481 = !{ptr @make_edges, ptr @make_gimple_switch_edges, i64 38}
!482 = !{ptr @make_edges, ptr @make_eh_edges, i64 62}
!483 = !{ptr @make_edges, ptr @make_eh_dispatch_edges, i64 1}
!484 = !{ptr @make_edges, ptr @stmt_can_make_abnormal_goto, i64 60}
!485 = !{ptr @make_edges, ptr @make_abnormal_goto_edges, i64 1}
!486 = !{ptr @make_edges, ptr @gimple_call_flags, i64 60}
!487 = !{ptr @make_edges, ptr @is_ctrl_altering_stmt, i64 221}
!488 = !{ptr @make_edges, ptr @make_gimple_asm_edges, i64 1}
!489 = !{ptr @make_edges, ptr @new_omp_region, i64 9}
!490 = !{ptr @make_edges, ptr @fancy_abort, i64 4}
!491 = !{ptr @make_edges, ptr @stmt_ends_bb_p, i64 1}
!492 = !{ptr @make_edges, ptr @gimple_location, i64 234}
!493 = !{ptr @make_edges, ptr @assign_discriminator, i64 234}
!494 = !{ptr @make_edges, ptr @free_omp_regions, i64 1}
!495 = !{ptr @make_edges, ptr @fold_cond_expr_cond, i64 40}
!496 = !{ptr @gsi_start, ptr @gimple_seq_first, i64 41049}
!497 = !{ptr @gsi_start, ptr @gimple_bb, i64 35699}
!498 = !{ptr @stmt_starts_bb_p, ptr @gimple_code, i64 491408}
!499 = !{ptr @stmt_starts_bb_p, ptr @gimple_label_label, i64 68844}
!500 = !{ptr @gimple_has_lhs, ptr @is_gimple_assign, i64 187644}
!501 = !{ptr @gimple_has_lhs, ptr @is_gimple_call, i64 187643}
!502 = !{ptr @gimple_has_lhs, ptr @gimple_call_lhs, i64 62}
!503 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 187644}
!504 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 69305}
!505 = !{ptr @make_goto_expr_edges, ptr @gsi_last_bb, i64 43733}
!506 = !{ptr @make_goto_expr_edges, ptr @gsi_stmt, i64 43733}
!507 = !{ptr @make_goto_expr_edges, ptr @simple_goto_p, i64 43733}
!508 = !{ptr @make_goto_expr_edges, ptr @gimple_goto_dest, i64 43732}
!509 = !{ptr @make_goto_expr_edges, ptr @label_to_block_fn, i64 43732}
!510 = !{ptr @make_goto_expr_edges, ptr @make_edge, i64 43732}
!511 = !{ptr @make_goto_expr_edges, ptr @gimple_location, i64 43732}
!512 = !{ptr @make_goto_expr_edges, ptr @assign_discriminator, i64 43732}
!513 = !{ptr @make_goto_expr_edges, ptr @gimple_block, i64 43712}
!514 = !{ptr @make_goto_expr_edges, ptr @gsi_remove, i64 43732}
!515 = !{ptr @make_goto_expr_edges, ptr @make_abnormal_goto_edges, i64 1}
!516 = !{ptr @make_cond_expr_edges, ptr @last_stmt, i64 143772}
!517 = !{ptr @make_cond_expr_edges, ptr @fancy_abort, i64 2}
!518 = !{ptr @make_cond_expr_edges, ptr @gimple_code, i64 143772}
!519 = !{ptr @make_cond_expr_edges, ptr @gimple_location, i64 431315}
!520 = !{ptr @make_cond_expr_edges, ptr @gimple_cond_true_label, i64 143772}
!521 = !{ptr @make_cond_expr_edges, ptr @gimple_cond_false_label, i64 143772}
!522 = !{ptr @make_cond_expr_edges, ptr @label_to_block_fn, i64 287544}
!523 = !{ptr @make_cond_expr_edges, ptr @first_stmt, i64 287544}
!524 = !{ptr @make_cond_expr_edges, ptr @make_edge, i64 287544}
!525 = !{ptr @make_cond_expr_edges, ptr @assign_discriminator, i64 287543}
!526 = !{ptr @make_cond_expr_edges, ptr @gimple_block, i64 2}
!527 = !{ptr @make_cond_expr_edges, ptr @gimple_cond_set_true_label, i64 143772}
!528 = !{ptr @make_cond_expr_edges, ptr @gimple_cond_set_false_label, i64 143772}
!529 = !{ptr @make_gimple_switch_edges, ptr @last_stmt, i64 38}
!530 = !{ptr @make_gimple_switch_edges, ptr @gimple_location, i64 38}
!531 = !{ptr @make_gimple_switch_edges, ptr @gimple_switch_num_labels, i64 38}
!532 = !{ptr @make_gimple_switch_edges, ptr @gimple_switch_label, i64 9009}
!533 = !{ptr @make_gimple_switch_edges, ptr @label_to_block_fn, i64 9009}
!534 = !{ptr @make_gimple_switch_edges, ptr @make_edge, i64 9009}
!535 = !{ptr @make_gimple_switch_edges, ptr @assign_discriminator, i64 9009}
!536 = !{ptr @single_succ, ptr @single_succ_edge, i64 401812}
!537 = !{ptr @assign_discriminator, ptr @first_non_label_stmt, i64 333004}
!538 = !{ptr @assign_discriminator, ptr @last_stmt, i64 333004}
!539 = !{ptr @assign_discriminator, ptr @gimple_location, i64 622375}
!540 = !{ptr @assign_discriminator, ptr @same_line_p, i64 622375}
!541 = !{ptr @assign_discriminator, ptr @next_discriminator_for_locus, i64 51208}
!542 = !{ptr @first_non_label_stmt, ptr @gsi_start_bb, i64 333006}
!543 = !{ptr @first_non_label_stmt, ptr @gsi_end_p, i64 663410}
!544 = !{ptr @first_non_label_stmt, ptr @gsi_stmt, i64 660808}
!545 = !{ptr @first_non_label_stmt, ptr @gimple_code, i64 660808}
!546 = !{ptr @first_non_label_stmt, ptr @gsi_next, i64 330404}
!547 = !{ptr @same_line_p, ptr @expand_location, i64 1243874}
!548 = !{ptr @next_discriminator_for_locus, ptr @htab_find_slot_with_hash, i64 51207}
!549 = !{ptr @next_discriminator_for_locus, ptr @fancy_abort, i64 2}
!550 = !{ptr @next_discriminator_for_locus, ptr @xmalloc, i64 44964}
!551 = !{ptr @gimple_set_op, ptr @gimple_has_ops, i64 654125}
!552 = !{ptr @gimple_set_op, ptr @gimple_num_ops, i64 654124}
!553 = !{ptr @gimple_set_op, ptr @fancy_abort, i64 2}
!554 = !{ptr @gimple_set_op, ptr @gimple_ops, i64 654125}
!555 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 4075872}
!556 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 3988173}
!557 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!558 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 3988173}
!559 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 3988173}
!560 = !{ptr @link_use_stmts_after, ptr @get_use_from_ptr, i64 37}
!561 = !{ptr @link_use_stmts_after, ptr @is_gimple_reg, i64 12}
!562 = !{ptr @link_use_stmts_after, ptr @gimple_code, i64 12}
!563 = !{ptr @link_use_stmts_after, ptr @op_iter_init_phiuse, i64 1}
!564 = !{ptr @link_use_stmts_after, ptr @op_iter_done, i64 36}
!565 = !{ptr @link_use_stmts_after, ptr @move_use_after_head, i64 14}
!566 = !{ptr @link_use_stmts_after, ptr @op_iter_next_use, i64 25}
!567 = !{ptr @link_use_stmts_after, ptr @op_iter_init_use, i64 10}
!568 = !{ptr @link_use_stmts_after, ptr @gimple_vuse_op, i64 1}
!569 = !{ptr @link_use_stmts_after, ptr @delink_imm_use, i64 1}
!570 = !{ptr @link_use_stmts_after, ptr @link_imm_use_to_list, i64 12}
!571 = !{ptr @move_use_after_head, ptr @delink_imm_use, i64 1}
!572 = !{ptr @move_use_after_head, ptr @link_imm_use_to_list, i64 1}
!573 = !{ptr @op_iter_next_use, ptr @gimple_phi_arg_imm_use_ptr, i64 1}
!574 = !{ptr @op_iter_init_use, ptr @fancy_abort, i64 2}
!575 = !{ptr @op_iter_init_use, ptr @op_iter_init, i64 12}
!576 = !{ptr @op_iter_init_use, ptr @op_iter_next_use, i64 12}
!577 = !{ptr @op_iter_init, ptr @fancy_abort, i64 1}
!578 = !{ptr @op_iter_init, ptr @gimple_def_ops, i64 87674}
!579 = !{ptr @op_iter_init, ptr @gimple_vdef, i64 1}
!580 = !{ptr @op_iter_init, ptr @gimple_use_ops, i64 13}
!581 = !{ptr @op_iter_init, ptr @gimple_vuse, i64 13}
!582 = !{ptr @gimple_def_ops, ptr @gimple_has_ops, i64 87675}
!583 = !{ptr @gimple_use_ops, ptr @gimple_has_ops, i64 12}
!584 = !{ptr @gimple_vuse, ptr @gimple_has_mem_ops, i64 12}
!585 = !{ptr @gimple_has_mem_ops, ptr @gimple_code, i64 12}
!586 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!587 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 4396}
!588 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 2198}
!589 = !{ptr @ei_end_p, ptr @ei_container, i64 28412139}
!590 = !{ptr @ei_end_p, ptr @VEC_edge_base_length, i64 14206251}
!591 = !{ptr @ei_edge, ptr @ei_container, i64 18382155}
!592 = !{ptr @ei_edge, ptr @VEC_edge_base_index, i64 9191078}
!593 = !{ptr @ei_container, ptr @fancy_abort, i64 1}
!594 = !{ptr @phi_nodes, ptr @fancy_abort, i64 1}
!595 = !{ptr @VEC_basic_block_heap_reserve, ptr @VEC_basic_block_base_space, i64 37853}
!596 = !{ptr @VEC_basic_block_heap_reserve, ptr @vec_heap_p_reserve, i64 2368}
!597 = !{ptr @single_succ_p, ptr @VEC_edge_base_length, i64 1206856}
!598 = !{ptr @set_bb_seq, ptr @fancy_abort, i64 1}
!599 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @VEC_edge_base_length, i64 559632}
!600 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @VEC_edge_base_index, i64 1076310}
!601 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @gsi_last_bb, i64 623}
!602 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @gsi_end_p, i64 623}
!603 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @gsi_stmt, i64 622}
!604 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @gimple_code, i64 622}
!605 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @gsi_remove, i64 621}
!606 = !{ptr @gimple_try_redirect_by_replacing_jump, ptr @ssa_redirect_edge, i64 621}
!607 = !{ptr @get_cases_for_edge, ptr @recording_case_labels_p, i64 103}
!608 = !{ptr @get_cases_for_edge, ptr @pointer_map_contains, i64 193}
!609 = !{ptr @get_cases_for_edge, ptr @gimple_switch_num_labels, i64 91}
!610 = !{ptr @get_cases_for_edge, ptr @gimple_switch_label, i64 12261}
!611 = !{ptr @get_cases_for_edge, ptr @label_to_block_fn, i64 12261}
!612 = !{ptr @get_cases_for_edge, ptr @find_edge, i64 12261}
!613 = !{ptr @get_cases_for_edge, ptr @pointer_map_insert, i64 12261}
!614 = !{ptr @remove_phi_nodes_and_edges_for_unreachable_block, ptr @remove_phi_nodes, i64 267984}
!615 = !{ptr @remove_phi_nodes_and_edges_for_unreachable_block, ptr @VEC_edge_base_length, i64 536064}
!616 = !{ptr @remove_phi_nodes_and_edges_for_unreachable_block, ptr @VEC_edge_base_index, i64 268080}
!617 = !{ptr @remove_phi_nodes_and_edges_for_unreachable_block, ptr @remove_edge, i64 268080}
!618 = !{ptr @single_pred_p, ptr @VEC_edge_base_length, i64 702820}
!619 = !{ptr @op_iter_init_def, ptr @op_iter_init, i64 87675}
!620 = !{ptr @op_iter_init_def, ptr @op_iter_next_def, i64 87675}
!621 = !{ptr @reinstall_phi_args, ptr @redirect_edge_var_map_vector, i64 195942}
!622 = !{ptr @reinstall_phi_args, ptr @gsi_start_phis, i64 171910}
!623 = !{ptr @reinstall_phi_args, ptr @VEC_edge_var_map_base_iterate, i64 261411}
!624 = !{ptr @reinstall_phi_args, ptr @gsi_end_p, i64 175456}
!625 = !{ptr @reinstall_phi_args, ptr @gsi_stmt, i64 89501}
!626 = !{ptr @reinstall_phi_args, ptr @redirect_edge_var_map_result, i64 89501}
!627 = !{ptr @reinstall_phi_args, ptr @redirect_edge_var_map_def, i64 89501}
!628 = !{ptr @reinstall_phi_args, ptr @gimple_phi_result, i64 89501}
!629 = !{ptr @reinstall_phi_args, ptr @redirect_edge_var_map_location, i64 89501}
!630 = !{ptr @reinstall_phi_args, ptr @add_phi_arg, i64 89501}
!631 = !{ptr @reinstall_phi_args, ptr @gsi_next, i64 89501}
!632 = !{ptr @reinstall_phi_args, ptr @redirect_edge_var_map_clear, i64 171910}
!633 = !{ptr @do_warn_unused_result, ptr @gsi_start, i64 80}
!634 = !{ptr @do_warn_unused_result, ptr @gsi_end_p, i64 647974}
!635 = !{ptr @do_warn_unused_result, ptr @gsi_stmt, i64 647894}
!636 = !{ptr @do_warn_unused_result, ptr @gimple_code, i64 647894}
!637 = !{ptr @do_warn_unused_result, ptr @gimple_bind_body, i64 40}
!638 = !{ptr @do_warn_unused_result, ptr @do_warn_unused_result, i64 44}
!639 = !{ptr @do_warn_unused_result, ptr @gimple_try_eval, i64 1}
!640 = !{ptr @do_warn_unused_result, ptr @gimple_try_cleanup, i64 1}
!641 = !{ptr @do_warn_unused_result, ptr @gimple_catch_handler, i64 1}
!642 = !{ptr @do_warn_unused_result, ptr @gimple_eh_filter_failure, i64 1}
!643 = !{ptr @do_warn_unused_result, ptr @gimple_call_lhs, i64 68390}
!644 = !{ptr @do_warn_unused_result, ptr @gimple_call_fndecl, i64 2172}
!645 = !{ptr @do_warn_unused_result, ptr @gimple_call_fn, i64 2172}
!646 = !{ptr @do_warn_unused_result, ptr @lookup_attribute, i64 2172}
!647 = !{ptr @do_warn_unused_result, ptr @gimple_location, i64 1}
!648 = !{ptr @do_warn_unused_result, ptr @warning_at, i64 1}
!649 = !{ptr @do_warn_unused_result, ptr @gsi_next, i64 647894}
!650 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!651 = !{!"function_entry_count", i64 41}
!652 = !{!653, !654, i64 8}
!653 = !{!"function", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !654, i64 80, !654, i64 88, !654, i64 96, !657, i64 104, !657, i64 108, !657, i64 112, !657, i64 116, !657, i64 120, !657, i64 124, !654, i64 128, !657, i64 136, !657, i64 137, !657, i64 138, !657, i64 138, !657, i64 138, !657, i64 138, !657, i64 138, !657, i64 138, !657, i64 138, !657, i64 139, !657, i64 139, !657, i64 139, !657, i64 139, !657, i64 139, !657, i64 139, !657, i64 139}
!654 = !{!"any pointer", !655, i64 0}
!655 = !{!"omnipotent char", !656, i64 0}
!656 = !{!"Simple C/C++ TBAA"}
!657 = !{!"int", !655, i64 0}
!658 = !{!659, !657, i64 48}
!659 = !{!"control_flow_graph", !654, i64 0, !654, i64 8, !654, i64 16, !657, i64 24, !657, i64 28, !657, i64 32, !654, i64 40, !657, i64 48, !655, i64 52, !655, i64 60, !657, i64 68, !657, i64 72}
!660 = !{!659, !657, i64 24}
!661 = !{!659, !657, i64 32}
!662 = !{!659, !654, i64 16}
!663 = !{!659, !654, i64 40}
!664 = !{!659, !654, i64 0}
!665 = !{!659, !654, i64 8}
!666 = !{!667, !654, i64 56}
!667 = !{!"basic_block_def", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !655, i64 32, !654, i64 48, !654, i64 56, !655, i64 64, !668, i64 72, !657, i64 80, !657, i64 84, !657, i64 88, !657, i64 92, !657, i64 96}
!668 = !{!"long", !655, i64 0}
!669 = !{!667, !654, i64 48}
!670 = !{!"function_entry_count", i64 82}
!671 = !{!"tree-cfg.c:VEC_basic_block_gc_alloc"}
!672 = !{!"function_entry_count", i64 580}
!673 = !{!"tree-cfg.c:VEC_basic_block_gc_safe_grow_cleared"}
!674 = !{!654, !654, i64 0}
!675 = !{!"function_entry_count", i64 423558}
!676 = !{!"tree-cfg.c:VEC_basic_block_base_replace"}
!677 = !{!"function_entry_count", i64 40}
!678 = !{!"tree-cfg.c:execute_build_cfg"}
!679 = !{!"branch_weights", i32 41, i32 1}
!680 = !{!657, !657, i64 0}
!681 = !{!"function_entry_count", i64 118}
!682 = !{!"branch_weights", i32 1, i32 237}
!683 = !{!"branch_weights", i32 14185, i32 474591}
!684 = !{i32 0, i32 256}
!685 = !{!"branch_weights", i32 427293, i32 47299}
!686 = !{i32 0, i32 65536}
!687 = !{!"branch_weights", i32 393144, i32 34150}
!688 = !{!"branch_weights", i32 65, i32 427229}
!689 = !{!"branch_weights", i32 427165, i32 65}
!690 = !{!"branch_weights", i32 427109, i32 121}
!691 = !{!"branch_weights", i32 237, i32 977313}
!692 = distinct !{!692, !693}
!693 = !{!"llvm.loop.mustprogress"}
!694 = !{!"function_entry_count", i64 16465541}
!695 = !{i8 0, i8 2}
!696 = !{!"branch_weights", i32 978790, i32 1}
!697 = !{!"branch_weights", i32 16465542, i32 1}
!698 = !{!"branch_weights", i32 14507962, i32 978790}
!699 = distinct !{!699, !693}
!700 = !{!"function_entry_count", i64 51131255}
!701 = !{!"tree-cfg.c:gimple_code"}
!702 = !{!"function_entry_count", i64 1524986}
!703 = !{!"tree-cfg.c:gimple_location"}
!704 = !{!655, !655, i64 0}
!705 = !{!"function_entry_count", i64 427292}
!706 = !{!"tree-cfg.c:gimple_cond_code"}
!707 = !{!"tree-cfg.c:gimple_cond_lhs"}
!708 = !{!"tree-cfg.c:gimple_cond_rhs"}
!709 = !{!"function_entry_count", i64 64}
!710 = !{!"tree-cfg.c:gimple_cond_make_false"}
!711 = !{!"function_entry_count", i64 120}
!712 = !{!"tree-cfg.c:gimple_cond_make_true"}
!713 = !{!"function_entry_count", i64 827}
!714 = !{!"branch_weights", i32 828, i32 1}
!715 = !{!"function_entry_count", i64 89}
!716 = !{!"tree-cfg.c:edge_to_cases_cleanup"}
!717 = !{!"branch_weights", i32 1, i32 179}
!718 = !{!"branch_weights", i32 179, i32 361}
!719 = distinct !{!719, !693}
!720 = !{!"function_entry_count", i64 762167}
!721 = !{!"branch_weights", i32 762168, i32 1}
!722 = !{!"function_entry_count", i64 1929070}
!723 = !{!"tree-cfg.c:gsi_start_bb"}
!724 = !{!725, !654, i64 0}
!725 = !{!"", !654, i64 0, !654, i64 8, !654, i64 16}
!726 = !{!725, !654, i64 8}
!727 = !{!725, !654, i64 16}
!728 = !{!"function_entry_count", i64 764105}
!729 = !{!"tree-cfg.c:VEC_basic_block_base_index"}
!730 = !{!"function_entry_count", i64 1187108}
!731 = !{!"tree-cfg.c:VEC_basic_block_base_length"}
!732 = !{!"branch_weights", i32 1, i32 1187109}
!733 = !{!734, !657, i64 0}
!734 = !{!"VEC_basic_block_base", !657, i64 0, !657, i64 4, !655, i64 8}
!735 = !{!"function_entry_count", i64 0}
!736 = distinct !{!736, !693}
!737 = distinct !{!737, !693}
!738 = !{!"function_entry_count", i64 22526489}
!739 = !{!"tree-cfg.c:gsi_end_p"}
!740 = !{!"function_entry_count", i64 20990426}
!741 = !{!"tree-cfg.c:gsi_stmt"}
!742 = !{!743, !654, i64 0}
!743 = !{!"gimple_seq_node_d", !654, i64 0, !654, i64 8, !654, i64 16}
!744 = !{!"function_entry_count", i64 871732}
!745 = !{!"tree-cfg.c:gimple_label_label"}
!746 = !{!"function_entry_count", i64 2546453}
!747 = !{!"tree-cfg.c:gsi_next"}
!748 = !{!743, !654, i64 16}
!749 = !{!"branch_weights", i32 11661, i32 1}
!750 = !{!"branch_weights", i32 401356, i32 518140}
!751 = !{!667, !657, i64 80}
!752 = !{!753, !654, i64 0}
!753 = !{!"label_record", !654, i64 0, !655, i64 8}
!754 = !{!"branch_weights", i32 378558, i32 22799}
!755 = !{!"branch_weights", i32 1, i32 22799}
!756 = !{!"branch_weights", i32 907834, i32 11661}
!757 = distinct !{!757, !693}
!758 = !{!"branch_weights", i32 237, i32 1059365}
!759 = distinct !{!759, !693}
!760 = !{!"branch_weights", i32 0, i32 -2147483648}
!761 = !{!"branch_weights", i32 11522, i32 518280}
!762 = !{!"branch_weights", i32 46717, i32 427715, i32 117, i32 1, i32 43734}
!763 = !{!"branch_weights", i32 283943, i32 143773}
!764 = !{!"branch_weights", i32 1, i32 233}
!765 = !{!"branch_weights", i32 233, i32 88131}
!766 = distinct !{!766, !693}
!767 = distinct !{!767, !693}
!768 = !{!"branch_weights", i32 43734, i32 1}
!769 = distinct !{!769, !693}
!770 = !{!"branch_weights", i32 151244, i32 378558}
!771 = !{!753, !655, i64 8}
!772 = !{!"branch_weights", i32 184869, i32 193690}
!773 = !{i64 0, i64 8, !674, i64 8, i64 8, !674, i64 16, i64 8, !674}
!774 = !{!"branch_weights", i32 140, i32 1}
!775 = !{!"branch_weights", i32 401356, i32 378418}
!776 = !{!"branch_weights", i32 193690, i32 207667}
!777 = !{!"branch_weights", i32 -1599618366, i32 25958}
!778 = !{!"branch_weights", i32 207667, i32 1}
!779 = !{!"branch_weights", i32 779633, i32 140}
!780 = distinct !{!780, !693}
!781 = !{!"function_entry_count", i64 571486}
!782 = !{!"tree-cfg.c:gimple_cond_true_label"}
!783 = !{!"tree-cfg.c:gimple_cond_false_label"}
!784 = !{!"function_entry_count", i64 287544}
!785 = !{!"tree-cfg.c:gimple_cond_set_true_label"}
!786 = !{!"function_entry_count", i64 375458}
!787 = !{!"tree-cfg.c:main_block_label"}
!788 = !{!"branch_weights", i32 1, i32 375459}
!789 = !{!"tree-cfg.c:gimple_cond_set_false_label"}
!790 = !{!"function_entry_count", i64 325}
!791 = !{!"tree-cfg.c:gimple_switch_num_labels"}
!792 = !{!"branch_weights", i32 326, i32 1}
!793 = !{!"function_entry_count", i64 172364}
!794 = !{!"tree-cfg.c:gimple_switch_label"}
!795 = !{!"branch_weights", i32 172365, i32 1}
!796 = !{!"tree-cfg.c:gimple_asm_nlabels"}
!797 = !{!"tree-cfg.c:gimple_asm_label_op"}
!798 = !{!"function_entry_count", i64 700159}
!799 = !{!"tree-cfg.c:computed_goto_p"}
!800 = !{!"branch_weights", i32 87467, i32 612694}
!801 = !{!"function_entry_count", i64 218665}
!802 = !{!"tree-cfg.c:gimple_goto_dest"}
!803 = !{!"function_entry_count", i64 43733}
!804 = !{!"tree-cfg.c:gimple_goto_set_dest"}
!805 = !{!"tree-cfg.c:cleanup_dead_labels_eh"}
!806 = !{!653, !654, i64 0}
!807 = !{!"branch_weights", i32 1, i32 119}
!808 = !{!809, !654, i64 16}
!809 = !{!"eh_status", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !655, i64 40}
!810 = !{i32 0, i32 2}
!811 = !{!"branch_weights", i32 118, i32 1}
!812 = !{!813, !654, i64 16}
!813 = !{!"eh_landing_pad_d", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !657, i64 32}
!814 = !{!813, !657, i64 32}
!815 = !{!"branch_weights", i32 1, i32 0}
!816 = distinct !{!816, !693}
!817 = !{!809, !654, i64 0}
!818 = !{!819, !657, i64 28}
!819 = !{!"eh_region_d", !654, i64 0, !654, i64 8, !654, i64 16, !657, i64 24, !657, i64 28, !655, i64 32, !654, i64 56, !654, i64 64, !654, i64 72, !655, i64 80}
!820 = !{!821, !654, i64 32}
!821 = !{!"eh_catch_d", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32}
!822 = distinct !{!822, !693}
!823 = distinct !{!823, !693}
!824 = !{!"function_entry_count", i64 78}
!825 = !{!"branch_weights", i32 1, i32 157}
!826 = !{!"branch_weights", i32 11522, i32 330410}
!827 = !{!"branch_weights", i32 79, i32 330332}
!828 = !{!"branch_weights", i32 79, i32 1}
!829 = !{!"branch_weights", i32 157, i32 1}
!830 = !{!"branch_weights", i32 1, i32 18417}
!831 = distinct !{!831, !693}
!832 = !{!"branch_weights", i32 14697, i32 3721}
!833 = !{!"branch_weights", i32 18413, i32 16369}
!834 = !{!"branch_weights", i32 1971, i32 16443}
!835 = !{!"branch_weights", i32 16443, i32 1}
!836 = !{!"branch_weights", i32 157, i32 69405}
!837 = !{!"branch_weights", i32 -2147483648, i32 0}
!838 = !{!"branch_weights", i32 15903, i32 18495}
!839 = distinct !{!839, !693}
!840 = !{!"branch_weights", i32 157, i32 36833}
!841 = distinct !{!841, !693}
!842 = !{!"branch_weights", i32 1, i32 79}
!843 = !{!"branch_weights", i32 157, i32 683705}
!844 = distinct !{!844, !693}
!845 = !{!"function_entry_count", i64 234}
!846 = !{!"tree-cfg.c:gimple_switch_default_label"}
!847 = !{!"function_entry_count", i64 34936}
!848 = !{!"tree-cfg.c:gimple_switch_set_label"}
!849 = !{!"branch_weights", i32 34937, i32 1}
!850 = !{!"branch_weights", i32 16443, i32 18495}
!851 = !{!"branch_weights", i32 18495, i32 1}
!852 = !{!"tree-cfg.c:gimple_switch_set_num_labels"}
!853 = !{!854, !654, i64 8}
!854 = !{!"ssa_use_operand_d", !654, i64 0, !654, i64 8, !655, i64 16, !654, i64 24}
!855 = distinct !{!855, !693}
!856 = !{!"function_entry_count", i64 16069941}
!857 = !{!"tree-cfg.c:is_gimple_debug"}
!858 = distinct !{!858, !693}
!859 = !{!"function_entry_count", i64 18}
!860 = !{!"branch_weights", i32 13, i32 6}
!861 = !{!"branch_weights", i32 207, i32 1}
!862 = !{!"branch_weights", i32 1, i32 13}
!863 = !{!864, !657, i64 48}
!864 = !{!"edge_def", !654, i64 0, !654, i64 8, !655, i64 16, !654, i64 24, !654, i64 32, !657, i64 40, !657, i64 44, !657, i64 48, !657, i64 52, !668, i64 56}
!865 = !{!"branch_weights", i32 1, i32 207}
!866 = distinct !{!866, !693}
!867 = !{!"branch_weights", i32 1, i32 31}
!868 = !{!"branch_weights", i32 7, i32 25}
!869 = !{!"branch_weights", i32 289, i32 207}
!870 = distinct !{!870, !693}
!871 = !{!"branch_weights", i32 0, i32 13}
!872 = distinct !{!872, !693}
!873 = !{!"branch_weights", i32 1, i32 19}
!874 = !{!653, !654, i64 32}
!875 = !{!"branch_weights", i32 19, i32 1}
!876 = distinct !{!876, !693}
!877 = !{!"function_entry_count", i64 24}
!878 = !{!"tree-cfg.c:first_imm_use_stmt"}
!879 = !{!880, !654, i64 8}
!880 = !{!"immediate_use_iterator_d", !654, i64 0, !654, i64 8, !854, i64 16, !654, i64 48}
!881 = !{!880, !654, i64 0}
!882 = !{!"branch_weights", i32 13, i32 13}
!883 = !{!"function_entry_count", i64 72}
!884 = !{!"tree-cfg.c:end_imm_use_stmt_p"}
!885 = !{!"function_entry_count", i64 12}
!886 = !{!"tree-cfg.c:first_imm_use_on_stmt"}
!887 = !{!880, !654, i64 48}
!888 = !{!"function_entry_count", i64 36}
!889 = !{!"tree-cfg.c:end_imm_use_on_stmt_p"}
!890 = !{!"tree-cfg.c:gimple_phi_arg_edge"}
!891 = !{!667, !654, i64 0}
!892 = !{!"tree-cfg.c:phi_arg_index_from_use"}
!893 = !{!"tree-cfg.c:next_imm_use_on_stmt"}
!894 = !{!"function_entry_count", i64 35713}
!895 = !{!"tree-cfg.c:gimple_bb"}
!896 = !{!"function_entry_count", i64 861792}
!897 = !{!"tree-cfg.c:gimple_num_ops"}
!898 = !{!"function_entry_count", i64 3334048}
!899 = !{!"tree-cfg.c:gimple_op"}
!900 = !{!"branch_weights", i32 1, i32 3334049}
!901 = !{!"tree-cfg.c:update_stmt"}
!902 = !{!"tree-cfg.c:next_imm_use_stmt"}
!903 = !{!880, !654, i64 24}
!904 = !{!880, !654, i64 16}
!905 = !{!"tree-cfg.c:has_zero_uses"}
!906 = !{!"tree-cfg.c:fel_init"}
!907 = !{!908, !657, i64 8}
!908 = !{!"", !654, i64 0, !657, i64 8}
!909 = !{!908, !654, i64 0}
!910 = !{!911, !654, i64 24}
!911 = !{!"loops", !657, i64 0, !654, i64 8, !654, i64 16, !654, i64 24}
!912 = !{!913, !657, i64 0}
!913 = !{!"loop", !657, i64 0, !657, i64 4, !654, i64 8, !654, i64 16, !914, i64 24, !657, i64 32, !657, i64 36, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !915, i64 80, !915, i64 96, !655, i64 112, !655, i64 113, !657, i64 116, !654, i64 120, !654, i64 128, !655, i64 136, !654, i64 144}
!914 = !{!"lpt_decision", !657, i64 0, !657, i64 4}
!915 = !{!"", !668, i64 0, !668, i64 8}
!916 = !{!913, !654, i64 48}
!917 = !{!913, !654, i64 56}
!918 = distinct !{!918, !693}
!919 = !{!"tree-cfg.c:fel_next"}
!920 = distinct !{!920, !693}
!921 = !{!667, !654, i64 8}
!922 = !{!864, !654, i64 8}
!923 = !{!"function_entry_count", i64 27173051}
!924 = !{!"tree-cfg.c:VEC_edge_base_length"}
!925 = !{!"branch_weights", i32 363, i32 27172690}
!926 = !{!927, !657, i64 0}
!927 = !{!"VEC_edge_base", !657, i64 0, !657, i64 4, !655, i64 8}
!928 = !{!"function_entry_count", i64 13127082}
!929 = !{!"tree-cfg.c:VEC_edge_base_index"}
!930 = !{!"function_entry_count", i64 414602}
!931 = !{!"branch_weights", i32 414603, i32 1}
!932 = !{!"function_entry_count", i64 230}
!933 = !{!"function_entry_count", i64 3566109}
!934 = !{!"branch_weights", i32 1, i32 3566110}
!935 = !{!"branch_weights", i32 3265045, i32 301066}
!936 = !{!"branch_weights", i32 256840, i32 44227}
!937 = !{!"branch_weights", i32 1, i32 88454, i32 1}
!938 = !{!"function_entry_count", i64 10675729}
!939 = !{!"branch_weights", i32 3648609, i32 6980567, i32 1865, i32 43734, i32 959, i32 1}
!940 = !{!"function_entry_count", i64 44226}
!941 = !{!"tree-cfg.c:find_taken_edge_cond_expr"}
!942 = !{!"branch_weights", i32 44227, i32 1}
!943 = !{!"branch_weights", i32 9511, i32 34717}
!944 = !{!"tree-cfg.c:find_taken_edge_switch_expr"}
!945 = !{!"tree-cfg.c:find_taken_edge_computed_goto"}
!946 = !{!947, !654, i64 176}
!947 = !{!"lang_hooks", !654, i64 0, !668, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !654, i64 80, !654, i64 88, !654, i64 96, !654, i64 104, !654, i64 112, !654, i64 120, !654, i64 128, !654, i64 136, !654, i64 144, !654, i64 152, !654, i64 160, !654, i64 168, !654, i64 176, !654, i64 184, !654, i64 192, !654, i64 200, !654, i64 208, !654, i64 216, !654, i64 224, !654, i64 232, !948, i64 240, !949, i64 248, !950, i64 256, !951, i64 272, !952, i64 432, !953, i64 560, !654, i64 584, !654, i64 592, !654, i64 600, !654, i64 608, !654, i64 616, !654, i64 624, !654, i64 632, !654, i64 640, !654, i64 648, !654, i64 656, !654, i64 664, !655, i64 672}
!948 = !{!"lang_hooks_for_tree_inlining", !654, i64 0}
!949 = !{!"lang_hooks_for_callgraph", !654, i64 0}
!950 = !{!"lang_hooks_for_tree_dump", !654, i64 0, !654, i64 8}
!951 = !{!"lang_hooks_for_decls", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !654, i64 80, !654, i64 88, !654, i64 96, !654, i64 104, !654, i64 112, !654, i64 120, !654, i64 128, !654, i64 136, !654, i64 144, !654, i64 152}
!952 = !{!"lang_hooks_for_types", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !654, i64 56, !654, i64 64, !654, i64 72, !654, i64 80, !654, i64 88, !654, i64 96, !654, i64 104, !654, i64 112, !655, i64 120}
!953 = !{!"lang_hooks_for_lto", !654, i64 0, !654, i64 8, !654, i64 16}
!954 = !{!659, !657, i64 28}
!955 = distinct !{!955, !693}
!956 = !{!957, !668, i64 0}
!957 = !{!"cfg_stats_d", !668, i64 0}
!958 = !{!668, !668, i64 0}
!959 = distinct !{!959, !693}
!960 = !{!653, !654, i64 48}
!961 = !{!653, !654, i64 72}
!962 = distinct !{!962, !693}
!963 = distinct !{!963, !693}
!964 = !{!"function_entry_count", i64 5267176}
!965 = !{!"branch_weights", i32 1, i32 5267177}
!966 = !{!"branch_weights", i32 4228989, i32 1038189, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!967 = !{!"branch_weights", i32 1038189, i32 1}
!968 = !{!"branch_weights", i32 -91084544, i32 6423794}
!969 = !{!"branch_weights", i32 1036607, i32 1583}
!970 = !{!"function_entry_count", i64 395}
!971 = !{!"branch_weights", i32 396, i32 1}
!972 = !{!"branch_weights", i32 286, i32 111}
!973 = !{!"branch_weights", i32 1, i32 111}
!974 = !{!"function_entry_count", i64 188039}
!975 = !{!"tree-cfg.c:is_gimple_call"}
!976 = !{!"function_entry_count", i64 6775005}
!977 = !{!"branch_weights", i32 3597898, i32 3177109}
!978 = !{!"function_entry_count", i64 604670}
!979 = !{!"branch_weights", i32 23773, i32 1}
!980 = !{!"branch_weights", i32 604671, i32 1}
!981 = !{!"branch_weights", i32 557125, i32 23773}
!982 = distinct !{!982, !693}
!983 = !{!"function_entry_count", i64 17546516}
!984 = !{!"tree-cfg.c:gsi_last_bb"}
!985 = !{!"function_entry_count", i64 1383}
!986 = !{!"tree-cfg.c:gsi_prev"}
!987 = !{!743, !654, i64 8}
!988 = !{!"function_entry_count", i64 4773}
!989 = !{!"branch_weights", i32 1384, i32 3391}
!990 = !{!"branch_weights", i32 911, i32 474}
!991 = !{!"branch_weights", i32 1, i32 911}
!992 = !{!"tree-cfg.c:gsi_last_nondebug_bb"}
!993 = !{!"branch_weights", i32 1384, i32 1}
!994 = !{!"tree-cfg.c:gsi_prev_nondebug"}
!995 = distinct !{!995, !693}
!996 = !{!"tree-cfg.c:verify_types_in_gimple_seq_2"}
!997 = distinct !{!997, !693}
!998 = distinct !{!998, !693}
!999 = !{!1000, !654, i64 24}
!1000 = !{!"walk_stmt_info", !725, i64 0, !654, i64 24, !654, i64 32, !655, i64 40, !655, i64 41, !655, i64 42, !655, i64 43, !654, i64 48}
!1001 = distinct !{!1001, !693}
!1002 = distinct !{!1002, !693}
!1003 = distinct !{!1003, !693}
!1004 = distinct !{!1004, !693}
!1005 = !{!"tree-cfg.c:gimple_phi_num_args"}
!1006 = !{!"tree-cfg.c:gimple_phi_arg_def"}
!1007 = !{!"tree-cfg.c:verify_node_sharing"}
!1008 = !{!"tree-cfg.c:verify_stmt"}
!1009 = !{!"tree-cfg.c:verify_eh_throw_stmt_node"}
!1010 = !{!1011, !654, i64 0}
!1011 = !{!"throw_stmt_node", !654, i64 0, !657, i64 8}
!1012 = !{!"function_entry_count", i64 103}
!1013 = !{!"branch_weights", i32 171, i32 1}
!1014 = !{!"branch_weights", i32 33, i32 30}
!1015 = !{!"branch_weights", i32 33, i32 1}
!1016 = !{!"branch_weights", i32 1, i32 33}
!1017 = !{!"branch_weights", i32 77, i32 171}
!1018 = distinct !{!1018, !693}
!1019 = !{i64 0, i64 4, !680, i64 8, i64 8, !674}
!1020 = !{i64 0, i64 8, !674}
!1021 = distinct !{!1021, !693}
!1022 = !{!"function_entry_count", i64 5015615}
!1023 = !{!"tree-cfg.c:ei_start_1"}
!1024 = !{!"function_entry_count", i64 833542}
!1025 = !{!"tree-cfg.c:ei_cond"}
!1026 = !{!"branch_weights", i32 490609, i32 342935}
!1027 = !{!"tree-cfg.c:add_phi_args_after_copy_edge"}
!1028 = !{!864, !654, i64 0}
!1029 = !{!667, !657, i64 96}
!1030 = distinct !{!1030, !693}
!1031 = !{!864, !657, i64 44}
!1032 = distinct !{!1032, !693}
!1033 = !{!"function_entry_count", i64 9190636}
!1034 = !{!"tree-cfg.c:ei_next"}
!1035 = !{!"branch_weights", i32 1, i32 9190637}
!1036 = !{!"branch_weights", i32 9190637, i32 1}
!1037 = !{!1038, !657, i64 0}
!1038 = !{!"", !657, i64 0, !654, i64 8}
!1039 = distinct !{!1039, !693}
!1040 = distinct !{!1040, !693}
!1041 = distinct !{!1041, !693}
!1042 = !{!667, !654, i64 24}
!1043 = !{!913, !654, i64 8}
!1044 = distinct !{!1044, !693}
!1045 = !{!913, !654, i64 16}
!1046 = distinct !{!1046, !693}
!1047 = !{!667, !668, i64 72}
!1048 = !{!864, !668, i64 56}
!1049 = !{!667, !657, i64 88}
!1050 = !{!864, !657, i64 52}
!1051 = !{!"tree-cfg.c:loop_outer"}
!1052 = !{!913, !654, i64 40}
!1053 = !{!"function_entry_count", i64 195942}
!1054 = !{!"tree-cfg.c:split_edge_bb_loc"}
!1055 = !{!"branch_weights", i32 1, i32 195943}
!1056 = !{!"branch_weights", i32 39933, i32 156011}
!1057 = !{!"branch_weights", i32 156011, i32 1}
!1058 = !{!"function_entry_count", i64 37853}
!1059 = !{!"tree-cfg.c:VEC_basic_block_heap_safe_push"}
!1060 = !{!"function_entry_count", i64 1414}
!1061 = !{!"tree-cfg.c:VEC_basic_block_heap_free"}
!1062 = !{!"branch_weights", i32 443, i32 973}
!1063 = distinct !{!1063, !693}
!1064 = distinct !{!1064, !693}
!1065 = distinct !{!1065, !693}
!1066 = !{!"function_entry_count", i64 184}
!1067 = !{!"tree-cfg.c:gimple_cond_set_rhs"}
!1068 = !{!"tree-cfg.c:gimple_cond_set_lhs"}
!1069 = !{!"function_entry_count", i64 805044}
!1070 = !{!"tree-cfg.c:single_succ_edge"}
!1071 = !{!"branch_weights", i32 1, i32 805045}
!1072 = !{!"function_entry_count", i64 54}
!1073 = !{!"tree-cfg.c:get_use_from_ptr"}
!1074 = !{!854, !654, i64 24}
!1075 = !{!"tree-cfg.c:gimple_phi_arg_imm_use_ptr"}
!1076 = !{!"tree-cfg.c:gimple_phi_arg_location_from_edge"}
!1077 = !{!1078, !657, i64 40}
!1078 = !{!"phi_arg_d", !854, i64 0, !654, i64 32, !657, i64 40}
!1079 = distinct !{!1079, !693}
!1080 = distinct !{!1080, !693}
!1081 = distinct !{!1081, !693}
!1082 = distinct !{!1082, !693}
!1083 = distinct !{!1083, !693}
!1084 = distinct !{!1084, !693}
!1085 = !{!1086, !654, i64 0}
!1086 = !{!"move_stmt_d", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !655, i64 56}
!1087 = !{!1086, !654, i64 8}
!1088 = !{!1086, !654, i64 16}
!1089 = !{!1086, !654, i64 24}
!1090 = !{!1086, !654, i64 32}
!1091 = !{!1086, !654, i64 40}
!1092 = !{!1086, !654, i64 48}
!1093 = !{!1086, !655, i64 56}
!1094 = distinct !{!1094, !693}
!1095 = distinct !{!1095, !693}
!1096 = distinct !{!1096, !693}
!1097 = distinct !{!1097, !693}
!1098 = distinct !{!1098, !693}
!1099 = !{!"tree-cfg.c:VEC_basic_block_base_address"}
!1100 = !{!"branch_weights", i32 1, i32 581}
!1101 = !{!"function_entry_count", i64 13372709}
!1102 = !{!"tree-cfg.c:ei_safe_edge"}
!1103 = !{!"branch_weights", i32 8700471, i32 4672240}
!1104 = !{!"function_entry_count", i64 1762}
!1105 = !{!"tree-cfg.c:VEC_basic_block_base_iterate"}
!1106 = !{!"branch_weights", i32 1, i32 1763}
!1107 = !{!"branch_weights", i32 1233, i32 531}
!1108 = !{!"tree-cfg.c:find_outermost_region_in_block"}
!1109 = distinct !{!1109, !693}
!1110 = !{!"tree-cfg.c:new_label_mapper"}
!1111 = !{!1112, !657, i64 8}
!1112 = !{!"tree_map", !1113, i64 0, !657, i64 8, !654, i64 16}
!1113 = !{!"tree_map_base", !654, i64 0}
!1114 = !{!1112, !654, i64 0}
!1115 = !{!1112, !654, i64 16}
!1116 = !{!659, !657, i64 72}
!1117 = !{!"tree-cfg.c:move_block_to_fn"}
!1118 = distinct !{!1118, !693}
!1119 = distinct !{!1119, !693}
!1120 = distinct !{!1120, !693}
!1121 = distinct !{!1121, !693}
!1122 = !{!864, !657, i64 40}
!1123 = !{!864, !654, i64 32}
!1124 = distinct !{!1124, !693}
!1125 = !{!"tree-cfg.c:replace_block_vars_by_duplicates"}
!1126 = distinct !{!1126, !693}
!1127 = distinct !{!1127, !693}
!1128 = !{!"tree-cfg.c:gimple_seq_first_stmt"}
!1129 = !{!"tree-cfg.c:gimple_seq_last_stmt"}
!1130 = !{!"tree-cfg.c:print_pred_bbs"}
!1131 = distinct !{!1131, !693}
!1132 = !{!"tree-cfg.c:print_succ_bbs"}
!1133 = distinct !{!1133, !693}
!1134 = !{!"tree-cfg.c:print_loop_and_siblings"}
!1135 = !{!"tree-cfg.c:print_loop"}
!1136 = !{!913, !654, i64 72}
!1137 = !{!913, !655, i64 112}
!1138 = !{!913, !655, i64 113}
!1139 = distinct !{!1139, !693}
!1140 = !{!"tree-cfg.c:get_loop"}
!1141 = !{!911, !654, i64 8}
!1142 = distinct !{!1142, !693}
!1143 = !{!"function_entry_count", i64 4672239}
!1144 = !{!"branch_weights", i32 440758, i32 4231483}
!1145 = !{!"branch_weights", i32 4231483, i32 1}
!1146 = !{!"branch_weights", i32 1, i32 4672239}
!1147 = !{!"branch_weights", i32 8700471, i32 1}
!1148 = !{!"branch_weights", i32 4672239, i32 4028232}
!1149 = distinct !{!1149, !693}
!1150 = !{!"function_entry_count", i64 707}
!1151 = !{!"branch_weights", i32 1, i32 708}
!1152 = !{!"branch_weights", i32 1, i32 265}
!1153 = !{!"branch_weights", i32 369, i32 443}
!1154 = !{!"branch_weights", i32 443, i32 1}
!1155 = !{!"branch_weights", i32 265, i32 546}
!1156 = distinct !{!1156, !693}
!1157 = !{!"branch_weights", i32 266, i32 443}
!1158 = !{!"branch_weights", i32 1, i32 616}
!1159 = !{!"branch_weights", i32 1, i32 1019}
!1160 = !{!"branch_weights", i32 616, i32 403}
!1161 = distinct !{!1161, !693}
!1162 = !{!"branch_weights", i32 265, i32 352}
!1163 = distinct !{!1163, !693}
!1164 = distinct !{!1164, !693}
!1165 = !{!"branch_weights", i32 265, i32 182}
!1166 = distinct !{!1166, !693}
!1167 = distinct !{!1167, !693}
!1168 = !{!"branch_weights", i32 1, i32 707}
!1169 = !{!"branch_weights", i32 1, i32 836}
!1170 = !{!"branch_weights", i32 836, i32 37018}
!1171 = distinct !{!1171, !693}
!1172 = !{!"branch_weights", i32 707, i32 130}
!1173 = distinct !{!1173, !693}
!1174 = !{!"function_entry_count", i64 972}
!1175 = !{!"tree-cfg.c:bmp_iter_set_init"}
!1176 = !{!1177, !654, i64 0}
!1177 = !{!"bitmap_head_def", !654, i64 0, !654, i64 8, !657, i64 16, !654, i64 24}
!1178 = !{!1179, !654, i64 0}
!1179 = !{!"", !654, i64 0, !654, i64 8, !657, i64 16, !668, i64 24}
!1180 = !{!1179, !654, i64 8}
!1181 = !{!"branch_weights", i32 1, i32 973}
!1182 = !{!1183, !657, i64 16}
!1183 = !{!"bitmap_element_def", !654, i64 0, !654, i64 8, !657, i64 16, !655, i64 24}
!1184 = !{!1179, !657, i64 16}
!1185 = !{!1179, !668, i64 24}
!1186 = !{!"function_entry_count", i64 2254}
!1187 = !{!"tree-cfg.c:bmp_iter_set"}
!1188 = !{!"branch_weights", i32 1578, i32 678}
!1189 = !{!"branch_weights", i32 1282, i32 1}
!1190 = !{!"branch_weights", i32 30455, i32 1282}
!1191 = distinct !{!1191, !693}
!1192 = !{!"branch_weights", i32 1, i32 1157}
!1193 = !{!"branch_weights", i32 738, i32 606}
!1194 = !{!"branch_weights", i32 1157, i32 186}
!1195 = distinct !{!1195, !693}
!1196 = !{!1183, !654, i64 0}
!1197 = !{!"branch_weights", i32 973, i32 186}
!1198 = !{!"function_entry_count", i64 1282}
!1199 = !{!"tree-cfg.c:bmp_iter_next"}
!1200 = distinct !{!1200, !693}
!1201 = !{!"tree-cfg.c:gimple_verify_flow_info"}
!1202 = distinct !{!1202, !693}
!1203 = distinct !{!1203, !693}
!1204 = distinct !{!1204, !693}
!1205 = distinct !{!1205, !693}
!1206 = distinct !{!1206, !693}
!1207 = distinct !{!1207, !693}
!1208 = !{!667, !654, i64 16}
!1209 = distinct !{!1209, !693}
!1210 = distinct !{!1210, !693}
!1211 = distinct !{!1211, !693}
!1212 = distinct !{!1212, !693}
!1213 = distinct !{!1213, !693}
!1214 = distinct !{!1214, !693}
!1215 = !{!"function_entry_count", i64 423476}
!1216 = !{!"tree-cfg.c:create_bb"}
!1217 = !{!"branch_weights", i32 423477, i32 1}
!1218 = !{!"branch_weights", i32 235607, i32 187871}
!1219 = !{!"branch_weights", i32 499, i32 422979}
!1220 = !{!"function_entry_count", i64 559633}
!1221 = !{!"tree-cfg.c:gimple_redirect_edge_and_branch"}
!1222 = !{!"branch_weights", i32 559634, i32 1}
!1223 = !{!"branch_weights", i32 1, i32 559634}
!1224 = !{!"branch_weights", i32 2, i32 559633}
!1225 = !{!"branch_weights", i32 559011, i32 623}
!1226 = !{!"branch_weights", i32 550851, i32 8162}
!1227 = !{!"branch_weights", i32 10509955, i32 427377565, i32 795, i32 82687, i32 795, i32 795, i32 427377565, i32 427377565, i32 427377565, i32 427377565, i32 795}
!1228 = !{!"branch_weights", i32 1, i32 104}
!1229 = !{!"branch_weights", i32 104, i32 1660}
!1230 = distinct !{!1230, !693}
!1231 = !{!"branch_weights", i32 104, i32 1}
!1232 = distinct !{!1232, !693}
!1233 = distinct !{!1233, !693}
!1234 = !{!"branch_weights", i32 1, i32 21381}
!1235 = !{!"tree-cfg.c:gimple_redirect_edge_and_branch_force"}
!1236 = !{!"tree-cfg.c:gimple_can_remove_branch_p"}
!1237 = !{!"function_entry_count", i64 267984}
!1238 = !{!"tree-cfg.c:remove_bb"}
!1239 = !{!"branch_weights", i32 267985, i32 1}
!1240 = !{!"branch_weights", i32 81451, i32 186535}
!1241 = !{!"branch_weights", i32 1, i32 186535}
!1242 = !{!"branch_weights", i32 1, i32 267985}
!1243 = !{!"branch_weights", i32 1201, i32 266784}
!1244 = !{!"branch_weights", i32 72, i32 1130}
!1245 = !{!"branch_weights", i32 72, i32 1}
!1246 = !{!"branch_weights", i32 675, i32 527}
!1247 = !{!"branch_weights", i32 1, i32 1201}
!1248 = !{!"branch_weights", i32 0, i32 1201}
!1249 = distinct !{!1249, !693}
!1250 = !{!"function_entry_count", i64 48}
!1251 = !{!"tree-cfg.c:gimple_split_block"}
!1252 = !{!"branch_weights", i32 1, i32 195}
!1253 = !{!"branch_weights", i32 195, i32 11645}
!1254 = distinct !{!1254, !693}
!1255 = !{!"branch_weights", i32 1, i32 49}
!1256 = !{!"branch_weights", i32 127, i32 1}
!1257 = !{!"branch_weights", i32 49, i32 1}
!1258 = !{!"branch_weights", i32 6145, i32 127}
!1259 = distinct !{!1259, !693}
!1260 = !{!"branch_weights", i32 195, i32 1}
!1261 = !{!"branch_weights", i32 49, i32 195}
!1262 = distinct !{!1262, !693}
!1263 = !{!"function_entry_count", i64 1420}
!1264 = !{!"tree-cfg.c:gimple_move_block_after"}
!1265 = !{!"branch_weights", i32 557, i32 865}
!1266 = !{!"function_entry_count", i64 401812}
!1267 = !{!"tree-cfg.c:gimple_can_merge_blocks_p"}
!1268 = !{!"branch_weights", i32 1, i32 401813}
!1269 = !{!"branch_weights", i32 401813, i32 1}
!1270 = !{!"branch_weights", i32 398335, i32 3479}
!1271 = !{!"branch_weights", i32 935, i32 2545}
!1272 = !{!"branch_weights", i32 416, i32 2130}
!1273 = !{!"branch_weights", i32 2130, i32 1}
!1274 = !{!"branch_weights", i32 3, i32 2128}
!1275 = !{!"branch_weights", i32 3, i32 1}
!1276 = !{!"branch_weights", i32 891, i32 1}
!1277 = !{!"branch_weights", i32 1, i32 1654}
!1278 = !{!"branch_weights", i32 763, i32 891}
!1279 = distinct !{!1279, !693}
!1280 = !{!"branch_weights", i32 2545, i32 1}
!1281 = !{!"branch_weights", i32 1143, i32 1403}
!1282 = !{!"branch_weights", i32 19, i32 1125}
!1283 = !{!"tree-cfg.c:gimple_merge_blocks"}
!1284 = !{!"branch_weights", i32 1421, i32 1}
!1285 = !{!"branch_weights", i32 25, i32 1396}
!1286 = !{!"branch_weights", i32 7, i32 19}
!1287 = !{!"branch_weights", i32 25, i32 1}
!1288 = !{!"branch_weights", i32 1, i32 6}
!1289 = distinct !{!1289, !693}
!1290 = !{!"branch_weights", i32 0, i32 1}
!1291 = distinct !{!1291, !693}
!1292 = !{!"branch_weights", i32 7, i32 1}
!1293 = !{!"branch_weights", i32 0, i32 25}
!1294 = distinct !{!1294, !693}
!1295 = !{!"branch_weights", i32 1, i32 1421}
!1296 = !{!"branch_weights", i32 149, i32 1273}
!1297 = !{!"branch_weights", i32 1273, i32 1}
!1298 = !{!"branch_weights", i32 1420, i32 1}
!1299 = !{!"branch_weights", i32 1, i32 1798}
!1300 = !{!"branch_weights", i32 378, i32 1420}
!1301 = distinct !{!1301, !693}
!1302 = !{!"tree-cfg.c:gimple_can_duplicate_bb_p"}
!1303 = !{!"function_entry_count", i64 39461}
!1304 = !{!"tree-cfg.c:gimple_duplicate_bb"}
!1305 = !{!"branch_weights", i32 37799, i32 1663}
!1306 = !{!"branch_weights", i32 0, i32 37799}
!1307 = distinct !{!1307, !693}
!1308 = !{!"branch_weights", i32 39461, i32 1}
!1309 = !{!"branch_weights", i32 1, i32 87676}
!1310 = !{!"branch_weights", i32 52326, i32 35350}
!1311 = !{!"branch_weights", i32 0, i32 52326}
!1312 = distinct !{!1312, !693}
!1313 = !{!"branch_weights", i32 48215, i32 39461}
!1314 = distinct !{!1314, !693}
!1315 = !{!"tree-cfg.c:gimple_split_edge"}
!1316 = !{!"branch_weights", i32 195943, i32 1}
!1317 = !{!"tree-cfg.c:gimple_make_forwarder_block"}
!1318 = distinct !{!1318, !693}
!1319 = distinct !{!1319, !693}
!1320 = !{!"tree-cfg.c:gimple_block_ends_with_call_p"}
!1321 = !{!"tree-cfg.c:gimple_block_ends_with_condjump_p"}
!1322 = !{!"tree-cfg.c:gimple_flow_call_edges_add"}
!1323 = distinct !{!1323, !693}
!1324 = distinct !{!1324, !693}
!1325 = !{!"function_entry_count", i64 1200253}
!1326 = !{!"tree-cfg.c:gimple_execute_on_growing_pred"}
!1327 = !{!"branch_weights", i32 542487, i32 657768}
!1328 = !{!"function_entry_count", i64 903126}
!1329 = !{!"tree-cfg.c:gimple_execute_on_shrinking_pred"}
!1330 = !{!"branch_weights", i32 493971, i32 409157}
!1331 = !{!"tree-cfg.c:gimple_lv_add_condition_to_bb"}
!1332 = !{!"tree-cfg.c:gimple_lv_adjust_loop_header_phi"}
!1333 = distinct !{!1333, !693}
!1334 = !{!"function_entry_count", i64 893284}
!1335 = !{!"branch_weights", i32 1, i32 893285}
!1336 = !{!"function_entry_count", i64 38}
!1337 = !{!"tree-cfg.c:split_critical_edges"}
!1338 = !{!"branch_weights", i32 1, i32 155}
!1339 = !{!"branch_weights", i32 1, i32 342005}
!1340 = !{!"branch_weights", i32 284972, i32 200851}
!1341 = !{!"branch_weights", i32 184814, i32 100159}
!1342 = !{!"branch_weights", i32 184814, i32 1}
!1343 = !{!"branch_weights", i32 200775, i32 100235}
!1344 = !{!"branch_weights", i32 1, i32 100235}
!1345 = !{!"branch_weights", i32 39, i32 100197}
!1346 = !{!"branch_weights", i32 1, i32 200813}
!1347 = !{!"branch_weights", i32 200813, i32 1}
!1348 = !{!"branch_weights", i32 3325, i32 197489}
!1349 = !{!"branch_weights", i32 3287, i32 39}
!1350 = !{!"branch_weights", i32 39, i32 1}
!1351 = !{!"branch_weights", i32 342005, i32 143817}
!1352 = distinct !{!1352, !693}
!1353 = !{!"branch_weights", i32 155, i32 1367869}
!1354 = distinct !{!1354, !693}
!1355 = !{!"tree-cfg.c:execute_warn_function_return"}
!1356 = distinct !{!1356, !693}
!1357 = !{!653, !657, i64 116}
!1358 = !{!"branch_weights", i32 1, i32 83}
!1359 = distinct !{!1359, !693}
!1360 = !{!"tree-cfg.c:execute_warn_function_noreturn"}
!1361 = !{!947, !654, i64 96}
!1362 = !{!"tree-cfg.c:gate_warn_unused_result"}
!1363 = !{!"tree-cfg.c:run_warn_unused_result"}
!1364 = !{!"tree-cfg.c:VEC_basic_block_gc_safe_grow"}
!1365 = !{}
!1366 = !{!"tree-cfg.c:VEC_basic_block_gc_reserve_exact"}
!1367 = !{!"branch_weights", i32 499, i32 83}
!1368 = !{!"function_entry_count", i64 38433}
!1369 = !{!"tree-cfg.c:VEC_basic_block_base_space"}
!1370 = !{!"branch_weights", i32 708, i32 37727}
!1371 = !{!734, !657, i64 4}
!1372 = !{!"tree-cfg.c:build_gimple_cfg"}
!1373 = !{!"branch_weights", i32 1, i32 41}
!1374 = !{!"tree-cfg.c:make_blocks"}
!1375 = !{!"branch_weights", i32 163, i32 1}
!1376 = !{!"branch_weights", i32 468388, i32 187645}
!1377 = !{!"branch_weights", i32 468162, i32 227}
!1378 = !{!"branch_weights", i32 187831, i32 41}
!1379 = !{!"branch_weights", i32 656032, i32 1}
!1380 = !{!"branch_weights", i32 187645, i32 1}
!1381 = !{!"branch_weights", i32 2623965, i32 163}
!1382 = distinct !{!1382, !693}
!1383 = !{!"tree-cfg.c:factor_computed_gotos"}
!1384 = distinct !{!1384, !693}
!1385 = !{!"function_entry_count", i64 86943}
!1386 = !{!"tree-cfg.c:locus_map_hash"}
!1387 = !{!1388, !657, i64 0}
!1388 = !{!"locus_discrim_map", !657, i64 0, !657, i64 4}
!1389 = !{!"function_entry_count", i64 77769}
!1390 = !{!"tree-cfg.c:locus_map_eq"}
!1391 = !{!"tree-cfg.c:make_edges"}
!1392 = !{!"branch_weights", i32 1, i32 163}
!1393 = !{!"branch_weights", i32 1, i32 187871}
!1394 = !{!"branch_weights", i32 1, i32 43734, i32 41, i32 143773, i32 39, i32 1, i32 1, i32 62, i32 227, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1}
!1395 = !{!"branch_weights", i32 62, i32 1}
!1396 = !{!"branch_weights", i32 227, i32 1}
!1397 = !{!1398, !654, i64 32}
!1398 = !{!"omp_region", !654, i64 0, !654, i64 8, !654, i64 16, !654, i64 24, !654, i64 32, !654, i64 40, !654, i64 48, !657, i64 56, !657, i64 60, !655, i64 64}
!1399 = !{!1398, !657, i64 56}
!1400 = !{!1398, !654, i64 0}
!1401 = !{!1398, !654, i64 40}
!1402 = !{!1398, !654, i64 24}
!1403 = distinct !{!1403, !693}
!1404 = !{!"branch_weights", i32 163, i32 751321}
!1405 = distinct !{!1405, !693}
!1406 = !{!"tree-cfg.c:gimple_cfg2vcg"}
!1407 = distinct !{!1407, !693}
!1408 = distinct !{!1408, !693}
!1409 = distinct !{!1409, !693}
!1410 = !{!"function_entry_count", i64 41049}
!1411 = !{!"tree-cfg.c:gsi_start"}
!1412 = !{!"branch_weights", i32 5349, i32 35702}
!1413 = !{!"branch_weights", i32 1, i32 35702}
!1414 = !{!"function_entry_count", i64 468387}
!1415 = !{!"tree-cfg.c:stmt_starts_bb_p"}
!1416 = !{!"branch_weights", i32 1, i32 468388}
!1417 = !{!"branch_weights", i32 23025, i32 445364}
!1418 = !{!"branch_weights", i32 23025, i32 1}
!1419 = !{!"branch_weights", i32 46051, i32 530150625}
!1420 = !{!"branch_weights", i32 22799, i32 227}
!1421 = !{!"branch_weights", i32 22799, i32 1}
!1422 = !{!"function_entry_count", i64 187644}
!1423 = !{!"tree-cfg.c:gimple_has_lhs"}
!1424 = !{!"branch_weights", i32 187584, i32 62}
!1425 = !{!"tree-cfg.c:gimple_set_location"}
!1426 = !{!"tree-cfg.c:gimple_set_block"}
!1427 = !{!"function_entry_count", i64 43714}
!1428 = !{!"tree-cfg.c:gimple_block"}
!1429 = !{!"function_entry_count", i64 1970119}
!1430 = !{!"tree-cfg.c:gimple_seq_first"}
!1431 = !{!"branch_weights", i32 4489, i32 1965632}
!1432 = !{!1433, !654, i64 0}
!1433 = !{!"gimple_seq_d", !654, i64 0, !654, i64 8, !654, i64 16}
!1434 = !{!"tree-cfg.c:is_gimple_assign"}
!1435 = !{!"function_entry_count", i64 69305}
!1436 = !{!"tree-cfg.c:gimple_call_lhs"}
!1437 = !{!"tree-cfg.c:make_goto_expr_edges"}
!1438 = !{!"branch_weights", i32 1, i32 43734}
!1439 = !{!"branch_weights", i32 20, i32 43715}
!1440 = !{!"function_entry_count", i64 143772}
!1441 = !{!"tree-cfg.c:make_cond_expr_edges"}
!1442 = !{!"branch_weights", i32 1, i32 143773}
!1443 = !{!"branch_weights", i32 143773, i32 1}
!1444 = !{!"tree-cfg.c:make_gimple_switch_edges"}
!1445 = !{!"branch_weights", i32 155, i32 36829}
!1446 = distinct !{!1446, !693}
!1447 = !{!"tree-cfg.c:make_gimple_asm_edges"}
!1448 = distinct !{!1448, !693}
!1449 = !{!"tree-cfg.c:single_succ"}
!1450 = !{!"function_entry_count", i64 340748}
!1451 = !{!"tree-cfg.c:assign_discriminator"}
!1452 = !{!"branch_weights", i32 20, i32 340730}
!1453 = !{!667, !657, i64 92}
!1454 = !{!"branch_weights", i32 333007, i32 7724}
!1455 = !{!"branch_weights", i32 1, i32 333007}
!1456 = !{!"branch_weights", i32 289376, i32 43632}
!1457 = !{!"branch_weights", i32 1, i32 289376}
!1458 = !{!"branch_weights", i32 281800, i32 7577}
!1459 = !{!"function_entry_count", i64 333006}
!1460 = !{!"tree-cfg.c:first_non_label_stmt"}
!1461 = !{!"branch_weights", i32 333007, i32 333007}
!1462 = !{!"branch_weights", i32 85249537, i32 127}
!1463 = distinct !{!1463, !693}
!1464 = !{!"function_entry_count", i64 622381}
!1465 = !{!"tree-cfg.c:same_line_p"}
!1466 = !{!"branch_weights", i32 444, i32 621939}
!1467 = !{i64 0, i64 8, !674, i64 8, i64 4, !680, i64 12, i64 4, !680, i64 16, i64 1, !704}
!1468 = !{i64 0, i64 4, !680, i64 4, i64 4, !680, i64 8, i64 1, !704}
!1469 = !{!"branch_weights", i32 50765, i32 571175}
!1470 = !{!"branch_weights", i32 50765, i32 1}
!1471 = !{!"function_entry_count", i64 51207}
!1472 = !{!"tree-cfg.c:next_discriminator_for_locus"}
!1473 = !{!1388, !657, i64 4}
!1474 = !{!"branch_weights", i32 1, i32 51208}
!1475 = !{!"branch_weights", i32 44966, i32 6243}
!1476 = !{!"branch_weights", i32 1, i32 44966}
!1477 = !{!"tree-cfg.c:get_lineno"}
!1478 = !{!1479, !657, i64 8}
!1479 = !{!"", !654, i64 0, !657, i64 8, !657, i64 12, !655, i64 16}
!1480 = !{!"function_entry_count", i64 19744990}
!1481 = !{!"tree-cfg.c:bb_seq"}
!1482 = !{!"branch_weights", i32 19744991, i32 1}
!1483 = !{!"branch_weights", i32 78, i32 19744914}
!1484 = !{!1485, !654, i64 0}
!1485 = !{!"gimple_bb_info", !654, i64 0, !654, i64 8}
!1486 = !{!"function_entry_count", i64 654125}
!1487 = !{!"tree-cfg.c:gimple_set_op"}
!1488 = !{!"branch_weights", i32 1, i32 654126}
!1489 = !{!"branch_weights", i32 654126, i32 1}
!1490 = !{!"function_entry_count", i64 4075872}
!1491 = !{!"tree-cfg.c:gimple_has_ops"}
!1492 = !{!"function_entry_count", i64 3988173}
!1493 = !{!"tree-cfg.c:gimple_ops"}
!1494 = !{!"branch_weights", i32 1, i32 3988174}
!1495 = !{!"tree-cfg.c:gimple_statement_structure"}
!1496 = !{!"tree-cfg.c:gss_for_code"}
!1497 = !{!"tree-cfg.c:VEC_eh_landing_pad_base_iterate"}
!1498 = !{!1499, !657, i64 0}
!1499 = !{!"VEC_eh_landing_pad_base", !657, i64 0, !657, i64 4, !655, i64 8}
!1500 = !{!"tree-cfg.c:ehr_next"}
!1501 = !{!819, !654, i64 8}
!1502 = !{!819, !654, i64 16}
!1503 = !{!819, !654, i64 0}
!1504 = distinct !{!1504, !693}
!1505 = !{!"tree-cfg.c:gimple_set_num_ops"}
!1506 = !{!"tree-cfg.c:link_use_stmts_after"}
!1507 = distinct !{!1507, !693}
!1508 = !{!"branch_weights", i32 13, i32 7}
!1509 = !{!"branch_weights", i32 97, i32 207}
!1510 = distinct !{!1510, !693}
!1511 = !{!"branch_weights", i32 13, i32 1}
!1512 = !{!"tree-cfg.c:op_iter_init_phiuse"}
!1513 = !{!1514, !655, i64 0}
!1514 = !{!"ssa_operand_iterator_d", !655, i64 0, !657, i64 4, !654, i64 8, !654, i64 16, !657, i64 24, !657, i64 28, !654, i64 32}
!1515 = !{!1514, !654, i64 32}
!1516 = !{!1514, !657, i64 28}
!1517 = !{!1514, !657, i64 4}
!1518 = !{!"function_entry_count", i64 140030}
!1519 = !{!"tree-cfg.c:op_iter_done"}
!1520 = !{!"tree-cfg.c:move_use_after_head"}
!1521 = !{!"function_entry_count", i64 30}
!1522 = !{!"tree-cfg.c:op_iter_next_use"}
!1523 = !{!1514, !654, i64 16}
!1524 = !{!"branch_weights", i32 13, i32 19}
!1525 = !{!1526, !654, i64 0}
!1526 = !{!"use_optype_d", !654, i64 0, !854, i64 8}
!1527 = !{!1514, !657, i64 24}
!1528 = !{!"tree-cfg.c:op_iter_init_use"}
!1529 = !{!"branch_weights", i32 169, i32 27}
!1530 = !{!"tree-cfg.c:gimple_vuse_op"}
!1531 = !{!1526, !654, i64 32}
!1532 = !{!"tree-cfg.c:delink_imm_use"}
!1533 = !{!854, !654, i64 0}
!1534 = !{!"tree-cfg.c:link_imm_use_to_list"}
!1535 = !{!"function_entry_count", i64 254623}
!1536 = !{!"tree-cfg.c:gimple_phi_result"}
!1537 = !{!"tree-cfg.c:clear_and_done_ssa_iter"}
!1538 = !{!"function_entry_count", i64 87687}
!1539 = !{!"tree-cfg.c:op_iter_init"}
!1540 = !{!"branch_weights", i32 43838, i32 -450856908}
!1541 = !{!"branch_weights", i32 87688, i32 1}
!1542 = !{!"branch_weights", i32 13, i32 87676}
!1543 = !{!1514, !654, i64 8}
!1544 = !{!"branch_weights", i32 1994069216, i32 153414432}
!1545 = !{!1546, !654, i64 0}
!1546 = !{!"def_optype_d", !654, i64 0, !654, i64 8}
!1547 = !{!"branch_weights", i32 87676, i32 13}
!1548 = !{!"branch_weights", i32 26982, i32 2147456666}
!1549 = !{!"function_entry_count", i64 87675}
!1550 = !{!"tree-cfg.c:gimple_def_ops"}
!1551 = !{!"tree-cfg.c:gimple_vdef"}
!1552 = !{!"tree-cfg.c:gimple_use_ops"}
!1553 = !{!"tree-cfg.c:gimple_vuse"}
!1554 = !{!"tree-cfg.c:gimple_has_mem_ops"}
!1555 = !{!"tree-cfg.c:gimple_phi_arg"}
!1556 = !{!"branch_weights", i32 1, i32 25}
!1557 = !{!"tree-cfg.c:VEC_int_heap_alloc"}
!1558 = !{!"tree-cfg.c:number_of_loops"}
!1559 = !{!"tree-cfg.c:VEC_int_base_quick_push"}
!1560 = !{!1561, !657, i64 0}
!1561 = !{!"VEC_int_base", !657, i64 0, !657, i64 4, !655, i64 8}
!1562 = !{!"tree-cfg.c:VEC_loop_p_base_length"}
!1563 = !{!1564, !657, i64 0}
!1564 = !{!"VEC_loop_p_base", !657, i64 0, !657, i64 4, !655, i64 8}
!1565 = !{!"tree-cfg.c:VEC_int_base_iterate"}
!1566 = !{!"tree-cfg.c:VEC_int_heap_free"}
!1567 = !{!"tree-cfg.c:find_case_label_for_value"}
!1568 = distinct !{!1568, !693}
!1569 = !{!"tree-cfg.c:gimple_seq_last"}
!1570 = !{!"branch_weights", i32 78, i32 17546440}
!1571 = !{!1433, !654, i64 8}
!1572 = !{!"tree-cfg.c:gimple_bind_body"}
!1573 = !{!"tree-cfg.c:gimple_try_eval"}
!1574 = !{!"tree-cfg.c:gimple_try_cleanup"}
!1575 = !{!"tree-cfg.c:gimple_eh_filter_failure"}
!1576 = !{!"tree-cfg.c:gimple_catch_handler"}
!1577 = !{!"tree-cfg.c:verify_types_in_gimple_stmt"}
!1578 = !{!"tree-cfg.c:verify_gimple_assign"}
!1579 = !{!"tree-cfg.c:verify_gimple_call"}
!1580 = distinct !{!1580, !693}
!1581 = !{!"tree-cfg.c:verify_gimple_comparison"}
!1582 = !{!"tree-cfg.c:verify_gimple_goto"}
!1583 = !{!"tree-cfg.c:verify_gimple_switch"}
!1584 = !{!"tree-cfg.c:verify_gimple_return"}
!1585 = !{!"tree-cfg.c:verify_gimple_phi"}
!1586 = distinct !{!1586, !693}
!1587 = !{!"tree-cfg.c:gimple_assign_rhs_class"}
!1588 = !{!"tree-cfg.c:verify_gimple_assign_single"}
!1589 = !{!"tree-cfg.c:verify_gimple_assign_unary"}
!1590 = !{!"tree-cfg.c:verify_gimple_assign_binary"}
!1591 = !{!"tree-cfg.c:get_gimple_rhs_class"}
!1592 = !{!"tree-cfg.c:gimple_assign_rhs_code"}
!1593 = !{!"tree-cfg.c:gimple_expr_code"}
!1594 = !{!"tree-cfg.c:gimple_assign_rhs1"}
!1595 = !{!"tree-cfg.c:gimple_assign_lhs"}
!1596 = !{!"tree-cfg.c:handled_component_p"}
!1597 = !{!"tree-cfg.c:verify_types_in_gimple_reference"}
!1598 = !{!"tree-cfg.c:one_pointer_to_useless_type_conversion_p"}
!1599 = distinct !{!1599, !693}
!1600 = !{!"tree-cfg.c:verify_types_in_gimple_min_lval"}
!1601 = !{!"tree-cfg.c:valid_fixed_convert_types_p"}
!1602 = !{!"tree-cfg.c:gimple_assign_rhs2"}
!1603 = !{!"function_entry_count", i64 4396}
!1604 = !{!"tree-cfg.c:gimple_call_fn"}
!1605 = !{!"tree-cfg.c:gimple_call_noreturn_p"}
!1606 = !{!"tree-cfg.c:gimple_call_chain"}
!1607 = !{!"tree-cfg.c:gimple_call_num_args"}
!1608 = !{!"tree-cfg.c:gimple_call_arg"}
!1609 = !{!"tree-cfg.c:gimple_switch_index"}
!1610 = !{!"tree-cfg.c:gimple_return_retval"}
!1611 = !{!"tree-cfg.c:gsi_one_before_end_p"}
!1612 = !{!"tree-cfg.c:is_gimple_omp"}
!1613 = !{!"function_entry_count", i64 2198}
!1614 = !{!"tree-cfg.c:gimple_call_fndecl"}
!1615 = !{!"branch_weights", i32 2199, i32 1}
!1616 = !{!"tree-cfg.c:verify_expr"}
!1617 = distinct !{!1617, !693}
!1618 = !{!1619, !1619, i64 0}
!1619 = !{!"short", !655, i64 0}
!1620 = distinct !{!1620, !693}
!1621 = !{!"function_entry_count", i64 14206251}
!1622 = !{!"tree-cfg.c:ei_end_p"}
!1623 = !{!"branch_weights", i32 363, i32 14205890}
!1624 = !{!"function_entry_count", i64 9191078}
!1625 = !{!"tree-cfg.c:ei_edge"}
!1626 = !{!"branch_weights", i32 1, i32 9191079}
!1627 = !{!"function_entry_count", i64 65175568}
!1628 = !{!"tree-cfg.c:ei_container"}
!1629 = !{!"branch_weights", i32 1, i32 65175569}
!1630 = !{!"function_entry_count", i64 2206157}
!1631 = !{!"tree-cfg.c:gimple_seq_empty_p"}
!1632 = !{!"branch_weights", i32 1073299, i32 1132860}
!1633 = !{!"function_entry_count", i64 2247038}
!1634 = !{!"tree-cfg.c:phi_nodes"}
!1635 = !{!"branch_weights", i32 2247039, i32 1}
!1636 = !{!"branch_weights", i32 2018, i32 2245022}
!1637 = !{!1485, !654, i64 8}
!1638 = !{!"tree-cfg.c:VEC_loop_p_base_index"}
!1639 = !{!"tree-cfg.c:VEC_basic_block_heap_reserve"}
!1640 = !{!"branch_weights", i32 2368, i32 35487}
!1641 = !{!"tree-cfg.c:VEC_basic_block_base_quick_push"}
!1642 = !{!"function_entry_count", i64 1206856}
!1643 = !{!"tree-cfg.c:single_succ_p"}
!1644 = !{!"function_entry_count", i64 52325}
!1645 = !{!"tree-cfg.c:get_def_from_ptr"}
!1646 = !{!"function_entry_count", i64 37798}
!1647 = !{!"tree-cfg.c:gimple_phi_result_ptr"}
!1648 = !{!"tree-cfg.c:replace_ssa_name"}
!1649 = !{!"tree-cfg.c:set_ssa_use_from_ptr"}
!1650 = !{!"tree-cfg.c:move_stmt_r"}
!1651 = !{!"tree-cfg.c:move_stmt_op"}
!1652 = !{!"tree-cfg.c:replace_by_duplicate_decl"}
!1653 = !{!"function_entry_count", i64 1200}
!1654 = !{!"tree-cfg.c:gimple_in_ssa_p"}
!1655 = !{!653, !654, i64 24}
!1656 = !{!"tree-cfg.c:make_ssa_name"}
!1657 = !{!"tree-cfg.c:link_imm_use"}
!1658 = !{!"tree-cfg.c:move_stmt_eh_region_tree_nr"}
!1659 = !{!"tree-cfg.c:gimple_call_set_arg"}
!1660 = !{!"tree-cfg.c:gimple_resx_region"}
!1661 = !{!"tree-cfg.c:move_stmt_eh_region_nr"}
!1662 = !{!819, !657, i64 24}
!1663 = !{!"tree-cfg.c:gimple_resx_set_region"}
!1664 = !{!"tree-cfg.c:gimple_eh_dispatch_region"}
!1665 = !{!"tree-cfg.c:gimple_eh_dispatch_set_region"}
!1666 = !{!"tree-cfg.c:gimple_omp_body"}
!1667 = !{!"tree-cfg.c:is_global_var"}
!1668 = !{!"function_entry_count", i64 424944}
!1669 = !{!"tree-cfg.c:set_bb_seq"}
!1670 = !{!"branch_weights", i32 424945, i32 1}
!1671 = !{!"function_entry_count", i64 559632}
!1672 = !{!"tree-cfg.c:gimple_try_redirect_by_replacing_jump"}
!1673 = !{!"branch_weights", i32 538157, i32 21477}
!1674 = !{!"branch_weights", i32 623, i32 537535}
!1675 = !{!"branch_weights", i32 623, i32 1}
!1676 = !{!"branch_weights", i32 1, i32 1246, i32 1}
!1677 = !{!"tree-cfg.c:get_cases_for_edge"}
!1678 = !{!"branch_weights", i32 94, i32 11}
!1679 = !{!"branch_weights", i32 1, i32 187}
!1680 = !{!"branch_weights", i32 187, i32 25051}
!1681 = distinct !{!1681, !693}
!1682 = !{!"tree-cfg.c:recording_case_labels_p"}
!1683 = !{!"tree-cfg.c:remove_phi_nodes_and_edges_for_unreachable_block"}
!1684 = !{!"branch_weights", i32 1, i32 267984}
!1685 = !{!"branch_weights", i32 267984, i32 97}
!1686 = distinct !{!1686, !693}
!1687 = !{!"function_entry_count", i64 702820}
!1688 = !{!"tree-cfg.c:single_pred_p"}
!1689 = !{!"tree-cfg.c:loops_state_satisfies_p"}
!1690 = !{!911, !657, i64 0}
!1691 = !{!"tree-cfg.c:op_iter_init_def"}
!1692 = !{!"function_entry_count", i64 140000}
!1693 = !{!"tree-cfg.c:op_iter_next_def"}
!1694 = !{!"branch_weights", i32 87676, i32 52326}
!1695 = !{!1546, !654, i64 8}
!1696 = !{!"tree-cfg.c:reinstall_phi_args"}
!1697 = !{!"branch_weights", i32 24032, i32 171912}
!1698 = !{!"branch_weights", i32 1, i32 171911}
!1699 = !{!"branch_weights", i32 179004, i32 171912}
!1700 = !{!"branch_weights", i32 179004, i32 1}
!1701 = !{!"branch_weights", i32 171911, i32 7093}
!1702 = distinct !{!1702, !693}
!1703 = !{!"function_entry_count", i64 350914}
!1704 = !{!"tree-cfg.c:VEC_edge_var_map_base_iterate"}
!1705 = !{!1706, !657, i64 0}
!1706 = !{!"VEC_edge_var_map_base", !657, i64 0, !657, i64 4, !655, i64 8}
!1707 = !{!"function_entry_count", i64 179003}
!1708 = !{!"tree-cfg.c:redirect_edge_var_map_result"}
!1709 = !{!1710, !654, i64 0}
!1710 = !{!"_edge_var_map", !654, i64 0, !654, i64 8, !657, i64 16}
!1711 = !{!"tree-cfg.c:redirect_edge_var_map_def"}
!1712 = !{!1710, !654, i64 8}
!1713 = !{!"tree-cfg.c:redirect_edge_var_map_location"}
!1714 = !{!1710, !657, i64 16}
!1715 = !{!"tree-cfg.c:gimple_phi_set_result"}
!1716 = !{!"tree-cfg.c:need_fake_edge_p"}
!1717 = !{!"tree-cfg.c:gimple_asm_volatile_p"}
!1718 = !{!"tree-cfg.c:gimple_asm_input_p"}
!1719 = !{!"tree-cfg.c:gimple_no_warning_p"}
!1720 = !{!"function_entry_count", i64 80}
!1721 = !{!"tree-cfg.c:do_warn_unused_result"}
!1722 = !{!"branch_weights", i32 161, i32 1}
!1723 = !{!"branch_weights", i32 586708, i32 41, i32 1, i32 1, i32 1, i32 69245}
!1724 = !{!"branch_weights", i32 2199, i32 67047}
!1725 = !{!"branch_weights", i32 1311823, i32 161}
!1726 = distinct !{!1726, !693}
