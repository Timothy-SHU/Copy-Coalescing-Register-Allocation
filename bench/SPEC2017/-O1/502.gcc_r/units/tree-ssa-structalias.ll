; ModuleID = 'tree-ssa-structalias.c'
source_filename = "tree-ssa-structalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.constraint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.constraint_expr = type { i32, i32, i64 }
%struct.VEC_varinfo_t_base = type { i32, i32, [1 x ptr] }
%struct.variable_info = type { i32, i8, ptr, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.constraint = type { %struct.constraint_expr, %struct.constraint_expr }
%struct.VEC_constraint_t_base = type { i32, i32, [1 x ptr] }
%struct.constraint_graph = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pt_solution = type { i8, ptr }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, ptr, i40, i32, ptr, ptr, ptr, ptr, ptr }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, ptr, ptr }
%struct.tree_common = type { %struct.tree_base, ptr, ptr }
%struct.tree_base = type { i64 }
%struct.function = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.gimple_df = type { ptr, ptr, ptr, ptr, %struct.pt_solution, %struct.pt_solution, ptr, ptr, ptr, ptr, i8, %struct.ssa_operands }
%struct.ssa_operands = type { ptr, i32, i32, i8, ptr, ptr }
%struct.gimple_stmt_iterator = type { ptr, ptr, ptr }
%struct.basic_block_def = type { ptr, ptr, ptr, ptr, [2 x ptr], ptr, ptr, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%union.basic_block_il_dependent = type { ptr }
%struct.control_flow_graph = type { ptr, ptr, ptr, i32, i32, i32, ptr, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.VEC_ce_s_base = type { i32, i32, [1 x %struct.constraint_expr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.equiv_class_label = type { i32, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.scc_info = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.topo_info = type { ptr, ptr }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }
%struct.shared_bitmap_info = type { ptr, i32 }
%struct.heapvar_map = type { %struct.tree_map, i64 }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.VEC_fieldoff_s_base = type { i32, i32, [1 x %struct.fieldoff] }
%struct.fieldoff = type { i64, i64, i8 }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }

@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"\0APTA query stats:\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"  pt_solution_includes: %ld disambiguations, %ld queries\0A\00", align 1
@pta_stats.0 = internal unnamed_addr global i64 0, align 8
@pta_stats.1 = internal unnamed_addr global i64 0, align 8
@pta_stats.2 = internal unnamed_addr global i64 0, align 8
@pta_stats.3 = internal unnamed_addr global i64 0, align 8
@.str.2 = private unnamed_addr constant [60 x i8] c"  pt_solutions_intersect: %ld disambiguations, %ld queries\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"tree-ssa-structalias.c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@heapvar_for_stmt = internal global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@pass_build_alias = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.5, ptr @gate_tree_pta, ptr null, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1048577 } }, align 8
@.str.6 = private unnamed_addr constant [7 x i8] c"ealias\00", align 1
@pass_build_ealias = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.6, ptr @gate_tree_pta, ptr null, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1048577 } }, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"pta\00", align 1
@pass_ipa_pta = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.7, ptr @gate_ipa_pta, ptr @ipa_pta_execute, ptr null, ptr null, i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 2048 } }, align 8
@gt_ggc_rc_gt_tree_ssa_structalias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @heapvar_for_stmt, i64 1, i64 8, ptr @gt_ggc_mx_tree_map, ptr @gt_pch_nx_tree_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_tree_ssa_structalias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @heapvar_for_stmt, i64 1, i64 8, ptr @gt_ggc_m_P8tree_map4htab, ptr @gt_pch_n_P8tree_map4htab }, %struct.ggc_root_tab zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [11 x i8] c" + UNKNOWN\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" + %ld\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@varmap = internal unnamed_addr global ptr null, align 8
@constraints = internal unnamed_addr global ptr null, align 8
@graph = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [48 x i8] c"\0A\0A/* Constraints used in the constraint graph:\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\0A\0A// The constraint graph in dot format:\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"strict digraph {\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"  node [\0A    shape = box\0A  ]\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"  edge [\0A    fontsize = \2212\22\0A  ]\0A\00", align 1
@.str.21 = private unnamed_addr constant [46 x i8] c"\0A  // List of nodes in the constraint graph:\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"  \22%s\22 ;\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"\0A  // The constraint edges:\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"}\0A\0A\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"  \22%s\22 -> \22%s\22 \00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c" [ label=\22*=\22 ] ;\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c" [ label=\22=*\22 ] ;\0A\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c" [ label=\22+\22 ] ;\0A\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c" ;\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"%s = same as %s\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"%s = { \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.33 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@bitmap_zero_bits = external local_unnamed_addr global %struct.bitmap_element_def, align 8
@.str.34 = private unnamed_addr constant [18 x i8] c"\0APoints-to sets\0A\0A\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"Stats:\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Total vars:               %d\0A\00", align 1
@stats = internal unnamed_addr global %struct.constraint_stats zeroinitializer, align 4
@.str.37 = private unnamed_addr constant [31 x i8] c"Non-pointer vars:          %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Statically unified vars:  %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Dynamically unified vars: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"Iterations:               %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"Number of edges:          %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"Number of implicit edges: %d\0A\00", align 1
@timevar_enable = external local_unnamed_addr global i8, align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@use_field_sensitive = internal unnamed_addr global i8 1, align 1
@pta_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@oldpta_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@predbitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str.43 = private unnamed_addr constant [16 x i8] c"Constraint pool\00", align 1
@constraint_pool = internal unnamed_addr global ptr null, align 8
@.str.44 = private unnamed_addr constant [19 x i8] c"Variable info pool\00", align 1
@variable_info_pool = internal unnamed_addr global ptr null, align 8
@vi_for_tree = internal unnamed_addr global ptr null, align 8
@shared_bitmap_table = internal unnamed_addr global ptr null, align 8
@.str.45 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"ANYTHING\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"ESCAPED\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"NONLOCAL\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"CALLUSED\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"STOREDANYTHING\00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.53 = private unnamed_addr constant [15 x i8] c"doubledereftmp\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"derefaddrtmp\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.55 = private unnamed_addr constant [13 x i8] c"PARM_NOALIAS\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"PARM_RESTRICT\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.57 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_whole_program = external local_unnamed_addr global i32, align 4
@in_ipa_mode = internal unnamed_addr global i1 false, align 4
@.str.58 = private unnamed_addr constant [16 x i8] c"GLOBAL_RESTRICT\00", align 1
@.str.59 = private unnamed_addr constant [11 x i8] c"%s.%ld+%ld\00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@.str.61 = private unnamed_addr constant [5 x i8] c"D.%u\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@flag_delete_null_pointer_checks = external local_unnamed_addr global i32, align 4
@.str.62 = private unnamed_addr constant [14 x i8] c"CAST_RESTRICT\00", align 1
@.str.63 = private unnamed_addr constant [48 x i8] c"Access to zero-sized part of variable,ignoring\0A\00", align 1
@.str.64 = private unnamed_addr constant [46 x i8] c"Access to past the end of variable, ignoring\0A\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.66 = private unnamed_addr constant [10 x i8] c"allalltmp\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c"dereftmp\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"HEAP\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.69 = private unnamed_addr constant [35 x i8] c"Points-to analysis\0A\0AConstraints:\0A\0A\00", align 1
@.str.70 = private unnamed_addr constant [59 x i8] c"\0ACollapsing static cycles and doing variable substitution\0A\00", align 1
@.str.71 = private unnamed_addr constant [28 x i8] c"Building predecessor graph\0A\00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"Detecting pointer and location equivalences\0A\00", align 1
@.str.73 = private unnamed_addr constant [46 x i8] c"Rewriting constraints and unifying variables\0A\00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"Uniting pointer but not location equivalent variables\0A\00", align 1
@.str.75 = private unnamed_addr constant [25 x i8] c"Finding indirect cycles\0A\00", align 1
@.str.76 = private unnamed_addr constant [15 x i8] c"Solving graph\0A\00", align 1
@iteration_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@pointer_equiv_class_table = internal unnamed_addr global ptr null, align 8
@location_equiv_class_table = internal unnamed_addr global ptr null, align 8
@pointer_equiv_class = internal unnamed_addr global i32 0, align 4
@location_equiv_class = internal unnamed_addr global i32 0, align 4
@.str.77 = private unnamed_addr constant [40 x i8] c"Found location equivalence for node %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [71 x i8] c"Equivalence classes for %s node id %d:%s are pointer: %d, location:%d\0A\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Direct node\00", align 1
@.str.80 = private unnamed_addr constant [14 x i8] c"Indirect node\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"%s is a non-pointer variable, eliminating edges.\0A\00", align 1
@.str.82 = private unnamed_addr constant [50 x i8] c"%s is a non-pointer variable,ignoring constraint:\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"Unifying %s to %s\0A\00", align 1
@changed = internal unnamed_addr global ptr null, align 8
@changed_count = internal unnamed_addr global i32 0, align 4
@.str.84 = private unnamed_addr constant [27 x i8] c"Points to sets created:%d\0A\00", align 1
@flag_tree_pta = external local_unnamed_addr global i32, align 4
@optimize = external local_unnamed_addr global i32, align 4
@flag_ipa_pta = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [31 x i8] c"Generating constraints for %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"%s.arg%d\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"%s.result\00", align 1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @vprintf(ptr noalias nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 !prof !186 {
  %3 = load ptr, ptr @stdout, align 8, !tbaa !187
  %4 = tail call i32 @vfprintf(ptr noundef %3, ptr noundef %0, ptr noundef %1)
  ret i32 %4
}

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @getchar() local_unnamed_addr #0 !prof !186 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !187
  %2 = tail call i32 @getc(ptr noundef %1)
  ret i32 %2
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !186 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !197

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #28
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !191
  %11 = load i8, ptr %3, align 1, !tbaa !198
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

declare i32 @__uflow(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(ptr noundef %0) local_unnamed_addr #2 !prof !186 {
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !197

7:                                                ; preds = %1
  %8 = tail call i32 @__uflow(ptr noundef %0) #28
  br label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !191
  %11 = load i8, ptr %3, align 1, !tbaa !198
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #2 !prof !186 {
  %1 = load ptr, ptr @stdin, align 8, !tbaa !187
  %2 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !191
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !196
  %6 = icmp ult ptr %3, %5
  br i1 %6, label %9, label %7, !prof !197

7:                                                ; preds = %0
  %8 = tail call i32 @__uflow(ptr noundef %1) #28
  br label %13

9:                                                ; preds = %0
  %10 = getelementptr inbounds i8, ptr %3, i64 1
  store ptr %10, ptr %2, align 8, !tbaa !191
  %11 = load i8, ptr %3, align 1, !tbaa !198
  %12 = zext i8 %11 to i32
  br label %13

13:                                               ; preds = %9, %7
  %14 = phi i32 [ %8, %7 ], [ %12, %9 ]
  ret i32 %14
}

; Function Attrs: cold inlinehint nofree nounwind uwtable
define dso_local noundef i32 @putchar(i32 noundef %0) local_unnamed_addr #0 !prof !186 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !187
  %3 = tail call i32 @putc(i32 noundef %0, ptr noundef %2)
  ret i32 %3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !186 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !197

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !199
  store i8 %12, ptr %4, align 1, !tbaa !198
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

declare i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 noundef %0, ptr noundef %1) local_unnamed_addr #2 !prof !186 {
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %1, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !197

8:                                                ; preds = %2
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %1, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %2
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !199
  store i8 %12, ptr %4, align 1, !tbaa !198
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 noundef %0) local_unnamed_addr #2 !prof !186 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !187
  %3 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !199
  %5 = getelementptr inbounds %struct._IO_FILE, ptr %2, i64 0, i32 6
  %6 = load ptr, ptr %5, align 8, !tbaa !200
  %7 = icmp ult ptr %4, %6
  br i1 %7, label %11, label %8, !prof !197

8:                                                ; preds = %1
  %9 = and i32 %0, 255
  %10 = tail call i32 @__overflow(ptr noundef %2, i32 noundef %9) #28
  br label %15

11:                                               ; preds = %1
  %12 = trunc i32 %0 to i8
  %13 = getelementptr inbounds i8, ptr %4, i64 1
  store ptr %13, ptr %3, align 8, !tbaa !199
  store i8 %12, ptr %4, align 1, !tbaa !198
  %14 = and i32 %0, 255
  br label %15

15:                                               ; preds = %11, %8
  %16 = phi i32 [ %10, %8 ], [ %14, %11 ]
  ret i32 %16
}

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local i64 @getline(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 !prof !186 {
  %4 = tail call i64 @__getdelim(ptr noundef %0, ptr noundef %1, i32 noundef 10, ptr noundef %2) #28
  ret i64 %4
}

declare i64 @__getdelim(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @feof_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !186 {
  %2 = load i32, ptr %0, align 8, !tbaa !201
  %3 = lshr i32 %2, 4
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ferror_unlocked(ptr nocapture noundef readonly %0) local_unnamed_addr #4 !prof !186 {
  %2 = load i32, ptr %0, align 8, !tbaa !201
  %3 = lshr i32 %2, 5
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @tolower(i32 noundef %0) local_unnamed_addr #5 !prof !186 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_tolower_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !202
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_tolower_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable
define dso_local i32 @toupper(i32 noundef %0) local_unnamed_addr #5 !prof !186 {
  %2 = add i32 %0, 128
  %3 = icmp ult i32 %2, 384
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = tail call ptr @__ctype_toupper_loc() #28
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  %7 = sext i32 %0 to i64
  %8 = getelementptr inbounds i32, ptr %6, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !202
  br label %10

10:                                               ; preds = %1, %4
  %11 = phi i32 [ %9, %4 ], [ %0, %1 ]
  ret i32 %11
}

declare ptr @__ctype_toupper_loc() local_unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i32 @atoi(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !186 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atol(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !186 {
  %2 = tail call i64 @strtol(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local i64 @atoll(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !186 {
  %2 = tail call i64 @strtoll(ptr nocapture noundef %0, ptr noundef null, i32 noundef 10)
  ret i64 %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold inlinehint nounwind uwtable
define dso_local noundef ptr @bsearch(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #2 !prof !186 {
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %5, %20
  %8 = phi i64 [ %22, %20 ], [ 0, %5 ]
  %9 = phi i64 [ %21, %20 ], [ %2, %5 ]
  %10 = add i64 %8, %9
  %11 = lshr i64 %10, 1
  %12 = mul i64 %11, %3
  %13 = getelementptr inbounds i8, ptr %1, i64 %12
  %14 = tail call i32 %4(ptr noundef %0, ptr noundef %13) #28
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
  br i1 %23, label %7, label %24, !llvm.loop !203

24:                                               ; preds = %16, %20, %5
  %25 = phi ptr [ null, %5 ], [ %13, %16 ], [ null, %20 ]
  ret ptr %25
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold inlinehint mustprogress nofree nounwind willreturn uwtable
define dso_local double @atof(ptr nocapture noundef readonly %0) local_unnamed_addr #6 !prof !186 {
  %2 = tail call double @strtod(ptr nocapture noundef %0, ptr noundef null)
  ret double %2
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #9 !prof !186 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !187
  tail call fastcc void @dump_constraint(ptr noundef %2, ptr noundef %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_constraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !186 {
  %3 = load i32, ptr %1, align 8, !tbaa !206
  switch i32 %3, label %8 [
    i32 2, label %5
    i32 1, label %4
  ]

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %2, %4
  %6 = phi i32 [ 42, %4 ], [ 38, %2 ]
  %7 = tail call i32 @fputc(i32 %6, ptr %0)
  br label %8

8:                                                ; preds = %5, %2
  %9 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !209
  %11 = load ptr, ptr @varmap, align 8
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %11, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = tail call i32 @fputs(ptr %16, ptr %0)
  %18 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !212
  switch i64 %19, label %22 [
    i64 -9223372036854775808, label %20
    i64 0, label %24
  ]

20:                                               ; preds = %8
  %21 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %0)
  br label %24

22:                                               ; preds = %8
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %19)
  br label %24

24:                                               ; preds = %8, %22, %20
  %25 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 3, i64 1, ptr %0)
  %26 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !213
  switch i32 %27, label %32 [
    i32 2, label %29
    i32 1, label %28
  ]

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %24, %28
  %30 = phi i32 [ 42, %28 ], [ 38, %24 ]
  %31 = tail call i32 @fputc(i32 %30, ptr %0)
  br label %32

32:                                               ; preds = %29, %24
  %33 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !214
  %35 = load ptr, ptr @varmap, align 8
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %35, i64 0, i32 2, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !187
  %39 = getelementptr inbounds %struct.variable_info, ptr %38, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !210
  %41 = tail call i32 @fputs(ptr %40, ptr %0)
  %42 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %43 = load i64, ptr %42, align 8, !tbaa !215
  switch i64 %43, label %46 [
    i64 -9223372036854775808, label %44
    i64 0, label %48
  ]

44:                                               ; preds = %32
  %45 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %0)
  br label %48

46:                                               ; preds = %32
  %47 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %43)
  br label %48

48:                                               ; preds = %32, %46, %44
  %49 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_constraints() local_unnamed_addr #9 !prof !186 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !187
  br label %2

2:                                                ; preds = %16, %0
  %3 = phi i64 [ %17, %16 ], [ 0, %0 ]
  %4 = load ptr, ptr @constraints, align 8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !216
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %3, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %4, i64 0, i32 2, i64 %3
  %12 = load ptr, ptr %11, align 8, !tbaa !187
  br label %13

13:                                               ; preds = %10, %6, %2
  %14 = phi ptr [ %12, %10 ], [ null, %6 ], [ null, %2 ]
  %15 = phi i1 [ false, %10 ], [ true, %6 ], [ true, %2 ]
  br i1 %15, label %18, label %16

16:                                               ; preds = %13
  tail call fastcc void @dump_constraint(ptr noundef %1, ptr noundef %14)
  %17 = add nuw i64 %3, 1
  br label %2, !llvm.loop !218

18:                                               ; preds = %13
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @debug_constraint_graph() local_unnamed_addr #9 !prof !186 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !187
  tail call fastcc void @dump_constraint_graph(ptr noundef %1)
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define internal fastcc void @dump_constraint_graph(ptr nocapture noundef %0) unnamed_addr #9 !prof !186 {
  %2 = load ptr, ptr @graph, align 8, !tbaa !187
  %3 = icmp eq ptr %2, null
  br i1 %3, label %119, label %4

4:                                                ; preds = %1
  %5 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 47, i64 1, ptr %0)
  br label %6

6:                                                ; preds = %20, %4
  %7 = phi i64 [ %21, %20 ], [ 0, %4 ]
  %8 = load ptr, ptr @constraints, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa !216
  %12 = zext i32 %11 to i64
  %13 = icmp ult i64 %7, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %8, i64 0, i32 2, i64 %7
  %16 = load ptr, ptr %15, align 8, !tbaa !187
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %16, %14 ], [ null, %10 ], [ null, %6 ]
  %19 = phi i1 [ false, %14 ], [ true, %10 ], [ true, %6 ]
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  tail call fastcc void @dump_constraint(ptr noundef %0, ptr noundef %18)
  %21 = add nuw i64 %7, 1
  br label %6, !llvm.loop !218

22:                                               ; preds = %17
  %23 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 41, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %0)
  %26 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 29, i64 1, ptr %0)
  %27 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr %0)
  %28 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 45, i64 1, ptr %0)
  %29 = load ptr, ptr @varmap, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i32, ptr %29, align 8, !tbaa !219
  br label %33

33:                                               ; preds = %22, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %22 ]
  %35 = load ptr, ptr @graph, align 8, !tbaa !187
  %36 = load i32, ptr %35, align 8, !tbaa !221
  %37 = tail call i32 @llvm.umin.i32(i32 %34, i32 %36)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = zext i32 %37 to i64
  br label %41

41:                                               ; preds = %39, %41
  %42 = phi i64 [ 0, %39 ], [ %55, %41 ]
  %43 = load ptr, ptr @graph, align 8, !tbaa !187
  %44 = getelementptr inbounds %struct.constraint_graph, ptr %43, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !223
  %46 = getelementptr inbounds i32, ptr %45, i64 %42
  %47 = load i32, ptr %46, align 4, !tbaa !202
  %48 = load ptr, ptr @varmap, align 8
  %49 = zext i32 %47 to i64
  %50 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %48, i64 0, i32 2, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !187
  %52 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 6
  %53 = load ptr, ptr %52, align 8, !tbaa !210
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %53)
  %55 = add nuw nsw i64 %42, 1
  %56 = icmp eq i64 %55, %40
  br i1 %56, label %57, label %41, !llvm.loop !224

57:                                               ; preds = %41, %33
  %58 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 28, i64 1, ptr %0)
  br label %59

59:                                               ; preds = %115, %57
  %60 = phi i32 [ 0, %57 ], [ %116, %115 ]
  %61 = load ptr, ptr @constraints, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  %64 = load i32, ptr %61, align 8, !tbaa !216
  %65 = icmp ugt i32 %64, %60
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %61, i64 0, i32 2, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !187
  br label %70

70:                                               ; preds = %59, %63, %66
  %71 = phi ptr [ %69, %66 ], [ null, %63 ], [ null, %59 ]
  %72 = phi i1 [ false, %66 ], [ true, %63 ], [ true, %59 ]
  br i1 %72, label %117, label %73

73:                                               ; preds = %70
  %74 = icmp eq ptr %71, null
  br i1 %74, label %115, label %75

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.constraint, ptr %71, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !213
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %115, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.constraint, ptr %71, i64 0, i32 1, i32 1
  %81 = load i32, ptr %80, align 4, !tbaa !214
  %82 = load ptr, ptr @varmap, align 8
  %83 = zext i32 %81 to i64
  %84 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %82, i64 0, i32 2, i64 %83
  %85 = load ptr, ptr %84, align 8, !tbaa !187
  %86 = getelementptr inbounds %struct.variable_info, ptr %85, i64 0, i32 6
  %87 = load ptr, ptr %86, align 8, !tbaa !210
  %88 = getelementptr inbounds %struct.constraint_expr, ptr %71, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !209
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %82, i64 0, i32 2, i64 %90
  %92 = load ptr, ptr %91, align 8, !tbaa !187
  %93 = getelementptr inbounds %struct.variable_info, ptr %92, i64 0, i32 6
  %94 = load ptr, ptr %93, align 8, !tbaa !210
  %95 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %87, ptr noundef %94)
  %96 = load i32, ptr %71, align 8, !tbaa !206
  %97 = icmp eq i32 %96, 1
  br i1 %97, label %98, label %100

98:                                               ; preds = %79
  %99 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 18, i64 1, ptr %0)
  br label %115

100:                                              ; preds = %79
  %101 = load i32, ptr %76, align 8, !tbaa !213
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 18, i64 1, ptr %0)
  br label %115

105:                                              ; preds = %100
  %106 = getelementptr inbounds %struct.constraint, ptr %71, i64 0, i32 1, i32 2
  %107 = load i64, ptr %106, align 8, !tbaa !215
  %108 = getelementptr inbounds %struct.constraint_expr, ptr %71, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !212
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %113, label %111

111:                                              ; preds = %105
  %112 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr %0)
  br label %115

113:                                              ; preds = %105
  %114 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 3, i64 1, ptr %0)
  br label %115

115:                                              ; preds = %113, %111, %103, %98, %75, %73
  %116 = add i32 %60, 1
  br label %59, !llvm.loop !225

117:                                              ; preds = %70
  %118 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 4, i64 1, ptr %0)
  br label %119

119:                                              ; preds = %1, %117
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_solution_for_var(i32 noundef %0) local_unnamed_addr #10 !prof !186 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !187
  tail call fastcc void @dump_solution_for_var(ptr noundef %2, i32 noundef %0)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_solution_for_var(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !186 {
  %3 = load ptr, ptr @varmap, align 8
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %3, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !187
  %7 = tail call fastcc i32 @find(i32 noundef %1)
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %20, label %9

9:                                                ; preds = %2
  %10 = tail call fastcc i32 @find(i32 noundef %1)
  %11 = load ptr, ptr @varmap, align 8
  %12 = zext i32 %10 to i64
  %13 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %11, i64 0, i32 2, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !210
  %17 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !210
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %16, ptr noundef %18)
  br label %110

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !210
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %22)
  %24 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !226
  %26 = load ptr, ptr %25, align 8, !tbaa !227
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @bitmap_zero_bits, ptr %26
  %29 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 2
  %30 = load i32, ptr %29, align 8, !tbaa !229
  %31 = shl i32 %30, 7
  %32 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !231
  %34 = icmp eq i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = or disjoint i32 %31, %35
  br label %37

37:                                               ; preds = %98, %20
  %38 = phi i64 [ %33, %20 ], [ %106, %98 ]
  %39 = phi i32 [ 0, %20 ], [ %94, %98 ]
  %40 = phi i32 [ %36, %20 ], [ %107, %98 ]
  %41 = phi ptr [ %28, %20 ], [ %96, %98 ]
  %42 = icmp eq i64 %38, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %71, %37
  %44 = phi i64 [ %38, %37 ], [ %76, %71 ]
  %45 = phi i32 [ %39, %37 ], [ %72, %71 ]
  %46 = phi i32 [ %40, %37 ], [ %73, %71 ]
  %47 = phi ptr [ %41, %37 ], [ %64, %71 ]
  %48 = and i64 %44, 1
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %92

50:                                               ; preds = %43, %50
  %51 = phi i32 [ %54, %50 ], [ %46, %43 ]
  %52 = phi i64 [ %53, %50 ], [ %44, %43 ]
  %53 = lshr exact i64 %52, 1
  %54 = add i32 %51, 1
  %55 = and i64 %52, 2
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %50, label %92, !llvm.loop !232

57:                                               ; preds = %37
  %58 = add i32 %40, 63
  %59 = and i32 %58, -64
  %60 = add i32 %39, 1
  br label %61

61:                                               ; preds = %88, %57
  %62 = phi i64 [ %38, %57 ], [ %83, %88 ]
  %63 = phi i32 [ %59, %57 ], [ %91, %88 ]
  %64 = phi ptr [ %41, %57 ], [ %86, %88 ]
  %65 = phi i32 [ %60, %57 ], [ 0, %88 ]
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %82, label %67

67:                                               ; preds = %61
  %68 = add i32 %63, 128
  %69 = shl i32 %65, 6
  %70 = sub i32 %68, %69
  br label %71

71:                                               ; preds = %67, %78
  %72 = phi i32 [ %80, %78 ], [ %65, %67 ]
  %73 = phi i32 [ %79, %78 ], [ %63, %67 ]
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !231
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %43

78:                                               ; preds = %71
  %79 = add i32 %73, 64
  %80 = add i32 %72, 1
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %71, !llvm.loop !233

82:                                               ; preds = %78, %61
  %83 = phi i64 [ %62, %61 ], [ %76, %78 ]
  %84 = phi i32 [ %63, %61 ], [ %70, %78 ]
  %85 = phi i32 [ %65, %61 ], [ 2, %78 ]
  %86 = load ptr, ptr %64, align 8, !tbaa !234
  %87 = icmp eq ptr %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.bitmap_element_def, ptr %86, i64 0, i32 2
  %90 = load i32, ptr %89, align 8, !tbaa !229
  %91 = shl i32 %90, 7
  br label %61, !llvm.loop !235

92:                                               ; preds = %82, %50, %43
  %93 = phi i64 [ %44, %43 ], [ %53, %50 ], [ %83, %82 ]
  %94 = phi i32 [ %45, %43 ], [ %45, %50 ], [ %85, %82 ]
  %95 = phi i32 [ %46, %43 ], [ %54, %50 ], [ %84, %82 ]
  %96 = phi ptr [ %47, %43 ], [ %47, %50 ], [ %86, %82 ]
  %97 = phi i1 [ false, %43 ], [ false, %50 ], [ true, %82 ]
  br i1 %97, label %108, label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr @varmap, align 8
  %100 = zext i32 %95 to i64
  %101 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %99, i64 0, i32 2, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !187
  %103 = getelementptr inbounds %struct.variable_info, ptr %102, i64 0, i32 6
  %104 = load ptr, ptr %103, align 8, !tbaa !210
  %105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %104)
  %106 = lshr i64 %93, 1
  %107 = add i32 %95, 1
  br label %37, !llvm.loop !236

108:                                              ; preds = %92
  %109 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %0)
  br label %110

110:                                              ; preds = %108, %9
  ret void
}

; Function Attrs: cold nofree nounwind uwtable
define dso_local void @dump_pta_stats(ptr nocapture noundef %0) local_unnamed_addr #9 !prof !186 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0)
  %3 = load i64, ptr @pta_stats.1, align 8, !tbaa !237
  %4 = load i64, ptr @pta_stats.0, align 8, !tbaa !239
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef %5)
  %7 = load i64, ptr @pta_stats.3, align 8, !tbaa !240
  %8 = load i64, ptr @pta_stats.2, align 8, !tbaa !241
  %9 = add i64 %8, %7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %7, i64 noundef %9)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @pt_solution_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #11 !prof !242 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: cold nounwind uwtable
define dso_local void @pt_solution_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #10 !prof !186 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %3 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !243
  %4 = load ptr, ptr %1, align 8, !tbaa !227
  %5 = icmp eq ptr %4, null
  %6 = select i1 %5, ptr @bitmap_zero_bits, ptr %4
  %7 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 2
  %8 = load i32, ptr %7, align 8, !tbaa !229
  %9 = shl i32 %8, 7
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %6, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !231
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = or disjoint i32 %9, %13
  br label %15

15:                                               ; preds = %93, %2
  %16 = phi i32 [ 0, %2 ], [ %71, %93 ]
  %17 = phi i64 [ %11, %2 ], [ %94, %93 ]
  %18 = phi ptr [ %6, %2 ], [ %73, %93 ]
  %19 = phi i32 [ %14, %2 ], [ %95, %93 ]
  %20 = icmp eq i64 %17, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %49, %15
  %22 = phi i32 [ %16, %15 ], [ %50, %49 ]
  %23 = phi i64 [ %17, %15 ], [ %54, %49 ]
  %24 = phi ptr [ %18, %15 ], [ %41, %49 ]
  %25 = phi i32 [ %19, %15 ], [ %51, %49 ]
  %26 = and i64 %23, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %21, %28
  %29 = phi i32 [ %32, %28 ], [ %25, %21 ]
  %30 = phi i64 [ %31, %28 ], [ %23, %21 ]
  %31 = lshr exact i64 %30, 1
  %32 = add i32 %29, 1
  %33 = and i64 %30, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %28, label %70, !llvm.loop !232

35:                                               ; preds = %15
  %36 = add i32 %19, 63
  %37 = and i32 %36, -64
  %38 = add i32 %16, 1
  br label %39

39:                                               ; preds = %66, %35
  %40 = phi i64 [ %17, %35 ], [ %61, %66 ]
  %41 = phi ptr [ %18, %35 ], [ %64, %66 ]
  %42 = phi i32 [ %37, %35 ], [ %69, %66 ]
  %43 = phi i32 [ %38, %35 ], [ 0, %66 ]
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %60, label %45

45:                                               ; preds = %39
  %46 = add i32 %42, 128
  %47 = shl i32 %43, 6
  %48 = sub i32 %46, %47
  br label %49

49:                                               ; preds = %45, %56
  %50 = phi i32 [ %58, %56 ], [ %43, %45 ]
  %51 = phi i32 [ %57, %56 ], [ %42, %45 ]
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !231
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %21

56:                                               ; preds = %49
  %57 = add i32 %51, 64
  %58 = add i32 %50, 1
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %49, !llvm.loop !233

60:                                               ; preds = %56, %39
  %61 = phi i64 [ %40, %39 ], [ %54, %56 ]
  %62 = phi i32 [ %42, %39 ], [ %48, %56 ]
  %63 = phi i32 [ %43, %39 ], [ 2, %56 ]
  %64 = load ptr, ptr %41, align 8, !tbaa !234
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !229
  %69 = shl i32 %68, 7
  br label %39, !llvm.loop !235

70:                                               ; preds = %60, %28, %21
  %71 = phi i32 [ %22, %21 ], [ %22, %28 ], [ %63, %60 ]
  %72 = phi i64 [ %23, %21 ], [ %31, %28 ], [ %61, %60 ]
  %73 = phi ptr [ %24, %21 ], [ %24, %28 ], [ %64, %60 ]
  %74 = phi i32 [ %25, %21 ], [ %32, %28 ], [ %62, %60 ]
  %75 = phi i1 [ false, %21 ], [ false, %28 ], [ true, %60 ]
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = tail call ptr @referenced_var_lookup(i32 noundef %74) #28
  %78 = load i64, ptr %77, align 8
  %79 = and i64 %78, 67108864
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %77, i64 0, i32 2
  %83 = load i64, ptr %82, align 8
  %84 = lshr i64 %83, 25
  %85 = trunc i64 %84 to i8
  %86 = and i8 %85, 1
  br label %87

87:                                               ; preds = %76, %81
  %88 = phi i8 [ 1, %76 ], [ %86, %81 ]
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr %0, align 8
  %92 = or i8 %91, 16
  store i8 %92, ptr %0, align 8
  br label %96

93:                                               ; preds = %87
  %94 = lshr i64 %72, 1
  %95 = add i32 %74, 1
  br label %15, !llvm.loop !245

96:                                               ; preds = %70, %90
  ret void
}

declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local zeroext i8 @pt_solution_includes_global(ptr nocapture noundef readonly %0) local_unnamed_addr #13 !prof !246 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %14, %10 ]
  %4 = load i8, ptr %3, align 8
  %5 = and i8 %4, 19
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %15, !prof !247

7:                                                ; preds = %2
  %8 = and i8 %4, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @cfun, align 8, !tbaa !187
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !248
  %14 = getelementptr inbounds %struct.gimple_df, ptr %13, i64 0, i32 4
  br label %2

15:                                               ; preds = %7, %2
  %16 = phi i8 [ 1, %2 ], [ 0, %7 ]
  ret i8 %16
}

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i8 @pt_solution_includes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !250 {
  %3 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef %0, ptr noundef %1), !range !251
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.1, ptr @pta_stats.0, !prof !252
  %6 = load i64, ptr %5, align 8, !tbaa !231
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !231
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i8 @pt_solution_includes_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !250 !PGOFuncName !253 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %39, !prof !254

6:                                                ; preds = %2
  %7 = and i8 %3, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %18, label %9, !prof !252

9:                                                ; preds = %6
  %10 = load i64, ptr %1, align 8
  %11 = and i64 %10, 67108864
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %39, !prof !254

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %1, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 33554432
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %39, !prof !252

18:                                               ; preds = %13, %6
  %19 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !243
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !198
  %25 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %20, i32 noundef %24) #28
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22, %18
  %28 = load i8, ptr %0, align 8
  %29 = and i8 %28, 4
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr @cfun, align 8, !tbaa !187
  %33 = getelementptr inbounds %struct.function, ptr %32, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !248
  %35 = getelementptr inbounds %struct.gimple_df, ptr %34, i64 0, i32 4
  %36 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef nonnull %35, ptr noundef %1), !range !251
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %27
  br label %39

39:                                               ; preds = %9, %31, %22, %13, %2, %38
  %40 = phi i8 [ 0, %38 ], [ 1, %2 ], [ 1, %13 ], [ 1, %22 ], [ 1, %31 ], [ 1, %9 ]
  ret i8 %40
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @pt_solutions_intersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #14 !prof !255 {
  %3 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef %0, ptr noundef %1), !range !251
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.3, ptr @pta_stats.2, !prof !256
  %6 = load i64, ptr %5, align 8, !tbaa !231
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !231
  ret i8 %3
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @pt_solutions_intersect_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !255 !PGOFuncName !257 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %66, !prof !258

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %66, !prof !258

10:                                               ; preds = %6
  %11 = and i8 %3, 2
  %12 = icmp eq i8 %11, 0
  %13 = and i8 %7, 18
  %14 = icmp eq i8 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %66, !prof !259

16:                                               ; preds = %10
  %17 = and i8 %7, 2
  %18 = icmp eq i8 %17, 0
  %19 = and i8 %3, 16
  %20 = icmp eq i8 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %66

22:                                               ; preds = %16
  %23 = and i8 %3, 4
  %24 = icmp eq i8 %23, 0
  %25 = or i8 %7, %3
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %54, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr @cfun, align 8, !tbaa !187
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !248
  %32 = getelementptr inbounds %struct.gimple_df, ptr %31, i64 0, i32 4
  %33 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %32), !range !251
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = and i8 %3, 4
  %37 = and i8 %36, %7
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  br i1 %24, label %43, label %40

40:                                               ; preds = %39
  %41 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %32, ptr noundef nonnull %1), !range !251
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %40, %39
  %44 = load i8, ptr %1, align 8
  %45 = and i8 %44, 4
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @cfun, align 8, !tbaa !187
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !248
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 4
  %52 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %51, ptr noundef nonnull %0), !range !251
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %22, %47, %43, %28
  %55 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !243
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !243
  %61 = icmp eq ptr %60, null
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef nonnull %56, ptr noundef nonnull %60) #28
  %64 = icmp ne i8 %63, 0
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %54, %35, %16, %10, %58, %62, %40, %47, %2, %6
  %67 = phi i8 [ 1, %6 ], [ 1, %2 ], [ 1, %47 ], [ 1, %40 ], [ 0, %58 ], [ %65, %62 ], [ 1, %10 ], [ 1, %16 ], [ 1, %35 ], [ 0, %54 ]
  ret i8 %67
}

; Function Attrs: cold nounwind uwtable
define dso_local zeroext i8 @pt_solutions_same_restrict_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #10 !prof !186 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %24, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !243
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !243
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5087, ptr noundef nonnull @.str.4) #28
  br label %19

19:                                               ; preds = %14, %18
  %20 = load ptr, ptr %11, align 8, !tbaa !243
  %21 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !243
  %23 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %20, ptr noundef %22) #28
  br label %24

24:                                               ; preds = %2, %6, %19
  %25 = phi i8 [ %23, %19 ], [ 1, %6 ], [ 1, %2 ]
  ret i8 %25
}

declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @debug_sa_points_to_info() local_unnamed_addr #10 !prof !186 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !187
  tail call fastcc void @dump_sa_points_to_info(ptr noundef %1)
  ret void
}

; Function Attrs: cold nounwind uwtable
define internal fastcc void @dump_sa_points_to_info(ptr nocapture noundef %0) unnamed_addr #10 !prof !186 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 17, i64 1, ptr %0)
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 7, i64 1, ptr %0)
  %8 = load i32, ptr @stats, align 4, !tbaa !260
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %8)
  %10 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !262
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %10)
  %12 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !263
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %12)
  %14 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !264
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %14)
  %16 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !265
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %16)
  %18 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %18)
  %20 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !267
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %20)
  br label %22

22:                                               ; preds = %6, %1
  br label %23

23:                                               ; preds = %22, %32
  %24 = phi i32 [ %33, %32 ], [ 0, %22 ]
  %25 = load ptr, ptr @varmap, align 8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  %28 = load i32, ptr %25, align 8, !tbaa !219
  br label %29

29:                                               ; preds = %23, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ]
  %31 = icmp ult i32 %24, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  tail call fastcc void @dump_solution_for_var(ptr noundef %0, i32 noundef %24)
  %33 = add nuw i32 %24, 1
  br label %23, !llvm.loop !268

34:                                               ; preds = %29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_alias_heapvars() local_unnamed_addr #14 !prof !269 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !187
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !270

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #28
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @heapvar_for_stmt, align 8, !tbaa !187
  ret void
}

declare void @htab_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @compute_may_aliases() local_unnamed_addr #14 !prof !271 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = load i8, ptr @timevar_enable, align 1, !tbaa !198
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %5, label %4, !prof !272

4:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 56) #28
  br label %5

5:                                                ; preds = %4, %0
  tail call fastcc void @init_alias_vars()
  %6 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !187
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !273

8:                                                ; preds = %5
  %9 = tail call ptr @htab_create_alloc(i64 noundef 11, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @heapvar_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #28
  store ptr %9, ptr @heapvar_for_stmt, align 8, !tbaa !187
  br label %10

10:                                               ; preds = %8, %5
  tail call fastcc void @intra_create_variable_infos()
  %11 = load ptr, ptr @cfun, align 8, !tbaa !187
  %12 = getelementptr inbounds %struct.function, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !274
  %14 = load ptr, ptr %13, align 8, !tbaa !275
  %15 = getelementptr inbounds %struct.basic_block_def, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !277
  %17 = getelementptr inbounds %struct.control_flow_graph, ptr %13, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !279
  %19 = icmp eq ptr %16, %18
  br i1 %19, label %70, label %29, !prof !280

20:                                               ; preds = %64, %61
  %21 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 6
  %22 = load ptr, ptr %21, align 8, !tbaa !277
  %23 = load ptr, ptr @cfun, align 8, !tbaa !187
  %24 = getelementptr inbounds %struct.function, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !274
  %26 = getelementptr inbounds %struct.control_flow_graph, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !279
  %28 = icmp eq ptr %22, %27
  br i1 %28, label %70, label %29, !prof !281, !llvm.loop !282

29:                                               ; preds = %10, %20
  %30 = phi ptr [ %22, %20 ], [ %16, %10 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #28
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %30) #28
  %31 = load ptr, ptr %1, align 8, !tbaa.struct !283
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #28
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33, !prof !284

33:                                               ; preds = %29, %41
  %34 = phi ptr [ %43, %41 ], [ %31, %29 ]
  %35 = load ptr, ptr %34, align 8, !tbaa !285
  %36 = getelementptr inbounds %struct.gimple_statement_phi, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = call zeroext i8 @is_gimple_reg(ptr noundef %37) #28
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !287

40:                                               ; preds = %33
  call fastcc void @find_func_aliases(ptr noundef %35)
  br label %41

41:                                               ; preds = %40, %33
  %42 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %34, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !288
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %33, !prof !289, !llvm.loop !290

45:                                               ; preds = %41, %29
  %46 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 13
  %47 = load i32, ptr %46, align 8, !tbaa !291, !noalias !292
  %48 = and i32 %47, 512
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %56, !prof !295

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.basic_block_def, ptr %30, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !198, !noalias !292
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !296

54:                                               ; preds = %50
  %55 = load ptr, ptr %52, align 8, !tbaa !297, !noalias !292
  br label %56

56:                                               ; preds = %54, %50, %45
  %57 = phi ptr [ %55, %54 ], [ null, %50 ], [ null, %45 ]
  %58 = icmp eq ptr %57, null
  br i1 %58, label %61, label %59, !prof !296

59:                                               ; preds = %56
  %60 = load ptr, ptr %57, align 8, !tbaa !299, !noalias !292
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi ptr [ %60, %59 ], [ null, %56 ]
  %63 = icmp eq ptr %62, null
  br i1 %63, label %20, label %64, !prof !301

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %68, %64 ], [ %62, %61 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !285
  call fastcc void @find_func_aliases(ptr noundef %66)
  %67 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %65, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !288
  %69 = icmp eq ptr %68, null
  br i1 %69, label %20, label %64, !prof !302, !llvm.loop !303

70:                                               ; preds = %20, %10
  call fastcc void @solve_constraints()
  %71 = load ptr, ptr @varmap, align 8
  %72 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %71, i64 0, i32 2, i64 3
  %73 = load ptr, ptr %72, align 8, !tbaa !187
  %74 = load ptr, ptr @cfun, align 8, !tbaa !187
  %75 = getelementptr inbounds %struct.function, ptr %74, i64 0, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !248
  %77 = getelementptr inbounds %struct.gimple_df, ptr %76, i64 0, i32 4
  call fastcc void @find_what_var_points_to(ptr noundef %73, ptr noundef nonnull %77)
  %78 = load ptr, ptr @varmap, align 8
  %79 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %78, i64 0, i32 2, i64 5
  %80 = load ptr, ptr %79, align 8, !tbaa !187
  %81 = load ptr, ptr @cfun, align 8, !tbaa !187
  %82 = getelementptr inbounds %struct.function, ptr %81, i64 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !248
  %84 = getelementptr inbounds %struct.gimple_df, ptr %83, i64 0, i32 5
  call fastcc void @find_what_var_points_to(ptr noundef %80, ptr noundef nonnull %84)
  %85 = load ptr, ptr @cfun, align 8, !tbaa !187
  %86 = getelementptr inbounds %struct.function, ptr %85, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !248
  %88 = getelementptr inbounds %struct.gimple_df, ptr %87, i64 0, i32 4
  %89 = load i8, ptr %88, align 8
  %90 = and i8 %89, -5
  store i8 %90, ptr %88, align 8
  br label %91

91:                                               ; preds = %133, %70
  %92 = phi i32 [ 0, %70 ], [ %134, %133 ]
  %93 = load ptr, ptr @varmap, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %102, label %95, !prof !304

95:                                               ; preds = %91
  %96 = load i32, ptr %93, align 8, !tbaa !219
  %97 = icmp ugt i32 %96, %92
  br i1 %97, label %98, label %102, !prof !305

98:                                               ; preds = %95
  %99 = zext i32 %92 to i64
  %100 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %93, i64 0, i32 2, i64 %99
  %101 = load ptr, ptr %100, align 8, !tbaa !187
  br label %102

102:                                              ; preds = %98, %95, %91
  %103 = phi ptr [ %101, %98 ], [ null, %95 ], [ null, %91 ]
  %104 = phi i1 [ false, %98 ], [ true, %95 ], [ true, %91 ]
  br i1 %104, label %135, label %105, !prof !306

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.variable_info, ptr %103, i64 0, i32 1
  %107 = load i8, ptr %106, align 4
  %108 = and i8 %107, -80
  %109 = icmp eq i8 %108, 16
  br i1 %109, label %110, label %133, !prof !307

110:                                              ; preds = %105
  %111 = load ptr, ptr @cfun, align 8, !tbaa !187
  %112 = getelementptr inbounds %struct.function, ptr %111, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !248
  %114 = getelementptr inbounds %struct.gimple_df, ptr %113, i64 0, i32 4
  %115 = getelementptr inbounds %struct.variable_info, ptr %103, i64 0, i32 7
  %116 = load ptr, ptr %115, align 8, !tbaa !308
  %117 = call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef nonnull %114, ptr noundef %116), !range !251
  %118 = icmp eq i8 %117, 0
  %119 = select i1 %118, ptr @pta_stats.1, ptr @pta_stats.0
  %120 = load i64, ptr %119, align 8, !tbaa !231
  %121 = add i64 %120, 1
  store i64 %121, ptr %119, align 8, !tbaa !231
  %122 = load i8, ptr %106, align 4
  %123 = shl nuw i8 %117, 7
  %124 = and i8 %122, 127
  %125 = or disjoint i8 %124, %123
  store i8 %125, ptr %106, align 4
  %126 = load ptr, ptr %115, align 8, !tbaa !308
  %127 = getelementptr inbounds %struct.tree_decl_common, ptr %126, i64 0, i32 2
  %128 = zext nneg i8 %117 to i64
  %129 = load i64, ptr %127, align 8
  %130 = shl nuw nsw i64 %128, 25
  %131 = and i64 %129, -33554433
  %132 = or disjoint i64 %131, %130
  store i64 %132, ptr %127, align 8
  br label %133

133:                                              ; preds = %110, %105
  %134 = add i32 %92, 1
  br label %91, !llvm.loop !309

135:                                              ; preds = %102, %184
  %136 = phi i64 [ %185, %184 ], [ 0, %102 ]
  %137 = load ptr, ptr @cfun, align 8, !tbaa !187
  %138 = getelementptr inbounds %struct.function, ptr %137, i64 0, i32 3
  %139 = load ptr, ptr %138, align 8, !tbaa !248
  %140 = getelementptr inbounds %struct.gimple_df, ptr %139, i64 0, i32 2
  %141 = load ptr, ptr %140, align 8, !tbaa !310
  %142 = icmp eq ptr %141, null
  br i1 %142, label %145, label %143, !prof !313

143:                                              ; preds = %135
  %144 = load i32, ptr %141, align 8, !tbaa !314
  br label %145

145:                                              ; preds = %143, %135
  %146 = phi i32 [ %144, %143 ], [ 0, %135 ]
  %147 = zext i32 %146 to i64
  %148 = icmp ult i64 %136, %147
  br i1 %148, label %149, label %186, !prof !316

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.VEC_tree_base, ptr %141, i64 0, i32 2, i64 %136
  %151 = load ptr, ptr %150, align 8, !tbaa !187
  %152 = icmp eq ptr %151, null
  br i1 %152, label %184, label %153, !prof !317

153:                                              ; preds = %149
  %154 = getelementptr inbounds %struct.tree_common, ptr %151, i64 0, i32 2
  %155 = load ptr, ptr %154, align 8, !tbaa !198
  %156 = load i64, ptr %155, align 8
  %157 = trunc i64 %156 to i16
  switch i16 %157, label %184 [
    i16 10, label %158
    i16 12, label %158
  ], !prof !318

158:                                              ; preds = %153, %153
  %159 = load i64, ptr %151, align 8
  %160 = and i64 %159, 65535
  %161 = icmp eq i64 %160, 141
  br i1 %161, label %162, label %172, !prof !319

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.tree_ssa_name, ptr %151, i64 0, i32 1
  %164 = load ptr, ptr %163, align 8, !tbaa !198
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 65535
  %167 = icmp ne i64 %166, 34
  %168 = and i64 %159, 4294967296
  %169 = icmp eq i64 %168, 0
  %170 = or i1 %169, %167
  %171 = select i1 %170, ptr %151, ptr %164, !prof !320
  br label %172

172:                                              ; preds = %162, %158
  %173 = phi ptr [ %151, %158 ], [ %171, %162 ]
  %174 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %175 = call ptr @pointer_map_contains(ptr noundef %174, ptr noundef %173) #28
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177, !prof !321

177:                                              ; preds = %172
  %178 = load ptr, ptr %175, align 8, !tbaa !187
  br label %179

179:                                              ; preds = %177, %172
  %180 = phi ptr [ %178, %177 ], [ null, %172 ]
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182, !prof !321

182:                                              ; preds = %179
  %183 = call ptr @get_ptr_info(ptr noundef nonnull %151) #28
  call fastcc void @find_what_var_points_to(ptr noundef nonnull %180, ptr noundef %183)
  br label %184

184:                                              ; preds = %179, %182, %153, %149
  %185 = add nuw nsw i64 %136, 1
  br label %135, !llvm.loop !322

186:                                              ; preds = %145
  %187 = load i8, ptr @timevar_enable, align 1, !tbaa !198
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %190, label %189, !prof !272

189:                                              ; preds = %186
  call void @timevar_pop_1(i32 noundef 56) #28
  br label %190

190:                                              ; preds = %186, %189
  %191 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %192 = icmp eq ptr %191, null
  br i1 %192, label %199, label %193, !prof !272

193:                                              ; preds = %190
  call void @dump_alias_info(ptr noundef nonnull %191) #28
  %194 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %195 = and i32 %194, 8
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr @dump_file, align 8, !tbaa !187
  call void @dump_referenced_vars(ptr noundef %198) #28
  br label %199

199:                                              ; preds = %193, %197, %190
  call fastcc void @delete_points_to_sets()
  %200 = load ptr, ptr @cfun, align 8, !tbaa !187
  %201 = call zeroext i8 @need_ssa_update_p(ptr noundef %200) #28
  %202 = icmp eq i8 %201, 0
  br i1 %202, label %204, label %203, !prof !272

203:                                              ; preds = %199
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5611, ptr noundef nonnull @.str.4) #28
  br label %204

204:                                              ; preds = %199, %203
  ret i32 0
}

declare void @dump_alias_info(ptr noundef) local_unnamed_addr #3

declare void @dump_referenced_vars(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @delete_points_to_sets() unnamed_addr #14 !prof !271 !PGOFuncName !323 {
  %1 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !187
  tail call void @htab_delete(ptr noundef %1) #28
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !272

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !324
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.84, i32 noundef %9)
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  tail call void @pointer_map_destroy(ptr noundef %12) #28
  tail call void @bitmap_obstack_release(ptr noundef nonnull @pta_obstack) #28
  %13 = load ptr, ptr @constraints, align 8, !tbaa !187
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15, !prof !325

15:                                               ; preds = %11
  tail call void @free(ptr noundef %13)
  br label %16

16:                                               ; preds = %11, %15
  store ptr null, ptr @constraints, align 8, !tbaa !187
  %17 = load ptr, ptr @graph, align 8, !tbaa !187
  %18 = load i32, ptr %17, align 8, !tbaa !221
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %34, label %20, !prof !280

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 15
  br label %22

22:                                               ; preds = %20, %29
  %23 = phi i64 [ 0, %20 ], [ %30, %29 ]
  %24 = load ptr, ptr %21, align 8, !tbaa !326
  %25 = getelementptr inbounds ptr, ptr %24, i64 %23
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28, !prof !327

28:                                               ; preds = %22
  tail call void @free(ptr noundef %26)
  br label %29

29:                                               ; preds = %22, %28
  store ptr null, ptr %25, align 8, !tbaa !187
  %30 = add nuw nsw i64 %23, 1
  %31 = load i32, ptr %17, align 8, !tbaa !221
  %32 = zext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %22, label %34, !prof !328, !llvm.loop !329

34:                                               ; preds = %29, %16
  %35 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 15
  %36 = load ptr, ptr %35, align 8, !tbaa !326
  tail call void @free(ptr noundef %36)
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !223
  tail call void @free(ptr noundef %38)
  %39 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !330
  tail call void @free(ptr noundef %40)
  %41 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !331
  tail call void @free(ptr noundef %42)
  %43 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 8
  %44 = load ptr, ptr %43, align 8, !tbaa !332
  tail call void @free(ptr noundef %44)
  %45 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !333
  tail call void @free(ptr noundef %46)
  tail call void @free(ptr noundef %17)
  %47 = load ptr, ptr @varmap, align 8, !tbaa !187
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49, !prof !325

49:                                               ; preds = %34
  tail call void @free(ptr noundef %47)
  br label %50

50:                                               ; preds = %34, %49
  store ptr null, ptr @varmap, align 8, !tbaa !187
  %51 = load ptr, ptr @variable_info_pool, align 8, !tbaa !187
  tail call void @free_alloc_pool(ptr noundef %51) #28
  %52 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  tail call void @free_alloc_pool(ptr noundef %52) #28
  ret void
}

declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_pta() #15 !prof !334 !PGOFuncName !335 {
  %1 = load i32, ptr @flag_tree_pta, align 4, !tbaa !202
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ipa_pta() #16 !prof !336 !PGOFuncName !337 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !202
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ipa_pta, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false, !prof !338
  br i1 %5, label %6, label %16, !prof !339

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !202
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !202
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: cold nounwind uwtable
define internal noundef i32 @ipa_pta_execute() #10 !prof !186 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 true, ptr @in_ipa_mode, align 4
  %4 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !187
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = tail call ptr @htab_create_alloc(i64 noundef 11, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @heapvar_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #28
  store ptr %7, ptr @heapvar_for_stmt, align 8, !tbaa !187
  br label %8

8:                                                ; preds = %0, %6
  tail call fastcc void @init_alias_vars()
  %9 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !187
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %197, %8
  %12 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !187
  %13 = icmp eq ptr %12, null
  br i1 %13, label %289, label %201

14:                                               ; preds = %8, %197
  %15 = phi ptr [ %199, %197 ], [ %9, %8 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !340
  %17 = call zeroext i8 @gimple_has_body_p(ptr noundef %16) #28
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %197, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !348
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %197

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 18, i32 2
  %25 = load i8, ptr %24, align 8
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %197

28:                                               ; preds = %23
  %29 = load ptr, ptr %15, align 8, !tbaa !340
  %30 = call ptr @cgraph_node_name(ptr noundef nonnull %15) #28
  %31 = call fastcc ptr @new_var_info(ptr noundef %29, ptr noundef %30)
  %32 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 3
  store i64 0, ptr %32, align 8, !tbaa !349
  %33 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 4
  store i64 1, ptr %33, align 8, !tbaa !350
  %34 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !198
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %28, %37
  %38 = phi ptr [ %42, %37 ], [ %35, %28 ]
  %39 = phi i32 [ %40, %37 ], [ 0, %28 ]
  %40 = add i32 %39, 1
  %41 = getelementptr inbounds %struct.tree_common, ptr %38, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !198
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %37, !llvm.loop !351

44:                                               ; preds = %37, %28
  %45 = phi i32 [ 0, %28 ], [ %40, %37 ]
  %46 = getelementptr inbounds %struct.tree_common, ptr %29, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !198
  %48 = getelementptr inbounds %struct.tree_type, ptr %47, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !198
  %50 = icmp eq ptr %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %44
  %52 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !187
  %53 = getelementptr inbounds %struct.tree_list, ptr %49, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !198
  %55 = icmp eq ptr %54, %52
  br i1 %55, label %65, label %56

56:                                               ; preds = %51, %61
  %57 = phi ptr [ %59, %61 ], [ %49, %51 ]
  %58 = getelementptr inbounds %struct.tree_common, ptr %57, i64 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !198
  %60 = icmp eq ptr %59, null
  br i1 %60, label %65, label %61, !llvm.loop !352

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tree_list, ptr %59, i64 0, i32 2
  %63 = load ptr, ptr %62, align 8, !tbaa !198
  %64 = icmp eq ptr %63, %52
  br i1 %64, label %65, label %56, !llvm.loop !352

65:                                               ; preds = %61, %56, %51, %44
  %66 = phi i1 [ %50, %44 ], [ %50, %51 ], [ %60, %56 ], [ %60, %61 ]
  %67 = add i32 %45, 1
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 5
  store i64 %68, ptr %69, align 8, !tbaa !353
  %70 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 7
  %71 = load ptr, ptr %70, align 8, !tbaa !308
  call fastcc void @insert_vi_for_tree(ptr noundef %71, ptr noundef %31)
  %72 = load i32, ptr @stats, align 4, !tbaa !260
  %73 = add i32 %72, 1
  store i32 %73, ptr @stats, align 4, !tbaa !260
  br i1 %66, label %74, label %78

74:                                               ; preds = %65
  %75 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 -1, i64 16, i1 false)
  %76 = load i8, ptr %75, align 4
  %77 = or i8 %76, 4
  store i8 %77, ptr %75, align 4
  br label %197

78:                                               ; preds = %65
  %79 = load i64, ptr %69, align 8, !tbaa !353
  %80 = icmp ugt i64 %79, 1
  br i1 %80, label %81, label %137

81:                                               ; preds = %78
  %82 = load ptr, ptr %34, align 8, !tbaa !198
  %83 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 2
  br label %84

84:                                               ; preds = %81, %131
  %85 = phi i64 [ 1, %81 ], [ %134, %131 ]
  %86 = phi ptr [ %82, %81 ], [ %132, %131 ]
  %87 = phi i32 [ 1, %81 ], [ %133, %131 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #28
  %88 = icmp eq ptr %86, null
  %89 = select i1 %88, ptr %29, ptr %86
  %90 = add i32 %87, -1
  %91 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %1, ptr noundef nonnull @.str.86, ptr noundef %30, i32 noundef %90) #28
  %92 = load ptr, ptr %1, align 8, !tbaa !187
  %93 = call ptr @ggc_alloc_string(ptr noundef %92, i32 noundef -1) #28
  %94 = load ptr, ptr %1, align 8, !tbaa !187
  call void @free(ptr noundef %94)
  %95 = call fastcc ptr @new_var_info(ptr noundef %89, ptr noundef %93)
  %96 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 3
  store i64 %85, ptr %96, align 8, !tbaa !349
  %97 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 4
  store i64 1, ptr %97, align 8, !tbaa !350
  %98 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 1
  %99 = load i8, ptr %98, align 4
  %100 = or i8 %99, 8
  store i8 %100, ptr %98, align 4
  %101 = load i64, ptr %69, align 8, !tbaa !353
  %102 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 5
  store i64 %101, ptr %102, align 8, !tbaa !353
  %103 = load ptr, ptr %83, align 8, !tbaa !354
  %104 = icmp eq ptr %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %84
  %106 = getelementptr inbounds %struct.variable_info, ptr %103, i64 0, i32 3
  %107 = load i64, ptr %106, align 8, !tbaa !349
  %108 = icmp ult i64 %107, %85
  br i1 %108, label %115, label %120

109:                                              ; preds = %84
  store ptr %95, ptr %83, align 8, !tbaa !354
  %110 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 2
  store ptr null, ptr %110, align 8, !tbaa !354
  br label %125

111:                                              ; preds = %115
  %112 = getelementptr inbounds %struct.variable_info, ptr %118, i64 0, i32 3
  %113 = load i64, ptr %112, align 8, !tbaa !349
  %114 = icmp ult i64 %113, %85
  br i1 %114, label %115, label %120, !llvm.loop !355

115:                                              ; preds = %105, %111
  %116 = phi ptr [ %118, %111 ], [ %103, %105 ]
  %117 = getelementptr inbounds %struct.variable_info, ptr %116, i64 0, i32 2
  %118 = load ptr, ptr %117, align 8, !tbaa !354
  %119 = icmp eq ptr %118, null
  br i1 %119, label %120, label %111, !llvm.loop !355

120:                                              ; preds = %115, %111, %105
  %121 = phi ptr [ %31, %105 ], [ %116, %111 ], [ %116, %115 ]
  %122 = getelementptr inbounds %struct.variable_info, ptr %121, i64 0, i32 2
  %123 = load ptr, ptr %122, align 8, !tbaa !354
  %124 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 2
  store ptr %123, ptr %124, align 8, !tbaa !354
  store ptr %95, ptr %122, align 8, !tbaa !354
  br label %125

125:                                              ; preds = %120, %109
  %126 = load i32, ptr @stats, align 4, !tbaa !260
  %127 = add i32 %126, 1
  store i32 %127, ptr @stats, align 4, !tbaa !260
  br i1 %88, label %131, label %128

128:                                              ; preds = %125
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %86, ptr noundef %95)
  %129 = getelementptr inbounds %struct.tree_common, ptr %86, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !198
  br label %131

131:                                              ; preds = %128, %125
  %132 = phi ptr [ %130, %128 ], [ null, %125 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #28
  %133 = add i32 %87, 1
  %134 = zext i32 %133 to i64
  %135 = load i64, ptr %69, align 8, !tbaa !353
  %136 = icmp ugt i64 %135, %134
  br i1 %136, label %84, label %137, !llvm.loop !356

137:                                              ; preds = %131, %78
  %138 = phi i64 [ 1, %78 ], [ %134, %131 ]
  %139 = phi i64 [ %79, %78 ], [ %135, %131 ]
  %140 = getelementptr inbounds %struct.tree_decl_non_common, ptr %29, i64 0, i32 3
  %141 = load ptr, ptr %140, align 8, !tbaa !198
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  %144 = load ptr, ptr %46, align 8, !tbaa !198
  %145 = getelementptr inbounds %struct.tree_common, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !198
  %147 = load i64, ptr %146, align 8
  %148 = and i64 %147, 65535
  %149 = icmp eq i64 %148, 19
  br i1 %149, label %197, label %150

150:                                              ; preds = %143, %137
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %151 = add i64 %139, 1
  store i64 %151, ptr %69, align 8, !tbaa !353
  %152 = load ptr, ptr %140, align 8, !tbaa !198
  %153 = icmp eq ptr %152, null
  %154 = select i1 %153, ptr %29, ptr %152
  %155 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.87, ptr noundef %30) #28
  %156 = load ptr, ptr %2, align 8, !tbaa !187
  %157 = call ptr @ggc_alloc_string(ptr noundef %156, i32 noundef -1) #28
  %158 = load ptr, ptr %2, align 8, !tbaa !187
  call void @free(ptr noundef %158)
  %159 = call fastcc ptr @new_var_info(ptr noundef %154, ptr noundef %157)
  %160 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 3
  store i64 %138, ptr %160, align 8, !tbaa !349
  %161 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 4
  store i64 1, ptr %161, align 8, !tbaa !350
  %162 = load i64, ptr %69, align 8, !tbaa !353
  %163 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 5
  store i64 %162, ptr %163, align 8, !tbaa !353
  %164 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 1
  %165 = load i8, ptr %164, align 4
  %166 = or i8 %165, 8
  store i8 %166, ptr %164, align 4
  %167 = getelementptr inbounds %struct.variable_info, ptr %31, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !354
  %169 = icmp eq ptr %168, null
  br i1 %169, label %174, label %170

170:                                              ; preds = %150
  %171 = getelementptr inbounds %struct.variable_info, ptr %168, i64 0, i32 3
  %172 = load i64, ptr %171, align 8, !tbaa !349
  %173 = icmp ult i64 %172, %138
  br i1 %173, label %180, label %185

174:                                              ; preds = %150
  store ptr %159, ptr %167, align 8, !tbaa !354
  %175 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 2
  store ptr null, ptr %175, align 8, !tbaa !354
  br label %190

176:                                              ; preds = %180
  %177 = getelementptr inbounds %struct.variable_info, ptr %183, i64 0, i32 3
  %178 = load i64, ptr %177, align 8, !tbaa !349
  %179 = icmp ult i64 %178, %138
  br i1 %179, label %180, label %185, !llvm.loop !355

180:                                              ; preds = %170, %176
  %181 = phi ptr [ %183, %176 ], [ %168, %170 ]
  %182 = getelementptr inbounds %struct.variable_info, ptr %181, i64 0, i32 2
  %183 = load ptr, ptr %182, align 8, !tbaa !354
  %184 = icmp eq ptr %183, null
  br i1 %184, label %185, label %176, !llvm.loop !355

185:                                              ; preds = %180, %176, %170
  %186 = phi ptr [ %31, %170 ], [ %181, %176 ], [ %181, %180 ]
  %187 = getelementptr inbounds %struct.variable_info, ptr %186, i64 0, i32 2
  %188 = load ptr, ptr %187, align 8, !tbaa !354
  %189 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 2
  store ptr %188, ptr %189, align 8, !tbaa !354
  store ptr %159, ptr %187, align 8, !tbaa !354
  br label %190

190:                                              ; preds = %185, %174
  %191 = load i32, ptr @stats, align 4, !tbaa !260
  %192 = add i32 %191, 1
  store i32 %192, ptr @stats, align 4, !tbaa !260
  %193 = load ptr, ptr %140, align 8, !tbaa !198
  %194 = icmp eq ptr %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %190
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %193, ptr noundef %159)
  br label %196

196:                                              ; preds = %195, %190
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %197

197:                                              ; preds = %196, %143, %74, %23, %14, %19
  %198 = getelementptr inbounds %struct.cgraph_node, ptr %15, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !187
  %200 = icmp eq ptr %199, null
  br i1 %200, label %11, label %14, !llvm.loop !357

201:                                              ; preds = %11, %285
  %202 = phi ptr [ %287, %285 ], [ %12, %11 ]
  %203 = load ptr, ptr %202, align 8, !tbaa !340
  %204 = call zeroext i8 @gimple_has_body_p(ptr noundef %203) #28
  %205 = icmp eq i8 %204, 0
  br i1 %205, label %285, label %206

206:                                              ; preds = %201
  %207 = getelementptr inbounds %struct.cgraph_node, ptr %202, i64 0, i32 12
  %208 = load ptr, ptr %207, align 8, !tbaa !348
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %285

210:                                              ; preds = %206
  %211 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %212 = icmp eq ptr %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = call ptr @cgraph_node_name(ptr noundef nonnull %202) #28
  %215 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %211, ptr noundef nonnull @.str.85, ptr noundef %214)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load ptr, ptr %202, align 8, !tbaa !340
  %218 = getelementptr inbounds %struct.tree_function_decl, ptr %217, i64 0, i32 1
  %219 = load ptr, ptr %218, align 8, !tbaa !198
  %220 = load ptr, ptr @current_function_decl, align 8, !tbaa !187
  call void @push_cfun(ptr noundef %219) #28
  %221 = load ptr, ptr %202, align 8, !tbaa !340
  store ptr %221, ptr @current_function_decl, align 8, !tbaa !187
  %222 = getelementptr inbounds %struct.cgraph_node, ptr %202, i64 0, i32 18, i32 2
  %223 = load i8, ptr %222, align 8
  %224 = and i8 %223, 2
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %216
  call fastcc void @intra_create_variable_infos()
  br label %227

227:                                              ; preds = %226, %216
  %228 = getelementptr inbounds %struct.function, ptr %219, i64 0, i32 1
  %229 = load ptr, ptr %228, align 8, !tbaa !274
  %230 = load ptr, ptr %229, align 8, !tbaa !275
  %231 = getelementptr inbounds %struct.basic_block_def, ptr %230, i64 0, i32 6
  %232 = load ptr, ptr %231, align 8, !tbaa !277
  %233 = getelementptr inbounds %struct.control_flow_graph, ptr %229, i64 0, i32 1
  %234 = load ptr, ptr %233, align 8, !tbaa !279
  %235 = icmp eq ptr %232, %234
  br i1 %235, label %284, label %243

236:                                              ; preds = %278, %275
  %237 = getelementptr inbounds %struct.basic_block_def, ptr %244, i64 0, i32 6
  %238 = load ptr, ptr %237, align 8, !tbaa !277
  %239 = load ptr, ptr %228, align 8, !tbaa !274
  %240 = getelementptr inbounds %struct.control_flow_graph, ptr %239, i64 0, i32 1
  %241 = load ptr, ptr %240, align 8, !tbaa !279
  %242 = icmp eq ptr %238, %241
  br i1 %242, label %284, label %243, !llvm.loop !358

243:                                              ; preds = %227, %236
  %244 = phi ptr [ %238, %236 ], [ %232, %227 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %244) #28
  %245 = load ptr, ptr %3, align 8, !tbaa.struct !283
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  %246 = icmp eq ptr %245, null
  br i1 %246, label %259, label %247

247:                                              ; preds = %243, %255
  %248 = phi ptr [ %257, %255 ], [ %245, %243 ]
  %249 = load ptr, ptr %248, align 8, !tbaa !285
  %250 = getelementptr inbounds %struct.gimple_statement_phi, ptr %249, i64 0, i32 3
  %251 = load ptr, ptr %250, align 8, !tbaa !198
  %252 = call zeroext i8 @is_gimple_reg(ptr noundef %251) #28
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %247
  call fastcc void @find_func_aliases(ptr noundef %249)
  br label %255

255:                                              ; preds = %254, %247
  %256 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %248, i64 0, i32 2
  %257 = load ptr, ptr %256, align 8, !tbaa !288
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %247, !llvm.loop !359

259:                                              ; preds = %255, %243
  %260 = getelementptr inbounds %struct.basic_block_def, ptr %244, i64 0, i32 13
  %261 = load i32, ptr %260, align 8, !tbaa !291, !noalias !360
  %262 = and i32 %261, 512
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.basic_block_def, ptr %244, i64 0, i32 7
  %266 = load ptr, ptr %265, align 8, !tbaa !198, !noalias !360
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %264
  %269 = load ptr, ptr %266, align 8, !tbaa !297, !noalias !360
  br label %270

270:                                              ; preds = %268, %264, %259
  %271 = phi ptr [ %269, %268 ], [ null, %264 ], [ null, %259 ]
  %272 = icmp eq ptr %271, null
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = load ptr, ptr %271, align 8, !tbaa !299, !noalias !360
  br label %275

275:                                              ; preds = %270, %273
  %276 = phi ptr [ %274, %273 ], [ null, %270 ]
  %277 = icmp eq ptr %276, null
  br i1 %277, label %236, label %278

278:                                              ; preds = %275, %278
  %279 = phi ptr [ %282, %278 ], [ %276, %275 ]
  %280 = load ptr, ptr %279, align 8, !tbaa !285
  call fastcc void @find_func_aliases(ptr noundef %280)
  %281 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %279, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !288
  %283 = icmp eq ptr %282, null
  br i1 %283, label %236, label %278, !llvm.loop !363

284:                                              ; preds = %236, %227
  store ptr %220, ptr @current_function_decl, align 8, !tbaa !187
  call void @pop_cfun() #28
  br label %285

285:                                              ; preds = %201, %206, %284
  %286 = getelementptr inbounds %struct.cgraph_node, ptr %202, i64 0, i32 3
  %287 = load ptr, ptr %286, align 8, !tbaa !187
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %201, !llvm.loop !364

289:                                              ; preds = %285, %11
  call fastcc void @solve_constraints()
  call fastcc void @delete_points_to_sets()
  store i1 false, ptr @in_ipa_mode, align 4
  ret i32 0
}

declare void @gt_ggc_mx_tree_map(ptr noundef) #3

declare void @gt_pch_nx_tree_map(ptr noundef) #3

declare i32 @tree_map_base_marked_p(ptr noundef) #3

declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #3

declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @find(i32 noundef %0) unnamed_addr #17 !prof !365 !PGOFuncName !366 {
  %2 = load ptr, ptr @graph, align 8, !tbaa !187
  %3 = load i32, ptr %2, align 8, !tbaa !221
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %6, label %5, !prof !367

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef nonnull @.str.4) #28
  br label %6

6:                                                ; preds = %1, %5
  %7 = load ptr, ptr @graph, align 8, !tbaa !187
  %8 = getelementptr inbounds %struct.constraint_graph, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !223
  %10 = zext i32 %0 to i64
  %11 = getelementptr inbounds i32, ptr %9, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !202
  %13 = icmp eq i32 %12, %0
  br i1 %13, label %14, label %16, !prof !368

14:                                               ; preds = %6, %16
  %15 = phi i32 [ %17, %16 ], [ %0, %6 ]
  ret i32 %15

16:                                               ; preds = %6
  %17 = tail call fastcc i32 @find(i32 noundef %12)
  %18 = load ptr, ptr @graph, align 8, !tbaa !187
  %19 = getelementptr inbounds %struct.constraint_graph, ptr %18, i64 0, i32 5
  %20 = load ptr, ptr %19, align 8, !tbaa !223
  %21 = getelementptr inbounds i32, ptr %20, i64 %10
  store i32 %17, ptr %21, align 4, !tbaa !202
  br label %14
}

declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @pt_solution_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #18 !prof !186 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !243
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !227
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9, %5
  %13 = and i8 %2, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !187
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !248
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 4
  %20 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %19), !range !251
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %12
  br label %23

23:                                               ; preds = %15, %9, %1, %22
  %24 = phi i8 [ 1, %22 ], [ 0, %1 ], [ 0, %9 ], [ 0, %15 ]
  ret i8 %24
}

declare void @timevar_push_1(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @init_alias_vars() unnamed_addr #14 !prof !271 !PGOFuncName !369 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !187
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 95, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !370
  %4 = icmp ugt i32 %3, 1
  %5 = zext i1 %4 to i8
  store i8 %5, ptr @use_field_sensitive, align 1, !tbaa !198
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @pta_obstack) #28
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @oldpta_obstack) #28
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @predbitmap_obstack) #28
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 30) #28
  store ptr %6, ptr @constraint_pool, align 8, !tbaa !187
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.44, i64 noundef 72, i64 noundef 30) #28
  store ptr %7, ptr @variable_info_pool, align 8, !tbaa !187
  %8 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #28
  store ptr %8, ptr @constraints, align 8, !tbaa !187
  %9 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #28
  store ptr %9, ptr @varmap, align 8, !tbaa !187
  %10 = tail call ptr @pointer_map_create() #28
  store ptr %10, ptr @vi_for_tree, align 8, !tbaa !187
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @stats, i8 0, i64 32, i1 false)
  %11 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @shared_bitmap_hash, ptr noundef nonnull @shared_bitmap_eq, ptr noundef nonnull @free) #28
  store ptr %11, ptr @shared_bitmap_table, align 8, !tbaa !187
  %12 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.45)
  %13 = load i32, ptr %12, align 8, !tbaa !372
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15, !prof !272

15:                                               ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5153, ptr noundef nonnull @.str.4) #28
  br label %16

16:                                               ; preds = %15, %0
  %17 = getelementptr inbounds %struct.variable_info, ptr %12, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 4
  %20 = getelementptr inbounds %struct.variable_info, ptr %12, i64 0, i32 3
  store i64 0, ptr %20, align 8, !tbaa !349
  %21 = getelementptr inbounds %struct.variable_info, ptr %12, i64 0, i32 4
  %22 = or i8 %18, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 -1, i64 16, i1 false)
  store i8 %22, ptr %17, align 4
  %23 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.46)
  %24 = load i32, ptr %23, align 8, !tbaa !372
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %27, label %26, !prof !272

26:                                               ; preds = %16
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5163, ptr noundef nonnull @.str.4) #28
  br label %27

27:                                               ; preds = %26, %16
  %28 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = or i8 %29, 1
  store i8 %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 4
  store i64 -1, ptr %31, align 8, !tbaa !350
  %32 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 2
  %33 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 0, i64 16, i1 false)
  store i64 -1, ptr %33, align 8, !tbaa !353
  %34 = or i8 %29, 3
  store i8 %34, ptr %28, align 4
  %35 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %36 = tail call ptr @pool_alloc(ptr noundef %35) #28
  store i64 4294967296, ptr %36, align 8, !tbaa.struct !373
  %37 = getelementptr inbounds i8, ptr %36, i64 8
  store i64 0, ptr %37, align 8, !tbaa.struct !374
  %38 = getelementptr inbounds %struct.constraint, ptr %36, i64 0, i32 1
  store i64 4294967298, ptr %38, align 8, !tbaa.struct !373
  %39 = getelementptr inbounds %struct.constraint, ptr %36, i64 0, i32 1, i32 2
  store i64 0, ptr %39, align 8, !tbaa.struct !374
  %40 = load ptr, ptr @constraints, align 8, !tbaa !187
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42, !prof !325

42:                                               ; preds = %27
  %43 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %40, i64 0, i32 1
  %44 = load i32, ptr %43, align 4, !tbaa !375
  %45 = load i32, ptr %40, align 8, !tbaa !216
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49, !prof !325

47:                                               ; preds = %42, %27
  %48 = tail call ptr @vec_heap_p_reserve(ptr noundef %40, i32 noundef 1) #28
  store ptr %48, ptr @constraints, align 8, !tbaa !187
  br label %49

49:                                               ; preds = %47, %42
  %50 = load ptr, ptr @constraints, align 8, !tbaa !187
  %51 = load i32, ptr %50, align 8, !tbaa !216
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 8, !tbaa !216
  %53 = zext i32 %51 to i64
  %54 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %50, i64 0, i32 2, i64 %53
  store ptr %36, ptr %54, align 8, !tbaa !187
  %55 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.47)
  %56 = load i32, ptr %55, align 8, !tbaa !372
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %59, label %58, !prof !272

58:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5189, ptr noundef nonnull @.str.4) #28
  br label %59

59:                                               ; preds = %58, %49
  %60 = getelementptr inbounds %struct.variable_info, ptr %55, i64 0, i32 1
  %61 = load i8, ptr %60, align 4
  %62 = or i8 %61, 1
  store i8 %62, ptr %60, align 4
  %63 = getelementptr inbounds %struct.variable_info, ptr %55, i64 0, i32 3
  store i64 0, ptr %63, align 8, !tbaa !349
  %64 = getelementptr inbounds %struct.variable_info, ptr %55, i64 0, i32 4
  %65 = getelementptr inbounds %struct.variable_info, ptr %55, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %64, i8 -1, i64 16, i1 false)
  store ptr null, ptr %65, align 8, !tbaa !354
  %66 = or i8 %61, 3
  store i8 %66, ptr %60, align 4
  %67 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %68 = tail call ptr @pool_alloc(ptr noundef %67) #28
  store i64 8589934592, ptr %68, align 8, !tbaa.struct !373
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  store i64 0, ptr %69, align 8, !tbaa.struct !374
  %70 = getelementptr inbounds %struct.constraint, ptr %68, i64 0, i32 1
  store i64 8589934594, ptr %70, align 8, !tbaa.struct !373
  %71 = getelementptr inbounds %struct.constraint, ptr %68, i64 0, i32 1, i32 2
  store i64 0, ptr %71, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %68)
  %72 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.48)
  %73 = load i32, ptr %72, align 8, !tbaa !372
  %74 = icmp eq i32 %73, 3
  br i1 %74, label %76, label %75, !prof !272

75:                                               ; preds = %59
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5212, ptr noundef nonnull @.str.4) #28
  br label %76

76:                                               ; preds = %75, %59
  %77 = getelementptr inbounds %struct.variable_info, ptr %72, i64 0, i32 1
  %78 = load i8, ptr %77, align 4
  %79 = or i8 %78, 1
  store i8 %79, ptr %77, align 4
  %80 = getelementptr inbounds %struct.variable_info, ptr %72, i64 0, i32 3
  store i64 0, ptr %80, align 8, !tbaa !349
  %81 = getelementptr inbounds %struct.variable_info, ptr %72, i64 0, i32 4
  %82 = and i8 %79, -3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %81, i8 -1, i64 16, i1 false)
  store i8 %82, ptr %77, align 4
  %83 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.49)
  %84 = load i32, ptr %83, align 8, !tbaa !372
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %87, label %86, !prof !272

86:                                               ; preds = %76
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5222, ptr noundef nonnull @.str.4) #28
  br label %87

87:                                               ; preds = %86, %76
  %88 = getelementptr inbounds %struct.variable_info, ptr %83, i64 0, i32 1
  %89 = load i8, ptr %88, align 4
  %90 = or i8 %89, 1
  store i8 %90, ptr %88, align 4
  %91 = getelementptr inbounds %struct.variable_info, ptr %83, i64 0, i32 3
  store i64 0, ptr %91, align 8, !tbaa !349
  %92 = getelementptr inbounds %struct.variable_info, ptr %83, i64 0, i32 4
  %93 = or i8 %89, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 -1, i64 16, i1 false)
  store i8 %93, ptr %88, align 4
  %94 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %95 = tail call ptr @pool_alloc(ptr noundef %94) #28
  store i64 12884901888, ptr %95, align 8, !tbaa.struct !373
  %96 = getelementptr inbounds i8, ptr %95, i64 8
  store i64 0, ptr %96, align 8, !tbaa.struct !374
  %97 = getelementptr inbounds %struct.constraint, ptr %95, i64 0, i32 1
  store i64 12884901889, ptr %97, align 8, !tbaa.struct !373
  %98 = getelementptr inbounds %struct.constraint, ptr %95, i64 0, i32 1, i32 2
  store i64 0, ptr %98, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %95)
  %99 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %100 = tail call ptr @pool_alloc(ptr noundef %99) #28
  store i64 12884901888, ptr %100, align 8, !tbaa.struct !373
  %101 = getelementptr inbounds i8, ptr %100, i64 8
  store i64 0, ptr %101, align 8, !tbaa.struct !374
  %102 = getelementptr inbounds %struct.constraint, ptr %100, i64 0, i32 1
  store i64 12884901888, ptr %102, align 8, !tbaa.struct !373
  %103 = getelementptr inbounds %struct.constraint, ptr %100, i64 0, i32 1, i32 2
  store i64 -9223372036854775808, ptr %103, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %100)
  %104 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %105 = tail call ptr @pool_alloc(ptr noundef %104) #28
  store i64 12884901889, ptr %105, align 8, !tbaa.struct !373
  %106 = getelementptr inbounds i8, ptr %105, i64 8
  store i64 0, ptr %106, align 8, !tbaa.struct !374
  %107 = getelementptr inbounds %struct.constraint, ptr %105, i64 0, i32 1
  store i64 17179869184, ptr %107, align 8, !tbaa.struct !373
  %108 = getelementptr inbounds %struct.constraint, ptr %105, i64 0, i32 1, i32 2
  store i64 0, ptr %108, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %105)
  %109 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %110 = tail call ptr @pool_alloc(ptr noundef %109) #28
  store i64 17179869184, ptr %110, align 8, !tbaa.struct !373
  %111 = getelementptr inbounds i8, ptr %110, i64 8
  store i64 0, ptr %111, align 8, !tbaa.struct !374
  %112 = getelementptr inbounds %struct.constraint, ptr %110, i64 0, i32 1
  store i64 17179869186, ptr %112, align 8, !tbaa.struct !373
  %113 = getelementptr inbounds %struct.constraint, ptr %110, i64 0, i32 1, i32 2
  store i64 0, ptr %113, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %110)
  %114 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %115 = tail call ptr @pool_alloc(ptr noundef %114) #28
  store i64 17179869184, ptr %115, align 8, !tbaa.struct !373
  %116 = getelementptr inbounds i8, ptr %115, i64 8
  store i64 0, ptr %116, align 8, !tbaa.struct !374
  %117 = getelementptr inbounds %struct.constraint, ptr %115, i64 0, i32 1
  store i64 12884901890, ptr %117, align 8, !tbaa.struct !373
  %118 = getelementptr inbounds %struct.constraint, ptr %115, i64 0, i32 1, i32 2
  store i64 0, ptr %118, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %115)
  %119 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.50)
  %120 = load i32, ptr %119, align 8, !tbaa !372
  %121 = icmp eq i32 %120, 5
  br i1 %121, label %123, label %122, !prof !272

122:                                              ; preds = %87
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5276, ptr noundef nonnull @.str.4) #28
  br label %123

123:                                              ; preds = %122, %87
  %124 = getelementptr inbounds %struct.variable_info, ptr %119, i64 0, i32 1
  %125 = load i8, ptr %124, align 4
  %126 = or i8 %125, 1
  store i8 %126, ptr %124, align 4
  %127 = getelementptr inbounds %struct.variable_info, ptr %119, i64 0, i32 3
  store i64 0, ptr %127, align 8, !tbaa !349
  %128 = getelementptr inbounds %struct.variable_info, ptr %119, i64 0, i32 4
  %129 = and i8 %126, -3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, i8 -1, i64 16, i1 false)
  store i8 %129, ptr %124, align 4
  %130 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %131 = tail call ptr @pool_alloc(ptr noundef %130) #28
  store i64 21474836480, ptr %131, align 8, !tbaa.struct !373
  %132 = getelementptr inbounds i8, ptr %131, i64 8
  store i64 0, ptr %132, align 8, !tbaa.struct !374
  %133 = getelementptr inbounds %struct.constraint, ptr %131, i64 0, i32 1
  store i64 21474836481, ptr %133, align 8, !tbaa.struct !373
  %134 = getelementptr inbounds %struct.constraint, ptr %131, i64 0, i32 1, i32 2
  store i64 0, ptr %134, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %131)
  %135 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %136 = tail call ptr @pool_alloc(ptr noundef %135) #28
  store i64 21474836480, ptr %136, align 8, !tbaa.struct !373
  %137 = getelementptr inbounds i8, ptr %136, i64 8
  store i64 0, ptr %137, align 8, !tbaa.struct !374
  %138 = getelementptr inbounds %struct.constraint, ptr %136, i64 0, i32 1
  store i64 21474836480, ptr %138, align 8, !tbaa.struct !373
  %139 = getelementptr inbounds %struct.constraint, ptr %136, i64 0, i32 1, i32 2
  store i64 -9223372036854775808, ptr %139, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %136)
  %140 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.51)
  %141 = load i32, ptr %140, align 8, !tbaa !372
  %142 = icmp eq i32 %141, 6
  br i1 %142, label %144, label %143, !prof !272

143:                                              ; preds = %123
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5305, ptr noundef nonnull @.str.4) #28
  br label %144

144:                                              ; preds = %143, %123
  %145 = getelementptr inbounds %struct.variable_info, ptr %140, i64 0, i32 1
  %146 = load i8, ptr %145, align 4
  %147 = or i8 %146, 1
  store i8 %147, ptr %145, align 4
  %148 = getelementptr inbounds %struct.variable_info, ptr %140, i64 0, i32 3
  store i64 0, ptr %148, align 8, !tbaa !349
  %149 = getelementptr inbounds %struct.variable_info, ptr %140, i64 0, i32 4
  %150 = and i8 %147, -3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %149, i8 -1, i64 16, i1 false)
  store i8 %150, ptr %145, align 4
  %151 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.52)
  %152 = load i32, ptr %151, align 8, !tbaa !372
  %153 = icmp eq i32 %152, 7
  br i1 %153, label %155, label %154, !prof !272

154:                                              ; preds = %144
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5315, ptr noundef nonnull @.str.4) #28
  br label %155

155:                                              ; preds = %144, %154
  %156 = getelementptr inbounds %struct.variable_info, ptr %151, i64 0, i32 1
  %157 = load i8, ptr %156, align 4
  %158 = or i8 %157, 1
  store i8 %158, ptr %156, align 4
  %159 = getelementptr inbounds %struct.variable_info, ptr %151, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %159, i8 -1, i64 16, i1 false)
  %160 = getelementptr inbounds %struct.variable_info, ptr %151, i64 0, i32 2
  %161 = or i8 %157, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %160, i8 0, i64 16, i1 false)
  store i8 %161, ptr %156, align 4
  %162 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %163 = tail call ptr @pool_alloc(ptr noundef %162) #28
  store i64 30064771072, ptr %163, align 8, !tbaa.struct !373
  %164 = getelementptr inbounds i8, ptr %163, i64 8
  store i64 0, ptr %164, align 8, !tbaa.struct !374
  %165 = getelementptr inbounds %struct.constraint, ptr %163, i64 0, i32 1
  store i64 4294967298, ptr %165, align 8, !tbaa.struct !373
  %166 = getelementptr inbounds %struct.constraint, ptr %163, i64 0, i32 1, i32 2
  store i64 0, ptr %166, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %163)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @intra_create_variable_infos() unnamed_addr #14 !prof !271 !PGOFuncName !376 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !187
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !198
  %4 = icmp eq ptr %3, null
  br i1 %4, label %132, label %5, !prof !280

5:                                                ; preds = %0, %128
  %6 = phi ptr [ %130, %128 ], [ %3, %0 ]
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  %9 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %8), !range !251
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %128, label %11, !prof !325

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 268435456
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %90, label %16, !prof !272

16:                                               ; preds = %11
  %17 = load i64, ptr %8, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %90 [
    i16 10, label %19
    i16 12, label %19
  ]

19:                                               ; preds = %16, %16
  %20 = getelementptr inbounds %struct.tree_type, ptr %8, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %90, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @heapvar_lookup(ptr noundef nonnull %6, i64 noundef 0)
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load ptr, ptr %7, align 8, !tbaa !198
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !198
  %31 = tail call ptr @create_tmp_var_raw(ptr noundef %30, ptr noundef nonnull @.str.55) #28
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = or i64 %33, 33554432
  store i64 %34, ptr %32, align 8
  tail call fastcc void @heapvar_insert(ptr noundef nonnull %6, i64 noundef 0, ptr noundef %31)
  %35 = load i64, ptr %31, align 8
  %36 = trunc i64 %35 to i16
  switch i16 %36, label %41 [
    i16 32, label %37
    i16 34, label %39
  ]

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.tree_var_decl, ptr %31, i64 0, i32 1
  br label %46

39:                                               ; preds = %27
  %40 = getelementptr inbounds %struct.tree_parm_decl, ptr %31, i64 0, i32 2
  br label %46

41:                                               ; preds = %27
  %42 = and i64 %35, 65535
  %43 = icmp eq i64 %42, 36
  %44 = getelementptr inbounds %struct.tree_result_decl, ptr %31, i64 0, i32 1
  %45 = select i1 %43, ptr %44, ptr null
  br label %46

46:                                               ; preds = %41, %39, %37
  %47 = phi ptr [ %38, %37 ], [ %40, %39 ], [ %45, %41 ]
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void @fancy_abort(ptr noundef nonnull @.str.57, i32 noundef 144, ptr noundef nonnull @.str.4) #28
  br label %50

50:                                               ; preds = %49, %46
  %51 = load ptr, ptr %47, align 8, !tbaa !187
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = tail call ptr @create_var_ann(ptr noundef nonnull %31) #28
  br label %55

55:                                               ; preds = %50, %53
  %56 = phi ptr [ %54, %53 ], [ %51, %50 ]
  %57 = load i8, ptr %56, align 8
  %58 = or i8 %57, 16
  store i8 %58, ptr %56, align 8
  br label %59

59:                                               ; preds = %55, %24
  %60 = phi ptr [ %31, %55 ], [ %25, %24 ]
  %61 = load ptr, ptr @cfun, align 8, !tbaa !187
  %62 = getelementptr inbounds %struct.function, ptr %61, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !248
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %63, align 8, !tbaa !377
  br label %67

67:                                               ; preds = %59, %65
  %68 = phi ptr [ %66, %65 ], [ null, %59 ]
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %60) #28
  br label %72

72:                                               ; preds = %70, %67
  %73 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6)
  %74 = load i32, ptr %73, align 8, !tbaa !372
  %75 = zext i32 %74 to i64
  %76 = shl nuw i64 %75, 32
  %77 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %60)
  %78 = load i32, ptr %77, align 8, !tbaa !372
  %79 = zext i32 %78 to i64
  %80 = shl nuw i64 %79, 32
  %81 = or disjoint i64 %80, 2
  %82 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %83 = tail call ptr @pool_alloc(ptr noundef %82) #28
  store i64 %76, ptr %83, align 8, !tbaa.struct !373
  %84 = getelementptr inbounds i8, ptr %83, i64 8
  store i64 0, ptr %84, align 8, !tbaa.struct !374
  %85 = getelementptr inbounds %struct.constraint, ptr %83, i64 0, i32 1
  store i64 %81, ptr %85, align 8, !tbaa.struct !373
  %86 = getelementptr inbounds %struct.constraint, ptr %83, i64 0, i32 1, i32 2
  store i64 0, ptr %86, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %83)
  %87 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 32
  store i8 %89, ptr %87, align 4
  br label %128

90:                                               ; preds = %19, %16, %11
  %91 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6)
  %92 = icmp eq ptr %91, null
  br i1 %92, label %112, label %93, !prof !280

93:                                               ; preds = %90, %108
  %94 = phi ptr [ %110, %108 ], [ %91, %90 ]
  %95 = getelementptr inbounds %struct.variable_info, ptr %94, i64 0, i32 1
  %96 = load i8, ptr %95, align 4
  %97 = and i8 %96, 64
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %108, label %99, !prof !325

99:                                               ; preds = %93
  %100 = load i32, ptr %94, align 8, !tbaa !372
  %101 = zext i32 %100 to i64
  %102 = shl nuw i64 %101, 32
  %103 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %104 = tail call ptr @pool_alloc(ptr noundef %103) #28
  store i64 %102, ptr %104, align 8, !tbaa.struct !373
  %105 = getelementptr inbounds i8, ptr %104, i64 8
  store i64 0, ptr %105, align 8, !tbaa.struct !374
  %106 = getelementptr inbounds %struct.constraint, ptr %104, i64 0, i32 1
  store i64 17179869186, ptr %106, align 8, !tbaa.struct !373
  %107 = getelementptr inbounds %struct.constraint, ptr %104, i64 0, i32 1, i32 2
  store i64 0, ptr %107, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %104)
  br label %108

108:                                              ; preds = %93, %99
  %109 = getelementptr inbounds %struct.variable_info, ptr %94, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !354
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %93, !prof !378, !llvm.loop !379

112:                                              ; preds = %108, %90
  %113 = load ptr, ptr %7, align 8, !tbaa !198
  %114 = load i64, ptr %113, align 8
  %115 = trunc i64 %114 to i16
  switch i16 %115, label %128 [
    i16 10, label %116
    i16 12, label %116
  ], !prof !380

116:                                              ; preds = %112, %112
  %117 = getelementptr inbounds %struct.tree_type, ptr %113, i64 0, i32 6
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 8192
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %128, label %121, !prof !272

121:                                              ; preds = %116
  %122 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6)
  %123 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %122, ptr noundef nonnull @.str.56)
  %124 = getelementptr inbounds %struct.variable_info, ptr %123, i64 0, i32 1
  %125 = load i8, ptr %124, align 4
  %126 = and i8 %125, 29
  %127 = or disjoint i8 %126, 34
  store i8 %127, ptr %124, align 4
  br label %128

128:                                              ; preds = %116, %121, %112, %5, %72
  %129 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !198
  %131 = icmp eq ptr %130, null
  br i1 %131, label %132, label %5, !prof !378, !llvm.loop !381

132:                                              ; preds = %128, %0
  %133 = load ptr, ptr @cfun, align 8, !tbaa !187
  %134 = getelementptr inbounds %struct.function, ptr %133, i64 0, i32 6
  %135 = load ptr, ptr %134, align 8, !tbaa !382
  %136 = getelementptr inbounds %struct.tree_decl_non_common, ptr %135, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8, !tbaa !198
  %138 = icmp eq ptr %137, null
  br i1 %138, label %160, label %139, !prof !325

139:                                              ; preds = %132
  %140 = getelementptr inbounds %struct.tree_decl_common, ptr %137, i64 0, i32 2
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 268435456
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %160, label %144, !prof !272

144:                                              ; preds = %139
  %145 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %137)
  %146 = icmp eq ptr %145, null
  br i1 %146, label %160, label %147

147:                                              ; preds = %144, %147
  %148 = phi ptr [ %158, %147 ], [ %145, %144 ]
  %149 = load i32, ptr %148, align 8, !tbaa !372
  %150 = zext i32 %149 to i64
  %151 = shl nuw i64 %150, 32
  %152 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %153 = tail call ptr @pool_alloc(ptr noundef %152) #28
  store i64 %151, ptr %153, align 8, !tbaa.struct !373
  %154 = getelementptr inbounds i8, ptr %153, i64 8
  store i64 0, ptr %154, align 8, !tbaa.struct !374
  %155 = getelementptr inbounds %struct.constraint, ptr %153, i64 0, i32 1
  store i64 17179869186, ptr %155, align 8, !tbaa.struct !373
  %156 = getelementptr inbounds %struct.constraint, ptr %153, i64 0, i32 1, i32 2
  store i64 0, ptr %156, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %153)
  %157 = getelementptr inbounds %struct.variable_info, ptr %148, i64 0, i32 2
  %158 = load ptr, ptr %157, align 8, !tbaa !354
  %159 = icmp eq ptr %158, null
  br i1 %159, label %160, label %147, !llvm.loop !383

160:                                              ; preds = %147, %144, %139, %132
  %161 = load ptr, ptr @cfun, align 8, !tbaa !187
  %162 = getelementptr inbounds %struct.function, ptr %161, i64 0, i32 7
  %163 = load ptr, ptr %162, align 8, !tbaa !384
  %164 = icmp eq ptr %163, null
  br i1 %164, label %181, label %165, !prof !272

165:                                              ; preds = %160
  %166 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %163)
  %167 = icmp eq ptr %166, null
  br i1 %167, label %181, label %168

168:                                              ; preds = %165, %168
  %169 = phi ptr [ %179, %168 ], [ %166, %165 ]
  %170 = load i32, ptr %169, align 8, !tbaa !372
  %171 = zext i32 %170 to i64
  %172 = shl nuw i64 %171, 32
  %173 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %174 = tail call ptr @pool_alloc(ptr noundef %173) #28
  store i64 %172, ptr %174, align 8, !tbaa.struct !373
  %175 = getelementptr inbounds i8, ptr %174, i64 8
  store i64 0, ptr %175, align 8, !tbaa.struct !374
  %176 = getelementptr inbounds %struct.constraint, ptr %174, i64 0, i32 1
  store i64 17179869186, ptr %176, align 8, !tbaa.struct !373
  %177 = getelementptr inbounds %struct.constraint, ptr %174, i64 0, i32 1, i32 2
  store i64 0, ptr %177, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %174)
  %178 = getelementptr inbounds %struct.variable_info, ptr %169, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !354
  %180 = icmp eq ptr %179, null
  br i1 %180, label %181, label %168, !llvm.loop !385

181:                                              ; preds = %168, %165, %160
  ret void
}

declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #19

declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @find_func_aliases(ptr noundef %0) unnamed_addr #17 !prof !386 !PGOFuncName !387 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #28
  store ptr null, ptr %14, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #28
  store ptr null, ptr %15, align 8, !tbaa !187
  %21 = load i32, ptr %0, align 8
  %22 = and i32 %21, 255
  %23 = trunc i32 %21 to i8
  switch i8 %23, label %1673 [
    i8 16, label %24
    i8 8, label %124
    i8 6, label %1196
  ], !prof !388

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !198
  %27 = getelementptr inbounds %struct.tree_common, ptr %26, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !198
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 65535
  %31 = add nsw i64 %30, -15
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %34, !prof !389

33:                                               ; preds = %24
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3630, ptr noundef nonnull @.str.4) #28
  br label %34

34:                                               ; preds = %24, %33
  %35 = load ptr, ptr %25, align 8, !tbaa !198
  %36 = getelementptr inbounds %struct.tree_common, ptr %35, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %37), !range !251
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %2019, label %40, !prof !390

40:                                               ; preds = %34
  %41 = load ptr, ptr %14, align 8, !tbaa !187
  %42 = icmp eq ptr %41, null
  br i1 %42, label %47, label %43, !prof !391

43:                                               ; preds = %40
  %44 = load i32, ptr %41, align 8, !tbaa !392
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !394

46:                                               ; preds = %43
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #28
  br label %47

47:                                               ; preds = %40, %43, %46
  call fastcc void @get_constraint_for_1(ptr noundef %35, ptr noundef nonnull %14, i8 noundef zeroext 0)
  %48 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !198
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %2019, label %51, !prof !395

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  br label %53

53:                                               ; preds = %51, %119
  %54 = phi i64 [ 0, %51 ], [ %120, %119 ]
  %55 = trunc i64 %54 to i32
  %56 = load i32, ptr %52, align 8, !tbaa !198
  %57 = icmp ult i32 %56, %55
  br i1 %57, label %58, label %59, !prof !396

58:                                               ; preds = %53
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 3103, ptr noundef nonnull @.str.4) #28
  br label %59

59:                                               ; preds = %53, %58
  %60 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %54, i32 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !397
  %62 = load ptr, ptr %61, align 8, !tbaa !187
  %63 = call ptr @tree_strip_nop_conversions(ptr noundef %62) #28
  %64 = load i32, ptr %52, align 8, !tbaa !198
  %65 = icmp ult i32 %64, %55
  br i1 %65, label %66, label %67, !prof !396

66:                                               ; preds = %59
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 3103, ptr noundef nonnull @.str.4) #28
  br label %67

67:                                               ; preds = %59, %66
  %68 = load ptr, ptr %60, align 8, !tbaa !397
  %69 = load ptr, ptr %68, align 8, !tbaa !187
  %70 = load ptr, ptr %15, align 8, !tbaa !187
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72, !prof !391

72:                                               ; preds = %67
  %73 = load i32, ptr %70, align 8, !tbaa !392
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %76, label %75, !prof !394

75:                                               ; preds = %72
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #28
  br label %76

76:                                               ; preds = %67, %72, %75
  call fastcc void @get_constraint_for_1(ptr noundef %69, ptr noundef nonnull %15, i8 noundef zeroext 0)
  br label %77

77:                                               ; preds = %117, %76
  %78 = phi i32 [ 0, %76 ], [ %118, %117 ]
  %79 = load ptr, ptr %14, align 8
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81, !prof !399

81:                                               ; preds = %77
  %82 = load i32, ptr %79, align 8, !tbaa !392
  %83 = icmp ugt i32 %82, %78
  br i1 %83, label %84, label %87, !prof !400

84:                                               ; preds = %81
  %85 = zext i32 %78 to i64
  %86 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %79, i64 0, i32 2, i64 %85
  br label %87

87:                                               ; preds = %77, %81, %84
  %88 = phi ptr [ %86, %84 ], [ null, %81 ], [ null, %77 ]
  %89 = phi i1 [ false, %84 ], [ true, %81 ], [ true, %77 ]
  br i1 %89, label %119, label %90, !prof !400

90:                                               ; preds = %87, %98
  %91 = load ptr, ptr %15, align 8
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93, !prof !399

93:                                               ; preds = %90
  %94 = load i32, ptr %91, align 8, !tbaa !392
  br label %95

95:                                               ; preds = %90, %93
  %96 = phi i32 [ %94, %93 ], [ 0, %90 ]
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %117, label %98, !prof !400

98:                                               ; preds = %95
  %99 = getelementptr inbounds { i64, i64 }, ptr %88, i64 0, i32 1
  %100 = load i32, ptr %91, align 8, !tbaa !392
  %101 = add i32 %100, -1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %91, i64 0, i32 2, i64 %102
  %104 = load i64, ptr %88, align 8
  %105 = load i64, ptr %99, align 8
  %106 = load i64, ptr %103, align 8
  %107 = getelementptr inbounds { i64, i64 }, ptr %103, i64 0, i32 1
  %108 = load i64, ptr %107, align 8
  %109 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %110 = call ptr @pool_alloc(ptr noundef %109) #28
  store i64 %104, ptr %110, align 8, !tbaa.struct !373
  %111 = getelementptr inbounds i8, ptr %110, i64 8
  store i64 %105, ptr %111, align 8, !tbaa.struct !374
  %112 = getelementptr inbounds %struct.constraint, ptr %110, i64 0, i32 1
  store i64 %106, ptr %112, align 8, !tbaa.struct !373
  %113 = getelementptr inbounds %struct.constraint, ptr %110, i64 0, i32 1, i32 2
  store i64 %108, ptr %113, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %110)
  %114 = load ptr, ptr %15, align 8
  %115 = load i32, ptr %114, align 8, !tbaa !392
  %116 = add i32 %115, -1
  store i32 %116, ptr %114, align 8, !tbaa !392
  br label %90, !llvm.loop !401

117:                                              ; preds = %95
  %118 = add i32 %78, 1
  br label %77, !llvm.loop !402

119:                                              ; preds = %87
  %120 = add nuw nsw i64 %54, 1
  %121 = load i32, ptr %48, align 4, !tbaa !198
  %122 = zext i32 %121 to i64
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %53, label %2019, !prof !403, !llvm.loop !404

124:                                              ; preds = %1
  %125 = zext nneg i32 %22 to i64
  %126 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !202
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !231
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %133, !prof !405

132:                                              ; preds = %124
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %133

133:                                              ; preds = %132, %124
  %134 = getelementptr inbounds i8, ptr %0, i64 %130
  %135 = getelementptr inbounds ptr, ptr %134, i64 1
  %136 = load ptr, ptr %135, align 8, !tbaa !187
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, 65535
  %139 = icmp eq i64 %138, 121
  br i1 %139, label %140, label %143, !prof !406

140:                                              ; preds = %133
  %141 = getelementptr inbounds %struct.tree_exp, ptr %136, i64 0, i32 3
  %142 = load ptr, ptr %141, align 8, !tbaa !198
  br label %143

143:                                              ; preds = %133, %140
  %144 = phi ptr [ %142, %140 ], [ null, %133 ]
  %145 = icmp eq ptr %144, null
  br i1 %145, label %350, label %146, !prof !405

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.tree_function_decl, ptr %144, i64 0, i32 5
  %148 = load i32, ptr %147, align 8
  %149 = and i32 %148, 6144
  %150 = icmp eq i32 %149, 6144
  br i1 %150, label %151, label %350, !prof !405

151:                                              ; preds = %146
  %152 = and i32 %148, 2047
  switch i32 %152, label %350 [
    i32 341, label %153
    i32 349, label %153
    i32 325, label %153
    i32 330, label %153
    i32 331, label %153
    i32 332, label %153
    i32 335, label %153
    i32 336, label %153
    i32 338, label %153
    i32 347, label %153
    i32 333, label %246
    i32 220, label %2028
    i32 221, label %2028
    i32 222, label %2028
    i32 78, label %2028
    i32 79, label %2028
    i32 80, label %2028
    i32 84, label %2028
    i32 85, label %2028
    i32 86, label %2028
    i32 123, label %2028
    i32 124, label %2028
    i32 125, label %2028
    i32 159, label %2028
    i32 160, label %2028
    i32 161, label %2028
    i32 192, label %2028
    i32 193, label %2028
    i32 194, label %2028
    i32 455, label %2028
  ]

153:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151
  %154 = load i32, ptr %0, align 8
  %155 = and i32 %154, 255
  %156 = add nsw i32 %155, -10
  %157 = icmp ult i32 %156, -9
  br i1 %157, label %170, label %158

158:                                              ; preds = %153
  %159 = zext nneg i32 %155 to i64
  %160 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !202
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %162
  %164 = load i64, ptr %163, align 8, !tbaa !231
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %167

167:                                              ; preds = %166, %158
  %168 = getelementptr inbounds i8, ptr %0, i64 %164
  %169 = load ptr, ptr %168, align 8, !tbaa !187
  br label %170

170:                                              ; preds = %153, %167
  %171 = phi ptr [ %169, %167 ], [ null, %153 ]
  %172 = load i32, ptr %147, align 8
  %173 = and i32 %172, 2047
  %174 = icmp eq i32 %173, 325
  %175 = select i1 %174, i64 4, i64 3
  %176 = load i32, ptr %0, align 8
  %177 = and i32 %176, 255
  %178 = add nsw i32 %177, -10
  %179 = icmp ult i32 %178, -9
  br i1 %179, label %193, label %180

180:                                              ; preds = %170
  %181 = zext nneg i32 %177 to i64
  %182 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !202
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %184
  %186 = load i64, ptr %185, align 8, !tbaa !231
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %180
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %189

189:                                              ; preds = %188, %180
  %190 = getelementptr inbounds i8, ptr %0, i64 %186
  %191 = getelementptr inbounds ptr, ptr %190, i64 %175
  %192 = load ptr, ptr %191, align 8, !tbaa !187
  br label %193

193:                                              ; preds = %170, %189
  %194 = phi ptr [ %192, %189 ], [ null, %170 ]
  %195 = load i32, ptr %147, align 8
  %196 = and i32 %195, 2047
  %197 = icmp eq i32 %196, 325
  %198 = select i1 %197, i64 3, i64 4
  %199 = load i32, ptr %0, align 8
  %200 = and i32 %199, 255
  %201 = add nsw i32 %200, -10
  %202 = icmp ult i32 %201, -9
  br i1 %202, label %216, label %203

203:                                              ; preds = %193
  %204 = zext nneg i32 %200 to i64
  %205 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %204
  %206 = load i32, ptr %205, align 4, !tbaa !202
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %207
  %209 = load i64, ptr %208, align 8, !tbaa !231
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %203
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %212

212:                                              ; preds = %211, %203
  %213 = getelementptr inbounds i8, ptr %0, i64 %209
  %214 = getelementptr inbounds ptr, ptr %213, i64 %198
  %215 = load ptr, ptr %214, align 8, !tbaa !187
  br label %216

216:                                              ; preds = %193, %212
  %217 = phi ptr [ %215, %212 ], [ null, %193 ]
  %218 = icmp eq ptr %171, null
  br i1 %218, label %235, label %219

219:                                              ; preds = %216
  call fastcc void @get_constraint_for(ptr noundef nonnull %171, ptr noundef nonnull %14)
  %220 = load i32, ptr %147, align 8
  %221 = and i32 %220, 2047
  switch i32 %221, label %223 [
    i32 332, label %222
    i32 335, label %222
    i32 336, label %222
  ]

222:                                              ; preds = %219, %219, %219
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %194, ptr noundef null, ptr noundef nonnull %15)
  br label %224

223:                                              ; preds = %219
  call fastcc void @get_constraint_for(ptr noundef %194, ptr noundef nonnull %15)
  br label %224

224:                                              ; preds = %223, %222
  %225 = load ptr, ptr %14, align 8, !tbaa !187
  %226 = load ptr, ptr %15, align 8, !tbaa !187
  call fastcc void @process_all_all_constraints(ptr noundef %225, ptr noundef %226)
  %227 = load ptr, ptr %14, align 8, !tbaa !187
  %228 = icmp eq ptr %227, null
  br i1 %228, label %230, label %229

229:                                              ; preds = %224
  call void @free(ptr noundef %227)
  br label %230

230:                                              ; preds = %224, %229
  store ptr null, ptr %14, align 8, !tbaa !187
  %231 = load ptr, ptr %15, align 8, !tbaa !187
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  call void @free(ptr noundef %231)
  br label %234

234:                                              ; preds = %230, %233
  store ptr null, ptr %15, align 8, !tbaa !187
  br label %235

235:                                              ; preds = %234, %216
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %194, ptr noundef null, ptr noundef nonnull %14)
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %217, ptr noundef null, ptr noundef nonnull %15)
  call fastcc void @do_deref(ptr noundef nonnull %14)
  call fastcc void @do_deref(ptr noundef nonnull %15)
  %236 = load ptr, ptr %14, align 8, !tbaa !187
  %237 = load ptr, ptr %15, align 8, !tbaa !187
  call fastcc void @process_all_all_constraints(ptr noundef %236, ptr noundef %237)
  %238 = load ptr, ptr %14, align 8, !tbaa !187
  %239 = icmp eq ptr %238, null
  br i1 %239, label %241, label %240

240:                                              ; preds = %235
  call void @free(ptr noundef %238)
  br label %241

241:                                              ; preds = %235, %240
  store ptr null, ptr %14, align 8, !tbaa !187
  %242 = load ptr, ptr %15, align 8, !tbaa !187
  %243 = icmp eq ptr %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %241
  call void @free(ptr noundef %242)
  br label %245

245:                                              ; preds = %241, %244
  store ptr null, ptr %15, align 8, !tbaa !187
  br label %2028

246:                                              ; preds = %151
  %247 = load i32, ptr %0, align 8
  %248 = and i32 %247, 255
  %249 = add nsw i32 %248, -10
  %250 = icmp ult i32 %249, -9
  br i1 %250, label %263, label %251

251:                                              ; preds = %246
  %252 = zext nneg i32 %248 to i64
  %253 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %252
  %254 = load i32, ptr %253, align 4, !tbaa !202
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !231
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %251
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %260

260:                                              ; preds = %259, %251
  %261 = getelementptr inbounds i8, ptr %0, i64 %257
  %262 = load ptr, ptr %261, align 8, !tbaa !187
  br label %263

263:                                              ; preds = %246, %260
  %264 = phi ptr [ %262, %260 ], [ null, %246 ]
  %265 = load i32, ptr %0, align 8
  %266 = and i32 %265, 255
  %267 = add nsw i32 %266, -10
  %268 = icmp ult i32 %267, -9
  br i1 %268, label %282, label %269

269:                                              ; preds = %263
  %270 = zext nneg i32 %266 to i64
  %271 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !202
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %273
  %275 = load i64, ptr %274, align 8, !tbaa !231
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %269
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %278

278:                                              ; preds = %277, %269
  %279 = getelementptr inbounds i8, ptr %0, i64 %275
  %280 = getelementptr inbounds ptr, ptr %279, i64 3
  %281 = load ptr, ptr %280, align 8, !tbaa !187
  br label %282

282:                                              ; preds = %263, %278
  %283 = phi ptr [ %281, %278 ], [ null, %263 ]
  %284 = icmp eq ptr %264, null
  br i1 %284, label %296, label %285

285:                                              ; preds = %282
  call fastcc void @get_constraint_for(ptr noundef nonnull %264, ptr noundef nonnull %14)
  call fastcc void @get_constraint_for(ptr noundef %283, ptr noundef nonnull %15)
  %286 = load ptr, ptr %14, align 8, !tbaa !187
  %287 = load ptr, ptr %15, align 8, !tbaa !187
  call fastcc void @process_all_all_constraints(ptr noundef %286, ptr noundef %287)
  %288 = load ptr, ptr %14, align 8, !tbaa !187
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void @free(ptr noundef %288)
  br label %291

291:                                              ; preds = %285, %290
  store ptr null, ptr %14, align 8, !tbaa !187
  %292 = load ptr, ptr %15, align 8, !tbaa !187
  %293 = icmp eq ptr %292, null
  br i1 %293, label %295, label %294

294:                                              ; preds = %291
  call void @free(ptr noundef %292)
  br label %295

295:                                              ; preds = %291, %294
  store ptr null, ptr %15, align 8, !tbaa !187
  br label %296

296:                                              ; preds = %295, %282
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %283, ptr noundef null, ptr noundef nonnull %14)
  call fastcc void @do_deref(ptr noundef nonnull %14)
  %297 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !202
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %321, label %299

299:                                              ; preds = %296
  %300 = load i32, ptr %0, align 8
  %301 = and i32 %300, 255
  %302 = add nsw i32 %301, -10
  %303 = icmp ult i32 %302, -9
  br i1 %303, label %317, label %304

304:                                              ; preds = %299
  %305 = zext nneg i32 %301 to i64
  %306 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !202
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %308
  %310 = load i64, ptr %309, align 8, !tbaa !231
  %311 = icmp eq i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %304
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %313

313:                                              ; preds = %312, %304
  %314 = getelementptr inbounds i8, ptr %0, i64 %310
  %315 = getelementptr inbounds ptr, ptr %314, i64 4
  %316 = load ptr, ptr %315, align 8, !tbaa !187
  br label %317

317:                                              ; preds = %299, %313
  %318 = phi ptr [ %316, %313 ], [ null, %299 ]
  %319 = call i32 @integer_zerop(ptr noundef %318) #28
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %317, %296
  br label %322

322:                                              ; preds = %317, %321
  %323 = phi i64 [ 30064771072, %321 ], [ 2, %317 ]
  br label %324

324:                                              ; preds = %337, %322
  %325 = phi i32 [ 0, %322 ], [ %346, %337 ]
  %326 = load ptr, ptr %14, align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %334, label %328

328:                                              ; preds = %324
  %329 = load i32, ptr %326, align 8, !tbaa !392
  %330 = icmp ugt i32 %329, %325
  br i1 %330, label %331, label %334

331:                                              ; preds = %328
  %332 = zext i32 %325 to i64
  %333 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %326, i64 0, i32 2, i64 %332
  br label %334

334:                                              ; preds = %324, %328, %331
  %335 = phi ptr [ %333, %331 ], [ null, %328 ], [ null, %324 ]
  %336 = phi i1 [ false, %331 ], [ true, %328 ], [ true, %324 ]
  br i1 %336, label %347, label %337

337:                                              ; preds = %334
  %338 = load i64, ptr %335, align 8
  %339 = getelementptr inbounds { i64, i64 }, ptr %335, i64 0, i32 1
  %340 = load i64, ptr %339, align 8
  %341 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %342 = call ptr @pool_alloc(ptr noundef %341) #28
  store i64 %338, ptr %342, align 8, !tbaa.struct !373
  %343 = getelementptr inbounds i8, ptr %342, i64 8
  store i64 %340, ptr %343, align 8, !tbaa.struct !374
  %344 = getelementptr inbounds %struct.constraint, ptr %342, i64 0, i32 1
  store i64 %323, ptr %344, align 8, !tbaa.struct !373
  %345 = getelementptr inbounds %struct.constraint, ptr %342, i64 0, i32 1, i32 2
  store i64 0, ptr %345, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %342)
  %346 = add i32 %325, 1
  br label %324, !llvm.loop !407

347:                                              ; preds = %334
  br i1 %327, label %349, label %348

348:                                              ; preds = %347
  call void @free(ptr noundef %326)
  br label %349

349:                                              ; preds = %347, %348
  store ptr null, ptr %14, align 8, !tbaa !187
  br label %2028

350:                                              ; preds = %151, %146, %143
  %351 = load i1, ptr @in_ipa_mode, align 4
  br i1 %351, label %352, label %362, !prof !405

352:                                              ; preds = %350
  br i1 %145, label %1004, label %353

353:                                              ; preds = %352
  %354 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %355 = tail call ptr @pointer_map_contains(ptr noundef %354, ptr noundef nonnull %144) #28
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %353
  %358 = load ptr, ptr %355, align 8, !tbaa !187
  br label %359

359:                                              ; preds = %353, %357
  %360 = phi ptr [ %358, %357 ], [ null, %353 ]
  %361 = icmp eq ptr %360, null
  br i1 %361, label %362, label %1004

362:                                              ; preds = %359, %350
  %363 = tail call i32 @gimple_call_flags(ptr noundef %0) #28
  %364 = and i32 %363, 513
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %544, label %366, !prof !406

366:                                              ; preds = %362
  %367 = load i32, ptr %0, align 8
  %368 = and i32 %367, 255
  %369 = add nsw i32 %368, -10
  %370 = icmp ult i32 %369, -9
  br i1 %370, label %383, label %371

371:                                              ; preds = %366
  %372 = zext nneg i32 %368 to i64
  %373 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %372
  %374 = load i32, ptr %373, align 4, !tbaa !202
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !231
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %371
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %380

380:                                              ; preds = %379, %371
  %381 = getelementptr inbounds i8, ptr %0, i64 %377
  %382 = load ptr, ptr %381, align 8, !tbaa !187
  br label %383

383:                                              ; preds = %366, %380
  %384 = phi ptr [ %382, %380 ], [ null, %366 ]
  %385 = icmp eq ptr %384, null
  br i1 %385, label %867, label %386

386:                                              ; preds = %383
  %387 = load i32, ptr %0, align 8
  %388 = and i32 %387, 255
  %389 = add nsw i32 %388, -1
  %390 = icmp ult i32 %389, 9
  tail call void @llvm.assume(i1 %390)
  %391 = zext nneg i32 %388 to i64
  %392 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %391
  %393 = load i32, ptr %392, align 4, !tbaa !202
  %394 = zext i32 %393 to i64
  %395 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %394
  %396 = load i64, ptr %395, align 8, !tbaa !231
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %386
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %399

399:                                              ; preds = %398, %386
  %400 = getelementptr inbounds i8, ptr %0, i64 %396
  %401 = load ptr, ptr %400, align 8, !tbaa !187
  %402 = getelementptr inbounds %struct.tree_common, ptr %401, i64 0, i32 2
  %403 = load ptr, ptr %402, align 8, !tbaa !198
  %404 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %403), !range !251
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %867, label %406

406:                                              ; preds = %399
  %407 = load i32, ptr %0, align 8
  %408 = and i32 %407, 255
  %409 = add nsw i32 %408, -10
  %410 = icmp ult i32 %409, -9
  br i1 %410, label %424, label %411

411:                                              ; preds = %406
  %412 = zext nneg i32 %408 to i64
  %413 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %412
  %414 = load i32, ptr %413, align 4, !tbaa !202
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !231
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %411
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %420

420:                                              ; preds = %419, %411
  %421 = getelementptr inbounds i8, ptr %0, i64 %417
  %422 = getelementptr inbounds ptr, ptr %421, i64 2
  %423 = load ptr, ptr %422, align 8, !tbaa !187
  br label %424

424:                                              ; preds = %420, %406
  %425 = phi ptr [ %423, %420 ], [ null, %406 ]
  %426 = icmp eq ptr %425, null
  br i1 %426, label %454, label %427

427:                                              ; preds = %424
  %428 = load i32, ptr %0, align 8
  %429 = and i32 %428, 255
  %430 = add nsw i32 %429, -10
  %431 = icmp ult i32 %430, -9
  br i1 %431, label %445, label %432

432:                                              ; preds = %427
  %433 = zext nneg i32 %429 to i64
  %434 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %433
  %435 = load i32, ptr %434, align 4, !tbaa !202
  %436 = zext i32 %435 to i64
  %437 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %436
  %438 = load i64, ptr %437, align 8, !tbaa !231
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %432
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %441

441:                                              ; preds = %440, %432
  %442 = getelementptr inbounds i8, ptr %0, i64 %438
  %443 = getelementptr inbounds ptr, ptr %442, i64 2
  %444 = load ptr, ptr %443, align 8, !tbaa !187
  br label %445

445:                                              ; preds = %441, %427
  %446 = phi ptr [ %444, %441 ], [ null, %427 ]
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %446)
  %447 = tail call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  %448 = load i32, ptr %447, align 8, !tbaa !392
  %449 = add i32 %448, 1
  store i32 %449, ptr %447, align 8, !tbaa !392
  %450 = zext i32 %448 to i64
  %451 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %447, i64 0, i32 2, i64 %450
  store i32 0, ptr %451, align 8, !tbaa.struct !373
  %452 = getelementptr inbounds i8, ptr %451, i64 4
  store i32 5, ptr %452, align 4, !tbaa.struct !408
  %453 = getelementptr inbounds i8, ptr %451, i64 8
  store i64 0, ptr %453, align 8, !tbaa.struct !374
  br label %454

454:                                              ; preds = %445, %424
  %455 = phi ptr [ null, %424 ], [ %447, %445 ]
  %456 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %457 = load i32, ptr %456, align 4, !tbaa !198
  %458 = icmp eq i32 %457, 3
  br i1 %458, label %528, label %459

459:                                              ; preds = %454, %521
  %460 = phi i64 [ %523, %521 ], [ 0, %454 ]
  %461 = phi ptr [ %522, %521 ], [ %455, %454 ]
  %462 = add nuw i64 %460, 3
  %463 = load i32, ptr %0, align 8
  %464 = and i32 %463, 255
  %465 = add nsw i32 %464, -1
  %466 = icmp ult i32 %465, 9
  call void @llvm.assume(i1 %466)
  %467 = zext nneg i32 %464 to i64
  %468 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %467
  %469 = load i32, ptr %468, align 4, !tbaa !202
  %470 = zext i32 %469 to i64
  %471 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %470
  %472 = load i64, ptr %471, align 8, !tbaa !231
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %475

474:                                              ; preds = %459
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %475

475:                                              ; preds = %474, %459
  %476 = getelementptr inbounds i8, ptr %0, i64 %472
  %477 = and i64 %462, 4294967295
  %478 = getelementptr inbounds ptr, ptr %476, i64 %477
  %479 = load ptr, ptr %478, align 8, !tbaa !187
  %480 = getelementptr inbounds %struct.tree_common, ptr %479, i64 0, i32 2
  %481 = load ptr, ptr %480, align 8, !tbaa !198
  %482 = call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %481), !range !251
  %483 = icmp eq i8 %482, 0
  br i1 %483, label %521, label %484

484:                                              ; preds = %475
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #28
  store ptr null, ptr %13, align 8, !tbaa !187
  call fastcc void @get_constraint_for(ptr noundef %479, ptr noundef nonnull %13)
  br label %485

485:                                              ; preds = %516, %484
  %486 = phi ptr [ %461, %484 ], [ %509, %516 ]
  %487 = phi i32 [ 0, %484 ], [ %517, %516 ]
  %488 = load ptr, ptr %13, align 8
  %489 = icmp eq ptr %488, null
  br i1 %489, label %496, label %490

490:                                              ; preds = %485
  %491 = load i32, ptr %488, align 8, !tbaa !392
  %492 = icmp ugt i32 %491, %487
  br i1 %492, label %493, label %496

493:                                              ; preds = %490
  %494 = zext i32 %487 to i64
  %495 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %488, i64 0, i32 2, i64 %494
  br label %496

496:                                              ; preds = %493, %490, %485
  %497 = phi ptr [ %495, %493 ], [ null, %490 ], [ null, %485 ]
  %498 = phi i1 [ false, %493 ], [ true, %490 ], [ true, %485 ]
  br i1 %498, label %518, label %499

499:                                              ; preds = %496
  %500 = icmp eq ptr %486, null
  br i1 %500, label %506, label %501

501:                                              ; preds = %499
  %502 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %486, i64 0, i32 1
  %503 = load i32, ptr %502, align 4, !tbaa !409
  %504 = load i32, ptr %486, align 8, !tbaa !392
  %505 = icmp eq i32 %503, %504
  br i1 %505, label %506, label %508

506:                                              ; preds = %501, %499
  %507 = call ptr @vec_heap_o_reserve(ptr noundef %486, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  br label %508

508:                                              ; preds = %506, %501
  %509 = phi ptr [ %507, %506 ], [ %486, %501 ]
  %510 = load i32, ptr %509, align 8, !tbaa !392
  %511 = add i32 %510, 1
  store i32 %511, ptr %509, align 8, !tbaa !392
  %512 = icmp eq ptr %497, null
  br i1 %512, label %516, label %513

513:                                              ; preds = %508
  %514 = zext i32 %510 to i64
  %515 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %509, i64 0, i32 2, i64 %514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %515, ptr noundef nonnull align 8 dereferenceable(16) %497, i64 16, i1 false), !tbaa.struct !373
  br label %516

516:                                              ; preds = %513, %508
  %517 = add i32 %487, 1
  br label %485, !llvm.loop !410

518:                                              ; preds = %496
  br i1 %489, label %520, label %519

519:                                              ; preds = %518
  call void @free(ptr noundef %488)
  br label %520

520:                                              ; preds = %519, %518
  store ptr null, ptr %13, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #28
  br label %521

521:                                              ; preds = %520, %475
  %522 = phi ptr [ %461, %475 ], [ %486, %520 ]
  %523 = add nuw nsw i64 %460, 1
  %524 = load i32, ptr %456, align 4, !tbaa !198
  %525 = add i32 %524, -3
  %526 = zext i32 %525 to i64
  %527 = icmp ult i64 %523, %526
  br i1 %527, label %459, label %528, !llvm.loop !411

528:                                              ; preds = %521, %454
  %529 = phi ptr [ %455, %454 ], [ %522, %521 ]
  %530 = icmp eq ptr %529, null
  br i1 %530, label %536, label %531

531:                                              ; preds = %528
  %532 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %529, i64 0, i32 1
  %533 = load i32, ptr %532, align 4, !tbaa !409
  %534 = load i32, ptr %529, align 8, !tbaa !392
  %535 = icmp eq i32 %533, %534
  br i1 %535, label %536, label %538

536:                                              ; preds = %531, %528
  %537 = call ptr @vec_heap_o_reserve(ptr noundef %529, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  br label %538

538:                                              ; preds = %531, %536
  %539 = phi ptr [ %537, %536 ], [ %529, %531 ]
  %540 = load i32, ptr %539, align 8, !tbaa !392
  %541 = add i32 %540, 1
  store i32 %541, ptr %539, align 8, !tbaa !392
  %542 = zext i32 %540 to i64
  %543 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %539, i64 0, i32 2, i64 %542
  store i32 2, ptr %543, align 8, !tbaa.struct !373
  br label %862

544:                                              ; preds = %362
  %545 = and i32 %363, 6
  %546 = icmp eq i32 %545, 0
  %547 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %548 = load i32, ptr %547, align 4, !tbaa !198
  %549 = icmp eq i32 %548, 3
  br i1 %546, label %651, label %550, !prof !406

550:                                              ; preds = %544
  br i1 %549, label %584, label %551

551:                                              ; preds = %550, %577
  %552 = phi i64 [ %579, %577 ], [ 0, %550 ]
  %553 = phi i8 [ %578, %577 ], [ 0, %550 ]
  %554 = add nuw i64 %552, 3
  %555 = load i32, ptr %0, align 8
  %556 = and i32 %555, 255
  %557 = add nsw i32 %556, -1
  %558 = icmp ult i32 %557, 9
  tail call void @llvm.assume(i1 %558)
  %559 = zext nneg i32 %556 to i64
  %560 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %559
  %561 = load i32, ptr %560, align 4, !tbaa !202
  %562 = zext i32 %561 to i64
  %563 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %562
  %564 = load i64, ptr %563, align 8, !tbaa !231
  %565 = icmp eq i64 %564, 0
  br i1 %565, label %566, label %567

566:                                              ; preds = %551
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %567

567:                                              ; preds = %566, %551
  %568 = getelementptr inbounds i8, ptr %0, i64 %564
  %569 = and i64 %554, 4294967295
  %570 = getelementptr inbounds ptr, ptr %568, i64 %569
  %571 = load ptr, ptr %570, align 8, !tbaa !187
  %572 = getelementptr inbounds %struct.tree_common, ptr %571, i64 0, i32 2
  %573 = load ptr, ptr %572, align 8, !tbaa !198
  %574 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %573), !range !251
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %577, label %576

576:                                              ; preds = %567
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %571)
  br label %577

577:                                              ; preds = %576, %567
  %578 = phi i8 [ 1, %576 ], [ %553, %567 ]
  %579 = add nuw nsw i64 %552, 1
  %580 = load i32, ptr %547, align 4, !tbaa !198
  %581 = add i32 %580, -3
  %582 = zext i32 %581 to i64
  %583 = icmp ult i64 %579, %582
  br i1 %583, label %551, label %584, !llvm.loop !412

584:                                              ; preds = %577, %550
  %585 = phi i8 [ 0, %550 ], [ %578, %577 ]
  %586 = load i32, ptr %0, align 8
  %587 = and i32 %586, 255
  %588 = add nsw i32 %587, -10
  %589 = icmp ult i32 %588, -9
  br i1 %589, label %624, label %590

590:                                              ; preds = %584
  %591 = zext nneg i32 %587 to i64
  %592 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %591
  %593 = load i32, ptr %592, align 4, !tbaa !202
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %594
  %596 = load i64, ptr %595, align 8, !tbaa !231
  %597 = icmp eq i64 %596, 0
  br i1 %597, label %598, label %599

598:                                              ; preds = %590
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %599

599:                                              ; preds = %598, %590
  %600 = getelementptr inbounds i8, ptr %0, i64 %596
  %601 = getelementptr inbounds ptr, ptr %600, i64 2
  %602 = load ptr, ptr %601, align 8, !tbaa !187
  %603 = icmp eq ptr %602, null
  br i1 %603, label %624, label %604

604:                                              ; preds = %599
  %605 = load i32, ptr %0, align 8
  %606 = and i32 %605, 255
  %607 = add nsw i32 %606, -10
  %608 = icmp ult i32 %607, -9
  br i1 %608, label %622, label %609

609:                                              ; preds = %604
  %610 = zext nneg i32 %606 to i64
  %611 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %610
  %612 = load i32, ptr %611, align 4, !tbaa !202
  %613 = zext i32 %612 to i64
  %614 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %613
  %615 = load i64, ptr %614, align 8, !tbaa !231
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %609
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %618

618:                                              ; preds = %617, %609
  %619 = getelementptr inbounds i8, ptr %0, i64 %615
  %620 = getelementptr inbounds ptr, ptr %619, i64 2
  %621 = load ptr, ptr %620, align 8, !tbaa !187
  br label %622

622:                                              ; preds = %618, %604
  %623 = phi ptr [ %621, %618 ], [ null, %604 ]
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %623)
  br label %624

624:                                              ; preds = %584, %622, %599
  %625 = phi i8 [ 1, %622 ], [ %585, %599 ], [ %585, %584 ]
  %626 = icmp eq i8 %625, 0
  br i1 %626, label %635, label %627

627:                                              ; preds = %624
  %628 = tail call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  %629 = load i32, ptr %628, align 8, !tbaa !392
  %630 = add i32 %629, 1
  store i32 %630, ptr %628, align 8, !tbaa !392
  %631 = zext i32 %629 to i64
  %632 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %628, i64 0, i32 2, i64 %631
  store i32 0, ptr %632, align 8, !tbaa.struct !373
  %633 = getelementptr inbounds i8, ptr %632, i64 4
  store i32 5, ptr %633, align 4, !tbaa.struct !408
  %634 = getelementptr inbounds i8, ptr %632, i64 8
  store i64 0, ptr %634, align 8, !tbaa.struct !374
  br label %635

635:                                              ; preds = %627, %624
  %636 = phi ptr [ null, %624 ], [ %628, %627 ]
  %637 = icmp eq ptr %636, null
  br i1 %637, label %643, label %638

638:                                              ; preds = %635
  %639 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %636, i64 0, i32 1
  %640 = load i32, ptr %639, align 4, !tbaa !409
  %641 = load i32, ptr %636, align 8, !tbaa !392
  %642 = icmp eq i32 %640, %641
  br i1 %642, label %643, label %645

643:                                              ; preds = %638, %635
  %644 = tail call ptr @vec_heap_o_reserve(ptr noundef %636, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  br label %645

645:                                              ; preds = %638, %643
  %646 = phi ptr [ %644, %643 ], [ %636, %638 ]
  %647 = load i32, ptr %646, align 8, !tbaa !392
  %648 = add i32 %647, 1
  store i32 %648, ptr %646, align 8, !tbaa !392
  %649 = zext i32 %647 to i64
  %650 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %646, i64 0, i32 2, i64 %649
  store i32 0, ptr %650, align 8, !tbaa.struct !373
  br label %862

651:                                              ; preds = %544
  br i1 %549, label %712, label %652, !prof !413

652:                                              ; preds = %651, %706
  %653 = phi i64 [ %707, %706 ], [ 0, %651 ]
  %654 = add nuw nsw i64 %653, 3
  %655 = load i32, ptr %0, align 8
  %656 = and i32 %655, 255
  %657 = add nsw i32 %656, -10
  %658 = icmp ult i32 %657, -9
  br i1 %658, label %673, label %659, !prof !414

659:                                              ; preds = %652
  %660 = zext nneg i32 %656 to i64
  %661 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %660
  %662 = load i32, ptr %661, align 4, !tbaa !202
  %663 = zext i32 %662 to i64
  %664 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %663
  %665 = load i64, ptr %664, align 8, !tbaa !231
  %666 = icmp eq i64 %665, 0
  br i1 %666, label %667, label %668, !prof !414

667:                                              ; preds = %659
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %668

668:                                              ; preds = %667, %659
  %669 = getelementptr inbounds i8, ptr %0, i64 %665
  %670 = and i64 %654, 4294967295
  %671 = getelementptr inbounds ptr, ptr %669, i64 %670
  %672 = load ptr, ptr %671, align 8, !tbaa !187
  br label %673

673:                                              ; preds = %668, %652
  %674 = phi ptr [ %672, %668 ], [ null, %652 ]
  %675 = getelementptr inbounds %struct.tree_common, ptr %674, i64 0, i32 2
  %676 = load ptr, ptr %675, align 8, !tbaa !198
  %677 = call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %676), !range !251
  %678 = icmp eq i8 %677, 0
  br i1 %678, label %706, label %679, !prof !415

679:                                              ; preds = %673
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !187
  call fastcc void @get_constraint_for_1(ptr noundef %674, ptr noundef nonnull %2, i8 noundef zeroext 0)
  br label %680

680:                                              ; preds = %693, %679
  %681 = phi i32 [ 0, %679 ], [ %702, %693 ]
  %682 = load ptr, ptr %2, align 8
  %683 = icmp eq ptr %682, null
  br i1 %683, label %690, label %684, !prof !416

684:                                              ; preds = %680
  %685 = load i32, ptr %682, align 8, !tbaa !392
  %686 = icmp ugt i32 %685, %681
  br i1 %686, label %687, label %690, !prof !417

687:                                              ; preds = %684
  %688 = zext i32 %681 to i64
  %689 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %682, i64 0, i32 2, i64 %688
  br label %690

690:                                              ; preds = %687, %684, %680
  %691 = phi ptr [ %689, %687 ], [ null, %684 ], [ null, %680 ]
  %692 = phi i1 [ false, %687 ], [ true, %684 ], [ true, %680 ]
  br i1 %692, label %703, label %693, !prof !417

693:                                              ; preds = %690
  %694 = load i64, ptr %691, align 8
  %695 = getelementptr inbounds { i64, i64 }, ptr %691, i64 0, i32 1
  %696 = load i64, ptr %695, align 8
  %697 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %698 = call ptr @pool_alloc(ptr noundef %697) #28
  store i64 12884901888, ptr %698, align 8, !tbaa.struct !373
  %699 = getelementptr inbounds i8, ptr %698, i64 8
  store i64 0, ptr %699, align 8, !tbaa.struct !374
  %700 = getelementptr inbounds %struct.constraint, ptr %698, i64 0, i32 1
  store i64 %694, ptr %700, align 8, !tbaa.struct !373
  %701 = getelementptr inbounds %struct.constraint, ptr %698, i64 0, i32 1, i32 2
  store i64 %696, ptr %701, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %698)
  %702 = add i32 %681, 1
  br label %680, !llvm.loop !418

703:                                              ; preds = %690
  br i1 %683, label %705, label %704, !prof !419

704:                                              ; preds = %703
  call void @free(ptr noundef %682)
  br label %705

705:                                              ; preds = %704, %703
  store ptr null, ptr %2, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %706

706:                                              ; preds = %705, %673
  %707 = add nuw nsw i64 %653, 1
  %708 = load i32, ptr %547, align 4, !tbaa !198
  %709 = add i32 %708, -3
  %710 = zext i32 %709 to i64
  %711 = icmp ult i64 %707, %710
  br i1 %711, label %652, label %712, !prof !420, !llvm.loop !421

712:                                              ; preds = %706, %651
  %713 = load i32, ptr %0, align 8
  %714 = and i32 %713, 255
  %715 = add nsw i32 %714, -10
  %716 = icmp ult i32 %715, -9
  br i1 %716, label %751, label %717, !prof !405

717:                                              ; preds = %712
  %718 = zext nneg i32 %714 to i64
  %719 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %718
  %720 = load i32, ptr %719, align 4, !tbaa !202
  %721 = zext i32 %720 to i64
  %722 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %721
  %723 = load i64, ptr %722, align 8, !tbaa !231
  %724 = icmp eq i64 %723, 0
  br i1 %724, label %725, label %726, !prof !405

725:                                              ; preds = %717
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %726

726:                                              ; preds = %725, %717
  %727 = getelementptr inbounds i8, ptr %0, i64 %723
  %728 = getelementptr inbounds ptr, ptr %727, i64 2
  %729 = load ptr, ptr %728, align 8, !tbaa !187
  %730 = icmp eq ptr %729, null
  br i1 %730, label %751, label %731, !prof !406

731:                                              ; preds = %726
  %732 = load i32, ptr %0, align 8
  %733 = and i32 %732, 255
  %734 = add nsw i32 %733, -10
  %735 = icmp ult i32 %734, -9
  br i1 %735, label %749, label %736

736:                                              ; preds = %731
  %737 = zext nneg i32 %733 to i64
  %738 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %737
  %739 = load i32, ptr %738, align 4, !tbaa !202
  %740 = zext i32 %739 to i64
  %741 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %740
  %742 = load i64, ptr %741, align 8, !tbaa !231
  %743 = icmp eq i64 %742, 0
  br i1 %743, label %744, label %745

744:                                              ; preds = %736
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %745

745:                                              ; preds = %744, %736
  %746 = getelementptr inbounds i8, ptr %0, i64 %742
  %747 = getelementptr inbounds ptr, ptr %746, i64 2
  %748 = load ptr, ptr %747, align 8, !tbaa !187
  br label %749

749:                                              ; preds = %745, %731
  %750 = phi ptr [ %748, %745 ], [ null, %731 ]
  call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %750)
  br label %751

751:                                              ; preds = %749, %726, %712
  %752 = load i32, ptr %0, align 8
  %753 = and i32 %752, 262144
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %856, label %755, !prof !406

755:                                              ; preds = %751
  %756 = and i32 %752, 255
  %757 = add nsw i32 %756, -10
  %758 = icmp ult i32 %757, -9
  br i1 %758, label %856, label %759

759:                                              ; preds = %755
  %760 = zext nneg i32 %756 to i64
  %761 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %760
  %762 = load i32, ptr %761, align 4, !tbaa !202
  %763 = zext i32 %762 to i64
  %764 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %763
  %765 = load i64, ptr %764, align 8, !tbaa !231
  %766 = icmp eq i64 %765, 0
  br i1 %766, label %767, label %768

767:                                              ; preds = %759
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %768

768:                                              ; preds = %767, %759
  %769 = getelementptr inbounds i8, ptr %0, i64 %765
  %770 = load ptr, ptr %769, align 8, !tbaa !187
  %771 = icmp eq ptr %770, null
  br i1 %771, label %856, label %772

772:                                              ; preds = %768
  %773 = load i32, ptr %0, align 8
  %774 = and i32 %773, 255
  %775 = add nsw i32 %774, -1
  %776 = icmp ult i32 %775, 9
  call void @llvm.assume(i1 %776)
  %777 = zext nneg i32 %774 to i64
  %778 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %777
  %779 = load i32, ptr %778, align 4, !tbaa !202
  %780 = zext i32 %779 to i64
  %781 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %780
  %782 = load i64, ptr %781, align 8, !tbaa !231
  %783 = icmp eq i64 %782, 0
  br i1 %783, label %784, label %785

784:                                              ; preds = %772
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %785

785:                                              ; preds = %784, %772
  %786 = getelementptr inbounds i8, ptr %0, i64 %782
  %787 = load ptr, ptr %786, align 8, !tbaa !187
  %788 = getelementptr inbounds %struct.tree_common, ptr %787, i64 0, i32 2
  %789 = load ptr, ptr %788, align 8, !tbaa !198
  %790 = load i64, ptr %789, align 8
  %791 = and i64 %790, 262144
  %792 = icmp eq i64 %791, 0
  br i1 %792, label %856, label %793

793:                                              ; preds = %785
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !187
  %794 = load i32, ptr %0, align 8
  %795 = and i32 %794, 255
  %796 = add nsw i32 %795, -10
  %797 = icmp ult i32 %796, -9
  br i1 %797, label %810, label %798

798:                                              ; preds = %793
  %799 = zext nneg i32 %795 to i64
  %800 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %799
  %801 = load i32, ptr %800, align 4, !tbaa !202
  %802 = zext i32 %801 to i64
  %803 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %802
  %804 = load i64, ptr %803, align 8, !tbaa !231
  %805 = icmp eq i64 %804, 0
  br i1 %805, label %806, label %807

806:                                              ; preds = %798
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %807

807:                                              ; preds = %806, %798
  %808 = getelementptr inbounds i8, ptr %0, i64 %804
  %809 = load ptr, ptr %808, align 8, !tbaa !187
  br label %810

810:                                              ; preds = %807, %793
  %811 = phi ptr [ %809, %807 ], [ null, %793 ]
  call fastcc void @get_constraint_for_1(ptr noundef %811, ptr noundef nonnull %3, i8 noundef zeroext 1)
  %812 = load ptr, ptr %3, align 8, !tbaa !187
  %813 = icmp eq ptr %812, null
  br label %814

814:                                              ; preds = %825, %810
  %815 = phi i32 [ 0, %810 ], [ %829, %825 ]
  br i1 %813, label %822, label %816

816:                                              ; preds = %814
  %817 = load i32, ptr %812, align 8, !tbaa !392
  %818 = icmp ugt i32 %817, %815
  br i1 %818, label %819, label %822

819:                                              ; preds = %816
  %820 = zext i32 %815 to i64
  %821 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %812, i64 0, i32 2, i64 %820
  br label %822

822:                                              ; preds = %819, %816, %814
  %823 = phi ptr [ %821, %819 ], [ null, %816 ], [ null, %814 ]
  %824 = phi i1 [ false, %819 ], [ true, %816 ], [ true, %814 ]
  br i1 %824, label %830, label %825

825:                                              ; preds = %822
  %826 = load i32, ptr %823, align 8, !tbaa !422
  %827 = icmp eq i32 %826, 1
  %828 = select i1 %827, i32 0, i32 2
  store i32 %828, ptr %823, align 8, !tbaa !422
  %829 = add i32 %815, 1
  br label %814, !llvm.loop !423

830:                                              ; preds = %822, %843
  %831 = phi i32 [ %852, %843 ], [ 0, %822 ]
  %832 = load ptr, ptr %3, align 8
  %833 = icmp eq ptr %832, null
  br i1 %833, label %840, label %834

834:                                              ; preds = %830
  %835 = load i32, ptr %832, align 8, !tbaa !392
  %836 = icmp ugt i32 %835, %831
  br i1 %836, label %837, label %840

837:                                              ; preds = %834
  %838 = zext i32 %831 to i64
  %839 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %832, i64 0, i32 2, i64 %838
  br label %840

840:                                              ; preds = %837, %834, %830
  %841 = phi ptr [ %839, %837 ], [ null, %834 ], [ null, %830 ]
  %842 = phi i1 [ false, %837 ], [ true, %834 ], [ true, %830 ]
  br i1 %842, label %853, label %843

843:                                              ; preds = %840
  %844 = load i64, ptr %841, align 8
  %845 = getelementptr inbounds { i64, i64 }, ptr %841, i64 0, i32 1
  %846 = load i64, ptr %845, align 8
  %847 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %848 = call ptr @pool_alloc(ptr noundef %847) #28
  store i64 12884901888, ptr %848, align 8, !tbaa.struct !373
  %849 = getelementptr inbounds i8, ptr %848, i64 8
  store i64 0, ptr %849, align 8, !tbaa.struct !374
  %850 = getelementptr inbounds %struct.constraint, ptr %848, i64 0, i32 1
  store i64 %844, ptr %850, align 8, !tbaa.struct !373
  %851 = getelementptr inbounds %struct.constraint, ptr %848, i64 0, i32 1, i32 2
  store i64 %846, ptr %851, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %848)
  %852 = add i32 %831, 1
  br label %830, !llvm.loop !424

853:                                              ; preds = %840
  br i1 %833, label %855, label %854

854:                                              ; preds = %853
  call void @free(ptr noundef %832)
  br label %855

855:                                              ; preds = %854, %853
  store ptr null, ptr %3, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  br label %856

856:                                              ; preds = %751, %755, %768, %785, %855
  %857 = call ptr @vec_heap_o_reserve(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  %858 = load i32, ptr %857, align 8, !tbaa !392
  %859 = add i32 %858, 1
  store i32 %859, ptr %857, align 8, !tbaa !392
  %860 = zext i32 %858 to i64
  %861 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %857, i64 0, i32 2, i64 %860
  store i32 0, ptr %861, align 8, !tbaa.struct !373
  br label %862

862:                                              ; preds = %538, %856, %645
  %863 = phi ptr [ %650, %645 ], [ %861, %856 ], [ %543, %538 ]
  %864 = phi ptr [ %646, %645 ], [ %857, %856 ], [ %539, %538 ]
  %865 = getelementptr inbounds i8, ptr %863, i64 4
  store i32 4, ptr %865, align 4
  %866 = getelementptr inbounds i8, ptr %863, i64 8
  store i64 0, ptr %866, align 8
  br label %867

867:                                              ; preds = %862, %383, %399
  %868 = phi ptr [ null, %383 ], [ null, %399 ], [ %864, %862 ]
  %869 = load i32, ptr %0, align 8
  %870 = and i32 %869, 255
  %871 = add nsw i32 %870, -10
  %872 = icmp ult i32 %871, -9
  br i1 %872, label %885, label %873, !prof !405

873:                                              ; preds = %867
  %874 = zext nneg i32 %870 to i64
  %875 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %874
  %876 = load i32, ptr %875, align 4, !tbaa !202
  %877 = zext i32 %876 to i64
  %878 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %877
  %879 = load i64, ptr %878, align 8, !tbaa !231
  %880 = icmp eq i64 %879, 0
  br i1 %880, label %881, label %882, !prof !405

881:                                              ; preds = %873
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %882

882:                                              ; preds = %881, %873
  %883 = getelementptr inbounds i8, ptr %0, i64 %879
  %884 = load ptr, ptr %883, align 8, !tbaa !187
  br label %885

885:                                              ; preds = %867, %882
  %886 = phi ptr [ %884, %882 ], [ null, %867 ]
  %887 = icmp eq ptr %886, null
  br i1 %887, label %1001, label %888, !prof !425

888:                                              ; preds = %885
  %889 = load i32, ptr %0, align 8
  %890 = and i32 %889, 255
  %891 = add nsw i32 %890, -1
  %892 = icmp ult i32 %891, 9
  call void @llvm.assume(i1 %892)
  %893 = zext nneg i32 %890 to i64
  %894 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %893
  %895 = load i32, ptr %894, align 4, !tbaa !202
  %896 = zext i32 %895 to i64
  %897 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %896
  %898 = load i64, ptr %897, align 8, !tbaa !231
  %899 = icmp eq i64 %898, 0
  br i1 %899, label %900, label %901, !prof !426

900:                                              ; preds = %888
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %901

901:                                              ; preds = %900, %888
  %902 = getelementptr inbounds i8, ptr %0, i64 %898
  %903 = load ptr, ptr %902, align 8, !tbaa !187
  %904 = getelementptr inbounds %struct.tree_common, ptr %903, i64 0, i32 2
  %905 = load ptr, ptr %904, align 8, !tbaa !198
  %906 = call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %905), !range !251
  %907 = icmp eq i8 %906, 0
  br i1 %907, label %1001, label %908, !prof !427

908:                                              ; preds = %901
  %909 = load i32, ptr %0, align 8
  %910 = and i32 %909, 255
  %911 = add nsw i32 %910, -10
  %912 = icmp ult i32 %911, -9
  br i1 %912, label %925, label %913

913:                                              ; preds = %908
  %914 = zext nneg i32 %910 to i64
  %915 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %914
  %916 = load i32, ptr %915, align 4, !tbaa !202
  %917 = zext i32 %916 to i64
  %918 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %917
  %919 = load i64, ptr %918, align 8, !tbaa !231
  %920 = icmp eq i64 %919, 0
  br i1 %920, label %921, label %922

921:                                              ; preds = %913
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %922

922:                                              ; preds = %921, %913
  %923 = getelementptr inbounds i8, ptr %0, i64 %919
  %924 = load ptr, ptr %923, align 8, !tbaa !187
  br label %925

925:                                              ; preds = %908, %922
  %926 = phi ptr [ %924, %922 ], [ null, %908 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #28
  store ptr null, ptr %12, align 8, !tbaa !187
  call fastcc void @get_constraint_for(ptr noundef %926, ptr noundef nonnull %12)
  %927 = and i32 %363, 16
  %928 = icmp eq i32 %927, 0
  br i1 %928, label %954, label %929

929:                                              ; preds = %925
  %930 = call fastcc ptr @get_vi_for_tree(ptr noundef %926)
  %931 = call fastcc ptr @make_constraint_from_heapvar(ptr noundef %930, ptr noundef nonnull @.str.68)
  %932 = getelementptr inbounds %struct.variable_info, ptr %931, i64 0, i32 7
  %933 = load ptr, ptr %932, align 8, !tbaa !308
  %934 = getelementptr inbounds %struct.tree_decl_common, ptr %933, i64 0, i32 2
  %935 = load i64, ptr %934, align 8
  %936 = and i64 %935, -33554433
  store i64 %936, ptr %934, align 8
  %937 = getelementptr inbounds %struct.variable_info, ptr %931, i64 0, i32 1
  %938 = load i8, ptr %937, align 4
  %939 = and i8 %938, 127
  store i8 %939, ptr %937, align 4
  br i1 %145, label %945, label %940

940:                                              ; preds = %929
  %941 = getelementptr inbounds %struct.tree_function_decl, ptr %144, i64 0, i32 5
  %942 = load i32, ptr %941, align 8
  %943 = and i32 %942, 6144
  %944 = icmp eq i32 %943, 6144
  br i1 %944, label %996, label %945

945:                                              ; preds = %940, %929
  %946 = load i32, ptr %931, align 8, !tbaa !372
  %947 = zext i32 %946 to i64
  %948 = shl nuw i64 %947, 32
  %949 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %950 = call ptr @pool_alloc(ptr noundef %949) #28
  store i64 %948, ptr %950, align 8, !tbaa.struct !373
  %951 = getelementptr inbounds i8, ptr %950, i64 8
  store i64 0, ptr %951, align 8, !tbaa.struct !374
  %952 = getelementptr inbounds %struct.constraint, ptr %950, i64 0, i32 1
  store i64 17179869186, ptr %952, align 8, !tbaa.struct !373
  %953 = getelementptr inbounds %struct.constraint, ptr %950, i64 0, i32 1, i32 2
  store i64 0, ptr %953, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %950)
  br label %996

954:                                              ; preds = %925
  %955 = icmp eq ptr %868, null
  br i1 %955, label %996, label %956

956:                                              ; preds = %954
  %957 = load i32, ptr %868, align 8, !tbaa !392
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %996, label %959

959:                                              ; preds = %956
  %960 = call ptr @get_base_address(ptr noundef %926) #28
  %961 = icmp eq ptr %960, null
  br i1 %961, label %994, label %962

962:                                              ; preds = %959
  %963 = load i64, ptr %960, align 8
  %964 = and i64 %963, 65535
  %965 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %964
  %966 = load i32, ptr %965, align 4, !tbaa !202
  %967 = icmp eq i32 %966, 3
  br i1 %967, label %968, label %994

968:                                              ; preds = %962
  %969 = and i64 %963, 67108864
  %970 = icmp eq i64 %969, 0
  br i1 %970, label %971, label %976

971:                                              ; preds = %968
  %972 = getelementptr inbounds %struct.tree_decl_common, ptr %960, i64 0, i32 2
  %973 = load i64, ptr %972, align 8
  %974 = and i64 %973, 33554432
  %975 = icmp eq i64 %974, 0
  br i1 %975, label %994, label %976

976:                                              ; preds = %968, %971
  %977 = load ptr, ptr %12, align 8, !tbaa !187
  %978 = icmp eq ptr %977, null
  br i1 %978, label %984, label %979

979:                                              ; preds = %976
  %980 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %977, i64 0, i32 1
  %981 = load i32, ptr %980, align 4, !tbaa !409
  %982 = load i32, ptr %977, align 8, !tbaa !392
  %983 = icmp eq i32 %981, %982
  br i1 %983, label %984, label %986

984:                                              ; preds = %979, %976
  %985 = call ptr @vec_heap_o_reserve(ptr noundef %977, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %985, ptr %12, align 8, !tbaa !187
  br label %986

986:                                              ; preds = %984, %979
  %987 = load ptr, ptr %12, align 8, !tbaa !187
  %988 = load i32, ptr %987, align 8, !tbaa !392
  %989 = add i32 %988, 1
  store i32 %989, ptr %987, align 8, !tbaa !392
  %990 = zext i32 %988 to i64
  %991 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %987, i64 0, i32 2, i64 %990
  store i32 0, ptr %991, align 8, !tbaa.struct !373
  %992 = getelementptr inbounds i8, ptr %991, i64 4
  store i32 3, ptr %992, align 4, !tbaa.struct !408
  %993 = getelementptr inbounds i8, ptr %991, i64 8
  store i64 0, ptr %993, align 8, !tbaa.struct !374
  br label %994

994:                                              ; preds = %986, %971, %962, %959
  %995 = load ptr, ptr %12, align 8, !tbaa !187
  call fastcc void @process_all_all_constraints(ptr noundef %995, ptr noundef nonnull %868)
  br label %996

996:                                              ; preds = %954, %994, %956, %945, %940
  %997 = load ptr, ptr %12, align 8, !tbaa !187
  %998 = icmp eq ptr %997, null
  br i1 %998, label %1000, label %999

999:                                              ; preds = %996
  call void @free(ptr noundef %997)
  br label %1000

1000:                                             ; preds = %996, %999
  store ptr null, ptr %12, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #28
  br label %1001

1001:                                             ; preds = %1000, %901, %885
  %1002 = icmp eq ptr %868, null
  br i1 %1002, label %2019, label %1003, !prof !405

1003:                                             ; preds = %1001
  call void @free(ptr noundef %868)
  br label %2019

1004:                                             ; preds = %359, %352
  %1005 = load i32, ptr %0, align 8
  %1006 = and i32 %1005, 255
  %1007 = add nsw i32 %1006, -10
  %1008 = icmp ult i32 %1007, -9
  br i1 %1008, label %1021, label %1009

1009:                                             ; preds = %1004
  %1010 = zext nneg i32 %1006 to i64
  %1011 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1010
  %1012 = load i32, ptr %1011, align 4, !tbaa !202
  %1013 = zext i32 %1012 to i64
  %1014 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1013
  %1015 = load i64, ptr %1014, align 8, !tbaa !231
  %1016 = icmp eq i64 %1015, 0
  br i1 %1016, label %1017, label %1018

1017:                                             ; preds = %1009
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1018

1018:                                             ; preds = %1017, %1009
  %1019 = getelementptr inbounds i8, ptr %0, i64 %1015
  %1020 = load ptr, ptr %1019, align 8, !tbaa !187
  br label %1021

1021:                                             ; preds = %1004, %1018
  %1022 = phi ptr [ %1020, %1018 ], [ null, %1004 ]
  %1023 = load i32, ptr %0, align 8
  %1024 = and i32 %1023, 255
  %1025 = add nsw i32 %1024, -10
  %1026 = icmp ult i32 %1025, -9
  br i1 %1026, label %1040, label %1027

1027:                                             ; preds = %1021
  %1028 = zext nneg i32 %1024 to i64
  %1029 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1028
  %1030 = load i32, ptr %1029, align 4, !tbaa !202
  %1031 = zext i32 %1030 to i64
  %1032 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1031
  %1033 = load i64, ptr %1032, align 8, !tbaa !231
  %1034 = icmp eq i64 %1033, 0
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1027
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1036

1036:                                             ; preds = %1035, %1027
  %1037 = getelementptr inbounds i8, ptr %0, i64 %1033
  %1038 = getelementptr inbounds ptr, ptr %1037, i64 1
  %1039 = load ptr, ptr %1038, align 8, !tbaa !187
  br label %1040

1040:                                             ; preds = %1036, %1021
  %1041 = phi ptr [ %1039, %1036 ], [ null, %1021 ]
  %1042 = load i64, ptr %1041, align 8
  %1043 = and i64 %1042, 65535
  %1044 = icmp eq i64 %1043, 121
  br i1 %1044, label %1045, label %1048

1045:                                             ; preds = %1040
  %1046 = getelementptr inbounds %struct.tree_exp, ptr %1041, i64 0, i32 3
  %1047 = load ptr, ptr %1046, align 8, !tbaa !198
  br label %1048

1048:                                             ; preds = %1040, %1045
  %1049 = phi ptr [ %1047, %1045 ], [ null, %1040 ]
  %1050 = icmp eq ptr %1049, null
  br i1 %1050, label %1053, label %1051

1051:                                             ; preds = %1048
  %1052 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %1049)
  br label %1074

1053:                                             ; preds = %1048
  %1054 = load i32, ptr %0, align 8
  %1055 = and i32 %1054, 255
  %1056 = add nsw i32 %1055, -10
  %1057 = icmp ult i32 %1056, -9
  br i1 %1057, label %1071, label %1058

1058:                                             ; preds = %1053
  %1059 = zext nneg i32 %1055 to i64
  %1060 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1059
  %1061 = load i32, ptr %1060, align 4, !tbaa !202
  %1062 = zext i32 %1061 to i64
  %1063 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1062
  %1064 = load i64, ptr %1063, align 8, !tbaa !231
  %1065 = icmp eq i64 %1064, 0
  br i1 %1065, label %1066, label %1067

1066:                                             ; preds = %1058
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1067

1067:                                             ; preds = %1066, %1058
  %1068 = getelementptr inbounds i8, ptr %0, i64 %1064
  %1069 = getelementptr inbounds ptr, ptr %1068, i64 1
  %1070 = load ptr, ptr %1069, align 8, !tbaa !187
  br label %1071

1071:                                             ; preds = %1053, %1067
  %1072 = phi ptr [ %1070, %1067 ], [ null, %1053 ]
  %1073 = tail call fastcc ptr @get_vi_for_tree(ptr noundef %1072)
  br label %1074

1074:                                             ; preds = %1071, %1051
  %1075 = phi ptr [ %1049, %1051 ], [ %1072, %1071 ]
  %1076 = phi ptr [ %1052, %1051 ], [ %1073, %1071 ]
  %1077 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %1078 = load i32, ptr %1077, align 4, !tbaa !198
  %1079 = icmp eq i32 %1078, 3
  br i1 %1079, label %1153, label %1080

1080:                                             ; preds = %1074, %1144
  %1081 = phi i64 [ %1145, %1144 ], [ 1, %1074 ]
  %1082 = phi i64 [ %1146, %1144 ], [ 0, %1074 ]
  %1083 = add nuw nsw i64 %1082, 3
  %1084 = load i32, ptr %0, align 8
  %1085 = and i32 %1084, 255
  %1086 = add nsw i32 %1085, -10
  %1087 = icmp ult i32 %1086, -9
  br i1 %1087, label %1102, label %1088

1088:                                             ; preds = %1080
  %1089 = zext nneg i32 %1085 to i64
  %1090 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1089
  %1091 = load i32, ptr %1090, align 4, !tbaa !202
  %1092 = zext i32 %1091 to i64
  %1093 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1092
  %1094 = load i64, ptr %1093, align 8, !tbaa !231
  %1095 = icmp eq i64 %1094, 0
  br i1 %1095, label %1096, label %1097

1096:                                             ; preds = %1088
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1097

1097:                                             ; preds = %1096, %1088
  %1098 = getelementptr inbounds i8, ptr %0, i64 %1094
  %1099 = and i64 %1083, 4294967295
  %1100 = getelementptr inbounds ptr, ptr %1098, i64 %1099
  %1101 = load ptr, ptr %1100, align 8, !tbaa !187
  br label %1102

1102:                                             ; preds = %1080, %1097
  %1103 = phi ptr [ %1101, %1097 ], [ null, %1080 ]
  call fastcc void @get_constraint_for(ptr noundef %1103, ptr noundef nonnull %15)
  %1104 = load i64, ptr %1075, align 8
  %1105 = and i64 %1104, 65535
  %1106 = icmp eq i64 %1105, 29
  br i1 %1106, label %1112, label %1107

1107:                                             ; preds = %1102
  %1108 = load i32, ptr %1076, align 8, !tbaa !372
  %1109 = zext i32 %1108 to i64
  %1110 = shl nuw i64 %1109, 32
  %1111 = or disjoint i64 %1110, 1
  br label %1117

1112:                                             ; preds = %1102
  %1113 = call fastcc ptr @first_vi_for_offset(ptr noundef %1076, i64 noundef %1081)
  %1114 = load i32, ptr %1113, align 8, !tbaa !372
  %1115 = zext i32 %1114 to i64
  %1116 = shl nuw i64 %1115, 32
  br label %1117

1117:                                             ; preds = %1112, %1107
  %1118 = phi i64 [ %1111, %1107 ], [ %1116, %1112 ]
  %1119 = phi i64 [ %1081, %1107 ], [ 0, %1112 ]
  br label %1120

1120:                                             ; preds = %1128, %1117
  %1121 = load ptr, ptr %15, align 8
  %1122 = icmp eq ptr %1121, null
  br i1 %1122, label %1125, label %1123

1123:                                             ; preds = %1120
  %1124 = load i32, ptr %1121, align 8, !tbaa !392
  br label %1125

1125:                                             ; preds = %1120, %1123
  %1126 = phi i32 [ %1124, %1123 ], [ 0, %1120 ]
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1144, label %1128

1128:                                             ; preds = %1125
  %1129 = load i32, ptr %1121, align 8, !tbaa !392
  %1130 = add i32 %1129, -1
  %1131 = zext i32 %1130 to i64
  %1132 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1121, i64 0, i32 2, i64 %1131
  %1133 = load i64, ptr %1132, align 8
  %1134 = getelementptr inbounds { i64, i64 }, ptr %1132, i64 0, i32 1
  %1135 = load i64, ptr %1134, align 8
  %1136 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %1137 = call ptr @pool_alloc(ptr noundef %1136) #28
  store i64 %1118, ptr %1137, align 8, !tbaa.struct !373
  %1138 = getelementptr inbounds i8, ptr %1137, i64 8
  store i64 %1119, ptr %1138, align 8, !tbaa.struct !374
  %1139 = getelementptr inbounds %struct.constraint, ptr %1137, i64 0, i32 1
  store i64 %1133, ptr %1139, align 8, !tbaa.struct !373
  %1140 = getelementptr inbounds %struct.constraint, ptr %1137, i64 0, i32 1, i32 2
  store i64 %1135, ptr %1140, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %1137)
  %1141 = load ptr, ptr %15, align 8
  %1142 = load i32, ptr %1141, align 8, !tbaa !392
  %1143 = add i32 %1142, -1
  store i32 %1143, ptr %1141, align 8, !tbaa !392
  br label %1120, !llvm.loop !428

1144:                                             ; preds = %1125
  %1145 = add nuw nsw i64 %1081, 1
  %1146 = add nuw nsw i64 %1082, 1
  %1147 = load i32, ptr %1077, align 4, !tbaa !198
  %1148 = add i32 %1147, -3
  %1149 = zext i32 %1148 to i64
  %1150 = icmp ult i64 %1146, %1149
  br i1 %1150, label %1080, label %1151, !llvm.loop !429

1151:                                             ; preds = %1144
  %1152 = and i64 %1145, 4294967295
  br label %1153

1153:                                             ; preds = %1151, %1074
  %1154 = phi i64 [ 1, %1074 ], [ %1152, %1151 ]
  %1155 = icmp eq ptr %1022, null
  br i1 %1155, label %2019, label %1156

1156:                                             ; preds = %1153
  call fastcc void @get_constraint_for(ptr noundef nonnull %1022, ptr noundef nonnull %14)
  %1157 = load i64, ptr %1075, align 8
  %1158 = and i64 %1157, 65535
  %1159 = icmp eq i64 %1158, 29
  br i1 %1159, label %1165, label %1160

1160:                                             ; preds = %1156
  %1161 = load i32, ptr %1076, align 8, !tbaa !372
  %1162 = zext i32 %1161 to i64
  %1163 = shl nuw i64 %1162, 32
  %1164 = or disjoint i64 %1163, 1
  br label %1170

1165:                                             ; preds = %1156
  %1166 = call fastcc ptr @first_vi_for_offset(ptr noundef %1076, i64 noundef %1154)
  %1167 = load i32, ptr %1166, align 8, !tbaa !372
  %1168 = zext i32 %1167 to i64
  %1169 = shl nuw i64 %1168, 32
  br label %1170

1170:                                             ; preds = %1165, %1160
  %1171 = phi i64 [ %1154, %1160 ], [ 0, %1165 ]
  %1172 = phi i64 [ %1164, %1160 ], [ %1169, %1165 ]
  br label %1173

1173:                                             ; preds = %1186, %1170
  %1174 = phi i32 [ 0, %1170 ], [ %1195, %1186 ]
  %1175 = load ptr, ptr %14, align 8
  %1176 = icmp eq ptr %1175, null
  br i1 %1176, label %1183, label %1177

1177:                                             ; preds = %1173
  %1178 = load i32, ptr %1175, align 8, !tbaa !392
  %1179 = icmp ugt i32 %1178, %1174
  br i1 %1179, label %1180, label %1183

1180:                                             ; preds = %1177
  %1181 = zext i32 %1174 to i64
  %1182 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1175, i64 0, i32 2, i64 %1181
  br label %1183

1183:                                             ; preds = %1173, %1177, %1180
  %1184 = phi ptr [ %1182, %1180 ], [ null, %1177 ], [ null, %1173 ]
  %1185 = phi i1 [ false, %1180 ], [ true, %1177 ], [ true, %1173 ]
  br i1 %1185, label %2019, label %1186

1186:                                             ; preds = %1183
  %1187 = load i64, ptr %1184, align 8
  %1188 = getelementptr inbounds { i64, i64 }, ptr %1184, i64 0, i32 1
  %1189 = load i64, ptr %1188, align 8
  %1190 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %1191 = call ptr @pool_alloc(ptr noundef %1190) #28
  store i64 %1187, ptr %1191, align 8, !tbaa.struct !373
  %1192 = getelementptr inbounds i8, ptr %1191, i64 8
  store i64 %1189, ptr %1192, align 8, !tbaa.struct !374
  %1193 = getelementptr inbounds %struct.constraint, ptr %1191, i64 0, i32 1
  store i64 %1172, ptr %1193, align 8, !tbaa.struct !373
  %1194 = getelementptr inbounds %struct.constraint, ptr %1191, i64 0, i32 1, i32 2
  store i64 %1171, ptr %1194, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %1191)
  %1195 = add i32 %1174, 1
  br label %1173, !llvm.loop !430

1196:                                             ; preds = %1
  %1197 = zext nneg i32 %22 to i64
  %1198 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1197
  %1199 = load i32, ptr %1198, align 4, !tbaa !202
  %1200 = zext i32 %1199 to i64
  %1201 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1200
  %1202 = load i64, ptr %1201, align 8, !tbaa !231
  %1203 = icmp eq i64 %1202, 0
  br i1 %1203, label %1204, label %1205, !prof !431

1204:                                             ; preds = %1196
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1205

1205:                                             ; preds = %1204, %1196
  %1206 = getelementptr inbounds i8, ptr %0, i64 %1202
  %1207 = load ptr, ptr %1206, align 8, !tbaa !187
  %1208 = getelementptr inbounds %struct.tree_common, ptr %1207, i64 0, i32 2
  %1209 = load ptr, ptr %1208, align 8, !tbaa !198
  %1210 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %1209), !range !251
  %1211 = icmp eq i8 %1210, 0
  br i1 %1211, label %1673, label %1212, !prof !432

1212:                                             ; preds = %1205
  %1213 = load i32, ptr %0, align 8
  %1214 = and i32 %1213, 255
  %1215 = add nsw i32 %1214, -10
  %1216 = icmp ult i32 %1215, -9
  br i1 %1216, label %1229, label %1217, !prof !433

1217:                                             ; preds = %1212
  %1218 = zext nneg i32 %1214 to i64
  %1219 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1218
  %1220 = load i32, ptr %1219, align 4, !tbaa !202
  %1221 = zext i32 %1220 to i64
  %1222 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1221
  %1223 = load i64, ptr %1222, align 8, !tbaa !231
  %1224 = icmp eq i64 %1223, 0
  br i1 %1224, label %1225, label %1226, !prof !433

1225:                                             ; preds = %1217
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1226

1226:                                             ; preds = %1225, %1217
  %1227 = getelementptr inbounds i8, ptr %0, i64 %1223
  %1228 = load ptr, ptr %1227, align 8, !tbaa !187
  br label %1229

1229:                                             ; preds = %1212, %1226
  %1230 = phi ptr [ %1228, %1226 ], [ null, %1212 ]
  %1231 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %1232 = load i32, ptr %1231, align 4, !tbaa !198
  %1233 = icmp eq i32 %1232, 2
  br i1 %1233, label %1234, label %1252, !prof !434

1234:                                             ; preds = %1229
  %1235 = load i32, ptr %0, align 8
  %1236 = and i32 %1235, 255
  %1237 = add nsw i32 %1236, -10
  %1238 = icmp ult i32 %1237, -9
  br i1 %1238, label %1252, label %1239, !prof !435

1239:                                             ; preds = %1234
  %1240 = zext nneg i32 %1236 to i64
  %1241 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1240
  %1242 = load i32, ptr %1241, align 4, !tbaa !202
  %1243 = zext i32 %1242 to i64
  %1244 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1243
  %1245 = load i64, ptr %1244, align 8, !tbaa !231
  %1246 = icmp eq i64 %1245, 0
  br i1 %1246, label %1247, label %1248, !prof !435

1247:                                             ; preds = %1239
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1248

1248:                                             ; preds = %1247, %1239
  %1249 = getelementptr inbounds i8, ptr %0, i64 %1245
  %1250 = getelementptr inbounds ptr, ptr %1249, i64 1
  %1251 = load ptr, ptr %1250, align 8, !tbaa !187
  br label %1252

1252:                                             ; preds = %1248, %1234, %1229
  %1253 = phi ptr [ null, %1229 ], [ %1251, %1248 ], [ null, %1234 ]
  %1254 = icmp eq ptr %1253, null
  br i1 %1254, label %1396, label %1255, !prof !436

1255:                                             ; preds = %1252
  %1256 = getelementptr inbounds %struct.tree_common, ptr %1230, i64 0, i32 2
  %1257 = load ptr, ptr %1256, align 8, !tbaa !198
  %1258 = load i64, ptr %1257, align 8
  %1259 = trunc i64 %1258 to i32
  %1260 = and i32 %1259, 65535
  %1261 = add nsw i32 %1260, -15
  %1262 = icmp ult i32 %1261, 4
  br i1 %1262, label %1263, label %1396, !prof !435

1263:                                             ; preds = %1255
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store ptr null, ptr %4, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store ptr null, ptr %5, align 8, !tbaa !187
  call fastcc void @get_constraint_for(ptr noundef %1230, ptr noundef nonnull %4)
  call fastcc void @get_constraint_for(ptr noundef nonnull %1253, ptr noundef nonnull %5)
  %1264 = load ptr, ptr %4, align 8
  %1265 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1264, i64 0, i32 2, i64 0
  %1266 = load ptr, ptr %5, align 8
  %1267 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1266, i64 0, i32 2, i64 0
  %1268 = load i32, ptr %1265, align 8, !tbaa !422
  switch i32 %1268, label %1273 [
    i32 1, label %1276
    i32 2, label %1269
  ]

1269:                                             ; preds = %1263
  %1270 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1264, i64 0, i32 2, i64 0, i32 1
  %1271 = load i32, ptr %1270, align 4, !tbaa !437
  %1272 = icmp eq i32 %1271, 1
  br i1 %1272, label %1276, label %1273

1273:                                             ; preds = %1269, %1263
  %1274 = load i32, ptr %1267, align 8, !tbaa !422
  %1275 = icmp eq i32 %1274, 1
  br i1 %1275, label %1276, label %1277

1276:                                             ; preds = %1273, %1269, %1263
  call fastcc void @process_all_all_constraints(ptr noundef %1264, ptr noundef %1266)
  br label %1387

1277:                                             ; preds = %1273
  %1278 = icmp eq i32 %1268, 0
  br i1 %1278, label %1279, label %1386

1279:                                             ; preds = %1277
  switch i32 %1274, label %1386 [
    i32 0, label %1280
    i32 2, label %1280
  ]

1280:                                             ; preds = %1279, %1279
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #28
  %1281 = call ptr @get_ref_base_and_extent(ptr noundef %1230, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #28
  %1282 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %1253, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #28
  br label %1283

1283:                                             ; preds = %1381, %1280
  %1284 = phi i32 [ 0, %1280 ], [ %1382, %1381 ]
  %1285 = phi i32 [ 0, %1280 ], [ %1383, %1381 ]
  %1286 = load ptr, ptr %4, align 8
  %1287 = icmp eq ptr %1286, null
  br i1 %1287, label %1294, label %1288

1288:                                             ; preds = %1283
  %1289 = load i32, ptr %1286, align 8, !tbaa !392
  %1290 = icmp ugt i32 %1289, %1285
  br i1 %1290, label %1291, label %1294

1291:                                             ; preds = %1288
  %1292 = zext i32 %1285 to i64
  %1293 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1286, i64 0, i32 2, i64 %1292
  br label %1294

1294:                                             ; preds = %1291, %1288, %1283
  %1295 = phi ptr [ %1293, %1291 ], [ null, %1288 ], [ null, %1283 ]
  %1296 = phi i1 [ false, %1291 ], [ true, %1288 ], [ true, %1283 ]
  br i1 %1296, label %1385, label %1297

1297:                                             ; preds = %1294
  %1298 = load ptr, ptr %5, align 8
  %1299 = zext i32 %1284 to i64
  %1300 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1298, i64 0, i32 2, i64 %1299
  %1301 = getelementptr inbounds %struct.constraint_expr, ptr %1295, i64 0, i32 1
  %1302 = load i32, ptr %1301, align 4, !tbaa !437
  %1303 = load ptr, ptr @varmap, align 8
  %1304 = zext i32 %1302 to i64
  %1305 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1303, i64 0, i32 2, i64 %1304
  %1306 = load ptr, ptr %1305, align 8, !tbaa !187
  %1307 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1298, i64 0, i32 2, i64 %1299, i32 1
  %1308 = load i32, ptr %1307, align 4, !tbaa !437
  %1309 = zext i32 %1308 to i64
  %1310 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1303, i64 0, i32 2, i64 %1309
  %1311 = load ptr, ptr %1310, align 8, !tbaa !187
  %1312 = getelementptr inbounds %struct.variable_info, ptr %1306, i64 0, i32 1
  %1313 = load i8, ptr %1312, align 4
  %1314 = and i8 %1313, 64
  %1315 = icmp eq i8 %1314, 0
  br i1 %1315, label %1354, label %1316

1316:                                             ; preds = %1297
  %1317 = getelementptr inbounds %struct.variable_info, ptr %1306, i64 0, i32 3
  %1318 = load i64, ptr %1317, align 8, !tbaa !349
  %1319 = load i64, ptr %11, align 8, !tbaa !231
  %1320 = add i64 %1319, %1318
  %1321 = getelementptr inbounds %struct.variable_info, ptr %1306, i64 0, i32 4
  %1322 = load i64, ptr %1321, align 8, !tbaa !350
  %1323 = getelementptr inbounds %struct.variable_info, ptr %1311, i64 0, i32 3
  %1324 = load i64, ptr %1323, align 8, !tbaa !349
  %1325 = load i64, ptr %8, align 8, !tbaa !231
  %1326 = add i64 %1325, %1324
  %1327 = icmp ult i64 %1320, %1326
  br i1 %1327, label %1335, label %1328

1328:                                             ; preds = %1316
  %1329 = getelementptr inbounds %struct.variable_info, ptr %1311, i64 0, i32 4
  %1330 = load i64, ptr %1329, align 8, !tbaa !350
  %1331 = icmp eq i64 %1330, -1
  %1332 = add i64 %1330, %1326
  %1333 = icmp ugt i64 %1332, %1320
  %1334 = or i1 %1331, %1333
  br i1 %1334, label %1342, label %1335

1335:                                             ; preds = %1328, %1316
  %1336 = icmp ult i64 %1326, %1320
  br i1 %1336, label %1354, label %1337

1337:                                             ; preds = %1335
  %1338 = icmp eq i64 %1322, -1
  %1339 = add i64 %1320, %1322
  %1340 = icmp ugt i64 %1339, %1326
  %1341 = or i1 %1338, %1340
  br i1 %1341, label %1342, label %1354

1342:                                             ; preds = %1328, %1337
  %1343 = load i64, ptr %1295, align 8
  %1344 = getelementptr inbounds { i64, i64 }, ptr %1295, i64 0, i32 1
  %1345 = load i64, ptr %1344, align 8
  %1346 = load i64, ptr %1300, align 8
  %1347 = getelementptr inbounds { i64, i64 }, ptr %1300, i64 0, i32 1
  %1348 = load i64, ptr %1347, align 8
  %1349 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %1350 = call ptr @pool_alloc(ptr noundef %1349) #28
  store i64 %1343, ptr %1350, align 8, !tbaa.struct !373
  %1351 = getelementptr inbounds i8, ptr %1350, i64 8
  store i64 %1345, ptr %1351, align 8, !tbaa.struct !374
  %1352 = getelementptr inbounds %struct.constraint, ptr %1350, i64 0, i32 1
  store i64 %1346, ptr %1352, align 8, !tbaa.struct !373
  %1353 = getelementptr inbounds %struct.constraint, ptr %1350, i64 0, i32 1, i32 2
  store i64 %1348, ptr %1353, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %1350)
  br label %1354

1354:                                             ; preds = %1337, %1335, %1342, %1297
  %1355 = getelementptr inbounds %struct.variable_info, ptr %1306, i64 0, i32 3
  %1356 = load i64, ptr %1355, align 8, !tbaa !349
  %1357 = load i64, ptr %11, align 8, !tbaa !231
  %1358 = add i64 %1357, %1356
  %1359 = getelementptr inbounds %struct.variable_info, ptr %1306, i64 0, i32 4
  %1360 = load i64, ptr %1359, align 8, !tbaa !350
  %1361 = add i64 %1358, %1360
  %1362 = getelementptr inbounds %struct.variable_info, ptr %1311, i64 0, i32 3
  %1363 = load i64, ptr %1362, align 8, !tbaa !349
  %1364 = load i64, ptr %8, align 8, !tbaa !231
  %1365 = add i64 %1364, %1363
  %1366 = getelementptr inbounds %struct.variable_info, ptr %1311, i64 0, i32 4
  %1367 = load i64, ptr %1366, align 8, !tbaa !350
  %1368 = add i64 %1365, %1367
  %1369 = icmp ugt i64 %1361, %1368
  br i1 %1369, label %1370, label %1379

1370:                                             ; preds = %1354
  %1371 = add i32 %1284, 1
  %1372 = load ptr, ptr %5, align 8
  %1373 = icmp eq ptr %1372, null
  br i1 %1373, label %1376, label %1374

1374:                                             ; preds = %1370
  %1375 = load i32, ptr %1372, align 8, !tbaa !392
  br label %1376

1376:                                             ; preds = %1374, %1370
  %1377 = phi i32 [ %1375, %1374 ], [ 0, %1370 ]
  %1378 = icmp ult i32 %1371, %1377
  br label %1381

1379:                                             ; preds = %1354
  %1380 = add i32 %1285, 1
  br label %1381

1381:                                             ; preds = %1379, %1376
  %1382 = phi i32 [ %1284, %1379 ], [ %1371, %1376 ]
  %1383 = phi i32 [ %1380, %1379 ], [ %1285, %1376 ]
  %1384 = phi i1 [ true, %1379 ], [ %1378, %1376 ]
  br i1 %1384, label %1283, label %1385

1385:                                             ; preds = %1381, %1294
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  br label %1387

1386:                                             ; preds = %1279, %1277
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3311, ptr noundef nonnull @.str.4) #28
  br label %1387

1387:                                             ; preds = %1386, %1385, %1276
  %1388 = load ptr, ptr %4, align 8, !tbaa !187
  %1389 = icmp eq ptr %1388, null
  br i1 %1389, label %1391, label %1390

1390:                                             ; preds = %1387
  call void @free(ptr noundef %1388)
  br label %1391

1391:                                             ; preds = %1390, %1387
  store ptr null, ptr %4, align 8, !tbaa !187
  %1392 = load ptr, ptr %5, align 8, !tbaa !187
  %1393 = icmp eq ptr %1392, null
  br i1 %1393, label %1395, label %1394

1394:                                             ; preds = %1391
  call void @free(ptr noundef %1392)
  br label %1395

1395:                                             ; preds = %1391, %1394
  store ptr null, ptr %5, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %1596

1396:                                             ; preds = %1255, %1252
  %1397 = load ptr, ptr %14, align 8, !tbaa !187
  %1398 = icmp eq ptr %1397, null
  br i1 %1398, label %1403, label %1399, !prof !391

1399:                                             ; preds = %1396
  %1400 = load i32, ptr %1397, align 8, !tbaa !392
  %1401 = icmp eq i32 %1400, 0
  br i1 %1401, label %1403, label %1402, !prof !394

1402:                                             ; preds = %1399
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #28
  br label %1403

1403:                                             ; preds = %1396, %1399, %1402
  call fastcc void @get_constraint_for_1(ptr noundef %1230, ptr noundef nonnull %14, i8 noundef zeroext 0)
  %1404 = load i32, ptr %0, align 8
  %1405 = trunc i32 %1404 to i8
  switch i8 %1405, label %1408 [
    i8 6, label %1406
    i8 1, label %1406
    i8 8, label %1409
  ], !prof !438

1406:                                             ; preds = %1403, %1403
  %1407 = lshr i32 %1404, 16
  br label %1409

1408:                                             ; preds = %1403
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1446, ptr noundef nonnull @.str.4) #28
  br label %1409

1409:                                             ; preds = %1408, %1406, %1403
  %1410 = phi i32 [ %1407, %1406 ], [ 0, %1408 ], [ 59, %1403 ]
  %1411 = zext nneg i32 %1410 to i64
  %1412 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1411
  %1413 = load i8, ptr %1412, align 1, !tbaa !198
  %1414 = icmp eq i8 %1413, 3
  br i1 %1414, label %1415, label %1435, !prof !434

1415:                                             ; preds = %1409
  %1416 = load i32, ptr %0, align 8
  %1417 = and i32 %1416, 255
  %1418 = add nsw i32 %1417, -1
  %1419 = icmp ult i32 %1418, 9
  call void @llvm.assume(i1 %1419)
  %1420 = zext nneg i32 %1417 to i64
  %1421 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1420
  %1422 = load i32, ptr %1421, align 4, !tbaa !202
  %1423 = zext i32 %1422 to i64
  %1424 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1423
  %1425 = load i64, ptr %1424, align 8, !tbaa !231
  %1426 = icmp eq i64 %1425, 0
  br i1 %1426, label %1427, label %1428, !prof !435

1427:                                             ; preds = %1415
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1428

1428:                                             ; preds = %1427, %1415
  %1429 = getelementptr inbounds i8, ptr %0, i64 %1425
  %1430 = getelementptr inbounds ptr, ptr %1429, i64 1
  %1431 = load ptr, ptr %1430, align 8, !tbaa !187
  %1432 = load i64, ptr %1431, align 8
  %1433 = trunc i64 %1432 to i32
  %1434 = and i32 %1433, 65535
  br label %1435

1435:                                             ; preds = %1409, %1428
  %1436 = phi i32 [ %1434, %1428 ], [ %1410, %1409 ]
  %1437 = icmp eq i32 %1436, 66
  %1438 = load i32, ptr %0, align 8
  br i1 %1437, label %1439, label %1480, !prof !436

1439:                                             ; preds = %1435
  %1440 = and i32 %1438, 255
  %1441 = add nsw i32 %1440, -10
  %1442 = icmp ult i32 %1441, -9
  br i1 %1442, label %1456, label %1443, !prof !439

1443:                                             ; preds = %1439
  %1444 = zext nneg i32 %1440 to i64
  %1445 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1444
  %1446 = load i32, ptr %1445, align 4, !tbaa !202
  %1447 = zext i32 %1446 to i64
  %1448 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1447
  %1449 = load i64, ptr %1448, align 8, !tbaa !231
  %1450 = icmp eq i64 %1449, 0
  br i1 %1450, label %1451, label %1452, !prof !439

1451:                                             ; preds = %1443
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1452

1452:                                             ; preds = %1451, %1443
  %1453 = getelementptr inbounds i8, ptr %0, i64 %1449
  %1454 = getelementptr inbounds ptr, ptr %1453, i64 1
  %1455 = load ptr, ptr %1454, align 8, !tbaa !187
  br label %1456

1456:                                             ; preds = %1439, %1452
  %1457 = phi ptr [ %1455, %1452 ], [ null, %1439 ]
  %1458 = load i32, ptr %1231, align 4, !tbaa !198
  %1459 = icmp ugt i32 %1458, 2
  br i1 %1459, label %1460, label %1478, !prof !440

1460:                                             ; preds = %1456
  %1461 = load i32, ptr %0, align 8
  %1462 = and i32 %1461, 255
  %1463 = add nsw i32 %1462, -10
  %1464 = icmp ult i32 %1463, -9
  br i1 %1464, label %1478, label %1465, !prof !439

1465:                                             ; preds = %1460
  %1466 = zext nneg i32 %1462 to i64
  %1467 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1466
  %1468 = load i32, ptr %1467, align 4, !tbaa !202
  %1469 = zext i32 %1468 to i64
  %1470 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1469
  %1471 = load i64, ptr %1470, align 8, !tbaa !231
  %1472 = icmp eq i64 %1471, 0
  br i1 %1472, label %1473, label %1474, !prof !439

1473:                                             ; preds = %1465
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1474

1474:                                             ; preds = %1473, %1465
  %1475 = getelementptr inbounds i8, ptr %0, i64 %1471
  %1476 = getelementptr inbounds ptr, ptr %1475, i64 2
  %1477 = load ptr, ptr %1476, align 8, !tbaa !187
  br label %1478

1478:                                             ; preds = %1456, %1460, %1474
  %1479 = phi ptr [ null, %1456 ], [ %1477, %1474 ], [ null, %1460 ]
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %1457, ptr noundef %1479, ptr noundef nonnull %15)
  br label %1593

1480:                                             ; preds = %1435
  %1481 = trunc i32 %1438 to i8
  switch i8 %1481, label %1484 [
    i8 6, label %1482
    i8 1, label %1482
    i8 8, label %1485
  ], !prof !441

1482:                                             ; preds = %1480, %1480
  %1483 = lshr i32 %1438, 16
  br label %1485

1484:                                             ; preds = %1480
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1446, ptr noundef nonnull @.str.4) #28
  br label %1485

1485:                                             ; preds = %1484, %1482, %1480
  %1486 = phi i32 [ %1483, %1482 ], [ 0, %1484 ], [ 59, %1480 ]
  %1487 = zext nneg i32 %1486 to i64
  %1488 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1487
  %1489 = load i8, ptr %1488, align 1, !tbaa !198
  %1490 = icmp eq i8 %1489, 3
  br i1 %1490, label %1491, label %1511, !prof !442

1491:                                             ; preds = %1485
  %1492 = load i32, ptr %0, align 8
  %1493 = and i32 %1492, 255
  %1494 = add nsw i32 %1493, -1
  %1495 = icmp ult i32 %1494, 9
  call void @llvm.assume(i1 %1495)
  %1496 = zext nneg i32 %1493 to i64
  %1497 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1496
  %1498 = load i32, ptr %1497, align 4, !tbaa !202
  %1499 = zext i32 %1498 to i64
  %1500 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1499
  %1501 = load i64, ptr %1500, align 8, !tbaa !231
  %1502 = icmp eq i64 %1501, 0
  br i1 %1502, label %1503, label %1504, !prof !435

1503:                                             ; preds = %1491
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1504

1504:                                             ; preds = %1503, %1491
  %1505 = getelementptr inbounds i8, ptr %0, i64 %1501
  %1506 = getelementptr inbounds ptr, ptr %1505, i64 1
  %1507 = load ptr, ptr %1506, align 8, !tbaa !187
  %1508 = load i64, ptr %1507, align 8
  %1509 = trunc i64 %1508 to i32
  %1510 = and i32 %1509, 65535
  br label %1511

1511:                                             ; preds = %1485, %1504
  %1512 = phi i32 [ %1510, %1504 ], [ %1486, %1485 ]
  %1513 = icmp eq i32 %1512, 116
  br i1 %1513, label %1549, label %1514, !prof !435

1514:                                             ; preds = %1511
  %1515 = load i32, ptr %0, align 8
  %1516 = trunc i32 %1515 to i8
  switch i8 %1516, label %1519 [
    i8 6, label %1517
    i8 1, label %1517
    i8 8, label %1520
  ], !prof !441

1517:                                             ; preds = %1514, %1514
  %1518 = lshr i32 %1515, 16
  br label %1520

1519:                                             ; preds = %1514
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1446, ptr noundef nonnull @.str.4) #28
  br label %1520

1520:                                             ; preds = %1519, %1517, %1514
  %1521 = phi i32 [ %1518, %1517 ], [ 0, %1519 ], [ 59, %1514 ]
  %1522 = zext nneg i32 %1521 to i64
  %1523 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1522
  %1524 = load i8, ptr %1523, align 1, !tbaa !198
  %1525 = icmp eq i8 %1524, 3
  br i1 %1525, label %1526, label %1546, !prof !442

1526:                                             ; preds = %1520
  %1527 = load i32, ptr %0, align 8
  %1528 = and i32 %1527, 255
  %1529 = add nsw i32 %1528, -1
  %1530 = icmp ult i32 %1529, 9
  call void @llvm.assume(i1 %1530)
  %1531 = zext nneg i32 %1528 to i64
  %1532 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1531
  %1533 = load i32, ptr %1532, align 4, !tbaa !202
  %1534 = zext i32 %1533 to i64
  %1535 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1534
  %1536 = load i64, ptr %1535, align 8, !tbaa !231
  %1537 = icmp eq i64 %1536, 0
  br i1 %1537, label %1538, label %1539, !prof !435

1538:                                             ; preds = %1526
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1539

1539:                                             ; preds = %1538, %1526
  %1540 = getelementptr inbounds i8, ptr %0, i64 %1536
  %1541 = getelementptr inbounds ptr, ptr %1540, i64 1
  %1542 = load ptr, ptr %1541, align 8, !tbaa !187
  %1543 = load i64, ptr %1542, align 8
  %1544 = trunc i64 %1543 to i32
  %1545 = and i32 %1544, 65535
  br label %1546

1546:                                             ; preds = %1520, %1539
  %1547 = phi i32 [ %1545, %1539 ], [ %1521, %1520 ]
  %1548 = icmp eq i32 %1547, 113
  br i1 %1548, label %1549, label %1564, !prof !435

1549:                                             ; preds = %1546, %1511
  %1550 = call fastcc ptr @gimple_expr_type(ptr noundef %0)
  %1551 = load i64, ptr %1550, align 8
  %1552 = and i64 %1551, 65535
  %1553 = icmp eq i64 %1552, 10
  br i1 %1553, label %1559, label %1554

1554:                                             ; preds = %1549
  %1555 = call fastcc ptr @gimple_expr_type(ptr noundef %0)
  %1556 = load i64, ptr %1555, align 8
  %1557 = and i64 %1556, 65535
  %1558 = icmp eq i64 %1557, 12
  br i1 %1558, label %1559, label %1567

1559:                                             ; preds = %1554, %1549
  %1560 = getelementptr inbounds %struct.tree_common, ptr %1253, i64 0, i32 2
  %1561 = load ptr, ptr %1560, align 8, !tbaa !198
  %1562 = load i64, ptr %1561, align 8
  %1563 = trunc i64 %1562 to i16
  switch i16 %1563, label %1564 [
    i16 10, label %1567
    i16 12, label %1567
  ]

1564:                                             ; preds = %1559, %1546
  %1565 = call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #28
  %1566 = icmp eq i8 %1565, 0
  br i1 %1566, label %1575, label %1567, !prof !435

1567:                                             ; preds = %1559, %1554, %1559, %1564
  %1568 = load ptr, ptr %15, align 8, !tbaa !187
  %1569 = icmp eq ptr %1568, null
  br i1 %1569, label %1574, label %1570, !prof !391

1570:                                             ; preds = %1567
  %1571 = load i32, ptr %1568, align 8, !tbaa !392
  %1572 = icmp eq i32 %1571, 0
  br i1 %1572, label %1574, label %1573, !prof !394

1573:                                             ; preds = %1570
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #28
  br label %1574

1574:                                             ; preds = %1567, %1570, %1573
  call fastcc void @get_constraint_for_1(ptr noundef %1253, ptr noundef nonnull %15, i8 noundef zeroext 0)
  br label %1593

1575:                                             ; preds = %1564
  %1576 = load ptr, ptr %15, align 8, !tbaa !187
  %1577 = icmp eq ptr %1576, null
  br i1 %1577, label %1583, label %1578

1578:                                             ; preds = %1575
  %1579 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1576, i64 0, i32 1
  %1580 = load i32, ptr %1579, align 4, !tbaa !409
  %1581 = load i32, ptr %1576, align 8, !tbaa !392
  %1582 = icmp eq i32 %1580, %1581
  br i1 %1582, label %1583, label %1585

1583:                                             ; preds = %1575, %1578
  %1584 = call ptr @vec_heap_o_reserve(ptr noundef %1576, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %1584, ptr %15, align 8, !tbaa !187
  br label %1585

1585:                                             ; preds = %1578, %1583
  %1586 = load ptr, ptr %15, align 8, !tbaa !187
  %1587 = load i32, ptr %1586, align 8, !tbaa !392
  %1588 = add i32 %1587, 1
  store i32 %1588, ptr %1586, align 8, !tbaa !392
  %1589 = zext i32 %1587 to i64
  %1590 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1586, i64 0, i32 2, i64 %1589
  store i32 2, ptr %1590, align 8, !tbaa.struct !373
  %1591 = getelementptr inbounds i8, ptr %1590, i64 4
  store i32 1, ptr %1591, align 4, !tbaa.struct !408
  %1592 = getelementptr inbounds i8, ptr %1590, i64 8
  store i64 0, ptr %1592, align 8, !tbaa.struct !374
  br label %1593

1593:                                             ; preds = %1574, %1585, %1478
  %1594 = load ptr, ptr %14, align 8, !tbaa !187
  %1595 = load ptr, ptr %15, align 8, !tbaa !187
  call fastcc void @process_all_all_constraints(ptr noundef %1594, ptr noundef %1595)
  br label %1596

1596:                                             ; preds = %1593, %1395
  %1597 = call ptr @get_base_address(ptr noundef %1230) #28
  %1598 = icmp eq ptr %1597, null
  br i1 %1598, label %1614, label %1599, !prof !433

1599:                                             ; preds = %1596
  %1600 = load i64, ptr %1597, align 8
  %1601 = and i64 %1600, 65535
  %1602 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %1601
  %1603 = load i32, ptr %1602, align 4, !tbaa !202
  %1604 = icmp eq i32 %1603, 3
  br i1 %1604, label %1605, label %1614, !prof !433

1605:                                             ; preds = %1599
  %1606 = and i64 %1600, 67108864
  %1607 = icmp eq i64 %1606, 0
  br i1 %1607, label %1608, label %1613

1608:                                             ; preds = %1605
  %1609 = getelementptr inbounds %struct.tree_decl_common, ptr %1597, i64 0, i32 2
  %1610 = load i64, ptr %1609, align 8
  %1611 = and i64 %1610, 33554432
  %1612 = icmp eq i64 %1611, 0
  br i1 %1612, label %1614, label %1613

1613:                                             ; preds = %1605, %1608
  call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %1253)
  br label %2019

1614:                                             ; preds = %1608, %1599, %1596
  %1615 = load i32, ptr %0, align 8
  %1616 = and i32 %1615, 255
  %1617 = icmp eq i32 %1616, 6
  br i1 %1617, label %1618, label %2019, !prof !443

1618:                                             ; preds = %1614
  %1619 = lshr i32 %1615, 16
  %1620 = zext nneg i32 %1619 to i64
  %1621 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1620
  %1622 = load i8, ptr %1621, align 1, !tbaa !198
  %1623 = icmp eq i8 %1622, 3
  br i1 %1623, label %1624, label %1640, !prof !434

1624:                                             ; preds = %1618
  %1625 = zext nneg i32 %1616 to i64
  %1626 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1625
  %1627 = load i32, ptr %1626, align 4, !tbaa !202
  %1628 = zext i32 %1627 to i64
  %1629 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1628
  %1630 = load i64, ptr %1629, align 8, !tbaa !231
  %1631 = icmp eq i64 %1630, 0
  br i1 %1631, label %1632, label %1633, !prof !435

1632:                                             ; preds = %1624
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1633

1633:                                             ; preds = %1632, %1624
  %1634 = getelementptr inbounds i8, ptr %0, i64 %1630
  %1635 = getelementptr inbounds ptr, ptr %1634, i64 1
  %1636 = load ptr, ptr %1635, align 8, !tbaa !187
  %1637 = load i64, ptr %1636, align 8
  %1638 = trunc i64 %1637 to i32
  %1639 = and i32 %1638, 65535
  br label %1640

1640:                                             ; preds = %1633, %1618
  %1641 = phi i32 [ %1639, %1633 ], [ %1619, %1618 ]
  %1642 = freeze i32 %1641
  %1643 = and i32 %1642, 65533
  %1644 = icmp eq i32 %1643, 116
  br i1 %1644, label %1646, label %1645

1645:                                             ; preds = %1640
  switch i32 %1642, label %2019 [
    i32 113, label %1646
    i32 77, label %1646
  ]

1646:                                             ; preds = %1645, %1645, %1640
  %1647 = getelementptr inbounds %struct.tree_common, ptr %1253, i64 0, i32 2
  %1648 = load ptr, ptr %1647, align 8, !tbaa !198
  %1649 = load i64, ptr %1648, align 8
  %1650 = trunc i64 %1649 to i16
  switch i16 %1650, label %2019 [
    i16 10, label %1651
    i16 12, label %1651
  ]

1651:                                             ; preds = %1646, %1646
  %1652 = getelementptr inbounds %struct.tree_common, ptr %1597, i64 0, i32 2
  %1653 = load ptr, ptr %1652, align 8, !tbaa !198
  %1654 = load i64, ptr %1653, align 8
  %1655 = trunc i64 %1654 to i16
  switch i16 %1655, label %2019 [
    i16 10, label %1656
    i16 12, label %1656
  ]

1656:                                             ; preds = %1651, %1651
  %1657 = getelementptr inbounds %struct.tree_type, ptr %1648, i64 0, i32 6
  %1658 = load i32, ptr %1657, align 4
  %1659 = and i32 %1658, 8192
  %1660 = icmp eq i32 %1659, 0
  br i1 %1660, label %1661, label %2019

1661:                                             ; preds = %1656
  %1662 = getelementptr inbounds %struct.tree_type, ptr %1653, i64 0, i32 6
  %1663 = load i32, ptr %1662, align 4
  %1664 = and i32 %1663, 8192
  %1665 = icmp eq i32 %1664, 0
  br i1 %1665, label %2019, label %1666

1666:                                             ; preds = %1661
  %1667 = call fastcc ptr @get_vi_for_tree(ptr noundef %1597)
  %1668 = call fastcc ptr @make_constraint_from_heapvar(ptr noundef %1667, ptr noundef nonnull @.str.62)
  %1669 = getelementptr inbounds %struct.variable_info, ptr %1668, i64 0, i32 1
  %1670 = load i8, ptr %1669, align 4
  %1671 = and i8 %1670, 29
  %1672 = or disjoint i8 %1671, 34
  store i8 %1672, ptr %1669, align 4
  br label %2019

1673:                                             ; preds = %1, %1205
  %1674 = load i32, ptr %0, align 8
  %1675 = and i32 %1674, 255
  %1676 = icmp eq i32 %1675, 6
  br i1 %1676, label %1677, label %1708, !prof !444

1677:                                             ; preds = %1673
  %1678 = lshr i32 %1674, 16
  %1679 = zext nneg i32 %1678 to i64
  %1680 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %1679
  %1681 = load i8, ptr %1680, align 1, !tbaa !198
  %1682 = icmp eq i8 %1681, 3
  br i1 %1682, label %1683, label %1699, !prof !445

1683:                                             ; preds = %1677
  %1684 = zext nneg i32 %1675 to i64
  %1685 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1684
  %1686 = load i32, ptr %1685, align 4, !tbaa !202
  %1687 = zext i32 %1686 to i64
  %1688 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1687
  %1689 = load i64, ptr %1688, align 8, !tbaa !231
  %1690 = icmp eq i64 %1689, 0
  br i1 %1690, label %1691, label %1692, !prof !446

1691:                                             ; preds = %1683
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1692

1692:                                             ; preds = %1691, %1683
  %1693 = getelementptr inbounds i8, ptr %0, i64 %1689
  %1694 = getelementptr inbounds ptr, ptr %1693, i64 1
  %1695 = load ptr, ptr %1694, align 8, !tbaa !187
  %1696 = load i64, ptr %1695, align 8
  %1697 = trunc i64 %1696 to i32
  %1698 = and i32 %1697, 65535
  br label %1699

1699:                                             ; preds = %1692, %1677
  %1700 = phi i32 [ %1698, %1692 ], [ %1678, %1677 ]
  %1701 = icmp eq i32 %1700, 113
  %1702 = and i32 %1700, 65533
  %1703 = icmp eq i32 %1702, 116
  %1704 = or i1 %1701, %1703
  %1705 = icmp eq i32 %1700, 77
  %1706 = or i1 %1705, %1704
  %1707 = zext i1 %1706 to i8
  br label %1708

1708:                                             ; preds = %1673, %1699
  %1709 = phi i8 [ %1707, %1699 ], [ 0, %1673 ]
  %1710 = icmp eq i8 %1709, 0
  br i1 %1710, label %1817, label %1711, !prof !447

1711:                                             ; preds = %1708
  %1712 = load i32, ptr %0, align 8
  %1713 = and i32 %1712, 255
  %1714 = add nsw i32 %1713, -1
  %1715 = icmp ult i32 %1714, 9
  tail call void @llvm.assume(i1 %1715)
  %1716 = zext nneg i32 %1713 to i64
  %1717 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1716
  %1718 = load i32, ptr %1717, align 4, !tbaa !202
  %1719 = zext i32 %1718 to i64
  %1720 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1719
  %1721 = load i64, ptr %1720, align 8, !tbaa !231
  %1722 = icmp eq i64 %1721, 0
  br i1 %1722, label %1723, label %1724, !prof !448

1723:                                             ; preds = %1711
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1724

1724:                                             ; preds = %1723, %1711
  %1725 = getelementptr inbounds i8, ptr %0, i64 %1721
  %1726 = getelementptr inbounds ptr, ptr %1725, i64 1
  %1727 = load ptr, ptr %1726, align 8, !tbaa !187
  %1728 = getelementptr inbounds %struct.tree_common, ptr %1727, i64 0, i32 2
  %1729 = load ptr, ptr %1728, align 8, !tbaa !198
  %1730 = load i64, ptr %1729, align 8
  %1731 = and i64 %1730, 65535
  %1732 = icmp eq i64 %1731, 10
  br i1 %1732, label %1755, label %1733, !prof !448

1733:                                             ; preds = %1724
  %1734 = load i32, ptr %0, align 8
  %1735 = and i32 %1734, 255
  %1736 = add nsw i32 %1735, -1
  %1737 = icmp ult i32 %1736, 9
  tail call void @llvm.assume(i1 %1737)
  %1738 = zext nneg i32 %1735 to i64
  %1739 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1738
  %1740 = load i32, ptr %1739, align 4, !tbaa !202
  %1741 = zext i32 %1740 to i64
  %1742 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1741
  %1743 = load i64, ptr %1742, align 8, !tbaa !231
  %1744 = icmp eq i64 %1743, 0
  br i1 %1744, label %1745, label %1746, !prof !448

1745:                                             ; preds = %1733
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1746

1746:                                             ; preds = %1745, %1733
  %1747 = getelementptr inbounds i8, ptr %0, i64 %1743
  %1748 = getelementptr inbounds ptr, ptr %1747, i64 1
  %1749 = load ptr, ptr %1748, align 8, !tbaa !187
  %1750 = getelementptr inbounds %struct.tree_common, ptr %1749, i64 0, i32 2
  %1751 = load ptr, ptr %1750, align 8, !tbaa !198
  %1752 = load i64, ptr %1751, align 8
  %1753 = and i64 %1752, 65535
  %1754 = icmp eq i64 %1753, 12
  br i1 %1754, label %1755, label %1817, !prof !448

1755:                                             ; preds = %1746, %1724
  %1756 = load i32, ptr %0, align 8
  %1757 = and i32 %1756, 255
  %1758 = add nsw i32 %1757, -1
  %1759 = icmp ult i32 %1758, 9
  tail call void @llvm.assume(i1 %1759)
  %1760 = zext nneg i32 %1757 to i64
  %1761 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1760
  %1762 = load i32, ptr %1761, align 4, !tbaa !202
  %1763 = zext i32 %1762 to i64
  %1764 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1763
  %1765 = load i64, ptr %1764, align 8, !tbaa !231
  %1766 = icmp eq i64 %1765, 0
  br i1 %1766, label %1767, label %1768

1767:                                             ; preds = %1755
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1768

1768:                                             ; preds = %1767, %1755
  %1769 = getelementptr inbounds i8, ptr %0, i64 %1765
  %1770 = load ptr, ptr %1769, align 8, !tbaa !187
  %1771 = getelementptr inbounds %struct.tree_common, ptr %1770, i64 0, i32 2
  %1772 = load ptr, ptr %1771, align 8, !tbaa !198
  %1773 = load i64, ptr %1772, align 8
  %1774 = and i64 %1773, 65535
  %1775 = icmp eq i64 %1774, 10
  br i1 %1775, label %1817, label %1776

1776:                                             ; preds = %1768
  %1777 = load i32, ptr %0, align 8
  %1778 = and i32 %1777, 255
  %1779 = add nsw i32 %1778, -1
  %1780 = icmp ult i32 %1779, 9
  tail call void @llvm.assume(i1 %1780)
  %1781 = zext nneg i32 %1778 to i64
  %1782 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !202
  %1784 = zext i32 %1783 to i64
  %1785 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1784
  %1786 = load i64, ptr %1785, align 8, !tbaa !231
  %1787 = icmp eq i64 %1786, 0
  br i1 %1787, label %1788, label %1789

1788:                                             ; preds = %1776
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1789

1789:                                             ; preds = %1788, %1776
  %1790 = getelementptr inbounds i8, ptr %0, i64 %1786
  %1791 = load ptr, ptr %1790, align 8, !tbaa !187
  %1792 = getelementptr inbounds %struct.tree_common, ptr %1791, i64 0, i32 2
  %1793 = load ptr, ptr %1792, align 8, !tbaa !198
  %1794 = load i64, ptr %1793, align 8
  %1795 = and i64 %1794, 65535
  %1796 = icmp eq i64 %1795, 12
  br i1 %1796, label %1817, label %1797

1797:                                             ; preds = %1789
  %1798 = load i32, ptr %0, align 8
  %1799 = and i32 %1798, 255
  %1800 = add nsw i32 %1799, -10
  %1801 = icmp ult i32 %1800, -9
  br i1 %1801, label %1815, label %1802

1802:                                             ; preds = %1797
  %1803 = zext nneg i32 %1799 to i64
  %1804 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1803
  %1805 = load i32, ptr %1804, align 4, !tbaa !202
  %1806 = zext i32 %1805 to i64
  %1807 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1806
  %1808 = load i64, ptr %1807, align 8, !tbaa !231
  %1809 = icmp eq i64 %1808, 0
  br i1 %1809, label %1810, label %1811

1810:                                             ; preds = %1802
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1811

1811:                                             ; preds = %1810, %1802
  %1812 = getelementptr inbounds i8, ptr %0, i64 %1808
  %1813 = getelementptr inbounds ptr, ptr %1812, i64 1
  %1814 = load ptr, ptr %1813, align 8, !tbaa !187
  br label %1815

1815:                                             ; preds = %1797, %1811
  %1816 = phi ptr [ %1814, %1811 ], [ null, %1797 ]
  tail call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %1816)
  br label %2019

1817:                                             ; preds = %1746, %1789, %1768, %1708
  %1818 = load i32, ptr %0, align 8
  %1819 = and i32 %1818, 255
  %1820 = icmp eq i32 %1819, 9
  br i1 %1820, label %1821, label %1873, !prof !449

1821:                                             ; preds = %1817
  %1822 = zext nneg i32 %1819 to i64
  %1823 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1822
  %1824 = load i32, ptr %1823, align 4, !tbaa !202
  %1825 = zext i32 %1824 to i64
  %1826 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1825
  %1827 = load i64, ptr %1826, align 8, !tbaa !231
  %1828 = icmp eq i64 %1827, 0
  br i1 %1828, label %1829, label %1830, !prof !325

1829:                                             ; preds = %1821
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1830

1830:                                             ; preds = %1829, %1821
  %1831 = getelementptr inbounds i8, ptr %0, i64 %1827
  %1832 = load ptr, ptr %1831, align 8, !tbaa !187
  %1833 = icmp eq ptr %1832, null
  br i1 %1833, label %1873, label %1834, !prof !325

1834:                                             ; preds = %1830
  %1835 = load i32, ptr %0, align 8
  %1836 = and i32 %1835, 255
  %1837 = add nsw i32 %1836, -1
  %1838 = icmp ult i32 %1837, 9
  tail call void @llvm.assume(i1 %1838)
  %1839 = zext nneg i32 %1836 to i64
  %1840 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1839
  %1841 = load i32, ptr %1840, align 4, !tbaa !202
  %1842 = zext i32 %1841 to i64
  %1843 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1842
  %1844 = load i64, ptr %1843, align 8, !tbaa !231
  %1845 = icmp eq i64 %1844, 0
  br i1 %1845, label %1846, label %1847, !prof !325

1846:                                             ; preds = %1834
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1847

1847:                                             ; preds = %1846, %1834
  %1848 = getelementptr inbounds i8, ptr %0, i64 %1844
  %1849 = load ptr, ptr %1848, align 8, !tbaa !187
  %1850 = getelementptr inbounds %struct.tree_common, ptr %1849, i64 0, i32 2
  %1851 = load ptr, ptr %1850, align 8, !tbaa !198
  %1852 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %1851), !range !251
  %1853 = icmp eq i8 %1852, 0
  br i1 %1853, label %1873, label %1854, !prof !450

1854:                                             ; preds = %1847
  %1855 = load i32, ptr %0, align 8
  %1856 = and i32 %1855, 255
  %1857 = add nsw i32 %1856, -10
  %1858 = icmp ult i32 %1857, -9
  br i1 %1858, label %1871, label %1859, !prof !339

1859:                                             ; preds = %1854
  %1860 = zext nneg i32 %1856 to i64
  %1861 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1860
  %1862 = load i32, ptr %1861, align 4, !tbaa !202
  %1863 = zext i32 %1862 to i64
  %1864 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1863
  %1865 = load i64, ptr %1864, align 8, !tbaa !231
  %1866 = icmp eq i64 %1865, 0
  br i1 %1866, label %1867, label %1868, !prof !339

1867:                                             ; preds = %1859
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1868

1868:                                             ; preds = %1867, %1859
  %1869 = getelementptr inbounds i8, ptr %0, i64 %1865
  %1870 = load ptr, ptr %1869, align 8, !tbaa !187
  br label %1871

1871:                                             ; preds = %1854, %1868
  %1872 = phi ptr [ %1870, %1868 ], [ null, %1854 ]
  tail call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %1872)
  br label %2019

1873:                                             ; preds = %1847, %1830, %1817
  %1874 = load i32, ptr %0, align 8
  %1875 = and i32 %1874, 255
  %1876 = icmp eq i32 %1875, 7
  br i1 %1876, label %1877, label %2019, !prof !451

1877:                                             ; preds = %1873
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %17) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #28
  %1878 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %1879 = load i8, ptr %1878, align 1, !tbaa !198
  %1880 = zext i8 %1879 to i32
  %1881 = shl nuw nsw i32 %1880, 3
  %1882 = zext nneg i32 %1881 to i64
  %1883 = alloca i8, i64 %1882, align 16
  %1884 = icmp eq i8 %1879, 0
  br i1 %1884, label %1888, label %1885

1885:                                             ; preds = %1877
  %1886 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %1887 = zext i8 %1879 to i64
  br label %1892

1888:                                             ; preds = %1969, %1877
  %1889 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %1890 = load i8, ptr %1889, align 8, !tbaa !198
  %1891 = icmp eq i8 %1890, 0
  br i1 %1891, label %2018, label %1972

1892:                                             ; preds = %1885, %1969
  %1893 = phi i64 [ 0, %1885 ], [ %1970, %1969 ]
  %1894 = load i8, ptr %1878, align 1, !tbaa !198
  %1895 = zext i8 %1894 to i64
  %1896 = icmp ugt i64 %1893, %1895
  br i1 %1896, label %1897, label %1898

1897:                                             ; preds = %1892
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 2655, ptr noundef nonnull @.str.4) #28
  br label %1898

1898:                                             ; preds = %1897, %1892
  %1899 = load i8, ptr %1886, align 8, !tbaa !198
  %1900 = zext i8 %1899 to i64
  %1901 = load i32, ptr %0, align 8
  %1902 = and i32 %1901, 255
  %1903 = add nsw i32 %1902, -1
  %1904 = icmp ult i32 %1903, 9
  call void @llvm.assume(i1 %1904)
  %1905 = zext nneg i32 %1902 to i64
  %1906 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1905
  %1907 = load i32, ptr %1906, align 4, !tbaa !202
  %1908 = zext i32 %1907 to i64
  %1909 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1908
  %1910 = load i64, ptr %1909, align 8, !tbaa !231
  %1911 = icmp eq i64 %1910, 0
  br i1 %1911, label %1912, label %1913

1912:                                             ; preds = %1898
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1913

1913:                                             ; preds = %1912, %1898
  %1914 = getelementptr inbounds i8, ptr %0, i64 %1910
  %1915 = getelementptr ptr, ptr %1914, i64 %1893
  %1916 = getelementptr ptr, ptr %1915, i64 %1900
  %1917 = load ptr, ptr %1916, align 8, !tbaa !187
  %1918 = getelementptr inbounds %struct.tree_list, ptr %1917, i64 0, i32 2
  %1919 = load ptr, ptr %1918, align 8, !tbaa !198
  %1920 = getelementptr inbounds %struct.tree_list, ptr %1917, i64 0, i32 1
  %1921 = load ptr, ptr %1920, align 8, !tbaa !198
  %1922 = getelementptr inbounds %struct.tree_list, ptr %1921, i64 0, i32 2
  %1923 = load ptr, ptr %1922, align 8, !tbaa !198
  %1924 = getelementptr inbounds %struct.tree_string, ptr %1923, i64 0, i32 2
  store ptr %1924, ptr %16, align 8, !tbaa !187
  %1925 = getelementptr inbounds ptr, ptr %1883, i64 %1893
  store ptr %1924, ptr %1925, align 8, !tbaa !187
  %1926 = trunc i64 %1893 to i32
  %1927 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %16, i32 noundef %1926, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef nonnull %19) #28
  %1928 = load i8, ptr %18, align 1, !tbaa !198
  %1929 = icmp eq i8 %1928, 0
  %1930 = load i8, ptr %17, align 1
  %1931 = icmp ne i8 %1930, 0
  %1932 = select i1 %1929, i1 %1931, i1 false
  br i1 %1932, label %1933, label %1935

1933:                                             ; preds = %1913
  %1934 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %1919) #28
  call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %1934)
  br label %1935

1935:                                             ; preds = %1933, %1913
  %1936 = icmp eq ptr %1919, null
  br i1 %1936, label %1969, label %1937

1937:                                             ; preds = %1935
  %1938 = getelementptr inbounds %struct.tree_common, ptr %1919, i64 0, i32 2
  %1939 = load ptr, ptr %1938, align 8, !tbaa !198
  %1940 = call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %1939), !range !251
  %1941 = icmp eq i8 %1940, 0
  br i1 %1941, label %1969, label %1942

1942:                                             ; preds = %1937
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #28
  store ptr null, ptr %20, align 8, !tbaa !187
  call fastcc void @get_constraint_for(ptr noundef nonnull %1919, ptr noundef nonnull %20)
  br label %1943

1943:                                             ; preds = %1956, %1942
  %1944 = phi i32 [ 0, %1942 ], [ %1965, %1956 ]
  %1945 = load ptr, ptr %20, align 8
  %1946 = icmp eq ptr %1945, null
  br i1 %1946, label %1953, label %1947

1947:                                             ; preds = %1943
  %1948 = load i32, ptr %1945, align 8, !tbaa !392
  %1949 = icmp ugt i32 %1948, %1944
  br i1 %1949, label %1950, label %1953

1950:                                             ; preds = %1947
  %1951 = zext i32 %1944 to i64
  %1952 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1945, i64 0, i32 2, i64 %1951
  br label %1953

1953:                                             ; preds = %1943, %1947, %1950
  %1954 = phi ptr [ %1952, %1950 ], [ null, %1947 ], [ null, %1943 ]
  %1955 = phi i1 [ false, %1950 ], [ true, %1947 ], [ true, %1943 ]
  br i1 %1955, label %1966, label %1956

1956:                                             ; preds = %1953
  %1957 = load i64, ptr %1954, align 8
  %1958 = getelementptr inbounds { i64, i64 }, ptr %1954, i64 0, i32 1
  %1959 = load i64, ptr %1958, align 8
  %1960 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %1961 = call ptr @pool_alloc(ptr noundef %1960) #28
  store i64 %1957, ptr %1961, align 8, !tbaa.struct !373
  %1962 = getelementptr inbounds i8, ptr %1961, i64 8
  store i64 %1959, ptr %1962, align 8, !tbaa.struct !374
  %1963 = getelementptr inbounds %struct.constraint, ptr %1961, i64 0, i32 1
  store i64 17179869184, ptr %1963, align 8, !tbaa.struct !373
  %1964 = getelementptr inbounds %struct.constraint, ptr %1961, i64 0, i32 1, i32 2
  store i64 0, ptr %1964, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %1961)
  %1965 = add i32 %1944, 1
  br label %1943, !llvm.loop !452

1966:                                             ; preds = %1953
  br i1 %1946, label %1968, label %1967

1967:                                             ; preds = %1966
  call void @free(ptr noundef %1945)
  br label %1968

1968:                                             ; preds = %1966, %1967
  store ptr null, ptr %20, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #28
  br label %1969

1969:                                             ; preds = %1968, %1937, %1935
  %1970 = add nuw nsw i64 %1893, 1
  %1971 = icmp eq i64 %1970, %1887
  br i1 %1971, label %1888, label %1892, !llvm.loop !453

1972:                                             ; preds = %1888, %2013
  %1973 = phi i64 [ %2014, %2013 ], [ 0, %1888 ]
  %1974 = load i32, ptr %0, align 8
  %1975 = and i32 %1974, 255
  %1976 = add nsw i32 %1975, -1
  %1977 = icmp ult i32 %1976, 9
  call void @llvm.assume(i1 %1977)
  %1978 = zext nneg i32 %1975 to i64
  %1979 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %1978
  %1980 = load i32, ptr %1979, align 4, !tbaa !202
  %1981 = zext i32 %1980 to i64
  %1982 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %1981
  %1983 = load i64, ptr %1982, align 8, !tbaa !231
  %1984 = icmp eq i64 %1983, 0
  br i1 %1984, label %1985, label %1986

1985:                                             ; preds = %1972
  call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %1986

1986:                                             ; preds = %1985, %1972
  %1987 = getelementptr inbounds i8, ptr %0, i64 %1983
  %1988 = getelementptr inbounds ptr, ptr %1987, i64 %1973
  %1989 = load ptr, ptr %1988, align 8, !tbaa !187
  %1990 = getelementptr inbounds %struct.tree_list, ptr %1989, i64 0, i32 2
  %1991 = load ptr, ptr %1990, align 8, !tbaa !198
  %1992 = getelementptr inbounds %struct.tree_list, ptr %1989, i64 0, i32 1
  %1993 = load ptr, ptr %1992, align 8, !tbaa !198
  %1994 = getelementptr inbounds %struct.tree_list, ptr %1993, i64 0, i32 2
  %1995 = load ptr, ptr %1994, align 8, !tbaa !198
  %1996 = getelementptr inbounds %struct.tree_string, ptr %1995, i64 0, i32 2
  store ptr %1996, ptr %16, align 8, !tbaa !187
  %1997 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %16, i32 noundef 0, i32 noundef 0, i32 noundef %1880, i32 noundef 0, ptr noundef nonnull %1883, ptr noundef nonnull %17, ptr noundef nonnull %18) #28
  %1998 = load i8, ptr %18, align 1, !tbaa !198
  %1999 = icmp eq i8 %1998, 0
  %2000 = load i8, ptr %17, align 1
  %2001 = icmp ne i8 %2000, 0
  %2002 = select i1 %1999, i1 %2001, i1 false
  br i1 %2002, label %2003, label %2005

2003:                                             ; preds = %1986
  %2004 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %1991) #28
  call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %2004)
  br label %2013

2005:                                             ; preds = %1986
  %2006 = icmp eq ptr %1991, null
  br i1 %2006, label %2013, label %2007

2007:                                             ; preds = %2005
  %2008 = getelementptr inbounds %struct.tree_common, ptr %1991, i64 0, i32 2
  %2009 = load ptr, ptr %2008, align 8, !tbaa !198
  %2010 = call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %2009), !range !251
  %2011 = icmp eq i8 %2010, 0
  br i1 %2011, label %2013, label %2012

2012:                                             ; preds = %2007
  call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef nonnull %1991)
  br label %2013

2013:                                             ; preds = %2005, %2007, %2012, %2003
  %2014 = add nuw nsw i64 %1973, 1
  %2015 = load i8, ptr %1889, align 8, !tbaa !198
  %2016 = zext i8 %2015 to i64
  %2017 = icmp ult i64 %2014, %2016
  br i1 %2017, label %1972, label %2018, !llvm.loop !454

2018:                                             ; preds = %2013, %1888
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %18) #28
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #28
  br label %2019

2019:                                             ; preds = %1183, %119, %47, %1645, %1614, %1656, %1651, %1003, %1001, %1613, %1666, %1661, %1646, %1153, %1815, %1873, %2018, %1871, %34
  %2020 = load ptr, ptr %15, align 8, !tbaa !187
  %2021 = icmp eq ptr %2020, null
  br i1 %2021, label %2023, label %2022, !prof !455

2022:                                             ; preds = %2019
  call void @free(ptr noundef %2020)
  br label %2023

2023:                                             ; preds = %2019, %2022
  store ptr null, ptr %15, align 8, !tbaa !187
  %2024 = load ptr, ptr %14, align 8, !tbaa !187
  %2025 = icmp eq ptr %2024, null
  br i1 %2025, label %2027, label %2026, !prof !455

2026:                                             ; preds = %2023
  call void @free(ptr noundef %2024)
  br label %2027

2027:                                             ; preds = %2023, %2026
  store ptr null, ptr %14, align 8, !tbaa !187
  br label %2028

2028:                                             ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %349, %245, %151, %2027
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #28
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @solve_constraints() unnamed_addr #14 !prof !271 !PGOFuncName !456 {
  %1 = alloca %struct.equiv_class_label, align 8
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4, !prof !272

4:                                                ; preds = %0
  %5 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr nonnull %2)
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !187
  br label %7

7:                                                ; preds = %21, %4
  %8 = phi i64 [ %22, %21 ], [ 0, %4 ]
  %9 = load ptr, ptr @constraints, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load i32, ptr %9, align 8, !tbaa !216
  %13 = zext i32 %12 to i64
  %14 = icmp ult i64 %8, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %9, i64 0, i32 2, i64 %8
  %17 = load ptr, ptr %16, align 8, !tbaa !187
  br label %18

18:                                               ; preds = %15, %11, %7
  %19 = phi ptr [ %17, %15 ], [ null, %11 ], [ null, %7 ]
  %20 = phi i1 [ false, %15 ], [ true, %11 ], [ true, %7 ]
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  tail call fastcc void @dump_constraint(ptr noundef %6, ptr noundef %19)
  %22 = add nuw i64 %8, 1
  br label %7, !llvm.loop !218

23:                                               ; preds = %18, %0
  %24 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !272

26:                                               ; preds = %23
  %27 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 58, i64 1, ptr nonnull %24)
  br label %28

28:                                               ; preds = %26, %23
  %29 = load ptr, ptr @varmap, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !325

31:                                               ; preds = %28
  %32 = load i32, ptr %29, align 8, !tbaa !219
  br label %33

33:                                               ; preds = %28, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %28 ]
  %35 = shl i32 %34, 1
  %36 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #28
  store ptr %36, ptr @graph, align 8, !tbaa !187
  store i32 %35, ptr %36, align 8, !tbaa !221
  %37 = zext i32 %35 to i64
  %38 = tail call ptr @xcalloc(i64 noundef %37, i64 noundef 8) #28
  %39 = load ptr, ptr @graph, align 8, !tbaa !187
  %40 = getelementptr inbounds %struct.constraint_graph, ptr %39, i64 0, i32 1
  store ptr %38, ptr %40, align 8, !tbaa !330
  %41 = load i32, ptr %39, align 8, !tbaa !221
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %42, 2
  %44 = tail call ptr @xmalloc(i64 noundef %43) #28
  %45 = load ptr, ptr @graph, align 8, !tbaa !187
  %46 = getelementptr inbounds %struct.constraint_graph, ptr %45, i64 0, i32 4
  store ptr %44, ptr %46, align 8, !tbaa !333
  %47 = load i32, ptr %45, align 8, !tbaa !221
  %48 = zext i32 %47 to i64
  %49 = shl nuw nsw i64 %48, 2
  %50 = tail call ptr @xmalloc(i64 noundef %49) #28
  %51 = load ptr, ptr @graph, align 8, !tbaa !187
  %52 = getelementptr inbounds %struct.constraint_graph, ptr %51, i64 0, i32 5
  store ptr %50, ptr %52, align 8, !tbaa !223
  %53 = tail call ptr @xcalloc(i64 noundef %37, i64 noundef 8) #28
  %54 = load ptr, ptr @graph, align 8, !tbaa !187
  %55 = getelementptr inbounds %struct.constraint_graph, ptr %54, i64 0, i32 15
  store ptr %53, ptr %55, align 8, !tbaa !326
  %56 = load i32, ptr %54, align 8, !tbaa !221
  %57 = zext i32 %56 to i64
  %58 = tail call ptr @xcalloc(i64 noundef %57, i64 noundef 4) #28
  %59 = load ptr, ptr @graph, align 8, !tbaa !187
  %60 = getelementptr inbounds %struct.constraint_graph, ptr %59, i64 0, i32 7
  store ptr %58, ptr %60, align 8, !tbaa !331
  %61 = load i32, ptr %59, align 8, !tbaa !221
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 2
  %64 = tail call ptr @xmalloc(i64 noundef %63) #28
  %65 = load ptr, ptr @graph, align 8, !tbaa !187
  %66 = getelementptr inbounds %struct.constraint_graph, ptr %65, i64 0, i32 8
  store ptr %64, ptr %66, align 8, !tbaa !332
  %67 = load i32, ptr %65, align 8, !tbaa !221
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %84, label %69, !prof !280

69:                                               ; preds = %33
  %70 = getelementptr inbounds %struct.constraint_graph, ptr %65, i64 0, i32 5
  %71 = load ptr, ptr %70, align 8, !tbaa !223
  %72 = getelementptr inbounds %struct.constraint_graph, ptr %65, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !333
  br label %74

74:                                               ; preds = %69, %74
  %75 = phi i64 [ 0, %69 ], [ %80, %74 ]
  %76 = getelementptr inbounds i32, ptr %71, i64 %75
  %77 = trunc i64 %75 to i32
  store i32 %77, ptr %76, align 4, !tbaa !202
  %78 = getelementptr inbounds i32, ptr %64, i64 %75
  store i32 -1, ptr %78, align 4, !tbaa !202
  %79 = getelementptr inbounds i32, ptr %73, i64 %75
  store i32 -1, ptr %79, align 4, !tbaa !202
  %80 = add nuw nsw i64 %75, 1
  %81 = load i32, ptr %65, align 8, !tbaa !221
  %82 = zext i32 %81 to i64
  %83 = icmp ult i64 %80, %82
  br i1 %83, label %74, label %84, !prof !457, !llvm.loop !458

84:                                               ; preds = %74, %33
  %85 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %86 = icmp eq ptr %85, null
  br i1 %86, label %89, label %87, !prof !272

87:                                               ; preds = %84
  %88 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 27, i64 1, ptr nonnull %85)
  br label %89

89:                                               ; preds = %87, %84
  %90 = load ptr, ptr @graph, align 8, !tbaa !187
  %91 = load i32, ptr %90, align 8, !tbaa !221
  %92 = zext i32 %91 to i64
  %93 = tail call ptr @xcalloc(i64 noundef %92, i64 noundef 8) #28
  %94 = load ptr, ptr @graph, align 8, !tbaa !187
  %95 = getelementptr inbounds %struct.constraint_graph, ptr %94, i64 0, i32 2
  store ptr %93, ptr %95, align 8, !tbaa !459
  %96 = load i32, ptr %94, align 8, !tbaa !221
  %97 = zext i32 %96 to i64
  %98 = tail call ptr @xcalloc(i64 noundef %97, i64 noundef 8) #28
  %99 = load ptr, ptr @graph, align 8, !tbaa !187
  %100 = getelementptr inbounds %struct.constraint_graph, ptr %99, i64 0, i32 3
  store ptr %98, ptr %100, align 8, !tbaa !460
  %101 = load i32, ptr %99, align 8, !tbaa !221
  %102 = zext i32 %101 to i64
  %103 = tail call ptr @xcalloc(i64 noundef %102, i64 noundef 4) #28
  %104 = load ptr, ptr @graph, align 8, !tbaa !187
  %105 = getelementptr inbounds %struct.constraint_graph, ptr %104, i64 0, i32 9
  store ptr %103, ptr %105, align 8, !tbaa !461
  %106 = load i32, ptr %104, align 8, !tbaa !221
  %107 = zext i32 %106 to i64
  %108 = tail call ptr @xcalloc(i64 noundef %107, i64 noundef 4) #28
  %109 = load ptr, ptr @graph, align 8, !tbaa !187
  %110 = getelementptr inbounds %struct.constraint_graph, ptr %109, i64 0, i32 10
  store ptr %108, ptr %110, align 8, !tbaa !462
  %111 = load i32, ptr %109, align 8, !tbaa !221
  %112 = zext i32 %111 to i64
  %113 = tail call ptr @xcalloc(i64 noundef %112, i64 noundef 8) #28
  %114 = load ptr, ptr @graph, align 8, !tbaa !187
  %115 = getelementptr inbounds %struct.constraint_graph, ptr %114, i64 0, i32 11
  store ptr %113, ptr %115, align 8, !tbaa !463
  %116 = load i32, ptr %114, align 8, !tbaa !221
  %117 = zext i32 %116 to i64
  %118 = tail call ptr @xcalloc(i64 noundef %117, i64 noundef 8) #28
  %119 = load ptr, ptr @graph, align 8, !tbaa !187
  %120 = getelementptr inbounds %struct.constraint_graph, ptr %119, i64 0, i32 12
  store ptr %118, ptr %120, align 8, !tbaa !464
  %121 = load i32, ptr %119, align 8, !tbaa !221
  %122 = zext i32 %121 to i64
  %123 = shl nuw nsw i64 %122, 2
  %124 = tail call ptr @xmalloc(i64 noundef %123) #28
  %125 = load ptr, ptr @graph, align 8, !tbaa !187
  %126 = getelementptr inbounds %struct.constraint_graph, ptr %125, i64 0, i32 6
  store ptr %124, ptr %126, align 8, !tbaa !465
  %127 = load i32, ptr %125, align 8, !tbaa !221
  %128 = tail call ptr @sbitmap_alloc(i32 noundef %127) #28
  %129 = load ptr, ptr @graph, align 8, !tbaa !187
  %130 = getelementptr inbounds %struct.constraint_graph, ptr %129, i64 0, i32 13
  store ptr %128, ptr %130, align 8, !tbaa !466
  %131 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %132 = load ptr, ptr @graph, align 8, !tbaa !187
  %133 = getelementptr inbounds %struct.constraint_graph, ptr %132, i64 0, i32 14
  store ptr %131, ptr %133, align 8, !tbaa !467
  %134 = getelementptr inbounds %struct.constraint_graph, ptr %132, i64 0, i32 13
  %135 = load ptr, ptr %134, align 8, !tbaa !466
  tail call void @sbitmap_zero(ptr noundef %135) #28
  %136 = load ptr, ptr @varmap, align 8
  %137 = icmp eq ptr %136, null
  %138 = load ptr, ptr @graph, align 8
  %139 = getelementptr inbounds %struct.constraint_graph, ptr %138, i64 0, i32 13
  br label %140

140:                                              ; preds = %187, %89
  %141 = phi i64 [ %188, %187 ], [ 0, %89 ]
  br i1 %137, label %144, label %142, !prof !304

142:                                              ; preds = %140
  %143 = load i32, ptr %136, align 8, !tbaa !219
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %143, %142 ], [ 0, %140 ]
  %146 = zext i32 %145 to i64
  %147 = icmp ult i64 %141, %146
  br i1 %147, label %155, label %148, !prof !305

148:                                              ; preds = %144
  %149 = load ptr, ptr @graph, align 8, !tbaa !187
  %150 = load i32, ptr %149, align 8, !tbaa !221
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %189, label %152, !prof !280

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.constraint_graph, ptr %149, i64 0, i32 6
  %154 = load ptr, ptr %153, align 8, !tbaa !465
  br label %191

155:                                              ; preds = %144
  %156 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %136, i64 0, i32 2, i64 %141
  %157 = load ptr, ptr %156, align 8, !tbaa !187
  %158 = getelementptr inbounds %struct.variable_info, ptr %157, i64 0, i32 1
  %159 = load i8, ptr %158, align 4
  %160 = and i8 %159, 2
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %187, !prof !468

162:                                              ; preds = %155
  %163 = load ptr, ptr %139, align 8, !tbaa !466
  %164 = load ptr, ptr %163, align 8, !tbaa !469
  %165 = icmp eq ptr %164, null
  br i1 %165, label %179, label %166, !prof !471

166:                                              ; preds = %162
  %167 = lshr i64 %141, 6
  %168 = and i64 %167, 67108863
  %169 = getelementptr inbounds %struct.simple_bitmap_def, ptr %163, i64 0, i32 3, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !231
  %171 = and i64 %141, 63
  %172 = shl nuw i64 1, %171
  %173 = and i64 %170, %172
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %166
  %176 = getelementptr inbounds i8, ptr %164, i64 %168
  %177 = load i8, ptr %176, align 1, !tbaa !198
  %178 = add i8 %177, 1
  store i8 %178, ptr %176, align 1, !tbaa !198
  br label %179

179:                                              ; preds = %175, %166, %162
  %180 = and i64 %141, 63
  %181 = shl nuw i64 1, %180
  %182 = lshr i64 %141, 6
  %183 = and i64 %182, 67108863
  %184 = getelementptr inbounds %struct.simple_bitmap_def, ptr %163, i64 0, i32 3, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !231
  %186 = or i64 %185, %181
  store i64 %186, ptr %184, align 8, !tbaa !231
  br label %187

187:                                              ; preds = %179, %155
  %188 = add nuw nsw i64 %141, 1
  br label %140, !llvm.loop !472

189:                                              ; preds = %191, %148
  %190 = getelementptr inbounds %struct.constraint_graph, ptr %149, i64 0, i32 4
  br label %198

191:                                              ; preds = %152, %191
  %192 = phi i64 [ 0, %152 ], [ %194, %191 ]
  %193 = getelementptr inbounds i32, ptr %154, i64 %192
  store i32 -1, ptr %193, align 4, !tbaa !202
  %194 = add nuw nsw i64 %192, 1
  %195 = load i32, ptr %149, align 8, !tbaa !221
  %196 = zext i32 %195 to i64
  %197 = icmp ult i64 %194, %196
  br i1 %197, label %191, label %189, !prof !457, !llvm.loop !473

198:                                              ; preds = %189, %206
  %199 = phi i64 [ 0, %189 ], [ %209, %206 ]
  br i1 %137, label %202, label %200, !prof !304

200:                                              ; preds = %198
  %201 = load i32, ptr %136, align 8, !tbaa !219
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %201, %200 ], [ 0, %198 ]
  %204 = zext i32 %203 to i64
  %205 = icmp ult i64 %199, %204
  br i1 %205, label %206, label %210, !prof !305

206:                                              ; preds = %202
  %207 = load ptr, ptr %190, align 8, !tbaa !333
  %208 = getelementptr inbounds i32, ptr %207, i64 %199
  store i32 -1, ptr %208, align 4, !tbaa !202
  %209 = add nuw nsw i64 %199, 1
  br label %198, !llvm.loop !474

210:                                              ; preds = %202, %609
  %211 = phi i64 [ %610, %609 ], [ 0, %202 ]
  %212 = load ptr, ptr @constraints, align 8
  %213 = icmp eq ptr %212, null
  br i1 %213, label %221, label %214, !prof !475

214:                                              ; preds = %210
  %215 = load i32, ptr %212, align 8, !tbaa !216
  %216 = zext i32 %215 to i64
  %217 = icmp ult i64 %211, %216
  br i1 %217, label %218, label %221, !prof !476

218:                                              ; preds = %214
  %219 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %212, i64 0, i32 2, i64 %211
  %220 = load ptr, ptr %219, align 8, !tbaa !187
  br label %221

221:                                              ; preds = %218, %214, %210
  %222 = phi ptr [ %220, %218 ], [ null, %214 ], [ null, %210 ]
  %223 = phi i1 [ false, %218 ], [ true, %214 ], [ true, %210 ]
  br i1 %223, label %611, label %224, !prof !477

224:                                              ; preds = %221
  %225 = load i32, ptr %222, align 8, !tbaa.struct !373
  %226 = getelementptr inbounds i8, ptr %222, i64 4
  %227 = load i32, ptr %226, align 4, !tbaa.struct !408
  %228 = getelementptr inbounds i8, ptr %222, i64 8
  %229 = load i64, ptr %228, align 8, !tbaa.struct !374
  %230 = getelementptr inbounds %struct.constraint, ptr %222, i64 0, i32 1
  %231 = load i32, ptr %230, align 8, !tbaa.struct !373
  %232 = getelementptr inbounds %struct.constraint, ptr %222, i64 0, i32 1, i32 1
  %233 = load i32, ptr %232, align 4, !tbaa.struct !408
  %234 = getelementptr inbounds %struct.constraint, ptr %222, i64 0, i32 1, i32 2
  %235 = load i64, ptr %234, align 8, !tbaa.struct !374
  %236 = icmp eq i32 %225, 1
  br i1 %236, label %237, label %267, !prof !478

237:                                              ; preds = %224
  %238 = icmp eq i64 %235, 0
  %239 = icmp eq i64 %229, 0
  %240 = select i1 %238, i1 %239, i1 false, !prof !272
  %241 = icmp eq i32 %231, 0
  %242 = select i1 %240, i1 %241, i1 false, !prof !272
  br i1 %242, label %243, label %609, !prof !272

243:                                              ; preds = %237
  %244 = load ptr, ptr @graph, align 8, !tbaa !187
  %245 = load ptr, ptr @varmap, align 8
  %246 = icmp eq ptr %245, null
  br i1 %246, label %249, label %247, !prof !325

247:                                              ; preds = %243
  %248 = load i32, ptr %245, align 8, !tbaa !219
  br label %249

249:                                              ; preds = %247, %243
  %250 = phi i32 [ %248, %247 ], [ 0, %243 ]
  %251 = add i32 %250, %227
  %252 = getelementptr inbounds %struct.constraint_graph, ptr %244, i64 0, i32 3
  %253 = load ptr, ptr %252, align 8, !tbaa !460
  %254 = zext i32 %251 to i64
  %255 = getelementptr inbounds ptr, ptr %253, i64 %254
  %256 = load ptr, ptr %255, align 8, !tbaa !187
  %257 = icmp eq ptr %256, null
  br i1 %257, label %258, label %262, !prof !272

258:                                              ; preds = %249
  %259 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %260 = load ptr, ptr %252, align 8, !tbaa !460
  %261 = getelementptr inbounds ptr, ptr %260, i64 %254
  store ptr %259, ptr %261, align 8, !tbaa !187
  br label %262

262:                                              ; preds = %258, %249
  %263 = load ptr, ptr %252, align 8, !tbaa !460
  %264 = getelementptr inbounds ptr, ptr %263, i64 %254
  %265 = load ptr, ptr %264, align 8, !tbaa !187
  %266 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %265, i32 noundef %233) #28
  br label %609

267:                                              ; preds = %224
  switch i32 %231, label %484 [
    i32 1, label %268
    i32 2, label %327
  ], !prof !479

268:                                              ; preds = %267
  %269 = icmp eq i64 %235, 0
  %270 = icmp eq i64 %229, 0
  %271 = select i1 %269, i1 %270, i1 false, !prof !480
  %272 = icmp eq i32 %225, 0
  %273 = and i1 %272, %271
  %274 = load ptr, ptr @graph, align 8, !tbaa !187
  br i1 %273, label %275, label %298, !prof !480

275:                                              ; preds = %268
  %276 = load ptr, ptr @varmap, align 8
  %277 = icmp eq ptr %276, null
  br i1 %277, label %280, label %278, !prof !481

278:                                              ; preds = %275
  %279 = load i32, ptr %276, align 8, !tbaa !219
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i32 [ %279, %278 ], [ 0, %275 ]
  %282 = add i32 %281, %233
  %283 = getelementptr inbounds %struct.constraint_graph, ptr %274, i64 0, i32 3
  %284 = load ptr, ptr %283, align 8, !tbaa !460
  %285 = zext i32 %227 to i64
  %286 = getelementptr inbounds ptr, ptr %284, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !187
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %293, !prof !482

289:                                              ; preds = %280
  %290 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %291 = load ptr, ptr %283, align 8, !tbaa !460
  %292 = getelementptr inbounds ptr, ptr %291, i64 %285
  store ptr %290, ptr %292, align 8, !tbaa !187
  br label %293

293:                                              ; preds = %289, %280
  %294 = load ptr, ptr %283, align 8, !tbaa !460
  %295 = getelementptr inbounds ptr, ptr %294, i64 %285
  %296 = load ptr, ptr %295, align 8, !tbaa !187
  %297 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %296, i32 noundef %282) #28
  br label %609

298:                                              ; preds = %268
  %299 = getelementptr inbounds %struct.constraint_graph, ptr %274, i64 0, i32 13
  %300 = load ptr, ptr %299, align 8, !tbaa !466
  %301 = load ptr, ptr %300, align 8, !tbaa !469
  %302 = icmp eq ptr %301, null
  br i1 %302, label %317, label %303, !prof !483

303:                                              ; preds = %298
  %304 = lshr i32 %227, 6
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds %struct.simple_bitmap_def, ptr %300, i64 0, i32 3, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !231
  %308 = and i32 %227, 63
  %309 = zext nneg i32 %308 to i64
  %310 = shl nuw i64 1, %309
  %311 = and i64 %307, %310
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %317, label %313

313:                                              ; preds = %303
  %314 = getelementptr inbounds i8, ptr %301, i64 %305
  %315 = load i8, ptr %314, align 1, !tbaa !198
  %316 = add i8 %315, -1
  store i8 %316, ptr %314, align 1, !tbaa !198
  br label %317

317:                                              ; preds = %313, %303, %298
  %318 = and i32 %227, 63
  %319 = zext nneg i32 %318 to i64
  %320 = shl nuw i64 1, %319
  %321 = xor i64 %320, -1
  %322 = lshr i32 %227, 6
  %323 = zext nneg i32 %322 to i64
  %324 = getelementptr inbounds %struct.simple_bitmap_def, ptr %300, i64 0, i32 3, i64 %323
  %325 = load i64, ptr %324, align 8, !tbaa !231
  %326 = and i64 %325, %321
  store i64 %326, ptr %324, align 8, !tbaa !231
  br label %609

327:                                              ; preds = %267
  %328 = load ptr, ptr @graph, align 8, !tbaa !187
  %329 = getelementptr inbounds %struct.constraint_graph, ptr %328, i64 0, i32 12
  %330 = load ptr, ptr %329, align 8, !tbaa !464
  %331 = zext i32 %227 to i64
  %332 = getelementptr inbounds ptr, ptr %330, i64 %331
  %333 = load ptr, ptr %332, align 8, !tbaa !187
  %334 = icmp eq ptr %333, null
  br i1 %334, label %335, label %341, !prof !484

335:                                              ; preds = %327
  %336 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %337 = load ptr, ptr @graph, align 8, !tbaa !187
  %338 = getelementptr inbounds %struct.constraint_graph, ptr %337, i64 0, i32 12
  %339 = load ptr, ptr %338, align 8, !tbaa !464
  %340 = getelementptr inbounds ptr, ptr %339, i64 %331
  store ptr %336, ptr %340, align 8, !tbaa !187
  br label %341

341:                                              ; preds = %335, %327
  %342 = load ptr, ptr @graph, align 8, !tbaa !187
  %343 = getelementptr inbounds %struct.constraint_graph, ptr %342, i64 0, i32 12
  %344 = load ptr, ptr %343, align 8, !tbaa !464
  %345 = getelementptr inbounds ptr, ptr %344, i64 %331
  %346 = load ptr, ptr %345, align 8, !tbaa !187
  %347 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %346, i32 noundef %233) #28
  %348 = load ptr, ptr @graph, align 8, !tbaa !187
  %349 = getelementptr inbounds %struct.constraint_graph, ptr %348, i64 0, i32 11
  %350 = load ptr, ptr %349, align 8, !tbaa !463
  %351 = zext i32 %233 to i64
  %352 = getelementptr inbounds ptr, ptr %350, i64 %351
  %353 = load ptr, ptr %352, align 8, !tbaa !187
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %361, !prof !485

355:                                              ; preds = %341
  %356 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %357 = load ptr, ptr @graph, align 8, !tbaa !187
  %358 = getelementptr inbounds %struct.constraint_graph, ptr %357, i64 0, i32 11
  %359 = load ptr, ptr %358, align 8, !tbaa !463
  %360 = getelementptr inbounds ptr, ptr %359, i64 %351
  store ptr %356, ptr %360, align 8, !tbaa !187
  br label %361

361:                                              ; preds = %355, %341
  %362 = load ptr, ptr @graph, align 8, !tbaa !187
  %363 = getelementptr inbounds %struct.constraint_graph, ptr %362, i64 0, i32 11
  %364 = load ptr, ptr %363, align 8, !tbaa !463
  %365 = getelementptr inbounds ptr, ptr %364, i64 %351
  %366 = load ptr, ptr %365, align 8, !tbaa !187
  %367 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %366, i32 noundef %227) #28
  %368 = load ptr, ptr @graph, align 8, !tbaa !187
  %369 = load ptr, ptr @varmap, align 8
  %370 = icmp eq ptr %369, null
  br i1 %370, label %373, label %371, !prof !486

371:                                              ; preds = %361
  %372 = load i32, ptr %369, align 8, !tbaa !219
  br label %373

373:                                              ; preds = %371, %361
  %374 = phi i32 [ %372, %371 ], [ 0, %361 ]
  %375 = add i32 %374, %227
  %376 = icmp eq i32 %375, %233
  br i1 %376, label %397, label %377, !prof !487

377:                                              ; preds = %373
  %378 = getelementptr inbounds %struct.constraint_graph, ptr %368, i64 0, i32 2
  %379 = load ptr, ptr %378, align 8, !tbaa !459
  %380 = zext i32 %375 to i64
  %381 = getelementptr inbounds ptr, ptr %379, i64 %380
  %382 = load ptr, ptr %381, align 8, !tbaa !187
  %383 = icmp eq ptr %382, null
  br i1 %383, label %384, label %388, !prof !488

384:                                              ; preds = %377
  %385 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %386 = load ptr, ptr %378, align 8, !tbaa !459
  %387 = getelementptr inbounds ptr, ptr %386, i64 %380
  store ptr %385, ptr %387, align 8, !tbaa !187
  br label %388

388:                                              ; preds = %384, %377
  %389 = load ptr, ptr %378, align 8, !tbaa !459
  %390 = getelementptr inbounds ptr, ptr %389, i64 %380
  %391 = load ptr, ptr %390, align 8, !tbaa !187
  %392 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %391, i32 noundef %233) #28
  %393 = icmp eq i8 %392, 0
  br i1 %393, label %397, label %394, !prof !489

394:                                              ; preds = %388
  %395 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !267
  %396 = add i32 %395, 1
  store i32 %396, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !267
  br label %397

397:                                              ; preds = %373, %388, %394
  %398 = load ptr, ptr @graph, align 8, !tbaa !187
  %399 = getelementptr inbounds %struct.constraint_graph, ptr %398, i64 0, i32 13
  %400 = load ptr, ptr %399, align 8, !tbaa !466
  %401 = load ptr, ptr %400, align 8, !tbaa !469
  %402 = icmp eq ptr %401, null
  br i1 %402, label %417, label %403, !prof !490

403:                                              ; preds = %397
  %404 = lshr i32 %233, 6
  %405 = zext nneg i32 %404 to i64
  %406 = getelementptr inbounds %struct.simple_bitmap_def, ptr %400, i64 0, i32 3, i64 %405
  %407 = load i64, ptr %406, align 8, !tbaa !231
  %408 = and i32 %233, 63
  %409 = zext nneg i32 %408 to i64
  %410 = shl nuw i64 1, %409
  %411 = and i64 %407, %410
  %412 = icmp eq i64 %411, 0
  br i1 %412, label %417, label %413

413:                                              ; preds = %403
  %414 = getelementptr inbounds i8, ptr %401, i64 %405
  %415 = load i8, ptr %414, align 1, !tbaa !198
  %416 = add i8 %415, -1
  store i8 %416, ptr %414, align 1, !tbaa !198
  br label %417

417:                                              ; preds = %413, %403, %397
  %418 = and i32 %233, 63
  %419 = zext nneg i32 %418 to i64
  %420 = shl nuw i64 1, %419
  %421 = xor i64 %420, -1
  %422 = lshr i32 %233, 6
  %423 = zext nneg i32 %422 to i64
  %424 = getelementptr inbounds %struct.simple_bitmap_def, ptr %400, i64 0, i32 3, i64 %423
  %425 = load i64, ptr %424, align 8, !tbaa !231
  %426 = and i64 %425, %421
  store i64 %426, ptr %424, align 8, !tbaa !231
  %427 = load ptr, ptr @varmap, align 8
  %428 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %427, i64 0, i32 2, i64 %351
  %429 = load ptr, ptr %428, align 8, !tbaa !187
  %430 = getelementptr inbounds %struct.variable_info, ptr %429, i64 0, i32 1
  %431 = load i8, ptr %430, align 4
  %432 = and i8 %431, 8
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %434, label %479, !prof !486

434:                                              ; preds = %417
  %435 = getelementptr inbounds %struct.variable_info, ptr %429, i64 0, i32 7
  %436 = load ptr, ptr %435, align 8, !tbaa !308
  %437 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %438 = tail call ptr @pointer_map_contains(ptr noundef %437, ptr noundef %436) #28
  %439 = icmp eq ptr %438, null
  br i1 %439, label %442, label %440

440:                                              ; preds = %434
  %441 = load ptr, ptr %438, align 8, !tbaa !187
  br label %442

442:                                              ; preds = %440, %434
  %443 = phi ptr [ %441, %440 ], [ null, %434 ]
  %444 = load ptr, ptr @graph, align 8, !tbaa !187
  %445 = getelementptr inbounds %struct.constraint_graph, ptr %444, i64 0, i32 13
  br label %446

446:                                              ; preds = %466, %442
  %447 = phi ptr [ %443, %442 ], [ %477, %466 ]
  %448 = load ptr, ptr %445, align 8, !tbaa !466
  %449 = load i32, ptr %447, align 8, !tbaa !372
  %450 = load ptr, ptr %448, align 8, !tbaa !469
  %451 = icmp eq ptr %450, null
  br i1 %451, label %466, label %452

452:                                              ; preds = %446
  %453 = lshr i32 %449, 6
  %454 = zext nneg i32 %453 to i64
  %455 = getelementptr inbounds %struct.simple_bitmap_def, ptr %448, i64 0, i32 3, i64 %454
  %456 = load i64, ptr %455, align 8, !tbaa !231
  %457 = and i32 %449, 63
  %458 = zext nneg i32 %457 to i64
  %459 = shl nuw i64 1, %458
  %460 = and i64 %456, %459
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %466, label %462

462:                                              ; preds = %452
  %463 = getelementptr inbounds i8, ptr %450, i64 %454
  %464 = load i8, ptr %463, align 1, !tbaa !198
  %465 = add i8 %464, -1
  store i8 %465, ptr %463, align 1, !tbaa !198
  br label %466

466:                                              ; preds = %446, %462, %452
  %467 = and i32 %449, 63
  %468 = zext nneg i32 %467 to i64
  %469 = shl nuw i64 1, %468
  %470 = xor i64 %469, -1
  %471 = lshr i32 %449, 6
  %472 = zext nneg i32 %471 to i64
  %473 = getelementptr inbounds %struct.simple_bitmap_def, ptr %448, i64 0, i32 3, i64 %472
  %474 = load i64, ptr %473, align 8, !tbaa !231
  %475 = and i64 %474, %470
  store i64 %475, ptr %473, align 8, !tbaa !231
  %476 = getelementptr inbounds %struct.variable_info, ptr %447, i64 0, i32 2
  %477 = load ptr, ptr %476, align 8, !tbaa !354
  %478 = icmp eq ptr %477, null
  br i1 %478, label %479, label %446, !llvm.loop !491

479:                                              ; preds = %466, %417
  %480 = load ptr, ptr @graph, align 8, !tbaa !187
  %481 = getelementptr inbounds %struct.constraint_graph, ptr %480, i64 0, i32 14
  %482 = load ptr, ptr %481, align 8, !tbaa !467
  %483 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %482, i32 noundef %233) #28
  br label %609

484:                                              ; preds = %267
  %485 = icmp ugt i32 %227, 1
  br i1 %485, label %486, label %543, !prof !492

486:                                              ; preds = %484
  %487 = icmp ne i32 %227, %233
  %488 = icmp eq i64 %229, 0
  %489 = select i1 %487, i1 %488, i1 false, !prof !493
  %490 = icmp eq i64 %235, 0
  %491 = select i1 %489, i1 %490, i1 false, !prof !493
  br i1 %491, label %492, label %543, !prof !494

492:                                              ; preds = %486
  %493 = load ptr, ptr @graph, align 8, !tbaa !187
  %494 = getelementptr inbounds %struct.constraint_graph, ptr %493, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !460
  %496 = zext i32 %227 to i64
  %497 = getelementptr inbounds ptr, ptr %495, i64 %496
  %498 = load ptr, ptr %497, align 8, !tbaa !187
  %499 = icmp eq ptr %498, null
  br i1 %499, label %500, label %504, !prof !495

500:                                              ; preds = %492
  %501 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %502 = load ptr, ptr %494, align 8, !tbaa !460
  %503 = getelementptr inbounds ptr, ptr %502, i64 %496
  store ptr %501, ptr %503, align 8, !tbaa !187
  br label %504

504:                                              ; preds = %500, %492
  %505 = load ptr, ptr %494, align 8, !tbaa !460
  %506 = getelementptr inbounds ptr, ptr %505, i64 %496
  %507 = load ptr, ptr %506, align 8, !tbaa !187
  %508 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %507, i32 noundef %233) #28
  %509 = load ptr, ptr @graph, align 8, !tbaa !187
  %510 = load ptr, ptr @varmap, align 8
  %511 = icmp eq ptr %510, null
  br i1 %511, label %514, label %512, !prof !496

512:                                              ; preds = %504
  %513 = load i32, ptr %510, align 8, !tbaa !219
  br label %514

514:                                              ; preds = %512, %504
  %515 = phi i32 [ %513, %512 ], [ 0, %504 ]
  %516 = add i32 %515, %227
  br i1 %511, label %519, label %517, !prof !496

517:                                              ; preds = %514
  %518 = load i32, ptr %510, align 8, !tbaa !219
  br label %519

519:                                              ; preds = %517, %514
  %520 = phi i32 [ %518, %517 ], [ 0, %514 ]
  %521 = add i32 %520, %233
  %522 = icmp eq i32 %516, %521
  br i1 %522, label %609, label %523, !prof !487

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.constraint_graph, ptr %509, i64 0, i32 2
  %525 = load ptr, ptr %524, align 8, !tbaa !459
  %526 = zext i32 %516 to i64
  %527 = getelementptr inbounds ptr, ptr %525, i64 %526
  %528 = load ptr, ptr %527, align 8, !tbaa !187
  %529 = icmp eq ptr %528, null
  br i1 %529, label %530, label %534, !prof !488

530:                                              ; preds = %523
  %531 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %532 = load ptr, ptr %524, align 8, !tbaa !459
  %533 = getelementptr inbounds ptr, ptr %532, i64 %526
  store ptr %531, ptr %533, align 8, !tbaa !187
  br label %534

534:                                              ; preds = %530, %523
  %535 = load ptr, ptr %524, align 8, !tbaa !459
  %536 = getelementptr inbounds ptr, ptr %535, i64 %526
  %537 = load ptr, ptr %536, align 8, !tbaa !187
  %538 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %537, i32 noundef %521) #28
  %539 = icmp eq i8 %538, 0
  br i1 %539, label %609, label %540, !prof !489

540:                                              ; preds = %534
  %541 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !267
  %542 = add i32 %541, 1
  store i32 %542, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !267
  br label %609

543:                                              ; preds = %486, %484
  %544 = icmp ne i64 %229, 0
  %545 = icmp ne i64 %235, 0
  %546 = select i1 %544, i1 true, i1 %545, !prof !497
  br i1 %546, label %547, label %609, !prof !498

547:                                              ; preds = %543
  br i1 %545, label %548, label %578, !prof !498

548:                                              ; preds = %547
  %549 = load ptr, ptr @graph, align 8, !tbaa !187
  %550 = getelementptr inbounds %struct.constraint_graph, ptr %549, i64 0, i32 13
  %551 = load ptr, ptr %550, align 8, !tbaa !466
  %552 = load ptr, ptr %551, align 8, !tbaa !469
  %553 = icmp eq ptr %552, null
  br i1 %553, label %568, label %554, !prof !498

554:                                              ; preds = %548
  %555 = lshr i32 %227, 6
  %556 = zext nneg i32 %555 to i64
  %557 = getelementptr inbounds %struct.simple_bitmap_def, ptr %551, i64 0, i32 3, i64 %556
  %558 = load i64, ptr %557, align 8, !tbaa !231
  %559 = and i32 %227, 63
  %560 = zext nneg i32 %559 to i64
  %561 = shl nuw i64 1, %560
  %562 = and i64 %558, %561
  %563 = icmp eq i64 %562, 0
  br i1 %563, label %568, label %564

564:                                              ; preds = %554
  %565 = getelementptr inbounds i8, ptr %552, i64 %556
  %566 = load i8, ptr %565, align 1, !tbaa !198
  %567 = add i8 %566, -1
  store i8 %567, ptr %565, align 1, !tbaa !198
  br label %568

568:                                              ; preds = %564, %554, %548
  %569 = and i32 %227, 63
  %570 = zext nneg i32 %569 to i64
  %571 = shl nuw i64 1, %570
  %572 = xor i64 %571, -1
  %573 = lshr i32 %227, 6
  %574 = zext nneg i32 %573 to i64
  %575 = getelementptr inbounds %struct.simple_bitmap_def, ptr %551, i64 0, i32 3, i64 %574
  %576 = load i64, ptr %575, align 8, !tbaa !231
  %577 = and i64 %576, %572
  store i64 %577, ptr %575, align 8, !tbaa !231
  br label %609

578:                                              ; preds = %547
  br i1 %544, label %579, label %609

579:                                              ; preds = %578
  %580 = load ptr, ptr @graph, align 8, !tbaa !187
  %581 = getelementptr inbounds %struct.constraint_graph, ptr %580, i64 0, i32 13
  %582 = load ptr, ptr %581, align 8, !tbaa !466
  %583 = load ptr, ptr %582, align 8, !tbaa !469
  %584 = icmp eq ptr %583, null
  br i1 %584, label %599, label %585

585:                                              ; preds = %579
  %586 = lshr i32 %233, 6
  %587 = zext nneg i32 %586 to i64
  %588 = getelementptr inbounds %struct.simple_bitmap_def, ptr %582, i64 0, i32 3, i64 %587
  %589 = load i64, ptr %588, align 8, !tbaa !231
  %590 = and i32 %233, 63
  %591 = zext nneg i32 %590 to i64
  %592 = shl nuw i64 1, %591
  %593 = and i64 %589, %592
  %594 = icmp eq i64 %593, 0
  br i1 %594, label %599, label %595

595:                                              ; preds = %585
  %596 = getelementptr inbounds i8, ptr %583, i64 %587
  %597 = load i8, ptr %596, align 1, !tbaa !198
  %598 = add i8 %597, -1
  store i8 %598, ptr %596, align 1, !tbaa !198
  br label %599

599:                                              ; preds = %595, %585, %579
  %600 = and i32 %233, 63
  %601 = zext nneg i32 %600 to i64
  %602 = shl nuw i64 1, %601
  %603 = xor i64 %602, -1
  %604 = lshr i32 %233, 6
  %605 = zext nneg i32 %604 to i64
  %606 = getelementptr inbounds %struct.simple_bitmap_def, ptr %582, i64 0, i32 3, i64 %605
  %607 = load i64, ptr %606, align 8, !tbaa !231
  %608 = and i64 %607, %603
  store i64 %608, ptr %606, align 8, !tbaa !231
  br label %609

609:                                              ; preds = %540, %534, %519, %599, %578, %568, %543, %479, %317, %293, %262, %237
  %610 = add nuw i64 %211, 1
  br label %210, !llvm.loop !499

611:                                              ; preds = %221
  %612 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %613 = icmp eq ptr %612, null
  br i1 %613, label %616, label %614, !prof !272

614:                                              ; preds = %611
  %615 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 44, i64 1, ptr nonnull %612)
  br label %616

616:                                              ; preds = %614, %611
  %617 = load ptr, ptr @graph, align 8, !tbaa !187
  %618 = load i32, ptr %617, align 8, !tbaa !221
  %619 = zext i32 %618 to i64
  %620 = tail call fastcc ptr @init_scc_info(i64 noundef %619)
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #28
  %621 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #28
  store ptr %621, ptr @pointer_equiv_class_table, align 8, !tbaa !187
  %622 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #28
  store ptr %622, ptr @location_equiv_class_table, align 8, !tbaa !187
  store i32 1, ptr @pointer_equiv_class, align 4, !tbaa !202
  store i32 1, ptr @location_equiv_class, align 4, !tbaa !202
  %623 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  br label %624

624:                                              ; preds = %649, %616
  %625 = phi i64 [ %650, %649 ], [ 0, %616 ]
  %626 = load ptr, ptr @varmap, align 8
  %627 = icmp eq ptr %626, null
  br i1 %627, label %630, label %628, !prof !304

628:                                              ; preds = %624
  %629 = load i32, ptr %626, align 8, !tbaa !219
  br label %630

630:                                              ; preds = %628, %624
  %631 = phi i32 [ %629, %628 ], [ 0, %624 ]
  %632 = zext i32 %631 to i64
  %633 = icmp ult i64 %625, %632
  %634 = load ptr, ptr %620, align 8, !tbaa !500
  br i1 %633, label %635, label %651, !prof !305

635:                                              ; preds = %630
  %636 = load ptr, ptr %623, align 8, !tbaa !502
  %637 = getelementptr inbounds i32, ptr %636, i64 %625
  %638 = load i32, ptr %637, align 4, !tbaa !202
  %639 = lshr i32 %638, 6
  %640 = zext nneg i32 %639 to i64
  %641 = getelementptr inbounds %struct.simple_bitmap_def, ptr %634, i64 0, i32 3, i64 %640
  %642 = load i64, ptr %641, align 8, !tbaa !231
  %643 = and i32 %638, 63
  %644 = zext nneg i32 %643 to i64
  %645 = shl nuw i64 1, %644
  %646 = and i64 %645, %642
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %648, label %649, !prof !503

648:                                              ; preds = %635
  tail call fastcc void @condense_visit(ptr noundef nonnull %617, ptr noundef nonnull %620, i32 noundef %638)
  br label %649

649:                                              ; preds = %648, %635
  %650 = add nuw nsw i64 %625, 1
  br label %624, !llvm.loop !504

651:                                              ; preds = %630
  tail call void @sbitmap_zero(ptr noundef %634) #28
  %652 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  br label %653

653:                                              ; preds = %684, %651
  %654 = phi i64 [ %685, %684 ], [ 0, %651 ]
  %655 = load ptr, ptr @varmap, align 8
  %656 = icmp eq ptr %655, null
  br i1 %656, label %659, label %657, !prof !304

657:                                              ; preds = %653
  %658 = load i32, ptr %655, align 8, !tbaa !219
  br label %659

659:                                              ; preds = %657, %653
  %660 = phi i32 [ %658, %657 ], [ 0, %653 ]
  %661 = zext i32 %660 to i64
  %662 = icmp ult i64 %654, %661
  br i1 %662, label %669, label %663, !prof !305

663:                                              ; preds = %659
  %664 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 11
  %665 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 9
  %666 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  %667 = getelementptr inbounds %struct.equiv_class_label, ptr %1, i64 0, i32 2
  %668 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 10
  br label %686

669:                                              ; preds = %659
  %670 = load ptr, ptr %620, align 8, !tbaa !500
  %671 = load ptr, ptr %652, align 8, !tbaa !502
  %672 = getelementptr inbounds i32, ptr %671, i64 %654
  %673 = load i32, ptr %672, align 4, !tbaa !202
  %674 = lshr i32 %673, 6
  %675 = zext nneg i32 %674 to i64
  %676 = getelementptr inbounds %struct.simple_bitmap_def, ptr %670, i64 0, i32 3, i64 %675
  %677 = load i64, ptr %676, align 8, !tbaa !231
  %678 = and i32 %673, 63
  %679 = zext nneg i32 %678 to i64
  %680 = shl nuw i64 1, %679
  %681 = and i64 %680, %677
  %682 = icmp eq i64 %681, 0
  br i1 %682, label %683, label %684, !prof !505

683:                                              ; preds = %669
  tail call fastcc void @label_visit(ptr noundef nonnull %617, ptr noundef nonnull %620, i32 noundef %673)
  br label %684

684:                                              ; preds = %683, %669
  %685 = add nuw nsw i64 %654, 1
  br label %653, !llvm.loop !506

686:                                              ; preds = %663, %839
  %687 = phi i64 [ 0, %663 ], [ %840, %839 ]
  %688 = load ptr, ptr @varmap, align 8
  %689 = icmp eq ptr %688, null
  br i1 %689, label %692, label %690, !prof !304

690:                                              ; preds = %686
  %691 = load i32, ptr %688, align 8, !tbaa !219
  br label %692

692:                                              ; preds = %690, %686
  %693 = phi i32 [ %691, %690 ], [ 0, %686 ]
  %694 = zext i32 %693 to i64
  %695 = icmp ult i64 %687, %694
  br i1 %695, label %696, label %841, !prof !305

696:                                              ; preds = %692
  %697 = load ptr, ptr %664, align 8, !tbaa !463
  %698 = getelementptr inbounds ptr, ptr %697, i64 %687
  %699 = load ptr, ptr %698, align 8, !tbaa !187
  %700 = icmp eq ptr %699, null
  br i1 %700, label %839, label %701, !prof !507

701:                                              ; preds = %696
  %702 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #28
  %703 = load ptr, ptr %664, align 8, !tbaa !463
  %704 = getelementptr inbounds ptr, ptr %703, i64 %687
  %705 = load ptr, ptr %704, align 8, !tbaa !187
  %706 = load ptr, ptr %705, align 8, !tbaa !227
  %707 = icmp eq ptr %706, null
  %708 = select i1 %707, ptr @bitmap_zero_bits, ptr %706, !prof !508
  %709 = getelementptr inbounds %struct.bitmap_element_def, ptr %708, i64 0, i32 2
  %710 = load i32, ptr %709, align 8, !tbaa !229
  %711 = shl i32 %710, 7
  %712 = getelementptr inbounds %struct.bitmap_element_def, ptr %708, i64 0, i32 3
  %713 = load i64, ptr %712, align 8, !tbaa !231
  %714 = icmp eq i64 %713, 0
  %715 = zext i1 %714 to i32
  %716 = or disjoint i32 %711, %715
  br label %717

717:                                              ; preds = %778, %701
  %718 = phi i32 [ 0, %701 ], [ %773, %778 ]
  %719 = phi i64 [ %713, %701 ], [ %788, %778 ]
  %720 = phi ptr [ %708, %701 ], [ %775, %778 ]
  %721 = phi i32 [ %716, %701 ], [ %789, %778 ]
  %722 = icmp eq i64 %719, 0
  br i1 %722, label %737, label %723, !prof !509

723:                                              ; preds = %751, %717
  %724 = phi i32 [ %718, %717 ], [ %752, %751 ]
  %725 = phi i64 [ %719, %717 ], [ %756, %751 ]
  %726 = phi ptr [ %720, %717 ], [ %743, %751 ]
  %727 = phi i32 [ %721, %717 ], [ %753, %751 ]
  %728 = and i64 %725, 1
  %729 = icmp eq i64 %728, 0
  br i1 %729, label %730, label %772, !prof !510

730:                                              ; preds = %723, %730
  %731 = phi i32 [ %734, %730 ], [ %727, %723 ]
  %732 = phi i64 [ %733, %730 ], [ %725, %723 ]
  %733 = lshr exact i64 %732, 1
  %734 = add i32 %731, 1
  %735 = and i64 %732, 2
  %736 = icmp eq i64 %735, 0
  br i1 %736, label %730, label %772, !prof !511, !llvm.loop !232

737:                                              ; preds = %717
  %738 = add i32 %721, 63
  %739 = and i32 %738, -64
  %740 = add i32 %718, 1
  br label %741

741:                                              ; preds = %768, %737
  %742 = phi i64 [ %719, %737 ], [ %763, %768 ]
  %743 = phi ptr [ %720, %737 ], [ %766, %768 ]
  %744 = phi i32 [ %739, %737 ], [ %771, %768 ]
  %745 = phi i32 [ %740, %737 ], [ 0, %768 ]
  %746 = icmp eq i32 %745, 2
  br i1 %746, label %762, label %747, !prof !512

747:                                              ; preds = %741
  %748 = add i32 %744, 128
  %749 = shl i32 %745, 6
  %750 = sub i32 %748, %749
  br label %751

751:                                              ; preds = %747, %758
  %752 = phi i32 [ %760, %758 ], [ %745, %747 ]
  %753 = phi i32 [ %759, %758 ], [ %744, %747 ]
  %754 = zext i32 %752 to i64
  %755 = getelementptr inbounds %struct.bitmap_element_def, ptr %743, i64 0, i32 3, i64 %754
  %756 = load i64, ptr %755, align 8, !tbaa !231
  %757 = icmp eq i64 %756, 0
  br i1 %757, label %758, label %723, !prof !513

758:                                              ; preds = %751
  %759 = add i32 %753, 64
  %760 = add i32 %752, 1
  %761 = icmp eq i32 %760, 2
  br i1 %761, label %762, label %751, !prof !514, !llvm.loop !233

762:                                              ; preds = %758, %741
  %763 = phi i64 [ %742, %741 ], [ %756, %758 ]
  %764 = phi i32 [ %744, %741 ], [ %750, %758 ]
  %765 = phi i32 [ %745, %741 ], [ 2, %758 ]
  %766 = load ptr, ptr %743, align 8, !tbaa !234
  %767 = icmp eq ptr %766, null
  br i1 %767, label %772, label %768, !prof !515

768:                                              ; preds = %762
  %769 = getelementptr inbounds %struct.bitmap_element_def, ptr %766, i64 0, i32 2
  %770 = load i32, ptr %769, align 8, !tbaa !229
  %771 = shl i32 %770, 7
  br label %741, !llvm.loop !235

772:                                              ; preds = %762, %730, %723
  %773 = phi i32 [ %724, %723 ], [ %724, %730 ], [ %765, %762 ]
  %774 = phi i64 [ %725, %723 ], [ %733, %730 ], [ %763, %762 ]
  %775 = phi ptr [ %726, %723 ], [ %726, %730 ], [ %766, %762 ]
  %776 = phi i32 [ %727, %723 ], [ %734, %730 ], [ %764, %762 ]
  %777 = phi i1 [ false, %723 ], [ false, %730 ], [ true, %762 ]
  br i1 %777, label %790, label %778, !prof !516

778:                                              ; preds = %772
  %779 = load ptr, ptr %665, align 8, !tbaa !461
  %780 = load ptr, ptr %666, align 8, !tbaa !502
  %781 = zext i32 %776 to i64
  %782 = getelementptr inbounds i32, ptr %780, i64 %781
  %783 = load i32, ptr %782, align 4, !tbaa !202
  %784 = zext i32 %783 to i64
  %785 = getelementptr inbounds i32, ptr %779, i64 %784
  %786 = load i32, ptr %785, align 4, !tbaa !202
  %787 = call zeroext i8 @bitmap_set_bit(ptr noundef %702, i32 noundef %786) #28
  %788 = lshr i64 %774, 1
  %789 = add i32 %776, 1
  br label %717, !llvm.loop !517

790:                                              ; preds = %772
  %791 = load ptr, ptr %664, align 8, !tbaa !463
  %792 = getelementptr inbounds ptr, ptr %791, i64 %687
  %793 = load ptr, ptr %792, align 8, !tbaa !187
  call void @bitmap_obstack_free(ptr noundef %793) #28
  %794 = load ptr, ptr %664, align 8, !tbaa !463
  %795 = getelementptr inbounds ptr, ptr %794, i64 %687
  store ptr null, ptr %795, align 8, !tbaa !187
  %796 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #28
  store ptr %702, ptr %667, align 8, !tbaa !518
  %797 = call i32 @bitmap_hash(ptr noundef %702) #28
  store i32 %797, ptr %1, align 8, !tbaa !520
  %798 = call ptr @htab_find_slot_with_hash(ptr noundef %796, ptr noundef nonnull %1, i32 noundef %797, i32 noundef 0) #28
  %799 = icmp eq ptr %798, null
  br i1 %799, label %804, label %800, !prof !521

800:                                              ; preds = %790
  %801 = load ptr, ptr %798, align 8, !tbaa !187
  %802 = getelementptr inbounds %struct.equiv_class_label, ptr %801, i64 0, i32 1
  %803 = load i32, ptr %802, align 4, !tbaa !522
  br label %804

804:                                              ; preds = %790, %800
  %805 = phi i32 [ %803, %800 ], [ 0, %790 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #28
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %807, label %820, !prof !523

807:                                              ; preds = %804
  %808 = load i32, ptr @location_equiv_class, align 4, !tbaa !202
  %809 = add nsw i32 %808, 1
  store i32 %809, ptr @location_equiv_class, align 4, !tbaa !202
  %810 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !187
  %811 = call ptr @xmalloc(i64 noundef 16) #28
  %812 = getelementptr inbounds %struct.equiv_class_label, ptr %811, i64 0, i32 2
  store ptr %702, ptr %812, align 8, !tbaa !518
  %813 = getelementptr inbounds %struct.equiv_class_label, ptr %811, i64 0, i32 1
  store i32 %808, ptr %813, align 4, !tbaa !522
  %814 = call i32 @bitmap_hash(ptr noundef %702) #28
  store i32 %814, ptr %811, align 8, !tbaa !520
  %815 = call ptr @htab_find_slot_with_hash(ptr noundef %810, ptr noundef nonnull %811, i32 noundef %814, i32 noundef 1) #28
  %816 = load ptr, ptr %815, align 8, !tbaa !187
  %817 = icmp eq ptr %816, null
  br i1 %817, label %819, label %818, !prof !524

818:                                              ; preds = %807
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1916, ptr noundef nonnull @.str.4) #28
  br label %819

819:                                              ; preds = %807, %818
  store ptr %811, ptr %815, align 8, !tbaa !187
  br label %835

820:                                              ; preds = %804
  %821 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %822 = icmp eq ptr %821, null
  br i1 %822, label %834, label %823, !prof !525

823:                                              ; preds = %820
  %824 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %825 = and i32 %824, 8
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %834, label %827

827:                                              ; preds = %823
  %828 = load ptr, ptr @varmap, align 8
  %829 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %828, i64 0, i32 2, i64 %687
  %830 = load ptr, ptr %829, align 8, !tbaa !187
  %831 = getelementptr inbounds %struct.variable_info, ptr %830, i64 0, i32 6
  %832 = load ptr, ptr %831, align 8, !tbaa !210
  %833 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %821, ptr noundef nonnull @.str.77, ptr noundef %832)
  br label %834

834:                                              ; preds = %827, %823, %820
  call void @bitmap_obstack_free(ptr noundef %702) #28
  br label %835

835:                                              ; preds = %834, %819
  %836 = phi i32 [ %808, %819 ], [ %805, %834 ]
  %837 = load ptr, ptr %668, align 8, !tbaa !462
  %838 = getelementptr inbounds i32, ptr %837, i64 %687
  store i32 %836, ptr %838, align 4, !tbaa !202
  br label %839

839:                                              ; preds = %835, %696
  %840 = add nuw nsw i64 %687, 1
  br label %686, !llvm.loop !526

841:                                              ; preds = %692
  %842 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %843 = icmp eq ptr %842, null
  br i1 %843, label %892, label %844, !prof !272

844:                                              ; preds = %841
  %845 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %846 = and i32 %845, 8
  %847 = icmp eq i32 %846, 0
  br i1 %847, label %892, label %848

848:                                              ; preds = %844
  %849 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 13
  %850 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 9
  %851 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  %852 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 10
  br label %853

853:                                              ; preds = %848, %863
  %854 = phi i64 [ 0, %848 ], [ %891, %863 ]
  %855 = load ptr, ptr @varmap, align 8
  %856 = icmp eq ptr %855, null
  br i1 %856, label %859, label %857

857:                                              ; preds = %853
  %858 = load i32, ptr %855, align 8, !tbaa !219
  br label %859

859:                                              ; preds = %857, %853
  %860 = phi i32 [ %858, %857 ], [ 0, %853 ]
  %861 = zext i32 %860 to i64
  %862 = icmp ult i64 %854, %861
  br i1 %862, label %863, label %892

863:                                              ; preds = %859
  %864 = load ptr, ptr %849, align 8, !tbaa !466
  %865 = lshr i64 %854, 6
  %866 = and i64 %865, 67108863
  %867 = getelementptr inbounds %struct.simple_bitmap_def, ptr %864, i64 0, i32 3, i64 %866
  %868 = load i64, ptr %867, align 8, !tbaa !231
  %869 = and i64 %854, 63
  %870 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %871 = shl nuw i64 1, %869
  %872 = and i64 %868, %871
  %873 = icmp eq i64 %872, 0
  %874 = select i1 %873, ptr @.str.80, ptr @.str.79
  %875 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %855, i64 0, i32 2, i64 %854
  %876 = load ptr, ptr %875, align 8, !tbaa !187
  %877 = getelementptr inbounds %struct.variable_info, ptr %876, i64 0, i32 6
  %878 = load ptr, ptr %877, align 8, !tbaa !210
  %879 = load ptr, ptr %850, align 8, !tbaa !461
  %880 = load ptr, ptr %851, align 8, !tbaa !502
  %881 = getelementptr inbounds i32, ptr %880, i64 %854
  %882 = load i32, ptr %881, align 4, !tbaa !202
  %883 = zext i32 %882 to i64
  %884 = getelementptr inbounds i32, ptr %879, i64 %883
  %885 = load i32, ptr %884, align 4, !tbaa !202
  %886 = load ptr, ptr %852, align 8, !tbaa !462
  %887 = getelementptr inbounds i32, ptr %886, i64 %883
  %888 = load i32, ptr %887, align 4, !tbaa !202
  %889 = trunc i64 %854 to i32
  %890 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %870, ptr noundef nonnull @.str.78, ptr noundef nonnull %874, i32 noundef %889, ptr noundef %878, i32 noundef %885, i32 noundef %888)
  %891 = add nuw nsw i64 %854, 1
  br label %853, !llvm.loop !527

892:                                              ; preds = %859, %844, %841
  %893 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  %894 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 9
  %895 = getelementptr inbounds %struct.constraint_graph, ptr %617, i64 0, i32 1
  br label %896

896:                                              ; preds = %938, %892
  %897 = phi i64 [ %939, %938 ], [ 0, %892 ]
  %898 = load ptr, ptr @varmap, align 8
  %899 = icmp eq ptr %898, null
  br i1 %899, label %902, label %900, !prof !304

900:                                              ; preds = %896
  %901 = load i32, ptr %898, align 8, !tbaa !219
  br label %902

902:                                              ; preds = %900, %896
  %903 = phi i32 [ %901, %900 ], [ 0, %896 ]
  %904 = zext i32 %903 to i64
  %905 = icmp ult i64 %897, %904
  br i1 %905, label %906, label %940, !prof !305

906:                                              ; preds = %902
  %907 = load ptr, ptr %893, align 8, !tbaa !502
  %908 = getelementptr inbounds i32, ptr %907, i64 %897
  %909 = load i32, ptr %908, align 4, !tbaa !202
  %910 = load ptr, ptr %894, align 8, !tbaa !461
  %911 = zext i32 %909 to i64
  %912 = getelementptr inbounds i32, ptr %910, i64 %911
  %913 = load i32, ptr %912, align 4, !tbaa !202
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %938, !prof !528

915:                                              ; preds = %906
  %916 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %917 = icmp eq ptr %916, null
  br i1 %917, label %928, label %918, !prof !529

918:                                              ; preds = %915
  %919 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %920 = and i32 %919, 8
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %928, label %922

922:                                              ; preds = %918
  %923 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %898, i64 0, i32 2, i64 %911
  %924 = load ptr, ptr %923, align 8, !tbaa !187
  %925 = getelementptr inbounds %struct.variable_info, ptr %924, i64 0, i32 6
  %926 = load ptr, ptr %925, align 8, !tbaa !210
  %927 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %916, ptr noundef nonnull @.str.81, ptr noundef %926)
  br label %928

928:                                              ; preds = %922, %918, %915
  %929 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !262
  %930 = add i32 %929, 1
  store i32 %930, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !262
  %931 = load ptr, ptr %895, align 8, !tbaa !330
  %932 = getelementptr inbounds ptr, ptr %931, i64 %911
  %933 = load ptr, ptr %932, align 8, !tbaa !187
  %934 = icmp eq ptr %933, null
  br i1 %934, label %938, label %935, !prof !529

935:                                              ; preds = %928
  call void @bitmap_obstack_free(ptr noundef nonnull %933) #28
  %936 = load ptr, ptr %895, align 8, !tbaa !330
  %937 = getelementptr inbounds ptr, ptr %936, i64 %911
  store ptr null, ptr %937, align 8, !tbaa !187
  br label %938

938:                                              ; preds = %935, %928, %906
  %939 = add nuw nsw i64 %897, 1
  br label %896, !llvm.loop !530

940:                                              ; preds = %902
  %941 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %942 = icmp eq ptr %941, null
  br i1 %942, label %945, label %943, !prof !272

943:                                              ; preds = %940
  %944 = call i64 @fwrite(ptr nonnull @.str.73, i64 45, i64 1, ptr nonnull %941)
  br label %945

945:                                              ; preds = %943, %940
  %946 = load ptr, ptr @graph, align 8, !tbaa !187
  %947 = load i32, ptr %946, align 8, !tbaa !221
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %961, !prof !280

949:                                              ; preds = %966, %945
  %950 = getelementptr inbounds %struct.scc_info, ptr %620, i64 0, i32 3
  %951 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 9
  %952 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 14
  %953 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 7
  %954 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 8
  %955 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 6
  %956 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 8
  %957 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 7
  %958 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 8
  %959 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 6
  %960 = getelementptr inbounds %struct.constraint_graph, ptr %946, i64 0, i32 8
  br label %970

961:                                              ; preds = %945, %966
  %962 = phi i32 [ %967, %966 ], [ 0, %945 ]
  %963 = call fastcc i32 @find(i32 noundef %962)
  %964 = icmp eq i32 %963, %962
  br i1 %964, label %966, label %965, !prof !531

965:                                              ; preds = %961
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2347, ptr noundef nonnull @.str.4) #28
  br label %966

966:                                              ; preds = %965, %961
  %967 = add nuw i32 %962, 1
  %968 = load i32, ptr %946, align 8, !tbaa !221
  %969 = icmp ult i32 %967, %968
  br i1 %969, label %961, label %949, !prof !457, !llvm.loop !532

970:                                              ; preds = %949, %1153
  %971 = phi i64 [ 0, %949 ], [ %1154, %1153 ]
  %972 = load ptr, ptr @constraints, align 8
  %973 = icmp eq ptr %972, null
  br i1 %973, label %981, label %974, !prof !475

974:                                              ; preds = %970
  %975 = load i32, ptr %972, align 8, !tbaa !216
  %976 = zext i32 %975 to i64
  %977 = icmp ult i64 %971, %976
  br i1 %977, label %978, label %981, !prof !476

978:                                              ; preds = %974
  %979 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %972, i64 0, i32 2, i64 %971
  %980 = load ptr, ptr %979, align 8, !tbaa !187
  br label %981

981:                                              ; preds = %978, %974, %970
  %982 = phi ptr [ %980, %978 ], [ null, %974 ], [ null, %970 ]
  %983 = phi i1 [ false, %978 ], [ true, %974 ], [ true, %970 ]
  br i1 %983, label %1155, label %984, !prof !477

984:                                              ; preds = %981
  %985 = getelementptr inbounds i8, ptr %982, i64 4
  %986 = load i32, ptr %985, align 4, !tbaa.struct !408
  %987 = getelementptr inbounds %struct.constraint, ptr %982, i64 0, i32 1, i32 1
  %988 = load i32, ptr %987, align 4, !tbaa.struct !408
  %989 = call fastcc i32 @find(i32 noundef %986)
  %990 = call fastcc i32 @find(i32 noundef %988)
  %991 = load ptr, ptr %950, align 8, !tbaa !502
  %992 = zext i32 %989 to i64
  %993 = getelementptr inbounds i32, ptr %991, i64 %992
  %994 = load i32, ptr %993, align 4, !tbaa !202
  %995 = zext i32 %990 to i64
  %996 = getelementptr inbounds i32, ptr %991, i64 %995
  %997 = load i32, ptr %996, align 4, !tbaa !202
  %998 = load ptr, ptr %951, align 8, !tbaa !461
  %999 = zext i32 %994 to i64
  %1000 = getelementptr inbounds i32, ptr %998, i64 %999
  %1001 = load i32, ptr %1000, align 4, !tbaa !202
  %1002 = zext i32 %997 to i64
  %1003 = getelementptr inbounds i32, ptr %998, i64 %1002
  %1004 = load i32, ptr %1003, align 4, !tbaa !202
  %1005 = icmp eq i32 %1001, 0
  br i1 %1005, label %1006, label %1025, !prof !533

1006:                                             ; preds = %984
  %1007 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1008 = icmp eq ptr %1007, null
  br i1 %1008, label %1022, label %1009

1009:                                             ; preds = %1006
  %1010 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %1011 = and i32 %1010, 8
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1022, label %1013

1013:                                             ; preds = %1009
  %1014 = load ptr, ptr @varmap, align 8
  %1015 = zext i32 %986 to i64
  %1016 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1014, i64 0, i32 2, i64 %1015
  %1017 = load ptr, ptr %1016, align 8, !tbaa !187
  %1018 = getelementptr inbounds %struct.variable_info, ptr %1017, i64 0, i32 6
  %1019 = load ptr, ptr %1018, align 8, !tbaa !210
  %1020 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1007, ptr noundef nonnull @.str.82, ptr noundef %1019)
  %1021 = load ptr, ptr @dump_file, align 8, !tbaa !187
  call fastcc void @dump_constraint(ptr noundef %1021, ptr noundef %982)
  br label %1022

1022:                                             ; preds = %1013, %1009, %1006
  %1023 = load ptr, ptr @constraints, align 8
  %1024 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %1023, i64 0, i32 2, i64 %971
  store ptr null, ptr %1024, align 8, !tbaa !187
  br label %1153

1025:                                             ; preds = %984
  %1026 = icmp eq i32 %1004, 0
  br i1 %1026, label %1027, label %1046, !prof !533

1027:                                             ; preds = %1025
  %1028 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1043, label %1030

1030:                                             ; preds = %1027
  %1031 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %1032 = and i32 %1031, 8
  %1033 = icmp eq i32 %1032, 0
  br i1 %1033, label %1043, label %1034

1034:                                             ; preds = %1030
  %1035 = load ptr, ptr @varmap, align 8
  %1036 = zext i32 %988 to i64
  %1037 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1035, i64 0, i32 2, i64 %1036
  %1038 = load ptr, ptr %1037, align 8, !tbaa !187
  %1039 = getelementptr inbounds %struct.variable_info, ptr %1038, i64 0, i32 6
  %1040 = load ptr, ptr %1039, align 8, !tbaa !210
  %1041 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %1028, ptr noundef nonnull @.str.82, ptr noundef %1040)
  %1042 = load ptr, ptr @dump_file, align 8, !tbaa !187
  call fastcc void @dump_constraint(ptr noundef %1042, ptr noundef %982)
  br label %1043

1043:                                             ; preds = %1034, %1030, %1027
  %1044 = load ptr, ptr @constraints, align 8
  %1045 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %1044, i64 0, i32 2, i64 %971
  store ptr null, ptr %1045, align 8, !tbaa !187
  br label %1153

1046:                                             ; preds = %1025
  %1047 = load ptr, ptr %952, align 8, !tbaa !467
  %1048 = call i32 @bitmap_bit_p(ptr noundef %1047, i32 noundef %989) #28
  %1049 = icmp eq i32 %1048, 0
  %1050 = load i32, ptr %946, align 8, !tbaa !221
  %1051 = icmp ugt i32 %1050, %1001
  br i1 %1049, label %1052, label %1087, !prof !534

1052:                                             ; preds = %1046
  br i1 %1051, label %1054, label %1053, !prof !535

1053:                                             ; preds = %1052
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2246, ptr noundef nonnull @.str.4) #28
  br label %1054

1054:                                             ; preds = %1053, %1052
  %1055 = load ptr, ptr %955, align 8, !tbaa !465
  %1056 = zext i32 %1001 to i64
  %1057 = getelementptr inbounds i32, ptr %1055, i64 %1056
  %1058 = load i32, ptr %1057, align 4, !tbaa !202
  %1059 = icmp eq i32 %1058, -1
  br i1 %1059, label %1084, label %1060, !prof !536

1060:                                             ; preds = %1054
  %1061 = load ptr, ptr @graph, align 8, !tbaa !187
  %1062 = load i32, ptr %1061, align 8, !tbaa !221
  %1063 = icmp ugt i32 %1062, %1058
  %1064 = icmp ugt i32 %1062, %989
  %1065 = and i1 %1063, %1064
  br i1 %1065, label %1067, label %1066, !prof !537

1066:                                             ; preds = %1060
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 534, ptr noundef nonnull @.str.4) #28
  br label %1067

1067:                                             ; preds = %1066, %1060
  %1068 = icmp eq i32 %1058, %989
  br i1 %1068, label %1080, label %1069, !prof !538

1069:                                             ; preds = %1067
  %1070 = load ptr, ptr @graph, align 8, !tbaa !187
  %1071 = getelementptr inbounds %struct.constraint_graph, ptr %1070, i64 0, i32 5
  %1072 = load ptr, ptr %1071, align 8, !tbaa !223
  %1073 = getelementptr inbounds i32, ptr %1072, i64 %992
  %1074 = load i32, ptr %1073, align 4, !tbaa !202
  %1075 = icmp eq i32 %1074, %1058
  br i1 %1075, label %1080, label %1076, !prof !539

1076:                                             ; preds = %1069
  store i32 %1058, ptr %1073, align 4, !tbaa !202
  %1077 = load ptr, ptr %955, align 8, !tbaa !465
  %1078 = getelementptr inbounds i32, ptr %1077, i64 %1056
  %1079 = load i32, ptr %1078, align 4, !tbaa !202
  call fastcc void @unify_nodes(ptr noundef nonnull %946, i32 noundef %1079, i32 noundef %989, i8 noundef zeroext 0)
  br label %1080

1080:                                             ; preds = %1076, %1069, %1067
  %1081 = load ptr, ptr %955, align 8, !tbaa !465
  %1082 = getelementptr inbounds i32, ptr %1081, i64 %1056
  %1083 = load i32, ptr %1082, align 4, !tbaa !202
  br label %1098

1084:                                             ; preds = %1054
  store i32 %989, ptr %1057, align 4, !tbaa !202
  %1085 = load ptr, ptr %956, align 8, !tbaa !332
  %1086 = getelementptr inbounds i32, ptr %1085, i64 %1056
  store i32 %989, ptr %1086, align 4, !tbaa !202
  br label %1098

1087:                                             ; preds = %1046
  br i1 %1051, label %1089, label %1088, !prof !540

1088:                                             ; preds = %1087
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2263, ptr noundef nonnull @.str.4) #28
  br label %1089

1089:                                             ; preds = %1088, %1087
  %1090 = load ptr, ptr %953, align 8, !tbaa !331
  %1091 = getelementptr inbounds i32, ptr %1090, i64 %992
  store i32 %1001, ptr %1091, align 4, !tbaa !202
  %1092 = load ptr, ptr %954, align 8, !tbaa !332
  %1093 = zext i32 %1001 to i64
  %1094 = getelementptr inbounds i32, ptr %1092, i64 %1093
  %1095 = load i32, ptr %1094, align 4, !tbaa !202
  %1096 = icmp eq i32 %1095, -1
  br i1 %1096, label %1097, label %1098, !prof !541

1097:                                             ; preds = %1089
  store i32 %989, ptr %1094, align 4, !tbaa !202
  br label %1098

1098:                                             ; preds = %1080, %1084, %1089, %1097
  %1099 = phi i32 [ %1083, %1080 ], [ %989, %1089 ], [ %989, %1097 ], [ %989, %1084 ]
  %1100 = load ptr, ptr %952, align 8, !tbaa !467
  %1101 = call i32 @bitmap_bit_p(ptr noundef %1100, i32 noundef %990) #28
  %1102 = icmp eq i32 %1101, 0
  %1103 = load i32, ptr %946, align 8, !tbaa !221
  %1104 = icmp ugt i32 %1103, %1004
  br i1 %1102, label %1105, label %1140, !prof !534

1105:                                             ; preds = %1098
  br i1 %1104, label %1107, label %1106, !prof !535

1106:                                             ; preds = %1105
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2246, ptr noundef nonnull @.str.4) #28
  br label %1107

1107:                                             ; preds = %1106, %1105
  %1108 = load ptr, ptr %959, align 8, !tbaa !465
  %1109 = zext i32 %1004 to i64
  %1110 = getelementptr inbounds i32, ptr %1108, i64 %1109
  %1111 = load i32, ptr %1110, align 4, !tbaa !202
  %1112 = icmp eq i32 %1111, -1
  br i1 %1112, label %1137, label %1113, !prof !536

1113:                                             ; preds = %1107
  %1114 = load ptr, ptr @graph, align 8, !tbaa !187
  %1115 = load i32, ptr %1114, align 8, !tbaa !221
  %1116 = icmp ugt i32 %1115, %1111
  %1117 = icmp ugt i32 %1115, %990
  %1118 = and i1 %1116, %1117
  br i1 %1118, label %1120, label %1119, !prof !537

1119:                                             ; preds = %1113
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 534, ptr noundef nonnull @.str.4) #28
  br label %1120

1120:                                             ; preds = %1119, %1113
  %1121 = icmp eq i32 %1111, %990
  br i1 %1121, label %1133, label %1122, !prof !538

1122:                                             ; preds = %1120
  %1123 = load ptr, ptr @graph, align 8, !tbaa !187
  %1124 = getelementptr inbounds %struct.constraint_graph, ptr %1123, i64 0, i32 5
  %1125 = load ptr, ptr %1124, align 8, !tbaa !223
  %1126 = getelementptr inbounds i32, ptr %1125, i64 %995
  %1127 = load i32, ptr %1126, align 4, !tbaa !202
  %1128 = icmp eq i32 %1127, %1111
  br i1 %1128, label %1133, label %1129, !prof !539

1129:                                             ; preds = %1122
  store i32 %1111, ptr %1126, align 4, !tbaa !202
  %1130 = load ptr, ptr %959, align 8, !tbaa !465
  %1131 = getelementptr inbounds i32, ptr %1130, i64 %1109
  %1132 = load i32, ptr %1131, align 4, !tbaa !202
  call fastcc void @unify_nodes(ptr noundef nonnull %946, i32 noundef %1132, i32 noundef %990, i8 noundef zeroext 0)
  br label %1133

1133:                                             ; preds = %1129, %1122, %1120
  %1134 = load ptr, ptr %959, align 8, !tbaa !465
  %1135 = getelementptr inbounds i32, ptr %1134, i64 %1109
  %1136 = load i32, ptr %1135, align 4, !tbaa !202
  br label %1151

1137:                                             ; preds = %1107
  store i32 %990, ptr %1110, align 4, !tbaa !202
  %1138 = load ptr, ptr %960, align 8, !tbaa !332
  %1139 = getelementptr inbounds i32, ptr %1138, i64 %1109
  store i32 %990, ptr %1139, align 4, !tbaa !202
  br label %1151

1140:                                             ; preds = %1098
  br i1 %1104, label %1142, label %1141, !prof !540

1141:                                             ; preds = %1140
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2263, ptr noundef nonnull @.str.4) #28
  br label %1142

1142:                                             ; preds = %1141, %1140
  %1143 = load ptr, ptr %957, align 8, !tbaa !331
  %1144 = getelementptr inbounds i32, ptr %1143, i64 %995
  store i32 %1004, ptr %1144, align 4, !tbaa !202
  %1145 = load ptr, ptr %958, align 8, !tbaa !332
  %1146 = zext i32 %1004 to i64
  %1147 = getelementptr inbounds i32, ptr %1145, i64 %1146
  %1148 = load i32, ptr %1147, align 4, !tbaa !202
  %1149 = icmp eq i32 %1148, -1
  br i1 %1149, label %1150, label %1151, !prof !541

1150:                                             ; preds = %1142
  store i32 %990, ptr %1147, align 4, !tbaa !202
  br label %1151

1151:                                             ; preds = %1133, %1137, %1142, %1150
  %1152 = phi i32 [ %1136, %1133 ], [ %990, %1142 ], [ %990, %1150 ], [ %990, %1137 ]
  store i32 %1099, ptr %985, align 4, !tbaa !209
  store i32 %1152, ptr %987, align 4, !tbaa !214
  br label %1153

1153:                                             ; preds = %1151, %1043, %1022
  %1154 = add nuw i64 %971, 1
  br label %970, !llvm.loop !542

1155:                                             ; preds = %981, %1342
  %1156 = phi i32 [ %1343, %1342 ], [ 0, %981 ]
  %1157 = load ptr, ptr @constraints, align 8
  %1158 = icmp eq ptr %1157, null
  br i1 %1158, label %1166, label %1159, !prof !475

1159:                                             ; preds = %1155
  %1160 = load i32, ptr %1157, align 8, !tbaa !216
  %1161 = icmp ugt i32 %1160, %1156
  br i1 %1161, label %1162, label %1166, !prof !476

1162:                                             ; preds = %1159
  %1163 = zext i32 %1156 to i64
  %1164 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %1157, i64 0, i32 2, i64 %1163
  %1165 = load ptr, ptr %1164, align 8, !tbaa !187
  br label %1166

1166:                                             ; preds = %1162, %1159, %1155
  %1167 = phi ptr [ %1165, %1162 ], [ null, %1159 ], [ null, %1155 ]
  %1168 = phi i1 [ false, %1162 ], [ true, %1159 ], [ true, %1155 ]
  br i1 %1168, label %1344, label %1169, !prof !477

1169:                                             ; preds = %1166
  %1170 = icmp eq ptr %1167, null
  br i1 %1170, label %1342, label %1171, !prof !533

1171:                                             ; preds = %1169
  %1172 = load i32, ptr %1167, align 8, !tbaa.struct !373
  %1173 = getelementptr inbounds i8, ptr %1167, i64 4
  %1174 = load i32, ptr %1173, align 4, !tbaa.struct !408
  %1175 = getelementptr inbounds i8, ptr %1167, i64 8
  %1176 = load i64, ptr %1175, align 8, !tbaa.struct !374
  %1177 = getelementptr inbounds %struct.constraint, ptr %1167, i64 0, i32 1
  %1178 = load i32, ptr %1177, align 8, !tbaa.struct !373
  %1179 = getelementptr inbounds %struct.constraint, ptr %1167, i64 0, i32 1, i32 1
  %1180 = load i32, ptr %1179, align 4, !tbaa.struct !408
  %1181 = getelementptr inbounds %struct.constraint, ptr %1167, i64 0, i32 1, i32 2
  %1182 = load i64, ptr %1181, align 8, !tbaa.struct !374
  %1183 = call fastcc i32 @find(i32 noundef %1174)
  %1184 = call fastcc i32 @find(i32 noundef %1180)
  %1185 = icmp eq i32 %1172, 1
  br i1 %1185, label %1186, label %1236, !prof !478

1186:                                             ; preds = %1171
  %1187 = icmp eq i64 %1182, 0
  %1188 = icmp eq i64 %1176, 0
  %1189 = select i1 %1187, i1 %1188, i1 false, !prof !272
  %1190 = icmp eq i32 %1178, 0
  %1191 = select i1 %1189, i1 %1190, i1 false, !prof !272
  br i1 %1191, label %1192, label %1342, !prof !272

1192:                                             ; preds = %1186
  %1193 = load ptr, ptr @graph, align 8, !tbaa !187
  %1194 = load ptr, ptr @varmap, align 8
  %1195 = icmp eq ptr %1194, null
  br i1 %1195, label %1198, label %1196, !prof !325

1196:                                             ; preds = %1192
  %1197 = load i32, ptr %1194, align 8, !tbaa !219
  br label %1198

1198:                                             ; preds = %1196, %1192
  %1199 = phi i32 [ %1197, %1196 ], [ 0, %1192 ]
  %1200 = add i32 %1199, %1183
  %1201 = icmp eq i32 %1200, %1184
  br i1 %1201, label %1342, label %1202, !prof !543

1202:                                             ; preds = %1198
  %1203 = getelementptr inbounds %struct.constraint_graph, ptr %1193, i64 0, i32 1
  %1204 = load ptr, ptr %1203, align 8, !tbaa !330
  %1205 = zext i32 %1184 to i64
  %1206 = getelementptr inbounds ptr, ptr %1204, i64 %1205
  %1207 = load ptr, ptr %1206, align 8, !tbaa !187
  %1208 = icmp eq ptr %1207, null
  br i1 %1208, label %1209, label %1213, !prof !544

1209:                                             ; preds = %1202
  %1210 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1211 = load ptr, ptr %1203, align 8, !tbaa !330
  %1212 = getelementptr inbounds ptr, ptr %1211, i64 %1205
  store ptr %1210, ptr %1212, align 8, !tbaa !187
  br label %1213

1213:                                             ; preds = %1209, %1202
  %1214 = load ptr, ptr %1203, align 8, !tbaa !330
  %1215 = getelementptr inbounds ptr, ptr %1214, i64 %1205
  %1216 = load ptr, ptr %1215, align 8, !tbaa !187
  %1217 = call zeroext i8 @bitmap_set_bit(ptr noundef %1216, i32 noundef %1200) #28
  %1218 = icmp eq i8 %1217, 0
  br i1 %1218, label %1342, label %1219, !prof !545

1219:                                             ; preds = %1213
  %1220 = load ptr, ptr @varmap, align 8
  %1221 = icmp eq ptr %1220, null
  br i1 %1221, label %1224, label %1222, !prof !546

1222:                                             ; preds = %1219
  %1223 = load i32, ptr %1220, align 8, !tbaa !219
  br label %1224

1224:                                             ; preds = %1222, %1219
  %1225 = phi i32 [ %1223, %1222 ], [ 0, %1219 ]
  %1226 = icmp ugt i32 %1225, %1200
  br i1 %1226, label %1227, label %1342, !prof !547

1227:                                             ; preds = %1224
  br i1 %1221, label %1230, label %1228, !prof !548

1228:                                             ; preds = %1227
  %1229 = load i32, ptr %1220, align 8, !tbaa !219
  br label %1230

1230:                                             ; preds = %1228, %1227
  %1231 = phi i32 [ %1229, %1228 ], [ 0, %1227 ]
  %1232 = icmp ugt i32 %1231, %1184
  br i1 %1232, label %1233, label %1342, !prof !549

1233:                                             ; preds = %1230
  %1234 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %1235 = add i32 %1234, 1
  store i32 %1235, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %1342

1236:                                             ; preds = %1171
  switch i32 %1178, label %1299 [
    i32 1, label %1237
    i32 2, label %1287
  ], !prof !479

1237:                                             ; preds = %1236
  %1238 = icmp eq i64 %1182, 0
  %1239 = icmp eq i64 %1176, 0
  %1240 = select i1 %1238, i1 %1239, i1 false, !prof !480
  %1241 = icmp eq i32 %1172, 0
  %1242 = select i1 %1240, i1 %1241, i1 false, !prof !480
  br i1 %1242, label %1243, label %1342, !prof !480

1243:                                             ; preds = %1237
  %1244 = load ptr, ptr @graph, align 8, !tbaa !187
  %1245 = load ptr, ptr @varmap, align 8
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %1249, label %1247, !prof !481

1247:                                             ; preds = %1243
  %1248 = load i32, ptr %1245, align 8, !tbaa !219
  br label %1249

1249:                                             ; preds = %1247, %1243
  %1250 = phi i32 [ %1248, %1247 ], [ 0, %1243 ]
  %1251 = add i32 %1250, %1184
  %1252 = icmp eq i32 %1183, %1251
  br i1 %1252, label %1342, label %1253, !prof !543

1253:                                             ; preds = %1249
  %1254 = getelementptr inbounds %struct.constraint_graph, ptr %1244, i64 0, i32 1
  %1255 = load ptr, ptr %1254, align 8, !tbaa !330
  %1256 = zext i32 %1251 to i64
  %1257 = getelementptr inbounds ptr, ptr %1255, i64 %1256
  %1258 = load ptr, ptr %1257, align 8, !tbaa !187
  %1259 = icmp eq ptr %1258, null
  br i1 %1259, label %1260, label %1264, !prof !544

1260:                                             ; preds = %1253
  %1261 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1262 = load ptr, ptr %1254, align 8, !tbaa !330
  %1263 = getelementptr inbounds ptr, ptr %1262, i64 %1256
  store ptr %1261, ptr %1263, align 8, !tbaa !187
  br label %1264

1264:                                             ; preds = %1260, %1253
  %1265 = load ptr, ptr %1254, align 8, !tbaa !330
  %1266 = getelementptr inbounds ptr, ptr %1265, i64 %1256
  %1267 = load ptr, ptr %1266, align 8, !tbaa !187
  %1268 = call zeroext i8 @bitmap_set_bit(ptr noundef %1267, i32 noundef %1183) #28
  %1269 = icmp eq i8 %1268, 0
  br i1 %1269, label %1342, label %1270, !prof !545

1270:                                             ; preds = %1264
  %1271 = load ptr, ptr @varmap, align 8
  %1272 = icmp eq ptr %1271, null
  br i1 %1272, label %1275, label %1273, !prof !546

1273:                                             ; preds = %1270
  %1274 = load i32, ptr %1271, align 8, !tbaa !219
  br label %1275

1275:                                             ; preds = %1273, %1270
  %1276 = phi i32 [ %1274, %1273 ], [ 0, %1270 ]
  %1277 = icmp ugt i32 %1276, %1183
  br i1 %1277, label %1278, label %1342, !prof !547

1278:                                             ; preds = %1275
  br i1 %1272, label %1281, label %1279, !prof !548

1279:                                             ; preds = %1278
  %1280 = load i32, ptr %1271, align 8, !tbaa !219
  br label %1281

1281:                                             ; preds = %1279, %1278
  %1282 = phi i32 [ %1280, %1279 ], [ 0, %1278 ]
  %1283 = icmp ugt i32 %1282, %1251
  br i1 %1283, label %1284, label %1342, !prof !549

1284:                                             ; preds = %1281
  %1285 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %1286 = add i32 %1285, 1
  store i32 %1286, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %1342

1287:                                             ; preds = %1236
  %1288 = call fastcc i32 @find(i32 noundef %1180)
  %1289 = icmp eq i32 %1288, %1180
  br i1 %1289, label %1291, label %1290, !prof !490

1290:                                             ; preds = %1287
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1263, ptr noundef nonnull @.str.4) #28
  br label %1291

1291:                                             ; preds = %1290, %1287
  %1292 = load ptr, ptr @varmap, align 8
  %1293 = zext i32 %1183 to i64
  %1294 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1292, i64 0, i32 2, i64 %1293
  %1295 = load ptr, ptr %1294, align 8, !tbaa !187
  %1296 = getelementptr inbounds %struct.variable_info, ptr %1295, i64 0, i32 8
  %1297 = load ptr, ptr %1296, align 8, !tbaa !226
  %1298 = call zeroext i8 @bitmap_set_bit(ptr noundef %1297, i32 noundef %1184) #28
  br label %1342

1299:                                             ; preds = %1236
  %1300 = icmp ugt i32 %1183, 1
  br i1 %1300, label %1301, label %1342, !prof !492

1301:                                             ; preds = %1299
  %1302 = icmp ne i32 %1183, %1184
  %1303 = icmp eq i64 %1176, 0
  %1304 = select i1 %1302, i1 %1303, i1 false, !prof !550
  %1305 = icmp eq i64 %1182, 0
  %1306 = select i1 %1304, i1 %1305, i1 false, !prof !550
  br i1 %1306, label %1307, label %1342, !prof !551

1307:                                             ; preds = %1301
  %1308 = load ptr, ptr @graph, align 8, !tbaa !187
  %1309 = getelementptr inbounds %struct.constraint_graph, ptr %1308, i64 0, i32 1
  %1310 = load ptr, ptr %1309, align 8, !tbaa !330
  %1311 = zext i32 %1184 to i64
  %1312 = getelementptr inbounds ptr, ptr %1310, i64 %1311
  %1313 = load ptr, ptr %1312, align 8, !tbaa !187
  %1314 = icmp eq ptr %1313, null
  br i1 %1314, label %1315, label %1319, !prof !544

1315:                                             ; preds = %1307
  %1316 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1317 = load ptr, ptr %1309, align 8, !tbaa !330
  %1318 = getelementptr inbounds ptr, ptr %1317, i64 %1311
  store ptr %1316, ptr %1318, align 8, !tbaa !187
  br label %1319

1319:                                             ; preds = %1315, %1307
  %1320 = load ptr, ptr %1309, align 8, !tbaa !330
  %1321 = getelementptr inbounds ptr, ptr %1320, i64 %1311
  %1322 = load ptr, ptr %1321, align 8, !tbaa !187
  %1323 = call zeroext i8 @bitmap_set_bit(ptr noundef %1322, i32 noundef %1183) #28
  %1324 = icmp eq i8 %1323, 0
  br i1 %1324, label %1342, label %1325, !prof !545

1325:                                             ; preds = %1319
  %1326 = load ptr, ptr @varmap, align 8
  %1327 = icmp eq ptr %1326, null
  br i1 %1327, label %1330, label %1328, !prof !546

1328:                                             ; preds = %1325
  %1329 = load i32, ptr %1326, align 8, !tbaa !219
  br label %1330

1330:                                             ; preds = %1328, %1325
  %1331 = phi i32 [ %1329, %1328 ], [ 0, %1325 ]
  %1332 = icmp ugt i32 %1331, %1183
  br i1 %1332, label %1333, label %1342, !prof !547

1333:                                             ; preds = %1330
  br i1 %1327, label %1336, label %1334, !prof !548

1334:                                             ; preds = %1333
  %1335 = load i32, ptr %1326, align 8, !tbaa !219
  br label %1336

1336:                                             ; preds = %1334, %1333
  %1337 = phi i32 [ %1335, %1334 ], [ 0, %1333 ]
  %1338 = icmp ugt i32 %1337, %1184
  br i1 %1338, label %1339, label %1342, !prof !549

1339:                                             ; preds = %1336
  %1340 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %1341 = add i32 %1340, 1
  store i32 %1341, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %1342

1342:                                             ; preds = %1339, %1336, %1330, %1319, %1284, %1281, %1275, %1264, %1249, %1233, %1230, %1224, %1213, %1198, %1301, %1299, %1291, %1237, %1186, %1169
  %1343 = add i32 %1156, 1
  br label %1155, !llvm.loop !552

1344:                                             ; preds = %1166
  %1345 = call fastcc i32 @find(i32 noundef 6)
  %1346 = zext i32 %1345 to i64
  br label %1347

1347:                                             ; preds = %1413, %1344
  %1348 = phi i64 [ %1414, %1413 ], [ 8, %1344 ]
  %1349 = load ptr, ptr @varmap, align 8
  %1350 = icmp eq ptr %1349, null
  br i1 %1350, label %1353, label %1351, !prof !553

1351:                                             ; preds = %1347
  %1352 = load i32, ptr %1349, align 8, !tbaa !219
  br label %1353

1353:                                             ; preds = %1351, %1347
  %1354 = phi i32 [ %1352, %1351 ], [ 0, %1347 ]
  %1355 = zext i32 %1354 to i64
  %1356 = icmp ult i64 %1348, %1355
  %1357 = load ptr, ptr @graph, align 8, !tbaa !187
  br i1 %1356, label %1358, label %1415, !prof !554

1358:                                             ; preds = %1353
  %1359 = getelementptr inbounds %struct.constraint_graph, ptr %1357, i64 0, i32 13
  %1360 = load ptr, ptr %1359, align 8, !tbaa !466
  %1361 = lshr i64 %1348, 6
  %1362 = and i64 %1361, 67108863
  %1363 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1360, i64 0, i32 3, i64 %1362
  %1364 = load i64, ptr %1363, align 8, !tbaa !231
  %1365 = and i64 %1348, 63
  %1366 = shl nuw i64 1, %1365
  %1367 = and i64 %1364, %1366
  %1368 = icmp eq i64 %1367, 0
  br i1 %1368, label %1369, label %1413, !prof !555

1369:                                             ; preds = %1358
  %1370 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1349, i64 0, i32 2, i64 %1348
  %1371 = load ptr, ptr %1370, align 8, !tbaa !187
  %1372 = getelementptr inbounds %struct.variable_info, ptr %1371, i64 0, i32 1
  %1373 = load i8, ptr %1372, align 4
  %1374 = and i8 %1373, 64
  %1375 = icmp eq i8 %1374, 0
  br i1 %1375, label %1413, label %1376, !prof !556

1376:                                             ; preds = %1369
  %1377 = trunc i64 %1348 to i32
  %1378 = call fastcc i32 @find(i32 noundef %1377)
  %1379 = icmp eq i32 %1378, %1345
  br i1 %1379, label %1413, label %1380, !prof !543

1380:                                             ; preds = %1376
  %1381 = getelementptr inbounds %struct.constraint_graph, ptr %1357, i64 0, i32 1
  %1382 = load ptr, ptr %1381, align 8, !tbaa !330
  %1383 = getelementptr inbounds ptr, ptr %1382, i64 %1346
  %1384 = load ptr, ptr %1383, align 8, !tbaa !187
  %1385 = icmp eq ptr %1384, null
  br i1 %1385, label %1386, label %1390, !prof !544

1386:                                             ; preds = %1380
  %1387 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1388 = load ptr, ptr %1381, align 8, !tbaa !330
  %1389 = getelementptr inbounds ptr, ptr %1388, i64 %1346
  store ptr %1387, ptr %1389, align 8, !tbaa !187
  br label %1390

1390:                                             ; preds = %1386, %1380
  %1391 = load ptr, ptr %1381, align 8, !tbaa !330
  %1392 = getelementptr inbounds ptr, ptr %1391, i64 %1346
  %1393 = load ptr, ptr %1392, align 8, !tbaa !187
  %1394 = call zeroext i8 @bitmap_set_bit(ptr noundef %1393, i32 noundef %1378) #28
  %1395 = icmp eq i8 %1394, 0
  br i1 %1395, label %1413, label %1396, !prof !545

1396:                                             ; preds = %1390
  %1397 = load ptr, ptr @varmap, align 8
  %1398 = icmp eq ptr %1397, null
  br i1 %1398, label %1401, label %1399, !prof !546

1399:                                             ; preds = %1396
  %1400 = load i32, ptr %1397, align 8, !tbaa !219
  br label %1401

1401:                                             ; preds = %1399, %1396
  %1402 = phi i32 [ %1400, %1399 ], [ 0, %1396 ]
  %1403 = icmp ugt i32 %1402, %1378
  br i1 %1403, label %1404, label %1413, !prof !547

1404:                                             ; preds = %1401
  br i1 %1398, label %1407, label %1405, !prof !548

1405:                                             ; preds = %1404
  %1406 = load i32, ptr %1397, align 8, !tbaa !219
  br label %1407

1407:                                             ; preds = %1405, %1404
  %1408 = phi i32 [ %1406, %1405 ], [ 0, %1404 ]
  %1409 = icmp ugt i32 %1408, %1345
  br i1 %1409, label %1410, label %1413, !prof !549

1410:                                             ; preds = %1407
  %1411 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %1412 = add i32 %1411, 1
  store i32 %1412, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %1413

1413:                                             ; preds = %1410, %1407, %1401, %1390, %1376, %1369, %1358
  %1414 = add nuw nsw i64 %1348, 1
  br label %1347, !llvm.loop !557

1415:                                             ; preds = %1353
  %1416 = call fastcc i32 @find(i32 noundef 3)
  %1417 = icmp eq i32 %1416, %1345
  br i1 %1417, label %1452, label %1418, !prof !543

1418:                                             ; preds = %1415
  %1419 = getelementptr inbounds %struct.constraint_graph, ptr %1357, i64 0, i32 1
  %1420 = load ptr, ptr %1419, align 8, !tbaa !330
  %1421 = zext i32 %1345 to i64
  %1422 = getelementptr inbounds ptr, ptr %1420, i64 %1421
  %1423 = load ptr, ptr %1422, align 8, !tbaa !187
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1425, label %1429, !prof !544

1425:                                             ; preds = %1418
  %1426 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1427 = load ptr, ptr %1419, align 8, !tbaa !330
  %1428 = getelementptr inbounds ptr, ptr %1427, i64 %1421
  store ptr %1426, ptr %1428, align 8, !tbaa !187
  br label %1429

1429:                                             ; preds = %1425, %1418
  %1430 = load ptr, ptr %1419, align 8, !tbaa !330
  %1431 = getelementptr inbounds ptr, ptr %1430, i64 %1421
  %1432 = load ptr, ptr %1431, align 8, !tbaa !187
  %1433 = call zeroext i8 @bitmap_set_bit(ptr noundef %1432, i32 noundef %1416) #28
  %1434 = icmp eq i8 %1433, 0
  br i1 %1434, label %1452, label %1435, !prof !545

1435:                                             ; preds = %1429
  %1436 = load ptr, ptr @varmap, align 8
  %1437 = icmp eq ptr %1436, null
  br i1 %1437, label %1440, label %1438, !prof !546

1438:                                             ; preds = %1435
  %1439 = load i32, ptr %1436, align 8, !tbaa !219
  br label %1440

1440:                                             ; preds = %1438, %1435
  %1441 = phi i32 [ %1439, %1438 ], [ 0, %1435 ]
  %1442 = icmp ugt i32 %1441, %1416
  br i1 %1442, label %1443, label %1452, !prof !547

1443:                                             ; preds = %1440
  br i1 %1437, label %1446, label %1444, !prof !548

1444:                                             ; preds = %1443
  %1445 = load i32, ptr %1436, align 8, !tbaa !219
  br label %1446

1446:                                             ; preds = %1444, %1443
  %1447 = phi i32 [ %1445, %1444 ], [ 0, %1443 ]
  %1448 = icmp ugt i32 %1447, %1345
  br i1 %1448, label %1449, label %1452, !prof !549

1449:                                             ; preds = %1446
  %1450 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %1451 = add i32 %1450, 1
  store i32 %1451, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %1452

1452:                                             ; preds = %1415, %1429, %1440, %1446, %1449
  call fastcc void @free_scc_info(ptr noundef nonnull %620)
  %1453 = load ptr, ptr @graph, align 8, !tbaa !187
  %1454 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 9
  %1455 = load ptr, ptr %1454, align 8, !tbaa !461
  call void @free(ptr noundef %1455)
  %1456 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 10
  %1457 = load ptr, ptr %1456, align 8, !tbaa !462
  call void @free(ptr noundef %1457)
  %1458 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 11
  %1459 = load ptr, ptr %1458, align 8, !tbaa !463
  call void @free(ptr noundef %1459)
  %1460 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 12
  %1461 = load ptr, ptr %1460, align 8, !tbaa !464
  call void @free(ptr noundef %1461)
  %1462 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 6
  %1463 = load ptr, ptr %1462, align 8, !tbaa !465
  call void @free(ptr noundef %1463)
  %1464 = getelementptr inbounds %struct.constraint_graph, ptr %1453, i64 0, i32 13
  %1465 = load ptr, ptr %1464, align 8, !tbaa !466
  %1466 = load ptr, ptr %1465, align 8, !tbaa !469
  call void @free(ptr noundef %1466)
  %1467 = load ptr, ptr %1464, align 8, !tbaa !466
  call void @free(ptr noundef %1467)
  %1468 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !187
  call void @htab_delete(ptr noundef %1468) #28
  %1469 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !187
  call void @htab_delete(ptr noundef %1469) #28
  call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #28
  %1470 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1471 = icmp eq ptr %1470, null
  br i1 %1471, label %1477, label %1472, !prof !272

1472:                                             ; preds = %1452
  %1473 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %1474 = and i32 %1473, 8192
  %1475 = icmp eq i32 %1474, 0
  br i1 %1475, label %1477, label %1476

1476:                                             ; preds = %1472
  call fastcc void @dump_constraint_graph(ptr noundef nonnull %1470)
  br label %1477

1477:                                             ; preds = %1476, %1472, %1452
  %1478 = load ptr, ptr @graph, align 8, !tbaa !187
  br label %1479

1479:                                             ; preds = %1529, %1477
  %1480 = phi i64 [ %1530, %1529 ], [ 0, %1477 ]
  %1481 = load ptr, ptr @constraints, align 8
  %1482 = icmp eq ptr %1481, null
  br i1 %1482, label %1490, label %1483, !prof !475

1483:                                             ; preds = %1479
  %1484 = load i32, ptr %1481, align 8, !tbaa !216
  %1485 = zext i32 %1484 to i64
  %1486 = icmp ult i64 %1480, %1485
  br i1 %1486, label %1487, label %1490, !prof !476

1487:                                             ; preds = %1483
  %1488 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %1481, i64 0, i32 2, i64 %1480
  %1489 = load ptr, ptr %1488, align 8, !tbaa !187
  br label %1490

1490:                                             ; preds = %1487, %1483, %1479
  %1491 = phi ptr [ %1489, %1487 ], [ null, %1483 ], [ null, %1479 ]
  %1492 = phi i1 [ false, %1487 ], [ true, %1483 ], [ true, %1479 ]
  br i1 %1492, label %1531, label %1493, !prof !477

1493:                                             ; preds = %1490
  %1494 = icmp eq ptr %1491, null
  br i1 %1494, label %1529, label %1495, !prof !533

1495:                                             ; preds = %1493
  %1496 = load i32, ptr %1491, align 8, !tbaa.struct !373
  %1497 = getelementptr inbounds i8, ptr %1491, i64 4
  %1498 = load i32, ptr %1497, align 4, !tbaa.struct !408
  %1499 = getelementptr inbounds i8, ptr %1491, i64 8
  %1500 = load i64, ptr %1499, align 8, !tbaa.struct !374
  %1501 = getelementptr inbounds %struct.constraint, ptr %1491, i64 0, i32 1
  %1502 = load i32, ptr %1501, align 8, !tbaa.struct !373
  %1503 = getelementptr inbounds %struct.constraint, ptr %1491, i64 0, i32 1, i32 1
  %1504 = load i32, ptr %1503, align 4, !tbaa.struct !408
  %1505 = getelementptr inbounds %struct.constraint, ptr %1491, i64 0, i32 1, i32 2
  %1506 = load i64, ptr %1505, align 8, !tbaa.struct !374
  %1507 = icmp eq i32 %1496, 1
  br i1 %1507, label %1527, label %1508, !prof !478

1508:                                             ; preds = %1495
  %1509 = icmp eq i32 %1502, 1
  br i1 %1509, label %1510, label %1519, !prof !558

1510:                                             ; preds = %1508
  %1511 = load ptr, ptr @varmap, align 8
  %1512 = zext i32 %1498 to i64
  %1513 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1511, i64 0, i32 2, i64 %1512
  %1514 = load ptr, ptr %1513, align 8, !tbaa !187
  %1515 = getelementptr inbounds %struct.variable_info, ptr %1514, i64 0, i32 1
  %1516 = load i8, ptr %1515, align 4
  %1517 = and i8 %1516, 2
  %1518 = icmp eq i8 %1517, 0
  br i1 %1518, label %1527, label %1529, !prof !559

1519:                                             ; preds = %1508
  %1520 = icmp ne i32 %1502, 2
  %1521 = icmp ugt i32 %1498, 1
  %1522 = select i1 %1520, i1 %1521, i1 false, !prof !560
  br i1 %1522, label %1523, label %1529, !prof !560

1523:                                             ; preds = %1519
  %1524 = icmp ne i64 %1500, 0
  %1525 = icmp ne i64 %1506, 0
  %1526 = select i1 %1524, i1 true, i1 %1525, !prof !561
  br i1 %1526, label %1527, label %1529, !prof !562

1527:                                             ; preds = %1523, %1510, %1495
  %1528 = phi i32 [ %1498, %1495 ], [ %1504, %1510 ], [ %1504, %1523 ]
  call fastcc void @insert_into_complex(ptr noundef %1478, i32 noundef %1528, ptr noundef nonnull %1491)
  br label %1529

1529:                                             ; preds = %1527, %1523, %1519, %1510, %1493
  %1530 = add nuw i64 %1480, 1
  br label %1479, !llvm.loop !563

1531:                                             ; preds = %1490
  %1532 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1533 = icmp eq ptr %1532, null
  br i1 %1533, label %1536, label %1534, !prof !272

1534:                                             ; preds = %1531
  %1535 = call i64 @fwrite(ptr nonnull @.str.74, i64 54, i64 1, ptr nonnull %1532)
  br label %1536

1536:                                             ; preds = %1534, %1531
  %1537 = load ptr, ptr @graph, align 8, !tbaa !187
  %1538 = getelementptr inbounds %struct.constraint_graph, ptr %1537, i64 0, i32 7
  %1539 = getelementptr inbounds %struct.constraint_graph, ptr %1537, i64 0, i32 8
  br label %1540

1540:                                             ; preds = %1585, %1536
  %1541 = phi i64 [ %1586, %1585 ], [ 0, %1536 ]
  %1542 = load ptr, ptr @varmap, align 8
  %1543 = icmp eq ptr %1542, null
  br i1 %1543, label %1546, label %1544, !prof !304

1544:                                             ; preds = %1540
  %1545 = load i32, ptr %1542, align 8, !tbaa !219
  br label %1546

1546:                                             ; preds = %1544, %1540
  %1547 = phi i32 [ %1545, %1544 ], [ 0, %1540 ]
  %1548 = zext i32 %1547 to i64
  %1549 = icmp ult i64 %1541, %1548
  br i1 %1549, label %1550, label %1587, !prof !305

1550:                                             ; preds = %1546
  %1551 = load ptr, ptr %1538, align 8, !tbaa !331
  %1552 = getelementptr inbounds i32, ptr %1551, i64 %1541
  %1553 = load i32, ptr %1552, align 4, !tbaa !202
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1585, label %1555, !prof !507

1555:                                             ; preds = %1550
  %1556 = load ptr, ptr %1539, align 8, !tbaa !332
  %1557 = zext i32 %1553 to i64
  %1558 = getelementptr inbounds i32, ptr %1556, i64 %1557
  %1559 = load i32, ptr %1558, align 4, !tbaa !202
  %1560 = icmp eq i32 %1559, -1
  br i1 %1560, label %1585, label %1561, !prof !508

1561:                                             ; preds = %1555
  %1562 = call fastcc i32 @find(i32 noundef %1559)
  %1563 = icmp sgt i32 %1562, -1
  br i1 %1563, label %1564, label %1585, !prof !515

1564:                                             ; preds = %1561
  %1565 = trunc i64 %1541 to i32
  %1566 = call fastcc i32 @find(i32 noundef %1565)
  %1567 = load ptr, ptr @graph, align 8, !tbaa !187
  %1568 = load i32, ptr %1567, align 8, !tbaa !221
  %1569 = icmp ugt i32 %1568, %1562
  %1570 = icmp ugt i32 %1568, %1566
  %1571 = and i1 %1569, %1570
  br i1 %1571, label %1573, label %1572, !prof !537

1572:                                             ; preds = %1564
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 534, ptr noundef nonnull @.str.4) #28
  br label %1573

1573:                                             ; preds = %1572, %1564
  %1574 = icmp eq i32 %1562, %1566
  br i1 %1574, label %1585, label %1575, !prof !538

1575:                                             ; preds = %1573
  %1576 = load ptr, ptr @graph, align 8, !tbaa !187
  %1577 = getelementptr inbounds %struct.constraint_graph, ptr %1576, i64 0, i32 5
  %1578 = load ptr, ptr %1577, align 8, !tbaa !223
  %1579 = zext i32 %1566 to i64
  %1580 = getelementptr inbounds i32, ptr %1578, i64 %1579
  %1581 = load i32, ptr %1580, align 4, !tbaa !202
  %1582 = icmp eq i32 %1581, %1562
  br i1 %1582, label %1585, label %1583, !prof !539

1583:                                             ; preds = %1575
  store i32 %1562, ptr %1580, align 4, !tbaa !202
  %1584 = trunc i64 %1541 to i32
  call fastcc void @unify_nodes(ptr noundef %1537, i32 noundef %1562, i32 noundef %1584, i8 noundef zeroext 0)
  br label %1585

1585:                                             ; preds = %1575, %1573, %1583, %1561, %1555, %1550
  %1586 = add nuw nsw i64 %1541, 1
  br label %1540, !llvm.loop !564

1587:                                             ; preds = %1546
  %1588 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1589 = icmp eq ptr %1588, null
  br i1 %1589, label %1592, label %1590, !prof !272

1590:                                             ; preds = %1587
  %1591 = call i64 @fwrite(ptr nonnull @.str.75, i64 24, i64 1, ptr nonnull %1588)
  br label %1592

1592:                                             ; preds = %1590, %1587
  %1593 = load ptr, ptr @graph, align 8, !tbaa !187
  %1594 = load i32, ptr %1593, align 8, !tbaa !221
  %1595 = zext i32 %1594 to i64
  %1596 = call fastcc ptr @init_scc_info(i64 noundef %1595)
  br label %1597

1597:                                             ; preds = %1641, %1592
  %1598 = phi i32 [ 0, %1592 ], [ %1642, %1641 ]
  %1599 = load ptr, ptr @varmap, align 8
  %1600 = icmp eq ptr %1599, null
  br i1 %1600, label %1603, label %1601, !prof !565

1601:                                             ; preds = %1597
  %1602 = load i32, ptr %1599, align 8, !tbaa !219
  br label %1603

1603:                                             ; preds = %1601, %1597
  %1604 = phi i32 [ %1602, %1601 ], [ 0, %1597 ]
  br i1 %1600, label %1607, label %1605, !prof !565

1605:                                             ; preds = %1603
  %1606 = load i32, ptr %1599, align 8, !tbaa !219
  br label %1607

1607:                                             ; preds = %1605, %1603
  %1608 = phi i32 [ %1606, %1605 ], [ 0, %1603 ]
  %1609 = add i32 %1604, -1
  %1610 = add i32 %1609, %1608
  %1611 = icmp ult i32 %1610, %1594
  br i1 %1611, label %1612, label %1623, !prof !531

1612:                                             ; preds = %1607
  br i1 %1600, label %1615, label %1613, !prof !565

1613:                                             ; preds = %1612
  %1614 = load i32, ptr %1599, align 8, !tbaa !219
  br label %1615

1615:                                             ; preds = %1613, %1612
  %1616 = phi i32 [ %1614, %1613 ], [ 0, %1612 ]
  br i1 %1600, label %1619, label %1617, !prof !565

1617:                                             ; preds = %1615
  %1618 = load i32, ptr %1599, align 8, !tbaa !219
  br label %1619

1619:                                             ; preds = %1617, %1615
  %1620 = phi i32 [ %1618, %1617 ], [ 0, %1615 ]
  %1621 = add i32 %1616, -1
  %1622 = add i32 %1621, %1620
  br label %1623

1623:                                             ; preds = %1619, %1607
  %1624 = phi i32 [ %1622, %1619 ], [ %1594, %1607 ]
  %1625 = icmp ult i32 %1598, %1624
  br i1 %1625, label %1626, label %1643, !prof !566

1626:                                             ; preds = %1623
  %1627 = load ptr, ptr %1596, align 8, !tbaa !500
  %1628 = lshr i32 %1598, 6
  %1629 = zext nneg i32 %1628 to i64
  %1630 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1627, i64 0, i32 3, i64 %1629
  %1631 = load i64, ptr %1630, align 8, !tbaa !231
  %1632 = and i32 %1598, 63
  %1633 = zext nneg i32 %1632 to i64
  %1634 = shl nuw i64 1, %1633
  %1635 = and i64 %1631, %1634
  %1636 = icmp eq i64 %1635, 0
  br i1 %1636, label %1637, label %1641, !prof !567

1637:                                             ; preds = %1626
  %1638 = call fastcc i32 @find(i32 noundef %1598)
  %1639 = icmp eq i32 %1638, %1598
  br i1 %1639, label %1640, label %1641, !prof !568

1640:                                             ; preds = %1637
  call fastcc void @scc_visit(ptr noundef nonnull %1593, ptr noundef nonnull %1596, i32 noundef %1598)
  br label %1641

1641:                                             ; preds = %1640, %1637, %1626
  %1642 = add i32 %1598, 1
  br label %1597, !llvm.loop !569

1643:                                             ; preds = %1623
  call fastcc void @free_scc_info(ptr noundef %1596)
  %1644 = load ptr, ptr @graph, align 8, !tbaa !187
  %1645 = getelementptr inbounds %struct.constraint_graph, ptr %1644, i64 0, i32 1
  br label %1646

1646:                                             ; preds = %1671, %1643
  %1647 = phi i64 [ %1672, %1671 ], [ 0, %1643 ]
  %1648 = load ptr, ptr @varmap, align 8
  %1649 = icmp eq ptr %1648, null
  br i1 %1649, label %1652, label %1650, !prof !304

1650:                                             ; preds = %1646
  %1651 = load i32, ptr %1648, align 8, !tbaa !219
  br label %1652

1652:                                             ; preds = %1650, %1646
  %1653 = phi i32 [ %1651, %1650 ], [ 0, %1646 ]
  %1654 = zext i32 %1653 to i64
  %1655 = icmp ult i64 %1647, %1654
  br i1 %1655, label %1656, label %1673, !prof !305

1656:                                             ; preds = %1652
  %1657 = load ptr, ptr %1645, align 8, !tbaa !330
  %1658 = getelementptr inbounds ptr, ptr %1657, i64 %1647
  %1659 = load ptr, ptr %1658, align 8, !tbaa !187
  %1660 = icmp eq ptr %1659, null
  br i1 %1660, label %1671, label %1661, !prof !570

1661:                                             ; preds = %1656
  br i1 %1649, label %1664, label %1662, !prof !571

1662:                                             ; preds = %1661
  %1663 = load i32, ptr %1648, align 8, !tbaa !219
  br label %1664

1664:                                             ; preds = %1662, %1661
  %1665 = phi i32 [ %1663, %1662 ], [ 0, %1661 ]
  br i1 %1649, label %1668, label %1666, !prof !571

1666:                                             ; preds = %1664
  %1667 = load i32, ptr %1648, align 8, !tbaa !219
  br label %1668

1668:                                             ; preds = %1666, %1664
  %1669 = phi i32 [ %1667, %1666 ], [ 0, %1664 ]
  %1670 = shl i32 %1669, 1
  call void @bitmap_clear_range(ptr noundef nonnull %1659, i32 noundef %1665, i32 noundef %1670) #28
  br label %1671

1671:                                             ; preds = %1668, %1656
  %1672 = add nuw nsw i64 %1647, 1
  br label %1646, !llvm.loop !572

1673:                                             ; preds = %1652
  br i1 %1649, label %1676, label %1674, !prof !325

1674:                                             ; preds = %1673
  %1675 = load i32, ptr %1648, align 8, !tbaa !219
  br label %1676

1676:                                             ; preds = %1674, %1673
  %1677 = phi i32 [ %1675, %1674 ], [ 0, %1673 ]
  %1678 = load i32, ptr %1644, align 8, !tbaa !221
  %1679 = icmp ult i32 %1677, %1678
  br i1 %1679, label %1680, label %1697, !prof !378

1680:                                             ; preds = %1676
  %1681 = getelementptr inbounds %struct.constraint_graph, ptr %1644, i64 0, i32 1
  %1682 = zext i32 %1677 to i64
  br label %1683

1683:                                             ; preds = %1680, %1692
  %1684 = phi i64 [ %1682, %1680 ], [ %1693, %1692 ]
  %1685 = load ptr, ptr %1681, align 8, !tbaa !330
  %1686 = getelementptr inbounds ptr, ptr %1685, i64 %1684
  %1687 = load ptr, ptr %1686, align 8, !tbaa !187
  %1688 = icmp eq ptr %1687, null
  br i1 %1688, label %1692, label %1689, !prof !573

1689:                                             ; preds = %1683
  call void @bitmap_obstack_free(ptr noundef nonnull %1687) #28
  %1690 = load ptr, ptr %1681, align 8, !tbaa !330
  %1691 = getelementptr inbounds ptr, ptr %1690, i64 %1684
  store ptr null, ptr %1691, align 8, !tbaa !187
  br label %1692

1692:                                             ; preds = %1689, %1683
  %1693 = add nuw nsw i64 %1684, 1
  %1694 = load i32, ptr %1644, align 8, !tbaa !221
  %1695 = zext i32 %1694 to i64
  %1696 = icmp ult i64 %1693, %1695
  br i1 %1696, label %1683, label %1697, !prof !328, !llvm.loop !574

1697:                                             ; preds = %1692, %1676
  %1698 = load ptr, ptr @varmap, align 8
  %1699 = icmp eq ptr %1698, null
  br i1 %1699, label %1702, label %1700, !prof !325

1700:                                             ; preds = %1697
  %1701 = load i32, ptr %1698, align 8, !tbaa !219
  br label %1702

1702:                                             ; preds = %1697, %1700
  %1703 = phi i32 [ %1701, %1700 ], [ 0, %1697 ]
  store i32 %1703, ptr %1644, align 8, !tbaa !221
  %1704 = getelementptr inbounds %struct.constraint_graph, ptr %1644, i64 0, i32 1
  %1705 = load ptr, ptr %1704, align 8, !tbaa !330
  %1706 = zext i32 %1703 to i64
  %1707 = shl nuw nsw i64 %1706, 3
  %1708 = call ptr @xrealloc(ptr noundef %1705, i64 noundef %1707) #28
  store ptr %1708, ptr %1704, align 8, !tbaa !330
  %1709 = getelementptr inbounds %struct.constraint_graph, ptr %1644, i64 0, i32 2
  %1710 = load ptr, ptr %1709, align 8, !tbaa !459
  call void @free(ptr noundef %1710)
  store ptr null, ptr %1709, align 8, !tbaa !459
  %1711 = getelementptr inbounds %struct.constraint_graph, ptr %1644, i64 0, i32 3
  %1712 = load ptr, ptr %1711, align 8, !tbaa !460
  call void @free(ptr noundef %1712)
  store ptr null, ptr %1711, align 8, !tbaa !460
  call void @bitmap_obstack_release(ptr noundef nonnull @predbitmap_obstack) #28
  %1713 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %1714 = icmp eq ptr %1713, null
  br i1 %1714, label %1717, label %1715, !prof !272

1715:                                             ; preds = %1702
  %1716 = call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr nonnull %1713)
  br label %1717

1717:                                             ; preds = %1715, %1702
  %1718 = load ptr, ptr @graph, align 8, !tbaa !187
  %1719 = load i32, ptr %1718, align 8, !tbaa !221
  store i32 0, ptr @changed_count, align 4, !tbaa !202
  %1720 = call ptr @sbitmap_alloc(i32 noundef %1719) #28
  store ptr %1720, ptr @changed, align 8, !tbaa !187
  call void @sbitmap_zero(ptr noundef %1720) #28
  %1721 = icmp eq i32 %1719, 0
  br i1 %1721, label %1788, label %1722, !prof !280

1722:                                             ; preds = %1717
  %1723 = getelementptr inbounds %struct.constraint_graph, ptr %1718, i64 0, i32 1
  %1724 = getelementptr inbounds %struct.constraint_graph, ptr %1718, i64 0, i32 15
  %1725 = zext i32 %1719 to i64
  br label %1726

1726:                                             ; preds = %1722, %1785
  %1727 = phi i64 [ 0, %1722 ], [ %1786, %1785 ]
  %1728 = load ptr, ptr @varmap, align 8
  %1729 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1728, i64 0, i32 2, i64 %1727
  %1730 = load ptr, ptr %1729, align 8, !tbaa !187
  %1731 = trunc i64 %1727 to i32
  %1732 = call fastcc i32 @find(i32 noundef %1731)
  %1733 = zext i32 %1732 to i64
  %1734 = icmp eq i64 %1727, %1733
  br i1 %1734, label %1735, label %1785, !prof !575

1735:                                             ; preds = %1726
  %1736 = getelementptr inbounds %struct.variable_info, ptr %1730, i64 0, i32 8
  %1737 = load ptr, ptr %1736, align 8, !tbaa !226
  %1738 = load ptr, ptr %1737, align 8, !tbaa !227
  %1739 = icmp eq ptr %1738, null
  br i1 %1739, label %1785, label %1740, !prof !576

1740:                                             ; preds = %1735
  %1741 = load ptr, ptr %1723, align 8, !tbaa !330
  %1742 = getelementptr inbounds ptr, ptr %1741, i64 %1727
  %1743 = load ptr, ptr %1742, align 8, !tbaa !187
  %1744 = icmp eq ptr %1743, null
  br i1 %1744, label %1748, label %1745, !prof !577

1745:                                             ; preds = %1740
  %1746 = load ptr, ptr %1743, align 8, !tbaa !227
  %1747 = icmp eq ptr %1746, null
  br i1 %1747, label %1748, label %1758, !prof !578

1748:                                             ; preds = %1745, %1740
  %1749 = load ptr, ptr %1724, align 8, !tbaa !326
  %1750 = getelementptr inbounds ptr, ptr %1749, i64 %1727
  %1751 = load ptr, ptr %1750, align 8, !tbaa !187
  %1752 = icmp eq ptr %1751, null
  br i1 %1752, label %1755, label %1753, !prof !579

1753:                                             ; preds = %1748
  %1754 = load i32, ptr %1751, align 8, !tbaa !216
  br label %1755

1755:                                             ; preds = %1748, %1753
  %1756 = phi i32 [ %1754, %1753 ], [ 0, %1748 ]
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1785, label %1758, !prof !579

1758:                                             ; preds = %1755, %1745
  %1759 = load ptr, ptr @changed, align 8, !tbaa !187
  %1760 = load ptr, ptr %1759, align 8, !tbaa !469
  %1761 = icmp eq ptr %1760, null
  br i1 %1761, label %1775, label %1762, !prof !580

1762:                                             ; preds = %1758
  %1763 = lshr i64 %1727, 6
  %1764 = and i64 %1763, 67108863
  %1765 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1759, i64 0, i32 3, i64 %1764
  %1766 = load i64, ptr %1765, align 8, !tbaa !231
  %1767 = and i64 %1727, 63
  %1768 = shl nuw i64 1, %1767
  %1769 = and i64 %1766, %1768
  %1770 = icmp eq i64 %1769, 0
  br i1 %1770, label %1771, label %1775

1771:                                             ; preds = %1762
  %1772 = getelementptr inbounds i8, ptr %1760, i64 %1764
  %1773 = load i8, ptr %1772, align 1, !tbaa !198
  %1774 = add i8 %1773, 1
  store i8 %1774, ptr %1772, align 1, !tbaa !198
  br label %1775

1775:                                             ; preds = %1771, %1762, %1758
  %1776 = and i64 %1727, 63
  %1777 = shl nuw i64 1, %1776
  %1778 = lshr i64 %1727, 6
  %1779 = and i64 %1778, 67108863
  %1780 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1759, i64 0, i32 3, i64 %1779
  %1781 = load i64, ptr %1780, align 8, !tbaa !231
  %1782 = or i64 %1781, %1777
  store i64 %1782, ptr %1780, align 8, !tbaa !231
  %1783 = load i32, ptr @changed_count, align 4, !tbaa !202
  %1784 = add i32 %1783, 1
  store i32 %1784, ptr @changed_count, align 4, !tbaa !202
  br label %1785

1785:                                             ; preds = %1775, %1755, %1735, %1726
  %1786 = add nuw nsw i64 %1727, 1
  %1787 = icmp eq i64 %1786, %1725
  br i1 %1787, label %1788, label %1726, !prof !581, !llvm.loop !582

1788:                                             ; preds = %1785, %1717
  %1789 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %1790 = load i32, ptr @changed_count, align 4, !tbaa !202
  %1791 = icmp eq i32 %1790, 0
  br i1 %1791, label %2949, label %1792, !prof !280

1792:                                             ; preds = %1788
  %1793 = getelementptr inbounds %struct.constraint_graph, ptr %1718, i64 0, i32 15
  %1794 = getelementptr inbounds %struct.constraint_graph, ptr %1718, i64 0, i32 1
  %1795 = getelementptr inbounds %struct.constraint_graph, ptr %1718, i64 0, i32 1
  br label %1796

1796:                                             ; preds = %1792, %2946
  %1797 = load ptr, ptr @graph, align 8, !tbaa !187
  %1798 = load i32, ptr %1797, align 8, !tbaa !221
  %1799 = call ptr @xmalloc(i64 noundef 16) #28
  %1800 = call ptr @sbitmap_alloc(i32 noundef %1798) #28
  store ptr %1800, ptr %1799, align 8, !tbaa !583
  call void @sbitmap_zero(ptr noundef %1800) #28
  %1801 = call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  %1802 = getelementptr inbounds %struct.topo_info, ptr %1799, i64 0, i32 1
  store ptr %1801, ptr %1802, align 8, !tbaa !585
  %1803 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !265
  %1804 = add i32 %1803, 1
  store i32 %1804, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !265
  call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #28
  %1805 = load i32, ptr %1718, align 8, !tbaa !221
  %1806 = icmp eq i32 %1805, 0
  br i1 %1806, label %1826, label %1807, !prof !586

1807:                                             ; preds = %1796, %1823
  %1808 = phi i32 [ %1824, %1823 ], [ 0, %1796 ]
  %1809 = load ptr, ptr %1799, align 8, !tbaa !583
  %1810 = lshr i32 %1808, 6
  %1811 = zext nneg i32 %1810 to i64
  %1812 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1809, i64 0, i32 3, i64 %1811
  %1813 = load i64, ptr %1812, align 8, !tbaa !231
  %1814 = and i32 %1808, 63
  %1815 = zext nneg i32 %1814 to i64
  %1816 = shl nuw i64 1, %1815
  %1817 = and i64 %1813, %1816
  %1818 = icmp eq i64 %1817, 0
  br i1 %1818, label %1819, label %1823, !prof !587

1819:                                             ; preds = %1807
  %1820 = call fastcc i32 @find(i32 noundef %1808)
  %1821 = icmp eq i32 %1820, %1808
  br i1 %1821, label %1822, label %1823, !prof !588

1822:                                             ; preds = %1819
  call fastcc void @topo_visit(ptr noundef nonnull %1718, ptr noundef nonnull %1799, i32 noundef %1808)
  br label %1823

1823:                                             ; preds = %1822, %1819, %1807
  %1824 = add nuw i32 %1808, 1
  %1825 = icmp eq i32 %1824, %1805
  br i1 %1825, label %1826, label %1807, !prof !589, !llvm.loop !590

1826:                                             ; preds = %1823, %1796
  br label %1827

1827:                                             ; preds = %1999, %1826
  %1828 = load ptr, ptr %1802, align 8, !tbaa !585
  %1829 = icmp eq ptr %1828, null
  br i1 %1829, label %1832, label %1830, !prof !591

1830:                                             ; preds = %1827
  %1831 = load i32, ptr %1828, align 4, !tbaa !592
  br label %1832

1832:                                             ; preds = %1830, %1827
  %1833 = phi i32 [ %1831, %1830 ], [ 0, %1827 ]
  %1834 = icmp eq i32 %1833, 0
  br i1 %1834, label %2939, label %1835, !prof !594

1835:                                             ; preds = %1832
  %1836 = load i32, ptr %1828, align 4, !tbaa !592
  %1837 = add i32 %1836, -1
  store i32 %1837, ptr %1828, align 4, !tbaa !592
  %1838 = zext i32 %1837 to i64
  %1839 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1828, i64 0, i32 2, i64 %1838
  %1840 = load i32, ptr %1839, align 4, !tbaa !202
  %1841 = call fastcc i32 @find(i32 noundef %1840)
  %1842 = icmp eq i32 %1841, %1840
  br i1 %1842, label %1843, label %1999, !prof !595

1843:                                             ; preds = %1835
  %1844 = load ptr, ptr @graph, align 8, !tbaa !187
  %1845 = getelementptr inbounds %struct.constraint_graph, ptr %1844, i64 0, i32 4
  %1846 = load ptr, ptr %1845, align 8, !tbaa !333
  %1847 = zext i32 %1840 to i64
  %1848 = getelementptr inbounds i32, ptr %1846, i64 %1847
  %1849 = load i32, ptr %1848, align 4, !tbaa !202
  %1850 = icmp eq i32 %1849, -1
  br i1 %1850, label %1988, label %1851, !prof !595

1851:                                             ; preds = %1843
  %1852 = load ptr, ptr @varmap, align 8
  %1853 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1852, i64 0, i32 2, i64 %1847
  %1854 = load ptr, ptr %1853, align 8, !tbaa !187
  %1855 = getelementptr inbounds %struct.variable_info, ptr %1854, i64 0, i32 8
  %1856 = load ptr, ptr %1855, align 8, !tbaa !226
  %1857 = load ptr, ptr %1856, align 8, !tbaa !227
  %1858 = icmp eq ptr %1857, null
  br i1 %1858, label %1988, label %1859

1859:                                             ; preds = %1851
  %1860 = call fastcc i32 @find(i32 noundef %1849)
  %1861 = load ptr, ptr @varmap, align 8
  %1862 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %1861, i64 0, i32 2, i64 %1847
  %1863 = load ptr, ptr %1862, align 8, !tbaa !187
  %1864 = getelementptr inbounds %struct.variable_info, ptr %1863, i64 0, i32 8
  %1865 = load ptr, ptr %1864, align 8, !tbaa !226
  %1866 = load ptr, ptr %1865, align 8, !tbaa !227
  %1867 = icmp eq ptr %1866, null
  %1868 = select i1 %1867, ptr @bitmap_zero_bits, ptr %1866
  %1869 = getelementptr inbounds %struct.bitmap_element_def, ptr %1868, i64 0, i32 2
  %1870 = load i32, ptr %1869, align 8, !tbaa !229
  %1871 = shl i32 %1870, 7
  %1872 = getelementptr inbounds %struct.bitmap_element_def, ptr %1868, i64 0, i32 3
  %1873 = load i64, ptr %1872, align 8, !tbaa !231
  %1874 = icmp eq i64 %1873, 0
  %1875 = zext i1 %1874 to i32
  %1876 = or disjoint i32 %1871, %1875
  br label %1877

1877:                                             ; preds = %1964, %1859
  %1878 = phi i64 [ %1873, %1859 ], [ %1966, %1964 ]
  %1879 = phi ptr [ null, %1859 ], [ %1965, %1964 ]
  %1880 = phi i32 [ 0, %1859 ], [ %1935, %1964 ]
  %1881 = phi i32 [ %1876, %1859 ], [ %1967, %1964 ]
  %1882 = phi ptr [ %1868, %1859 ], [ %1937, %1964 ]
  %1883 = icmp eq i64 %1878, 0
  br i1 %1883, label %1898, label %1884

1884:                                             ; preds = %1912, %1877
  %1885 = phi i64 [ %1878, %1877 ], [ %1917, %1912 ]
  %1886 = phi i32 [ %1880, %1877 ], [ %1913, %1912 ]
  %1887 = phi i32 [ %1881, %1877 ], [ %1914, %1912 ]
  %1888 = phi ptr [ %1882, %1877 ], [ %1905, %1912 ]
  %1889 = and i64 %1885, 1
  %1890 = icmp eq i64 %1889, 0
  br i1 %1890, label %1891, label %1933

1891:                                             ; preds = %1884, %1891
  %1892 = phi i32 [ %1895, %1891 ], [ %1887, %1884 ]
  %1893 = phi i64 [ %1894, %1891 ], [ %1885, %1884 ]
  %1894 = lshr exact i64 %1893, 1
  %1895 = add i32 %1892, 1
  %1896 = and i64 %1893, 2
  %1897 = icmp eq i64 %1896, 0
  br i1 %1897, label %1891, label %1933, !llvm.loop !232

1898:                                             ; preds = %1877
  %1899 = add i32 %1881, 63
  %1900 = and i32 %1899, -64
  %1901 = add i32 %1880, 1
  br label %1902

1902:                                             ; preds = %1929, %1898
  %1903 = phi i64 [ %1878, %1898 ], [ %1924, %1929 ]
  %1904 = phi i32 [ %1900, %1898 ], [ %1932, %1929 ]
  %1905 = phi ptr [ %1882, %1898 ], [ %1927, %1929 ]
  %1906 = phi i32 [ %1901, %1898 ], [ 0, %1929 ]
  %1907 = icmp eq i32 %1906, 2
  br i1 %1907, label %1923, label %1908

1908:                                             ; preds = %1902
  %1909 = add i32 %1904, 128
  %1910 = shl i32 %1906, 6
  %1911 = sub i32 %1909, %1910
  br label %1912

1912:                                             ; preds = %1908, %1919
  %1913 = phi i32 [ %1921, %1919 ], [ %1906, %1908 ]
  %1914 = phi i32 [ %1920, %1919 ], [ %1904, %1908 ]
  %1915 = zext i32 %1913 to i64
  %1916 = getelementptr inbounds %struct.bitmap_element_def, ptr %1905, i64 0, i32 3, i64 %1915
  %1917 = load i64, ptr %1916, align 8, !tbaa !231
  %1918 = icmp eq i64 %1917, 0
  br i1 %1918, label %1919, label %1884

1919:                                             ; preds = %1912
  %1920 = add i32 %1914, 64
  %1921 = add i32 %1913, 1
  %1922 = icmp eq i32 %1921, 2
  br i1 %1922, label %1923, label %1912, !llvm.loop !233

1923:                                             ; preds = %1919, %1902
  %1924 = phi i64 [ %1903, %1902 ], [ %1917, %1919 ]
  %1925 = phi i32 [ %1904, %1902 ], [ %1911, %1919 ]
  %1926 = phi i32 [ %1906, %1902 ], [ 2, %1919 ]
  %1927 = load ptr, ptr %1905, align 8, !tbaa !234
  %1928 = icmp eq ptr %1927, null
  br i1 %1928, label %1933, label %1929

1929:                                             ; preds = %1923
  %1930 = getelementptr inbounds %struct.bitmap_element_def, ptr %1927, i64 0, i32 2
  %1931 = load i32, ptr %1930, align 8, !tbaa !229
  %1932 = shl i32 %1931, 7
  br label %1902, !llvm.loop !235

1933:                                             ; preds = %1923, %1891, %1884
  %1934 = phi i64 [ %1885, %1884 ], [ %1894, %1891 ], [ %1924, %1923 ]
  %1935 = phi i32 [ %1886, %1884 ], [ %1886, %1891 ], [ %1926, %1923 ]
  %1936 = phi i32 [ %1887, %1884 ], [ %1895, %1891 ], [ %1925, %1923 ]
  %1937 = phi ptr [ %1888, %1884 ], [ %1888, %1891 ], [ %1927, %1923 ]
  %1938 = phi i1 [ false, %1884 ], [ false, %1891 ], [ true, %1923 ]
  br i1 %1938, label %1939, label %1941

1939:                                             ; preds = %1933
  %1940 = icmp eq ptr %1879, null
  br label %1968

1941:                                             ; preds = %1933
  %1942 = call fastcc i32 @find(i32 noundef %1936)
  %1943 = icmp ne i32 %1942, %1936
  %1944 = icmp eq i32 %1936, %1860
  %1945 = select i1 %1943, i1 true, i1 %1944
  br i1 %1945, label %1964, label %1946

1946:                                             ; preds = %1941
  %1947 = call fastcc zeroext i8 @unite(i32 noundef %1860, i32 noundef %1936), !range !251
  %1948 = icmp eq i8 %1947, 0
  br i1 %1948, label %1964, label %1949

1949:                                             ; preds = %1946
  %1950 = icmp eq ptr %1879, null
  br i1 %1950, label %1956, label %1951

1951:                                             ; preds = %1949
  %1952 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1879, i64 0, i32 1
  %1953 = load i32, ptr %1952, align 4, !tbaa !596
  %1954 = load i32, ptr %1879, align 4, !tbaa !592
  %1955 = icmp eq i32 %1953, %1954
  br i1 %1955, label %1956, label %1958

1956:                                             ; preds = %1951, %1949
  %1957 = call ptr @vec_heap_o_reserve(ptr noundef %1879, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  br label %1958

1958:                                             ; preds = %1956, %1951
  %1959 = phi ptr [ %1957, %1956 ], [ %1879, %1951 ]
  %1960 = load i32, ptr %1959, align 4, !tbaa !592
  %1961 = add i32 %1960, 1
  store i32 %1961, ptr %1959, align 4, !tbaa !592
  %1962 = zext i32 %1960 to i64
  %1963 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1959, i64 0, i32 2, i64 %1962
  store i32 %1936, ptr %1963, align 4, !tbaa !202
  br label %1964

1964:                                             ; preds = %1958, %1946, %1941
  %1965 = phi ptr [ %1879, %1941 ], [ %1879, %1946 ], [ %1959, %1958 ]
  %1966 = lshr i64 %1934, 1
  %1967 = add i32 %1936, 1
  br label %1877, !llvm.loop !597

1968:                                             ; preds = %1939, %1980
  %1969 = phi i64 [ 0, %1939 ], [ %1982, %1980 ]
  br i1 %1940, label %1977, label %1970

1970:                                             ; preds = %1968
  %1971 = load i32, ptr %1879, align 4, !tbaa !592
  %1972 = zext i32 %1971 to i64
  %1973 = icmp ult i64 %1969, %1972
  br i1 %1973, label %1974, label %1977

1974:                                             ; preds = %1970
  %1975 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %1879, i64 0, i32 2, i64 %1969
  %1976 = load i32, ptr %1975, align 4, !tbaa !202
  br label %1977

1977:                                             ; preds = %1974, %1970, %1968
  %1978 = phi i32 [ %1976, %1974 ], [ 0, %1970 ], [ 0, %1968 ]
  %1979 = phi i1 [ false, %1974 ], [ true, %1970 ], [ true, %1968 ]
  br i1 %1979, label %1983, label %1980

1980:                                             ; preds = %1977
  %1981 = load ptr, ptr @graph, align 8, !tbaa !187
  call fastcc void @unify_nodes(ptr noundef %1981, i32 noundef %1860, i32 noundef %1978, i8 noundef zeroext 1)
  %1982 = add nuw i64 %1969, 1
  br label %1968, !llvm.loop !598

1983:                                             ; preds = %1977
  br i1 %1940, label %1985, label %1984

1984:                                             ; preds = %1983
  call void @free(ptr noundef %1879)
  br label %1985

1985:                                             ; preds = %1983, %1984
  %1986 = call fastcc i32 @find(i32 noundef %1840)
  %1987 = icmp eq i32 %1986, %1840
  br i1 %1987, label %1988, label %1999

1988:                                             ; preds = %1851, %1843, %1985
  %1989 = load ptr, ptr @changed, align 8, !tbaa !187
  %1990 = lshr i32 %1840, 6
  %1991 = zext nneg i32 %1990 to i64
  %1992 = getelementptr inbounds %struct.simple_bitmap_def, ptr %1989, i64 0, i32 3, i64 %1991
  %1993 = load i64, ptr %1992, align 8, !tbaa !231
  %1994 = and i32 %1840, 63
  %1995 = zext nneg i32 %1994 to i64
  %1996 = shl nuw i64 1, %1995
  %1997 = and i64 %1993, %1996
  %1998 = icmp eq i64 %1997, 0
  br i1 %1998, label %1999, label %2000, !prof !599

1999:                                             ; preds = %2886, %1988, %2812, %2809, %1835, %1985, %2010
  br label %1827, !llvm.loop !600

2000:                                             ; preds = %1988
  %2001 = load ptr, ptr %1793, align 8, !tbaa !326
  %2002 = getelementptr inbounds ptr, ptr %2001, i64 %1847
  %2003 = load ptr, ptr %2002, align 8, !tbaa !187
  %2004 = load ptr, ptr %1989, align 8, !tbaa !469
  %2005 = icmp eq ptr %2004, null
  br i1 %2005, label %2010, label %2006, !prof !601

2006:                                             ; preds = %2000
  %2007 = getelementptr inbounds i8, ptr %2004, i64 %1991
  %2008 = load i8, ptr %2007, align 1, !tbaa !198
  %2009 = add i8 %2008, -1
  store i8 %2009, ptr %2007, align 1, !tbaa !198
  br label %2010

2010:                                             ; preds = %2006, %2000
  %2011 = xor i64 %1996, -1
  %2012 = load i64, ptr %1992, align 8, !tbaa !231
  %2013 = and i64 %2012, %2011
  store i64 %2013, ptr %1992, align 8, !tbaa !231
  %2014 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2015 = add i32 %2014, -1
  store i32 %2015, ptr @changed_count, align 4, !tbaa !202
  %2016 = load ptr, ptr @varmap, align 8
  %2017 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2016, i64 0, i32 2, i64 %1847
  %2018 = load ptr, ptr %2017, align 8, !tbaa !187
  %2019 = getelementptr inbounds %struct.variable_info, ptr %2018, i64 0, i32 8
  %2020 = load ptr, ptr %2019, align 8, !tbaa !226
  %2021 = getelementptr inbounds %struct.variable_info, ptr %2018, i64 0, i32 9
  %2022 = load ptr, ptr %2021, align 8, !tbaa !602
  %2023 = call zeroext i8 @bitmap_and_compl(ptr noundef %1789, ptr noundef %2020, ptr noundef %2022) #28
  %2024 = load ptr, ptr %1789, align 8, !tbaa !227
  %2025 = icmp eq ptr %2024, null
  br i1 %2025, label %1999, label %2026, !prof !603

2026:                                             ; preds = %2010
  %2027 = load ptr, ptr @varmap, align 8
  %2028 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2027, i64 0, i32 2, i64 %1847
  %2029 = load ptr, ptr %2028, align 8, !tbaa !187
  %2030 = getelementptr inbounds %struct.variable_info, ptr %2029, i64 0, i32 9
  %2031 = load ptr, ptr %2030, align 8, !tbaa !602
  %2032 = call zeroext i8 @bitmap_ior_into(ptr noundef %2031, ptr noundef nonnull %1789) #28
  %2033 = load ptr, ptr @varmap, align 8
  %2034 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2033, i64 0, i32 2, i64 %1847
  %2035 = load ptr, ptr %2034, align 8, !tbaa !187
  %2036 = getelementptr inbounds %struct.variable_info, ptr %2035, i64 0, i32 8
  %2037 = load ptr, ptr %2036, align 8, !tbaa !226
  %2038 = load ptr, ptr %2037, align 8, !tbaa !227
  %2039 = icmp eq ptr %2003, null
  br label %2040

2040:                                             ; preds = %2807, %2026
  %2041 = phi i32 [ 0, %2026 ], [ %2808, %2807 ]
  br i1 %2039, label %2049, label %2042, !prof !604

2042:                                             ; preds = %2040
  %2043 = load i32, ptr %2003, align 8, !tbaa !216
  %2044 = icmp ugt i32 %2043, %2041
  br i1 %2044, label %2045, label %2049, !prof !605

2045:                                             ; preds = %2042
  %2046 = zext i32 %2041 to i64
  %2047 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %2003, i64 0, i32 2, i64 %2046
  %2048 = load ptr, ptr %2047, align 8, !tbaa !187
  br label %2049

2049:                                             ; preds = %2045, %2042, %2040
  %2050 = phi ptr [ %2048, %2045 ], [ null, %2042 ], [ null, %2040 ]
  %2051 = phi i1 [ false, %2045 ], [ true, %2042 ], [ true, %2040 ]
  br i1 %2051, label %2809, label %2052, !prof !606

2052:                                             ; preds = %2049
  %2053 = icmp eq ptr %2038, null
  %2054 = getelementptr inbounds %struct.constraint_expr, ptr %2050, i64 0, i32 1
  %2055 = load i32, ptr %2054, align 4, !tbaa !209
  %2056 = call fastcc i32 @find(i32 noundef %2055)
  store i32 %2056, ptr %2054, align 4, !tbaa !209
  %2057 = getelementptr inbounds %struct.constraint, ptr %2050, i64 0, i32 1, i32 1
  %2058 = load i32, ptr %2057, align 4, !tbaa !214
  %2059 = call fastcc i32 @find(i32 noundef %2058)
  store i32 %2059, ptr %2057, align 4, !tbaa !214
  br i1 %2053, label %2060, label %2063, !prof !607

2060:                                             ; preds = %2052
  %2061 = load i32, ptr %2050, align 8, !tbaa !206
  %2062 = icmp eq i32 %2061, 1
  br i1 %2062, label %2807, label %2063

2063:                                             ; preds = %2060, %2052
  %2064 = load i32, ptr %2050, align 8, !tbaa !206
  %2065 = icmp eq i32 %2064, 1
  %2066 = getelementptr inbounds %struct.constraint, ptr %2050, i64 0, i32 1
  %2067 = load i32, ptr %2066, align 8, !tbaa !213
  br i1 %2065, label %2068, label %2401, !prof !608

2068:                                             ; preds = %2063
  %2069 = icmp eq i32 %2067, 2
  br i1 %2069, label %2070, label %2071, !prof !609

2070:                                             ; preds = %2068
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1729, ptr noundef nonnull @.str.4) #28
  br label %2807

2071:                                             ; preds = %2068
  %2072 = load ptr, ptr @varmap, align 8
  %2073 = zext i32 %2059 to i64
  %2074 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2072, i64 0, i32 2, i64 %2073
  %2075 = load ptr, ptr %2074, align 8, !tbaa !187
  %2076 = getelementptr inbounds %struct.variable_info, ptr %2075, i64 0, i32 8
  %2077 = load ptr, ptr %2076, align 8, !tbaa !226
  %2078 = getelementptr inbounds %struct.constraint_expr, ptr %2050, i64 0, i32 2
  %2079 = load i64, ptr %2078, align 8, !tbaa !212
  %2080 = getelementptr inbounds %struct.constraint, ptr %2050, i64 0, i32 1, i32 2
  %2081 = load i64, ptr %2080, align 8, !tbaa !215
  %2082 = icmp eq i64 %2081, 0
  br i1 %2082, label %2084, label %2083, !prof !610

2083:                                             ; preds = %2071
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1624, ptr noundef nonnull @.str.4) #28
  br label %2084

2084:                                             ; preds = %2083, %2071
  %2085 = call i32 @bitmap_bit_p(ptr noundef %2077, i32 noundef 1) #28
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2095, label %2087, !prof !610

2087:                                             ; preds = %2084
  %2088 = call fastcc i32 @find(i32 noundef 1)
  %2089 = load ptr, ptr @varmap, align 8
  %2090 = zext i32 %2088 to i64
  %2091 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2089, i64 0, i32 2, i64 %2090
  %2092 = load ptr, ptr %2091, align 8, !tbaa !187
  %2093 = getelementptr inbounds %struct.variable_info, ptr %2092, i64 0, i32 8
  %2094 = load ptr, ptr %2093, align 8, !tbaa !226
  br label %2095

2095:                                             ; preds = %2087, %2084
  %2096 = phi ptr [ %2094, %2087 ], [ %2077, %2084 ]
  %2097 = call i32 @bitmap_bit_p(ptr noundef nonnull %1789, i32 noundef 1) #28
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2136, label %2099, !prof !610

2099:                                             ; preds = %2095
  %2100 = call fastcc i32 @find(i32 noundef 6)
  %2101 = load ptr, ptr @graph, align 8, !tbaa !187
  %2102 = call fastcc zeroext i8 @add_graph_edge(ptr noundef %2101, i32 noundef %2100, i32 noundef %2059), !range !251
  %2103 = icmp eq i8 %2102, 0
  br i1 %2103, label %2807, label %2104

2104:                                             ; preds = %2099
  %2105 = load ptr, ptr @varmap, align 8
  %2106 = zext i32 %2100 to i64
  %2107 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2105, i64 0, i32 2, i64 %2106
  %2108 = load ptr, ptr %2107, align 8, !tbaa !187
  %2109 = getelementptr inbounds %struct.variable_info, ptr %2108, i64 0, i32 8
  %2110 = load ptr, ptr %2109, align 8, !tbaa !226
  %2111 = call zeroext i8 @bitmap_ior_into(ptr noundef %2110, ptr noundef %2096) #28
  %2112 = icmp eq i8 %2111, 0
  br i1 %2112, label %2807, label %2113

2113:                                             ; preds = %2104
  %2114 = load ptr, ptr @changed, align 8, !tbaa !187
  %2115 = lshr i32 %2100, 6
  %2116 = zext nneg i32 %2115 to i64
  %2117 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2114, i64 0, i32 3, i64 %2116
  %2118 = load i64, ptr %2117, align 8, !tbaa !231
  %2119 = and i32 %2100, 63
  %2120 = zext nneg i32 %2119 to i64
  %2121 = shl nuw i64 1, %2120
  %2122 = and i64 %2118, %2121
  %2123 = icmp eq i64 %2122, 0
  br i1 %2123, label %2124, label %2807

2124:                                             ; preds = %2113
  %2125 = load ptr, ptr %2114, align 8, !tbaa !469
  %2126 = icmp eq ptr %2125, null
  br i1 %2126, label %2131, label %2127

2127:                                             ; preds = %2124
  %2128 = getelementptr inbounds i8, ptr %2125, i64 %2116
  %2129 = load i8, ptr %2128, align 1, !tbaa !198
  %2130 = add i8 %2129, 1
  store i8 %2130, ptr %2128, align 1, !tbaa !198
  br label %2131

2131:                                             ; preds = %2127, %2124
  %2132 = load i64, ptr %2117, align 8, !tbaa !231
  %2133 = or i64 %2132, %2121
  store i64 %2133, ptr %2117, align 8, !tbaa !231
  %2134 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2135 = add i32 %2134, 1
  store i32 %2135, ptr @changed_count, align 4, !tbaa !202
  br label %2807

2136:                                             ; preds = %2095
  %2137 = icmp eq i64 %2079, -9223372036854775808
  br i1 %2137, label %2138, label %2139, !prof !609

2138:                                             ; preds = %2136
  call fastcc void @solution_set_expand(ptr noundef nonnull %1789, ptr noundef nonnull %1789)
  br label %2139

2139:                                             ; preds = %2138, %2136
  %2140 = phi i64 [ 0, %2138 ], [ %2079, %2136 ]
  %2141 = load ptr, ptr %1789, align 8, !tbaa !227
  %2142 = icmp eq ptr %2141, null
  %2143 = select i1 %2142, ptr @bitmap_zero_bits, ptr %2141, !prof !609
  %2144 = getelementptr inbounds %struct.bitmap_element_def, ptr %2143, i64 0, i32 2
  %2145 = load i32, ptr %2144, align 8, !tbaa !229
  %2146 = shl i32 %2145, 7
  %2147 = getelementptr inbounds %struct.bitmap_element_def, ptr %2143, i64 0, i32 3
  %2148 = load i64, ptr %2147, align 8, !tbaa !231
  %2149 = icmp eq i64 %2148, 0
  %2150 = zext i1 %2149 to i32
  %2151 = or disjoint i32 %2146, %2150
  br label %2152

2152:                                             ; preds = %2398, %2139
  %2153 = phi i64 [ %2148, %2139 ], [ %2399, %2398 ]
  %2154 = phi i32 [ 0, %2139 ], [ %2209, %2398 ]
  %2155 = phi i32 [ %2151, %2139 ], [ %2400, %2398 ]
  %2156 = phi ptr [ %2143, %2139 ], [ %2211, %2398 ]
  %2157 = icmp eq i64 %2153, 0
  br i1 %2157, label %2172, label %2158, !prof !611

2158:                                             ; preds = %2186, %2152
  %2159 = phi i64 [ %2153, %2152 ], [ %2191, %2186 ]
  %2160 = phi i32 [ %2154, %2152 ], [ %2187, %2186 ]
  %2161 = phi i32 [ %2155, %2152 ], [ %2188, %2186 ]
  %2162 = phi ptr [ %2156, %2152 ], [ %2179, %2186 ]
  %2163 = and i64 %2159, 1
  %2164 = icmp eq i64 %2163, 0
  br i1 %2164, label %2165, label %2207, !prof !612

2165:                                             ; preds = %2158, %2165
  %2166 = phi i32 [ %2169, %2165 ], [ %2161, %2158 ]
  %2167 = phi i64 [ %2168, %2165 ], [ %2159, %2158 ]
  %2168 = lshr exact i64 %2167, 1
  %2169 = add i32 %2166, 1
  %2170 = and i64 %2167, 2
  %2171 = icmp eq i64 %2170, 0
  br i1 %2171, label %2165, label %2207, !prof !613, !llvm.loop !232

2172:                                             ; preds = %2152
  %2173 = add i32 %2155, 63
  %2174 = and i32 %2173, -64
  %2175 = add i32 %2154, 1
  br label %2176

2176:                                             ; preds = %2203, %2172
  %2177 = phi i64 [ %2153, %2172 ], [ %2198, %2203 ]
  %2178 = phi i32 [ %2174, %2172 ], [ %2206, %2203 ]
  %2179 = phi ptr [ %2156, %2172 ], [ %2201, %2203 ]
  %2180 = phi i32 [ %2175, %2172 ], [ 0, %2203 ]
  %2181 = icmp eq i32 %2180, 2
  br i1 %2181, label %2197, label %2182, !prof !614

2182:                                             ; preds = %2176
  %2183 = add i32 %2178, 128
  %2184 = shl i32 %2180, 6
  %2185 = sub i32 %2183, %2184
  br label %2186

2186:                                             ; preds = %2182, %2193
  %2187 = phi i32 [ %2195, %2193 ], [ %2180, %2182 ]
  %2188 = phi i32 [ %2194, %2193 ], [ %2178, %2182 ]
  %2189 = zext i32 %2187 to i64
  %2190 = getelementptr inbounds %struct.bitmap_element_def, ptr %2179, i64 0, i32 3, i64 %2189
  %2191 = load i64, ptr %2190, align 8, !tbaa !231
  %2192 = icmp eq i64 %2191, 0
  br i1 %2192, label %2193, label %2158, !prof !615

2193:                                             ; preds = %2186
  %2194 = add i32 %2188, 64
  %2195 = add i32 %2187, 1
  %2196 = icmp eq i32 %2195, 2
  br i1 %2196, label %2197, label %2186, !prof !616, !llvm.loop !233

2197:                                             ; preds = %2193, %2176
  %2198 = phi i64 [ %2177, %2176 ], [ %2191, %2193 ]
  %2199 = phi i32 [ %2178, %2176 ], [ %2185, %2193 ]
  %2200 = phi i32 [ %2180, %2176 ], [ 2, %2193 ]
  %2201 = load ptr, ptr %2179, align 8, !tbaa !234
  %2202 = icmp eq ptr %2201, null
  br i1 %2202, label %2207, label %2203, !prof !617

2203:                                             ; preds = %2197
  %2204 = getelementptr inbounds %struct.bitmap_element_def, ptr %2201, i64 0, i32 2
  %2205 = load i32, ptr %2204, align 8, !tbaa !229
  %2206 = shl i32 %2205, 7
  br label %2176, !llvm.loop !235

2207:                                             ; preds = %2197, %2165, %2158
  %2208 = phi i64 [ %2159, %2158 ], [ %2168, %2165 ], [ %2198, %2197 ]
  %2209 = phi i32 [ %2160, %2158 ], [ %2160, %2165 ], [ %2200, %2197 ]
  %2210 = phi i32 [ %2161, %2158 ], [ %2169, %2165 ], [ %2199, %2197 ]
  %2211 = phi ptr [ %2162, %2158 ], [ %2162, %2165 ], [ %2201, %2197 ]
  %2212 = phi i1 [ false, %2158 ], [ false, %2165 ], [ true, %2197 ]
  br i1 %2212, label %2807, label %2213, !prof !618

2213:                                             ; preds = %2207
  %2214 = load ptr, ptr @varmap, align 8
  %2215 = zext i32 %2210 to i64
  %2216 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2214, i64 0, i32 2, i64 %2215
  %2217 = load ptr, ptr %2216, align 8, !tbaa !187
  %2218 = getelementptr inbounds %struct.variable_info, ptr %2217, i64 0, i32 3
  %2219 = load i64, ptr %2218, align 8, !tbaa !349
  %2220 = add i64 %2219, %2140
  %2221 = getelementptr inbounds %struct.variable_info, ptr %2217, i64 0, i32 1
  %2222 = load i8, ptr %2221, align 4
  %2223 = icmp sgt i8 %2222, -1
  br i1 %2223, label %2293, label %2224, !prof !619

2224:                                             ; preds = %2213
  %2225 = call fastcc i32 @find(i32 noundef 3)
  %2226 = icmp eq i32 %2225, %2059
  br i1 %2226, label %2293, label %2227, !prof !543

2227:                                             ; preds = %2224
  %2228 = load ptr, ptr @graph, align 8, !tbaa !187
  %2229 = getelementptr inbounds %struct.constraint_graph, ptr %2228, i64 0, i32 1
  %2230 = load ptr, ptr %2229, align 8, !tbaa !330
  %2231 = getelementptr inbounds ptr, ptr %2230, i64 %2073
  %2232 = load ptr, ptr %2231, align 8, !tbaa !187
  %2233 = icmp eq ptr %2232, null
  br i1 %2233, label %2234, label %2238, !prof !544

2234:                                             ; preds = %2227
  %2235 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %2236 = load ptr, ptr %2229, align 8, !tbaa !330
  %2237 = getelementptr inbounds ptr, ptr %2236, i64 %2073
  store ptr %2235, ptr %2237, align 8, !tbaa !187
  br label %2238

2238:                                             ; preds = %2234, %2227
  %2239 = load ptr, ptr %2229, align 8, !tbaa !330
  %2240 = getelementptr inbounds ptr, ptr %2239, i64 %2073
  %2241 = load ptr, ptr %2240, align 8, !tbaa !187
  %2242 = call zeroext i8 @bitmap_set_bit(ptr noundef %2241, i32 noundef %2225) #28
  %2243 = icmp eq i8 %2242, 0
  br i1 %2243, label %2293, label %2244, !prof !545

2244:                                             ; preds = %2238
  %2245 = load ptr, ptr @varmap, align 8
  %2246 = icmp eq ptr %2245, null
  br i1 %2246, label %2249, label %2247, !prof !546

2247:                                             ; preds = %2244
  %2248 = load i32, ptr %2245, align 8, !tbaa !219
  br label %2249

2249:                                             ; preds = %2247, %2244
  %2250 = phi i32 [ %2248, %2247 ], [ 0, %2244 ]
  %2251 = icmp ugt i32 %2250, %2225
  br i1 %2251, label %2252, label %2261, !prof !547

2252:                                             ; preds = %2249
  br i1 %2246, label %2255, label %2253, !prof !548

2253:                                             ; preds = %2252
  %2254 = load i32, ptr %2245, align 8, !tbaa !219
  br label %2255

2255:                                             ; preds = %2253, %2252
  %2256 = phi i32 [ %2254, %2253 ], [ 0, %2252 ]
  %2257 = icmp ugt i32 %2256, %2059
  br i1 %2257, label %2258, label %2261, !prof !549

2258:                                             ; preds = %2255
  %2259 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %2260 = add i32 %2259, 1
  store i32 %2260, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %2261

2261:                                             ; preds = %2258, %2255, %2249
  %2262 = load ptr, ptr @varmap, align 8
  %2263 = zext i32 %2225 to i64
  %2264 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2262, i64 0, i32 2, i64 %2263
  %2265 = load ptr, ptr %2264, align 8, !tbaa !187
  %2266 = getelementptr inbounds %struct.variable_info, ptr %2265, i64 0, i32 8
  %2267 = load ptr, ptr %2266, align 8, !tbaa !226
  %2268 = call zeroext i8 @bitmap_ior_into(ptr noundef %2267, ptr noundef %2096) #28
  %2269 = icmp eq i8 %2268, 0
  br i1 %2269, label %2293, label %2270, !prof !620

2270:                                             ; preds = %2261
  %2271 = load ptr, ptr @changed, align 8, !tbaa !187
  %2272 = lshr i32 %2225, 6
  %2273 = zext nneg i32 %2272 to i64
  %2274 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2271, i64 0, i32 3, i64 %2273
  %2275 = load i64, ptr %2274, align 8, !tbaa !231
  %2276 = and i32 %2225, 63
  %2277 = zext nneg i32 %2276 to i64
  %2278 = shl nuw i64 1, %2277
  %2279 = and i64 %2275, %2278
  %2280 = icmp eq i64 %2279, 0
  br i1 %2280, label %2281, label %2293

2281:                                             ; preds = %2270
  %2282 = load ptr, ptr %2271, align 8, !tbaa !469
  %2283 = icmp eq ptr %2282, null
  br i1 %2283, label %2288, label %2284

2284:                                             ; preds = %2281
  %2285 = getelementptr inbounds i8, ptr %2282, i64 %2273
  %2286 = load i8, ptr %2285, align 1, !tbaa !198
  %2287 = add i8 %2286, 1
  store i8 %2287, ptr %2285, align 1, !tbaa !198
  br label %2288

2288:                                             ; preds = %2284, %2281
  %2289 = load i64, ptr %2274, align 8, !tbaa !231
  %2290 = or i64 %2289, %2278
  store i64 %2290, ptr %2274, align 8, !tbaa !231
  %2291 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2292 = add i32 %2291, 1
  store i32 %2292, ptr @changed_count, align 4, !tbaa !202
  br label %2293

2293:                                             ; preds = %2224, %2238, %2288, %2270, %2261, %2213
  %2294 = load i8, ptr %2221, align 4
  %2295 = and i8 %2294, 2
  %2296 = icmp eq i8 %2295, 0
  br i1 %2296, label %2297, label %2398, !prof !621

2297:                                             ; preds = %2293
  %2298 = and i8 %2294, 8
  %2299 = icmp eq i8 %2298, 0
  br i1 %2299, label %2302, label %2300, !prof !481

2300:                                             ; preds = %2297
  %2301 = load i64, ptr %2218, align 8, !tbaa !349
  br label %2306

2302:                                             ; preds = %2297
  %2303 = icmp eq i64 %2140, 0
  br i1 %2303, label %2306, label %2304

2304:                                             ; preds = %2302
  %2305 = call fastcc ptr @first_vi_for_offset(ptr noundef %2217, i64 noundef %2220)
  br label %2306

2306:                                             ; preds = %2304, %2302, %2300
  %2307 = phi ptr [ %2217, %2300 ], [ %2305, %2304 ], [ %2217, %2302 ]
  %2308 = phi i64 [ %2301, %2300 ], [ %2220, %2304 ], [ %2220, %2302 ]
  %2309 = icmp eq ptr %2307, null
  br i1 %2309, label %2398, label %2310, !prof !481

2310:                                             ; preds = %2306, %2395
  %2311 = phi ptr [ %2393, %2395 ], [ %2307, %2306 ]
  %2312 = phi i64 [ %2397, %2395 ], [ %2308, %2306 ]
  %2313 = getelementptr inbounds %struct.variable_info, ptr %2311, i64 0, i32 1
  %2314 = load i8, ptr %2313, align 4
  %2315 = and i8 %2314, 64
  %2316 = icmp eq i8 %2315, 0
  br i1 %2316, label %2387, label %2317, !prof !622

2317:                                             ; preds = %2310
  %2318 = load i32, ptr %2311, align 8, !tbaa !372
  %2319 = call fastcc i32 @find(i32 noundef %2318)
  %2320 = icmp eq i32 %2319, %2059
  br i1 %2320, label %2387, label %2321, !prof !543

2321:                                             ; preds = %2317
  %2322 = load ptr, ptr @graph, align 8, !tbaa !187
  %2323 = getelementptr inbounds %struct.constraint_graph, ptr %2322, i64 0, i32 1
  %2324 = load ptr, ptr %2323, align 8, !tbaa !330
  %2325 = getelementptr inbounds ptr, ptr %2324, i64 %2073
  %2326 = load ptr, ptr %2325, align 8, !tbaa !187
  %2327 = icmp eq ptr %2326, null
  br i1 %2327, label %2328, label %2332, !prof !544

2328:                                             ; preds = %2321
  %2329 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %2330 = load ptr, ptr %2323, align 8, !tbaa !330
  %2331 = getelementptr inbounds ptr, ptr %2330, i64 %2073
  store ptr %2329, ptr %2331, align 8, !tbaa !187
  br label %2332

2332:                                             ; preds = %2328, %2321
  %2333 = load ptr, ptr %2323, align 8, !tbaa !330
  %2334 = getelementptr inbounds ptr, ptr %2333, i64 %2073
  %2335 = load ptr, ptr %2334, align 8, !tbaa !187
  %2336 = call zeroext i8 @bitmap_set_bit(ptr noundef %2335, i32 noundef %2319) #28
  %2337 = icmp eq i8 %2336, 0
  br i1 %2337, label %2387, label %2338, !prof !545

2338:                                             ; preds = %2332
  %2339 = load ptr, ptr @varmap, align 8
  %2340 = icmp eq ptr %2339, null
  br i1 %2340, label %2343, label %2341, !prof !546

2341:                                             ; preds = %2338
  %2342 = load i32, ptr %2339, align 8, !tbaa !219
  br label %2343

2343:                                             ; preds = %2341, %2338
  %2344 = phi i32 [ %2342, %2341 ], [ 0, %2338 ]
  %2345 = icmp ugt i32 %2344, %2319
  br i1 %2345, label %2346, label %2355, !prof !547

2346:                                             ; preds = %2343
  br i1 %2340, label %2349, label %2347, !prof !548

2347:                                             ; preds = %2346
  %2348 = load i32, ptr %2339, align 8, !tbaa !219
  br label %2349

2349:                                             ; preds = %2347, %2346
  %2350 = phi i32 [ %2348, %2347 ], [ 0, %2346 ]
  %2351 = icmp ugt i32 %2350, %2059
  br i1 %2351, label %2352, label %2355, !prof !549

2352:                                             ; preds = %2349
  %2353 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %2354 = add i32 %2353, 1
  store i32 %2354, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %2355

2355:                                             ; preds = %2352, %2349, %2343
  %2356 = load ptr, ptr @varmap, align 8
  %2357 = zext i32 %2319 to i64
  %2358 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2356, i64 0, i32 2, i64 %2357
  %2359 = load ptr, ptr %2358, align 8, !tbaa !187
  %2360 = getelementptr inbounds %struct.variable_info, ptr %2359, i64 0, i32 8
  %2361 = load ptr, ptr %2360, align 8, !tbaa !226
  %2362 = call zeroext i8 @bitmap_ior_into(ptr noundef %2361, ptr noundef %2096) #28
  %2363 = icmp eq i8 %2362, 0
  br i1 %2363, label %2387, label %2364

2364:                                             ; preds = %2355
  %2365 = load ptr, ptr @changed, align 8, !tbaa !187
  %2366 = lshr i32 %2319, 6
  %2367 = zext nneg i32 %2366 to i64
  %2368 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2365, i64 0, i32 3, i64 %2367
  %2369 = load i64, ptr %2368, align 8, !tbaa !231
  %2370 = and i32 %2319, 63
  %2371 = zext nneg i32 %2370 to i64
  %2372 = shl nuw i64 1, %2371
  %2373 = and i64 %2369, %2372
  %2374 = icmp eq i64 %2373, 0
  br i1 %2374, label %2375, label %2387

2375:                                             ; preds = %2364
  %2376 = load ptr, ptr %2365, align 8, !tbaa !469
  %2377 = icmp eq ptr %2376, null
  br i1 %2377, label %2382, label %2378

2378:                                             ; preds = %2375
  %2379 = getelementptr inbounds i8, ptr %2376, i64 %2367
  %2380 = load i8, ptr %2379, align 1, !tbaa !198
  %2381 = add i8 %2380, 1
  store i8 %2381, ptr %2379, align 1, !tbaa !198
  br label %2382

2382:                                             ; preds = %2378, %2375
  %2383 = load i64, ptr %2368, align 8, !tbaa !231
  %2384 = or i64 %2383, %2372
  store i64 %2384, ptr %2368, align 8, !tbaa !231
  %2385 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2386 = add i32 %2385, 1
  store i32 %2386, ptr @changed_count, align 4, !tbaa !202
  br label %2387

2387:                                             ; preds = %2317, %2332, %2382, %2364, %2355, %2310
  %2388 = getelementptr inbounds %struct.variable_info, ptr %2311, i64 0, i32 3
  %2389 = load i64, ptr %2388, align 8, !tbaa !349
  %2390 = icmp eq i64 %2389, %2312
  br i1 %2390, label %2398, label %2391, !prof !482

2391:                                             ; preds = %2387
  %2392 = getelementptr inbounds %struct.variable_info, ptr %2311, i64 0, i32 2
  %2393 = load ptr, ptr %2392, align 8, !tbaa !354
  %2394 = icmp eq ptr %2393, null
  br i1 %2394, label %2398, label %2395

2395:                                             ; preds = %2391
  %2396 = getelementptr inbounds %struct.variable_info, ptr %2393, i64 0, i32 3
  %2397 = load i64, ptr %2396, align 8, !tbaa !349
  br label %2310, !llvm.loop !623

2398:                                             ; preds = %2387, %2391, %2306, %2293
  %2399 = lshr i64 %2208, 1
  %2400 = add i32 %2210, 1
  br label %2152, !llvm.loop !624

2401:                                             ; preds = %2063
  switch i32 %2067, label %2639 [
    i32 1, label %2402
    i32 0, label %2637
  ], !prof !625

2402:                                             ; preds = %2401
  %2403 = load i32, ptr %2054, align 4, !tbaa !209
  %2404 = load ptr, ptr @varmap, align 8
  %2405 = zext i32 %2403 to i64
  %2406 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2404, i64 0, i32 2, i64 %2405
  %2407 = load ptr, ptr %2406, align 8, !tbaa !187
  %2408 = getelementptr inbounds %struct.variable_info, ptr %2407, i64 0, i32 1
  %2409 = load i8, ptr %2408, align 4
  %2410 = and i8 %2409, 2
  %2411 = icmp eq i8 %2410, 0
  br i1 %2411, label %2412, label %2807, !prof !626

2412:                                             ; preds = %2402
  %2413 = getelementptr inbounds %struct.variable_info, ptr %2407, i64 0, i32 8
  %2414 = load ptr, ptr %2413, align 8, !tbaa !226
  %2415 = getelementptr inbounds %struct.constraint, ptr %2050, i64 0, i32 1, i32 2
  %2416 = load i64, ptr %2415, align 8, !tbaa !215
  %2417 = getelementptr inbounds %struct.constraint_expr, ptr %2050, i64 0, i32 2
  %2418 = load i64, ptr %2417, align 8, !tbaa !212
  %2419 = icmp eq i64 %2418, 0
  br i1 %2419, label %2421, label %2420, !prof !626

2420:                                             ; preds = %2412
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1535, ptr noundef nonnull @.str.4) #28
  br label %2421

2421:                                             ; preds = %2420, %2412
  %2422 = call i32 @bitmap_bit_p(ptr noundef nonnull %1789, i32 noundef 1) #28
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2426, label %2424, !prof !626

2424:                                             ; preds = %2421
  %2425 = call zeroext i8 @bitmap_set_bit(ptr noundef %2414, i32 noundef 1) #28
  br label %2607

2426:                                             ; preds = %2421
  %2427 = icmp eq i64 %2416, -9223372036854775808
  br i1 %2427, label %2428, label %2429, !prof !627

2428:                                             ; preds = %2426
  call fastcc void @solution_set_expand(ptr noundef nonnull %1789, ptr noundef nonnull %1789)
  br label %2429

2429:                                             ; preds = %2428, %2426
  %2430 = phi i64 [ 0, %2428 ], [ %2416, %2426 ]
  %2431 = load ptr, ptr %1789, align 8, !tbaa !227
  %2432 = icmp eq ptr %2431, null
  %2433 = select i1 %2432, ptr @bitmap_zero_bits, ptr %2431, !prof !627
  %2434 = getelementptr inbounds %struct.bitmap_element_def, ptr %2433, i64 0, i32 2
  %2435 = load i32, ptr %2434, align 8, !tbaa !229
  %2436 = shl i32 %2435, 7
  %2437 = getelementptr inbounds %struct.bitmap_element_def, ptr %2433, i64 0, i32 3
  %2438 = load i64, ptr %2437, align 8, !tbaa !231
  %2439 = icmp eq i64 %2438, 0
  %2440 = zext i1 %2439 to i32
  %2441 = or disjoint i32 %2436, %2440
  br label %2442

2442:                                             ; preds = %2603, %2429
  %2443 = phi i64 [ %2438, %2429 ], [ %2605, %2603 ]
  %2444 = phi i32 [ 0, %2429 ], [ %2500, %2603 ]
  %2445 = phi i32 [ %2441, %2429 ], [ %2606, %2603 ]
  %2446 = phi ptr [ %2433, %2429 ], [ %2502, %2603 ]
  %2447 = phi i8 [ 0, %2429 ], [ %2604, %2603 ]
  %2448 = icmp eq i64 %2443, 0
  br i1 %2448, label %2463, label %2449, !prof !628

2449:                                             ; preds = %2477, %2442
  %2450 = phi i64 [ %2443, %2442 ], [ %2482, %2477 ]
  %2451 = phi i32 [ %2444, %2442 ], [ %2478, %2477 ]
  %2452 = phi i32 [ %2445, %2442 ], [ %2479, %2477 ]
  %2453 = phi ptr [ %2446, %2442 ], [ %2470, %2477 ]
  %2454 = and i64 %2450, 1
  %2455 = icmp eq i64 %2454, 0
  br i1 %2455, label %2456, label %2498, !prof !629

2456:                                             ; preds = %2449, %2456
  %2457 = phi i32 [ %2460, %2456 ], [ %2452, %2449 ]
  %2458 = phi i64 [ %2459, %2456 ], [ %2450, %2449 ]
  %2459 = lshr exact i64 %2458, 1
  %2460 = add i32 %2457, 1
  %2461 = and i64 %2458, 2
  %2462 = icmp eq i64 %2461, 0
  br i1 %2462, label %2456, label %2498, !prof !630, !llvm.loop !232

2463:                                             ; preds = %2442
  %2464 = add i32 %2445, 63
  %2465 = and i32 %2464, -64
  %2466 = add i32 %2444, 1
  br label %2467

2467:                                             ; preds = %2494, %2463
  %2468 = phi i64 [ %2443, %2463 ], [ %2489, %2494 ]
  %2469 = phi i32 [ %2465, %2463 ], [ %2497, %2494 ]
  %2470 = phi ptr [ %2446, %2463 ], [ %2492, %2494 ]
  %2471 = phi i32 [ %2466, %2463 ], [ 0, %2494 ]
  %2472 = icmp eq i32 %2471, 2
  br i1 %2472, label %2488, label %2473, !prof !631

2473:                                             ; preds = %2467
  %2474 = add i32 %2469, 128
  %2475 = shl i32 %2471, 6
  %2476 = sub i32 %2474, %2475
  br label %2477

2477:                                             ; preds = %2473, %2484
  %2478 = phi i32 [ %2486, %2484 ], [ %2471, %2473 ]
  %2479 = phi i32 [ %2485, %2484 ], [ %2469, %2473 ]
  %2480 = zext i32 %2478 to i64
  %2481 = getelementptr inbounds %struct.bitmap_element_def, ptr %2470, i64 0, i32 3, i64 %2480
  %2482 = load i64, ptr %2481, align 8, !tbaa !231
  %2483 = icmp eq i64 %2482, 0
  br i1 %2483, label %2484, label %2449, !prof !632

2484:                                             ; preds = %2477
  %2485 = add i32 %2479, 64
  %2486 = add i32 %2478, 1
  %2487 = icmp eq i32 %2486, 2
  br i1 %2487, label %2488, label %2477, !prof !633, !llvm.loop !233

2488:                                             ; preds = %2484, %2467
  %2489 = phi i64 [ %2468, %2467 ], [ %2482, %2484 ]
  %2490 = phi i32 [ %2469, %2467 ], [ %2476, %2484 ]
  %2491 = phi i32 [ %2471, %2467 ], [ 2, %2484 ]
  %2492 = load ptr, ptr %2470, align 8, !tbaa !234
  %2493 = icmp eq ptr %2492, null
  br i1 %2493, label %2498, label %2494, !prof !634

2494:                                             ; preds = %2488
  %2495 = getelementptr inbounds %struct.bitmap_element_def, ptr %2492, i64 0, i32 2
  %2496 = load i32, ptr %2495, align 8, !tbaa !229
  %2497 = shl i32 %2496, 7
  br label %2467, !llvm.loop !235

2498:                                             ; preds = %2488, %2456, %2449
  %2499 = phi i64 [ %2450, %2449 ], [ %2459, %2456 ], [ %2489, %2488 ]
  %2500 = phi i32 [ %2451, %2449 ], [ %2451, %2456 ], [ %2491, %2488 ]
  %2501 = phi i32 [ %2452, %2449 ], [ %2460, %2456 ], [ %2490, %2488 ]
  %2502 = phi ptr [ %2453, %2449 ], [ %2453, %2456 ], [ %2492, %2488 ]
  %2503 = phi i1 [ false, %2449 ], [ false, %2456 ], [ true, %2488 ]
  br i1 %2503, label %2607, label %2504, !prof !635

2504:                                             ; preds = %2498
  %2505 = load ptr, ptr @varmap, align 8
  %2506 = zext i32 %2501 to i64
  %2507 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2505, i64 0, i32 2, i64 %2506
  %2508 = load ptr, ptr %2507, align 8, !tbaa !187
  %2509 = getelementptr inbounds %struct.variable_info, ptr %2508, i64 0, i32 3
  %2510 = load i64, ptr %2509, align 8, !tbaa !349
  %2511 = add i64 %2510, %2430
  %2512 = getelementptr inbounds %struct.variable_info, ptr %2508, i64 0, i32 1
  %2513 = load i8, ptr %2512, align 4
  %2514 = and i8 %2513, 8
  %2515 = icmp eq i8 %2514, 0
  br i1 %2515, label %2516, label %2520, !prof !636

2516:                                             ; preds = %2504
  %2517 = icmp eq i64 %2430, 0
  br i1 %2517, label %2520, label %2518

2518:                                             ; preds = %2516
  %2519 = call fastcc ptr @first_vi_for_offset(ptr noundef %2508, i64 noundef %2511)
  br label %2520

2520:                                             ; preds = %2518, %2516, %2504
  %2521 = phi ptr [ %2519, %2518 ], [ %2508, %2516 ], [ %2508, %2504 ]
  %2522 = phi i64 [ %2511, %2518 ], [ %2511, %2516 ], [ %2510, %2504 ]
  %2523 = icmp eq ptr %2521, null
  br i1 %2523, label %2603, label %2524, !prof !636

2524:                                             ; preds = %2520, %2600
  %2525 = phi ptr [ %2598, %2600 ], [ %2521, %2520 ]
  %2526 = phi i64 [ %2602, %2600 ], [ %2522, %2520 ]
  %2527 = phi i8 [ %2592, %2600 ], [ %2447, %2520 ]
  %2528 = load i32, ptr %2525, align 8, !tbaa !372
  %2529 = call fastcc i32 @find(i32 noundef %2528)
  %2530 = load ptr, ptr @varmap, align 8
  %2531 = zext i32 %2529 to i64
  %2532 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2530, i64 0, i32 2, i64 %2531
  %2533 = load ptr, ptr %2532, align 8, !tbaa !187
  %2534 = getelementptr inbounds %struct.variable_info, ptr %2533, i64 0, i32 1
  %2535 = load i8, ptr %2534, align 4
  %2536 = and i8 %2535, 2
  %2537 = icmp eq i8 %2536, 0
  br i1 %2537, label %2543, label %2538, !prof !637

2538:                                             ; preds = %2524
  %2539 = getelementptr inbounds %struct.variable_info, ptr %2533, i64 0, i32 8
  %2540 = load ptr, ptr %2539, align 8, !tbaa !226
  %2541 = call zeroext i8 @bitmap_ior_into(ptr noundef %2414, ptr noundef %2540) #28
  %2542 = or i8 %2541, %2527
  br label %2591

2543:                                             ; preds = %2524
  %2544 = load i32, ptr %2525, align 8, !tbaa !372
  %2545 = icmp eq i32 %2544, 3
  br i1 %2545, label %2546, label %2549, !prof !638

2546:                                             ; preds = %2543
  %2547 = call zeroext i8 @bitmap_set_bit(ptr noundef %2414, i32 noundef 3) #28
  %2548 = or i8 %2547, %2527
  br label %2591

2549:                                             ; preds = %2543
  %2550 = icmp eq i32 %2403, %2529
  br i1 %2550, label %2591, label %2551, !prof !543

2551:                                             ; preds = %2549
  %2552 = load ptr, ptr %1794, align 8, !tbaa !330
  %2553 = getelementptr inbounds ptr, ptr %2552, i64 %2531
  %2554 = load ptr, ptr %2553, align 8, !tbaa !187
  %2555 = icmp eq ptr %2554, null
  br i1 %2555, label %2556, label %2560, !prof !544

2556:                                             ; preds = %2551
  %2557 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %2558 = load ptr, ptr %1794, align 8, !tbaa !330
  %2559 = getelementptr inbounds ptr, ptr %2558, i64 %2531
  store ptr %2557, ptr %2559, align 8, !tbaa !187
  br label %2560

2560:                                             ; preds = %2556, %2551
  %2561 = load ptr, ptr %1794, align 8, !tbaa !330
  %2562 = getelementptr inbounds ptr, ptr %2561, i64 %2531
  %2563 = load ptr, ptr %2562, align 8, !tbaa !187
  %2564 = call zeroext i8 @bitmap_set_bit(ptr noundef %2563, i32 noundef %2403) #28
  %2565 = icmp eq i8 %2564, 0
  br i1 %2565, label %2591, label %2566, !prof !545

2566:                                             ; preds = %2560
  %2567 = load ptr, ptr @varmap, align 8
  %2568 = icmp eq ptr %2567, null
  br i1 %2568, label %2571, label %2569, !prof !546

2569:                                             ; preds = %2566
  %2570 = load i32, ptr %2567, align 8, !tbaa !219
  br label %2571

2571:                                             ; preds = %2569, %2566
  %2572 = phi i32 [ %2570, %2569 ], [ 0, %2566 ]
  %2573 = icmp ugt i32 %2572, %2403
  br i1 %2573, label %2574, label %2583, !prof !547

2574:                                             ; preds = %2571
  br i1 %2568, label %2577, label %2575, !prof !548

2575:                                             ; preds = %2574
  %2576 = load i32, ptr %2567, align 8, !tbaa !219
  br label %2577

2577:                                             ; preds = %2575, %2574
  %2578 = phi i32 [ %2576, %2575 ], [ 0, %2574 ]
  %2579 = icmp ugt i32 %2578, %2529
  br i1 %2579, label %2580, label %2583, !prof !549

2580:                                             ; preds = %2577
  %2581 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %2582 = add i32 %2581, 1
  store i32 %2582, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %2583

2583:                                             ; preds = %2580, %2577, %2571
  %2584 = load ptr, ptr @varmap, align 8
  %2585 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2584, i64 0, i32 2, i64 %2531
  %2586 = load ptr, ptr %2585, align 8, !tbaa !187
  %2587 = getelementptr inbounds %struct.variable_info, ptr %2586, i64 0, i32 8
  %2588 = load ptr, ptr %2587, align 8, !tbaa !226
  %2589 = call zeroext i8 @bitmap_ior_into(ptr noundef %2414, ptr noundef %2588) #28
  %2590 = or i8 %2589, %2527
  br label %2591

2591:                                             ; preds = %2549, %2560, %2583, %2546, %2538
  %2592 = phi i8 [ %2542, %2538 ], [ %2548, %2546 ], [ %2590, %2583 ], [ %2527, %2560 ], [ %2527, %2549 ]
  %2593 = getelementptr inbounds %struct.variable_info, ptr %2525, i64 0, i32 3
  %2594 = load i64, ptr %2593, align 8, !tbaa !349
  %2595 = icmp eq i64 %2594, %2526
  br i1 %2595, label %2603, label %2596, !prof !639

2596:                                             ; preds = %2591
  %2597 = getelementptr inbounds %struct.variable_info, ptr %2525, i64 0, i32 2
  %2598 = load ptr, ptr %2597, align 8, !tbaa !354
  %2599 = icmp eq ptr %2598, null
  br i1 %2599, label %2603, label %2600

2600:                                             ; preds = %2596
  %2601 = getelementptr inbounds %struct.variable_info, ptr %2598, i64 0, i32 3
  %2602 = load i64, ptr %2601, align 8, !tbaa !349
  br label %2524, !llvm.loop !640

2603:                                             ; preds = %2596, %2591, %2520
  %2604 = phi i8 [ %2447, %2520 ], [ %2592, %2591 ], [ %2592, %2596 ]
  %2605 = lshr i64 %2499, 1
  %2606 = add i32 %2501, 1
  br label %2442, !llvm.loop !641

2607:                                             ; preds = %2498, %2424
  %2608 = phi i8 [ %2425, %2424 ], [ %2447, %2498 ]
  %2609 = icmp eq i8 %2608, 0
  br i1 %2609, label %2807, label %2610, !prof !642

2610:                                             ; preds = %2607
  %2611 = load ptr, ptr @varmap, align 8
  %2612 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2611, i64 0, i32 2, i64 %2405
  %2613 = load ptr, ptr %2612, align 8, !tbaa !187
  %2614 = getelementptr inbounds %struct.variable_info, ptr %2613, i64 0, i32 8
  store ptr %2414, ptr %2614, align 8, !tbaa !226
  %2615 = load ptr, ptr @changed, align 8, !tbaa !187
  %2616 = lshr i32 %2403, 6
  %2617 = zext nneg i32 %2616 to i64
  %2618 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2615, i64 0, i32 3, i64 %2617
  %2619 = load i64, ptr %2618, align 8, !tbaa !231
  %2620 = and i32 %2403, 63
  %2621 = zext nneg i32 %2620 to i64
  %2622 = shl nuw i64 1, %2621
  %2623 = and i64 %2619, %2622
  %2624 = icmp eq i64 %2623, 0
  br i1 %2624, label %2625, label %2807, !prof !643

2625:                                             ; preds = %2610
  %2626 = load ptr, ptr %2615, align 8, !tbaa !469
  %2627 = icmp eq ptr %2626, null
  br i1 %2627, label %2632, label %2628, !prof !643

2628:                                             ; preds = %2625
  %2629 = getelementptr inbounds i8, ptr %2626, i64 %2617
  %2630 = load i8, ptr %2629, align 1, !tbaa !198
  %2631 = add i8 %2630, 1
  store i8 %2631, ptr %2629, align 1, !tbaa !198
  br label %2632

2632:                                             ; preds = %2628, %2625
  %2633 = load i64, ptr %2618, align 8, !tbaa !231
  %2634 = or i64 %2633, %2622
  store i64 %2634, ptr %2618, align 8, !tbaa !231
  %2635 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2636 = add i32 %2635, 1
  store i32 %2636, ptr @changed_count, align 4, !tbaa !202
  br label %2807

2637:                                             ; preds = %2401
  %2638 = icmp eq i32 %2064, 0
  br i1 %2638, label %2640, label %2639, !prof !644

2639:                                             ; preds = %2637, %2401
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1749, ptr noundef nonnull @.str.4) #28
  br label %2640

2640:                                             ; preds = %2639, %2637
  %2641 = load i32, ptr %2057, align 4, !tbaa !214
  %2642 = load ptr, ptr @varmap, align 8
  %2643 = zext i32 %2641 to i64
  %2644 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2642, i64 0, i32 2, i64 %2643
  %2645 = load ptr, ptr %2644, align 8, !tbaa !187
  %2646 = getelementptr inbounds %struct.variable_info, ptr %2645, i64 0, i32 8
  %2647 = load ptr, ptr %2646, align 8, !tbaa !226
  %2648 = load i32, ptr %2054, align 4, !tbaa !209
  %2649 = zext i32 %2648 to i64
  %2650 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2642, i64 0, i32 2, i64 %2649
  %2651 = load ptr, ptr %2650, align 8, !tbaa !187
  %2652 = getelementptr inbounds %struct.variable_info, ptr %2651, i64 0, i32 8
  %2653 = load ptr, ptr %2652, align 8, !tbaa !226
  %2654 = getelementptr inbounds %struct.constraint, ptr %2050, i64 0, i32 1, i32 2
  %2655 = load i64, ptr %2654, align 8, !tbaa !215
  %2656 = icmp eq i64 %2655, 0
  br i1 %2656, label %2657, label %2659, !prof !645

2657:                                             ; preds = %2640
  %2658 = call zeroext i8 @bitmap_ior_into(ptr noundef %2653, ptr noundef %2647) #28
  br label %2775

2659:                                             ; preds = %2640
  %2660 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #28
  call void @bitmap_copy(ptr noundef %2660, ptr noundef %2647) #28
  %2661 = call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #28
  %2662 = icmp eq i64 %2655, -9223372036854775808
  br i1 %2662, label %2663, label %2664, !prof !646

2663:                                             ; preds = %2659
  call fastcc void @solution_set_expand(ptr noundef %2660, ptr noundef %2660)
  br label %2773

2664:                                             ; preds = %2659
  %2665 = load ptr, ptr %2660, align 8, !tbaa !227
  %2666 = icmp eq ptr %2665, null
  %2667 = select i1 %2666, ptr @bitmap_zero_bits, ptr %2665, !prof !647
  %2668 = getelementptr inbounds %struct.bitmap_element_def, ptr %2667, i64 0, i32 2
  %2669 = load i32, ptr %2668, align 8, !tbaa !229
  %2670 = shl i32 %2669, 7
  %2671 = getelementptr inbounds %struct.bitmap_element_def, ptr %2667, i64 0, i32 3
  %2672 = load i64, ptr %2671, align 8, !tbaa !231
  %2673 = icmp eq i64 %2672, 0
  %2674 = zext i1 %2673 to i32
  %2675 = or disjoint i32 %2670, %2674
  br label %2676

2676:                                             ; preds = %2769, %2664
  %2677 = phi i64 [ %2672, %2664 ], [ %2770, %2769 ]
  %2678 = phi i32 [ 0, %2664 ], [ %2733, %2769 ]
  %2679 = phi i32 [ %2675, %2664 ], [ %2771, %2769 ]
  %2680 = phi ptr [ %2667, %2664 ], [ %2735, %2769 ]
  %2681 = icmp eq i64 %2677, 0
  br i1 %2681, label %2696, label %2682, !prof !648

2682:                                             ; preds = %2710, %2676
  %2683 = phi i64 [ %2677, %2676 ], [ %2715, %2710 ]
  %2684 = phi i32 [ %2678, %2676 ], [ %2711, %2710 ]
  %2685 = phi i32 [ %2679, %2676 ], [ %2712, %2710 ]
  %2686 = phi ptr [ %2680, %2676 ], [ %2703, %2710 ]
  %2687 = and i64 %2683, 1
  %2688 = icmp eq i64 %2687, 0
  br i1 %2688, label %2689, label %2731, !prof !649

2689:                                             ; preds = %2682, %2689
  %2690 = phi i32 [ %2693, %2689 ], [ %2685, %2682 ]
  %2691 = phi i64 [ %2692, %2689 ], [ %2683, %2682 ]
  %2692 = lshr exact i64 %2691, 1
  %2693 = add i32 %2690, 1
  %2694 = and i64 %2691, 2
  %2695 = icmp eq i64 %2694, 0
  br i1 %2695, label %2689, label %2731, !prof !650, !llvm.loop !232

2696:                                             ; preds = %2676
  %2697 = add i32 %2679, 63
  %2698 = and i32 %2697, -64
  %2699 = add i32 %2678, 1
  br label %2700

2700:                                             ; preds = %2727, %2696
  %2701 = phi i64 [ %2677, %2696 ], [ %2722, %2727 ]
  %2702 = phi i32 [ %2698, %2696 ], [ %2730, %2727 ]
  %2703 = phi ptr [ %2680, %2696 ], [ %2725, %2727 ]
  %2704 = phi i32 [ %2699, %2696 ], [ 0, %2727 ]
  %2705 = icmp eq i32 %2704, 2
  br i1 %2705, label %2721, label %2706, !prof !651

2706:                                             ; preds = %2700
  %2707 = add i32 %2702, 128
  %2708 = shl i32 %2704, 6
  %2709 = sub i32 %2707, %2708
  br label %2710

2710:                                             ; preds = %2706, %2717
  %2711 = phi i32 [ %2719, %2717 ], [ %2704, %2706 ]
  %2712 = phi i32 [ %2718, %2717 ], [ %2702, %2706 ]
  %2713 = zext i32 %2711 to i64
  %2714 = getelementptr inbounds %struct.bitmap_element_def, ptr %2703, i64 0, i32 3, i64 %2713
  %2715 = load i64, ptr %2714, align 8, !tbaa !231
  %2716 = icmp eq i64 %2715, 0
  br i1 %2716, label %2717, label %2682, !prof !652

2717:                                             ; preds = %2710
  %2718 = add i32 %2712, 64
  %2719 = add i32 %2711, 1
  %2720 = icmp eq i32 %2719, 2
  br i1 %2720, label %2721, label %2710, !prof !653, !llvm.loop !233

2721:                                             ; preds = %2717, %2700
  %2722 = phi i64 [ %2701, %2700 ], [ %2715, %2717 ]
  %2723 = phi i32 [ %2702, %2700 ], [ %2709, %2717 ]
  %2724 = phi i32 [ %2704, %2700 ], [ 2, %2717 ]
  %2725 = load ptr, ptr %2703, align 8, !tbaa !234
  %2726 = icmp eq ptr %2725, null
  br i1 %2726, label %2731, label %2727, !prof !652

2727:                                             ; preds = %2721
  %2728 = getelementptr inbounds %struct.bitmap_element_def, ptr %2725, i64 0, i32 2
  %2729 = load i32, ptr %2728, align 8, !tbaa !229
  %2730 = shl i32 %2729, 7
  br label %2700, !llvm.loop !235

2731:                                             ; preds = %2721, %2689, %2682
  %2732 = phi i64 [ %2683, %2682 ], [ %2692, %2689 ], [ %2722, %2721 ]
  %2733 = phi i32 [ %2684, %2682 ], [ %2684, %2689 ], [ %2724, %2721 ]
  %2734 = phi i32 [ %2685, %2682 ], [ %2693, %2689 ], [ %2723, %2721 ]
  %2735 = phi ptr [ %2686, %2682 ], [ %2686, %2689 ], [ %2725, %2721 ]
  %2736 = phi i1 [ false, %2682 ], [ false, %2689 ], [ true, %2721 ]
  br i1 %2736, label %2772, label %2737, !prof !648

2737:                                             ; preds = %2731
  %2738 = load ptr, ptr @varmap, align 8
  %2739 = zext i32 %2734 to i64
  %2740 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2738, i64 0, i32 2, i64 %2739
  %2741 = load ptr, ptr %2740, align 8, !tbaa !187
  %2742 = getelementptr inbounds %struct.variable_info, ptr %2741, i64 0, i32 1
  %2743 = load i8, ptr %2742, align 4
  %2744 = and i8 %2743, 13
  %2745 = icmp eq i8 %2744, 0
  br i1 %2745, label %2746, label %2766, !prof !654

2746:                                             ; preds = %2737
  %2747 = icmp slt i64 %2655, 0
  %2748 = getelementptr inbounds %struct.variable_info, ptr %2741, i64 0, i32 3
  %2749 = load i64, ptr %2748, align 8, !tbaa !349
  %2750 = add i64 %2749, %2655
  %2751 = icmp ugt i64 %2750, %2749
  %2752 = select i1 %2747, i1 %2751, i1 false
  %2753 = select i1 %2752, i64 0, i64 %2750
  %2754 = call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef %2741, i64 noundef %2753)
  %2755 = load i32, ptr %2754, align 8, !tbaa !372
  %2756 = call zeroext i8 @bitmap_set_bit(ptr noundef %2661, i32 noundef %2755) #28
  %2757 = getelementptr inbounds %struct.variable_info, ptr %2754, i64 0, i32 3
  %2758 = load i64, ptr %2757, align 8, !tbaa !349
  %2759 = icmp eq i64 %2758, %2753
  br i1 %2759, label %2769, label %2760

2760:                                             ; preds = %2746
  %2761 = getelementptr inbounds %struct.variable_info, ptr %2754, i64 0, i32 2
  %2762 = load ptr, ptr %2761, align 8, !tbaa !354
  %2763 = icmp eq ptr %2762, null
  br i1 %2763, label %2769, label %2764

2764:                                             ; preds = %2760
  %2765 = load i32, ptr %2762, align 8, !tbaa !372
  br label %2766

2766:                                             ; preds = %2737, %2764
  %2767 = phi i32 [ %2765, %2764 ], [ %2734, %2737 ]
  %2768 = call zeroext i8 @bitmap_set_bit(ptr noundef %2661, i32 noundef %2767) #28
  br label %2769

2769:                                             ; preds = %2766, %2760, %2746
  %2770 = lshr i64 %2732, 1
  %2771 = add i32 %2734, 1
  br label %2676, !llvm.loop !655

2772:                                             ; preds = %2731
  call void @bitmap_copy(ptr noundef nonnull %2660, ptr noundef %2661) #28
  call void @bitmap_obstack_free(ptr noundef %2661) #28
  br label %2773

2773:                                             ; preds = %2772, %2663
  %2774 = call zeroext i8 @bitmap_ior_into(ptr noundef %2653, ptr noundef %2660) #28
  call void @bitmap_obstack_free(ptr noundef %2660) #28
  br label %2775

2775:                                             ; preds = %2773, %2657
  %2776 = phi i8 [ %2658, %2657 ], [ %2774, %2773 ]
  %2777 = icmp eq i8 %2776, 0
  br i1 %2777, label %2807, label %2778, !prof !656

2778:                                             ; preds = %2775
  %2779 = load i32, ptr %2054, align 4, !tbaa !209
  %2780 = load ptr, ptr @varmap, align 8
  %2781 = zext i32 %2779 to i64
  %2782 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2780, i64 0, i32 2, i64 %2781
  %2783 = load ptr, ptr %2782, align 8, !tbaa !187
  %2784 = getelementptr inbounds %struct.variable_info, ptr %2783, i64 0, i32 8
  store ptr %2653, ptr %2784, align 8, !tbaa !226
  %2785 = load ptr, ptr @changed, align 8, !tbaa !187
  %2786 = lshr i32 %2779, 6
  %2787 = zext nneg i32 %2786 to i64
  %2788 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2785, i64 0, i32 3, i64 %2787
  %2789 = load i64, ptr %2788, align 8, !tbaa !231
  %2790 = and i32 %2779, 63
  %2791 = zext nneg i32 %2790 to i64
  %2792 = shl nuw i64 1, %2791
  %2793 = and i64 %2789, %2792
  %2794 = icmp eq i64 %2793, 0
  br i1 %2794, label %2795, label %2807, !prof !657

2795:                                             ; preds = %2778
  %2796 = load ptr, ptr %2785, align 8, !tbaa !469
  %2797 = icmp eq ptr %2796, null
  br i1 %2797, label %2802, label %2798, !prof !657

2798:                                             ; preds = %2795
  %2799 = getelementptr inbounds i8, ptr %2796, i64 %2787
  %2800 = load i8, ptr %2799, align 1, !tbaa !198
  %2801 = add i8 %2800, 1
  store i8 %2801, ptr %2799, align 1, !tbaa !198
  br label %2802

2802:                                             ; preds = %2798, %2795
  %2803 = load i64, ptr %2788, align 8, !tbaa !231
  %2804 = or i64 %2803, %2792
  store i64 %2804, ptr %2788, align 8, !tbaa !231
  %2805 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2806 = add i32 %2805, 1
  store i32 %2806, ptr @changed_count, align 4, !tbaa !202
  br label %2807

2807:                                             ; preds = %2207, %2802, %2778, %2775, %2632, %2610, %2607, %2402, %2131, %2113, %2104, %2099, %2070, %2060
  %2808 = add i32 %2041, 1
  br label %2040, !llvm.loop !658

2809:                                             ; preds = %2049
  %2810 = load ptr, ptr %2037, align 8, !tbaa !227
  %2811 = icmp eq ptr %2810, null
  br i1 %2811, label %1999, label %2812, !prof !603

2812:                                             ; preds = %2809
  %2813 = call fastcc i32 @find(i32 noundef 3)
  %2814 = load ptr, ptr %1795, align 8, !tbaa !330
  %2815 = getelementptr inbounds ptr, ptr %2814, i64 %1847
  %2816 = load ptr, ptr %2815, align 8, !tbaa !187
  %2817 = icmp eq ptr %2816, null
  br i1 %2817, label %1999, label %2818, !prof !659

2818:                                             ; preds = %2812
  %2819 = load ptr, ptr %2816, align 8, !tbaa !227
  %2820 = icmp eq ptr %2819, null
  %2821 = select i1 %2820, ptr @bitmap_zero_bits, ptr %2819, !prof !660
  %2822 = getelementptr inbounds %struct.bitmap_element_def, ptr %2821, i64 0, i32 2
  %2823 = load i32, ptr %2822, align 8, !tbaa !229
  %2824 = shl i32 %2823, 7
  %2825 = getelementptr inbounds %struct.bitmap_element_def, ptr %2821, i64 0, i32 3
  %2826 = load i64, ptr %2825, align 8, !tbaa !231
  %2827 = icmp eq i64 %2826, 0
  %2828 = zext i1 %2827 to i32
  %2829 = or disjoint i32 %2824, %2828
  %2830 = icmp eq i32 %1840, %2813
  br label %2831

2831:                                             ; preds = %2936, %2818
  %2832 = phi i64 [ %2826, %2818 ], [ %2937, %2936 ]
  %2833 = phi i32 [ 0, %2818 ], [ %2888, %2936 ]
  %2834 = phi i32 [ %2829, %2818 ], [ %2938, %2936 ]
  %2835 = phi ptr [ %2821, %2818 ], [ %2890, %2936 ]
  %2836 = icmp eq i64 %2832, 0
  br i1 %2836, label %2851, label %2837, !prof !661

2837:                                             ; preds = %2865, %2831
  %2838 = phi i64 [ %2832, %2831 ], [ %2870, %2865 ]
  %2839 = phi i32 [ %2833, %2831 ], [ %2866, %2865 ]
  %2840 = phi i32 [ %2834, %2831 ], [ %2867, %2865 ]
  %2841 = phi ptr [ %2835, %2831 ], [ %2858, %2865 ]
  %2842 = and i64 %2838, 1
  %2843 = icmp eq i64 %2842, 0
  br i1 %2843, label %2844, label %2886, !prof !662

2844:                                             ; preds = %2837, %2844
  %2845 = phi i32 [ %2848, %2844 ], [ %2840, %2837 ]
  %2846 = phi i64 [ %2847, %2844 ], [ %2838, %2837 ]
  %2847 = lshr exact i64 %2846, 1
  %2848 = add i32 %2845, 1
  %2849 = and i64 %2846, 2
  %2850 = icmp eq i64 %2849, 0
  br i1 %2850, label %2844, label %2886, !prof !663, !llvm.loop !232

2851:                                             ; preds = %2831
  %2852 = add i32 %2834, 63
  %2853 = and i32 %2852, -64
  %2854 = add i32 %2833, 1
  br label %2855

2855:                                             ; preds = %2882, %2851
  %2856 = phi i64 [ %2832, %2851 ], [ %2877, %2882 ]
  %2857 = phi i32 [ %2853, %2851 ], [ %2885, %2882 ]
  %2858 = phi ptr [ %2835, %2851 ], [ %2880, %2882 ]
  %2859 = phi i32 [ %2854, %2851 ], [ 0, %2882 ]
  %2860 = icmp eq i32 %2859, 2
  br i1 %2860, label %2876, label %2861, !prof !664

2861:                                             ; preds = %2855
  %2862 = add i32 %2857, 128
  %2863 = shl i32 %2859, 6
  %2864 = sub i32 %2862, %2863
  br label %2865

2865:                                             ; preds = %2861, %2872
  %2866 = phi i32 [ %2874, %2872 ], [ %2859, %2861 ]
  %2867 = phi i32 [ %2873, %2872 ], [ %2857, %2861 ]
  %2868 = zext i32 %2866 to i64
  %2869 = getelementptr inbounds %struct.bitmap_element_def, ptr %2858, i64 0, i32 3, i64 %2868
  %2870 = load i64, ptr %2869, align 8, !tbaa !231
  %2871 = icmp eq i64 %2870, 0
  br i1 %2871, label %2872, label %2837, !prof !665

2872:                                             ; preds = %2865
  %2873 = add i32 %2867, 64
  %2874 = add i32 %2866, 1
  %2875 = icmp eq i32 %2874, 2
  br i1 %2875, label %2876, label %2865, !prof !666, !llvm.loop !233

2876:                                             ; preds = %2872, %2855
  %2877 = phi i64 [ %2856, %2855 ], [ %2870, %2872 ]
  %2878 = phi i32 [ %2857, %2855 ], [ %2864, %2872 ]
  %2879 = phi i32 [ %2859, %2855 ], [ 2, %2872 ]
  %2880 = load ptr, ptr %2858, align 8, !tbaa !234
  %2881 = icmp eq ptr %2880, null
  br i1 %2881, label %2886, label %2882, !prof !667

2882:                                             ; preds = %2876
  %2883 = getelementptr inbounds %struct.bitmap_element_def, ptr %2880, i64 0, i32 2
  %2884 = load i32, ptr %2883, align 8, !tbaa !229
  %2885 = shl i32 %2884, 7
  br label %2855, !llvm.loop !235

2886:                                             ; preds = %2876, %2844, %2837
  %2887 = phi i64 [ %2838, %2837 ], [ %2847, %2844 ], [ %2877, %2876 ]
  %2888 = phi i32 [ %2839, %2837 ], [ %2839, %2844 ], [ %2879, %2876 ]
  %2889 = phi i32 [ %2840, %2837 ], [ %2848, %2844 ], [ %2878, %2876 ]
  %2890 = phi ptr [ %2841, %2837 ], [ %2841, %2844 ], [ %2880, %2876 ]
  %2891 = phi i1 [ false, %2837 ], [ false, %2844 ], [ true, %2876 ]
  br i1 %2891, label %1999, label %2892, !prof !668, !llvm.loop !600

2892:                                             ; preds = %2886
  %2893 = call fastcc i32 @find(i32 noundef %2889)
  %2894 = load ptr, ptr @varmap, align 8
  %2895 = zext i32 %2893 to i64
  %2896 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2894, i64 0, i32 2, i64 %2895
  %2897 = load ptr, ptr %2896, align 8, !tbaa !187
  %2898 = getelementptr inbounds %struct.variable_info, ptr %2897, i64 0, i32 8
  %2899 = load ptr, ptr %2898, align 8, !tbaa !226
  %2900 = icmp eq i32 %2893, %1840
  br i1 %2900, label %2936, label %2901, !prof !669

2901:                                             ; preds = %2892
  br i1 %2830, label %2902, label %2904, !prof !669

2902:                                             ; preds = %2901
  %2903 = call zeroext i8 @bitmap_set_bit(ptr noundef %2899, i32 noundef 3) #28
  br label %2906

2904:                                             ; preds = %2901
  %2905 = call zeroext i8 @bitmap_ior_into(ptr noundef %2899, ptr noundef nonnull %1789) #28
  br label %2906

2906:                                             ; preds = %2904, %2902
  %2907 = phi i8 [ %2903, %2902 ], [ %2905, %2904 ]
  %2908 = icmp eq i8 %2907, 0
  br i1 %2908, label %2936, label %2909, !prof !670

2909:                                             ; preds = %2906
  %2910 = load ptr, ptr @varmap, align 8
  %2911 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %2910, i64 0, i32 2, i64 %2895
  %2912 = load ptr, ptr %2911, align 8, !tbaa !187
  %2913 = getelementptr inbounds %struct.variable_info, ptr %2912, i64 0, i32 8
  store ptr %2899, ptr %2913, align 8, !tbaa !226
  %2914 = load ptr, ptr @changed, align 8, !tbaa !187
  %2915 = lshr i32 %2893, 6
  %2916 = zext nneg i32 %2915 to i64
  %2917 = getelementptr inbounds %struct.simple_bitmap_def, ptr %2914, i64 0, i32 3, i64 %2916
  %2918 = load i64, ptr %2917, align 8, !tbaa !231
  %2919 = and i32 %2893, 63
  %2920 = zext nneg i32 %2919 to i64
  %2921 = shl nuw i64 1, %2920
  %2922 = and i64 %2918, %2921
  %2923 = icmp eq i64 %2922, 0
  br i1 %2923, label %2924, label %2936, !prof !671

2924:                                             ; preds = %2909
  %2925 = load ptr, ptr %2914, align 8, !tbaa !469
  %2926 = icmp eq ptr %2925, null
  br i1 %2926, label %2931, label %2927, !prof !672

2927:                                             ; preds = %2924
  %2928 = getelementptr inbounds i8, ptr %2925, i64 %2916
  %2929 = load i8, ptr %2928, align 1, !tbaa !198
  %2930 = add i8 %2929, 1
  store i8 %2930, ptr %2928, align 1, !tbaa !198
  br label %2931

2931:                                             ; preds = %2927, %2924
  %2932 = load i64, ptr %2917, align 8, !tbaa !231
  %2933 = or i64 %2932, %2921
  store i64 %2933, ptr %2917, align 8, !tbaa !231
  %2934 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2935 = add i32 %2934, 1
  store i32 %2935, ptr @changed_count, align 4, !tbaa !202
  br label %2936

2936:                                             ; preds = %2931, %2909, %2906, %2892
  %2937 = lshr i64 %2887, 1
  %2938 = add i32 %2889, 1
  br label %2831, !llvm.loop !673

2939:                                             ; preds = %1832
  %2940 = load ptr, ptr %1799, align 8, !tbaa !583
  %2941 = load ptr, ptr %2940, align 8, !tbaa !469
  call void @free(ptr noundef %2941)
  %2942 = load ptr, ptr %1799, align 8, !tbaa !583
  call void @free(ptr noundef %2942)
  %2943 = load ptr, ptr %1802, align 8, !tbaa !187
  %2944 = icmp eq ptr %2943, null
  br i1 %2944, label %2946, label %2945, !prof !674

2945:                                             ; preds = %2939
  call void @free(ptr noundef %2943)
  br label %2946

2946:                                             ; preds = %2945, %2939
  store ptr null, ptr %1802, align 8, !tbaa !187
  call void @free(ptr noundef %1799)
  call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #28
  %2947 = load i32, ptr @changed_count, align 4, !tbaa !202
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %2949, label %1796, !prof !675, !llvm.loop !676

2949:                                             ; preds = %2946, %1788
  call void @bitmap_obstack_free(ptr noundef %1789) #28
  %2950 = load ptr, ptr @changed, align 8, !tbaa !187
  %2951 = load ptr, ptr %2950, align 8, !tbaa !469
  call void @free(ptr noundef %2951)
  call void @free(ptr noundef %2950)
  call void @bitmap_obstack_release(ptr noundef nonnull @oldpta_obstack) #28
  %2952 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %2953 = icmp eq ptr %2952, null
  br i1 %2953, label %2955, label %2954, !prof !272

2954:                                             ; preds = %2949
  call fastcc void @dump_sa_points_to_info(ptr noundef nonnull %2952)
  br label %2955

2955:                                             ; preds = %2954, %2949
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_what_var_points_to(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #14 !prof !677 !PGOFuncName !678 {
  %3 = alloca %struct.shared_bitmap_info, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %4 = load i32, ptr %0, align 8, !tbaa !372
  %5 = tail call fastcc i32 @find(i32 noundef %4)
  %6 = load ptr, ptr @varmap, align 8
  %7 = zext i32 %5 to i64
  %8 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %6, i64 0, i32 2, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !187
  %10 = getelementptr inbounds %struct.variable_info, ptr %9, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = load ptr, ptr %11, align 8, !tbaa !227
  %13 = icmp eq ptr %12, null
  %14 = select i1 %13, ptr @bitmap_zero_bits, ptr %12, !prof !679
  %15 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !229
  %17 = shl i32 %16, 7
  %18 = getelementptr inbounds %struct.bitmap_element_def, ptr %14, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !231
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = or disjoint i32 %17, %21
  br label %23

23:                                               ; preds = %121, %2
  %24 = phi i64 [ %19, %2 ], [ %122, %121 ]
  %25 = phi i32 [ 0, %2 ], [ %80, %121 ]
  %26 = phi i32 [ %22, %2 ], [ %123, %121 ]
  %27 = phi ptr [ %14, %2 ], [ %82, %121 ]
  %28 = icmp eq i64 %24, 0
  br i1 %28, label %43, label %29, !prof !680

29:                                               ; preds = %57, %23
  %30 = phi i64 [ %24, %23 ], [ %62, %57 ]
  %31 = phi i32 [ %25, %23 ], [ %58, %57 ]
  %32 = phi i32 [ %26, %23 ], [ %59, %57 ]
  %33 = phi ptr [ %27, %23 ], [ %50, %57 ]
  %34 = and i64 %30, 1
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %78, !prof !681

36:                                               ; preds = %29, %36
  %37 = phi i32 [ %40, %36 ], [ %32, %29 ]
  %38 = phi i64 [ %39, %36 ], [ %30, %29 ]
  %39 = lshr exact i64 %38, 1
  %40 = add i32 %37, 1
  %41 = and i64 %38, 2
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %36, label %78, !prof !682, !llvm.loop !232

43:                                               ; preds = %23
  %44 = add i32 %26, 63
  %45 = and i32 %44, -64
  %46 = add i32 %25, 1
  br label %47

47:                                               ; preds = %74, %43
  %48 = phi i64 [ %24, %43 ], [ %69, %74 ]
  %49 = phi i32 [ %45, %43 ], [ %77, %74 ]
  %50 = phi ptr [ %27, %43 ], [ %72, %74 ]
  %51 = phi i32 [ %46, %43 ], [ 0, %74 ]
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %68, label %53, !prof !683

53:                                               ; preds = %47
  %54 = add i32 %49, 128
  %55 = shl i32 %51, 6
  %56 = sub i32 %54, %55
  br label %57

57:                                               ; preds = %53, %64
  %58 = phi i32 [ %66, %64 ], [ %51, %53 ]
  %59 = phi i32 [ %65, %64 ], [ %49, %53 ]
  %60 = zext i32 %58 to i64
  %61 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !231
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %29, !prof !684

64:                                               ; preds = %57
  %65 = add i32 %59, 64
  %66 = add i32 %58, 1
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %68, label %57, !prof !685, !llvm.loop !233

68:                                               ; preds = %64, %47
  %69 = phi i64 [ %48, %47 ], [ %62, %64 ]
  %70 = phi i32 [ %49, %47 ], [ %56, %64 ]
  %71 = phi i32 [ %51, %47 ], [ 2, %64 ]
  %72 = load ptr, ptr %50, align 8, !tbaa !234
  %73 = icmp eq ptr %72, null
  br i1 %73, label %78, label %74, !prof !686

74:                                               ; preds = %68
  %75 = getelementptr inbounds %struct.bitmap_element_def, ptr %72, i64 0, i32 2
  %76 = load i32, ptr %75, align 8, !tbaa !229
  %77 = shl i32 %76, 7
  br label %47, !llvm.loop !235

78:                                               ; preds = %68, %36, %29
  %79 = phi i64 [ %30, %29 ], [ %39, %36 ], [ %69, %68 ]
  %80 = phi i32 [ %31, %29 ], [ %31, %36 ], [ %71, %68 ]
  %81 = phi i32 [ %32, %29 ], [ %40, %36 ], [ %70, %68 ]
  %82 = phi ptr [ %33, %29 ], [ %33, %36 ], [ %72, %68 ]
  %83 = phi i1 [ false, %29 ], [ false, %36 ], [ true, %68 ]
  br i1 %83, label %124, label %84, !prof !687

84:                                               ; preds = %78
  %85 = load ptr, ptr @varmap, align 8
  %86 = zext i32 %81 to i64
  %87 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %85, i64 0, i32 2, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !187
  %89 = getelementptr inbounds %struct.variable_info, ptr %88, i64 0, i32 1
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %114, label %93, !prof !688

93:                                               ; preds = %84
  %94 = load i32, ptr %88, align 8, !tbaa !372
  switch i32 %94, label %105 [
    i32 0, label %95
    i32 3, label %98
    i32 5, label %101
    i32 4, label %102
  ], !prof !689

95:                                               ; preds = %93
  %96 = load i8, ptr %1, align 8
  %97 = or i8 %96, 8
  store i8 %97, ptr %1, align 8
  br label %114

98:                                               ; preds = %93
  %99 = load i8, ptr %1, align 8
  %100 = or i8 %99, 4
  store i8 %100, ptr %1, align 8
  br label %114

101:                                              ; preds = %93
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4820, ptr noundef nonnull @.str.4) #28
  br label %114

102:                                              ; preds = %93
  %103 = load i8, ptr %1, align 8
  %104 = or i8 %103, 2
  store i8 %104, ptr %1, align 8
  br label %114

105:                                              ; preds = %93
  %106 = and i8 %90, 16
  %107 = icmp ne i8 %106, 0
  %108 = icmp eq i32 %94, 2
  %109 = or i1 %107, %108
  br i1 %109, label %114, label %110, !prof !690

110:                                              ; preds = %105
  switch i32 %94, label %114 [
    i32 1, label %111
    i32 7, label %111
  ]

111:                                              ; preds = %110, %110
  %112 = load i8, ptr %1, align 8
  %113 = or i8 %112, 1
  store i8 %113, ptr %1, align 8
  br label %114

114:                                              ; preds = %110, %95, %101, %105, %111, %102, %98, %84
  %115 = load i8, ptr %89, align 4
  %116 = and i8 %115, 32
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %121, label %118, !prof !691

118:                                              ; preds = %114
  %119 = load i8, ptr %1, align 8
  %120 = or i8 %119, 32
  store i8 %120, ptr %1, align 8
  br label %121

121:                                              ; preds = %118, %114
  %122 = lshr i64 %79, 1
  %123 = add i32 %81, 1
  br label %23, !llvm.loop !692

124:                                              ; preds = %78
  %125 = load i8, ptr %1, align 8
  %126 = and i8 %125, 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %136, label %128, !prof !693

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 1
  %130 = load i8, ptr %129, align 4
  %131 = and i8 %130, 1
  %132 = icmp ne i8 %131, 0
  %133 = and i8 %125, 32
  %134 = icmp eq i8 %133, 0
  %135 = or i1 %134, %132
  br i1 %135, label %264, label %136

136:                                              ; preds = %128, %124
  %137 = tail call ptr @bitmap_gc_alloc_stat() #28
  %138 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !324
  %139 = add i32 %138, 1
  store i32 %139, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !324
  %140 = load ptr, ptr %10, align 8, !tbaa !226
  %141 = load ptr, ptr %140, align 8, !tbaa !227
  %142 = icmp eq ptr %141, null
  %143 = select i1 %142, ptr @bitmap_zero_bits, ptr %141, !prof !679
  %144 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 2
  %145 = load i32, ptr %144, align 8, !tbaa !229
  %146 = shl i32 %145, 7
  %147 = getelementptr inbounds %struct.bitmap_element_def, ptr %143, i64 0, i32 3
  %148 = load i64, ptr %147, align 8, !tbaa !231
  %149 = icmp eq i64 %148, 0
  %150 = zext i1 %149 to i32
  %151 = or disjoint i32 %146, %150
  br label %152

152:                                              ; preds = %236, %136
  %153 = phi i64 [ %148, %136 ], [ %237, %236 ]
  %154 = phi i32 [ 0, %136 ], [ %209, %236 ]
  %155 = phi i32 [ %151, %136 ], [ %238, %236 ]
  %156 = phi ptr [ %143, %136 ], [ %211, %236 ]
  %157 = icmp eq i64 %153, 0
  br i1 %157, label %172, label %158, !prof !680

158:                                              ; preds = %186, %152
  %159 = phi i64 [ %153, %152 ], [ %191, %186 ]
  %160 = phi i32 [ %154, %152 ], [ %187, %186 ]
  %161 = phi i32 [ %155, %152 ], [ %188, %186 ]
  %162 = phi ptr [ %156, %152 ], [ %179, %186 ]
  %163 = and i64 %159, 1
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %207, !prof !681

165:                                              ; preds = %158, %165
  %166 = phi i32 [ %169, %165 ], [ %161, %158 ]
  %167 = phi i64 [ %168, %165 ], [ %159, %158 ]
  %168 = lshr exact i64 %167, 1
  %169 = add i32 %166, 1
  %170 = and i64 %167, 2
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %165, label %207, !prof !682, !llvm.loop !232

172:                                              ; preds = %152
  %173 = add i32 %155, 63
  %174 = and i32 %173, -64
  %175 = add i32 %154, 1
  br label %176

176:                                              ; preds = %203, %172
  %177 = phi i64 [ %153, %172 ], [ %198, %203 ]
  %178 = phi i32 [ %174, %172 ], [ %206, %203 ]
  %179 = phi ptr [ %156, %172 ], [ %201, %203 ]
  %180 = phi i32 [ %175, %172 ], [ 0, %203 ]
  %181 = icmp eq i32 %180, 2
  br i1 %181, label %197, label %182, !prof !683

182:                                              ; preds = %176
  %183 = add i32 %178, 128
  %184 = shl i32 %180, 6
  %185 = sub i32 %183, %184
  br label %186

186:                                              ; preds = %182, %193
  %187 = phi i32 [ %195, %193 ], [ %180, %182 ]
  %188 = phi i32 [ %194, %193 ], [ %178, %182 ]
  %189 = zext i32 %187 to i64
  %190 = getelementptr inbounds %struct.bitmap_element_def, ptr %179, i64 0, i32 3, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !231
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %193, label %158, !prof !684

193:                                              ; preds = %186
  %194 = add i32 %188, 64
  %195 = add i32 %187, 1
  %196 = icmp eq i32 %195, 2
  br i1 %196, label %197, label %186, !prof !685, !llvm.loop !233

197:                                              ; preds = %193, %176
  %198 = phi i64 [ %177, %176 ], [ %191, %193 ]
  %199 = phi i32 [ %178, %176 ], [ %185, %193 ]
  %200 = phi i32 [ %180, %176 ], [ 2, %193 ]
  %201 = load ptr, ptr %179, align 8, !tbaa !234
  %202 = icmp eq ptr %201, null
  br i1 %202, label %207, label %203, !prof !686

203:                                              ; preds = %197
  %204 = getelementptr inbounds %struct.bitmap_element_def, ptr %201, i64 0, i32 2
  %205 = load i32, ptr %204, align 8, !tbaa !229
  %206 = shl i32 %205, 7
  br label %176, !llvm.loop !235

207:                                              ; preds = %197, %165, %158
  %208 = phi i64 [ %159, %158 ], [ %168, %165 ], [ %198, %197 ]
  %209 = phi i32 [ %160, %158 ], [ %160, %165 ], [ %200, %197 ]
  %210 = phi i32 [ %161, %158 ], [ %169, %165 ], [ %199, %197 ]
  %211 = phi ptr [ %162, %158 ], [ %162, %165 ], [ %201, %197 ]
  %212 = phi i1 [ false, %158 ], [ false, %165 ], [ true, %197 ]
  br i1 %212, label %239, label %213, !prof !687

213:                                              ; preds = %207
  %214 = load ptr, ptr @varmap, align 8
  %215 = zext i32 %210 to i64
  %216 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %214, i64 0, i32 2, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !187
  %218 = getelementptr inbounds %struct.variable_info, ptr %217, i64 0, i32 1
  %219 = load i8, ptr %218, align 4
  %220 = and i8 %219, 17
  %221 = icmp eq i8 %220, 1
  br i1 %221, label %236, label %222, !prof !694

222:                                              ; preds = %213
  %223 = getelementptr inbounds %struct.variable_info, ptr %217, i64 0, i32 7
  %224 = load ptr, ptr %223, align 8, !tbaa !308
  %225 = load i64, ptr %224, align 8
  %226 = trunc i64 %225 to i16
  switch i16 %226, label %236 [
    i16 32, label %227
    i16 34, label %227
    i16 36, label %227
  ], !prof !695

227:                                              ; preds = %222, %222, %222
  %228 = getelementptr inbounds %struct.tree_decl_minimal, ptr %224, i64 0, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !198
  %230 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %137, i32 noundef %229) #28
  %231 = load i8, ptr %218, align 4
  %232 = icmp sgt i8 %231, -1
  br i1 %232, label %236, label %233, !prof !325

233:                                              ; preds = %227
  %234 = load i8, ptr %1, align 8
  %235 = or i8 %234, 16
  store i8 %235, ptr %1, align 8
  br label %236

236:                                              ; preds = %222, %233, %227, %213
  %237 = lshr i64 %208, 1
  %238 = add i32 %210, 1
  br label %152, !llvm.loop !696

239:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #28
  store ptr %137, ptr %3, align 8, !tbaa !697
  %240 = tail call i32 @bitmap_hash(ptr noundef %137) #28
  %241 = getelementptr inbounds %struct.shared_bitmap_info, ptr %3, i64 0, i32 1
  store i32 %240, ptr %241, align 8, !tbaa !699
  %242 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !187
  %243 = call ptr @htab_find_slot_with_hash(ptr noundef %242, ptr noundef nonnull %3, i32 noundef %240, i32 noundef 0) #28
  %244 = icmp eq ptr %243, null
  br i1 %244, label %248, label %245, !prof !700

245:                                              ; preds = %239
  %246 = load ptr, ptr %243, align 8, !tbaa !187
  %247 = load ptr, ptr %246, align 8, !tbaa !697
  br label %248

248:                                              ; preds = %239, %245
  %249 = phi ptr [ %247, %245 ], [ null, %239 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #28
  %250 = icmp eq ptr %249, null
  br i1 %250, label %251, label %262, !prof !700

251:                                              ; preds = %248
  %252 = call ptr @xmalloc(i64 noundef 16) #28
  store ptr %137, ptr %252, align 8, !tbaa !697
  %253 = call i32 @bitmap_hash(ptr noundef %137) #28
  %254 = getelementptr inbounds %struct.shared_bitmap_info, ptr %252, i64 0, i32 1
  store i32 %253, ptr %254, align 8, !tbaa !699
  %255 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !187
  %256 = call ptr @htab_find_slot_with_hash(ptr noundef %255, ptr noundef nonnull %252, i32 noundef %253, i32 noundef 1) #28
  %257 = load ptr, ptr %256, align 8, !tbaa !187
  %258 = icmp eq ptr %257, null
  br i1 %258, label %260, label %259, !prof !701

259:                                              ; preds = %251
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4754, ptr noundef nonnull @.str.4) #28
  br label %260

260:                                              ; preds = %251, %259
  store ptr %252, ptr %256, align 8, !tbaa !187
  %261 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %137, ptr %261, align 8, !tbaa !243
  br label %264

262:                                              ; preds = %248
  %263 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %249, ptr %263, align 8, !tbaa !243
  call void @bitmap_clear(ptr noundef %137) #28
  br label %264

264:                                              ; preds = %260, %262, %128
  ret void
}

declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #3

declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #3

declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_create() local_unnamed_addr #3

declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @shared_bitmap_hash(ptr nocapture noundef readonly %0) #20 !prof !186 {
  %2 = getelementptr inbounds %struct.shared_bitmap_info, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !699
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i32 @shared_bitmap_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !702 !PGOFuncName !703 {
  %3 = load ptr, ptr %0, align 8, !tbaa !697
  %4 = load ptr, ptr %1, align 8, !tbaa !697
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %3, ptr noundef %4) #28
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #21

declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @new_var_info(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !704 !PGOFuncName !705 {
  %3 = load ptr, ptr @varmap, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !307

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !219
  br label %7

7:                                                ; preds = %2, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = load ptr, ptr @variable_info_pool, align 8, !tbaa !187
  %10 = tail call ptr @pool_alloc(ptr noundef %9) #28
  store i32 %8, ptr %10, align 8, !tbaa !372
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 6
  store ptr %1, ptr %11, align 8, !tbaa !210
  %12 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  store ptr %0, ptr %12, align 8, !tbaa !308
  %13 = icmp eq ptr %0, null
  %14 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %15 = zext i1 %13 to i8
  %16 = select i1 %13, i8 8, i8 0, !prof !706
  %17 = select i1 %13, i8 -128, i8 0, !prof !706
  %18 = or disjoint i8 %16, %15
  %19 = or disjoint i8 %18, %17
  %20 = or disjoint i8 %19, 64
  store i8 %20, ptr %14, align 4
  br i1 %13, label %40, label %21, !prof !706

21:                                               ; preds = %7
  %22 = load i64, ptr %0, align 8
  %23 = and i64 %22, 65535
  %24 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %23
  %25 = load i32, ptr %24, align 4, !tbaa !202
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %40, !prof !707

27:                                               ; preds = %21
  %28 = and i64 %22, 67108864
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36, !prof !708

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 2
  %32 = load i64, ptr %31, align 8
  %33 = lshr i64 %32, 18
  %34 = trunc i64 %33 to i8
  %35 = and i8 %34, -128
  br label %36

36:                                               ; preds = %27, %30
  %37 = phi i8 [ -128, %27 ], [ %35, %30 ]
  %38 = and i8 %20, 73
  %39 = or disjoint i8 %37, %38
  store i8 %39, ptr %14, align 4
  br label %40

40:                                               ; preds = %36, %21, %7
  %41 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %42 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 8
  store ptr %41, ptr %42, align 8, !tbaa !226
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #28
  %44 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 9
  store ptr %43, ptr %44, align 8, !tbaa !602
  %45 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 2
  store ptr null, ptr %45, align 8, !tbaa !354
  %46 = load ptr, ptr @varmap, align 8, !tbaa !187
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !307

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !709
  %51 = load i32, ptr %46, align 8, !tbaa !219
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55, !prof !710

53:                                               ; preds = %40, %48
  %54 = tail call ptr @vec_heap_p_reserve(ptr noundef %46, i32 noundef 1) #28
  store ptr %54, ptr @varmap, align 8, !tbaa !187
  br label %55

55:                                               ; preds = %48, %53
  %56 = load ptr, ptr @varmap, align 8, !tbaa !187
  %57 = load i32, ptr %56, align 8, !tbaa !219
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !219
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %56, i64 0, i32 2, i64 %59
  store ptr %10, ptr %60, align 8, !tbaa !187
  ret ptr %10
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @process_constraint(ptr noundef %0) unnamed_addr #17 !prof !711 !PGOFuncName !712 {
  br label %2

2:                                                ; preds = %74, %47, %1
  %3 = phi ptr [ %0, %1 ], [ %67, %47 ], [ %94, %74 ]
  %4 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !373
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa.struct !374
  %11 = load i64, ptr %3, align 8, !tbaa.struct !373
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !374
  %17 = load ptr, ptr @varmap, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !713

19:                                               ; preds = %2
  %20 = load i32, ptr %17, align 8, !tbaa !219
  br label %21

21:                                               ; preds = %2, %19
  %22 = phi i32 [ %20, %19 ], [ 0, %2 ]
  %23 = icmp ugt i32 %22, %8
  br i1 %23, label %25, label %24, !prof !714

24:                                               ; preds = %21
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2749, ptr noundef nonnull @.str.4) #28
  br label %25

25:                                               ; preds = %21, %24
  %26 = load ptr, ptr @varmap, align 8
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !713

28:                                               ; preds = %25
  %29 = load i32, ptr %26, align 8, !tbaa !219
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  %32 = icmp ugt i32 %31, %14
  br i1 %32, label %34, label %33, !prof !714

33:                                               ; preds = %30
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2750, ptr noundef nonnull @.str.4) #28
  br label %34

34:                                               ; preds = %30, %33
  %35 = icmp eq i32 %12, 2
  %36 = icmp eq i32 %14, 1
  %37 = select i1 %35, i1 %36, i1 false, !prof !713
  %38 = select i1 %37, i32 1, i32 %12, !prof !713
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %41, !prof !713

40:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2760, ptr noundef nonnull @.str.4) #28
  br label %41

41:                                               ; preds = %34, %40
  %42 = icmp eq i32 %6, 1
  %43 = icmp eq i32 %38, 1
  %44 = and i1 %42, %43
  %45 = icmp ne i32 %8, 1
  %46 = select i1 %44, i1 %45, i1 false, !prof !713
  br i1 %46, label %47, label %71, !prof !713

47:                                               ; preds = %41
  %48 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.53)
  %49 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  store i64 0, ptr %49, align 8, !tbaa !349
  %50 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %51 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %50, i8 -1, i64 16, i1 false)
  %52 = load i8, ptr %51, align 4
  %53 = or i8 %52, 8
  store i8 %53, ptr %51, align 4
  %54 = load i32, ptr %48, align 8, !tbaa !372
  %55 = zext i32 %54 to i64
  %56 = shl nuw i64 %55, 32
  %57 = and i64 %5, -4294967296
  %58 = or disjoint i64 %57, 1
  %59 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %60 = tail call ptr @pool_alloc(ptr noundef %59) #28
  store i64 %56, ptr %60, align 8, !tbaa.struct !373
  %61 = getelementptr inbounds i8, ptr %60, i64 8
  store i64 0, ptr %61, align 8, !tbaa.struct !374
  %62 = getelementptr inbounds %struct.constraint, ptr %60, i64 0, i32 1
  store i64 %58, ptr %62, align 8, !tbaa.struct !373
  %63 = getelementptr inbounds %struct.constraint, ptr %60, i64 0, i32 1, i32 2
  store i64 %10, ptr %63, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %60)
  %64 = and i64 %11, -4294967296
  %65 = or disjoint i64 %64, 1
  %66 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %67 = tail call ptr @pool_alloc(ptr noundef %66) #28
  store i64 %65, ptr %67, align 8, !tbaa.struct !373
  %68 = getelementptr inbounds i8, ptr %67, i64 8
  store i64 %16, ptr %68, align 8, !tbaa.struct !374
  %69 = getelementptr inbounds %struct.constraint, ptr %67, i64 0, i32 1
  store i64 %56, ptr %69, align 8, !tbaa.struct !373
  %70 = getelementptr inbounds %struct.constraint, ptr %67, i64 0, i32 1, i32 2
  store i64 0, ptr %70, align 8, !tbaa.struct !374
  br label %2

71:                                               ; preds = %41
  %72 = icmp eq i32 %6, 2
  %73 = and i1 %72, %43
  br i1 %73, label %74, label %98, !prof !713

74:                                               ; preds = %71
  %75 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.54)
  %76 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 3
  store i64 0, ptr %76, align 8, !tbaa !349
  %77 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 4
  %78 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %77, i8 -1, i64 16, i1 false)
  %79 = load i8, ptr %78, align 4
  %80 = or i8 %79, 8
  store i8 %80, ptr %78, align 4
  %81 = load i32, ptr %75, align 8, !tbaa !372
  %82 = zext i32 %81 to i64
  %83 = shl nuw i64 %82, 32
  %84 = and i64 %5, -4294967296
  %85 = or disjoint i64 %84, 2
  %86 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %87 = tail call ptr @pool_alloc(ptr noundef %86) #28
  store i64 %83, ptr %87, align 8, !tbaa.struct !373
  %88 = getelementptr inbounds i8, ptr %87, i64 8
  store i64 0, ptr %88, align 8, !tbaa.struct !374
  %89 = getelementptr inbounds %struct.constraint, ptr %87, i64 0, i32 1
  store i64 %85, ptr %89, align 8, !tbaa.struct !373
  %90 = getelementptr inbounds %struct.constraint, ptr %87, i64 0, i32 1, i32 2
  store i64 %10, ptr %90, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %87)
  %91 = and i64 %11, -4294967296
  %92 = or disjoint i64 %91, 1
  %93 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %94 = tail call ptr @pool_alloc(ptr noundef %93) #28
  store i64 %92, ptr %94, align 8, !tbaa.struct !373
  %95 = getelementptr inbounds i8, ptr %94, i64 8
  store i64 %16, ptr %95, align 8, !tbaa.struct !374
  %96 = getelementptr inbounds %struct.constraint, ptr %94, i64 0, i32 1
  store i64 %83, ptr %96, align 8, !tbaa.struct !373
  %97 = getelementptr inbounds %struct.constraint, ptr %94, i64 0, i32 1, i32 2
  store i64 0, ptr %97, align 8, !tbaa.struct !374
  br label %2

98:                                               ; preds = %71
  %99 = icmp ne i32 %6, 2
  %100 = icmp eq i64 %10, 0
  %101 = select i1 %99, i1 true, i1 %100, !prof !715
  br i1 %101, label %103, label %102, !prof !714

102:                                              ; preds = %98
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2781, ptr noundef nonnull @.str.4) #28
  br label %103

103:                                              ; preds = %98, %102
  %104 = load ptr, ptr @constraints, align 8, !tbaa !187
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106, !prof !713

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %104, i64 0, i32 1
  %108 = load i32, ptr %107, align 4, !tbaa !375
  %109 = load i32, ptr %104, align 8, !tbaa !216
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %113, !prof !716

111:                                              ; preds = %103, %106
  %112 = tail call ptr @vec_heap_p_reserve(ptr noundef %104, i32 noundef 1) #28
  store ptr %112, ptr @constraints, align 8, !tbaa !187
  br label %113

113:                                              ; preds = %106, %111
  %114 = load ptr, ptr @constraints, align 8, !tbaa !187
  %115 = load i32, ptr %114, align 8, !tbaa !216
  %116 = add i32 %115, 1
  store i32 %116, ptr %114, align 8, !tbaa !216
  %117 = zext i32 %115 to i64
  %118 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %114, i64 0, i32 2, i64 %117
  store ptr %3, ptr %118, align 8, !tbaa !187
  ret void
}

declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @tree_map_hash(ptr noundef) #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @heapvar_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 !prof !186 {
  %3 = load ptr, ptr %0, align 8, !tbaa !717
  %4 = load ptr, ptr %1, align 8, !tbaa !717
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !721
  %9 = getelementptr inbounds %struct.heapvar_map, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !721
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

declare ptr @ggc_calloc(i64 noundef, i64 noundef) #3

declare void @ggc_free(ptr noundef) #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @heapvar_lookup(ptr noundef %0, i64 noundef %1) unnamed_addr #10 !prof !186 {
  %3 = alloca %struct.heapvar_map, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #28
  store ptr %0, ptr %3, align 8, !tbaa !717
  %4 = getelementptr inbounds %struct.heapvar_map, ptr %3, i64 0, i32 1
  store i64 %1, ptr %4, align 8, !tbaa !721
  %5 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !187
  %6 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !187
  %7 = tail call i32 %6(ptr noundef %0) #28
  %8 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %1, i32 noundef %7) #28
  %9 = call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %8) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tree_map, ptr %9, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !722
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi ptr [ %13, %11 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #28
  ret ptr %15
}

declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc void @heapvar_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !186 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #28
  store ptr %0, ptr %4, align 8, !tbaa !717
  %5 = getelementptr inbounds %struct.heapvar_map, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !721
  %6 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !187
  %7 = tail call i32 %6(ptr noundef %0) #28
  %8 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %1, i32 noundef %7) #28
  %9 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 1
  store i32 %8, ptr %9, align 8, !tbaa !723
  %10 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 2
  store ptr %2, ptr %10, align 8, !tbaa !722
  %11 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !187
  %12 = tail call ptr @htab_find_slot_with_hash(ptr noundef %11, ptr noundef nonnull %4, i32 noundef %8, i32 noundef 1) #28
  %13 = load ptr, ptr %12, align 8, !tbaa !187
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 345, ptr noundef nonnull @.str.4) #28
  br label %16

16:                                               ; preds = %3, %15
  store ptr %4, ptr %12, align 8, !tbaa !187
  ret void
}

declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @get_vi_for_tree(ptr noundef %0) unnamed_addr #17 !prof !724 !PGOFuncName !725 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %5 = tail call ptr @pointer_map_contains(ptr noundef %4, ptr noundef %0) #28
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %357, !prof !726

7:                                                ; preds = %1
  %8 = tail call fastcc ptr @alias_get_name(ptr noundef %0)
  %9 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = load i64, ptr %0, align 8
  %12 = and i64 %11, 65535
  %13 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !202
  %15 = icmp ne i32 %14, 3
  %16 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %17 = getelementptr inbounds %struct.tree_type, ptr %10, i64 0, i32 2
  %18 = select i1 %15, ptr %17, ptr %16, !prof !727
  %19 = load ptr, ptr %18, align 8, !tbaa !198
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  store ptr null, ptr %2, align 8, !tbaa !187
  %20 = and i64 %11, 524288
  %21 = icmp ne i64 %20, 0
  %22 = or i1 %21, %15
  br i1 %22, label %27, label %23, !prof !728

23:                                               ; preds = %7
  %24 = load i64, ptr %10, align 8
  %25 = and i64 %24, 65535
  %26 = icmp eq i64 %25, 16
  br label %27

27:                                               ; preds = %7, %23
  %28 = phi i1 [ false, %7 ], [ %26, %23 ]
  %29 = load i8, ptr @use_field_sensitive, align 1
  %30 = icmp ne i8 %29, 0
  %31 = select i1 %28, i1 %30, i1 false, !prof !729
  br i1 %31, label %32, label %34, !prof !729

32:                                               ; preds = %27
  %33 = call fastcc i32 @push_fields_onto_fieldstack(ptr noundef %10, ptr noundef nonnull %2, i64 noundef 0)
  br label %34

34:                                               ; preds = %32, %27
  %35 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %8)
  %36 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 3
  store i64 0, ptr %36, align 8, !tbaa !349
  %37 = load ptr, ptr %9, align 8, !tbaa !198
  %38 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %37), !range !251
  %39 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 1
  %40 = load i8, ptr %39, align 4
  %41 = shl nuw nsw i8 %38, 6
  %42 = and i8 %40, -65
  %43 = or disjoint i8 %42, %41
  store i8 %43, ptr %39, align 4
  %44 = icmp eq ptr %19, null
  br i1 %44, label %48, label %45, !prof !730

45:                                               ; preds = %34
  %46 = tail call i32 @host_integerp(ptr noundef nonnull %19, i32 noundef 1) #28
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52, !prof !730

48:                                               ; preds = %45, %34
  %49 = load i8, ptr %39, align 4
  %50 = or i8 %49, 4
  store i8 %50, ptr %39, align 4
  %51 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %51, i8 -1, i64 16, i1 false)
  br label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !198
  %55 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 5
  store i64 %54, ptr %55, align 8, !tbaa !353
  %56 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  store i64 %54, ptr %56, align 8, !tbaa !350
  br label %57

57:                                               ; preds = %52, %48
  %58 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 7
  %59 = load ptr, ptr %58, align 8, !tbaa !308
  %60 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %61 = tail call ptr @pointer_map_insert(ptr noundef %60, ptr noundef %59) #28
  %62 = icmp eq ptr %35, null
  br i1 %62, label %63, label %64, !prof !730

63:                                               ; preds = %57
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2603, ptr noundef nonnull @.str.4) #28
  br label %64

64:                                               ; preds = %63, %57
  %65 = load ptr, ptr %61, align 8, !tbaa !187
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67, !prof !731

67:                                               ; preds = %64
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2604, ptr noundef nonnull @.str.4) #28
  br label %68

68:                                               ; preds = %64, %67
  store ptr %35, ptr %61, align 8, !tbaa !187
  %69 = load i8, ptr %39, align 4
  %70 = icmp sgt i8 %69, -1
  br i1 %70, label %103, label %71, !prof !732

71:                                               ; preds = %68
  %72 = load i32, ptr @flag_whole_program, align 4, !tbaa !202
  %73 = icmp ne i32 %72, 0
  %74 = load i1, ptr @in_ipa_mode, align 4
  %75 = select i1 %73, i1 %74, i1 false, !prof !733
  %76 = and i8 %69, 64
  %77 = icmp eq i8 %76, 0
  %78 = or i1 %77, %75
  br i1 %78, label %103, label %79, !prof !734

79:                                               ; preds = %71
  %80 = load ptr, ptr %9, align 8, !tbaa !198
  %81 = load i64, ptr %80, align 8
  %82 = trunc i64 %81 to i16
  switch i16 %82, label %94 [
    i16 10, label %83
    i16 12, label %83
  ], !prof !735

83:                                               ; preds = %79, %79
  %84 = getelementptr inbounds %struct.tree_type, ptr %80, i64 0, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, 8192
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %94, label %88, !prof !736

88:                                               ; preds = %83
  %89 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %35, ptr noundef nonnull @.str.58)
  %90 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = and i8 %91, 29
  %93 = or disjoint i8 %92, 34
  store i8 %93, ptr %90, align 4
  br label %94

94:                                               ; preds = %83, %88, %79
  %95 = load i32, ptr %35, align 8, !tbaa !372
  %96 = zext i32 %95 to i64
  %97 = shl nuw i64 %96, 32
  %98 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %99 = tail call ptr @pool_alloc(ptr noundef %98) #28
  store i64 %97, ptr %99, align 8, !tbaa.struct !373
  %100 = getelementptr inbounds i8, ptr %99, i64 8
  store i64 0, ptr %100, align 8, !tbaa.struct !374
  %101 = getelementptr inbounds %struct.constraint, ptr %99, i64 0, i32 1
  store i64 17179869184, ptr %101, align 8, !tbaa.struct !373
  %102 = getelementptr inbounds %struct.constraint, ptr %99, i64 0, i32 1, i32 2
  store i64 0, ptr %102, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %99)
  br label %103

103:                                              ; preds = %94, %71, %68
  %104 = load i32, ptr @stats, align 4, !tbaa !260
  %105 = add i32 %104, 1
  store i32 %105, ptr @stats, align 4, !tbaa !260
  %106 = load i8, ptr @use_field_sensitive, align 1, !tbaa !198
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %343, label %108, !prof !730

108:                                              ; preds = %103
  %109 = load i8, ptr %39, align 4
  %110 = and i8 %109, 4
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %112, label %343, !prof !731

112:                                              ; preds = %108
  %113 = load i64, ptr %0, align 8
  %114 = and i64 %113, 524288
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %127, !prof !731

116:                                              ; preds = %112
  %117 = and i64 %113, 65535
  %118 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %117
  %119 = load i32, ptr %118, align 4, !tbaa !202
  %120 = icmp eq i32 %119, 3
  br i1 %120, label %121, label %127, !prof !737

121:                                              ; preds = %116
  %122 = load ptr, ptr %9, align 8, !tbaa !198
  %123 = load i64, ptr %122, align 8
  %124 = and i64 %123, 65535
  %125 = icmp eq i64 %124, 16
  %126 = zext i1 %125 to i8
  br label %127

127:                                              ; preds = %121, %116, %112
  %128 = phi i8 [ 0, %112 ], [ 0, %116 ], [ %126, %121 ]
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %343, label %130, !prof !738

130:                                              ; preds = %127
  %131 = load ptr, ptr %2, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133, !prof !739

133:                                              ; preds = %130
  %134 = load i32, ptr %131, align 8, !tbaa !740
  br label %135

135:                                              ; preds = %133, %130
  %136 = phi i32 [ %134, %133 ], [ 0, %130 ]
  %137 = icmp ugt i32 %136, 1
  br i1 %137, label %138, label %343, !prof !742

138:                                              ; preds = %135
  br i1 %132, label %141, label %139, !prof !739

139:                                              ; preds = %138
  %140 = load i32, ptr %131, align 8, !tbaa !740
  br label %141

141:                                              ; preds = %139, %138
  %142 = phi i32 [ %140, %139 ], [ 0, %138 ]
  %143 = zext i32 %142 to i64
  %144 = load ptr, ptr @compiler_params, align 8, !tbaa !187
  %145 = getelementptr inbounds %struct.param_info, ptr %144, i64 95, i32 1
  %146 = load i32, ptr %145, align 8, !tbaa !370
  %147 = sext i32 %146 to i64
  %148 = icmp ugt i64 %143, %147
  br i1 %148, label %343, label %149, !prof !739

149:                                              ; preds = %141, %165
  %150 = phi i32 [ %168, %165 ], [ 0, %141 ]
  br i1 %132, label %157, label %151, !prof !743

151:                                              ; preds = %149
  %152 = load i32, ptr %131, align 8, !tbaa !740
  %153 = icmp ugt i32 %152, %150
  br i1 %153, label %154, label %157, !prof !744

154:                                              ; preds = %151
  %155 = zext i32 %150 to i64
  %156 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %131, i64 0, i32 2, i64 %155
  br label %157

157:                                              ; preds = %154, %151, %149
  %158 = phi ptr [ %156, %154 ], [ null, %151 ], [ null, %149 ]
  %159 = phi i1 [ false, %154 ], [ true, %151 ], [ true, %149 ]
  br i1 %159, label %169, label %160, !prof !745

160:                                              ; preds = %157
  %161 = getelementptr inbounds %struct.fieldoff, ptr %158, i64 0, i32 2
  %162 = load i8, ptr %161, align 8
  %163 = and i8 %162, 1
  %164 = icmp eq i8 %163, 0
  br i1 %164, label %165, label %195, !prof !746

165:                                              ; preds = %160
  %166 = load i64, ptr %158, align 8, !tbaa !747
  %167 = icmp slt i64 %166, 0
  %168 = add i32 %150, 1
  br i1 %167, label %195, label %149, !prof !749, !llvm.loop !750

169:                                              ; preds = %157
  br i1 %132, label %174, label %170, !prof !739

170:                                              ; preds = %169
  %171 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %131, i64 0, i32 2
  %172 = load i32, ptr %131, align 8, !tbaa !740
  %173 = zext i32 %172 to i64
  br label %174

174:                                              ; preds = %170, %169
  %175 = phi ptr [ null, %169 ], [ %171, %170 ]
  %176 = phi i64 [ 0, %169 ], [ %173, %170 ]
  tail call void @spec_qsort(ptr noundef %175, i64 noundef %176, i64 noundef 24, ptr noundef nonnull @fieldoff_compare) #28
  br label %177

177:                                              ; preds = %189, %174
  %178 = phi i32 [ 0, %174 ], [ %192, %189 ]
  %179 = phi i64 [ -1, %174 ], [ %190, %189 ]
  br i1 %132, label %186, label %180, !prof !743

180:                                              ; preds = %177
  %181 = load i32, ptr %131, align 8, !tbaa !740
  %182 = icmp ugt i32 %181, %178
  br i1 %182, label %183, label %186, !prof !744

183:                                              ; preds = %180
  %184 = zext i32 %178 to i64
  %185 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %131, i64 0, i32 2, i64 %184
  br label %186

186:                                              ; preds = %183, %180, %177
  %187 = phi ptr [ %185, %183 ], [ null, %180 ], [ null, %177 ]
  %188 = phi i1 [ false, %183 ], [ true, %180 ], [ true, %177 ]
  br i1 %188, label %193, label %189, !prof !745

189:                                              ; preds = %186
  %190 = load i64, ptr %187, align 8, !tbaa !747
  %191 = icmp eq i64 %190, %179
  %192 = add i32 %178, 1
  br i1 %191, label %193, label %177, !prof !749, !llvm.loop !751

193:                                              ; preds = %189, %186
  %194 = xor i1 %188, true
  br label %195

195:                                              ; preds = %165, %160, %193
  %196 = phi i1 [ %194, %193 ], [ true, %160 ], [ true, %165 ]
  br i1 %132, label %200, label %197, !prof !739

197:                                              ; preds = %195
  %198 = load i32, ptr %131, align 8, !tbaa !740
  %199 = icmp eq i32 %198, 0
  br label %200

200:                                              ; preds = %197, %195
  %201 = phi i1 [ %199, %197 ], [ true, %195 ]
  %202 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %131, i64 0, i32 2
  %203 = select i1 %201, ptr %158, ptr %202, !prof !739
  %204 = icmp eq ptr %203, null
  %205 = or i1 %196, %204
  br i1 %205, label %206, label %214, !prof !739

206:                                              ; preds = %200
  %207 = load i8, ptr %39, align 4
  %208 = or i8 %207, 4
  store i8 %208, ptr %39, align 4
  %209 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  %210 = or i8 %207, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %209, i8 -1, i64 16, i1 false)
  store i8 %210, ptr %39, align 4
  br i1 %132, label %212, label %211

211:                                              ; preds = %206
  tail call void @free(ptr noundef %131)
  br label %212

212:                                              ; preds = %211, %206
  store ptr null, ptr %2, align 8, !tbaa !187
  %213 = load i32, ptr %35, align 8, !tbaa !372
  br label %341

214:                                              ; preds = %200
  %215 = getelementptr inbounds %struct.fieldoff, ptr %203, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !752
  %217 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  store i64 %216, ptr %217, align 8, !tbaa !350
  %218 = load i64, ptr %203, align 8, !tbaa !747
  store i64 %218, ptr %36, align 8, !tbaa !349
  %219 = getelementptr inbounds %struct.fieldoff, ptr %203, i64 0, i32 2
  %220 = load i8, ptr %219, align 8
  %221 = load i8, ptr %39, align 4
  %222 = shl i8 %220, 5
  %223 = and i8 %222, 64
  %224 = and i8 %221, -65
  %225 = or disjoint i8 %224, %223
  store i8 %225, ptr %39, align 4
  %226 = icmp sgt i8 %221, -1
  br i1 %226, label %245, label %227, !prof !739

227:                                              ; preds = %214
  %228 = load i32, ptr @flag_whole_program, align 4, !tbaa !202
  %229 = icmp ne i32 %228, 0
  %230 = load i1, ptr @in_ipa_mode, align 4
  %231 = select i1 %229, i1 %230, i1 false, !prof !739
  %232 = and i8 %220, 2
  %233 = icmp eq i8 %232, 0
  %234 = select i1 %231, i1 true, i1 %233, !prof !739
  br i1 %234, label %245, label %235, !prof !739

235:                                              ; preds = %227
  %236 = load i8, ptr %219, align 8
  %237 = and i8 %236, 4
  %238 = icmp eq i8 %237, 0
  br i1 %238, label %245, label %239, !prof !742

239:                                              ; preds = %235
  %240 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %35, ptr noundef nonnull @.str.58)
  %241 = getelementptr inbounds %struct.variable_info, ptr %240, i64 0, i32 1
  %242 = load i8, ptr %241, align 4
  %243 = and i8 %242, 29
  %244 = or disjoint i8 %243, 34
  store i8 %244, ptr %241, align 4
  br label %245

245:                                              ; preds = %239, %235, %227, %214
  br i1 %132, label %249, label %246, !prof !739

246:                                              ; preds = %245
  %247 = load i32, ptr %131, align 8, !tbaa !740
  %248 = add i32 %247, -1
  br label %249

249:                                              ; preds = %246, %245
  %250 = phi i32 [ %248, %246 ], [ -1, %245 ]
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %341, label %252, !prof !753

252:                                              ; preds = %249
  %253 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 5
  %254 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 2
  %255 = zext i32 %250 to i64
  br label %256

256:                                              ; preds = %252, %335
  %257 = phi i64 [ %255, %252 ], [ %338, %335 ]
  br i1 %132, label %264, label %258, !prof !754

258:                                              ; preds = %256
  %259 = load i32, ptr %131, align 8, !tbaa !740
  %260 = zext i32 %259 to i64
  %261 = icmp uge i64 %257, %260
  %262 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %131, i64 0, i32 2, i64 %257
  %263 = select i1 %261, ptr null, ptr %262, !prof !754
  br label %264

264:                                              ; preds = %258, %256
  %265 = phi ptr [ null, %256 ], [ %263, %258 ]
  %266 = phi i1 [ true, %256 ], [ %261, %258 ]
  br i1 %266, label %341, label %267, !prof !754

267:                                              ; preds = %264
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  %268 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %269 = icmp eq ptr %268, null
  br i1 %269, label %280, label %270, !prof !755

270:                                              ; preds = %267
  %271 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 6
  %272 = load ptr, ptr %271, align 8, !tbaa !210
  %273 = load i64, ptr %265, align 8, !tbaa !747
  %274 = getelementptr inbounds %struct.fieldoff, ptr %265, i64 0, i32 1
  %275 = load i64, ptr %274, align 8, !tbaa !752
  %276 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.59, ptr noundef %272, i64 noundef %273, i64 noundef %275) #28
  %277 = load ptr, ptr %3, align 8, !tbaa !187
  %278 = call ptr @ggc_alloc_string(ptr noundef %277, i32 noundef -1) #28
  %279 = load ptr, ptr %3, align 8, !tbaa !187
  call void @free(ptr noundef %279)
  br label %280

280:                                              ; preds = %270, %267
  %281 = phi ptr [ %278, %270 ], [ @.str.45, %267 ]
  %282 = call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %281)
  %283 = load i64, ptr %265, align 8, !tbaa !747
  %284 = getelementptr inbounds %struct.variable_info, ptr %282, i64 0, i32 3
  store i64 %283, ptr %284, align 8, !tbaa !349
  %285 = getelementptr inbounds %struct.fieldoff, ptr %265, i64 0, i32 1
  %286 = load i64, ptr %285, align 8, !tbaa !752
  %287 = getelementptr inbounds %struct.variable_info, ptr %282, i64 0, i32 4
  store i64 %286, ptr %287, align 8, !tbaa !350
  %288 = load i64, ptr %253, align 8, !tbaa !353
  %289 = getelementptr inbounds %struct.variable_info, ptr %282, i64 0, i32 5
  store i64 %288, ptr %289, align 8, !tbaa !353
  %290 = getelementptr inbounds %struct.fieldoff, ptr %265, i64 0, i32 2
  %291 = load i8, ptr %290, align 8
  %292 = getelementptr inbounds %struct.variable_info, ptr %282, i64 0, i32 1
  %293 = load i8, ptr %292, align 4
  %294 = shl i8 %291, 5
  %295 = and i8 %294, 64
  %296 = and i8 %293, -65
  %297 = or disjoint i8 %296, %295
  store i8 %297, ptr %292, align 4
  %298 = load ptr, ptr %254, align 8, !tbaa !354
  %299 = getelementptr inbounds %struct.variable_info, ptr %282, i64 0, i32 2
  store ptr %298, ptr %299, align 8, !tbaa !354
  store ptr %282, ptr %254, align 8, !tbaa !354
  %300 = load i8, ptr %292, align 4
  %301 = icmp sgt i8 %300, -1
  br i1 %301, label %302, label %308, !prof !754

302:                                              ; preds = %280
  %303 = load i64, ptr %0, align 8
  %304 = and i64 %303, 65535
  %305 = icmp ne i64 %304, 34
  %306 = icmp ult i8 %300, 64
  %307 = or i1 %306, %305
  br i1 %307, label %335, label %311, !prof !756

308:                                              ; preds = %280
  %309 = and i8 %300, 64
  %310 = icmp eq i8 %309, 0
  br i1 %310, label %335, label %311, !prof !757

311:                                              ; preds = %302, %308
  %312 = load i8, ptr %290, align 8
  %313 = and i8 %312, 4
  %314 = icmp eq i8 %313, 0
  br i1 %314, label %321, label %315, !prof !758

315:                                              ; preds = %311
  %316 = call fastcc ptr @make_constraint_from_heapvar(ptr noundef %282, ptr noundef nonnull @.str.58)
  %317 = getelementptr inbounds %struct.variable_info, ptr %316, i64 0, i32 1
  %318 = load i8, ptr %317, align 4
  %319 = and i8 %318, 29
  %320 = or disjoint i8 %319, 34
  store i8 %320, ptr %317, align 4
  br label %321

321:                                              ; preds = %315, %311
  %322 = load i8, ptr %292, align 4
  %323 = icmp sgt i8 %322, -1
  %324 = load i1, ptr @in_ipa_mode, align 4
  %325 = select i1 %323, i1 true, i1 %324, !prof !759
  br i1 %325, label %335, label %326, !prof !759

326:                                              ; preds = %321
  %327 = load i32, ptr %282, align 8, !tbaa !372
  %328 = zext i32 %327 to i64
  %329 = shl nuw i64 %328, 32
  %330 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %331 = call ptr @pool_alloc(ptr noundef %330) #28
  store i64 %329, ptr %331, align 8, !tbaa.struct !373
  %332 = getelementptr inbounds i8, ptr %331, i64 8
  store i64 0, ptr %332, align 8, !tbaa.struct !374
  %333 = getelementptr inbounds %struct.constraint, ptr %331, i64 0, i32 1
  store i64 17179869184, ptr %333, align 8, !tbaa.struct !373
  %334 = getelementptr inbounds %struct.constraint, ptr %331, i64 0, i32 1, i32 2
  store i64 0, ptr %334, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %331)
  br label %335

335:                                              ; preds = %302, %326, %321, %308
  %336 = load i32, ptr @stats, align 4, !tbaa !260
  %337 = add i32 %336, 1
  store i32 %337, ptr @stats, align 4, !tbaa !260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  %338 = add nsw i64 %257, -1
  %339 = and i64 %338, 4294967295
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %256, !prof !760, !llvm.loop !761

341:                                              ; preds = %335, %264, %249, %212
  %342 = phi i32 [ %213, %212 ], [ undef, %249 ], [ undef, %264 ], [ undef, %335 ]
  br i1 %205, label %352, label %346, !prof !739

343:                                              ; preds = %141, %135, %127, %108, %103
  %344 = load i8, ptr %39, align 4
  %345 = or i8 %344, 8
  store i8 %345, ptr %39, align 4
  br label %346

346:                                              ; preds = %343, %341
  %347 = load ptr, ptr %2, align 8, !tbaa !187
  %348 = icmp eq ptr %347, null
  br i1 %348, label %350, label %349, !prof !738

349:                                              ; preds = %346
  call void @free(ptr noundef %347)
  br label %350

350:                                              ; preds = %349, %346
  store ptr null, ptr %2, align 8, !tbaa !187
  %351 = load i32, ptr %35, align 8, !tbaa !372
  br label %352

352:                                              ; preds = %341, %350
  %353 = phi i32 [ %351, %350 ], [ %342, %341 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  %354 = load ptr, ptr @varmap, align 8
  %355 = zext i32 %353 to i64
  %356 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %354, i64 0, i32 2, i64 %355
  br label %357

357:                                              ; preds = %1, %352
  %358 = phi ptr [ %356, %352 ], [ %5, %1 ]
  %359 = load ptr, ptr %358, align 8, !tbaa !187
  ret ptr %359
}

; Function Attrs: inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #22 !prof !762 !PGOFuncName !763 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ %0, %1 ], [ %8, %6 ]
  %4 = load i64, ptr %3, align 8
  %5 = trunc i64 %4 to i16
  switch i16 %5, label %9 [
    i16 10, label %13
    i16 12, label %13
    i16 15, label %6
    i16 16, label %13
    i16 17, label %13
  ], !prof !764

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  br label %2

9:                                                ; preds = %2
  %10 = and i64 %4, 65535
  %11 = icmp eq i64 %10, 18
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %2, %2, %9, %2
  %14 = phi i8 [ %12, %9 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  ret i8 %14
}

declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @iterative_hash_host_wide_int(i64 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #3

declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #3

declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @alias_get_name(ptr noundef %0) unnamed_addr #14 !prof !765 !PGOFuncName !766 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @get_name(ptr noundef %0) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %34, !prof !727

5:                                                ; preds = %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !767

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !198
  %15 = tail call fastcc ptr @alias_get_name(ptr noundef %14)
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !198
  %18 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.60, ptr noundef %15, i32 noundef %17) #28
  br label %27

19:                                               ; preds = %8
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %21 = load i32, ptr %20, align 4, !tbaa !202
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !198
  %26 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.61, i32 noundef %25) #28
  br label %27

27:                                               ; preds = %19, %23, %12
  %28 = phi i32 [ %18, %12 ], [ %26, %23 ], [ 0, %19 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8, !tbaa !187
  %32 = call ptr @ggc_alloc_string(ptr noundef %31, i32 noundef -1) #28
  %33 = load ptr, ptr %2, align 8, !tbaa !187
  call void @free(ptr noundef %33)
  br label %34

34:                                               ; preds = %27, %30, %5, %1
  %35 = phi ptr [ %3, %1 ], [ @.str.45, %5 ], [ %32, %30 ], [ @.str.45, %27 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  ret ptr %35
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @push_fields_onto_fieldstack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #14 !prof !334 !PGOFuncName !768 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %207, !prof !742

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !187
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !742

10:                                               ; preds = %7
  %11 = load i32, ptr %8, align 8, !tbaa !740
  %12 = zext i32 %11 to i64
  br label %13

13:                                               ; preds = %7, %10
  %14 = phi i64 [ %12, %10 ], [ 0, %7 ]
  %15 = load ptr, ptr @compiler_params, align 8, !tbaa !187
  %16 = getelementptr inbounds %struct.param_info, ptr %15, i64 95, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !370
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %14, %18
  br i1 %19, label %207, label %20, !prof !739

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !198
  %23 = icmp eq ptr %22, null
  br i1 %23, label %207, label %24, !prof !753

24:                                               ; preds = %20, %202
  %25 = phi ptr [ %205, %202 ], [ %22, %20 ]
  %26 = phi i32 [ %203, %202 ], [ 0, %20 ]
  %27 = load i64, ptr %25, align 8
  %28 = and i64 %27, 65535
  %29 = icmp eq i64 %28, 31
  br i1 %29, label %30, label %202, !prof !769

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.tree_field_decl, ptr %25, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !198
  %33 = tail call i32 @host_integerp(ptr noundef %32, i32 noundef 0) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35, !prof !770

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.tree_field_decl, ptr %25, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !198
  %38 = tail call i32 @host_integerp(ptr noundef %37, i32 noundef 0) #28
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %49, label %40, !prof !770

40:                                               ; preds = %35
  %41 = load ptr, ptr %31, align 8, !tbaa !198
  %42 = getelementptr inbounds %struct.tree_int_cst, ptr %41, i64 0, i32 1
  %43 = load i64, ptr %42, align 8, !tbaa !198
  %44 = shl i64 %43, 3
  %45 = load ptr, ptr %36, align 8, !tbaa !198
  %46 = getelementptr inbounds %struct.tree_int_cst, ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !198
  %48 = add i64 %47, %44
  br label %49

49:                                               ; preds = %30, %35, %40
  %50 = phi i64 [ %48, %40 ], [ -1, %35 ], [ -1, %30 ]
  %51 = load i64, ptr %25, align 8
  %52 = and i64 %51, 524288
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %66, !prof !769

54:                                               ; preds = %49
  %55 = and i64 %51, 65535
  %56 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !202
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %66, !prof !769

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !198
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 65535
  %64 = icmp eq i64 %63, 16
  %65 = zext i1 %64 to i8
  br label %66

66:                                               ; preds = %49, %54, %59
  %67 = phi i8 [ 0, %49 ], [ 0, %54 ], [ %65, %59 ]
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %88, label %69, !prof !769

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !198
  %72 = load i64, ptr %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = and i32 %73, 65535
  %75 = add nsw i32 %74, -17
  %76 = icmp ult i32 %75, 2
  br i1 %76, label %88, label %77

77:                                               ; preds = %69
  %78 = add nsw i64 %50, %2
  %79 = tail call fastcc i32 @push_fields_onto_fieldstack(ptr noundef nonnull %71, ptr noundef nonnull %1, i64 noundef %78)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %77
  %82 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !198
  %84 = icmp eq ptr %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %81
  %86 = tail call i32 @integer_zerop(ptr noundef nonnull %83) #28
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %85, %69, %66, %77, %81
  %89 = phi i1 [ true, %77 ], [ true, %81 ], [ false, %69 ], [ false, %66 ], [ %87, %85 ]
  %90 = phi i32 [ %79, %77 ], [ 0, %81 ], [ 0, %69 ], [ 0, %66 ], [ 0, %85 ]
  br i1 %89, label %200, label %91, !prof !770

91:                                               ; preds = %88
  %92 = load ptr, ptr %1, align 8, !tbaa !187
  %93 = icmp eq ptr %92, null
  br i1 %93, label %96, label %94, !prof !771

94:                                               ; preds = %91
  %95 = load i32, ptr %92, align 8, !tbaa !740
  br label %96

96:                                               ; preds = %91, %94
  %97 = phi i32 [ %95, %94 ], [ 0, %91 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %104, label %99, !prof !771

99:                                               ; preds = %96
  %100 = load i32, ptr %92, align 8, !tbaa !740
  %101 = add i32 %100, -1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %92, i64 0, i32 2, i64 %102
  br label %104

104:                                              ; preds = %99, %96
  %105 = phi ptr [ null, %96 ], [ %103, %99 ]
  %106 = getelementptr inbounds %struct.tree_decl_common, ptr %25, i64 0, i32 1
  %107 = load ptr, ptr %106, align 8, !tbaa !198
  %108 = icmp eq ptr %107, null
  br i1 %108, label %112, label %109, !prof !770

109:                                              ; preds = %104
  %110 = tail call i32 @host_integerp(ptr noundef nonnull %107, i32 noundef 1) #28
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %113, !prof !770

112:                                              ; preds = %109, %104
  br label %113

113:                                              ; preds = %112, %109
  %114 = phi i1 [ false, %109 ], [ true, %112 ]
  %115 = phi i1 [ true, %109 ], [ false, %112 ]
  %116 = phi i8 [ 0, %109 ], [ 1, %112 ]
  %117 = icmp eq ptr %105, null
  br i1 %117, label %150, label %118, !prof !771

118:                                              ; preds = %113
  %119 = getelementptr inbounds %struct.fieldoff, ptr %105, i64 0, i32 2
  %120 = load i8, ptr %119, align 8
  %121 = and i8 %120, 2
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %150, !prof !772

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %125 = load ptr, ptr %124, align 8, !tbaa !198
  %126 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %125), !range !251
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %128, label %150, !prof !773

128:                                              ; preds = %123
  %129 = and i8 %120, 1
  %130 = icmp ne i8 %129, 0
  %131 = or i1 %114, %130
  br i1 %131, label %150, label %132, !prof !774

132:                                              ; preds = %128
  %133 = load i64, ptr %105, align 8, !tbaa !747
  %134 = getelementptr inbounds %struct.fieldoff, ptr %105, i64 0, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !752
  %136 = add nsw i64 %135, %133
  %137 = add nsw i64 %50, %2
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %150, !prof !775

139:                                              ; preds = %132
  %140 = load ptr, ptr %1, align 8, !tbaa !187
  %141 = load i32, ptr %140, align 8, !tbaa !740
  %142 = add i32 %141, -1
  %143 = zext i32 %142 to i64
  %144 = load ptr, ptr %106, align 8, !tbaa !198
  %145 = getelementptr inbounds %struct.tree_int_cst, ptr %144, i64 0, i32 1
  %146 = load i64, ptr %145, align 8, !tbaa !198
  %147 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %140, i64 0, i32 2, i64 %143, i32 1
  %148 = load i64, ptr %147, align 8, !tbaa !752
  %149 = add i64 %148, %146
  store i64 %149, ptr %147, align 8, !tbaa !752
  br label %202

150:                                              ; preds = %132, %128, %123, %118, %113
  %151 = load ptr, ptr %1, align 8, !tbaa !187
  %152 = icmp eq ptr %151, null
  br i1 %152, label %158, label %153, !prof !776

153:                                              ; preds = %150
  %154 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %151, i64 0, i32 1
  %155 = load i32, ptr %154, align 4, !tbaa !777
  %156 = load i32, ptr %151, align 8, !tbaa !740
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160, !prof !778

158:                                              ; preds = %150, %153
  %159 = tail call ptr @vec_heap_o_reserve(ptr noundef %151, i32 noundef 1, i64 noundef 8, i64 noundef 24) #28
  store ptr %159, ptr %1, align 8, !tbaa !187
  br label %160

160:                                              ; preds = %153, %158
  %161 = load ptr, ptr %1, align 8, !tbaa !187
  %162 = load i32, ptr %161, align 8, !tbaa !740
  %163 = add i32 %162, 1
  store i32 %163, ptr %161, align 8, !tbaa !740
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %161, i64 0, i32 2, i64 %164
  %166 = add nsw i64 %50, %2
  store i64 %166, ptr %165, align 8, !tbaa !747
  %167 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %161, i64 0, i32 2, i64 %164, i32 2
  %168 = load i8, ptr %167, align 8
  %169 = and i8 %168, -2
  %170 = or disjoint i8 %169, %116
  store i8 %170, ptr %167, align 8
  br i1 %115, label %171, label %175, !prof !746

171:                                              ; preds = %160
  %172 = load ptr, ptr %106, align 8, !tbaa !198
  %173 = getelementptr inbounds %struct.tree_int_cst, ptr %172, i64 0, i32 1
  %174 = load i64, ptr %173, align 8, !tbaa !198
  br label %175

175:                                              ; preds = %160, %171
  %176 = phi i64 [ %174, %171 ], [ -1, %160 ]
  %177 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %161, i64 0, i32 2, i64 %164, i32 1
  store i64 %176, ptr %177, align 8, !tbaa !752
  %178 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 2
  %179 = load ptr, ptr %178, align 8, !tbaa !198
  %180 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %179), !range !251
  %181 = load i8, ptr %167, align 8
  %182 = shl nuw nsw i8 %180, 1
  %183 = and i8 %181, -3
  %184 = or disjoint i8 %183, %182
  store i8 %184, ptr %167, align 8
  br i1 %115, label %185, label %194, !prof !746

185:                                              ; preds = %175
  %186 = load ptr, ptr %178, align 8, !tbaa !198
  %187 = load i64, ptr %186, align 8
  %188 = trunc i64 %187 to i16
  switch i16 %188, label %194 [
    i16 10, label %189
    i16 12, label %189
  ], !prof !779

189:                                              ; preds = %185, %185
  %190 = getelementptr inbounds %struct.tree_type, ptr %186, i64 0, i32 6
  %191 = load i32, ptr %190, align 4
  %192 = and i32 %191, 8192
  %193 = icmp ne i32 %192, 0
  br label %194

194:                                              ; preds = %185, %189, %175
  %195 = phi i1 [ false, %175 ], [ %193, %189 ], [ false, %185 ]
  %196 = select i1 %195, i8 4, i8 0, !prof !749
  %197 = and i8 %184, -5
  %198 = or disjoint i8 %196, %197
  store i8 %198, ptr %167, align 8
  %199 = add nsw i32 %26, 1
  br label %202

200:                                              ; preds = %88
  %201 = add nsw i32 %90, %26
  br label %202

202:                                              ; preds = %200, %194, %139, %24
  %203 = phi i32 [ %26, %24 ], [ %201, %200 ], [ %199, %194 ], [ %26, %139 ]
  %204 = getelementptr inbounds %struct.tree_common, ptr %25, i64 0, i32 1
  %205 = load ptr, ptr %204, align 8, !tbaa !198
  %206 = icmp eq ptr %205, null
  br i1 %206, label %207, label %24, !prof !780, !llvm.loop !781

207:                                              ; preds = %202, %20, %13, %3
  %208 = phi i32 [ 0, %3 ], [ 0, %13 ], [ 0, %20 ], [ %203, %202 ]
  ret i32 %208
}

declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_vi_for_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #14 !prof !186 !PGOFuncName !782 {
  %3 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %4 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #28
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !730

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2603, ptr noundef nonnull @.str.4) #28
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !187
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !731

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2604, ptr noundef nonnull @.str.4) #28
  br label %11

11:                                               ; preds = %7, %10
  store ptr %1, ptr %4, align 8, !tbaa !187
  ret void
}

declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @fieldoff_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 !prof !783 !PGOFuncName !784 {
  %3 = load i64, ptr %0, align 8, !tbaa !747
  %4 = load i64, ptr %1, align 8, !tbaa !747
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %17, label %6, !prof !785

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, %4
  br i1 %7, label %17, label %8, !prof !786

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fieldoff, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !752
  %11 = getelementptr inbounds %struct.fieldoff, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !752
  %13 = icmp ult i64 %10, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %8
  %15 = icmp ugt i64 %10, %12
  %16 = zext i1 %15 to i32
  br label %17

17:                                               ; preds = %14, %8, %6, %2
  %18 = phi i32 [ -1, %2 ], [ 1, %6 ], [ -1, %8 ], [ %16, %14 ]
  ret i32 %18
}

declare ptr @get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc noundef ptr @make_constraint_from_heapvar(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 !prof !186 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  %5 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !349
  %7 = tail call fastcc ptr @heapvar_lookup(ptr noundef %4, i64 noundef %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %41

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !187
  %11 = tail call ptr @create_tmp_var_raw(ptr noundef %10, ptr noundef %1) #28
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 33554432
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %3, align 8, !tbaa !308
  %16 = load i64, ptr %5, align 8, !tbaa !349
  tail call fastcc void @heapvar_insert(ptr noundef %15, i64 noundef %16, ptr noundef %11)
  %17 = load i64, ptr %11, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %23 [
    i16 32, label %19
    i16 34, label %21
  ]

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.tree_var_decl, ptr %11, i64 0, i32 1
  br label %28

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_parm_decl, ptr %11, i64 0, i32 2
  br label %28

23:                                               ; preds = %9
  %24 = and i64 %17, 65535
  %25 = icmp eq i64 %24, 36
  %26 = getelementptr inbounds %struct.tree_result_decl, ptr %11, i64 0, i32 1
  %27 = select i1 %25, ptr %26, ptr null
  br label %28

28:                                               ; preds = %23, %21, %19
  %29 = phi ptr [ %20, %19 ], [ %22, %21 ], [ %27, %23 ]
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.57, i32 noundef 144, ptr noundef nonnull @.str.4) #28
  br label %32

32:                                               ; preds = %31, %28
  %33 = load ptr, ptr %29, align 8, !tbaa !187
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call ptr @create_var_ann(ptr noundef nonnull %11) #28
  br label %37

37:                                               ; preds = %32, %35
  %38 = phi ptr [ %36, %35 ], [ %33, %32 ]
  %39 = load i8, ptr %38, align 8
  %40 = or i8 %39, 16
  store i8 %40, ptr %38, align 8
  br label %41

41:                                               ; preds = %37, %2
  %42 = phi ptr [ %11, %37 ], [ %7, %2 ]
  %43 = load ptr, ptr @cfun, align 8, !tbaa !187
  %44 = getelementptr inbounds %struct.function, ptr %43, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !248
  %46 = icmp eq ptr %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load ptr, ptr %45, align 8, !tbaa !377
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %42) #28
  br label %52

52:                                               ; preds = %41, %50, %47
  %53 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %42, ptr noundef %1)
  %54 = getelementptr inbounds %struct.variable_info, ptr %53, i64 0, i32 1
  %55 = load i8, ptr %54, align 4
  %56 = or i8 %55, 21
  store i8 %56, ptr %54, align 4
  %57 = getelementptr inbounds %struct.variable_info, ptr %53, i64 0, i32 3
  store i64 0, ptr %57, align 8, !tbaa !349
  %58 = getelementptr inbounds %struct.variable_info, ptr %53, i64 0, i32 4
  %59 = or i8 %55, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 -1, i64 16, i1 false)
  store i8 %59, ptr %54, align 4
  tail call fastcc void @insert_vi_for_tree(ptr noundef nonnull %42, ptr noundef %53)
  %60 = load i32, ptr %53, align 8, !tbaa !372
  %61 = load i32, ptr %0, align 8, !tbaa !372
  %62 = zext i32 %61 to i64
  %63 = shl nuw i64 %62, 32
  %64 = zext i32 %60 to i64
  %65 = shl nuw i64 %64, 32
  %66 = or disjoint i64 %65, 2
  %67 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %68 = tail call ptr @pool_alloc(ptr noundef %67) #28
  store i64 %63, ptr %68, align 8, !tbaa.struct !373
  %69 = getelementptr inbounds i8, ptr %68, i64 8
  store i64 0, ptr %69, align 8, !tbaa.struct !374
  %70 = getelementptr inbounds %struct.constraint, ptr %68, i64 0, i32 1
  store i64 %66, ptr %70, align 8, !tbaa.struct !373
  %71 = getelementptr inbounds %struct.constraint, ptr %68, i64 0, i32 1, i32 2
  store i64 0, ptr %71, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %68)
  ret ptr %53
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %1) unnamed_addr #17 !prof !787 !PGOFuncName !788 {
  %3 = load ptr, ptr %1, align 8, !tbaa !187
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5, !prof !391

5:                                                ; preds = %2
  %6 = load i32, ptr %3, align 8, !tbaa !392
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !394

8:                                                ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #28
  br label %9

9:                                                ; preds = %2, %5, %8
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0)
  ret void
}

declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @get_constraint_for_ptr_offset(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #14 !prof !787 !PGOFuncName !789 {
  %4 = load i8, ptr @use_field_sensitive, align 1, !tbaa !198
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7, !prof !439

6:                                                ; preds = %3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2)
  br label %130

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %16, label %9, !prof !439

9:                                                ; preds = %7
  %10 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #28
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12, !prof !440

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !198
  %15 = shl nsw i64 %14, 3
  br label %16

16:                                               ; preds = %7, %9, %12
  %17 = phi i64 [ %15, %12 ], [ -9223372036854775808, %9 ], [ -9223372036854775808, %7 ]
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %130, label %19, !prof !439

19:                                               ; preds = %16
  %20 = load ptr, ptr %2, align 8, !tbaa !187
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22, !prof !439

22:                                               ; preds = %19
  %23 = load i32, ptr %20, align 8, !tbaa !392
  br label %24

24:                                               ; preds = %19, %22
  %25 = phi i32 [ %23, %22 ], [ 0, %19 ]
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %130, label %27, !prof !790

27:                                               ; preds = %24
  %28 = zext i32 %25 to i64
  br label %29

29:                                               ; preds = %27, %121
  %30 = phi i64 [ 0, %27 ], [ %128, %121 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !187
  %32 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %31, i64 0, i32 2, i64 %30
  %33 = load i32, ptr %32, align 8, !tbaa.struct !373
  %34 = getelementptr inbounds i8, ptr %32, i64 4
  %35 = load i32, ptr %34, align 4, !tbaa.struct !408
  %36 = getelementptr inbounds i8, ptr %32, i64 8
  %37 = load i64, ptr %36, align 8, !tbaa.struct !374
  %38 = load ptr, ptr @varmap, align 8
  %39 = zext i32 %35 to i64
  %40 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %38, i64 0, i32 2, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !187
  %42 = icmp eq i32 %33, 2
  br i1 %42, label %43, label %121, !prof !439

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.variable_info, ptr %41, i64 0, i32 1
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 8
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %121

48:                                               ; preds = %43
  %49 = icmp eq i64 %17, -9223372036854775808
  br i1 %49, label %50, label %83, !prof !439

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.variable_info, ptr %41, i64 0, i32 7
  %52 = load ptr, ptr %51, align 8, !tbaa !308
  %53 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %54 = tail call ptr @pointer_map_contains(ptr noundef %53, ptr noundef %52) #28
  %55 = icmp ne ptr %54, null
  tail call void @llvm.assume(i1 %55)
  %56 = load ptr, ptr %54, align 8, !tbaa !187
  br label %57

57:                                               ; preds = %50, %79
  %58 = phi ptr [ %81, %79 ], [ %56, %50 ]
  %59 = load i32, ptr %58, align 8, !tbaa !372
  %60 = icmp eq i32 %59, %35
  br i1 %60, label %79, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr %2, align 8, !tbaa !187
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %62, i64 0, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !409
  %67 = load i32, ptr %62, align 8, !tbaa !392
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %64
  %70 = tail call ptr @vec_heap_o_reserve(ptr noundef %62, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %70, ptr %2, align 8, !tbaa !187
  br label %71

71:                                               ; preds = %64, %69
  %72 = load ptr, ptr %2, align 8, !tbaa !187
  %73 = load i32, ptr %72, align 8, !tbaa !392
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 8, !tbaa !392
  %75 = zext i32 %73 to i64
  %76 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %72, i64 0, i32 2, i64 %75
  store i32 2, ptr %76, align 8, !tbaa.struct !373
  %77 = getelementptr inbounds i8, ptr %76, i64 4
  store i32 %59, ptr %77, align 4, !tbaa.struct !408
  %78 = getelementptr inbounds i8, ptr %76, i64 8
  store i64 0, ptr %78, align 8, !tbaa.struct !374
  br label %79

79:                                               ; preds = %57, %71
  %80 = getelementptr inbounds %struct.variable_info, ptr %58, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !354
  %82 = icmp eq ptr %81, null
  br i1 %82, label %121, label %57, !llvm.loop !791

83:                                               ; preds = %48
  br i1 %42, label %84, label %121, !prof !439

84:                                               ; preds = %83
  %85 = icmp slt i64 %17, 0
  %86 = getelementptr inbounds %struct.variable_info, ptr %41, i64 0, i32 3
  %87 = load i64, ptr %86, align 8, !tbaa !349
  %88 = add i64 %87, %17
  %89 = icmp ult i64 %87, %88
  %90 = select i1 %85, i1 %89, i1 false
  %91 = select i1 %90, i64 0, i64 %88
  %92 = tail call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef %41, i64 noundef %91)
  %93 = getelementptr inbounds %struct.variable_info, ptr %92, i64 0, i32 3
  %94 = load i64, ptr %93, align 8, !tbaa !349
  %95 = icmp eq i64 %94, %91
  br i1 %95, label %119, label %96

96:                                               ; preds = %84
  %97 = getelementptr inbounds %struct.variable_info, ptr %92, i64 0, i32 2
  %98 = load ptr, ptr %97, align 8, !tbaa !354
  %99 = icmp eq ptr %98, null
  br i1 %99, label %119, label %100

100:                                              ; preds = %96
  %101 = load i32, ptr %98, align 8, !tbaa !372
  %102 = load ptr, ptr %2, align 8, !tbaa !187
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %102, i64 0, i32 1
  %106 = load i32, ptr %105, align 4, !tbaa !409
  %107 = load i32, ptr %102, align 8, !tbaa !392
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100, %104
  %110 = tail call ptr @vec_heap_o_reserve(ptr noundef %102, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %110, ptr %2, align 8, !tbaa !187
  br label %111

111:                                              ; preds = %104, %109
  %112 = load ptr, ptr %2, align 8, !tbaa !187
  %113 = load i32, ptr %112, align 8, !tbaa !392
  %114 = add i32 %113, 1
  store i32 %114, ptr %112, align 8, !tbaa !392
  %115 = zext i32 %113 to i64
  %116 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %112, i64 0, i32 2, i64 %115
  store i32 2, ptr %116, align 8, !tbaa.struct !373
  %117 = getelementptr inbounds i8, ptr %116, i64 4
  store i32 %101, ptr %117, align 4, !tbaa.struct !408
  %118 = getelementptr inbounds i8, ptr %116, i64 8
  store i64 0, ptr %118, align 8, !tbaa.struct !374
  br label %119

119:                                              ; preds = %111, %96, %84
  %120 = load i32, ptr %92, align 8, !tbaa !372
  br label %121

121:                                              ; preds = %79, %29, %83, %43, %119
  %122 = phi i32 [ %120, %119 ], [ %35, %43 ], [ %35, %83 ], [ %35, %29 ], [ %35, %79 ]
  %123 = phi i64 [ 0, %119 ], [ 0, %43 ], [ %17, %83 ], [ %17, %29 ], [ %37, %79 ]
  %124 = load ptr, ptr %2, align 8, !tbaa !187
  %125 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %124, i64 0, i32 2, i64 %30
  store i32 %33, ptr %125, align 8, !tbaa.struct !373
  %126 = getelementptr inbounds i8, ptr %125, i64 4
  store i32 %122, ptr %126, align 4, !tbaa.struct !408
  %127 = getelementptr inbounds i8, ptr %125, i64 8
  store i64 %123, ptr %127, align 8, !tbaa.struct !374
  %128 = add nuw nsw i64 %30, 1
  %129 = icmp eq i64 %128, %28
  br i1 %129, label %130, label %29, !prof !792, !llvm.loop !793

130:                                              ; preds = %121, %24, %16, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_all_all_constraints(ptr noundef readonly %0, ptr noundef readonly %1) unnamed_addr #14 !prof !794 !PGOFuncName !795 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4, !prof !433

4:                                                ; preds = %2
  %5 = load i32, ptr %0, align 8, !tbaa !392
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %12, label %7, !prof !443

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = load i32, ptr %1, align 8, !tbaa !392
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %51

12:                                               ; preds = %7, %2, %9, %4
  %13 = icmp eq ptr %1, null
  br label %14

14:                                               ; preds = %49, %12
  %15 = phi i32 [ 0, %12 ], [ %50, %49 ]
  br i1 %3, label %22, label %16, !prof !796

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8, !tbaa !392
  %18 = icmp ugt i32 %17, %15
  br i1 %18, label %19, label %22, !prof !797

19:                                               ; preds = %16
  %20 = zext i32 %15 to i64
  %21 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %20
  br label %22

22:                                               ; preds = %14, %16, %19
  %23 = phi ptr [ %21, %19 ], [ null, %16 ], [ null, %14 ]
  %24 = phi i1 [ false, %19 ], [ true, %16 ], [ true, %14 ]
  br i1 %24, label %103, label %25, !prof !797

25:                                               ; preds = %22, %36
  %26 = phi i32 [ %48, %36 ], [ 0, %22 ]
  br i1 %13, label %33, label %27, !prof !796

27:                                               ; preds = %25
  %28 = load i32, ptr %1, align 8, !tbaa !392
  %29 = icmp ugt i32 %28, %26
  br i1 %29, label %30, label %33, !prof !797

30:                                               ; preds = %27
  %31 = zext i32 %26 to i64
  %32 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1, i64 0, i32 2, i64 %31
  br label %33

33:                                               ; preds = %25, %27, %30
  %34 = phi ptr [ %32, %30 ], [ null, %27 ], [ null, %25 ]
  %35 = phi i1 [ false, %30 ], [ true, %27 ], [ true, %25 ]
  br i1 %35, label %49, label %36, !prof !797

36:                                               ; preds = %33
  %37 = getelementptr inbounds { i64, i64 }, ptr %23, i64 0, i32 1
  %38 = load i64, ptr %23, align 8
  %39 = load i64, ptr %37, align 8
  %40 = load i64, ptr %34, align 8
  %41 = getelementptr inbounds { i64, i64 }, ptr %34, i64 0, i32 1
  %42 = load i64, ptr %41, align 8
  %43 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %44 = tail call ptr @pool_alloc(ptr noundef %43) #28
  store i64 %38, ptr %44, align 8, !tbaa.struct !373
  %45 = getelementptr inbounds i8, ptr %44, i64 8
  store i64 %39, ptr %45, align 8, !tbaa.struct !374
  %46 = getelementptr inbounds %struct.constraint, ptr %44, i64 0, i32 1
  store i64 %40, ptr %46, align 8, !tbaa.struct !373
  %47 = getelementptr inbounds %struct.constraint, ptr %44, i64 0, i32 1, i32 2
  store i64 %42, ptr %47, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %44)
  %48 = add i32 %26, 1
  br label %25, !llvm.loop !798

49:                                               ; preds = %33
  %50 = add i32 %15, 1
  br label %14, !llvm.loop !799

51:                                               ; preds = %9
  %52 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.66)
  %53 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 3
  store i64 0, ptr %53, align 8, !tbaa !349
  %54 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 4
  %55 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 -1, i64 16, i1 false)
  %56 = load i8, ptr %55, align 4
  %57 = or i8 %56, 8
  store i8 %57, ptr %55, align 4
  %58 = load i32, ptr %52, align 8, !tbaa !372
  %59 = zext i32 %58 to i64
  %60 = shl nuw i64 %59, 32
  br label %61

61:                                               ; preds = %72, %51
  %62 = phi i32 [ 0, %51 ], [ %81, %72 ]
  br i1 %8, label %69, label %63

63:                                               ; preds = %61
  %64 = load i32, ptr %1, align 8, !tbaa !392
  %65 = icmp ugt i32 %64, %62
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = zext i32 %62 to i64
  %68 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %1, i64 0, i32 2, i64 %67
  br label %69

69:                                               ; preds = %61, %63, %66
  %70 = phi ptr [ %68, %66 ], [ null, %63 ], [ null, %61 ]
  %71 = phi i1 [ false, %66 ], [ true, %63 ], [ true, %61 ]
  br i1 %71, label %82, label %72

72:                                               ; preds = %69
  %73 = load i64, ptr %70, align 8
  %74 = getelementptr inbounds { i64, i64 }, ptr %70, i64 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %77 = tail call ptr @pool_alloc(ptr noundef %76) #28
  store i64 %60, ptr %77, align 8, !tbaa.struct !373
  %78 = getelementptr inbounds i8, ptr %77, i64 8
  store i64 0, ptr %78, align 8, !tbaa.struct !374
  %79 = getelementptr inbounds %struct.constraint, ptr %77, i64 0, i32 1
  store i64 %73, ptr %79, align 8, !tbaa.struct !373
  %80 = getelementptr inbounds %struct.constraint, ptr %77, i64 0, i32 1, i32 2
  store i64 %75, ptr %80, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %77)
  %81 = add i32 %62, 1
  br label %61, !llvm.loop !800

82:                                               ; preds = %69, %93
  %83 = phi i32 [ %102, %93 ], [ 0, %69 ]
  br i1 %3, label %90, label %84

84:                                               ; preds = %82
  %85 = load i32, ptr %0, align 8, !tbaa !392
  %86 = icmp ugt i32 %85, %83
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = zext i32 %83 to i64
  %89 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %88
  br label %90

90:                                               ; preds = %82, %84, %87
  %91 = phi ptr [ %89, %87 ], [ null, %84 ], [ null, %82 ]
  %92 = phi i1 [ false, %87 ], [ true, %84 ], [ true, %82 ]
  br i1 %92, label %103, label %93

93:                                               ; preds = %90
  %94 = load i64, ptr %91, align 8
  %95 = getelementptr inbounds { i64, i64 }, ptr %91, i64 0, i32 1
  %96 = load i64, ptr %95, align 8
  %97 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %98 = tail call ptr @pool_alloc(ptr noundef %97) #28
  store i64 %94, ptr %98, align 8, !tbaa.struct !373
  %99 = getelementptr inbounds i8, ptr %98, i64 8
  store i64 %96, ptr %99, align 8, !tbaa.struct !374
  %100 = getelementptr inbounds %struct.constraint, ptr %98, i64 0, i32 1
  store i64 %60, ptr %100, align 8, !tbaa.struct !373
  %101 = getelementptr inbounds %struct.constraint, ptr %98, i64 0, i32 1, i32 2
  store i64 0, ptr %101, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %98)
  %102 = add i32 %83, 1
  br label %82, !llvm.loop !801

103:                                              ; preds = %90, %22
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @do_deref(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !802 !PGOFuncName !803 {
  br label %2

2:                                                ; preds = %39, %1
  %3 = phi i32 [ 0, %1 ], [ %40, %39 ]
  %4 = load ptr, ptr %0, align 8, !tbaa !187
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6, !prof !804

6:                                                ; preds = %2
  %7 = load i32, ptr %4, align 8, !tbaa !392
  %8 = icmp ugt i32 %7, %3
  br i1 %8, label %9, label %12, !prof !805

9:                                                ; preds = %6
  %10 = zext i32 %3 to i64
  %11 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %4, i64 0, i32 2, i64 %10
  br label %12

12:                                               ; preds = %2, %6, %9
  %13 = phi ptr [ %11, %9 ], [ null, %6 ], [ null, %2 ]
  %14 = phi i1 [ false, %9 ], [ true, %6 ], [ true, %2 ]
  br i1 %14, label %41, label %15, !prof !805

15:                                               ; preds = %12
  %16 = load i32, ptr %13, align 8, !tbaa !422
  switch i32 %16, label %38 [
    i32 0, label %17
    i32 2, label %18
    i32 1, label %19
  ], !prof !806

17:                                               ; preds = %15
  store i32 1, ptr %13, align 8, !tbaa !422
  br label %39

18:                                               ; preds = %15
  store i32 0, ptr %13, align 8, !tbaa !422
  br label %39

19:                                               ; preds = %15
  %20 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.67)
  %21 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 3
  store i64 0, ptr %21, align 8, !tbaa !349
  %22 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 4
  %23 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 -1, i64 16, i1 false)
  %24 = load i8, ptr %23, align 4
  %25 = or i8 %24, 8
  store i8 %25, ptr %23, align 4
  %26 = load i32, ptr %20, align 8, !tbaa !372
  %27 = zext i32 %26 to i64
  %28 = shl nuw i64 %27, 32
  %29 = load i64, ptr %13, align 8
  %30 = getelementptr inbounds { i64, i64 }, ptr %13, i64 0, i32 1
  %31 = load i64, ptr %30, align 8
  %32 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %33 = tail call ptr @pool_alloc(ptr noundef %32) #28
  store i64 %28, ptr %33, align 8, !tbaa.struct !373
  %34 = getelementptr inbounds i8, ptr %33, i64 8
  store i64 0, ptr %34, align 8, !tbaa.struct !374
  %35 = getelementptr inbounds %struct.constraint, ptr %33, i64 0, i32 1
  store i64 %29, ptr %35, align 8, !tbaa.struct !373
  %36 = getelementptr inbounds %struct.constraint, ptr %33, i64 0, i32 1, i32 2
  store i64 %31, ptr %36, align 8, !tbaa.struct !374
  tail call fastcc void @process_constraint(ptr noundef nonnull %33)
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %13, i64 0, i32 1
  store i32 %26, ptr %37, align 4, !tbaa !437
  br label %39

38:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3090, ptr noundef nonnull @.str.4) #28
  br label %39

39:                                               ; preds = %17, %19, %38, %18
  %40 = add i32 %3, 1
  br label %2, !llvm.loop !807

41:                                               ; preds = %12
  ret void
}

declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @first_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !186 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !353
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !349
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !308
  %13 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %14 = tail call ptr @pointer_map_contains(ptr noundef %13, ptr noundef %12) #28
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr %14, align 8, !tbaa !187
  br label %18

18:                                               ; preds = %16, %10, %6
  %19 = phi ptr [ %0, %6 ], [ %17, %16 ], [ null, %10 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %18, %31
  %22 = phi ptr [ %33, %31 ], [ %19, %18 ]
  %23 = getelementptr inbounds %struct.variable_info, ptr %22, i64 0, i32 3
  %24 = load i64, ptr %23, align 8, !tbaa !349
  %25 = icmp ugt i64 %24, %1
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = sub i64 %1, %24
  %28 = getelementptr inbounds %struct.variable_info, ptr %22, i64 0, i32 4
  %29 = load i64, ptr %28, align 8, !tbaa !350
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %21
  %32 = getelementptr inbounds %struct.variable_info, ptr %22, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !354
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %21, !llvm.loop !808

35:                                               ; preds = %26, %31, %18, %2
  %36 = phi ptr [ null, %2 ], [ null, %18 ], [ null, %31 ], [ %22, %26 ]
  ret ptr %36
}

; Function Attrs: cold inlinehint nounwind uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #2 !prof !186 {
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
  %10 = load i32, ptr %9, align 4, !tbaa !202
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %11
  %13 = load i64, ptr %12, align 8, !tbaa !231
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %16

16:                                               ; preds = %4, %15
  %17 = getelementptr inbounds i8, ptr %0, i64 %13
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  %20 = getelementptr inbounds %struct.tree_common, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !198
  %22 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !198
  %24 = getelementptr inbounds %struct.tree_common, ptr %23, i64 0, i32 2
  br label %76

25:                                               ; preds = %1
  %26 = lshr i32 %2, 16
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !198
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
  %38 = load i32, ptr %37, align 4, !tbaa !202
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !231
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %44

44:                                               ; preds = %43, %31
  %45 = getelementptr inbounds i8, ptr %0, i64 %41
  %46 = getelementptr inbounds ptr, ptr %45, i64 1
  %47 = load ptr, ptr %46, align 8, !tbaa !187
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
  %61 = load i32, ptr %60, align 4, !tbaa !202
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !231
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #28
  br label %67

67:                                               ; preds = %66, %54
  %68 = getelementptr inbounds i8, ptr %0, i64 %64
  %69 = getelementptr inbounds ptr, ptr %68, i64 1
  %70 = load ptr, ptr %69, align 8, !tbaa !187
  %71 = getelementptr inbounds %struct.tree_common, ptr %70, i64 0, i32 2
  br label %76

72:                                               ; preds = %51
  %73 = tail call ptr @gimple_get_lhs(ptr noundef nonnull %0) #28
  %74 = getelementptr inbounds %struct.tree_common, ptr %73, i64 0, i32 2
  br label %76

75:                                               ; preds = %1
  br label %76

76:                                               ; preds = %1, %16, %72, %67, %75
  %77 = phi ptr [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), %75 ], [ %24, %16 ], [ %71, %67 ], [ %74, %72 ], [ getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), %1 ]
  %78 = load ptr, ptr %77, align 8, !tbaa !198
  ret ptr %78
}

declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #3

declare ptr @get_base_address(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) unnamed_addr #17 !prof !809 !PGOFuncName !810 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  br label %7

7:                                                ; preds = %340, %3
  %8 = phi ptr [ %0, %3 ], [ %342, %340 ]
  %9 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !202
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %40, label %11, !prof !811

11:                                               ; preds = %7
  %12 = load i64, ptr %8, align 8
  %13 = and i64 %12, 65535
  %14 = icmp eq i64 %13, 23
  br i1 %14, label %15, label %18, !prof !812

15:                                               ; preds = %11
  %16 = tail call i32 @integer_zerop(ptr noundef nonnull %8) #28
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22, !prof !813

18:                                               ; preds = %15, %11
  %19 = load i64, ptr %8, align 8
  %20 = and i64 %19, 65535
  %21 = icmp eq i64 %20, 51
  br i1 %21, label %22, label %40, !prof !814

22:                                               ; preds = %18, %15
  %23 = load ptr, ptr %1, align 8, !tbaa !187
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25, !prof !815

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %23, i64 0, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !409
  %28 = load i32, ptr %23, align 8, !tbaa !392
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32, !prof !647

30:                                               ; preds = %22, %25
  %31 = tail call ptr @vec_heap_o_reserve(ptr noundef %23, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %31, ptr %1, align 8, !tbaa !187
  br label %32

32:                                               ; preds = %25, %30
  %33 = load ptr, ptr %1, align 8, !tbaa !187
  %34 = load i32, ptr %33, align 8, !tbaa !392
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 8, !tbaa !392
  %36 = zext i32 %34 to i64
  %37 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %33, i64 0, i32 2, i64 %36
  store i32 2, ptr %37, align 8, !tbaa.struct !373
  %38 = getelementptr inbounds i8, ptr %37, i64 4
  store i32 0, ptr %38, align 4, !tbaa.struct !408
  %39 = getelementptr inbounds i8, ptr %37, i64 8
  store i64 0, ptr %39, align 8, !tbaa.struct !374
  br label %92

40:                                               ; preds = %18, %7
  %41 = load i64, ptr %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = and i32 %42, 65535
  %44 = icmp eq i32 %43, 28
  br i1 %44, label %45, label %63, !prof !816

45:                                               ; preds = %40
  %46 = load ptr, ptr %1, align 8, !tbaa !187
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48, !prof !817

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !409
  %51 = load i32, ptr %46, align 8, !tbaa !392
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45, %48
  %54 = tail call ptr @vec_heap_o_reserve(ptr noundef %46, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %54, ptr %1, align 8, !tbaa !187
  br label %55

55:                                               ; preds = %48, %53
  %56 = load ptr, ptr %1, align 8, !tbaa !187
  %57 = load i32, ptr %56, align 8, !tbaa !392
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 8, !tbaa !392
  %59 = zext i32 %57 to i64
  %60 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %56, i64 0, i32 2, i64 %59
  store i32 0, ptr %60, align 8, !tbaa.struct !373
  %61 = getelementptr inbounds i8, ptr %60, i64 4
  store i32 2, ptr %61, align 4, !tbaa.struct !408
  %62 = getelementptr inbounds i8, ptr %60, i64 8
  store i64 0, ptr %62, align 8, !tbaa.struct !374
  br label %92

63:                                               ; preds = %40
  %64 = and i64 %41, 65535
  %65 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %64
  %66 = load i32, ptr %65, align 4, !tbaa !202
  switch i32 %66, label %347 [
    i32 10, label %67
    i32 4, label %90
    i32 0, label %343
    i32 3, label %346
  ], !prof !818

67:                                               ; preds = %63
  %68 = icmp eq i32 %43, 121
  br i1 %68, label %69, label %347, !prof !819

69:                                               ; preds = %67
  %70 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !198
  tail call fastcc void @get_constraint_for_1(ptr noundef %71, ptr noundef %1, i8 noundef zeroext 1)
  %72 = load ptr, ptr %1, align 8, !tbaa !187
  %73 = icmp eq ptr %72, null
  br label %74

74:                                               ; preds = %85, %69
  %75 = phi i32 [ 0, %69 ], [ %89, %85 ]
  br i1 %73, label %82, label %76, !prof !820

76:                                               ; preds = %74
  %77 = load i32, ptr %72, align 8, !tbaa !392
  %78 = icmp ugt i32 %77, %75
  br i1 %78, label %79, label %82, !prof !821

79:                                               ; preds = %76
  %80 = zext i32 %75 to i64
  %81 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %72, i64 0, i32 2, i64 %80
  br label %82

82:                                               ; preds = %79, %76, %74
  %83 = phi ptr [ %81, %79 ], [ null, %76 ], [ null, %74 ]
  %84 = phi i1 [ false, %79 ], [ true, %76 ], [ true, %74 ]
  br i1 %84, label %92, label %85, !prof !821

85:                                               ; preds = %82
  %86 = load i32, ptr %83, align 8, !tbaa !422
  %87 = icmp eq i32 %86, 1
  %88 = select i1 %87, i32 0, i32 2, !prof !822
  store i32 %88, ptr %83, align 8, !tbaa !422
  %89 = add i32 %75, 1
  br label %74, !llvm.loop !423

90:                                               ; preds = %63
  %91 = trunc i64 %41 to i16
  switch i16 %91, label %347 [
    i16 47, label %93
    i16 45, label %96
    i16 46, label %96
    i16 41, label %96
    i16 118, label %340
  ], !prof !823

92:                                               ; preds = %32, %55, %339, %345, %346, %357, %82, %93
  ret void

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8, !tbaa !198
  tail call fastcc void @get_constraint_for_1(ptr noundef %95, ptr noundef %1, i8 noundef zeroext %2)
  tail call fastcc void @do_deref(ptr noundef %1)
  br label %92

96:                                               ; preds = %90, %90, %90
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  store i64 -1, ptr %4, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  store i64 -1, ptr %5, align 8, !tbaa !231
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  br label %97

97:                                               ; preds = %111, %96
  %98 = phi ptr [ %8, %96 ], [ %113, %111 ]
  %99 = load i64, ptr %98, align 8
  %100 = trunc i64 %99 to i16
  switch i16 %100, label %106 [
    i16 32, label %114
    i16 34, label %114
    i16 36, label %114
    i16 141, label %101
  ], !prof !824

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.tree_ssa_name, ptr %98, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !198
  %104 = load i64, ptr %103, align 8
  %105 = trunc i64 %104 to i16
  switch i16 %105, label %106 [
    i16 32, label %114
    i16 34, label %114
    i16 36, label %114
  ], !prof !825

106:                                              ; preds = %101, %97
  %107 = and i64 %99, 65535
  %108 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !202
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %114, label %111, !prof !826

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.tree_exp, ptr %98, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !198
  br label %97, !llvm.loop !827

114:                                              ; preds = %106, %101, %101, %101, %97, %97, %97
  %115 = and i64 %99, 65535
  %116 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !202
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %140, !prof !828

119:                                              ; preds = %114
  %120 = tail call i32 @integer_zerop(ptr noundef nonnull %98) #28
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %140, label %122, !prof !817

122:                                              ; preds = %119
  %123 = load ptr, ptr %1, align 8, !tbaa !187
  %124 = icmp eq ptr %123, null
  br i1 %124, label %130, label %125

125:                                              ; preds = %122
  %126 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %123, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !409
  %128 = load i32, ptr %123, align 8, !tbaa !392
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122, %125
  %131 = tail call ptr @vec_heap_o_reserve(ptr noundef %123, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %131, ptr %1, align 8, !tbaa !187
  br label %132

132:                                              ; preds = %125, %130
  %133 = load ptr, ptr %1, align 8, !tbaa !187
  %134 = load i32, ptr %133, align 8, !tbaa !392
  %135 = add i32 %134, 1
  store i32 %135, ptr %133, align 8, !tbaa !392
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %133, i64 0, i32 2, i64 %136
  store i32 0, ptr %137, align 8, !tbaa.struct !373
  %138 = getelementptr inbounds i8, ptr %137, i64 4
  store i32 7, ptr %138, align 4, !tbaa.struct !408
  %139 = getelementptr inbounds i8, ptr %137, i64 8
  store i64 0, ptr %139, align 8, !tbaa.struct !374
  br label %339

140:                                              ; preds = %119, %114
  %141 = call ptr @get_ref_base_and_extent(ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #28
  call fastcc void @get_constraint_for_1(ptr noundef %141, ptr noundef %1, i8 noundef zeroext 1)
  %142 = load ptr, ptr %1, align 8, !tbaa !187
  %143 = icmp eq ptr %142, null
  br i1 %143, label %146, label %144, !prof !829

144:                                              ; preds = %140
  %145 = load i32, ptr %142, align 8, !tbaa !392
  br label %146

146:                                              ; preds = %140, %144
  %147 = phi i32 [ %145, %144 ], [ 0, %140 ]
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %150, label %149, !prof !830

149:                                              ; preds = %146
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2973, ptr noundef nonnull @.str.4) #28
  br label %150

150:                                              ; preds = %149, %146
  %151 = load ptr, ptr %1, align 8, !tbaa !187
  %152 = load i32, ptr %151, align 8, !tbaa !392
  %153 = add i32 %152, -1
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154
  %156 = load i32, ptr %155, align 8
  switch i32 %156, label %338 [
    i32 0, label %157
    i32 1, label %316
    i32 2, label %335
  ], !prof !831

157:                                              ; preds = %150
  %158 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 1
  %159 = load i32, ptr %158, align 4, !tbaa !437
  %160 = load ptr, ptr @varmap, align 8
  %161 = zext i32 %159 to i64
  %162 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %160, i64 0, i32 2, i64 %161
  %163 = load ptr, ptr %162, align 8, !tbaa !187
  %164 = getelementptr inbounds %struct.variable_info, ptr %163, i64 0, i32 1
  %165 = load i8, ptr %164, align 4
  %166 = and i8 %165, 8
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %170, label %168, !prof !832

168:                                              ; preds = %157
  %169 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 2
  store i64 0, ptr %169, align 8, !tbaa !833
  br label %339

170:                                              ; preds = %157
  switch i32 %156, label %338 [
    i32 0, label %171
    i32 1, label %316
    i32 2, label %335
  ], !prof !834

171:                                              ; preds = %170
  %172 = load i64, ptr %6, align 8, !tbaa !231
  %173 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 1
  %174 = load i32, ptr %173, align 4
  %175 = load ptr, ptr @varmap, align 8
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %175, i64 0, i32 2, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !187
  %179 = getelementptr inbounds %struct.variable_info, ptr %178, i64 0, i32 5
  %180 = load i64, ptr %179, align 8, !tbaa !353
  %181 = icmp ult i64 %172, %180
  %182 = load i64, ptr %5, align 8
  %183 = icmp ne i64 %182, 0
  %184 = select i1 %181, i1 %183, i1 false, !prof !835
  br i1 %184, label %185, label %298, !prof !835

185:                                              ; preds = %171
  store i32 %153, ptr %151, align 8, !tbaa !392
  %186 = load ptr, ptr %177, align 8, !tbaa !187
  %187 = icmp eq ptr %186, null
  br i1 %187, label %236, label %188, !prof !836

188:                                              ; preds = %185
  %189 = icmp eq i8 %2, 0
  br label %190

190:                                              ; preds = %188, %231
  %191 = phi ptr [ %186, %188 ], [ %234, %231 ]
  %192 = phi i32 [ %174, %188 ], [ %232, %231 ]
  %193 = getelementptr inbounds %struct.variable_info, ptr %191, i64 0, i32 3
  %194 = load i64, ptr %193, align 8, !tbaa !349
  %195 = getelementptr inbounds %struct.variable_info, ptr %191, i64 0, i32 4
  %196 = load i64, ptr %195, align 8, !tbaa !350
  %197 = load i64, ptr %6, align 8, !tbaa !231
  %198 = icmp ult i64 %194, %197
  br i1 %198, label %205, label %199, !prof !837

199:                                              ; preds = %190
  %200 = load i64, ptr %5, align 8, !tbaa !231
  %201 = icmp eq i64 %200, -1
  %202 = add i64 %200, %197
  %203 = icmp ugt i64 %202, %194
  %204 = or i1 %201, %203
  br i1 %204, label %212, label %205, !prof !838

205:                                              ; preds = %199, %190
  %206 = icmp ult i64 %197, %194
  br i1 %206, label %231, label %207, !prof !839

207:                                              ; preds = %205
  %208 = icmp eq i64 %196, -1
  %209 = add i64 %196, %194
  %210 = icmp ugt i64 %209, %197
  %211 = or i1 %208, %210
  br i1 %211, label %212, label %231, !prof !840

212:                                              ; preds = %207, %199
  %213 = load i32, ptr %191, align 8, !tbaa !372
  %214 = load ptr, ptr %1, align 8, !tbaa !187
  %215 = icmp eq ptr %214, null
  br i1 %215, label %221, label %216, !prof !841

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %214, i64 0, i32 1
  %218 = load i32, ptr %217, align 4, !tbaa !409
  %219 = load i32, ptr %214, align 8, !tbaa !392
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %223, !prof !841

221:                                              ; preds = %212, %216
  %222 = call ptr @vec_heap_o_reserve(ptr noundef %214, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %222, ptr %1, align 8, !tbaa !187
  br label %223

223:                                              ; preds = %216, %221
  %224 = load ptr, ptr %1, align 8, !tbaa !187
  %225 = load i32, ptr %224, align 8, !tbaa !392
  %226 = add i32 %225, 1
  store i32 %226, ptr %224, align 8, !tbaa !392
  %227 = zext i32 %225 to i64
  %228 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %224, i64 0, i32 2, i64 %227
  store i32 %156, ptr %228, align 8, !tbaa.struct !373
  %229 = getelementptr inbounds i8, ptr %228, i64 4
  store i32 %213, ptr %229, align 4, !tbaa.struct !408
  %230 = getelementptr inbounds i8, ptr %228, i64 8
  store i64 0, ptr %230, align 8, !tbaa.struct !374
  br i1 %189, label %231, label %239, !prof !835

231:                                              ; preds = %207, %205, %223
  %232 = phi i32 [ %213, %223 ], [ %192, %205 ], [ %192, %207 ]
  %233 = getelementptr inbounds %struct.variable_info, ptr %191, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !187
  %235 = icmp eq ptr %234, null
  br i1 %235, label %236, label %190, !prof !842, !llvm.loop !843

236:                                              ; preds = %231, %185
  %237 = phi i32 [ %174, %185 ], [ %232, %231 ]
  %238 = icmp eq i8 %2, 0
  br i1 %238, label %273, label %239, !prof !835

239:                                              ; preds = %223, %236
  %240 = phi i32 [ %237, %236 ], [ %213, %223 ]
  %241 = load ptr, ptr %1, align 8, !tbaa !187
  %242 = icmp eq ptr %241, null
  br i1 %242, label %246, label %243

243:                                              ; preds = %239
  %244 = load i32, ptr %241, align 8, !tbaa !392
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %273

246:                                              ; preds = %243, %239
  %247 = load ptr, ptr @varmap, align 8
  %248 = zext i32 %240 to i64
  %249 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %247, i64 0, i32 2, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !187
  br label %251

251:                                              ; preds = %251, %246
  %252 = phi ptr [ %250, %246 ], [ %254, %251 ]
  %253 = getelementptr inbounds %struct.variable_info, ptr %252, i64 0, i32 2
  %254 = load ptr, ptr %253, align 8, !tbaa !354
  %255 = icmp eq ptr %254, null
  br i1 %255, label %256, label %251, !llvm.loop !844

256:                                              ; preds = %251
  %257 = load i32, ptr %252, align 8, !tbaa !372
  br i1 %242, label %263, label %258

258:                                              ; preds = %256
  %259 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %241, i64 0, i32 1
  %260 = load i32, ptr %259, align 4, !tbaa !409
  %261 = load i32, ptr %241, align 8, !tbaa !392
  %262 = icmp eq i32 %260, %261
  br i1 %262, label %263, label %265

263:                                              ; preds = %256, %258
  %264 = call ptr @vec_heap_o_reserve(ptr noundef %241, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %264, ptr %1, align 8, !tbaa !187
  br label %265

265:                                              ; preds = %258, %263
  %266 = load ptr, ptr %1, align 8, !tbaa !187
  %267 = load i32, ptr %266, align 8, !tbaa !392
  %268 = add i32 %267, 1
  store i32 %268, ptr %266, align 8, !tbaa !392
  %269 = zext i32 %267 to i64
  %270 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %266, i64 0, i32 2, i64 %269
  store i32 %156, ptr %270, align 8, !tbaa.struct !373
  %271 = getelementptr inbounds i8, ptr %270, i64 4
  store i32 %257, ptr %271, align 4, !tbaa.struct !408
  %272 = getelementptr inbounds i8, ptr %270, i64 8
  store i64 0, ptr %272, align 8, !tbaa.struct !374
  br label %339

273:                                              ; preds = %243, %236
  %274 = load ptr, ptr %1, align 8, !tbaa !187
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276, !prof !841

276:                                              ; preds = %273
  %277 = load i32, ptr %274, align 8, !tbaa !392
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %339, !prof !841

279:                                              ; preds = %273, %276
  %280 = load i64, ptr %8, align 8
  %281 = trunc i64 %280 to i16
  switch i16 %281, label %282 [
    i16 42, label %283
    i16 41, label %283
    i16 45, label %283
    i16 46, label %283
    i16 118, label %283
    i16 43, label %283
    i16 44, label %283
  ]

282:                                              ; preds = %279
  call void @fancy_abort(ptr noundef nonnull @.str.57, i32 noundef 1161, ptr noundef nonnull @.str.4) #28
  br label %283

283:                                              ; preds = %279, %279, %279, %279, %279, %279, %279, %282
  %284 = load i64, ptr %8, align 8
  %285 = and i64 %284, 65535
  %286 = icmp eq i64 %285, 45
  br i1 %286, label %339, label %287

287:                                              ; preds = %283, %293
  %288 = phi ptr [ %290, %293 ], [ %8, %283 ]
  %289 = getelementptr inbounds %struct.tree_exp, ptr %288, i64 0, i32 3
  %290 = load ptr, ptr %289, align 8, !tbaa !198
  %291 = load i64, ptr %290, align 8
  %292 = trunc i64 %291 to i16
  switch i16 %292, label %297 [
    i16 42, label %293
    i16 41, label %293
    i16 45, label %293
    i16 46, label %293
    i16 118, label %293
    i16 43, label %293
    i16 44, label %293
  ]

293:                                              ; preds = %287, %287, %287, %287, %287, %287, %287
  %294 = load i64, ptr %290, align 8
  %295 = and i64 %294, 65535
  %296 = icmp eq i64 %295, 45
  br i1 %296, label %339, label %287, !llvm.loop !845

297:                                              ; preds = %287
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3027, ptr noundef nonnull @.str.4) #28
  br label %339

298:                                              ; preds = %171
  %299 = icmp eq i64 %182, 0
  %300 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %301 = icmp eq ptr %300, null
  br i1 %299, label %302, label %309

302:                                              ; preds = %298
  br i1 %301, label %339, label %303

303:                                              ; preds = %302
  %304 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %305 = and i32 %304, 8
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %339, label %307

307:                                              ; preds = %303
  %308 = call i64 @fwrite(ptr nonnull @.str.63, i64 47, i64 1, ptr nonnull %300)
  br label %339

309:                                              ; preds = %298
  br i1 %301, label %339, label %310

310:                                              ; preds = %309
  %311 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %312 = and i32 %311, 8
  %313 = icmp eq i32 %312, 0
  br i1 %313, label %339, label %314

314:                                              ; preds = %310
  %315 = call i64 @fwrite(ptr nonnull @.str.64, i64 45, i64 1, ptr nonnull %300)
  br label %339

316:                                              ; preds = %150, %170
  %317 = load i64, ptr %6, align 8, !tbaa !231
  %318 = icmp eq i64 %317, -1
  br i1 %318, label %331, label %319, !prof !846

319:                                              ; preds = %316
  %320 = load i64, ptr %4, align 8, !tbaa !231
  %321 = load i64, ptr %5, align 8, !tbaa !231
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %331, !prof !847

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.tree_common, ptr %8, i64 0, i32 2
  %325 = load ptr, ptr %324, align 8, !tbaa !198
  %326 = load i64, ptr %325, align 8
  %327 = trunc i64 %326 to i32
  %328 = and i32 %327, 65535
  %329 = add nsw i32 %328, -15
  %330 = icmp ult i32 %329, 4
  br i1 %330, label %331, label %333, !prof !848

331:                                              ; preds = %323, %319, %316
  %332 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 2
  store i64 -9223372036854775808, ptr %332, align 8, !tbaa !833
  br label %339

333:                                              ; preds = %323
  %334 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 2
  store i64 %317, ptr %334, align 8, !tbaa !833
  br label %339

335:                                              ; preds = %150, %170
  store i32 0, ptr %155, align 8, !tbaa !422
  %336 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 1
  store i32 1, ptr %336, align 4, !tbaa !437
  %337 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %151, i64 0, i32 2, i64 %154, i32 2
  store i64 0, ptr %337, align 8, !tbaa !833
  br label %339

338:                                              ; preds = %150, %170
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3060, ptr noundef nonnull @.str.4) #28
  br label %339

339:                                              ; preds = %293, %283, %265, %276, %297, %132, %168, %302, %303, %307, %309, %310, %314, %331, %333, %335, %338
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  br label %92

340:                                              ; preds = %90
  %341 = getelementptr inbounds %struct.tree_exp, ptr %8, i64 0, i32 3
  %342 = load ptr, ptr %341, align 8, !tbaa !198
  br label %7

343:                                              ; preds = %63
  %344 = icmp eq i32 %43, 141
  br i1 %344, label %345, label %347, !prof !849

345:                                              ; preds = %343
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %8, ptr noundef %1, i8 noundef zeroext %2)
  br label %92

346:                                              ; preds = %63
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %8, ptr noundef %1, i8 noundef zeroext %2)
  br label %92

347:                                              ; preds = %63, %343, %90, %67
  %348 = load ptr, ptr %1, align 8, !tbaa !187
  %349 = icmp eq ptr %348, null
  br i1 %349, label %355, label %350

350:                                              ; preds = %347
  %351 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %348, i64 0, i32 1
  %352 = load i32, ptr %351, align 4, !tbaa !409
  %353 = load i32, ptr %348, align 8, !tbaa !392
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %357

355:                                              ; preds = %347, %350
  %356 = tail call ptr @vec_heap_o_reserve(ptr noundef %348, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %356, ptr %1, align 8, !tbaa !187
  br label %357

357:                                              ; preds = %350, %355
  %358 = load ptr, ptr %1, align 8, !tbaa !187
  %359 = load i32, ptr %358, align 8, !tbaa !392
  %360 = add i32 %359, 1
  store i32 %360, ptr %358, align 8, !tbaa !392
  %361 = zext i32 %359 to i64
  %362 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %358, i64 0, i32 2, i64 %361
  store i32 2, ptr %362, align 8, !tbaa.struct !373
  %363 = getelementptr inbounds i8, ptr %362, i64 4
  store i32 1, ptr %363, align 4, !tbaa.struct !408
  %364 = getelementptr inbounds i8, ptr %362, i64 8
  store i64 0, ptr %364, align 8, !tbaa.struct !374
  br label %92
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @get_constraint_for_ssa_var(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #17 !prof !850 !PGOFuncName !851 {
  br label %4

4:                                                ; preds = %23, %3
  %5 = phi ptr [ %0, %3 ], [ %25, %23 ]
  %6 = load i64, ptr %5, align 8
  %7 = trunc i64 %6 to i16
  switch i16 %7, label %13 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %8
  ], !prof !852

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !198
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %13 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ], !prof !853

13:                                               ; preds = %8, %4
  %14 = and i64 %6, 65535
  %15 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !202
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2699, ptr noundef nonnull @.str.4) #28
  br label %19

19:                                               ; preds = %13, %8, %8, %4, %4, %8, %4, %18
  %20 = load i64, ptr %5, align 8
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %32, !prof !854

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %5, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !198
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp ne i64 %27, 34
  %29 = and i64 %20, 4294967296
  %30 = icmp eq i64 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %32, label %4, !prof !855

32:                                               ; preds = %23, %19
  %33 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %5)
  %34 = load i32, ptr %33, align 8, !tbaa !372
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %41, !prof !856

36:                                               ; preds = %32
  %37 = load i64, ptr %5, align 8
  %38 = and i64 %37, 1048576
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2719, ptr noundef nonnull @.str.4) #28
  br label %41

41:                                               ; preds = %40, %36, %32
  %42 = phi i32 [ %34, %36 ], [ 2, %40 ], [ %34, %32 ]
  %43 = phi i32 [ 0, %36 ], [ 2, %40 ], [ 0, %32 ]
  %44 = icmp eq i8 %2, 0
  br i1 %44, label %45, label %73, !prof !857

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 1
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 8
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %73, !prof !858

50:                                               ; preds = %45, %62
  %51 = phi ptr [ %71, %62 ], [ %33, %45 ]
  %52 = load i32, ptr %51, align 8, !tbaa !372
  %53 = load ptr, ptr %1, align 8, !tbaa !187
  %54 = icmp eq ptr %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %53, i64 0, i32 1
  %57 = load i32, ptr %56, align 4, !tbaa !409
  %58 = load i32, ptr %53, align 8, !tbaa !392
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %50, %55
  %61 = tail call ptr @vec_heap_o_reserve(ptr noundef %53, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %61, ptr %1, align 8, !tbaa !187
  br label %62

62:                                               ; preds = %55, %60
  %63 = load ptr, ptr %1, align 8, !tbaa !187
  %64 = load i32, ptr %63, align 8, !tbaa !392
  %65 = add i32 %64, 1
  store i32 %65, ptr %63, align 8, !tbaa !392
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %63, i64 0, i32 2, i64 %66
  store i32 %43, ptr %67, align 8, !tbaa.struct !373
  %68 = getelementptr inbounds i8, ptr %67, i64 4
  store i32 %52, ptr %68, align 4, !tbaa.struct !408
  %69 = getelementptr inbounds i8, ptr %67, i64 8
  store i64 0, ptr %69, align 8, !tbaa.struct !374
  %70 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !354
  %72 = icmp eq ptr %71, null
  br i1 %72, label %91, label %50, !llvm.loop !859

73:                                               ; preds = %45, %41
  %74 = load ptr, ptr %1, align 8, !tbaa !187
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76, !prof !860

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %74, i64 0, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !409
  %79 = load i32, ptr %74, align 8, !tbaa !392
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83, !prof !861

81:                                               ; preds = %73, %76
  %82 = tail call ptr @vec_heap_o_reserve(ptr noundef %74, i32 noundef 1, i64 noundef 8, i64 noundef 16) #28
  store ptr %82, ptr %1, align 8, !tbaa !187
  br label %83

83:                                               ; preds = %76, %81
  %84 = load ptr, ptr %1, align 8, !tbaa !187
  %85 = load i32, ptr %84, align 8, !tbaa !392
  %86 = add i32 %85, 1
  store i32 %86, ptr %84, align 8, !tbaa !392
  %87 = zext i32 %85 to i64
  %88 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %84, i64 0, i32 2, i64 %87
  store i32 %43, ptr %88, align 8, !tbaa.struct !373
  %89 = getelementptr inbounds i8, ptr %88, i64 4
  store i32 %42, ptr %89, align 4, !tbaa.struct !408
  %90 = getelementptr inbounds i8, ptr %88, i64 8
  store i64 0, ptr %90, align 8, !tbaa.struct !374
  br label %91

91:                                               ; preds = %62, %83
  ret void
}

declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define internal fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #10 !prof !186 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !349
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !308
  %9 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %10 = tail call ptr @pointer_map_contains(ptr noundef %9, ptr noundef %8) #28
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %6
  %13 = load ptr, ptr %10, align 8, !tbaa !187
  br label %14

14:                                               ; preds = %12, %6, %2
  %15 = phi ptr [ null, %6 ], [ %13, %12 ], [ %0, %2 ]
  br label %16

16:                                               ; preds = %14, %25
  %17 = phi ptr [ %19, %25 ], [ %15, %14 ]
  %18 = getelementptr inbounds %struct.variable_info, ptr %17, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !354
  %20 = icmp eq ptr %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.variable_info, ptr %17, i64 0, i32 3
  %23 = load i64, ptr %22, align 8, !tbaa !349
  %24 = icmp ugt i64 %23, %1
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = sub i64 %1, %23
  %27 = getelementptr inbounds %struct.variable_info, ptr %17, i64 0, i32 4
  %28 = load i64, ptr %27, align 8, !tbaa !350
  %29 = icmp ult i64 %26, %28
  br i1 %29, label %30, label %16, !llvm.loop !862

30:                                               ; preds = %25, %21, %16
  ret ptr %17
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @make_constraint_to(i32 noundef %0, ptr noundef %1) unnamed_addr #17 !prof !336 !PGOFuncName !863 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  store ptr null, ptr %3, align 8, !tbaa !187
  call fastcc void @get_constraint_for_1(ptr noundef %1, ptr noundef nonnull %3, i8 noundef zeroext 0)
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i32 [ 0, %2 ], [ %28, %17 ]
  %6 = load ptr, ptr %3, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8, !prof !416

8:                                                ; preds = %4
  %9 = load i32, ptr %6, align 8, !tbaa !392
  %10 = icmp ugt i32 %9, %5
  br i1 %10, label %11, label %14, !prof !417

11:                                               ; preds = %8
  %12 = zext i32 %5 to i64
  %13 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %6, i64 0, i32 2, i64 %12
  br label %14

14:                                               ; preds = %4, %8, %11
  %15 = phi ptr [ %13, %11 ], [ null, %8 ], [ null, %4 ]
  %16 = phi i1 [ false, %11 ], [ true, %8 ], [ true, %4 ]
  br i1 %16, label %29, label %17, !prof !417

17:                                               ; preds = %14
  %18 = zext nneg i32 %0 to i64
  %19 = shl nuw nsw i64 %18, 32
  %20 = load i64, ptr %15, align 8
  %21 = getelementptr inbounds { i64, i64 }, ptr %15, i64 0, i32 1
  %22 = load i64, ptr %21, align 8
  %23 = load ptr, ptr @constraint_pool, align 8, !tbaa !187
  %24 = call ptr @pool_alloc(ptr noundef %23) #28
  store i64 %19, ptr %24, align 8, !tbaa.struct !373
  %25 = getelementptr inbounds i8, ptr %24, i64 8
  store i64 0, ptr %25, align 8, !tbaa.struct !374
  %26 = getelementptr inbounds %struct.constraint, ptr %24, i64 0, i32 1
  store i64 %20, ptr %26, align 8, !tbaa.struct !373
  %27 = getelementptr inbounds %struct.constraint, ptr %24, i64 0, i32 1, i32 2
  store i64 %22, ptr %27, align 8, !tbaa.struct !374
  call fastcc void @process_constraint(ptr noundef nonnull %24)
  %28 = add i32 %5, 1
  br label %4, !llvm.loop !418

29:                                               ; preds = %14
  br i1 %7, label %31, label %30, !prof !419

30:                                               ; preds = %29
  call void @free(ptr noundef %6)
  br label %31

31:                                               ; preds = %29, %30
  store ptr null, ptr %3, align 8, !tbaa !187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  ret void
}

declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #3

declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #3

declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @init_scc_info(i64 noundef %0) unnamed_addr #14 !prof !864 !PGOFuncName !865 {
  %2 = tail call ptr @xmalloc(i64 noundef 48) #28
  %3 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !866
  %4 = trunc i64 %0 to i32
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %4) #28
  store ptr %5, ptr %2, align 8, !tbaa !500
  tail call void @sbitmap_zero(ptr noundef %5) #28
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %4) #28
  %7 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !867
  tail call void @sbitmap_zero(ptr noundef %6) #28
  %8 = shl nuw nsw i64 %0, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #28
  %10 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !502
  %11 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 4) #28
  %12 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !868
  %13 = icmp eq i64 %0, 0
  br i1 %13, label %22, label %14, !prof !280

14:                                               ; preds = %1
  %15 = load ptr, ptr %10, align 8, !tbaa !502
  br label %16

16:                                               ; preds = %14, %16
  %17 = phi i64 [ 0, %14 ], [ %20, %16 ]
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds i32, ptr %15, i64 %17
  store i32 %18, ptr %19, align 4, !tbaa !202
  %20 = add nuw nsw i64 %17, 1
  %21 = icmp eq i64 %20, %0
  br i1 %21, label %22, label %16, !prof !869, !llvm.loop !870

22:                                               ; preds = %16, %1
  %23 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  %24 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 5
  store ptr %23, ptr %24, align 8, !tbaa !871
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @equiv_class_label_hash(ptr nocapture noundef readonly %0) #20 !prof !186 {
  %2 = load i32, ptr %0, align 8, !tbaa !520
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @equiv_class_label_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 !prof !872 !PGOFuncName !873 {
  %3 = load i32, ptr %0, align 8, !tbaa !520
  %4 = load i32, ptr %1, align 8, !tbaa !520
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %14, !prof !874

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.equiv_class_label, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !518
  %9 = getelementptr inbounds %struct.equiv_class_label, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !518
  %11 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %10) #28
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @condense_visit(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #17 !prof !875 !PGOFuncName !876 {
  %4 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !502
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !202
  %9 = icmp eq i32 %8, %2
  br i1 %9, label %11, label %10, !prof !877

10:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1979, ptr noundef nonnull @.str.4) #28
  br label %11

11:                                               ; preds = %3, %10
  %12 = load ptr, ptr %1, align 8, !tbaa !500
  %13 = load ptr, ptr %12, align 8, !tbaa !469
  %14 = icmp eq ptr %13, null
  br i1 %14, label %29, label %15, !prof !877

15:                                               ; preds = %11
  %16 = lshr i32 %2, 6
  %17 = zext nneg i32 %16 to i64
  %18 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3, i64 %17
  %19 = load i64, ptr %18, align 8, !tbaa !231
  %20 = and i32 %2, 63
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw i64 1, %21
  %23 = and i64 %19, %22
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = getelementptr inbounds i8, ptr %13, i64 %17
  %27 = load i8, ptr %26, align 1, !tbaa !198
  %28 = add i8 %27, 1
  store i8 %28, ptr %26, align 1, !tbaa !198
  br label %29

29:                                               ; preds = %11, %15, %25
  %30 = and i32 %2, 63
  %31 = zext nneg i32 %30 to i64
  %32 = shl nuw i64 1, %31
  %33 = lshr i32 %2, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %12, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !231
  %37 = or i64 %36, %32
  store i64 %37, ptr %35, align 8, !tbaa !231
  %38 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %39 = load i32, ptr %38, align 8, !tbaa !866
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !866
  %41 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !868
  %43 = getelementptr inbounds i32, ptr %42, i64 %6
  store i32 %39, ptr %43, align 4, !tbaa !202
  %44 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !460
  %46 = getelementptr inbounds ptr, ptr %45, i64 %6
  %47 = load ptr, ptr %46, align 8, !tbaa !187
  %48 = icmp eq ptr %47, null
  br i1 %48, label %168, label %49, !prof !878

49:                                               ; preds = %29
  %50 = load ptr, ptr %47, align 8, !tbaa !227
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr @bitmap_zero_bits, ptr %50, !prof !879
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 2
  %54 = load i32, ptr %53, align 8, !tbaa !229
  %55 = shl i32 %54, 7
  %56 = getelementptr inbounds %struct.bitmap_element_def, ptr %52, i64 0, i32 3
  %57 = load i64, ptr %56, align 8, !tbaa !231
  %58 = icmp eq i64 %57, 0
  %59 = zext i1 %58 to i32
  %60 = or disjoint i32 %55, %59
  %61 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %62

62:                                               ; preds = %165, %49
  %63 = phi i64 [ %57, %49 ], [ %166, %165 ]
  %64 = phi i32 [ %60, %49 ], [ %167, %165 ]
  %65 = phi i32 [ 0, %49 ], [ %120, %165 ]
  %66 = phi ptr [ %52, %49 ], [ %121, %165 ]
  %67 = icmp eq i64 %63, 0
  br i1 %67, label %82, label %68, !prof !880

68:                                               ; preds = %96, %62
  %69 = phi i64 [ %63, %62 ], [ %101, %96 ]
  %70 = phi i32 [ %64, %62 ], [ %98, %96 ]
  %71 = phi i32 [ %65, %62 ], [ %97, %96 ]
  %72 = phi ptr [ %66, %62 ], [ %89, %96 ]
  %73 = and i64 %69, 1
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %117, !prof !881

75:                                               ; preds = %68, %75
  %76 = phi i32 [ %79, %75 ], [ %70, %68 ]
  %77 = phi i64 [ %78, %75 ], [ %69, %68 ]
  %78 = lshr exact i64 %77, 1
  %79 = add i32 %76, 1
  %80 = and i64 %77, 2
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %75, label %117, !prof !882, !llvm.loop !232

82:                                               ; preds = %62
  %83 = add i32 %64, 63
  %84 = and i32 %83, -64
  %85 = add i32 %65, 1
  br label %86

86:                                               ; preds = %113, %82
  %87 = phi i64 [ %63, %82 ], [ %108, %113 ]
  %88 = phi i32 [ %84, %82 ], [ %116, %113 ]
  %89 = phi ptr [ %66, %82 ], [ %111, %113 ]
  %90 = phi i32 [ %85, %82 ], [ 0, %113 ]
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %107, label %92, !prof !883

92:                                               ; preds = %86
  %93 = add i32 %88, 128
  %94 = shl i32 %90, 6
  %95 = sub i32 %93, %94
  br label %96

96:                                               ; preds = %92, %103
  %97 = phi i32 [ %105, %103 ], [ %90, %92 ]
  %98 = phi i32 [ %104, %103 ], [ %88, %92 ]
  %99 = zext i32 %97 to i64
  %100 = getelementptr inbounds %struct.bitmap_element_def, ptr %89, i64 0, i32 3, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !231
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %68, !prof !884

103:                                              ; preds = %96
  %104 = add i32 %98, 64
  %105 = add i32 %97, 1
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %96, !prof !885, !llvm.loop !233

107:                                              ; preds = %103, %86
  %108 = phi i64 [ %87, %86 ], [ %101, %103 ]
  %109 = phi i32 [ %88, %86 ], [ %95, %103 ]
  %110 = phi i32 [ %90, %86 ], [ 2, %103 ]
  %111 = load ptr, ptr %89, align 8, !tbaa !234
  %112 = icmp eq ptr %111, null
  br i1 %112, label %117, label %113, !prof !886

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !229
  %116 = shl i32 %115, 7
  br label %86, !llvm.loop !235

117:                                              ; preds = %107, %75, %68
  %118 = phi i64 [ %69, %68 ], [ %78, %75 ], [ %108, %107 ]
  %119 = phi i32 [ %70, %68 ], [ %79, %75 ], [ %109, %107 ]
  %120 = phi i32 [ %71, %68 ], [ %71, %75 ], [ %110, %107 ]
  %121 = phi ptr [ %72, %68 ], [ %72, %75 ], [ %111, %107 ]
  %122 = phi i1 [ false, %68 ], [ false, %75 ], [ true, %107 ]
  br i1 %122, label %168, label %123, !prof !887

123:                                              ; preds = %117
  %124 = load ptr, ptr %4, align 8, !tbaa !502
  %125 = zext i32 %119 to i64
  %126 = getelementptr inbounds i32, ptr %124, i64 %125
  %127 = load i32, ptr %126, align 4, !tbaa !202
  %128 = load ptr, ptr %61, align 8, !tbaa !867
  %129 = lshr i32 %127, 6
  %130 = zext nneg i32 %129 to i64
  %131 = getelementptr inbounds %struct.simple_bitmap_def, ptr %128, i64 0, i32 3, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !231
  %133 = and i32 %127, 63
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 1, %134
  %136 = and i64 %135, %132
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %165, !prof !888

138:                                              ; preds = %123
  %139 = load ptr, ptr %1, align 8, !tbaa !500
  %140 = getelementptr inbounds %struct.simple_bitmap_def, ptr %139, i64 0, i32 3, i64 %130
  %141 = load i64, ptr %140, align 8, !tbaa !231
  %142 = and i64 %141, %135
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %145, !prof !889

144:                                              ; preds = %138
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %127)
  br label %145

145:                                              ; preds = %144, %138
  %146 = load ptr, ptr %4, align 8, !tbaa !502
  %147 = zext i32 %127 to i64
  %148 = getelementptr inbounds i32, ptr %146, i64 %147
  %149 = load i32, ptr %148, align 4, !tbaa !202
  %150 = getelementptr inbounds i32, ptr %146, i64 %6
  %151 = load i32, ptr %150, align 4, !tbaa !202
  %152 = icmp eq i32 %151, %2
  br i1 %152, label %154, label %153, !prof !889

153:                                              ; preds = %145
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1997, ptr noundef nonnull @.str.4) #28
  br label %154

154:                                              ; preds = %145, %153
  %155 = load ptr, ptr %41, align 8, !tbaa !868
  %156 = zext i32 %149 to i64
  %157 = getelementptr inbounds i32, ptr %155, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !202
  %159 = zext i32 %151 to i64
  %160 = getelementptr inbounds i32, ptr %155, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !202
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %165, !prof !890

163:                                              ; preds = %154
  %164 = getelementptr inbounds i32, ptr %155, i64 %6
  store i32 %158, ptr %164, align 4, !tbaa !202
  br label %165

165:                                              ; preds = %154, %163, %123
  %166 = lshr i64 %118, 1
  %167 = add i32 %119, 1
  br label %62, !llvm.loop !891

168:                                              ; preds = %117, %29
  %169 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %170 = load ptr, ptr %169, align 8, !tbaa !459
  %171 = getelementptr inbounds ptr, ptr %170, i64 %6
  %172 = load ptr, ptr %171, align 8, !tbaa !187
  %173 = icmp eq ptr %172, null
  br i1 %173, label %293, label %174, !prof !892

174:                                              ; preds = %168
  %175 = load ptr, ptr %172, align 8, !tbaa !227
  %176 = icmp eq ptr %175, null
  %177 = select i1 %176, ptr @bitmap_zero_bits, ptr %175, !prof !893
  %178 = getelementptr inbounds %struct.bitmap_element_def, ptr %177, i64 0, i32 2
  %179 = load i32, ptr %178, align 8, !tbaa !229
  %180 = shl i32 %179, 7
  %181 = getelementptr inbounds %struct.bitmap_element_def, ptr %177, i64 0, i32 3
  %182 = load i64, ptr %181, align 8, !tbaa !231
  %183 = icmp eq i64 %182, 0
  %184 = zext i1 %183 to i32
  %185 = or disjoint i32 %180, %184
  %186 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %187

187:                                              ; preds = %290, %174
  %188 = phi i64 [ %182, %174 ], [ %291, %290 ]
  %189 = phi i32 [ %185, %174 ], [ %292, %290 ]
  %190 = phi i32 [ 0, %174 ], [ %245, %290 ]
  %191 = phi ptr [ %177, %174 ], [ %246, %290 ]
  %192 = icmp eq i64 %188, 0
  br i1 %192, label %207, label %193, !prof !894

193:                                              ; preds = %221, %187
  %194 = phi i64 [ %188, %187 ], [ %226, %221 ]
  %195 = phi i32 [ %189, %187 ], [ %223, %221 ]
  %196 = phi i32 [ %190, %187 ], [ %222, %221 ]
  %197 = phi ptr [ %191, %187 ], [ %214, %221 ]
  %198 = and i64 %194, 1
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %242, !prof !895

200:                                              ; preds = %193, %200
  %201 = phi i32 [ %204, %200 ], [ %195, %193 ]
  %202 = phi i64 [ %203, %200 ], [ %194, %193 ]
  %203 = lshr exact i64 %202, 1
  %204 = add i32 %201, 1
  %205 = and i64 %202, 2
  %206 = icmp eq i64 %205, 0
  br i1 %206, label %200, label %242, !prof !896, !llvm.loop !232

207:                                              ; preds = %187
  %208 = add i32 %189, 63
  %209 = and i32 %208, -64
  %210 = add i32 %190, 1
  br label %211

211:                                              ; preds = %238, %207
  %212 = phi i64 [ %188, %207 ], [ %233, %238 ]
  %213 = phi i32 [ %209, %207 ], [ %241, %238 ]
  %214 = phi ptr [ %191, %207 ], [ %236, %238 ]
  %215 = phi i32 [ %210, %207 ], [ 0, %238 ]
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %232, label %217, !prof !897

217:                                              ; preds = %211
  %218 = add i32 %213, 128
  %219 = shl i32 %215, 6
  %220 = sub i32 %218, %219
  br label %221

221:                                              ; preds = %217, %228
  %222 = phi i32 [ %230, %228 ], [ %215, %217 ]
  %223 = phi i32 [ %229, %228 ], [ %213, %217 ]
  %224 = zext i32 %222 to i64
  %225 = getelementptr inbounds %struct.bitmap_element_def, ptr %214, i64 0, i32 3, i64 %224
  %226 = load i64, ptr %225, align 8, !tbaa !231
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %193, !prof !898

228:                                              ; preds = %221
  %229 = add i32 %223, 64
  %230 = add i32 %222, 1
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %221, !prof !899, !llvm.loop !233

232:                                              ; preds = %228, %211
  %233 = phi i64 [ %212, %211 ], [ %226, %228 ]
  %234 = phi i32 [ %213, %211 ], [ %220, %228 ]
  %235 = phi i32 [ %215, %211 ], [ 2, %228 ]
  %236 = load ptr, ptr %214, align 8, !tbaa !234
  %237 = icmp eq ptr %236, null
  br i1 %237, label %242, label %238, !prof !900

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.bitmap_element_def, ptr %236, i64 0, i32 2
  %240 = load i32, ptr %239, align 8, !tbaa !229
  %241 = shl i32 %240, 7
  br label %211, !llvm.loop !235

242:                                              ; preds = %232, %200, %193
  %243 = phi i64 [ %194, %193 ], [ %203, %200 ], [ %233, %232 ]
  %244 = phi i32 [ %195, %193 ], [ %204, %200 ], [ %234, %232 ]
  %245 = phi i32 [ %196, %193 ], [ %196, %200 ], [ %235, %232 ]
  %246 = phi ptr [ %197, %193 ], [ %197, %200 ], [ %236, %232 ]
  %247 = phi i1 [ false, %193 ], [ false, %200 ], [ true, %232 ]
  br i1 %247, label %293, label %248, !prof !901

248:                                              ; preds = %242
  %249 = load ptr, ptr %4, align 8, !tbaa !502
  %250 = zext i32 %244 to i64
  %251 = getelementptr inbounds i32, ptr %249, i64 %250
  %252 = load i32, ptr %251, align 4, !tbaa !202
  %253 = load ptr, ptr %186, align 8, !tbaa !867
  %254 = lshr i32 %252, 6
  %255 = zext nneg i32 %254 to i64
  %256 = getelementptr inbounds %struct.simple_bitmap_def, ptr %253, i64 0, i32 3, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !231
  %258 = and i32 %252, 63
  %259 = zext nneg i32 %258 to i64
  %260 = shl nuw i64 1, %259
  %261 = and i64 %260, %257
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %290, !prof !902

263:                                              ; preds = %248
  %264 = load ptr, ptr %1, align 8, !tbaa !500
  %265 = getelementptr inbounds %struct.simple_bitmap_def, ptr %264, i64 0, i32 3, i64 %255
  %266 = load i64, ptr %265, align 8, !tbaa !231
  %267 = and i64 %266, %260
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %270, !prof !903

269:                                              ; preds = %263
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %252)
  br label %270

270:                                              ; preds = %269, %263
  %271 = load ptr, ptr %4, align 8, !tbaa !502
  %272 = zext i32 %252 to i64
  %273 = getelementptr inbounds i32, ptr %271, i64 %272
  %274 = load i32, ptr %273, align 4, !tbaa !202
  %275 = getelementptr inbounds i32, ptr %271, i64 %6
  %276 = load i32, ptr %275, align 4, !tbaa !202
  %277 = icmp eq i32 %276, %2
  br i1 %277, label %279, label %278, !prof !904

278:                                              ; preds = %270
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2017, ptr noundef nonnull @.str.4) #28
  br label %279

279:                                              ; preds = %270, %278
  %280 = load ptr, ptr %41, align 8, !tbaa !868
  %281 = zext i32 %274 to i64
  %282 = getelementptr inbounds i32, ptr %280, i64 %281
  %283 = load i32, ptr %282, align 4, !tbaa !202
  %284 = zext i32 %276 to i64
  %285 = getelementptr inbounds i32, ptr %280, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !202
  %287 = icmp ult i32 %283, %286
  br i1 %287, label %288, label %290, !prof !905

288:                                              ; preds = %279
  %289 = getelementptr inbounds i32, ptr %280, i64 %6
  store i32 %283, ptr %289, align 4, !tbaa !202
  br label %290

290:                                              ; preds = %279, %288, %248
  %291 = lshr i64 %243, 1
  %292 = add i32 %244, 1
  br label %187, !llvm.loop !906

293:                                              ; preds = %242, %168
  %294 = load ptr, ptr %41, align 8, !tbaa !868
  %295 = getelementptr inbounds i32, ptr %294, i64 %6
  %296 = load i32, ptr %295, align 4, !tbaa !202
  %297 = icmp eq i32 %296, %39
  %298 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  br i1 %297, label %299, label %429, !prof !907

299:                                              ; preds = %293, %410
  %300 = load ptr, ptr %298, align 8, !tbaa !871
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302, !prof !908

302:                                              ; preds = %299
  %303 = load i32, ptr %300, align 4, !tbaa !592
  br label %304

304:                                              ; preds = %299, %302
  %305 = phi i32 [ %303, %302 ], [ 0, %299 ]
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %411, label %307, !prof !909

307:                                              ; preds = %304
  %308 = load ptr, ptr %41, align 8, !tbaa !868
  %309 = load i32, ptr %300, align 4, !tbaa !592
  %310 = add i32 %309, -1
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %300, i64 0, i32 2, i64 %311
  %313 = load i32, ptr %312, align 4, !tbaa !202
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds i32, ptr %308, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !202
  %317 = icmp ult i32 %316, %39
  br i1 %317, label %411, label %318, !prof !910

318:                                              ; preds = %307
  %319 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %320 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  store i32 %310, ptr %300, align 4, !tbaa !592
  %321 = load ptr, ptr %4, align 8, !tbaa !502
  %322 = getelementptr inbounds i32, ptr %321, i64 %314
  store i32 %2, ptr %322, align 4, !tbaa !202
  %323 = load ptr, ptr %319, align 8, !tbaa !466
  %324 = lshr i32 %313, 6
  %325 = zext nneg i32 %324 to i64
  %326 = getelementptr inbounds %struct.simple_bitmap_def, ptr %323, i64 0, i32 3, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !231
  %328 = and i32 %313, 63
  %329 = zext nneg i32 %328 to i64
  %330 = shl nuw i64 1, %329
  %331 = and i64 %327, %330
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %350, !prof !911

333:                                              ; preds = %318
  %334 = load ptr, ptr %323, align 8, !tbaa !469
  %335 = icmp eq ptr %334, null
  br i1 %335, label %345, label %336, !prof !911

336:                                              ; preds = %333
  %337 = getelementptr inbounds %struct.simple_bitmap_def, ptr %323, i64 0, i32 3, i64 %34
  %338 = load i64, ptr %337, align 8, !tbaa !231
  %339 = and i64 %338, %32
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %345, label %341

341:                                              ; preds = %336
  %342 = getelementptr inbounds i8, ptr %334, i64 %34
  %343 = load i8, ptr %342, align 1, !tbaa !198
  %344 = add i8 %343, -1
  store i8 %344, ptr %342, align 1, !tbaa !198
  br label %345

345:                                              ; preds = %333, %336, %341
  %346 = xor i64 %32, -1
  %347 = getelementptr inbounds %struct.simple_bitmap_def, ptr %323, i64 0, i32 3, i64 %34
  %348 = load i64, ptr %347, align 8, !tbaa !231
  %349 = and i64 %348, %346
  store i64 %349, ptr %347, align 8, !tbaa !231
  br label %350

350:                                              ; preds = %345, %318
  %351 = load ptr, ptr %44, align 8, !tbaa !460
  %352 = getelementptr inbounds ptr, ptr %351, i64 %314
  %353 = load ptr, ptr %352, align 8, !tbaa !187
  %354 = icmp eq ptr %353, null
  br i1 %354, label %370, label %355, !prof !912

355:                                              ; preds = %350
  %356 = getelementptr inbounds ptr, ptr %351, i64 %6
  %357 = load ptr, ptr %356, align 8, !tbaa !187
  %358 = icmp eq ptr %357, null
  br i1 %358, label %359, label %363, !prof !739

359:                                              ; preds = %355
  %360 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %361 = load ptr, ptr %44, align 8, !tbaa !460
  %362 = getelementptr inbounds ptr, ptr %361, i64 %6
  store ptr %360, ptr %362, align 8, !tbaa !187
  br label %363

363:                                              ; preds = %359, %355
  %364 = load ptr, ptr %44, align 8, !tbaa !460
  %365 = getelementptr inbounds ptr, ptr %364, i64 %6
  %366 = load ptr, ptr %365, align 8, !tbaa !187
  %367 = getelementptr inbounds ptr, ptr %364, i64 %314
  %368 = load ptr, ptr %367, align 8, !tbaa !187
  %369 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %366, ptr noundef %368) #28
  br label %370

370:                                              ; preds = %363, %350
  %371 = load ptr, ptr %169, align 8, !tbaa !459
  %372 = getelementptr inbounds ptr, ptr %371, i64 %314
  %373 = load ptr, ptr %372, align 8, !tbaa !187
  %374 = icmp eq ptr %373, null
  br i1 %374, label %390, label %375, !prof !913

375:                                              ; preds = %370
  %376 = getelementptr inbounds ptr, ptr %371, i64 %6
  %377 = load ptr, ptr %376, align 8, !tbaa !187
  %378 = icmp eq ptr %377, null
  br i1 %378, label %379, label %383, !prof !914

379:                                              ; preds = %375
  %380 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %381 = load ptr, ptr %169, align 8, !tbaa !459
  %382 = getelementptr inbounds ptr, ptr %381, i64 %6
  store ptr %380, ptr %382, align 8, !tbaa !187
  br label %383

383:                                              ; preds = %379, %375
  %384 = load ptr, ptr %169, align 8, !tbaa !459
  %385 = getelementptr inbounds ptr, ptr %384, i64 %6
  %386 = load ptr, ptr %385, align 8, !tbaa !187
  %387 = getelementptr inbounds ptr, ptr %384, i64 %314
  %388 = load ptr, ptr %387, align 8, !tbaa !187
  %389 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %386, ptr noundef %388) #28
  br label %390

390:                                              ; preds = %383, %370
  %391 = load ptr, ptr %320, align 8, !tbaa !464
  %392 = getelementptr inbounds ptr, ptr %391, i64 %314
  %393 = load ptr, ptr %392, align 8, !tbaa !187
  %394 = icmp eq ptr %393, null
  br i1 %394, label %410, label %395, !prof !911

395:                                              ; preds = %390
  %396 = getelementptr inbounds ptr, ptr %391, i64 %6
  %397 = load ptr, ptr %396, align 8, !tbaa !187
  %398 = icmp eq ptr %397, null
  br i1 %398, label %399, label %403

399:                                              ; preds = %395
  %400 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %401 = load ptr, ptr %320, align 8, !tbaa !464
  %402 = getelementptr inbounds ptr, ptr %401, i64 %6
  store ptr %400, ptr %402, align 8, !tbaa !187
  br label %403

403:                                              ; preds = %399, %395
  %404 = load ptr, ptr %320, align 8, !tbaa !464
  %405 = getelementptr inbounds ptr, ptr %404, i64 %6
  %406 = load ptr, ptr %405, align 8, !tbaa !187
  %407 = getelementptr inbounds ptr, ptr %404, i64 %314
  %408 = load ptr, ptr %407, align 8, !tbaa !187
  %409 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %406, ptr noundef %408) #28
  br label %410

410:                                              ; preds = %403, %390
  br label %299, !llvm.loop !915

411:                                              ; preds = %304, %307
  %412 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %413 = load ptr, ptr %412, align 8, !tbaa !867
  %414 = load ptr, ptr %413, align 8, !tbaa !469
  %415 = icmp eq ptr %414, null
  br i1 %415, label %425, label %416, !prof !916

416:                                              ; preds = %411
  %417 = getelementptr inbounds %struct.simple_bitmap_def, ptr %413, i64 0, i32 3, i64 %34
  %418 = load i64, ptr %417, align 8, !tbaa !231
  %419 = and i64 %418, %32
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %425

421:                                              ; preds = %416
  %422 = getelementptr inbounds i8, ptr %414, i64 %34
  %423 = load i8, ptr %422, align 1, !tbaa !198
  %424 = add i8 %423, 1
  store i8 %424, ptr %422, align 1, !tbaa !198
  br label %425

425:                                              ; preds = %411, %416, %421
  %426 = getelementptr inbounds %struct.simple_bitmap_def, ptr %413, i64 0, i32 3, i64 %34
  %427 = load i64, ptr %426, align 8, !tbaa !231
  %428 = or i64 %427, %32
  store i64 %428, ptr %426, align 8, !tbaa !231
  br label %445

429:                                              ; preds = %293
  %430 = load ptr, ptr %298, align 8, !tbaa !187
  %431 = icmp eq ptr %430, null
  br i1 %431, label %437, label %432, !prof !913

432:                                              ; preds = %429
  %433 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %430, i64 0, i32 1
  %434 = load i32, ptr %433, align 4, !tbaa !596
  %435 = load i32, ptr %430, align 4, !tbaa !592
  %436 = icmp eq i32 %434, %435
  br i1 %436, label %437, label %439, !prof !917

437:                                              ; preds = %429, %432
  %438 = tail call ptr @vec_heap_o_reserve(ptr noundef %430, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  store ptr %438, ptr %298, align 8, !tbaa !187
  br label %439

439:                                              ; preds = %432, %437
  %440 = load ptr, ptr %298, align 8, !tbaa !187
  %441 = load i32, ptr %440, align 4, !tbaa !592
  %442 = add i32 %441, 1
  store i32 %442, ptr %440, align 4, !tbaa !592
  %443 = zext i32 %441 to i64
  %444 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %440, i64 0, i32 2, i64 %443
  store i32 %2, ptr %444, align 4, !tbaa !202
  br label %445

445:                                              ; preds = %439, %425
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @label_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #14 !prof !918 !PGOFuncName !919 {
  %4 = alloca %struct.equiv_class_label, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !500
  %6 = load ptr, ptr %5, align 8, !tbaa !469
  %7 = icmp eq ptr %6, null
  br i1 %7, label %22, label %8, !prof !920

8:                                                ; preds = %3
  %9 = lshr i32 %2, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !231
  %13 = and i32 %2, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %12, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %8
  %19 = getelementptr inbounds i8, ptr %6, i64 %10
  %20 = load i8, ptr %19, align 1, !tbaa !198
  %21 = add i8 %20, 1
  store i8 %21, ptr %19, align 1, !tbaa !198
  br label %22

22:                                               ; preds = %3, %8, %18
  %23 = and i32 %2, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = lshr i32 %2, 6
  %27 = zext nneg i32 %26 to i64
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %5, i64 0, i32 3, i64 %27
  %29 = load i64, ptr %28, align 8, !tbaa !231
  %30 = or i64 %29, %25
  store i64 %30, ptr %28, align 8, !tbaa !231
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %32 = load ptr, ptr %31, align 8, !tbaa !464
  %33 = zext i32 %2 to i64
  %34 = getelementptr inbounds ptr, ptr %32, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !187
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %41, !prof !921

37:                                               ; preds = %22
  %38 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #28
  %39 = load ptr, ptr %31, align 8, !tbaa !464
  %40 = getelementptr inbounds ptr, ptr %39, i64 %33
  store ptr %38, ptr %40, align 8, !tbaa !187
  br label %41

41:                                               ; preds = %37, %22
  %42 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !460
  %44 = getelementptr inbounds ptr, ptr %43, i64 %33
  %45 = load ptr, ptr %44, align 8, !tbaa !187
  %46 = icmp eq ptr %45, null
  br i1 %46, label %158, label %47, !prof !922

47:                                               ; preds = %41
  %48 = load ptr, ptr %45, align 8, !tbaa !227
  %49 = icmp eq ptr %48, null
  %50 = select i1 %49, ptr @bitmap_zero_bits, ptr %48, !prof !923
  %51 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 2
  %52 = load i32, ptr %51, align 8, !tbaa !229
  %53 = shl i32 %52, 7
  %54 = getelementptr inbounds %struct.bitmap_element_def, ptr %50, i64 0, i32 3
  %55 = load i64, ptr %54, align 8, !tbaa !231
  %56 = icmp eq i64 %55, 0
  %57 = zext i1 %56 to i32
  %58 = or disjoint i32 %53, %57
  %59 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %60 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %61

61:                                               ; preds = %155, %47
  %62 = phi i64 [ %55, %47 ], [ %156, %155 ]
  %63 = phi i32 [ 0, %47 ], [ %118, %155 ]
  %64 = phi i32 [ %58, %47 ], [ %157, %155 ]
  %65 = phi ptr [ %50, %47 ], [ %120, %155 ]
  %66 = icmp eq i64 %62, 0
  br i1 %66, label %81, label %67, !prof !924

67:                                               ; preds = %95, %61
  %68 = phi i64 [ %62, %61 ], [ %100, %95 ]
  %69 = phi i32 [ %63, %61 ], [ %96, %95 ]
  %70 = phi i32 [ %64, %61 ], [ %97, %95 ]
  %71 = phi ptr [ %65, %61 ], [ %88, %95 ]
  %72 = and i64 %68, 1
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %116, !prof !881

74:                                               ; preds = %67, %74
  %75 = phi i32 [ %78, %74 ], [ %70, %67 ]
  %76 = phi i64 [ %77, %74 ], [ %68, %67 ]
  %77 = lshr exact i64 %76, 1
  %78 = add i32 %75, 1
  %79 = and i64 %76, 2
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %74, label %116, !prof !925, !llvm.loop !232

81:                                               ; preds = %61
  %82 = add i32 %64, 63
  %83 = and i32 %82, -64
  %84 = add i32 %63, 1
  br label %85

85:                                               ; preds = %112, %81
  %86 = phi i64 [ %62, %81 ], [ %107, %112 ]
  %87 = phi i32 [ %83, %81 ], [ %115, %112 ]
  %88 = phi ptr [ %65, %81 ], [ %110, %112 ]
  %89 = phi i32 [ %84, %81 ], [ 0, %112 ]
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %106, label %91, !prof !926

91:                                               ; preds = %85
  %92 = add i32 %87, 128
  %93 = shl i32 %89, 6
  %94 = sub i32 %92, %93
  br label %95

95:                                               ; preds = %91, %102
  %96 = phi i32 [ %104, %102 ], [ %89, %91 ]
  %97 = phi i32 [ %103, %102 ], [ %87, %91 ]
  %98 = zext i32 %96 to i64
  %99 = getelementptr inbounds %struct.bitmap_element_def, ptr %88, i64 0, i32 3, i64 %98
  %100 = load i64, ptr %99, align 8, !tbaa !231
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %67, !prof !927

102:                                              ; preds = %95
  %103 = add i32 %97, 64
  %104 = add i32 %96, 1
  %105 = icmp eq i32 %104, 2
  br i1 %105, label %106, label %95, !prof !928, !llvm.loop !233

106:                                              ; preds = %102, %85
  %107 = phi i64 [ %86, %85 ], [ %100, %102 ]
  %108 = phi i32 [ %87, %85 ], [ %94, %102 ]
  %109 = phi i32 [ %89, %85 ], [ 2, %102 ]
  %110 = load ptr, ptr %88, align 8, !tbaa !234
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112, !prof !929

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.bitmap_element_def, ptr %110, i64 0, i32 2
  %114 = load i32, ptr %113, align 8, !tbaa !229
  %115 = shl i32 %114, 7
  br label %85, !llvm.loop !235

116:                                              ; preds = %106, %74, %67
  %117 = phi i64 [ %68, %67 ], [ %77, %74 ], [ %107, %106 ]
  %118 = phi i32 [ %69, %67 ], [ %69, %74 ], [ %109, %106 ]
  %119 = phi i32 [ %70, %67 ], [ %78, %74 ], [ %108, %106 ]
  %120 = phi ptr [ %71, %67 ], [ %71, %74 ], [ %110, %106 ]
  %121 = phi i1 [ false, %67 ], [ false, %74 ], [ true, %106 ]
  br i1 %121, label %158, label %122, !prof !930

122:                                              ; preds = %116
  %123 = load ptr, ptr %59, align 8, !tbaa !502
  %124 = zext i32 %119 to i64
  %125 = getelementptr inbounds i32, ptr %123, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !202
  %127 = load ptr, ptr %1, align 8, !tbaa !500
  %128 = lshr i32 %126, 6
  %129 = zext nneg i32 %128 to i64
  %130 = getelementptr inbounds %struct.simple_bitmap_def, ptr %127, i64 0, i32 3, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !231
  %132 = and i32 %126, 63
  %133 = zext nneg i32 %132 to i64
  %134 = shl nuw i64 1, %133
  %135 = and i64 %134, %131
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %138, !prof !931

137:                                              ; preds = %122
  tail call fastcc void @label_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %126)
  br label %138

138:                                              ; preds = %137, %122
  %139 = icmp eq i32 %126, %2
  br i1 %139, label %155, label %140, !prof !932

140:                                              ; preds = %138
  %141 = load ptr, ptr %60, align 8, !tbaa !461
  %142 = zext i32 %126 to i64
  %143 = getelementptr inbounds i32, ptr %141, i64 %142
  %144 = load i32, ptr %143, align 4, !tbaa !202
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %155, label %146, !prof !933

146:                                              ; preds = %140
  %147 = load ptr, ptr %31, align 8, !tbaa !464
  %148 = getelementptr inbounds ptr, ptr %147, i64 %142
  %149 = load ptr, ptr %148, align 8, !tbaa !187
  %150 = icmp eq ptr %149, null
  br i1 %150, label %155, label %151, !prof !933

151:                                              ; preds = %146
  %152 = getelementptr inbounds ptr, ptr %147, i64 %33
  %153 = load ptr, ptr %152, align 8, !tbaa !187
  %154 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %153, ptr noundef nonnull %149) #28
  br label %155

155:                                              ; preds = %146, %151, %138, %140
  %156 = lshr i64 %117, 1
  %157 = add i32 %119, 1
  br label %61, !llvm.loop !934

158:                                              ; preds = %116, %41
  %159 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %160 = load ptr, ptr %159, align 8, !tbaa !466
  %161 = getelementptr inbounds %struct.simple_bitmap_def, ptr %160, i64 0, i32 3, i64 %27
  %162 = load i64, ptr %161, align 8, !tbaa !231
  %163 = and i64 %162, %25
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %177, !prof !935

165:                                              ; preds = %158
  %166 = load ptr, ptr %31, align 8, !tbaa !464
  %167 = getelementptr inbounds ptr, ptr %166, i64 %33
  %168 = load ptr, ptr %167, align 8, !tbaa !187
  %169 = load ptr, ptr @varmap, align 8
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171, !prof !936

171:                                              ; preds = %165
  %172 = load i32, ptr %169, align 8, !tbaa !219
  br label %173

173:                                              ; preds = %165, %171
  %174 = phi i32 [ %172, %171 ], [ 0, %165 ]
  %175 = add i32 %174, %2
  %176 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %168, i32 noundef %175) #28
  br label %177

177:                                              ; preds = %173, %158
  %178 = load ptr, ptr %31, align 8, !tbaa !464
  %179 = getelementptr inbounds ptr, ptr %178, i64 %33
  %180 = load ptr, ptr %179, align 8, !tbaa !187
  %181 = load ptr, ptr %180, align 8, !tbaa !227
  %182 = icmp eq ptr %181, null
  br i1 %182, label %217, label %183, !prof !937

183:                                              ; preds = %177
  %184 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #28
  %185 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 2
  store ptr %180, ptr %185, align 8, !tbaa !518
  %186 = tail call i32 @bitmap_hash(ptr noundef nonnull %180) #28
  store i32 %186, ptr %4, align 8, !tbaa !520
  %187 = call ptr @htab_find_slot_with_hash(ptr noundef %184, ptr noundef nonnull %4, i32 noundef %186, i32 noundef 0) #28
  %188 = icmp eq ptr %187, null
  br i1 %188, label %193, label %189, !prof !521

189:                                              ; preds = %183
  %190 = load ptr, ptr %187, align 8, !tbaa !187
  %191 = getelementptr inbounds %struct.equiv_class_label, ptr %190, i64 0, i32 1
  %192 = load i32, ptr %191, align 4, !tbaa !522
  br label %193

193:                                              ; preds = %183, %189
  %194 = phi i32 [ %192, %189 ], [ 0, %183 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #28
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %212, !prof !938

196:                                              ; preds = %193
  %197 = load i32, ptr @pointer_equiv_class, align 4, !tbaa !202
  %198 = add nsw i32 %197, 1
  store i32 %198, ptr @pointer_equiv_class, align 4, !tbaa !202
  %199 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !187
  %200 = load ptr, ptr %31, align 8, !tbaa !464
  %201 = getelementptr inbounds ptr, ptr %200, i64 %33
  %202 = load ptr, ptr %201, align 8, !tbaa !187
  %203 = call ptr @xmalloc(i64 noundef 16) #28
  %204 = getelementptr inbounds %struct.equiv_class_label, ptr %203, i64 0, i32 2
  store ptr %202, ptr %204, align 8, !tbaa !518
  %205 = getelementptr inbounds %struct.equiv_class_label, ptr %203, i64 0, i32 1
  store i32 %197, ptr %205, align 4, !tbaa !522
  %206 = call i32 @bitmap_hash(ptr noundef %202) #28
  store i32 %206, ptr %203, align 8, !tbaa !520
  %207 = call ptr @htab_find_slot_with_hash(ptr noundef %199, ptr noundef nonnull %203, i32 noundef %206, i32 noundef 1) #28
  %208 = load ptr, ptr %207, align 8, !tbaa !187
  %209 = icmp eq ptr %208, null
  br i1 %209, label %211, label %210, !prof !524

210:                                              ; preds = %196
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1916, ptr noundef nonnull @.str.4) #28
  br label %211

211:                                              ; preds = %196, %210
  store ptr %203, ptr %207, align 8, !tbaa !187
  br label %212

212:                                              ; preds = %211, %193
  %213 = phi i32 [ %194, %193 ], [ %197, %211 ]
  %214 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %215 = load ptr, ptr %214, align 8, !tbaa !461
  %216 = getelementptr inbounds i32, ptr %215, i64 %33
  store i32 %213, ptr %216, align 4, !tbaa !202
  br label %217

217:                                              ; preds = %212, %177
  ret void
}

declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #3

declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @bitmap_hash(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @unite(i32 noundef %0, i32 noundef %1) unnamed_addr #17 !prof !186 !PGOFuncName !939 {
  %3 = load ptr, ptr @graph, align 8, !tbaa !187
  %4 = load i32, ptr %3, align 8, !tbaa !221
  %5 = icmp ugt i32 %4, %0
  %6 = icmp ugt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8, !prof !537

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 534, ptr noundef nonnull @.str.4) #28
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %20, label %11, !prof !538

11:                                               ; preds = %9
  %12 = load ptr, ptr @graph, align 8, !tbaa !187
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !223
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !202
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %20, label %19, !prof !539

19:                                               ; preds = %11
  store i32 %0, ptr %16, align 4, !tbaa !202
  br label %20

20:                                               ; preds = %9, %11, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %11 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: nounwind uwtable
define internal fastcc void @unify_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #14 !prof !940 !PGOFuncName !941 {
  %5 = alloca %struct.constraint, align 8
  %6 = icmp eq i32 %1, %2
  br i1 %6, label %10, label %7, !prof !539

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @find(i32 noundef %1)
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %11, label %10, !prof !942

10:                                               ; preds = %7, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1404, ptr noundef nonnull @.str.4) #28
  br label %11

11:                                               ; preds = %7, %10
  %12 = load ptr, ptr @dump_file, align 8, !tbaa !187
  %13 = icmp eq ptr %12, null
  br i1 %13, label %31, label %14, !prof !942

14:                                               ; preds = %11
  %15 = load i32, ptr @dump_flags, align 4, !tbaa !202
  %16 = and i32 %15, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %31, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @varmap, align 8
  %20 = zext i32 %2 to i64
  %21 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %19, i64 0, i32 2, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !187
  %23 = getelementptr inbounds %struct.variable_info, ptr %22, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !210
  %25 = zext i32 %1 to i64
  %26 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %19, i64 0, i32 2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !187
  %28 = getelementptr inbounds %struct.variable_info, ptr %27, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !210
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %12, ptr noundef nonnull @.str.83, ptr noundef %24, ptr noundef %29)
  br label %31

31:                                               ; preds = %18, %14, %11
  %32 = icmp eq i8 %3, 0
  %33 = select i1 %32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), !prof !942
  %34 = load i32, ptr %33, align 4, !tbaa !202
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4, !tbaa !202
  %36 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !333
  %38 = zext i32 %2 to i64
  %39 = getelementptr inbounds i32, ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !202
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %48, label %42, !prof !942

42:                                               ; preds = %31
  %43 = zext i32 %1 to i64
  %44 = getelementptr inbounds i32, ptr %37, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !202
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 %40, ptr %44, align 4, !tbaa !202
  br label %48

48:                                               ; preds = %47, %42, %31
  %49 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !330
  %51 = getelementptr inbounds ptr, ptr %50, i64 %38
  %52 = load ptr, ptr %51, align 8, !tbaa !187
  %53 = icmp eq ptr %52, null
  br i1 %53, label %70, label %54, !prof !943

54:                                               ; preds = %48
  %55 = zext i32 %1 to i64
  %56 = getelementptr inbounds ptr, ptr %50, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !187
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %63, !prof !944

59:                                               ; preds = %54
  %60 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %61 = load ptr, ptr %49, align 8, !tbaa !330
  %62 = getelementptr inbounds ptr, ptr %61, i64 %55
  store ptr %60, ptr %62, align 8, !tbaa !187
  br label %63

63:                                               ; preds = %59, %54
  %64 = load ptr, ptr %49, align 8, !tbaa !330
  %65 = getelementptr inbounds ptr, ptr %64, i64 %55
  %66 = load ptr, ptr %65, align 8, !tbaa !187
  %67 = getelementptr inbounds ptr, ptr %64, i64 %38
  %68 = load ptr, ptr %67, align 8, !tbaa !187
  %69 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %66, ptr noundef %68) #28
  br label %70

70:                                               ; preds = %63, %48
  %71 = load ptr, ptr %49, align 8, !tbaa !330
  %72 = getelementptr inbounds ptr, ptr %71, i64 %38
  %73 = load ptr, ptr %72, align 8, !tbaa !187
  %74 = icmp eq ptr %73, null
  br i1 %74, label %78, label %75, !prof !943

75:                                               ; preds = %70
  tail call void @bitmap_obstack_free(ptr noundef nonnull %73) #28
  %76 = load ptr, ptr %49, align 8, !tbaa !330
  %77 = getelementptr inbounds ptr, ptr %76, i64 %38
  store ptr null, ptr %77, align 8, !tbaa !187
  br label %78

78:                                               ; preds = %70, %75
  %79 = tail call fastcc i32 @find(i32 noundef %2)
  %80 = icmp eq i32 %79, %1
  br i1 %80, label %82, label %81, !prof !942

81:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 969, ptr noundef nonnull @.str.4) #28
  br label %82

82:                                               ; preds = %81, %78
  %83 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %84 = load ptr, ptr %83, align 8, !tbaa !326
  %85 = getelementptr inbounds ptr, ptr %84, i64 %38
  %86 = load ptr, ptr %85, align 8, !tbaa !187
  %87 = icmp eq ptr %86, null
  br label %88

88:                                               ; preds = %113, %82
  %89 = phi i32 [ 0, %82 ], [ %115, %113 ]
  br i1 %87, label %97, label %90, !prof !942

90:                                               ; preds = %88
  %91 = load i32, ptr %86, align 8, !tbaa !216
  %92 = icmp ugt i32 %91, %89
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = zext i32 %89 to i64
  %95 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %86, i64 0, i32 2, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !187
  br label %97

97:                                               ; preds = %93, %90, %88
  %98 = phi ptr [ %96, %93 ], [ null, %90 ], [ null, %88 ]
  %99 = phi i1 [ false, %93 ], [ true, %90 ], [ true, %88 ]
  br i1 %99, label %116, label %100, !prof !942

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.constraint, ptr %98, i64 0, i32 1
  %102 = load i32, ptr %101, align 8, !tbaa !213
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.constraint, ptr %98, i64 0, i32 1, i32 1
  br label %113

106:                                              ; preds = %100
  %107 = load i32, ptr %98, align 8, !tbaa !206
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = getelementptr inbounds %struct.constraint_expr, ptr %98, i64 0, i32 1
  br label %113

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.constraint, ptr %98, i64 0, i32 1, i32 1
  br label %113

113:                                              ; preds = %111, %109, %104
  %114 = phi ptr [ %112, %111 ], [ %110, %109 ], [ %105, %104 ]
  store i32 %1, ptr %114, align 4, !tbaa !202
  %115 = add i32 %89, 1
  br label %88, !llvm.loop !945

116:                                              ; preds = %97
  %117 = getelementptr inbounds ptr, ptr %84, i64 %38
  %118 = zext i32 %1 to i64
  br label %119

119:                                              ; preds = %226, %116
  %120 = phi i64 [ %227, %226 ], [ 0, %116 ]
  %121 = load ptr, ptr %117, align 8, !tbaa !187
  %122 = icmp eq ptr %121, null
  br i1 %122, label %130, label %123, !prof !942

123:                                              ; preds = %119
  %124 = load i32, ptr %121, align 8, !tbaa !216
  %125 = zext i32 %124 to i64
  %126 = icmp ult i64 %120, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %121, i64 0, i32 2, i64 %120
  %129 = load ptr, ptr %128, align 8, !tbaa !187
  br label %130

130:                                              ; preds = %127, %123, %119
  %131 = phi ptr [ %129, %127 ], [ null, %123 ], [ null, %119 ]
  %132 = phi i1 [ false, %127 ], [ true, %123 ], [ true, %119 ]
  br i1 %132, label %228, label %133, !prof !942

133:                                              ; preds = %130
  %134 = getelementptr inbounds ptr, ptr %84, i64 %118
  %135 = load ptr, ptr %134, align 8, !tbaa !187
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 1 dereferenceable(32) %131, i64 32, i1 false)
  %136 = icmp eq ptr %135, null
  br i1 %136, label %184, label %137

137:                                              ; preds = %133
  %138 = load i32, ptr %135, align 8, !tbaa !216
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %156, label %140

140:                                              ; preds = %137, %140
  %141 = phi i32 [ %154, %140 ], [ %138, %137 ]
  %142 = phi i32 [ %153, %140 ], [ 0, %137 ]
  %143 = lshr i32 %141, 1
  %144 = add i32 %143, %142
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %135, i64 0, i32 2, i64 %145
  %147 = load ptr, ptr %146, align 8, !tbaa !187
  %148 = call fastcc zeroext i8 @constraint_less(ptr noundef %147, ptr noundef nonnull %5), !range !251
  %149 = icmp eq i8 %148, 0
  %150 = add i32 %144, 1
  %151 = xor i32 %143, -1
  %152 = add i32 %141, %151
  %153 = select i1 %149, i32 %142, i32 %150
  %154 = select i1 %149, i32 %143, i32 %152
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %140, !llvm.loop !946

156:                                              ; preds = %140, %137
  %157 = phi i32 [ 0, %137 ], [ %153, %140 ]
  %158 = icmp ult i32 %157, %138
  br i1 %158, label %159, label %184

159:                                              ; preds = %156
  %160 = getelementptr inbounds i8, ptr %5, i64 8
  %161 = getelementptr inbounds i8, ptr %5, i64 16
  %162 = getelementptr inbounds i8, ptr %5, i64 24
  %163 = zext i32 %157 to i64
  %164 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %135, i64 0, i32 2, i64 %163
  %165 = load ptr, ptr %164, align 8, !tbaa !187
  %166 = load i64, ptr %5, align 8
  %167 = load i64, ptr %160, align 8
  %168 = load i64, ptr %161, align 8
  %169 = load i64, ptr %162, align 8
  %170 = load i64, ptr %165, align 1
  %171 = getelementptr inbounds i8, ptr %165, i64 8
  %172 = load i64, ptr %171, align 1
  %173 = getelementptr inbounds i8, ptr %165, i64 16
  %174 = load i64, ptr %173, align 1
  %175 = getelementptr inbounds i8, ptr %165, i64 24
  %176 = load i64, ptr %175, align 1
  %177 = icmp ne i64 %170, %166
  %178 = icmp ne i64 %172, %167
  %179 = select i1 %177, i1 true, i1 %178
  %180 = icmp ne i64 %174, %168
  %181 = icmp ne i64 %176, %169
  %182 = select i1 %179, i1 true, i1 %180
  %183 = select i1 %182, i1 true, i1 %181
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  br i1 %183, label %185, label %226

184:                                              ; preds = %156, %133
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5)
  br label %185

185:                                              ; preds = %184, %159
  br i1 %136, label %188, label %186

186:                                              ; preds = %185
  %187 = load i32, ptr %135, align 8, !tbaa !216
  br label %188

188:                                              ; preds = %186, %185
  %189 = phi i32 [ %187, %186 ], [ 0, %185 ]
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %207, label %191

191:                                              ; preds = %188, %191
  %192 = phi i32 [ %205, %191 ], [ %189, %188 ]
  %193 = phi i32 [ %204, %191 ], [ 0, %188 ]
  %194 = lshr i32 %192, 1
  %195 = add i32 %194, %193
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %135, i64 0, i32 2, i64 %196
  %198 = load ptr, ptr %197, align 8, !tbaa !187
  %199 = tail call fastcc zeroext i8 @constraint_less(ptr noundef %198, ptr noundef %131), !range !251
  %200 = icmp eq i8 %199, 0
  %201 = add i32 %195, 1
  %202 = xor i32 %194, -1
  %203 = add i32 %192, %202
  %204 = select i1 %200, i32 %193, i32 %201
  %205 = select i1 %200, i32 %194, i32 %203
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %191, !llvm.loop !946

207:                                              ; preds = %191, %188
  %208 = phi i32 [ 0, %188 ], [ %204, %191 ]
  br i1 %136, label %214, label %209

209:                                              ; preds = %207
  %210 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %135, i64 0, i32 1
  %211 = load i32, ptr %210, align 4, !tbaa !375
  %212 = load i32, ptr %135, align 8, !tbaa !216
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %209, %207
  %215 = tail call ptr @vec_heap_p_reserve(ptr noundef %135, i32 noundef 1) #28
  store ptr %215, ptr %134, align 8, !tbaa !187
  br label %216

216:                                              ; preds = %214, %209
  %217 = load ptr, ptr %134, align 8, !tbaa !187
  %218 = load i32, ptr %217, align 8, !tbaa !216
  %219 = zext i32 %208 to i64
  %220 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %217, i64 0, i32 2, i64 %219
  %221 = getelementptr inbounds ptr, ptr %220, i64 1
  %222 = add i32 %218, 1
  store i32 %222, ptr %217, align 8, !tbaa !216
  %223 = sub i32 %218, %208
  %224 = zext i32 %223 to i64
  %225 = shl nuw nsw i64 %224, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %221, ptr nonnull align 8 %220, i64 %225, i1 false)
  store ptr %131, ptr %220, align 8, !tbaa !187
  br label %226

226:                                              ; preds = %216, %159
  %227 = add nuw i64 %120, 1
  br label %119, !llvm.loop !947

228:                                              ; preds = %130
  %229 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %230 = load ptr, ptr %229, align 8, !tbaa !326
  %231 = getelementptr inbounds ptr, ptr %230, i64 %38
  %232 = load ptr, ptr %231, align 8, !tbaa !187
  %233 = icmp eq ptr %232, null
  br i1 %233, label %235, label %234, !prof !942

234:                                              ; preds = %228
  tail call void @free(ptr noundef %232)
  br label %235

235:                                              ; preds = %228, %234
  store ptr null, ptr %231, align 8, !tbaa !187
  %236 = load ptr, ptr %229, align 8, !tbaa !326
  %237 = getelementptr inbounds ptr, ptr %236, i64 %38
  store ptr null, ptr %237, align 8, !tbaa !187
  %238 = icmp ne i8 %3, 0
  br i1 %238, label %239, label %287, !prof !539

239:                                              ; preds = %235
  %240 = load ptr, ptr @changed, align 8, !tbaa !187
  %241 = lshr i32 %2, 6
  %242 = zext nneg i32 %241 to i64
  %243 = getelementptr inbounds %struct.simple_bitmap_def, ptr %240, i64 0, i32 3, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !231
  %245 = and i32 %2, 63
  %246 = zext nneg i32 %245 to i64
  %247 = shl nuw i64 1, %246
  %248 = and i64 %244, %247
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %287, label %250

250:                                              ; preds = %239
  %251 = load ptr, ptr %240, align 8, !tbaa !469
  %252 = icmp eq ptr %251, null
  br i1 %252, label %257, label %253

253:                                              ; preds = %250
  %254 = getelementptr inbounds i8, ptr %251, i64 %242
  %255 = load i8, ptr %254, align 1, !tbaa !198
  %256 = add i8 %255, -1
  store i8 %256, ptr %254, align 1, !tbaa !198
  br label %257

257:                                              ; preds = %250, %253
  %258 = xor i64 %247, -1
  %259 = load i64, ptr %243, align 8, !tbaa !231
  %260 = and i64 %259, %258
  store i64 %260, ptr %243, align 8, !tbaa !231
  %261 = lshr i32 %1, 6
  %262 = zext nneg i32 %261 to i64
  %263 = getelementptr inbounds %struct.simple_bitmap_def, ptr %240, i64 0, i32 3, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !231
  %265 = and i32 %1, 63
  %266 = zext nneg i32 %265 to i64
  %267 = shl nuw i64 1, %266
  %268 = and i64 %264, %267
  %269 = icmp eq i64 %268, 0
  br i1 %269, label %270, label %280

270:                                              ; preds = %257
  %271 = load ptr, ptr %240, align 8, !tbaa !469
  %272 = icmp eq ptr %271, null
  br i1 %272, label %277, label %273

273:                                              ; preds = %270
  %274 = getelementptr inbounds i8, ptr %271, i64 %262
  %275 = load i8, ptr %274, align 1, !tbaa !198
  %276 = add i8 %275, 1
  store i8 %276, ptr %274, align 1, !tbaa !198
  br label %277

277:                                              ; preds = %270, %273
  %278 = load i64, ptr %263, align 8, !tbaa !231
  %279 = or i64 %278, %267
  store i64 %279, ptr %263, align 8, !tbaa !231
  br label %287

280:                                              ; preds = %257
  %281 = load i32, ptr @changed_count, align 4, !tbaa !202
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1428, ptr noundef nonnull @.str.4) #28
  br label %284

284:                                              ; preds = %280, %283
  %285 = load i32, ptr @changed_count, align 4, !tbaa !202
  %286 = add i32 %285, -1
  store i32 %286, ptr @changed_count, align 4, !tbaa !202
  br label %287

287:                                              ; preds = %277, %284, %239, %235
  %288 = load ptr, ptr @varmap, align 8
  %289 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %288, i64 0, i32 2, i64 %38
  %290 = load ptr, ptr %289, align 8, !tbaa !187
  %291 = getelementptr inbounds %struct.variable_info, ptr %290, i64 0, i32 8
  %292 = load ptr, ptr %291, align 8, !tbaa !226
  %293 = icmp eq ptr %292, null
  br i1 %293, label %358, label %294, !prof !539

294:                                              ; preds = %287
  %295 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %288, i64 0, i32 2, i64 %118
  %296 = load ptr, ptr %295, align 8, !tbaa !187
  %297 = getelementptr inbounds %struct.variable_info, ptr %296, i64 0, i32 8
  %298 = load ptr, ptr %297, align 8, !tbaa !226
  %299 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %298, ptr noundef nonnull %292) #28
  %300 = icmp ne i8 %299, 0
  %301 = and i1 %238, %300
  br i1 %301, label %302, label %325, !prof !539

302:                                              ; preds = %294
  %303 = load ptr, ptr @changed, align 8, !tbaa !187
  %304 = lshr i32 %1, 6
  %305 = zext nneg i32 %304 to i64
  %306 = getelementptr inbounds %struct.simple_bitmap_def, ptr %303, i64 0, i32 3, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !231
  %308 = and i32 %1, 63
  %309 = zext nneg i32 %308 to i64
  %310 = shl nuw i64 1, %309
  %311 = and i64 %307, %310
  %312 = icmp eq i64 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %302
  %314 = load ptr, ptr %303, align 8, !tbaa !469
  %315 = icmp eq ptr %314, null
  br i1 %315, label %320, label %316

316:                                              ; preds = %313
  %317 = getelementptr inbounds i8, ptr %314, i64 %305
  %318 = load i8, ptr %317, align 1, !tbaa !198
  %319 = add i8 %318, 1
  store i8 %319, ptr %317, align 1, !tbaa !198
  br label %320

320:                                              ; preds = %313, %316
  %321 = load i64, ptr %306, align 8, !tbaa !231
  %322 = or i64 %321, %310
  store i64 %322, ptr %306, align 8, !tbaa !231
  %323 = load i32, ptr @changed_count, align 4, !tbaa !202
  %324 = add i32 %323, 1
  store i32 %324, ptr @changed_count, align 4, !tbaa !202
  br label %325

325:                                              ; preds = %302, %320, %294
  %326 = load ptr, ptr @varmap, align 8
  %327 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %326, i64 0, i32 2, i64 %38
  %328 = load ptr, ptr %327, align 8, !tbaa !187
  %329 = getelementptr inbounds %struct.variable_info, ptr %328, i64 0, i32 8
  %330 = load ptr, ptr %329, align 8, !tbaa !226
  tail call void @bitmap_obstack_free(ptr noundef %330) #28
  %331 = load ptr, ptr @varmap, align 8
  %332 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %331, i64 0, i32 2, i64 %38
  %333 = load ptr, ptr %332, align 8, !tbaa !187
  %334 = getelementptr inbounds %struct.variable_info, ptr %333, i64 0, i32 8
  store ptr null, ptr %334, align 8, !tbaa !226
  %335 = load ptr, ptr %332, align 8, !tbaa !187
  %336 = getelementptr inbounds %struct.variable_info, ptr %335, i64 0, i32 9
  %337 = load ptr, ptr %336, align 8, !tbaa !602
  tail call void @bitmap_obstack_free(ptr noundef %337) #28
  %338 = load ptr, ptr @varmap, align 8
  %339 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %338, i64 0, i32 2, i64 %38
  %340 = load ptr, ptr %339, align 8, !tbaa !187
  %341 = getelementptr inbounds %struct.variable_info, ptr %340, i64 0, i32 9
  store ptr null, ptr %341, align 8, !tbaa !602
  %342 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !265
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %358, label %344, !prof !942

344:                                              ; preds = %325
  %345 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %338, i64 0, i32 2, i64 %118
  %346 = load ptr, ptr %345, align 8, !tbaa !187
  %347 = getelementptr inbounds %struct.variable_info, ptr %346, i64 0, i32 9
  %348 = load ptr, ptr %347, align 8, !tbaa !602
  tail call void @bitmap_obstack_free(ptr noundef %348) #28
  %349 = load ptr, ptr @varmap, align 8
  %350 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %349, i64 0, i32 2, i64 %118
  %351 = load ptr, ptr %350, align 8, !tbaa !187
  %352 = getelementptr inbounds %struct.variable_info, ptr %351, i64 0, i32 9
  store ptr null, ptr %352, align 8, !tbaa !602
  %353 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #28
  %354 = load ptr, ptr @varmap, align 8
  %355 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %354, i64 0, i32 2, i64 %118
  %356 = load ptr, ptr %355, align 8, !tbaa !187
  %357 = getelementptr inbounds %struct.variable_info, ptr %356, i64 0, i32 9
  store ptr %353, ptr %357, align 8, !tbaa !602
  br label %358

358:                                              ; preds = %325, %344, %287
  %359 = load ptr, ptr %49, align 8, !tbaa !330
  %360 = getelementptr inbounds ptr, ptr %359, i64 %118
  %361 = load ptr, ptr %360, align 8, !tbaa !187
  %362 = icmp eq ptr %361, null
  br i1 %362, label %373, label %363, !prof !943

363:                                              ; preds = %358
  %364 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %361, i32 noundef %1) #28
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %373, label %366, !prof !943

366:                                              ; preds = %363
  %367 = load ptr, ptr %49, align 8, !tbaa !330
  %368 = getelementptr inbounds ptr, ptr %367, i64 %118
  %369 = load ptr, ptr %368, align 8, !tbaa !187
  %370 = icmp eq ptr %369, null
  br i1 %370, label %373, label %371, !prof !944

371:                                              ; preds = %366
  %372 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %369, i32 noundef %1) #28
  br label %373

373:                                              ; preds = %358, %366, %371, %363
  ret void
}

declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #23 !prof !186 !PGOFuncName !948 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = trunc i64 %3 to i32
  %10 = lshr i64 %3, 32
  %11 = trunc i64 %6 to i32
  %12 = lshr i64 %6, 32
  %13 = icmp eq i32 %9, %11
  br i1 %13, label %14, label %20, !prof !949

14:                                               ; preds = %2
  %15 = icmp eq i64 %10, %12
  br i1 %15, label %16, label %18, !prof !950

16:                                               ; preds = %14
  %17 = icmp slt i64 %5, %8
  br label %22

18:                                               ; preds = %14
  %19 = icmp ult i64 %10, %12
  br label %22

20:                                               ; preds = %2
  %21 = icmp ult i32 %9, %11
  br label %22

22:                                               ; preds = %16, %18, %20
  %23 = phi i1 [ %17, %16 ], [ %19, %18 ], [ %21, %20 ]
  br i1 %23, label %60, label %24, !prof !951

24:                                               ; preds = %22
  br i1 %13, label %25, label %31, !prof !482

25:                                               ; preds = %24
  %26 = icmp eq i64 %12, %10
  br i1 %26, label %27, label %29, !prof !482

27:                                               ; preds = %25
  %28 = icmp slt i64 %8, %5
  br label %33

29:                                               ; preds = %25
  %30 = icmp ult i64 %12, %10
  br label %33

31:                                               ; preds = %24
  %32 = icmp ult i32 %11, %9
  br label %33

33:                                               ; preds = %27, %29, %31
  %34 = phi i1 [ %28, %27 ], [ %30, %29 ], [ %32, %31 ]
  br i1 %34, label %60, label %35, !prof !481

35:                                               ; preds = %33
  %36 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %37 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %38 = load i64, ptr %36, align 8
  %39 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = load i64, ptr %37, align 8
  %42 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = trunc i64 %38 to i32
  %45 = lshr i64 %38, 32
  %46 = trunc i64 %41 to i32
  %47 = lshr i64 %41, 32
  %48 = icmp eq i32 %44, %46
  br i1 %48, label %49, label %55, !prof !481

49:                                               ; preds = %35
  %50 = icmp eq i64 %45, %47
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = icmp slt i64 %40, %43
  br label %57

53:                                               ; preds = %49
  %54 = icmp ult i64 %45, %47
  br label %57

55:                                               ; preds = %35
  %56 = icmp ult i32 %44, %46
  br label %57

57:                                               ; preds = %51, %53, %55
  %58 = phi i1 [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = zext i1 %58 to i8
  br label %60

60:                                               ; preds = %33, %22, %57
  %61 = phi i8 [ %59, %57 ], [ 1, %22 ], [ 0, %33 ]
  ret i8 %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #19

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc noundef zeroext i8 @add_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 !prof !186 !PGOFuncName !952 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %39, label %5, !prof !543

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !330
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !187
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %16, !prof !544

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #28
  %14 = load ptr, ptr %6, align 8, !tbaa !330
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !187
  br label %16

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !330
  %18 = getelementptr inbounds ptr, ptr %17, i64 %8
  %19 = load ptr, ptr %18, align 8, !tbaa !187
  %20 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %19, i32 noundef %1) #28
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %39, label %22, !prof !545

22:                                               ; preds = %16
  %23 = load ptr, ptr @varmap, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !546

25:                                               ; preds = %22
  %26 = load i32, ptr %23, align 8, !tbaa !219
  br label %27

27:                                               ; preds = %22, %25
  %28 = phi i32 [ %26, %25 ], [ 0, %22 ]
  %29 = icmp ugt i32 %28, %1
  br i1 %29, label %30, label %39, !prof !547

30:                                               ; preds = %27
  br i1 %24, label %33, label %31, !prof !548

31:                                               ; preds = %30
  %32 = load i32, ptr %23, align 8, !tbaa !219
  br label %33

33:                                               ; preds = %30, %31
  %34 = phi i32 [ %32, %31 ], [ 0, %30 ]
  %35 = icmp ugt i32 %34, %2
  br i1 %35, label %36, label %39, !prof !549

36:                                               ; preds = %33
  %37 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  %38 = add i32 %37, 1
  store i32 %38, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !266
  br label %39

39:                                               ; preds = %16, %36, %33, %27, %3
  %40 = phi i8 [ 0, %3 ], [ 1, %36 ], [ 1, %33 ], [ 1, %27 ], [ 0, %16 ]
  ret i8 %40
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define internal fastcc void @free_scc_info(ptr nocapture noundef %0) unnamed_addr #24 !prof !864 !PGOFuncName !953 {
  %2 = load ptr, ptr %0, align 8, !tbaa !500
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  tail call void @free(ptr noundef %3)
  %4 = load ptr, ptr %0, align 8, !tbaa !500
  tail call void @free(ptr noundef %4)
  %5 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !867
  %7 = load ptr, ptr %6, align 8, !tbaa !469
  tail call void @free(ptr noundef %7)
  %8 = load ptr, ptr %5, align 8, !tbaa !867
  tail call void @free(ptr noundef %8)
  %9 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !502
  tail call void @free(ptr noundef %10)
  %11 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !868
  tail call void @free(ptr noundef %12)
  %13 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !187
  %15 = icmp eq ptr %14, null
  br i1 %15, label %17, label %16, !prof !481

16:                                               ; preds = %1
  tail call void @free(ptr noundef %14)
  br label %17

17:                                               ; preds = %1, %16
  store ptr null, ptr %13, align 8, !tbaa !187
  tail call void @free(ptr noundef %0)
  ret void
}

declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @insert_into_complex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #14 !prof !954 !PGOFuncName !955 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !326
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !187
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !956

10:                                               ; preds = %3
  %11 = load i32, ptr %8, align 8, !tbaa !216
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ 0, %3 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %92, label %15, !prof !957

15:                                               ; preds = %12
  %16 = load i64, ptr %2, align 8
  %17 = trunc i64 %16 to i32
  %18 = lshr i64 %16, 32
  br label %19

19:                                               ; preds = %15, %83
  %20 = phi i32 [ %13, %15 ], [ %90, %83 ]
  %21 = phi i32 [ 0, %15 ], [ %89, %83 ]
  %22 = lshr i32 %20, 1
  %23 = add i32 %22, %21
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %8, i64 0, i32 2, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !187
  %27 = load i64, ptr %26, align 8
  %28 = getelementptr inbounds { i64, i64 }, ptr %26, i64 0, i32 1
  %29 = load i64, ptr %28, align 8
  %30 = trunc i64 %27 to i32
  %31 = lshr i64 %27, 32
  %32 = icmp eq i32 %30, %17
  br i1 %32, label %33, label %41, !prof !949

33:                                               ; preds = %19
  %34 = icmp eq i64 %31, %18
  br i1 %34, label %35, label %39, !prof !950

35:                                               ; preds = %33
  %36 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = icmp slt i64 %29, %37
  br label %43

39:                                               ; preds = %33
  %40 = icmp ult i64 %31, %18
  br label %43

41:                                               ; preds = %19
  %42 = icmp ult i32 %30, %17
  br label %43

43:                                               ; preds = %41, %39, %35
  %44 = phi i1 [ %38, %35 ], [ %40, %39 ], [ %42, %41 ]
  br i1 %44, label %83, label %45, !prof !951

45:                                               ; preds = %43
  br i1 %32, label %46, label %54, !prof !482

46:                                               ; preds = %45
  %47 = icmp eq i64 %18, %31
  br i1 %47, label %48, label %52, !prof !482

48:                                               ; preds = %46
  %49 = getelementptr inbounds { i64, i64 }, ptr %2, i64 0, i32 1
  %50 = load i64, ptr %49, align 8
  %51 = icmp slt i64 %50, %29
  br label %56

52:                                               ; preds = %46
  %53 = icmp ult i64 %18, %31
  br label %56

54:                                               ; preds = %45
  %55 = icmp ult i32 %17, %30
  br label %56

56:                                               ; preds = %54, %52, %48
  %57 = phi i1 [ %51, %48 ], [ %53, %52 ], [ %55, %54 ]
  br i1 %57, label %83, label %58, !prof !481

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.constraint, ptr %2, i64 0, i32 1
  %60 = getelementptr inbounds %struct.constraint, ptr %2, i64 0, i32 1, i32 2
  %61 = getelementptr inbounds %struct.constraint, ptr %26, i64 0, i32 1
  %62 = load i64, ptr %61, align 8
  %63 = getelementptr inbounds %struct.constraint, ptr %26, i64 0, i32 1, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = load i64, ptr %59, align 8
  %66 = load i64, ptr %60, align 8
  %67 = trunc i64 %62 to i32
  %68 = lshr i64 %62, 32
  %69 = trunc i64 %65 to i32
  %70 = lshr i64 %65, 32
  %71 = icmp eq i32 %67, %69
  br i1 %71, label %72, label %78, !prof !481

72:                                               ; preds = %58
  %73 = icmp eq i64 %68, %70
  br i1 %73, label %74, label %76

74:                                               ; preds = %72
  %75 = icmp slt i64 %64, %66
  br label %80

76:                                               ; preds = %72
  %77 = icmp ult i64 %68, %70
  br label %80

78:                                               ; preds = %58
  %79 = icmp ult i32 %67, %69
  br label %80

80:                                               ; preds = %78, %76, %74
  %81 = phi i1 [ %75, %74 ], [ %77, %76 ], [ %79, %78 ]
  %82 = zext i1 %81 to i8
  br label %83

83:                                               ; preds = %43, %56, %80
  %84 = phi i8 [ %82, %80 ], [ 1, %43 ], [ 0, %56 ]
  %85 = icmp eq i8 %84, 0
  %86 = add i32 %23, 1
  %87 = xor i32 %22, -1
  %88 = add i32 %20, %87
  %89 = select i1 %85, i32 %21, i32 %86, !prof !958
  %90 = select i1 %85, i32 %22, i32 %88, !prof !958
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %19, !prof !959, !llvm.loop !946

92:                                               ; preds = %83, %12
  %93 = phi i32 [ 0, %12 ], [ %89, %83 ]
  br i1 %9, label %96, label %94, !prof !956

94:                                               ; preds = %92
  %95 = load i32, ptr %8, align 8, !tbaa !216
  br label %96

96:                                               ; preds = %92, %94
  %97 = phi i32 [ %95, %94 ], [ 0, %92 ]
  %98 = icmp ult i32 %93, %97
  br i1 %98, label %99, label %124, !prof !960

99:                                               ; preds = %96
  %100 = zext i32 %93 to i64
  %101 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %8, i64 0, i32 2, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !187
  %103 = load i64, ptr %102, align 1
  %104 = getelementptr inbounds i8, ptr %102, i64 8
  %105 = load i64, ptr %104, align 1
  %106 = getelementptr inbounds i8, ptr %102, i64 16
  %107 = load i64, ptr %106, align 1
  %108 = getelementptr inbounds i8, ptr %102, i64 24
  %109 = load i64, ptr %108, align 1
  %110 = load i64, ptr %2, align 1
  %111 = getelementptr inbounds i8, ptr %2, i64 8
  %112 = load i64, ptr %111, align 1
  %113 = getelementptr inbounds i8, ptr %2, i64 16
  %114 = load i64, ptr %113, align 1
  %115 = getelementptr inbounds i8, ptr %2, i64 24
  %116 = load i64, ptr %115, align 1
  %117 = icmp ne i64 %110, %103
  %118 = icmp ne i64 %112, %105
  %119 = select i1 %117, i1 true, i1 %118, !prof !481
  %120 = icmp ne i64 %114, %107
  %121 = icmp ne i64 %116, %109
  %122 = select i1 %119, i1 true, i1 %120, !prof !481
  %123 = select i1 %122, i1 true, i1 %121, !prof !482
  br i1 %123, label %124, label %142, !prof !482

124:                                              ; preds = %99, %96
  br i1 %9, label %130, label %125, !prof !956

125:                                              ; preds = %124
  %126 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %8, i64 0, i32 1
  %127 = load i32, ptr %126, align 4, !tbaa !375
  %128 = load i32, ptr %8, align 8, !tbaa !216
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132, !prof !961

130:                                              ; preds = %124, %125
  %131 = tail call ptr @vec_heap_p_reserve(ptr noundef %8, i32 noundef 1) #28
  store ptr %131, ptr %7, align 8, !tbaa !187
  br label %132

132:                                              ; preds = %125, %130
  %133 = load ptr, ptr %7, align 8, !tbaa !187
  %134 = load i32, ptr %133, align 8, !tbaa !216
  %135 = zext i32 %93 to i64
  %136 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %133, i64 0, i32 2, i64 %135
  %137 = getelementptr inbounds ptr, ptr %136, i64 1
  %138 = add i32 %134, 1
  store i32 %138, ptr %133, align 8, !tbaa !216
  %139 = sub i32 %134, %93
  %140 = zext i32 %139 to i64
  %141 = shl nuw nsw i64 %140, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %137, ptr nonnull align 8 %136, i64 %141, i1 false), !prof !962
  store ptr %2, ptr %136, align 8, !tbaa !187
  br label %142

142:                                              ; preds = %132, %99
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @scc_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #14 !prof !963 !PGOFuncName !964 {
  %4 = load ptr, ptr %1, align 8, !tbaa !500
  %5 = load ptr, ptr %4, align 8, !tbaa !469
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !965

7:                                                ; preds = %3
  %8 = lshr i32 %2, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !231
  %12 = and i32 %2, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %5, i64 %9
  %19 = load i8, ptr %18, align 1, !tbaa !198
  %20 = add i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !198
  br label %21

21:                                               ; preds = %3, %7, %17
  %22 = and i32 %2, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = lshr i32 %2, 6
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !231
  %29 = or i64 %28, %24
  store i64 %29, ptr %27, align 8, !tbaa !231
  %30 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %31 = load i32, ptr %30, align 8, !tbaa !866
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %30, align 8, !tbaa !866
  %33 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !868
  %35 = zext i32 %2 to i64
  %36 = getelementptr inbounds i32, ptr %34, i64 %35
  store i32 %31, ptr %36, align 4, !tbaa !202
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !330
  %39 = getelementptr inbounds ptr, ptr %38, i64 %35
  %40 = load ptr, ptr %39, align 8, !tbaa !187
  %41 = icmp eq ptr %40, null
  br i1 %41, label %169, label %42, !prof !966

42:                                               ; preds = %21
  %43 = load ptr, ptr %40, align 8, !tbaa !227
  %44 = icmp eq ptr %43, null
  %45 = select i1 %44, ptr @bitmap_zero_bits, ptr %43, !prof !967
  %46 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 2
  %47 = load i32, ptr %46, align 8, !tbaa !229
  %48 = shl i32 %47, 7
  %49 = getelementptr inbounds %struct.bitmap_element_def, ptr %45, i64 0, i32 3
  %50 = load i64, ptr %49, align 8, !tbaa !231
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = or disjoint i32 %48, %52
  %54 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %55

55:                                               ; preds = %166, %42
  %56 = phi i32 [ 0, %42 ], [ %111, %166 ]
  %57 = phi ptr [ %45, %42 ], [ %112, %166 ]
  %58 = phi i64 [ %50, %42 ], [ %167, %166 ]
  %59 = phi i32 [ %53, %42 ], [ %168, %166 ]
  %60 = icmp eq i64 %58, 0
  br i1 %60, label %75, label %61, !prof !968

61:                                               ; preds = %89, %55
  %62 = phi i32 [ %56, %55 ], [ %90, %89 ]
  %63 = phi ptr [ %57, %55 ], [ %80, %89 ]
  %64 = phi i64 [ %58, %55 ], [ %94, %89 ]
  %65 = phi i32 [ %59, %55 ], [ %91, %89 ]
  %66 = and i64 %64, 1
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %110, !prof !969

68:                                               ; preds = %61, %68
  %69 = phi i32 [ %72, %68 ], [ %65, %61 ]
  %70 = phi i64 [ %71, %68 ], [ %64, %61 ]
  %71 = lshr exact i64 %70, 1
  %72 = add i32 %69, 1
  %73 = and i64 %70, 2
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %68, label %110, !prof !970, !llvm.loop !232

75:                                               ; preds = %55
  %76 = add i32 %59, 63
  %77 = and i32 %76, -64
  %78 = add i32 %56, 1
  br label %79

79:                                               ; preds = %106, %75
  %80 = phi ptr [ %57, %75 ], [ %104, %106 ]
  %81 = phi i64 [ %58, %75 ], [ %101, %106 ]
  %82 = phi i32 [ %77, %75 ], [ %109, %106 ]
  %83 = phi i32 [ %78, %75 ], [ 0, %106 ]
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %100, label %85, !prof !971

85:                                               ; preds = %79
  %86 = add i32 %82, 128
  %87 = shl i32 %83, 6
  %88 = sub i32 %86, %87
  br label %89

89:                                               ; preds = %85, %96
  %90 = phi i32 [ %98, %96 ], [ %83, %85 ]
  %91 = phi i32 [ %97, %96 ], [ %82, %85 ]
  %92 = zext i32 %90 to i64
  %93 = getelementptr inbounds %struct.bitmap_element_def, ptr %80, i64 0, i32 3, i64 %92
  %94 = load i64, ptr %93, align 8, !tbaa !231
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %61, !prof !972

96:                                               ; preds = %89
  %97 = add i32 %91, 64
  %98 = add i32 %90, 1
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %89, !prof !973, !llvm.loop !233

100:                                              ; preds = %96, %79
  %101 = phi i64 [ %81, %79 ], [ %94, %96 ]
  %102 = phi i32 [ %82, %79 ], [ %88, %96 ]
  %103 = phi i32 [ %83, %79 ], [ 2, %96 ]
  %104 = load ptr, ptr %80, align 8, !tbaa !234
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106, !prof !974

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct.bitmap_element_def, ptr %104, i64 0, i32 2
  %108 = load i32, ptr %107, align 8, !tbaa !229
  %109 = shl i32 %108, 7
  br label %79, !llvm.loop !235

110:                                              ; preds = %100, %68, %61
  %111 = phi i32 [ %62, %61 ], [ %62, %68 ], [ %103, %100 ]
  %112 = phi ptr [ %63, %61 ], [ %63, %68 ], [ %104, %100 ]
  %113 = phi i64 [ %64, %61 ], [ %71, %68 ], [ %101, %100 ]
  %114 = phi i32 [ %65, %61 ], [ %72, %68 ], [ %102, %100 ]
  %115 = phi i1 [ false, %61 ], [ false, %68 ], [ true, %100 ]
  br i1 %115, label %169, label %116, !prof !975

116:                                              ; preds = %110
  %117 = load ptr, ptr @varmap, align 8
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119, !prof !976

119:                                              ; preds = %116
  %120 = load i32, ptr %117, align 8, !tbaa !219
  br label %121

121:                                              ; preds = %116, %119
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  br i1 %118, label %125, label %123, !prof !976

123:                                              ; preds = %121
  %124 = load i32, ptr %117, align 8, !tbaa !219
  br label %125

125:                                              ; preds = %121, %123
  %126 = phi i32 [ %124, %123 ], [ 0, %121 ]
  %127 = add i32 %122, -1
  %128 = add i32 %127, %126
  %129 = icmp ugt i32 %114, %128
  br i1 %129, label %169, label %130, !prof !976

130:                                              ; preds = %125
  %131 = tail call fastcc i32 @find(i32 noundef %114)
  %132 = load ptr, ptr %54, align 8, !tbaa !867
  %133 = lshr i32 %131, 6
  %134 = zext nneg i32 %133 to i64
  %135 = getelementptr inbounds %struct.simple_bitmap_def, ptr %132, i64 0, i32 3, i64 %134
  %136 = load i64, ptr %135, align 8, !tbaa !231
  %137 = and i32 %131, 63
  %138 = zext nneg i32 %137 to i64
  %139 = shl nuw i64 1, %138
  %140 = and i64 %139, %136
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %165, !prof !977

142:                                              ; preds = %130
  %143 = load ptr, ptr %1, align 8, !tbaa !500
  %144 = getelementptr inbounds %struct.simple_bitmap_def, ptr %143, i64 0, i32 3, i64 %134
  %145 = load i64, ptr %144, align 8, !tbaa !231
  %146 = and i64 %145, %139
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %149, !prof !978

148:                                              ; preds = %142
  tail call fastcc void @scc_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %131)
  br label %149

149:                                              ; preds = %148, %142
  %150 = tail call fastcc i32 @find(i32 noundef %131)
  %151 = tail call fastcc i32 @find(i32 noundef %2)
  %152 = icmp eq i32 %151, %2
  br i1 %152, label %154, label %153, !prof !978

153:                                              ; preds = %149
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1344, ptr noundef nonnull @.str.4) #28
  br label %154

154:                                              ; preds = %149, %153
  %155 = load ptr, ptr %33, align 8, !tbaa !868
  %156 = zext i32 %150 to i64
  %157 = getelementptr inbounds i32, ptr %155, i64 %156
  %158 = load i32, ptr %157, align 4, !tbaa !202
  %159 = zext i32 %151 to i64
  %160 = getelementptr inbounds i32, ptr %155, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !202
  %162 = icmp ult i32 %158, %161
  br i1 %162, label %163, label %165, !prof !979

163:                                              ; preds = %154
  %164 = getelementptr inbounds i32, ptr %155, i64 %35
  store i32 %158, ptr %164, align 4, !tbaa !202
  br label %165

165:                                              ; preds = %154, %163, %130
  br i1 %129, label %169, label %166, !prof !976

166:                                              ; preds = %165
  %167 = lshr i64 %113, 1
  %168 = add i32 %114, 1
  br label %55, !llvm.loop !980

169:                                              ; preds = %125, %165, %110, %21
  %170 = load ptr, ptr %33, align 8, !tbaa !868
  %171 = getelementptr inbounds i32, ptr %170, i64 %35
  %172 = load i32, ptr %171, align 4, !tbaa !202
  %173 = icmp eq i32 %172, %31
  %174 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  %175 = load ptr, ptr %174, align 8, !tbaa !187
  %176 = icmp eq ptr %175, null
  br i1 %173, label %177, label %343, !prof !965

177:                                              ; preds = %169
  br i1 %176, label %325, label %178, !prof !981

178:                                              ; preds = %177
  %179 = load i32, ptr %175, align 4, !tbaa !592
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %325, label %181, !prof !965

181:                                              ; preds = %178
  %182 = load i32, ptr %175, align 4, !tbaa !592
  %183 = add i32 %182, -1
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %175, i64 0, i32 2, i64 %184
  %186 = load i32, ptr %185, align 4, !tbaa !202
  %187 = zext i32 %186 to i64
  %188 = getelementptr inbounds i32, ptr %170, i64 %187
  %189 = load i32, ptr %188, align 4, !tbaa !202
  %190 = icmp ult i32 %189, %31
  br i1 %190, label %325, label %191

191:                                              ; preds = %181
  %192 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #28
  br label %193

193:                                              ; preds = %214, %191
  %194 = phi i32 [ %209, %214 ], [ %2, %191 ]
  %195 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %192, i32 noundef %194) #28
  %196 = load ptr, ptr %174, align 8, !tbaa !871
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198

198:                                              ; preds = %193
  %199 = load i32, ptr %196, align 4, !tbaa !592
  br label %200

200:                                              ; preds = %193, %198
  %201 = phi i32 [ %199, %198 ], [ 0, %193 ]
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %215, label %203

203:                                              ; preds = %200
  %204 = load ptr, ptr %33, align 8, !tbaa !868
  %205 = load i32, ptr %196, align 4, !tbaa !592
  %206 = add i32 %205, -1
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %196, i64 0, i32 2, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !202
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, ptr %204, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !202
  %213 = icmp ult i32 %212, %31
  br i1 %213, label %215, label %214

214:                                              ; preds = %203
  store i32 %206, ptr %196, align 4, !tbaa !592
  br label %193, !llvm.loop !982

215:                                              ; preds = %200, %203
  %216 = tail call i32 @bitmap_first_set_bit(ptr noundef %192) #28
  %217 = load ptr, ptr @varmap, align 8
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %215
  %220 = load i32, ptr %217, align 8, !tbaa !219
  br label %221

221:                                              ; preds = %215, %219
  %222 = phi i32 [ %220, %219 ], [ 0, %215 ]
  %223 = icmp ult i32 %216, %222
  br i1 %223, label %225, label %224

224:                                              ; preds = %221
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1372, ptr noundef nonnull @.str.4) #28
  br label %225

225:                                              ; preds = %221, %224
  %226 = load ptr, ptr %192, align 8, !tbaa !227
  %227 = icmp eq ptr %226, null
  %228 = select i1 %227, ptr @bitmap_zero_bits, ptr %226
  %229 = getelementptr inbounds %struct.bitmap_element_def, ptr %228, i64 0, i32 2
  %230 = load i32, ptr %229, align 8, !tbaa !229
  %231 = shl i32 %230, 7
  %232 = getelementptr inbounds %struct.bitmap_element_def, ptr %228, i64 0, i32 3
  %233 = load i64, ptr %232, align 8, !tbaa !231
  %234 = icmp eq i64 %233, 0
  %235 = zext i1 %234 to i32
  %236 = or disjoint i32 %231, %235
  %237 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  br label %238

238:                                              ; preds = %322, %225
  %239 = phi i64 [ %233, %225 ], [ %323, %322 ]
  %240 = phi i32 [ 0, %225 ], [ %295, %322 ]
  %241 = phi i32 [ %236, %225 ], [ %324, %322 ]
  %242 = phi ptr [ %228, %225 ], [ %297, %322 ]
  %243 = icmp eq i64 %239, 0
  br i1 %243, label %258, label %244

244:                                              ; preds = %272, %238
  %245 = phi i64 [ %239, %238 ], [ %277, %272 ]
  %246 = phi i32 [ %240, %238 ], [ %273, %272 ]
  %247 = phi i32 [ %241, %238 ], [ %274, %272 ]
  %248 = phi ptr [ %242, %238 ], [ %265, %272 ]
  %249 = and i64 %245, 1
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %293

251:                                              ; preds = %244, %251
  %252 = phi i32 [ %255, %251 ], [ %247, %244 ]
  %253 = phi i64 [ %254, %251 ], [ %245, %244 ]
  %254 = lshr exact i64 %253, 1
  %255 = add i32 %252, 1
  %256 = and i64 %253, 2
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %251, label %293, !llvm.loop !232

258:                                              ; preds = %238
  %259 = add i32 %241, 63
  %260 = and i32 %259, -64
  %261 = add i32 %240, 1
  br label %262

262:                                              ; preds = %289, %258
  %263 = phi i64 [ %239, %258 ], [ %284, %289 ]
  %264 = phi i32 [ %260, %258 ], [ %292, %289 ]
  %265 = phi ptr [ %242, %258 ], [ %287, %289 ]
  %266 = phi i32 [ %261, %258 ], [ 0, %289 ]
  %267 = icmp eq i32 %266, 2
  br i1 %267, label %283, label %268

268:                                              ; preds = %262
  %269 = add i32 %264, 128
  %270 = shl i32 %266, 6
  %271 = sub i32 %269, %270
  br label %272

272:                                              ; preds = %268, %279
  %273 = phi i32 [ %281, %279 ], [ %266, %268 ]
  %274 = phi i32 [ %280, %279 ], [ %264, %268 ]
  %275 = zext i32 %273 to i64
  %276 = getelementptr inbounds %struct.bitmap_element_def, ptr %265, i64 0, i32 3, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !231
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %244

279:                                              ; preds = %272
  %280 = add i32 %274, 64
  %281 = add i32 %273, 1
  %282 = icmp eq i32 %281, 2
  br i1 %282, label %283, label %272, !llvm.loop !233

283:                                              ; preds = %279, %262
  %284 = phi i64 [ %263, %262 ], [ %277, %279 ]
  %285 = phi i32 [ %264, %262 ], [ %271, %279 ]
  %286 = phi i32 [ %266, %262 ], [ 2, %279 ]
  %287 = load ptr, ptr %265, align 8, !tbaa !234
  %288 = icmp eq ptr %287, null
  br i1 %288, label %293, label %289

289:                                              ; preds = %283
  %290 = getelementptr inbounds %struct.bitmap_element_def, ptr %287, i64 0, i32 2
  %291 = load i32, ptr %290, align 8, !tbaa !229
  %292 = shl i32 %291, 7
  br label %262, !llvm.loop !235

293:                                              ; preds = %283, %251, %244
  %294 = phi i64 [ %245, %244 ], [ %254, %251 ], [ %284, %283 ]
  %295 = phi i32 [ %246, %244 ], [ %246, %251 ], [ %286, %283 ]
  %296 = phi i32 [ %247, %244 ], [ %255, %251 ], [ %285, %283 ]
  %297 = phi ptr [ %248, %244 ], [ %248, %251 ], [ %287, %283 ]
  %298 = phi i1 [ false, %244 ], [ false, %251 ], [ true, %283 ]
  br i1 %298, label %325, label %299

299:                                              ; preds = %293
  %300 = load ptr, ptr @varmap, align 8
  %301 = icmp eq ptr %300, null
  br i1 %301, label %304, label %302

302:                                              ; preds = %299
  %303 = load i32, ptr %300, align 8, !tbaa !219
  br label %304

304:                                              ; preds = %299, %302
  %305 = phi i32 [ %303, %302 ], [ 0, %299 ]
  %306 = icmp ult i32 %296, %305
  %307 = tail call fastcc zeroext i8 @unite(i32 noundef %216, i32 noundef %296), !range !251
  br i1 %306, label %308, label %311

308:                                              ; preds = %304
  %309 = icmp eq i8 %307, 0
  br i1 %309, label %322, label %310

310:                                              ; preds = %308
  tail call fastcc void @unify_nodes(ptr noundef %0, i32 noundef %216, i32 noundef %296, i8 noundef zeroext 0)
  br label %322

311:                                              ; preds = %304
  %312 = load ptr, ptr %237, align 8, !tbaa !333
  %313 = load ptr, ptr @varmap, align 8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315

315:                                              ; preds = %311
  %316 = load i32, ptr %313, align 8, !tbaa !219
  br label %317

317:                                              ; preds = %311, %315
  %318 = phi i32 [ %316, %315 ], [ 0, %311 ]
  %319 = sub i32 %296, %318
  %320 = zext i32 %319 to i64
  %321 = getelementptr inbounds i32, ptr %312, i64 %320
  store i32 %216, ptr %321, align 4, !tbaa !202
  br label %322

322:                                              ; preds = %317, %310, %308
  %323 = lshr i64 %294, 1
  %324 = add i32 %296, 1
  br label %238, !llvm.loop !983

325:                                              ; preds = %293, %177, %181, %178
  %326 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %327 = load ptr, ptr %326, align 8, !tbaa !867
  %328 = load ptr, ptr %327, align 8, !tbaa !469
  %329 = icmp eq ptr %328, null
  br i1 %329, label %339, label %330, !prof !965

330:                                              ; preds = %325
  %331 = getelementptr inbounds %struct.simple_bitmap_def, ptr %327, i64 0, i32 3, i64 %26
  %332 = load i64, ptr %331, align 8, !tbaa !231
  %333 = and i64 %332, %24
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = getelementptr inbounds i8, ptr %328, i64 %26
  %337 = load i8, ptr %336, align 1, !tbaa !198
  %338 = add i8 %337, 1
  store i8 %338, ptr %336, align 1, !tbaa !198
  br label %339

339:                                              ; preds = %325, %330, %335
  %340 = getelementptr inbounds %struct.simple_bitmap_def, ptr %327, i64 0, i32 3, i64 %26
  %341 = load i64, ptr %340, align 8, !tbaa !231
  %342 = or i64 %341, %24
  store i64 %342, ptr %340, align 8, !tbaa !231
  br label %357

343:                                              ; preds = %169
  br i1 %176, label %349, label %344

344:                                              ; preds = %343
  %345 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %175, i64 0, i32 1
  %346 = load i32, ptr %345, align 4, !tbaa !596
  %347 = load i32, ptr %175, align 4, !tbaa !592
  %348 = icmp eq i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %343, %344
  %350 = tail call ptr @vec_heap_o_reserve(ptr noundef %175, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  store ptr %350, ptr %174, align 8, !tbaa !187
  br label %351

351:                                              ; preds = %344, %349
  %352 = load ptr, ptr %174, align 8, !tbaa !187
  %353 = load i32, ptr %352, align 4, !tbaa !592
  %354 = add i32 %353, 1
  store i32 %354, ptr %352, align 4, !tbaa !592
  %355 = zext i32 %353 to i64
  %356 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %352, i64 0, i32 2, i64 %355
  store i32 %2, ptr %356, align 4, !tbaa !202
  br label %357

357:                                              ; preds = %351, %339
  ret void
}

declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #3

declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @topo_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #14 !prof !984 !PGOFuncName !985 {
  %4 = load ptr, ptr %1, align 8, !tbaa !583
  %5 = load ptr, ptr %4, align 8, !tbaa !469
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7, !prof !595

7:                                                ; preds = %3
  %8 = lshr i32 %2, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !231
  %12 = and i32 %2, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %7
  %18 = getelementptr inbounds i8, ptr %5, i64 %9
  %19 = load i8, ptr %18, align 1, !tbaa !198
  %20 = add i8 %19, 1
  store i8 %20, ptr %18, align 1, !tbaa !198
  br label %21

21:                                               ; preds = %3, %7, %17
  %22 = and i32 %2, 63
  %23 = zext nneg i32 %22 to i64
  %24 = shl nuw i64 1, %23
  %25 = lshr i32 %2, 6
  %26 = zext nneg i32 %25 to i64
  %27 = getelementptr inbounds %struct.simple_bitmap_def, ptr %4, i64 0, i32 3, i64 %26
  %28 = load i64, ptr %27, align 8, !tbaa !231
  %29 = or i64 %28, %24
  store i64 %29, ptr %27, align 8, !tbaa !231
  %30 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !330
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !187
  %35 = icmp eq ptr %34, null
  br i1 %35, label %124, label %36, !prof !986

36:                                               ; preds = %21
  %37 = load ptr, ptr %34, align 8, !tbaa !227
  %38 = icmp eq ptr %37, null
  %39 = select i1 %38, ptr @bitmap_zero_bits, ptr %37, !prof !987
  %40 = getelementptr inbounds %struct.bitmap_element_def, ptr %39, i64 0, i32 2
  %41 = load i32, ptr %40, align 8, !tbaa !229
  %42 = shl i32 %41, 7
  %43 = getelementptr inbounds %struct.bitmap_element_def, ptr %39, i64 0, i32 3
  %44 = load i64, ptr %43, align 8, !tbaa !231
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = or disjoint i32 %42, %46
  br label %48

48:                                               ; preds = %121, %36
  %49 = phi i32 [ 0, %36 ], [ %104, %121 ]
  %50 = phi i64 [ %44, %36 ], [ %122, %121 ]
  %51 = phi ptr [ %39, %36 ], [ %106, %121 ]
  %52 = phi i32 [ %47, %36 ], [ %123, %121 ]
  %53 = icmp eq i64 %50, 0
  br i1 %53, label %68, label %54, !prof !988

54:                                               ; preds = %82, %48
  %55 = phi i32 [ %49, %48 ], [ %83, %82 ]
  %56 = phi i64 [ %50, %48 ], [ %87, %82 ]
  %57 = phi ptr [ %51, %48 ], [ %74, %82 ]
  %58 = phi i32 [ %52, %48 ], [ %84, %82 ]
  %59 = and i64 %56, 1
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %103, !prof !989

61:                                               ; preds = %54, %61
  %62 = phi i32 [ %65, %61 ], [ %58, %54 ]
  %63 = phi i64 [ %64, %61 ], [ %56, %54 ]
  %64 = lshr exact i64 %63, 1
  %65 = add i32 %62, 1
  %66 = and i64 %63, 2
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %61, label %103, !prof !990, !llvm.loop !232

68:                                               ; preds = %48
  %69 = add i32 %52, 63
  %70 = and i32 %69, -64
  %71 = add i32 %49, 1
  br label %72

72:                                               ; preds = %99, %68
  %73 = phi i64 [ %50, %68 ], [ %94, %99 ]
  %74 = phi ptr [ %51, %68 ], [ %97, %99 ]
  %75 = phi i32 [ %70, %68 ], [ %102, %99 ]
  %76 = phi i32 [ %71, %68 ], [ 0, %99 ]
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %93, label %78, !prof !991

78:                                               ; preds = %72
  %79 = add i32 %75, 128
  %80 = shl i32 %76, 6
  %81 = sub i32 %79, %80
  br label %82

82:                                               ; preds = %78, %89
  %83 = phi i32 [ %91, %89 ], [ %76, %78 ]
  %84 = phi i32 [ %90, %89 ], [ %75, %78 ]
  %85 = zext i32 %83 to i64
  %86 = getelementptr inbounds %struct.bitmap_element_def, ptr %74, i64 0, i32 3, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !231
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %54, !prof !992

89:                                               ; preds = %82
  %90 = add i32 %84, 64
  %91 = add i32 %83, 1
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %82, !prof !993, !llvm.loop !233

93:                                               ; preds = %89, %72
  %94 = phi i64 [ %73, %72 ], [ %87, %89 ]
  %95 = phi i32 [ %75, %72 ], [ %81, %89 ]
  %96 = phi i32 [ %76, %72 ], [ 2, %89 ]
  %97 = load ptr, ptr %74, align 8, !tbaa !234
  %98 = icmp eq ptr %97, null
  br i1 %98, label %103, label %99, !prof !994

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.bitmap_element_def, ptr %97, i64 0, i32 2
  %101 = load i32, ptr %100, align 8, !tbaa !229
  %102 = shl i32 %101, 7
  br label %72, !llvm.loop !235

103:                                              ; preds = %93, %61, %54
  %104 = phi i32 [ %55, %54 ], [ %55, %61 ], [ %96, %93 ]
  %105 = phi i64 [ %56, %54 ], [ %64, %61 ], [ %94, %93 ]
  %106 = phi ptr [ %57, %54 ], [ %57, %61 ], [ %97, %93 ]
  %107 = phi i32 [ %58, %54 ], [ %65, %61 ], [ %95, %93 ]
  %108 = phi i1 [ false, %54 ], [ false, %61 ], [ true, %93 ]
  br i1 %108, label %124, label %109, !prof !995

109:                                              ; preds = %103
  %110 = load ptr, ptr %1, align 8, !tbaa !583
  %111 = lshr i32 %107, 6
  %112 = zext nneg i32 %111 to i64
  %113 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !231
  %115 = and i32 %107, 63
  %116 = zext nneg i32 %115 to i64
  %117 = shl nuw i64 1, %116
  %118 = and i64 %114, %117
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %121, !prof !996

120:                                              ; preds = %109
  tail call fastcc void @topo_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %107)
  br label %121

121:                                              ; preds = %109, %120
  %122 = lshr i64 %105, 1
  %123 = add i32 %107, 1
  br label %48, !llvm.loop !997

124:                                              ; preds = %103, %21
  %125 = getelementptr inbounds %struct.topo_info, ptr %1, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !187
  %127 = icmp eq ptr %126, null
  br i1 %127, label %133, label %128, !prof !998

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %126, i64 0, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !596
  %131 = load i32, ptr %126, align 4, !tbaa !592
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135, !prof !999

133:                                              ; preds = %124, %128
  %134 = tail call ptr @vec_heap_o_reserve(ptr noundef %126, i32 noundef 1, i64 noundef 8, i64 noundef 4) #28
  store ptr %134, ptr %125, align 8, !tbaa !187
  br label %135

135:                                              ; preds = %128, %133
  %136 = load ptr, ptr %125, align 8, !tbaa !187
  %137 = load i32, ptr %136, align 4, !tbaa !592
  %138 = add i32 %137, 1
  store i32 %138, ptr %136, align 4, !tbaa !592
  %139 = zext i32 %137 to i64
  %140 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %136, i64 0, i32 2, i64 %139
  store i32 %2, ptr %140, align 4, !tbaa !202
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @solution_set_expand(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #14 !prof !1000 !PGOFuncName !1001 {
  %3 = load ptr, ptr %1, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  %5 = select i1 %4, ptr @bitmap_zero_bits, ptr %3, !prof !1002
  %6 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !229
  %8 = shl i32 %7, 7
  %9 = getelementptr inbounds %struct.bitmap_element_def, ptr %5, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !231
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = or disjoint i32 %8, %12
  br label %14

14:                                               ; preds = %102, %2
  %15 = phi i64 [ %10, %2 ], [ %104, %102 ]
  %16 = phi i32 [ 0, %2 ], [ %72, %102 ]
  %17 = phi ptr [ %5, %2 ], [ %73, %102 ]
  %18 = phi i32 [ %13, %2 ], [ %105, %102 ]
  %19 = phi ptr [ null, %2 ], [ %103, %102 ]
  %20 = icmp eq i64 %15, 0
  br i1 %20, label %35, label %21, !prof !1003

21:                                               ; preds = %49, %14
  %22 = phi i64 [ %15, %14 ], [ %54, %49 ]
  %23 = phi i32 [ %16, %14 ], [ %50, %49 ]
  %24 = phi ptr [ %17, %14 ], [ %41, %49 ]
  %25 = phi i32 [ %18, %14 ], [ %51, %49 ]
  %26 = and i64 %22, 1
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %70, !prof !1004

28:                                               ; preds = %21, %28
  %29 = phi i32 [ %32, %28 ], [ %25, %21 ]
  %30 = phi i64 [ %31, %28 ], [ %22, %21 ]
  %31 = lshr exact i64 %30, 1
  %32 = add i32 %29, 1
  %33 = and i64 %30, 2
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %28, label %70, !prof !1005, !llvm.loop !232

35:                                               ; preds = %14
  %36 = add i32 %18, 63
  %37 = and i32 %36, -64
  %38 = add i32 %16, 1
  br label %39

39:                                               ; preds = %66, %35
  %40 = phi i64 [ %15, %35 ], [ %61, %66 ]
  %41 = phi ptr [ %17, %35 ], [ %64, %66 ]
  %42 = phi i32 [ %37, %35 ], [ %69, %66 ]
  %43 = phi i32 [ %38, %35 ], [ 0, %66 ]
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %60, label %45, !prof !1006

45:                                               ; preds = %39
  %46 = add i32 %42, 128
  %47 = shl i32 %43, 6
  %48 = sub i32 %46, %47
  br label %49

49:                                               ; preds = %45, %56
  %50 = phi i32 [ %58, %56 ], [ %43, %45 ]
  %51 = phi i32 [ %57, %56 ], [ %42, %45 ]
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds %struct.bitmap_element_def, ptr %41, i64 0, i32 3, i64 %52
  %54 = load i64, ptr %53, align 8, !tbaa !231
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %21, !prof !1007

56:                                               ; preds = %49
  %57 = add i32 %51, 64
  %58 = add i32 %50, 1
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %49, !prof !1008, !llvm.loop !233

60:                                               ; preds = %56, %39
  %61 = phi i64 [ %40, %39 ], [ %54, %56 ]
  %62 = phi i32 [ %42, %39 ], [ %48, %56 ]
  %63 = phi i32 [ %43, %39 ], [ 2, %56 ]
  %64 = load ptr, ptr %41, align 8, !tbaa !234
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66, !prof !1009

66:                                               ; preds = %60
  %67 = getelementptr inbounds %struct.bitmap_element_def, ptr %64, i64 0, i32 2
  %68 = load i32, ptr %67, align 8, !tbaa !229
  %69 = shl i32 %68, 7
  br label %39, !llvm.loop !235

70:                                               ; preds = %60, %28, %21
  %71 = phi i64 [ %22, %21 ], [ %31, %28 ], [ %61, %60 ]
  %72 = phi i32 [ %23, %21 ], [ %23, %28 ], [ %63, %60 ]
  %73 = phi ptr [ %24, %21 ], [ %24, %28 ], [ %64, %60 ]
  %74 = phi i32 [ %25, %21 ], [ %32, %28 ], [ %62, %60 ]
  %75 = phi i1 [ false, %21 ], [ false, %28 ], [ true, %60 ]
  br i1 %75, label %106, label %76, !prof !1010

76:                                               ; preds = %70
  %77 = load ptr, ptr @varmap, align 8
  %78 = zext i32 %74 to i64
  %79 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %77, i64 0, i32 2, i64 %78
  %80 = load ptr, ptr %79, align 8, !tbaa !187
  %81 = getelementptr inbounds %struct.variable_info, ptr %80, i64 0, i32 1
  %82 = load i8, ptr %81, align 4
  %83 = and i8 %82, 9
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %85, label %102, !prof !1011

85:                                               ; preds = %76
  %86 = getelementptr inbounds %struct.variable_info, ptr %80, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !308
  %88 = load ptr, ptr @vi_for_tree, align 8, !tbaa !187
  %89 = tail call ptr @pointer_map_contains(ptr noundef %88, ptr noundef %87) #28
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91

91:                                               ; preds = %85
  %92 = load ptr, ptr %89, align 8, !tbaa !187
  br label %93

93:                                               ; preds = %85, %91
  %94 = phi ptr [ %92, %91 ], [ null, %85 ]
  %95 = icmp eq ptr %19, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #28
  br label %98

98:                                               ; preds = %96, %93
  %99 = phi ptr [ %97, %96 ], [ %19, %93 ]
  %100 = load i32, ptr %94, align 8, !tbaa !372
  %101 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %99, i32 noundef %100) #28
  br label %102

102:                                              ; preds = %76, %98
  %103 = phi ptr [ %99, %98 ], [ %19, %76 ]
  %104 = lshr i64 %71, 1
  %105 = add i32 %74, 1
  br label %14, !llvm.loop !1012

106:                                              ; preds = %70
  %107 = icmp eq ptr %19, null
  br i1 %107, label %198, label %108, !prof !1013

108:                                              ; preds = %106
  %109 = load ptr, ptr %19, align 8, !tbaa !227
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr @bitmap_zero_bits, ptr %109
  %112 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 2
  %113 = load i32, ptr %112, align 8, !tbaa !229
  %114 = shl i32 %113, 7
  %115 = getelementptr inbounds %struct.bitmap_element_def, ptr %111, i64 0, i32 3
  %116 = load i64, ptr %115, align 8, !tbaa !231
  %117 = icmp eq i64 %116, 0
  %118 = zext i1 %117 to i32
  %119 = or disjoint i32 %114, %118
  br label %120

120:                                              ; preds = %194, %108
  %121 = phi i64 [ %116, %108 ], [ %195, %194 ]
  %122 = phi i32 [ 0, %108 ], [ %177, %194 ]
  %123 = phi ptr [ %111, %108 ], [ %178, %194 ]
  %124 = phi i32 [ %119, %108 ], [ %196, %194 ]
  %125 = icmp eq i64 %121, 0
  br i1 %125, label %140, label %126

126:                                              ; preds = %154, %120
  %127 = phi i64 [ %121, %120 ], [ %159, %154 ]
  %128 = phi i32 [ %122, %120 ], [ %155, %154 ]
  %129 = phi ptr [ %123, %120 ], [ %146, %154 ]
  %130 = phi i32 [ %124, %120 ], [ %156, %154 ]
  %131 = and i64 %127, 1
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %175

133:                                              ; preds = %126, %133
  %134 = phi i32 [ %137, %133 ], [ %130, %126 ]
  %135 = phi i64 [ %136, %133 ], [ %127, %126 ]
  %136 = lshr exact i64 %135, 1
  %137 = add i32 %134, 1
  %138 = and i64 %135, 2
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %133, label %175, !llvm.loop !232

140:                                              ; preds = %120
  %141 = add i32 %124, 63
  %142 = and i32 %141, -64
  %143 = add i32 %122, 1
  br label %144

144:                                              ; preds = %171, %140
  %145 = phi i64 [ %121, %140 ], [ %166, %171 ]
  %146 = phi ptr [ %123, %140 ], [ %169, %171 ]
  %147 = phi i32 [ %142, %140 ], [ %174, %171 ]
  %148 = phi i32 [ %143, %140 ], [ 0, %171 ]
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %165, label %150

150:                                              ; preds = %144
  %151 = add i32 %147, 128
  %152 = shl i32 %148, 6
  %153 = sub i32 %151, %152
  br label %154

154:                                              ; preds = %150, %161
  %155 = phi i32 [ %163, %161 ], [ %148, %150 ]
  %156 = phi i32 [ %162, %161 ], [ %147, %150 ]
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds %struct.bitmap_element_def, ptr %146, i64 0, i32 3, i64 %157
  %159 = load i64, ptr %158, align 8, !tbaa !231
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %126

161:                                              ; preds = %154
  %162 = add i32 %156, 64
  %163 = add i32 %155, 1
  %164 = icmp eq i32 %163, 2
  br i1 %164, label %165, label %154, !llvm.loop !233

165:                                              ; preds = %161, %144
  %166 = phi i64 [ %145, %144 ], [ %159, %161 ]
  %167 = phi i32 [ %147, %144 ], [ %153, %161 ]
  %168 = phi i32 [ %148, %144 ], [ 2, %161 ]
  %169 = load ptr, ptr %146, align 8, !tbaa !234
  %170 = icmp eq ptr %169, null
  br i1 %170, label %175, label %171

171:                                              ; preds = %165
  %172 = getelementptr inbounds %struct.bitmap_element_def, ptr %169, i64 0, i32 2
  %173 = load i32, ptr %172, align 8, !tbaa !229
  %174 = shl i32 %173, 7
  br label %144, !llvm.loop !235

175:                                              ; preds = %165, %133, %126
  %176 = phi i64 [ %127, %126 ], [ %136, %133 ], [ %166, %165 ]
  %177 = phi i32 [ %128, %126 ], [ %128, %133 ], [ %168, %165 ]
  %178 = phi ptr [ %129, %126 ], [ %129, %133 ], [ %169, %165 ]
  %179 = phi i32 [ %130, %126 ], [ %137, %133 ], [ %167, %165 ]
  %180 = phi i1 [ false, %126 ], [ false, %133 ], [ true, %165 ]
  br i1 %180, label %197, label %181

181:                                              ; preds = %175
  %182 = load ptr, ptr @varmap, align 8
  %183 = zext i32 %179 to i64
  %184 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %182, i64 0, i32 2, i64 %183
  %185 = load ptr, ptr %184, align 8, !tbaa !187
  %186 = icmp eq ptr %185, null
  br i1 %186, label %194, label %187

187:                                              ; preds = %181, %187
  %188 = phi ptr [ %192, %187 ], [ %185, %181 ]
  %189 = load i32, ptr %188, align 8, !tbaa !372
  %190 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %189) #28
  %191 = getelementptr inbounds %struct.variable_info, ptr %188, i64 0, i32 2
  %192 = load ptr, ptr %191, align 8, !tbaa !187
  %193 = icmp eq ptr %192, null
  br i1 %193, label %194, label %187, !llvm.loop !1014

194:                                              ; preds = %187, %181
  %195 = lshr i64 %176, 1
  %196 = add i32 %179, 1
  br label %120, !llvm.loop !1015

197:                                              ; preds = %175
  tail call void @bitmap_obstack_free(ptr noundef nonnull %19) #28
  br label %198

198:                                              ; preds = %197, %106
  ret void
}

declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #3

declare void @bitmap_clear(ptr noundef) local_unnamed_addr #3

declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #3

declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #3

declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #3

declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #3

declare void @push_cfun(ptr noundef) local_unnamed_addr #3

declare void @pop_cfun() local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

attributes #0 = { cold inlinehint nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold inlinehint mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #20 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { inlinehint nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!185}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184}
!35 = !{ptr @pt_solution_includes, ptr @pt_solution_includes_1, i64 36}
!36 = !{ptr @pt_solutions_intersect, ptr @pt_solutions_intersect_1, i64 159}
!37 = !{ptr @delete_alias_heapvars, ptr @htab_delete, i64 39}
!38 = !{ptr @compute_may_aliases, ptr @init_alias_vars, i64 116}
!39 = !{ptr @compute_may_aliases, ptr @htab_create_alloc, i64 39}
!40 = !{ptr @compute_may_aliases, ptr @intra_create_variable_infos, i64 116}
!41 = !{ptr @compute_may_aliases, ptr @gsi_start_phis, i64 675771}
!42 = !{ptr @compute_may_aliases, ptr @is_gimple_reg, i64 133911}
!43 = !{ptr @compute_may_aliases, ptr @find_func_aliases, i64 1097872}
!44 = !{ptr @compute_may_aliases, ptr @solve_constraints, i64 116}
!45 = !{ptr @compute_may_aliases, ptr @find_what_var_points_to, i64 42807}
!46 = !{ptr @compute_may_aliases, ptr @pointer_map_contains, i64 42575}
!47 = !{ptr @compute_may_aliases, ptr @get_ptr_info, i64 42575}
!48 = !{ptr @compute_may_aliases, ptr @delete_points_to_sets, i64 116}
!49 = !{ptr @compute_may_aliases, ptr @need_ssa_update_p, i64 116}
!50 = !{ptr @delete_points_to_sets, ptr @htab_delete, i64 116}
!51 = !{ptr @delete_points_to_sets, ptr @pointer_map_destroy, i64 116}
!52 = !{ptr @delete_points_to_sets, ptr @bitmap_obstack_release, i64 116}
!53 = !{ptr @delete_points_to_sets, ptr @free, i64 1419}
!54 = !{ptr @delete_points_to_sets, ptr @free_alloc_pool, i64 232}
!55 = !{ptr @find, ptr @find, i64 259624}
!56 = !{ptr @init_alias_vars, ptr @bitmap_obstack_initialize, i64 348}
!57 = !{ptr @init_alias_vars, ptr @create_alloc_pool, i64 232}
!58 = !{ptr @init_alias_vars, ptr @vec_heap_p_reserve_exact, i64 232}
!59 = !{ptr @init_alias_vars, ptr @pointer_map_create, i64 116}
!60 = !{ptr @init_alias_vars, ptr @htab_create, i64 116}
!61 = !{ptr @init_alias_vars, ptr @new_var_info, i64 928}
!62 = !{ptr @init_alias_vars, ptr @pool_alloc, i64 1160}
!63 = !{ptr @init_alias_vars, ptr @process_constraint, i64 1044}
!64 = !{ptr @intra_create_variable_infos, ptr @type_could_have_pointers, i64 116}
!65 = !{ptr @intra_create_variable_infos, ptr @get_vi_for_tree, i64 116}
!66 = !{ptr @intra_create_variable_infos, ptr @pool_alloc, i64 116}
!67 = !{ptr @intra_create_variable_infos, ptr @process_constraint, i64 116}
!68 = !{ptr @find_func_aliases, ptr @type_could_have_pointers, i64 899894}
!69 = !{ptr @find_func_aliases, ptr @get_constraint_for_1, i64 292802}
!70 = !{ptr @find_func_aliases, ptr @tree_strip_nop_conversions, i64 86}
!71 = !{ptr @find_func_aliases, ptr @pool_alloc, i64 207939}
!72 = !{ptr @find_func_aliases, ptr @process_constraint, i64 207939}
!73 = !{ptr @find_func_aliases, ptr @gimple_call_flags, i64 207386}
!74 = !{ptr @find_func_aliases, ptr @free, i64 500157}
!75 = !{ptr @find_func_aliases, ptr @vec_heap_o_reserve, i64 207386}
!76 = !{ptr @find_func_aliases, ptr @get_constraint_for_ptr_offset, i64 12}
!77 = !{ptr @find_func_aliases, ptr @gimple_assign_single_p, i64 42404}
!78 = !{ptr @find_func_aliases, ptr @process_all_all_constraints, i64 42416}
!79 = !{ptr @find_func_aliases, ptr @get_base_address, i64 42416}
!80 = !{ptr @find_func_aliases, ptr @get_vi_for_tree, i64 462}
!81 = !{ptr @find_func_aliases, ptr @make_constraint_from_heapvar, i64 462}
!82 = !{ptr @find_func_aliases, ptr @make_constraint_to, i64 1}
!83 = !{ptr @solve_constraints, ptr @xcalloc, i64 1160}
!84 = !{ptr @solve_constraints, ptr @xmalloc, i64 1167}
!85 = !{ptr @solve_constraints, ptr @sbitmap_alloc, i64 353}
!86 = !{ptr @solve_constraints, ptr @bitmap_obstack_alloc_stat, i64 89827}
!87 = !{ptr @solve_constraints, ptr @sbitmap_zero, i64 469}
!88 = !{ptr @solve_constraints, ptr @bitmap_set_bit, i64 717228}
!89 = !{ptr @solve_constraints, ptr @init_scc_info, i64 232}
!90 = !{ptr @solve_constraints, ptr @bitmap_obstack_initialize, i64 237}
!91 = !{ptr @solve_constraints, ptr @htab_create, i64 232}
!92 = !{ptr @solve_constraints, ptr @condense_visit, i64 1670}
!93 = !{ptr @solve_constraints, ptr @label_visit, i64 1786}
!94 = !{ptr @solve_constraints, ptr @bitmap_obstack_free, i64 1263}
!95 = !{ptr @solve_constraints, ptr @bitmap_hash, i64 1241}
!96 = !{ptr @solve_constraints, ptr @htab_find_slot_with_hash, i64 1241}
!97 = !{ptr @solve_constraints, ptr @find, i64 1282071}
!98 = !{ptr @solve_constraints, ptr @bitmap_bit_p, i64 504816}
!99 = !{ptr @solve_constraints, ptr @unify_nodes, i64 42536}
!100 = !{ptr @solve_constraints, ptr @free_scc_info, i64 232}
!101 = !{ptr @solve_constraints, ptr @free, i64 1760}
!102 = !{ptr @solve_constraints, ptr @htab_delete, i64 232}
!103 = !{ptr @solve_constraints, ptr @bitmap_obstack_release, i64 469}
!104 = !{ptr @solve_constraints, ptr @insert_into_complex, i64 912}
!105 = !{ptr @solve_constraints, ptr @scc_visit, i64 45314}
!106 = !{ptr @solve_constraints, ptr @bitmap_clear_range, i64 590}
!107 = !{ptr @solve_constraints, ptr @xrealloc, i64 116}
!108 = !{ptr @solve_constraints, ptr @vec_heap_o_reserve_exact, i64 121}
!109 = !{ptr @solve_constraints, ptr @topo_visit, i64 1378}
!110 = !{ptr @solve_constraints, ptr @bitmap_and_compl, i64 713}
!111 = !{ptr @solve_constraints, ptr @bitmap_ior_into, i64 1664}
!112 = !{ptr @solve_constraints, ptr @bitmap_copy, i64 179}
!113 = !{ptr @solve_constraints, ptr @solution_set_expand, i64 153}
!114 = !{ptr @find_what_var_points_to, ptr @find, i64 42807}
!115 = !{ptr @find_what_var_points_to, ptr @bitmap_gc_alloc_stat, i64 42807}
!116 = !{ptr @find_what_var_points_to, ptr @bitmap_set_bit, i64 116}
!117 = !{ptr @find_what_var_points_to, ptr @bitmap_hash, i64 43037}
!118 = !{ptr @find_what_var_points_to, ptr @htab_find_slot_with_hash, i64 43037}
!119 = !{ptr @find_what_var_points_to, ptr @xmalloc, i64 230}
!120 = !{ptr @find_what_var_points_to, ptr @bitmap_clear, i64 42577}
!121 = !{ptr @shared_bitmap_eq, ptr @bitmap_equal_p, i64 42577}
!122 = !{ptr @new_var_info, ptr @pool_alloc, i64 44228}
!123 = !{ptr @new_var_info, ptr @bitmap_obstack_alloc_stat, i64 88456}
!124 = !{ptr @new_var_info, ptr @vec_heap_p_reserve, i64 548}
!125 = !{ptr @process_constraint, ptr @vec_heap_p_reserve, i64 902}
!126 = !{ptr @get_vi_for_tree, ptr @pointer_map_contains, i64 292631}
!127 = !{ptr @get_vi_for_tree, ptr @alias_get_name, i64 42832}
!128 = !{ptr @get_vi_for_tree, ptr @push_fields_onto_fieldstack, i64 78}
!129 = !{ptr @get_vi_for_tree, ptr @new_var_info, i64 43300}
!130 = !{ptr @get_vi_for_tree, ptr @type_could_have_pointers, i64 42832}
!131 = !{ptr @get_vi_for_tree, ptr @host_integerp, i64 42832}
!132 = !{ptr @get_vi_for_tree, ptr @pointer_map_insert, i64 42832}
!133 = !{ptr @get_vi_for_tree, ptr @pool_alloc, i64 453}
!134 = !{ptr @get_vi_for_tree, ptr @process_constraint, i64 453}
!135 = !{ptr @get_vi_for_tree, ptr @spec_qsort, i64 78}
!136 = !{ptr @get_vi_for_tree, ptr @free, i64 78}
!137 = !{ptr @alias_get_name, ptr @get_name, i64 42832}
!138 = !{ptr @push_fields_onto_fieldstack, ptr @host_integerp, i64 2808}
!139 = !{ptr @push_fields_onto_fieldstack, ptr @type_could_have_pointers, i64 1092}
!140 = !{ptr @push_fields_onto_fieldstack, ptr @vec_heap_o_reserve, i64 156}
!141 = !{ptr @get_constraint_for, ptr @get_constraint_for_1, i64 12}
!142 = !{ptr @get_constraint_for_ptr_offset, ptr @host_integerp, i64 12}
!143 = !{ptr @get_constraint_for_ptr_offset, ptr @get_constraint_for, i64 12}
!144 = !{ptr @process_all_all_constraints, ptr @pool_alloc, i64 42416}
!145 = !{ptr @process_all_all_constraints, ptr @process_constraint, i64 42416}
!146 = !{ptr @get_constraint_for_1, ptr @integer_zerop, i64 300}
!147 = !{ptr @get_constraint_for_1, ptr @vec_heap_o_reserve, i64 287}
!148 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_1, i64 38467}
!149 = !{ptr @get_constraint_for_1, ptr @do_deref, i64 320}
!150 = !{ptr @get_constraint_for_1, ptr @get_ref_base_and_extent, i64 37748}
!151 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_ssa_var, i64 292515}
!152 = !{ptr @get_constraint_for_ssa_var, ptr @get_vi_for_tree, i64 458124}
!153 = !{ptr @get_constraint_for_ssa_var, ptr @vec_heap_o_reserve, i64 458077}
!154 = !{ptr @make_constraint_to, ptr @get_constraint_for_1, i64 1}
!155 = !{ptr @make_constraint_to, ptr @pool_alloc, i64 1}
!156 = !{ptr @make_constraint_to, ptr @process_constraint, i64 1}
!157 = !{ptr @make_constraint_to, ptr @free, i64 1}
!158 = !{ptr @init_scc_info, ptr @xmalloc, i64 464}
!159 = !{ptr @init_scc_info, ptr @sbitmap_alloc, i64 464}
!160 = !{ptr @init_scc_info, ptr @sbitmap_zero, i64 464}
!161 = !{ptr @init_scc_info, ptr @xcalloc, i64 232}
!162 = !{ptr @init_scc_info, ptr @vec_heap_o_reserve_exact, i64 232}
!163 = !{ptr @equiv_class_label_eq, ptr @bitmap_equal_p, i64 44227}
!164 = !{ptr @condense_visit, ptr @condense_visit, i64 85185}
!165 = !{ptr @condense_visit, ptr @bitmap_ior_into, i64 42234}
!166 = !{ptr @condense_visit, ptr @bitmap_obstack_alloc_stat, i64 78}
!167 = !{ptr @condense_visit, ptr @vec_heap_o_reserve, i64 645}
!168 = !{ptr @label_visit, ptr @bitmap_obstack_alloc_stat, i64 43655}
!169 = !{ptr @label_visit, ptr @label_visit, i64 42596}
!170 = !{ptr @label_visit, ptr @bitmap_ior_into, i64 85044}
!171 = !{ptr @label_visit, ptr @bitmap_set_bit, i64 1414}
!172 = !{ptr @label_visit, ptr @bitmap_hash, i64 45685}
!173 = !{ptr @label_visit, ptr @htab_find_slot_with_hash, i64 45685}
!174 = !{ptr @label_visit, ptr @xmalloc, i64 1575}
!175 = !{ptr @unify_nodes, ptr @find, i64 85070}
!176 = !{ptr @unify_nodes, ptr @bitmap_ior_into, i64 42616}
!177 = !{ptr @unify_nodes, ptr @bitmap_obstack_free, i64 85151}
!178 = !{ptr @unify_nodes, ptr @bitmap_bit_p, i64 81}
!179 = !{ptr @free_scc_info, ptr @free, i64 1856}
!180 = !{ptr @insert_into_complex, ptr @vec_heap_p_reserve, i64 383}
!181 = !{ptr @scc_visit, ptr @find, i64 2232}
!182 = !{ptr @scc_visit, ptr @scc_visit, i64 491}
!183 = !{ptr @topo_visit, ptr @topo_visit, i64 555}
!184 = !{ptr @topo_visit, ptr @vec_heap_o_reserve, i64 512}
!185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!186 = !{!"function_entry_count", i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"any pointer", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !{!192, !188, i64 8}
!192 = !{!"_IO_FILE", !193, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !193, i64 112, !193, i64 116, !194, i64 120, !195, i64 128, !189, i64 130, !189, i64 131, !188, i64 136, !194, i64 144, !188, i64 152, !188, i64 160, !188, i64 168, !188, i64 176, !194, i64 184, !193, i64 192, !189, i64 196}
!193 = !{!"int", !189, i64 0}
!194 = !{!"long", !189, i64 0}
!195 = !{!"short", !189, i64 0}
!196 = !{!192, !188, i64 16}
!197 = !{!"branch_weights", i32 2000, i32 1}
!198 = !{!189, !189, i64 0}
!199 = !{!192, !188, i64 40}
!200 = !{!192, !188, i64 48}
!201 = !{!192, !193, i64 0}
!202 = !{!193, !193, i64 0}
!203 = distinct !{!203, !204, !205}
!204 = !{!"llvm.loop.mustprogress"}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !{!207, !193, i64 0}
!207 = !{!"constraint", !208, i64 0, !208, i64 16}
!208 = !{!"constraint_expr", !193, i64 0, !193, i64 4, !194, i64 8}
!209 = !{!207, !193, i64 4}
!210 = !{!211, !188, i64 40}
!211 = !{!"variable_info", !193, i64 0, !193, i64 4, !193, i64 4, !193, i64 4, !193, i64 4, !193, i64 4, !193, i64 4, !193, i64 4, !193, i64 4, !188, i64 8, !194, i64 16, !194, i64 24, !194, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64}
!212 = !{!207, !194, i64 8}
!213 = !{!207, !193, i64 16}
!214 = !{!207, !193, i64 20}
!215 = !{!207, !194, i64 24}
!216 = !{!217, !193, i64 0}
!217 = !{!"VEC_constraint_t_base", !193, i64 0, !193, i64 4, !189, i64 8}
!218 = distinct !{!218, !204, !205}
!219 = !{!220, !193, i64 0}
!220 = !{!"VEC_varinfo_t_base", !193, i64 0, !193, i64 4, !189, i64 8}
!221 = !{!222, !193, i64 0}
!222 = !{!"constraint_graph", !193, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120}
!223 = !{!222, !188, i64 40}
!224 = distinct !{!224, !204, !205}
!225 = distinct !{!225, !204, !205}
!226 = !{!211, !188, i64 56}
!227 = !{!228, !188, i64 0}
!228 = !{!"bitmap_head_def", !188, i64 0, !188, i64 8, !193, i64 16, !188, i64 24}
!229 = !{!230, !193, i64 16}
!230 = !{!"bitmap_element_def", !188, i64 0, !188, i64 8, !193, i64 16, !189, i64 24}
!231 = !{!194, !194, i64 0}
!232 = distinct !{!232, !204, !205}
!233 = distinct !{!233, !204, !205}
!234 = !{!230, !188, i64 0}
!235 = distinct !{!235, !205}
!236 = distinct !{!236, !204, !205}
!237 = !{!238, !194, i64 8}
!238 = !{!"", !194, i64 0, !194, i64 8, !194, i64 16, !194, i64 24}
!239 = !{!238, !194, i64 0}
!240 = !{!238, !194, i64 24}
!241 = !{!238, !194, i64 16}
!242 = !{!"function_entry_count", i64 14515}
!243 = !{!244, !188, i64 8}
!244 = !{!"pt_solution", !193, i64 0, !193, i64 0, !193, i64 0, !193, i64 0, !193, i64 0, !193, i64 0, !188, i64 8}
!245 = distinct !{!245, !204, !205}
!246 = !{!"function_entry_count", i64 1441}
!247 = !{!"branch_weights", i32 0, i32 1441}
!248 = !{!249, !188, i64 24}
!249 = !{!"function", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !193, i64 104, !193, i64 108, !193, i64 112, !193, i64 116, !193, i64 120, !193, i64 124, !188, i64 128, !193, i64 136, !193, i64 137, !193, i64 138, !193, i64 138, !193, i64 138, !193, i64 138, !193, i64 138, !193, i64 138, !193, i64 138, !193, i64 139, !193, i64 139, !193, i64 139, !193, i64 139, !193, i64 139, !193, i64 139, !193, i64 139}
!250 = !{!"function_entry_count", i64 36}
!251 = !{i8 0, i8 2}
!252 = !{!"branch_weights", i32 0, i32 36}
!253 = !{!"tree-ssa-structalias.c;pt_solution_includes_1"}
!254 = !{!"branch_weights", i32 36, i32 0}
!255 = !{!"function_entry_count", i64 159}
!256 = !{!"branch_weights", i32 0, i32 159}
!257 = !{!"tree-ssa-structalias.c;pt_solutions_intersect_1"}
!258 = !{!"branch_weights", i32 159, i32 0}
!259 = !{!"branch_weights", i32 0, i32 25281}
!260 = !{!261, !193, i64 0}
!261 = !{!"constraint_stats", !193, i64 0, !193, i64 4, !193, i64 8, !193, i64 12, !193, i64 16, !193, i64 20, !193, i64 24, !193, i64 28}
!262 = !{!261, !193, i64 4}
!263 = !{!261, !193, i64 8}
!264 = !{!261, !193, i64 12}
!265 = !{!261, !193, i64 16}
!266 = !{!261, !193, i64 20}
!267 = !{!261, !193, i64 24}
!268 = distinct !{!268, !204, !205}
!269 = !{!"function_entry_count", i64 41}
!270 = !{!"branch_weights", i32 2, i32 39}
!271 = !{!"function_entry_count", i64 116}
!272 = !{!"branch_weights", i32 116, i32 0}
!273 = !{!"branch_weights", i32 39, i32 77}
!274 = !{!249, !188, i64 8}
!275 = !{!276, !188, i64 0}
!276 = !{!"control_flow_graph", !188, i64 0, !188, i64 8, !188, i64 16, !193, i64 24, !193, i64 28, !193, i64 32, !188, i64 40, !193, i64 48, !189, i64 52, !189, i64 60, !193, i64 68, !193, i64 72}
!277 = !{!278, !188, i64 56}
!278 = !{!"basic_block_def", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !189, i64 32, !188, i64 48, !188, i64 56, !189, i64 64, !194, i64 72, !193, i64 80, !193, i64 84, !193, i64 88, !193, i64 92, !193, i64 96}
!279 = !{!276, !188, i64 8}
!280 = !{!"branch_weights", i32 1, i32 231}
!281 = !{!"branch_weights", i32 231, i32 1351311}
!282 = distinct !{!282, !204, !205}
!283 = !{i64 0, i64 8, !187, i64 8, i64 8, !187, i64 16, i64 8, !187}
!284 = !{!"branch_weights", i32 541860, i32 133911}
!285 = !{!286, !188, i64 0}
!286 = !{!"gimple_seq_node_d", !188, i64 0, !188, i64 8, !188, i64 16}
!287 = !{!"branch_weights", i32 130751, i32 3160}
!288 = !{!286, !188, i64 16}
!289 = !{!"branch_weights", i32 133911, i32 0}
!290 = distinct !{!290, !204, !205}
!291 = !{!278, !193, i64 96}
!292 = !{!293}
!293 = distinct !{!293, !294, !"gsi_start_bb: argument 0"}
!294 = distinct !{!294, !"gsi_start_bb"}
!295 = !{!"branch_weights", i32 675771, i32 0}
!296 = !{!"branch_weights", i32 0, i32 675771}
!297 = !{!298, !188, i64 0}
!298 = !{!"gimple_bb_info", !188, i64 0, !188, i64 8}
!299 = !{!300, !188, i64 0}
!300 = !{!"gimple_seq_d", !188, i64 0, !188, i64 8, !188, i64 16}
!301 = !{!"branch_weights", i32 1, i32 675770}
!302 = !{!"branch_weights", i32 675770, i32 418942}
!303 = distinct !{!303, !204, !205}
!304 = !{!"branch_weights", i32 0, i32 44344}
!305 = !{!"branch_weights", i32 44228, i32 116}
!306 = !{!"branch_weights", i32 116, i32 44228}
!307 = !{!"branch_weights", i32 0, i32 44228}
!308 = !{!211, !188, i64 48}
!309 = distinct !{!309, !204, !205}
!310 = !{!311, !188, i64 16}
!311 = !{!"gimple_df", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !244, i64 32, !244, i64 48, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !193, i64 96, !312, i64 104}
!312 = !{!"ssa_operands", !188, i64 0, !193, i64 8, !193, i64 12, !189, i64 16, !188, i64 24, !188, i64 32}
!313 = !{!"branch_weights", i32 0, i32 1157628}
!314 = !{!315, !193, i64 0}
!315 = !{!"VEC_tree_base", !193, i64 0, !193, i64 4, !189, i64 8}
!316 = !{!"branch_weights", i32 1157512, i32 116}
!317 = !{!"branch_weights", i32 164909, i32 992603}
!318 = !{!"branch_weights", i32 950028, i32 42575, i32 0}
!319 = !{!"branch_weights", i32 42575, i32 0}
!320 = !{!"branch_weights", i32 42459, i32 116}
!321 = !{!"branch_weights", i32 0, i32 42575}
!322 = distinct !{!322, !204, !205}
!323 = !{!"tree-ssa-structalias.c;delete_points_to_sets"}
!324 = !{!261, !193, i64 28}
!325 = !{!"branch_weights", i32 0, i32 116}
!326 = !{!222, !188, i64 120}
!327 = !{!"branch_weights", i32 43853, i32 375}
!328 = !{!"branch_weights", i32 88225, i32 231}
!329 = distinct !{!329, !204, !205}
!330 = !{!222, !188, i64 8}
!331 = !{!222, !188, i64 56}
!332 = !{!222, !188, i64 64}
!333 = !{!222, !188, i64 32}
!334 = !{!"function_entry_count", i64 78}
!335 = !{!"tree-ssa-structalias.c;gate_tree_pta"}
!336 = !{!"function_entry_count", i64 1}
!337 = !{!"tree-ssa-structalias.c;gate_ipa_pta"}
!338 = !{!"branch_weights", i32 1, i32 0}
!339 = !{!"branch_weights", i32 0, i32 1}
!340 = !{!341, !188, i64 0}
!341 = !{!"cgraph_node", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !188, i64 32, !188, i64 40, !188, i64 48, !188, i64 56, !188, i64 64, !188, i64 72, !188, i64 80, !188, i64 88, !188, i64 96, !188, i64 104, !188, i64 112, !188, i64 120, !188, i64 128, !188, i64 136, !342, i64 144, !344, i64 184, !345, i64 224, !346, i64 232, !347, i64 256, !194, i64 288, !193, i64 296, !193, i64 300, !193, i64 304, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 308, !193, i64 309, !193, i64 309}
!342 = !{!"cgraph_local_info", !188, i64 0, !343, i64 8, !193, i64 32, !193, i64 32, !193, i64 32, !193, i64 32, !193, i64 32, !193, i64 32, !193, i64 32, !193, i64 32}
!343 = !{!"inline_summary", !194, i64 0, !193, i64 8, !193, i64 12, !193, i64 16, !193, i64 20}
!344 = !{!"cgraph_global_info", !194, i64 0, !194, i64 8, !188, i64 16, !193, i64 24, !193, i64 28, !193, i64 32, !189, i64 36}
!345 = !{!"cgraph_rtl_info", !193, i64 0}
!346 = !{!"cgraph_clone_info", !188, i64 0, !188, i64 8, !188, i64 16}
!347 = !{!"cgraph_thunk_info", !194, i64 0, !194, i64 8, !188, i64 16, !189, i64 24, !189, i64 25, !189, i64 26}
!348 = !{!341, !188, i64 96}
!349 = !{!211, !194, i64 16}
!350 = !{!211, !194, i64 24}
!351 = distinct !{!351, !204, !205}
!352 = distinct !{!352, !204, !205}
!353 = !{!211, !194, i64 32}
!354 = !{!211, !188, i64 8}
!355 = distinct !{!355, !204, !205}
!356 = distinct !{!356, !204, !205}
!357 = distinct !{!357, !204, !205}
!358 = distinct !{!358, !204, !205}
!359 = distinct !{!359, !204, !205}
!360 = !{!361}
!361 = distinct !{!361, !362, !"gsi_start_bb: argument 0"}
!362 = distinct !{!362, !"gsi_start_bb"}
!363 = distinct !{!363, !204, !205}
!364 = distinct !{!364, !204, !205}
!365 = !{!"function_entry_count", i64 1671804}
!366 = !{!"tree-ssa-structalias.c;find"}
!367 = !{!"branch_weights", i32 1671804, i32 0}
!368 = !{!"branch_weights", i32 1412180, i32 259624}
!369 = !{!"tree-ssa-structalias.c;init_alias_vars"}
!370 = !{!371, !193, i64 8}
!371 = !{!"param_info", !188, i64 0, !193, i64 8, !189, i64 12, !193, i64 16, !193, i64 20, !188, i64 24}
!372 = !{!211, !193, i64 0}
!373 = !{i64 0, i64 4, !202, i64 4, i64 4, !202, i64 8, i64 8, !231}
!374 = !{i64 0, i64 8, !231}
!375 = !{!217, !193, i64 4}
!376 = !{!"tree-ssa-structalias.c;intra_create_variable_infos"}
!377 = !{!311, !188, i64 0}
!378 = !{!"branch_weights", i32 231, i32 1}
!379 = distinct !{!379, !204, !205}
!380 = !{!"branch_weights", i32 0, i32 116, i32 0}
!381 = distinct !{!381, !204, !205}
!382 = !{!249, !188, i64 48}
!383 = distinct !{!383, !204, !205}
!384 = !{!249, !188, i64 56}
!385 = distinct !{!385, !204, !205}
!386 = !{!"function_entry_count", i64 1097872}
!387 = !{!"tree-ssa-structalias.c;find_func_aliases"}
!388 = !{!"branch_weights", i32 -1133847763, i32 22869689, i32 1500903041, i32 -1034292237}
!389 = !{!"branch_weights", i32 0, i32 3160}
!390 = !{!"branch_weights", i32 3117, i32 43}
!391 = !{!"branch_weights", i32 292772, i32 43}
!392 = !{!393, !193, i64 0}
!393 = !{!"VEC_ce_s_base", !193, i64 0, !193, i64 4, !189, i64 8}
!394 = !{!"branch_weights", i32 292815, i32 0}
!395 = !{!"branch_weights", i32 1, i32 171}
!396 = !{!"branch_weights", i32 0, i32 86}
!397 = !{!398, !188, i64 24}
!398 = !{!"ssa_use_operand_d", !188, i64 0, !188, i64 8, !189, i64 16, !188, i64 24}
!399 = !{!"branch_weights", i32 0, i32 172}
!400 = !{!"branch_weights", i32 86, i32 86}
!401 = distinct !{!401, !204, !205}
!402 = distinct !{!402, !204, !205}
!403 = !{!"branch_weights", i32 173, i32 171}
!404 = distinct !{!404, !204, !205}
!405 = !{!"branch_weights", i32 0, i32 207386}
!406 = !{!"branch_weights", i32 207386, i32 0}
!407 = distinct !{!407, !204, !205}
!408 = !{i64 0, i64 4, !202, i64 4, i64 8, !231}
!409 = !{!393, !193, i64 4}
!410 = distinct !{!410, !204, !205}
!411 = distinct !{!411, !204, !205}
!412 = distinct !{!412, !204, !205}
!413 = !{!"branch_weights", i32 1, i32 207385}
!414 = !{!"branch_weights", i32 0, i32 245436}
!415 = !{!"branch_weights", i32 37583, i32 207853}
!416 = !{!"branch_weights", i32 0, i32 415708}
!417 = !{!"branch_weights", i32 207854, i32 207854}
!418 = distinct !{!418, !204, !205}
!419 = !{!"branch_weights", i32 0, i32 207854}
!420 = !{!"branch_weights", i32 38051, i32 207385}
!421 = distinct !{!421, !204, !205}
!422 = !{!208, !193, i64 0}
!423 = distinct !{!423, !204, !205}
!424 = distinct !{!424, !204, !205}
!425 = !{!"branch_weights", i32 6745, i32 200641}
!426 = !{!"branch_weights", i32 0, i32 200641}
!427 = !{!"branch_weights", i32 200641, i32 0}
!428 = distinct !{!428, !204, !205}
!429 = distinct !{!429, !204, !205}
!430 = distinct !{!430, !204, !205}
!431 = !{!"branch_weights", i32 0, i32 450541}
!432 = !{!"branch_weights", i32 408125, i32 42416}
!433 = !{!"branch_weights", i32 0, i32 42416}
!434 = !{!"branch_weights", i32 42404, i32 12}
!435 = !{!"branch_weights", i32 0, i32 42404}
!436 = !{!"branch_weights", i32 12, i32 42404}
!437 = !{!208, !193, i64 4}
!438 = !{!"branch_weights", i32 0, i32 42416, i32 0, i32 0}
!439 = !{!"branch_weights", i32 0, i32 12}
!440 = !{!"branch_weights", i32 12, i32 0}
!441 = !{!"branch_weights", i32 0, i32 42404, i32 0, i32 0}
!442 = !{!"branch_weights", i32 42404, i32 0}
!443 = !{!"branch_weights", i32 42416, i32 0}
!444 = !{!"branch_weights", i32 408125, i32 436785}
!445 = !{!"branch_weights", i32 263653, i32 144472}
!446 = !{!"branch_weights", i32 0, i32 263653}
!447 = !{!"branch_weights", i32 844752, i32 158}
!448 = !{!"branch_weights", i32 0, i32 158}
!449 = !{!"branch_weights", i32 116, i32 844794}
!450 = !{!"branch_weights", i32 115, i32 1}
!451 = !{!"branch_weights", i32 0, i32 844909}
!452 = distinct !{!452, !204, !205}
!453 = distinct !{!453, !204, !205}
!454 = distinct !{!454, !204, !205}
!455 = !{!"branch_weights", i32 1055413, i32 42459}
!456 = !{!"tree-ssa-structalias.c;solve_constraints"}
!457 = !{!"branch_weights", i32 176681, i32 231}
!458 = distinct !{!458, !204, !205}
!459 = !{!222, !188, i64 16}
!460 = !{!222, !188, i64 24}
!461 = !{!222, !188, i64 72}
!462 = !{!222, !188, i64 80}
!463 = !{!222, !188, i64 88}
!464 = !{!222, !188, i64 96}
!465 = !{!222, !188, i64 48}
!466 = !{!222, !188, i64 104}
!467 = !{!222, !188, i64 112}
!468 = !{!"branch_weights", i32 43648, i32 580}
!469 = !{!470, !188, i64 0}
!470 = !{!"simple_bitmap_def", !188, i64 0, !193, i64 8, !193, i64 12, !189, i64 16}
!471 = !{!"branch_weights", i32 43648, i32 0}
!472 = distinct !{!472, !204, !205}
!473 = distinct !{!473, !204, !205}
!474 = distinct !{!474, !204, !205}
!475 = !{!"branch_weights", i32 0, i32 252201}
!476 = !{!"branch_weights", i32 252085, i32 116}
!477 = !{!"branch_weights", i32 116, i32 252085}
!478 = !{!"branch_weights", i32 116, i32 251969}
!479 = !{!"branch_weights", i32 250259, i32 527, i32 1183}
!480 = !{!"branch_weights", i32 232, i32 295}
!481 = !{!"branch_weights", i32 0, i32 232}
!482 = !{!"branch_weights", i32 232, i32 0}
!483 = !{!"branch_weights", i32 295, i32 0}
!484 = !{!"branch_weights", i32 727, i32 456}
!485 = !{!"branch_weights", i32 659, i32 524}
!486 = !{!"branch_weights", i32 0, i32 1183}
!487 = !{!"branch_weights", i32 0, i32 251173}
!488 = !{!"branch_weights", i32 43276, i32 207897}
!489 = !{!"branch_weights", i32 165364, i32 85809}
!490 = !{!"branch_weights", i32 1183, i32 0}
!491 = distinct !{!491, !204, !205}
!492 = !{!"branch_weights", i32 250259, i32 0}
!493 = !{!"branch_weights", i32 250027, i32 232}
!494 = !{!"branch_weights", i32 249990, i32 269}
!495 = !{!"branch_weights", i32 42573, i32 207417}
!496 = !{!"branch_weights", i32 0, i32 249990}
!497 = !{!"branch_weights", i32 0, i32 269}
!498 = !{!"branch_weights", i32 269, i32 0}
!499 = distinct !{!499, !204, !205}
!500 = !{!501, !188, i64 0}
!501 = !{!"scc_info", !188, i64 0, !188, i64 8, !188, i64 16, !188, i64 24, !193, i64 32, !188, i64 40}
!502 = !{!501, !188, i64 24}
!503 = !{!"branch_weights", i32 1670, i32 42558}
!504 = distinct !{!504, !204, !205}
!505 = !{!"branch_weights", i32 1786, i32 42442}
!506 = distinct !{!506, !204, !205}
!507 = !{!"branch_weights", i32 43569, i32 659}
!508 = !{!"branch_weights", i32 0, i32 659}
!509 = !{!"branch_weights", i32 661, i32 1033}
!510 = !{!"branch_weights", i32 1034, i32 1}
!511 = !{!"branch_weights", i32 1913, i32 1034}
!512 = !{!"branch_weights", i32 1, i32 658}
!513 = !{!"branch_weights", i32 657, i32 2}
!514 = !{!"branch_weights", i32 658, i32 1}
!515 = !{!"branch_weights", i32 659, i32 0}
!516 = !{!"branch_weights", i32 659, i32 1035}
!517 = distinct !{!517, !204, !205}
!518 = !{!519, !188, i64 8}
!519 = !{!"equiv_class_label", !193, i64 0, !193, i64 4, !188, i64 8}
!520 = !{!519, !193, i64 0}
!521 = !{!"branch_weights", i32 2157, i32 42612}
!522 = !{!519, !193, i64 4}
!523 = !{!"branch_weights", i32 582, i32 77}
!524 = !{!"branch_weights", i32 2157, i32 0}
!525 = !{!"branch_weights", i32 77, i32 0}
!526 = distinct !{!526, !204, !205}
!527 = distinct !{!527, !204, !205}
!528 = !{!"branch_weights", i32 272, i32 43956}
!529 = !{!"branch_weights", i32 272, i32 0}
!530 = distinct !{!530, !204, !205}
!531 = !{!"branch_weights", i32 88456, i32 0}
!532 = distinct !{!532, !204, !205}
!533 = !{!"branch_weights", i32 0, i32 252085}
!534 = !{!"branch_weights", i32 293520, i32 210650}
!535 = !{!"branch_weights", i32 293520, i32 0}
!536 = !{!"branch_weights", i32 806, i32 292714}
!537 = !{!"branch_weights", i32 293373, i32 0}
!538 = !{!"branch_weights", i32 250838, i32 42535}
!539 = !{!"branch_weights", i32 0, i32 42535}
!540 = !{!"branch_weights", i32 210650, i32 0}
!541 = !{!"branch_weights", i32 659, i32 209991}
!542 = distinct !{!542, !204, !205}
!543 = !{!"branch_weights", i32 0, i32 209779}
!544 = !{!"branch_weights", i32 1019, i32 208760}
!545 = !{!"branch_weights", i32 208077, i32 1702}
!546 = !{!"branch_weights", i32 0, i32 1702}
!547 = !{!"branch_weights", i32 1586, i32 116}
!548 = !{!"branch_weights", i32 0, i32 1586}
!549 = !{!"branch_weights", i32 1354, i32 232}
!550 = !{!"branch_weights", i32 207950, i32 42309}
!551 = !{!"branch_weights", i32 207913, i32 42346}
!552 = distinct !{!552, !204, !205}
!553 = !{!"branch_weights", i32 0, i32 43416}
!554 = !{!"branch_weights", i32 43300, i32 116}
!555 = !{!"branch_weights", i32 448, i32 42852}
!556 = !{!"branch_weights", i32 116, i32 332}
!557 = distinct !{!557, !204, !205}
!558 = !{!"branch_weights", i32 527, i32 251442}
!559 = !{!"branch_weights", i32 527, i32 0}
!560 = !{!"branch_weights", i32 250259, i32 1183}
!561 = !{!"branch_weights", i32 0, i32 250259}
!562 = !{!"branch_weights", i32 269, i32 249990}
!563 = distinct !{!563, !204, !205}
!564 = distinct !{!564, !204, !205}
!565 = !{!"branch_weights", i32 0, i32 88456}
!566 = !{!"branch_weights", i32 88340, i32 116}
!567 = !{!"branch_weights", i32 87849, i32 491}
!568 = !{!"branch_weights", i32 45314, i32 42535}
!569 = distinct !{!569, !204, !205}
!570 = !{!"branch_weights", i32 43638, i32 590}
!571 = !{!"branch_weights", i32 0, i32 590}
!572 = distinct !{!572, !204, !205}
!573 = !{!"branch_weights", i32 43996, i32 232}
!574 = distinct !{!574, !204, !205}
!575 = !{!"branch_weights", i32 1693, i32 42535}
!576 = !{!"branch_weights", i32 971, i32 722}
!577 = !{!"branch_weights", i32 490, i32 232}
!578 = !{!"branch_weights", i32 35, i32 197}
!579 = !{!"branch_weights", i32 385, i32 140}
!580 = !{!"branch_weights", i32 337, i32 0}
!581 = !{!"branch_weights", i32 231, i32 88225}
!582 = distinct !{!582, !204, !205}
!583 = !{!584, !188, i64 0}
!584 = !{!"topo_info", !188, i64 0, !188, i64 8}
!585 = !{!584, !188, i64 8}
!586 = !{!"branch_weights", i32 1, i32 241}
!587 = !{!"branch_weights", i32 44116, i32 555}
!588 = !{!"branch_weights", i32 1378, i32 42738}
!589 = !{!"branch_weights", i32 241, i32 89101}
!590 = distinct !{!590, !204, !205}
!591 = !{!"branch_weights", i32 0, i32 2054}
!592 = !{!593, !193, i64 0}
!593 = !{!"VEC_unsigned_base", !193, i64 0, !193, i64 4, !189, i64 8}
!594 = !{!"branch_weights", i32 121, i32 1933}
!595 = !{!"branch_weights", i32 1933, i32 0}
!596 = !{!593, !193, i64 4}
!597 = distinct !{!597, !204, !205}
!598 = distinct !{!598, !204, !205}
!599 = !{!"branch_weights", i32 1220, i32 713}
!600 = distinct !{!600, !204, !205}
!601 = !{!"branch_weights", i32 713, i32 0}
!602 = !{!211, !188, i64 64}
!603 = !{!"branch_weights", i32 0, i32 713}
!604 = !{!"branch_weights", i32 441, i32 967}
!605 = !{!"branch_weights", i32 695, i32 272}
!606 = !{!"branch_weights", i32 713, i32 695}
!607 = !{!"branch_weights", i32 0, i32 695}
!608 = !{!"branch_weights", i32 117, i32 578}
!609 = !{!"branch_weights", i32 0, i32 117}
!610 = !{!"branch_weights", i32 117, i32 0}
!611 = !{!"branch_weights", i32 155, i32 502}
!612 = !{!"branch_weights", i32 539, i32 1}
!613 = !{!"branch_weights", i32 1954, i32 539}
!614 = !{!"branch_weights", i32 1, i32 146}
!615 = !{!"branch_weights", i32 139, i32 38}
!616 = !{!"branch_weights", i32 146, i32 31}
!617 = !{!"branch_weights", i32 117, i32 30}
!618 = !{!"branch_weights", i32 117, i32 540}
!619 = !{!"branch_weights", i32 0, i32 540}
!620 = !{!"branch_weights", i32 35, i32 0}
!621 = !{!"branch_weights", i32 232, i32 308}
!622 = !{!"branch_weights", i32 116, i32 116}
!623 = distinct !{!623, !205}
!624 = distinct !{!624, !204, !205}
!625 = !{!"branch_weights", i32 0, i32 412, i32 166}
!626 = !{!"branch_weights", i32 412, i32 0}
!627 = !{!"branch_weights", i32 0, i32 412}
!628 = !{!"branch_weights", i32 450, i32 815}
!629 = !{!"branch_weights", i32 852, i32 1}
!630 = !{!"branch_weights", i32 2803, i32 852}
!631 = !{!"branch_weights", i32 1, i32 441}
!632 = !{!"branch_weights", i32 434, i32 38}
!633 = !{!"branch_weights", i32 441, i32 31}
!634 = !{!"branch_weights", i32 412, i32 30}
!635 = !{!"branch_weights", i32 412, i32 853}
!636 = !{!"branch_weights", i32 0, i32 853}
!637 = !{!"branch_weights", i32 548, i32 305}
!638 = !{!"branch_weights", i32 134, i32 414}
!639 = !{!"branch_weights", i32 853, i32 0}
!640 = distinct !{!640, !205}
!641 = distinct !{!641, !204, !205}
!642 = !{!"branch_weights", i32 116, i32 296}
!643 = !{!"branch_weights", i32 296, i32 0}
!644 = !{!"branch_weights", i32 166, i32 0}
!645 = !{!"branch_weights", i32 0, i32 166}
!646 = !{!"branch_weights", i32 153, i32 13}
!647 = !{!"branch_weights", i32 0, i32 13}
!648 = !{!"branch_weights", i32 13, i32 37}
!649 = !{!"branch_weights", i32 28, i32 9}
!650 = !{!"branch_weights", i32 0, i32 28}
!651 = !{!"branch_weights", i32 1, i32 207}
!652 = !{!"branch_weights", i32 13, i32 0}
!653 = !{!"branch_weights", i32 207, i32 1}
!654 = !{!"branch_weights", i32 0, i32 37}
!655 = distinct !{!655, !204, !205}
!656 = !{!"branch_weights", i32 117, i32 49}
!657 = !{!"branch_weights", i32 49, i32 0}
!658 = distinct !{!658, !204, !205}
!659 = !{!"branch_weights", i32 274, i32 439}
!660 = !{!"branch_weights", i32 0, i32 439}
!661 = !{!"branch_weights", i32 457, i32 454}
!662 = !{!"branch_weights", i32 471, i32 1}
!663 = !{!"branch_weights", i32 2275, i32 471}
!664 = !{!"branch_weights", i32 1, i32 438}
!665 = !{!"branch_weights", i32 421, i32 18}
!666 = !{!"branch_weights", i32 438, i32 1}
!667 = !{!"branch_weights", i32 439, i32 0}
!668 = !{!"branch_weights", i32 439, i32 472}
!669 = !{!"branch_weights", i32 0, i32 472}
!670 = !{!"branch_weights", i32 276, i32 196}
!671 = !{!"branch_weights", i32 31, i32 165}
!672 = !{!"branch_weights", i32 31, i32 0}
!673 = distinct !{!673, !204, !205}
!674 = !{!"branch_weights", i32 0, i32 121}
!675 = !{!"branch_weights", i32 231, i32 11}
!676 = distinct !{!676, !204, !205}
!677 = !{!"function_entry_count", i64 42807}
!678 = !{!"tree-ssa-structalias.c;find_what_var_points_to"}
!679 = !{!"branch_weights", i32 116, i32 42691}
!680 = !{!"branch_weights", i32 42845, i32 85588}
!681 = !{!"branch_weights", i32 85625, i32 1}
!682 = !{!"branch_weights", i32 44625, i32 85625}
!683 = !{!"branch_weights", i32 1, i32 42836}
!684 = !{!"branch_weights", i32 42829, i32 38}
!685 = !{!"branch_weights", i32 42836, i32 31}
!686 = !{!"branch_weights", i32 42807, i32 30}
!687 = !{!"branch_weights", i32 42807, i32 85626}
!688 = !{!"branch_weights", i32 116, i32 85510}
!689 = !{!"branch_weights", i32 114, i32 147, i32 42565, i32 0, i32 42684}
!690 = !{!"branch_weights", i32 114, i32 0}
!691 = !{!"branch_weights", i32 85626, i32 0}
!692 = distinct !{!692, !204, !205}
!693 = !{!"branch_weights", i32 42807, i32 0}
!694 = !{!"branch_weights", i32 85510, i32 116}
!695 = !{!"branch_weights", i32 0, i32 116, i32 0, i32 0}
!696 = distinct !{!696, !204, !205}
!697 = !{!698, !188, i64 0}
!698 = !{!"shared_bitmap_info", !188, i64 0, !193, i64 8}
!699 = !{!698, !193, i64 8}
!700 = !{!"branch_weights", i32 230, i32 42577}
!701 = !{!"branch_weights", i32 230, i32 0}
!702 = !{!"function_entry_count", i64 42577}
!703 = !{!"tree-ssa-structalias.c;shared_bitmap_eq"}
!704 = !{!"function_entry_count", i64 44228}
!705 = !{!"tree-ssa-structalias.c;new_var_info"}
!706 = !{!"branch_weights", i32 928, i32 43300}
!707 = !{!"branch_weights", i32 841, i32 42459}
!708 = !{!"branch_weights", i32 725, i32 116}
!709 = !{!220, !193, i64 4}
!710 = !{!"branch_weights", i32 548, i32 43680}
!711 = !{!"function_entry_count", i64 251969}
!712 = !{!"tree-ssa-structalias.c;process_constraint"}
!713 = !{!"branch_weights", i32 0, i32 251969}
!714 = !{!"branch_weights", i32 251969, i32 0}
!715 = !{!"branch_weights", i32 250902, i32 1067}
!716 = !{!"branch_weights", i32 902, i32 251067}
!717 = !{!718, !188, i64 0}
!718 = !{!"heapvar_map", !719, i64 0, !194, i64 24}
!719 = !{!"tree_map", !720, i64 0, !193, i64 8, !188, i64 16}
!720 = !{!"tree_map_base", !188, i64 0}
!721 = !{!718, !194, i64 24}
!722 = !{!718, !188, i64 16}
!723 = !{!718, !193, i64 8}
!724 = !{!"function_entry_count", i64 292631}
!725 = !{!"tree-ssa-structalias.c;get_vi_for_tree"}
!726 = !{!"branch_weights", i32 42832, i32 249799}
!727 = !{!"branch_weights", i32 42459, i32 373}
!728 = !{!"branch_weights", i32 1818603888, i32 15976336}
!729 = !{!"branch_weights", i32 78, i32 42754}
!730 = !{!"branch_weights", i32 0, i32 42832}
!731 = !{!"branch_weights", i32 42832, i32 0}
!732 = !{!"branch_weights", i32 42575, i32 257}
!733 = !{!"branch_weights", i32 0, i32 257}
!734 = !{!"branch_weights", i32 116, i32 141}
!735 = !{!"branch_weights", i32 78, i32 63, i32 0}
!736 = !{!"branch_weights", i32 63, i32 0}
!737 = !{!"branch_weights", i32 373, i32 42459}
!738 = !{!"branch_weights", i32 42754, i32 78}
!739 = !{!"branch_weights", i32 0, i32 78}
!740 = !{!741, !193, i64 0}
!741 = !{!"VEC_fieldoff_s_base", !193, i64 0, !193, i64 4, !189, i64 8}
!742 = !{!"branch_weights", i32 78, i32 0}
!743 = !{!"branch_weights", i32 0, i32 624}
!744 = !{!"branch_weights", i32 546, i32 78}
!745 = !{!"branch_weights", i32 78, i32 546}
!746 = !{!"branch_weights", i32 546, i32 0}
!747 = !{!748, !194, i64 0}
!748 = !{!"fieldoff", !194, i64 0, !194, i64 8, !193, i64 16, !193, i64 16, !193, i64 16}
!749 = !{!"branch_weights", i32 0, i32 546}
!750 = distinct !{!750, !204, !205}
!751 = distinct !{!751, !204, !205}
!752 = !{!748, !194, i64 8}
!753 = !{!"branch_weights", i32 1, i32 155}
!754 = !{!"branch_weights", i32 0, i32 468}
!755 = !{!"branch_weights", i32 468, i32 0}
!756 = !{!"branch_weights", i32 624, i32 312}
!757 = !{!"branch_weights", i32 156, i32 312}
!758 = !{!"branch_weights", i32 312, i32 0}
!759 = !{!"branch_weights", i32 0, i32 312}
!760 = !{!"branch_weights", i32 155, i32 781}
!761 = distinct !{!761, !204, !205}
!762 = !{!"function_entry_count", i64 944752}
!763 = !{!"tree-ssa-structalias.c;type_could_have_pointers"}
!764 = !{!"branch_weights", i32 650243, i32 293613, i32 0, i32 818, i32 78, i32 0}
!765 = !{!"function_entry_count", i64 42832}
!766 = !{!"tree-ssa-structalias.c;alias_get_name"}
!767 = !{!"branch_weights", i32 42459, i32 0}
!768 = !{!"tree-ssa-structalias.c;push_fields_onto_fieldstack"}
!769 = !{!"branch_weights", i32 936, i32 0}
!770 = !{!"branch_weights", i32 0, i32 936}
!771 = !{!"branch_weights", i32 78, i32 858}
!772 = !{!"branch_weights", i32 546, i32 312}
!773 = !{!"branch_weights", i32 390, i32 156}
!774 = !{!"branch_weights", i32 0, i32 390}
!775 = !{!"branch_weights", i32 390, i32 0}
!776 = !{!"branch_weights", i32 78, i32 468}
!777 = !{!741, !193, i64 4}
!778 = !{!"branch_weights", i32 78, i32 390}
!779 = !{!"branch_weights", i32 468, i32 78, i32 0}
!780 = !{!"branch_weights", i32 155, i32 1717}
!781 = distinct !{!781, !204, !205}
!782 = !{!"tree-ssa-structalias.c;insert_vi_for_tree"}
!783 = !{!"function_entry_count", i64 1248}
!784 = !{!"tree-ssa-structalias.c;fieldoff_compare"}
!785 = !{!"branch_weights", i32 546, i32 702}
!786 = !{!"branch_weights", i32 702, i32 0}
!787 = !{!"function_entry_count", i64 12}
!788 = !{!"tree-ssa-structalias.c;get_constraint_for"}
!789 = !{!"tree-ssa-structalias.c;get_constraint_for_ptr_offset"}
!790 = !{!"branch_weights", i32 1, i32 191}
!791 = distinct !{!791, !204, !205}
!792 = !{!"branch_weights", i32 191, i32 1}
!793 = distinct !{!793, !204, !205}
!794 = !{!"function_entry_count", i64 42416}
!795 = !{!"tree-ssa-structalias.c;process_all_all_constraints"}
!796 = !{!"branch_weights", i32 0, i32 84832}
!797 = !{!"branch_weights", i32 42416, i32 42416}
!798 = distinct !{!798, !204, !205}
!799 = distinct !{!799, !204, !205}
!800 = distinct !{!800, !204, !205}
!801 = distinct !{!801, !204, !205}
!802 = !{!"function_entry_count", i64 320}
!803 = !{!"tree-ssa-structalias.c;do_deref"}
!804 = !{!"branch_weights", i32 0, i32 640}
!805 = !{!"branch_weights", i32 320, i32 320}
!806 = !{!"branch_weights", i32 0, i32 320, i32 0, i32 0}
!807 = distinct !{!807, !204, !205}
!808 = distinct !{!808, !204, !205}
!809 = !{!"function_entry_count", i64 331282}
!810 = !{!"tree-ssa-structalias.c;get_constraint_for_1"}
!811 = !{!"branch_weights", i32 0, i32 331282}
!812 = !{!"branch_weights", i32 113, i32 331169}
!813 = !{!"branch_weights", i32 0, i32 113}
!814 = !{!"branch_weights", i32 0, i32 331169}
!815 = !{!"branch_weights", i32 100, i32 13}
!816 = !{!"branch_weights", i32 187, i32 330982}
!817 = !{!"branch_weights", i32 187, i32 0}
!818 = !{!"branch_weights", i32 0, i32 399, i32 38068, i32 250264, i32 42251}
!819 = !{!"branch_weights", i32 399, i32 0}
!820 = !{!"branch_weights", i32 0, i32 798}
!821 = !{!"branch_weights", i32 399, i32 399}
!822 = !{!"branch_weights", i32 25, i32 374}
!823 = !{!"branch_weights", i32 0, i32 320, i32 37441, i32 0, i32 307, i32 0}
!824 = !{!"branch_weights", i32 76207, i32 37241, i32 0, i32 0, i32 320}
!825 = !{!"branch_weights", i32 0, i32 42, i32 278, i32 0}
!826 = !{!"branch_weights", i32 187, i32 76020}
!827 = distinct !{!827, !204, !205}
!828 = !{!"branch_weights", i32 187, i32 37561}
!829 = !{!"branch_weights", i32 0, i32 37748}
!830 = !{!"branch_weights", i32 37748, i32 0}
!831 = !{!"branch_weights", i32 0, i32 11976960, i32 102400, i32 0}
!832 = !{!"branch_weights", i32 37054, i32 374}
!833 = !{!208, !194, i64 8}
!834 = !{!"branch_weights", i32 0, i32 37054, i32 320, i32 0}
!835 = !{!"branch_weights", i32 37054, i32 0}
!836 = !{!"branch_weights", i32 1, i32 37053}
!837 = !{!"branch_weights", i32 26554, i32 232824}
!838 = !{!"branch_weights", i32 10500, i32 222324}
!839 = !{!"branch_weights", i32 222324, i32 26554}
!840 = !{!"branch_weights", i32 26554, i32 0}
!841 = !{!"branch_weights", i32 0, i32 37054}
!842 = !{!"branch_weights", i32 37053, i32 222325}
!843 = distinct !{!843, !204, !205}
!844 = distinct !{!844, !204, !205}
!845 = distinct !{!845, !204, !205}
!846 = !{!"branch_weights", i32 0, i32 320}
!847 = !{!"branch_weights", i32 320, i32 0}
!848 = !{!"branch_weights", i32 12, i32 308}
!849 = !{!"branch_weights", i32 250264, i32 0}
!850 = !{!"function_entry_count", i64 458124}
!851 = !{!"tree-ssa-structalias.c;get_constraint_for_ssa_var"}
!852 = !{!"branch_weights", i32 0, i32 42251, i32 165609, i32 0, i32 250264}
!853 = !{!"branch_weights", i32 0, i32 84655, i32 165609, i32 0}
!854 = !{!"branch_weights", i32 250264, i32 207860}
!855 = !{!"branch_weights", i32 84655, i32 165609}
!856 = !{!"branch_weights", i32 0, i32 292515}
!857 = !{!"branch_weights", i32 254954, i32 37561}
!858 = !{!"branch_weights", i32 0, i32 254954}
!859 = distinct !{!859, !204, !205}
!860 = !{!"branch_weights", i32 292485, i32 30}
!861 = !{!"branch_weights", i32 0, i32 30}
!862 = distinct !{!862, !204, !205}
!863 = !{!"tree-ssa-structalias.c;make_constraint_to"}
!864 = !{!"function_entry_count", i64 232}
!865 = !{!"tree-ssa-structalias.c;init_scc_info"}
!866 = !{!501, !193, i64 32}
!867 = !{!501, !188, i64 8}
!868 = !{!501, !188, i64 16}
!869 = !{!"branch_weights", i32 231, i32 176681}
!870 = distinct !{!870, !204, !205}
!871 = !{!501, !188, i64 40}
!872 = !{!"function_entry_count", i64 45068}
!873 = !{!"tree-ssa-structalias.c;equiv_class_label_eq"}
!874 = !{!"branch_weights", i32 44227, i32 841}
!875 = !{!"function_entry_count", i64 86855}
!876 = !{!"tree-ssa-structalias.c;condense_visit"}
!877 = !{!"branch_weights", i32 86855, i32 0}
!878 = !{!"branch_weights", i32 43934, i32 42921}
!879 = !{!"branch_weights", i32 0, i32 42921}
!880 = !{!"branch_weights", i32 43649, i32 84394}
!881 = !{!"branch_weights", i32 85121, i32 1}
!882 = !{!"branch_weights", i32 445403, i32 85121}
!883 = !{!"branch_weights", i32 1, i32 43235}
!884 = !{!"branch_weights", i32 42823, i32 728}
!885 = !{!"branch_weights", i32 43235, i32 316}
!886 = !{!"branch_weights", i32 42921, i32 315}
!887 = !{!"branch_weights", i32 42921, i32 85122}
!888 = !{!"branch_weights", i32 42674, i32 42448}
!889 = !{!"branch_weights", i32 42674, i32 0}
!890 = !{!"branch_weights", i32 0, i32 42674}
!891 = distinct !{!891, !204, !205}
!892 = !{!"branch_weights", i32 44544, i32 42311}
!893 = !{!"branch_weights", i32 0, i32 42311}
!894 = !{!"branch_weights", i32 59409, i32 67666}
!895 = !{!"branch_weights", i32 84763, i32 1}
!896 = !{!"branch_weights", i32 1494553, i32 84763}
!897 = !{!"branch_weights", i32 1, i32 42690}
!898 = !{!"branch_weights", i32 25973, i32 17098}
!899 = !{!"branch_weights", i32 42690, i32 381}
!900 = !{!"branch_weights", i32 42311, i32 380}
!901 = !{!"branch_weights", i32 42311, i32 84764}
!902 = !{!"branch_weights", i32 84379, i32 385}
!903 = !{!"branch_weights", i32 42511, i32 41868}
!904 = !{!"branch_weights", i32 84379, i32 0}
!905 = !{!"branch_weights", i32 42156, i32 42223}
!906 = distinct !{!906, !204, !205}
!907 = !{!"branch_weights", i32 44699, i32 42156}
!908 = !{!"branch_weights", i32 0, i32 86855}
!909 = !{!"branch_weights", i32 44613, i32 42242}
!910 = !{!"branch_weights", i32 86, i32 42156}
!911 = !{!"branch_weights", i32 42156, i32 0}
!912 = !{!"branch_weights", i32 42078, i32 78}
!913 = !{!"branch_weights", i32 0, i32 42156}
!914 = !{!"branch_weights", i32 78, i32 42078}
!915 = distinct !{!915, !204, !205}
!916 = !{!"branch_weights", i32 44699, i32 0}
!917 = !{!"branch_weights", i32 645, i32 41511}
!918 = !{!"function_entry_count", i64 44382}
!919 = !{!"tree-ssa-structalias.c;label_visit"}
!920 = !{!"branch_weights", i32 44382, i32 0}
!921 = !{!"branch_weights", i32 43655, i32 727}
!922 = !{!"branch_weights", i32 1539, i32 42843}
!923 = !{!"branch_weights", i32 0, i32 42843}
!924 = !{!"branch_weights", i32 43571, i32 84394}
!925 = !{!"branch_weights", i32 445013, i32 85121}
!926 = !{!"branch_weights", i32 1, i32 43157}
!927 = !{!"branch_weights", i32 42745, i32 728}
!928 = !{!"branch_weights", i32 43157, i32 316}
!929 = !{!"branch_weights", i32 42843, i32 315}
!930 = !{!"branch_weights", i32 42843, i32 85122}
!931 = !{!"branch_weights", i32 42596, i32 42526}
!932 = !{!"branch_weights", i32 78, i32 85044}
!933 = !{!"branch_weights", i32 0, i32 85044}
!934 = distinct !{!934, !204, !205}
!935 = !{!"branch_weights", i32 1414, i32 42968}
!936 = !{!"branch_weights", i32 0, i32 1414}
!937 = !{!"branch_weights", i32 272, i32 44110}
!938 = !{!"branch_weights", i32 1575, i32 42535}
!939 = !{!"tree-ssa-structalias.c;unite"}
!940 = !{!"function_entry_count", i64 42535}
!941 = !{!"tree-ssa-structalias.c;unify_nodes"}
!942 = !{!"branch_weights", i32 42535, i32 0}
!943 = !{!"branch_weights", i32 42454, i32 81}
!944 = !{!"branch_weights", i32 0, i32 81}
!945 = distinct !{!945, !204, !205}
!946 = distinct !{!946, !204, !205}
!947 = distinct !{!947, !204, !205}
!948 = !{!"tree-ssa-structalias.c;constraint_less"}
!949 = !{!"branch_weights", i32 463, i32 116}
!950 = !{!"branch_weights", i32 232, i32 231}
!951 = !{!"branch_weights", i32 347, i32 232}
!952 = !{!"tree-ssa-structalias.c;add_graph_edge"}
!953 = !{!"tree-ssa-structalias.c;free_scc_info"}
!954 = !{!"function_entry_count", i64 912}
!955 = !{!"tree-ssa-structalias.c;insert_into_complex"}
!956 = !{!"branch_weights", i32 375, i32 537}
!957 = !{!"branch_weights", i32 333, i32 579}
!958 = !{!"branch_weights", i32 232, i32 347}
!959 = !{!"branch_weights", i32 579, i32 0}
!960 = !{!"branch_weights", i32 232, i32 680}
!961 = !{!"branch_weights", i32 8, i32 529}
!962 = !{!"VP", i32 1, i64 912, i64 0, i64 680, i64 8, i64 232}
!963 = !{!"function_entry_count", i64 45805}
!964 = !{!"tree-ssa-structalias.c;scc_visit"}
!965 = !{!"branch_weights", i32 45805, i32 0}
!966 = !{!"branch_weights", i32 44983, i32 822}
!967 = !{!"branch_weights", i32 0, i32 822}
!968 = !{!"branch_weights", i32 920, i32 1152}
!969 = !{!"branch_weights", i32 1249, i32 1}
!970 = !{!"branch_weights", i32 7890, i32 1249}
!971 = !{!"branch_weights", i32 1, i32 881}
!972 = !{!"branch_weights", i32 844, i32 98}
!973 = !{!"branch_weights", i32 881, i32 61}
!974 = !{!"branch_weights", i32 822, i32 60}
!975 = !{!"branch_weights", i32 822, i32 1250}
!976 = !{!"branch_weights", i32 0, i32 1250}
!977 = !{!"branch_weights", i32 491, i32 759}
!978 = !{!"branch_weights", i32 491, i32 0}
!979 = !{!"branch_weights", i32 0, i32 491}
!980 = distinct !{!980, !204, !205}
!981 = !{!"branch_weights", i32 0, i32 45805}
!982 = distinct !{!982, !204, !205}
!983 = distinct !{!983, !204, !205}
!984 = !{!"function_entry_count", i64 1933}
!985 = !{!"tree-ssa-structalias.c;topo_visit"}
!986 = !{!"branch_weights", i32 1245, i32 688}
!987 = !{!"branch_weights", i32 35, i32 653}
!988 = !{!"branch_weights", i32 787, i32 1066}
!989 = !{!"branch_weights", i32 1164, i32 1}
!990 = !{!"branch_weights", i32 7403, i32 1164}
!991 = !{!"branch_weights", i32 1, i32 717}
!992 = !{!"branch_weights", i32 649, i32 99}
!993 = !{!"branch_weights", i32 717, i32 31}
!994 = !{!"branch_weights", i32 688, i32 30}
!995 = !{!"branch_weights", i32 688, i32 1165}
!996 = !{!"branch_weights", i32 555, i32 610}
!997 = distinct !{!997, !204, !205}
!998 = !{!"branch_weights", i32 0, i32 1933}
!999 = !{!"branch_weights", i32 512, i32 1421}
!1000 = !{!"function_entry_count", i64 153}
!1001 = !{!"tree-ssa-structalias.c;solution_set_expand"}
!1002 = !{!"branch_weights", i32 0, i32 153}
!1003 = !{!"branch_weights", i32 191, i32 576}
!1004 = !{!"branch_weights", i32 613, i32 1}
!1005 = !{!"branch_weights", i32 1939, i32 613}
!1006 = !{!"branch_weights", i32 1, i32 182}
!1007 = !{!"branch_weights", i32 175, i32 38}
!1008 = !{!"branch_weights", i32 182, i32 31}
!1009 = !{!"branch_weights", i32 153, i32 30}
!1010 = !{!"branch_weights", i32 153, i32 614}
!1011 = !{!"branch_weights", i32 0, i32 614}
!1012 = distinct !{!1012, !204, !205}
!1013 = !{!"branch_weights", i32 153, i32 0}
!1014 = distinct !{!1014, !204, !205}
!1015 = distinct !{!1015, !204, !205}
