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
%struct.constraint_expr = type { i32, i32, i64 }
%struct.variable_info = type { i32, i8, ptr, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.constraint = type { %struct.constraint_expr, %struct.constraint_expr }
%struct.constraint_graph = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bitmap_iterator = type { ptr, ptr, i32, i64 }
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
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.VEC_varinfo_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_constraint_t_base = type { i32, i32, [1 x ptr] }
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_list = type { %struct.tree_common, ptr, ptr }
%struct.tree_string = type { %struct.tree_common, i32, [1 x i8] }
%struct.gimple_seq_node_d = type { ptr, ptr, ptr }
%struct.VEC_tree_base = type { i32, i32, [1 x ptr] }
%struct.tree_ssa_name = type { %struct.tree_common, ptr, ptr, i32, ptr, %struct.ssa_use_operand_d }
%struct.shared_bitmap_info = type { ptr, i32 }
%struct.heapvar_map = type { %struct.tree_map, i64 }
%struct.tree_map = type { %struct.tree_map_base, i32, ptr }
%struct.tree_map_base = type { ptr }
%struct.tree_var_decl = type { %struct.tree_decl_with_vis, ptr }
%struct.tree_parm_decl = type { %struct.tree_decl_with_rtl, ptr, ptr }
%struct.tree_result_decl = type { %struct.tree_decl_with_rtl, ptr }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.fieldoff = type { i64, i64, i8 }
%struct.VEC_fieldoff_s_base = type { i32, i32, [1 x %struct.fieldoff] }
%struct.tree_field_decl = type { %struct.tree_decl_common, ptr, ptr, ptr, ptr, ptr }
%struct.VEC_ce_s_base = type { i32, i32, [1 x %struct.constraint_expr] }
%struct.tree_exp = type { %struct.tree_common, i32, ptr, [1 x ptr] }
%struct.gimple_statement_asm = type { %struct.gimple_statement_with_memory_ops_base, ptr, i8, i8, i8, i8, [1 x ptr] }
%struct.gimple_statement_with_memory_ops_base = type { %struct.gimple_statement_with_ops_base, ptr, ptr }
%struct.gimple_statement_with_ops_base = type { %struct.gimple_statement_base, ptr, ptr }
%struct.scc_info = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.simple_bitmap_def = type { ptr, i32, i32, [1 x i64] }
%struct.topo_info = type { ptr, ptr }
%struct.equiv_class_label = type { i32, i32, ptr }
%struct.VEC_unsigned_base = type { i32, i32, [1 x i32] }

@stderr = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
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
@constraints = internal global ptr null, align 8
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
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
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

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !625 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !626
  tail call fastcc void @dump_constraint(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !625 !PGOFuncName !630 {
  %3 = load i32, ptr %1, align 8, !tbaa !631
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
  %10 = load i32, ptr %9, align 4, !tbaa !636
  %11 = tail call fastcc ptr @get_varinfo(i32 noundef %10) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !637
  %14 = tail call i32 @fputs(ptr %13, ptr %0)
  %15 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !639
  switch i64 %16, label %19 [
    i64 -9223372036854775808, label %17
    i64 0, label %21
  ]

17:                                               ; preds = %8
  %18 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %0)
  br label %21

19:                                               ; preds = %8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %16) #23
  br label %21

21:                                               ; preds = %8, %19, %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 3, i64 1, ptr %0)
  %23 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !640
  switch i32 %24, label %29 [
    i32 2, label %26
    i32 1, label %25
  ]

25:                                               ; preds = %21
  br label %26

26:                                               ; preds = %21, %25
  %27 = phi i32 [ 42, %25 ], [ 38, %21 ]
  %28 = tail call i32 @fputc(i32 %27, ptr %0)
  br label %29

29:                                               ; preds = %26, %21
  %30 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !641
  %32 = tail call fastcc ptr @get_varinfo(i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.variable_info, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !637
  %35 = tail call i32 @fputs(ptr %34, ptr %0)
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !642
  switch i64 %37, label %40 [
    i64 -9223372036854775808, label %38
    i64 0, label %42
  ]

38:                                               ; preds = %29
  %39 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 10, i64 1, ptr %0)
  br label %42

40:                                               ; preds = %29
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef %37) #23
  br label %42

42:                                               ; preds = %29, %40, %38
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraints() local_unnamed_addr #0 !prof !625 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !626
  tail call fastcc void @dump_constraints(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraints(ptr nocapture noundef %0) unnamed_addr #0 !prof !625 !PGOFuncName !643 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !626
  tail call fastcc void @dump_constraint(ptr noundef %0, ptr noundef %8) #23
  %9 = add nuw nsw i32 %7, 1
  %10 = load ptr, ptr @constraints, align 8
  %11 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #23, !range !644
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !645

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraint_graph() local_unnamed_addr #0 !prof !625 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !626
  tail call fastcc void @dump_constraint_graph(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_graph(ptr nocapture noundef %0) unnamed_addr #0 !prof !625 !PGOFuncName !647 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @graph, align 8, !tbaa !626
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 47, i64 1, ptr %0)
  tail call fastcc void @dump_constraints(ptr noundef %0) #23
  %7 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 3, i64 1, ptr %0)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 41, i64 1, ptr %0)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 17, i64 1, ptr %0)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 29, i64 1, ptr %0)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 33, i64 1, ptr %0)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 45, i64 1, ptr %0)
  %13 = load ptr, ptr @varmap, align 8
  %14 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %13) #23
  %15 = load ptr, ptr @graph, align 8, !tbaa !626
  %16 = load i32, ptr %15, align 8, !tbaa !648
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %32, %21 ]
  %23 = load ptr, ptr @graph, align 8, !tbaa !626
  %24 = getelementptr inbounds %struct.constraint_graph, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !650
  %26 = getelementptr inbounds i32, ptr %25, i64 %22
  %27 = load i32, ptr %26, align 4, !tbaa !651
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !637
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %30) #23
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %34, label %21, !llvm.loop !652

34:                                               ; preds = %21, %5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.23, i64 28, i64 1, ptr %0)
  %36 = load ptr, ptr @constraints, align 8
  %37 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34, %46
  %40 = phi ptr [ %47, %46 ], [ %36, %34 ]
  %41 = phi i32 [ %48, %46 ], [ 0, %34 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !626
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  tail call fastcc void @dump_constraint_edge(ptr noundef %0, ptr noundef nonnull %42) #23
  %45 = load ptr, ptr @constraints, align 8
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi ptr [ %40, %39 ], [ %45, %44 ]
  %48 = add i32 %41, 1
  %49 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %47, i32 noundef %48, ptr noundef nonnull %2) #23, !range !644
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %39, !llvm.loop !653

51:                                               ; preds = %46, %34
  %52 = tail call i64 @fwrite(ptr nonnull @.str.24, i64 4, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %1, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_solution_for_var(i32 noundef %0) local_unnamed_addr #1 !prof !625 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !626
  tail call fastcc void @dump_solution_for_var(ptr noundef %2, i32 noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_solution_for_var(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !654 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %6 = tail call fastcc i32 @find(i32 noundef %1) #23
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %16, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc i32 @find(i32 noundef %1) #23
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !637
  %13 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !637
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, ptr noundef %12, ptr noundef %14) #23
  br label %34

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !637
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, ptr noundef %18) #23
  %20 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !655
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %21, ptr noundef nonnull %3) #23
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16, %24
  %25 = load i32, ptr %3, align 4, !tbaa !651
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %25) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !637
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, ptr noundef %28) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %24, !llvm.loop !657

32:                                               ; preds = %24, %16
  %33 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 2, i64 1, ptr %0)
  br label %34

34:                                               ; preds = %32, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_pta_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !625 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %0)
  %3 = load i64, ptr @pta_stats.1, align 8, !tbaa !658
  %4 = load i64, ptr @pta_stats.0, align 8, !tbaa !660
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.1, i64 noundef %3, i64 noundef %5) #23
  %7 = load i64, ptr @pta_stats.3, align 8, !tbaa !661
  %8 = load i64, ptr @pta_stats.2, align 8, !tbaa !662
  %9 = add i64 %8, %7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef %7, i64 noundef %9) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @pt_solution_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #3 !prof !663 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pt_solution_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #1 !prof !625 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i64 0, ptr %0, align 8
  %5 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !664
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2, %16
  %9 = load i32, ptr %4, align 4, !tbaa !651
  %10 = tail call ptr @referenced_var_lookup(i32 noundef %9) #25
  %11 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %10) #23, !range !656
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i8, ptr %0, align 8
  %15 = or i8 %14, 16
  store i8 %15, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !llvm.loop !666

19:                                               ; preds = %16, %2, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #6 !prof !667 !PGOFuncName !668 {
  %4 = load ptr, ptr %1, align 8, !tbaa !669
  store ptr %4, ptr %0, align 8, !tbaa !671
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !673
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !674

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !671
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !675
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !677
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !678
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !679
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !651
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #7 !prof !680 !PGOFuncName !681 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !679
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !682

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !683

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !651
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !684, !llvm.loop !685

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !651
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !651
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !677
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !671
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !677
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !686

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !678
  store i64 %35, ptr %3, align 8, !tbaa !679
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !687

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !651
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !651
  %40 = load i32, ptr %23, align 8, !tbaa !677
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !677
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !688, !llvm.loop !689

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !690
  store ptr %44, ptr %0, align 8, !tbaa !671
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !691

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !675
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !651
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !679
  store i32 %16, ptr %1, align 4, !tbaa !651
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !692 !PGOFuncName !693 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !694

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

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #10 !prof !695 !PGOFuncName !696 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !679
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !679
  %6 = load i32, ptr %1, align 4, !tbaa !651
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !651
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @pt_solution_includes_global(ptr nocapture noundef readonly %0) local_unnamed_addr #11 !prof !697 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %20, !prof !698

5:                                                ; preds = %1, %12
  %6 = phi i8 [ %17, %12 ], [ %2, %1 ]
  %7 = and i8 %6, 16
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = and i8 %6, 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @cfun, align 8
  %14 = getelementptr inbounds %struct.function, ptr %13, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !699
  %16 = getelementptr inbounds %struct.gimple_df, ptr %15, i64 0, i32 4
  %17 = load i8, ptr %16, align 8
  %18 = and i8 %17, 3
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %5, label %20, !prof !701

20:                                               ; preds = %5, %12, %9, %1
  %21 = phi i8 [ 1, %1 ], [ 0, %9 ], [ 1, %12 ], [ 1, %5 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @pt_solution_includes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !702 {
  %3 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef %0, ptr noundef %1) #23, !range !656
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.1, ptr @pta_stats.0, !prof !703
  %6 = load i64, ptr %5, align 8, !tbaa !678
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !678
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pt_solution_includes_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !702 !PGOFuncName !704 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35, !prof !705

6:                                                ; preds = %2
  %7 = and i8 %3, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !703

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %1) #23, !range !656
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35, !prof !703

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !664
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !706
  %19 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %14, i32 noundef %18) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i8, ptr %0, align 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i8 [ %22, %21 ], [ %3, %12 ]
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr @cfun, align 8, !tbaa !626
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !699
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 4
  %32 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef nonnull %31, ptr noundef %1) #23, !range !656
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %27, %16, %9, %2, %34
  %36 = phi i8 [ 0, %34 ], [ 1, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %27 ]
  ret i8 %36
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pt_solutions_intersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !707 {
  %3 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef %0, ptr noundef %1) #23, !range !656
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.3, ptr @pta_stats.2, !prof !708
  %6 = load i64, ptr %5, align 8, !tbaa !678
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !678
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pt_solutions_intersect_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !707 !PGOFuncName !709 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %68, !prof !710

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %68, !prof !710

10:                                               ; preds = %6
  %11 = and i8 %3, 2
  %12 = icmp eq i8 %11, 0
  %13 = and i8 %7, 2
  %14 = icmp eq i8 %13, 0
  br i1 %12, label %19, label %15, !prof !708

15:                                               ; preds = %10
  br i1 %14, label %16, label %68, !prof !708

16:                                               ; preds = %15
  %17 = and i8 %7, 16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %68

19:                                               ; preds = %10
  %20 = and i8 %3, 16
  %21 = icmp eq i8 %20, 0
  %22 = or i1 %21, %14
  br i1 %22, label %23, label %68

23:                                               ; preds = %16, %19
  %24 = and i8 %3, 4
  %25 = icmp eq i8 %24, 0
  %26 = or i8 %7, %3
  %27 = and i8 %26, 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %56, label %29

29:                                               ; preds = %23
  %30 = load ptr, ptr @cfun, align 8, !tbaa !626
  %31 = getelementptr inbounds %struct.function, ptr %30, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !699
  %33 = getelementptr inbounds %struct.gimple_df, ptr %32, i64 0, i32 4
  %34 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %33) #23, !range !656
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %29
  br i1 %25, label %45, label %37

37:                                               ; preds = %36
  %38 = and i8 %7, 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %68

40:                                               ; preds = %37
  %41 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %33, ptr noundef nonnull %1) #23, !range !656
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %40
  %44 = load i8, ptr %1, align 8
  br label %45

45:                                               ; preds = %43, %36
  %46 = phi i8 [ %44, %43 ], [ %7, %36 ]
  %47 = and i8 %46, 4
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr @cfun, align 8, !tbaa !626
  %51 = getelementptr inbounds %struct.function, ptr %50, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !699
  %53 = getelementptr inbounds %struct.gimple_df, ptr %52, i64 0, i32 4
  %54 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %53, ptr noundef nonnull %0) #23, !range !656
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %23, %45, %49, %29
  %57 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !664
  %59 = icmp eq ptr %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !664
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef nonnull %58, ptr noundef nonnull %62) #25
  %66 = icmp ne i8 %65, 0
  %67 = zext i1 %66 to i8
  br label %68

68:                                               ; preds = %19, %56, %60, %64, %40, %49, %37, %15, %16, %2, %6
  %69 = phi i8 [ 1, %6 ], [ 1, %2 ], [ 1, %16 ], [ 1, %15 ], [ 1, %37 ], [ 1, %49 ], [ 1, %40 ], [ 0, %60 ], [ 0, %56 ], [ %67, %64 ], [ 1, %19 ]
  ret i8 %69
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pt_solutions_same_restrict_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 !prof !625 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 32
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 32
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %26, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !664
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !664
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5087, ptr noundef nonnull @.str.4) #25
  %19 = load ptr, ptr %11, align 8, !tbaa !664
  %20 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !664
  br label %22

22:                                               ; preds = %14, %18
  %23 = phi ptr [ %16, %14 ], [ %21, %18 ]
  %24 = phi ptr [ %12, %14 ], [ %19, %18 ]
  %25 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef %24, ptr noundef %23) #25
  br label %26

26:                                               ; preds = %2, %6, %22
  %27 = phi i8 [ %25, %22 ], [ 1, %6 ], [ 1, %2 ]
  ret i8 %27
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_sa_points_to_info() local_unnamed_addr #1 !prof !625 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !626
  tail call fastcc void @dump_sa_points_to_info(ptr noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_sa_points_to_info(ptr nocapture noundef %0) unnamed_addr #1 !prof !625 !PGOFuncName !711 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.34, i64 17, i64 1, ptr %0)
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 7, i64 1, ptr %0)
  %8 = load i32, ptr @stats, align 4, !tbaa !712
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !714
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %10) #23
  %12 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !715
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %12) #23
  %14 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !716
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %14) #23
  %16 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !717
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %16) #23
  %18 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !718
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %18) #23
  %20 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !719
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %20) #23
  br label %22

22:                                               ; preds = %6, %1
  %23 = load ptr, ptr @varmap, align 8
  %24 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22, %26
  %27 = phi i32 [ %28, %26 ], [ 0, %22 ]
  tail call fastcc void @dump_solution_for_var(ptr noundef %0, i32 noundef %27) #23
  %28 = add nuw i32 %27, 1
  %29 = load ptr, ptr @varmap, align 8
  %30 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %29) #23
  %31 = icmp ult i32 %28, %30
  br i1 %31, label %26, label %32, !llvm.loop !720

32:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_alias_heapvars() local_unnamed_addr #1 !prof !721 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !626
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !722

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @heapvar_for_stmt, align 8, !tbaa !626
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_may_aliases() local_unnamed_addr #1 !prof !723 {
  tail call fastcc void @compute_points_to_sets() #23
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !724

3:                                                ; preds = %0
  tail call void @dump_alias_info(ptr noundef nonnull %1) #25
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !626
  tail call void @dump_referenced_vars(ptr noundef %8) #25
  br label %9

9:                                                ; preds = %3, %7, %0
  tail call fastcc void @delete_points_to_sets() #23
  %10 = load ptr, ptr @cfun, align 8, !tbaa !626
  %11 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !724

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5611, ptr noundef nonnull @.str.4) #25
  br label %14

14:                                               ; preds = %9, %13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_points_to_sets() unnamed_addr #1 !prof !723 !PGOFuncName !725 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !706
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !724

6:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 56) #25
  br label %7

7:                                                ; preds = %6, %0
  tail call fastcc void @init_alias_vars() #23
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @intra_create_variable_infos() #23
  %8 = load ptr, ptr @cfun, align 8, !tbaa !626
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !726
  %11 = load ptr, ptr %10, align 8, !tbaa !727
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !729
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !731
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %46, label %17, !prof !732

17:                                               ; preds = %7, %37
  %18 = phi ptr [ %39, %37 ], [ %13, %7 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %18) #25
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !656
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30, !prof !733

21:                                               ; preds = %17, %27
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %23 = call fastcc ptr @gimple_phi_result(ptr noundef %22) #23
  %24 = call zeroext i8 @is_gimple_reg(ptr noundef %23) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !734

26:                                               ; preds = %21
  call fastcc void @find_func_aliases(ptr noundef %22) #23
  br label %27

27:                                               ; preds = %26, %21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !656
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %21, label %30, !prof !735, !llvm.loop !736

30:                                               ; preds = %27, %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %18) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !737
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !656
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37, !prof !738

33:                                               ; preds = %30, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @find_func_aliases(ptr noundef %34) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !656
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !prof !739, !llvm.loop !740

37:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !729
  %40 = load ptr, ptr @cfun, align 8, !tbaa !626
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !726
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !731
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %17, !prof !741, !llvm.loop !742

46:                                               ; preds = %37, %7
  call fastcc void @solve_constraints() #23
  %47 = call fastcc ptr @get_varinfo(i32 noundef 3) #23
  %48 = load ptr, ptr @cfun, align 8, !tbaa !626
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !699
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 4
  call fastcc void @find_what_var_points_to(ptr noundef %47, ptr noundef nonnull %51) #23
  %52 = call fastcc ptr @get_varinfo(i32 noundef 5) #23
  %53 = load ptr, ptr @cfun, align 8, !tbaa !626
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !699
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 5
  call fastcc void @find_what_var_points_to(ptr noundef %52, ptr noundef nonnull %56) #23
  %57 = load ptr, ptr @cfun, align 8, !tbaa !626
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !699
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 4
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, -5
  store i8 %62, ptr %60, align 8
  %63 = load ptr, ptr @varmap, align 8
  %64 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %1) #23, !range !644
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %76, !prof !732

66:                                               ; preds = %107
  %67 = load ptr, ptr @cfun, align 8, !tbaa !626
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi ptr [ %67, %66 ], [ %57, %46 ]
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !699
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !743
  %74 = call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #23
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %134, label %112, !prof !732

76:                                               ; preds = %46, %107
  %77 = phi ptr [ %108, %107 ], [ %63, %46 ]
  %78 = phi i32 [ %109, %107 ], [ 0, %46 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !626
  %80 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, 16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %107, label %84, !prof !746

84:                                               ; preds = %76
  %85 = and i8 %81, -96
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %84
  %88 = load ptr, ptr @cfun, align 8, !tbaa !626
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !699
  %91 = getelementptr inbounds %struct.gimple_df, ptr %90, i64 0, i32 4
  %92 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !747
  %94 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %91, ptr noundef %93) #23, !range !656
  %95 = load i8, ptr %80, align 4
  %96 = shl nuw i8 %94, 7
  %97 = and i8 %95, 127
  %98 = or disjoint i8 %97, %96
  store i8 %98, ptr %80, align 4
  %99 = load ptr, ptr %92, align 8, !tbaa !747
  %100 = getelementptr inbounds %struct.tree_decl_common, ptr %99, i64 0, i32 2
  %101 = zext nneg i8 %94 to i64
  %102 = load i64, ptr %100, align 8
  %103 = shl nuw nsw i64 %101, 25
  %104 = and i64 %102, -33554433
  %105 = or disjoint i64 %104, %103
  store i64 %105, ptr %100, align 8
  %106 = load ptr, ptr @varmap, align 8
  br label %107

107:                                              ; preds = %76, %84, %87
  %108 = phi ptr [ %77, %76 ], [ %77, %84 ], [ %106, %87 ]
  %109 = add i32 %78, 1
  %110 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %108, i32 noundef %109, ptr noundef nonnull %1) #23, !range !644
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %66, label %76, !prof !748, !llvm.loop !749

112:                                              ; preds = %68, %125
  %113 = phi ptr [ %126, %125 ], [ %69, %68 ]
  %114 = phi ptr [ %131, %125 ], [ %73, %68 ]
  %115 = phi i32 [ %127, %125 ], [ 0, %68 ]
  %116 = call fastcc ptr @VEC_tree_base_index(ptr noundef %114, i32 noundef %115) #23
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118, !prof !750

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !706
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i16
  switch i16 %122, label %125 [
    i16 10, label %123
    i16 12, label %123
  ], !prof !751

123:                                              ; preds = %118, %118
  call fastcc void @find_what_p_points_to(ptr noundef nonnull %116) #23
  %124 = load ptr, ptr @cfun, align 8, !tbaa !626
  br label %125

125:                                              ; preds = %118, %123, %112
  %126 = phi ptr [ %113, %118 ], [ %124, %123 ], [ %113, %112 ]
  %127 = add nuw i32 %115, 1
  %128 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !699
  %130 = getelementptr inbounds %struct.gimple_df, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !743
  %132 = call fastcc i32 @VEC_tree_base_length(ptr noundef %131) #23
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %112, label %134, !prof !752, !llvm.loop !753

134:                                              ; preds = %125, %68
  %135 = load i8, ptr @timevar_enable, align 1, !tbaa !706
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137, !prof !724

137:                                              ; preds = %134
  call void @timevar_pop_1(i32 noundef 56) #25
  br label %138

138:                                              ; preds = %137, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @dump_alias_info(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @dump_referenced_vars(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_points_to_sets() unnamed_addr #1 !prof !723 !PGOFuncName !754 {
  %1 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !626
  tail call void @htab_delete(ptr noundef %1) #25
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !724

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !755
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.84, i32 noundef %9) #23
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = load ptr, ptr @vi_for_tree, align 8, !tbaa !626
  tail call void @pointer_map_destroy(ptr noundef %12) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @pta_obstack) #25
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef nonnull @constraints) #23
  %13 = load ptr, ptr @graph, align 8, !tbaa !626
  %14 = load i32, ptr %13, align 8, !tbaa !648
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16, !prof !732

16:                                               ; preds = %11, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %11 ]
  %18 = phi ptr [ %23, %16 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.constraint_graph, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !756
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %21) #23
  %22 = add nuw nsw i64 %17, 1
  %23 = load ptr, ptr @graph, align 8, !tbaa !626
  %24 = load i32, ptr %23, align 8, !tbaa !648
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %16, label %27, !prof !757, !llvm.loop !758

27:                                               ; preds = %16, %11
  %28 = phi ptr [ %13, %11 ], [ %23, %16 ]
  %29 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !756
  tail call void @free(ptr noundef %30) #23
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !650
  tail call void @free(ptr noundef %32) #23
  %33 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !759
  tail call void @free(ptr noundef %34) #23
  %35 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !760
  tail call void @free(ptr noundef %36) #23
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !761
  tail call void @free(ptr noundef %38) #23
  %39 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !762
  tail call void @free(ptr noundef %40) #23
  tail call void @free(ptr noundef nonnull %28) #23
  tail call fastcc void @VEC_varinfo_t_heap_free() #23
  %41 = load ptr, ptr @variable_info_pool, align 8, !tbaa !626
  tail call void @free_alloc_pool(ptr noundef %41) #25
  %42 = load ptr, ptr @constraint_pool, align 8, !tbaa !626
  tail call void @free_alloc_pool(ptr noundef %42) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_pta() #12 !prof !763 !PGOFuncName !764 {
  %1 = load i32, ptr @flag_tree_pta, align 4, !tbaa !651
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ipa_pta() #13 !prof !765 !PGOFuncName !766 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !651
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ipa_pta, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %16, !prof !767

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !626
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !651
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !651
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipa_pta_execute() #1 !prof !625 !PGOFuncName !768 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 true, ptr @in_ipa_mode, align 4
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @init_alias_vars() #23
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !626
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %8

5:                                                ; preds = %25
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !626
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %29

8:                                                ; preds = %0, %25
  %9 = phi ptr [ %27, %25 ], [ %3, %0 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !769
  %11 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !777
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %9, align 8, !tbaa !769
  %24 = tail call ptr @cgraph_node_name(ptr noundef nonnull %9) #25
  tail call fastcc void @create_function_info_for(ptr noundef %23, ptr noundef %24) #23
  br label %25

25:                                               ; preds = %17, %8, %13, %22
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !626
  %28 = icmp eq ptr %27, null
  br i1 %28, label %5, label %8, !llvm.loop !778

29:                                               ; preds = %5, %92
  %30 = phi ptr [ %94, %92 ], [ %6, %5 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !769
  %32 = call zeroext i8 @gimple_has_body_p(ptr noundef %31) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !777
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call ptr @cgraph_node_name(ptr noundef nonnull %30) #25
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %39, ptr noundef nonnull @.str.85, ptr noundef %42) #23
  br label %44

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %30, align 8, !tbaa !769
  %46 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !706
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !626
  call void @push_cfun(ptr noundef %47) #25
  %49 = load ptr, ptr %30, align 8, !tbaa !769
  store ptr %49, ptr @current_function_decl, align 8, !tbaa !626
  %50 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 18, i32 2
  %51 = load i8, ptr %50, align 8
  %52 = and i8 %51, 2
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %44
  call fastcc void @intra_create_variable_infos() #23
  br label %55

55:                                               ; preds = %54, %44
  %56 = getelementptr inbounds %struct.function, ptr %47, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !726
  %58 = load ptr, ptr %57, align 8, !tbaa !727
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !729
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !731
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %91, label %64

64:                                               ; preds = %55, %84
  %65 = phi ptr [ %86, %84 ], [ %60, %55 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %65) #25
  %66 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !656
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %77

68:                                               ; preds = %64, %74
  %69 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  %70 = call fastcc ptr @gimple_phi_result(ptr noundef %69) #23
  %71 = call zeroext i8 @is_gimple_reg(ptr noundef %70) #25
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  call fastcc void @find_func_aliases(ptr noundef %69) #23
  br label %74

74:                                               ; preds = %73, %68
  call fastcc void @gsi_next(ptr noundef nonnull %1) #23
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !656
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !779

77:                                               ; preds = %74, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %65) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !737
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !656
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %80
  %81 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call fastcc void @find_func_aliases(ptr noundef %81) #23
  call fastcc void @gsi_next(ptr noundef nonnull %1) #23
  %82 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !656
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %80, label %84, !llvm.loop !780

84:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #24
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !729
  %87 = load ptr, ptr %56, align 8, !tbaa !726
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !731
  %90 = icmp eq ptr %86, %89
  br i1 %90, label %91, label %64, !llvm.loop !781

91:                                               ; preds = %84, %55
  store ptr %48, ptr @current_function_decl, align 8, !tbaa !626
  call void @pop_cfun() #25
  br label %92

92:                                               ; preds = %29, %34, %91
  %93 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !626
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %29, !llvm.loop !782

96:                                               ; preds = %92, %0, %5
  call fastcc void @solve_constraints() #23
  call fastcc void @delete_points_to_sets() #23
  store i1 false, ptr @in_ipa_mode, align 4
  ret i32 0
}

; Function Attrs: optsize
declare void @gt_ggc_mx_tree_map(ptr noundef) #8

; Function Attrs: optsize
declare void @gt_pch_nx_tree_map(ptr noundef) #8

; Function Attrs: optsize
declare i32 @tree_map_base_marked_p(ptr noundef) #8

; Function Attrs: optsize
declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #8

; Function Attrs: optsize
declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_varinfo(i32 noundef %0) unnamed_addr #13 !prof !783 !PGOFuncName !784 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc ptr @VEC_varinfo_t_base_index(ptr noundef %2, i32 noundef %0) #23
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_varinfo_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !783 !PGOFuncName !785 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !626
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constraint_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !786 !PGOFuncName !787 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !788

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !789
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !791

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !626
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !792 !PGOFuncName !793 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !794

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !795
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !625 !PGOFuncName !797 {
  %3 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !640
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !641
  %9 = tail call fastcc ptr @get_varinfo(i32 noundef %8) #23
  %10 = getelementptr inbounds %struct.variable_info, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !637
  %12 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !636
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !637
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.25, ptr noundef %11, ptr noundef %16) #23
  %18 = load i32, ptr %1, align 8, !tbaa !631
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = tail call i64 @fwrite(ptr nonnull @.str.26, i64 18, i64 1, ptr %0)
  br label %37

22:                                               ; preds = %6
  %23 = load i32, ptr %3, align 8, !tbaa !640
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 18, i64 1, ptr %0)
  br label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !642
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !639
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr %0)
  br label %37

35:                                               ; preds = %27
  %36 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 3, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %20, %33, %35, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find(i32 noundef %0) unnamed_addr #1 !prof !798 !PGOFuncName !799 {
  %2 = load ptr, ptr @graph, align 8, !tbaa !626
  %3 = load i32, ptr %2, align 8, !tbaa !648
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %7, label %5, !prof !800

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 520, ptr noundef nonnull @.str.4) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %2, %1 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !650
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !651
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %17, !prof !801

15:                                               ; preds = %7, %17
  %16 = phi i32 [ %18, %17 ], [ %0, %7 ]
  ret i32 %16

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @find(i32 noundef %13) #23
  %19 = load ptr, ptr @graph, align 8, !tbaa !626
  %20 = getelementptr inbounds %struct.constraint_graph, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !650
  %22 = getelementptr inbounds i32, ptr %21, i64 %11
  store i32 %18, ptr %22, align 4, !tbaa !651
  br label %15
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @pt_solution_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #14 !prof !625 !PGOFuncName !802 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !664
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !669
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23

12:                                               ; preds = %9, %5
  %13 = and i8 %2, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !626
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !699
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 4
  %20 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %19) #23, !range !656
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %12
  br label %23

23:                                               ; preds = %15, %9, %1, %22
  %24 = phi i8 [ 1, %22 ], [ 0, %1 ], [ 0, %9 ], [ 0, %15 ]
  ret i8 %24
}

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_vars() unnamed_addr #1 !prof !723 !PGOFuncName !803 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !626
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 95, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !804
  %4 = icmp ugt i32 %3, 1
  %5 = zext i1 %4 to i8
  store i8 %5, ptr @use_field_sensitive, align 1, !tbaa !706
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @pta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @oldpta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @predbitmap_obstack) #25
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.43, i64 noundef 32, i64 noundef 30) #25
  store ptr %6, ptr @constraint_pool, align 8, !tbaa !626
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.44, i64 noundef 72, i64 noundef 30) #25
  store ptr %7, ptr @variable_info_pool, align 8, !tbaa !626
  %8 = tail call fastcc ptr @VEC_constraint_t_heap_alloc() #23
  store ptr %8, ptr @constraints, align 8, !tbaa !626
  %9 = tail call fastcc ptr @VEC_varinfo_t_heap_alloc() #23
  store ptr %9, ptr @varmap, align 8, !tbaa !626
  %10 = tail call ptr @pointer_map_create() #25
  store ptr %10, ptr @vi_for_tree, align 8, !tbaa !626
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @stats, i8 0, i64 32, i1 false)
  %11 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @shared_bitmap_hash, ptr noundef nonnull @shared_bitmap_eq, ptr noundef nonnull @free) #25
  store ptr %11, ptr @shared_bitmap_table, align 8, !tbaa !626
  tail call fastcc void @init_base_vars() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_heapvars() unnamed_addr #1 !prof !723 !PGOFuncName !806 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !626
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !807

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 11, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @heapvar_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #25
  store ptr %4, ptr @heapvar_for_stmt, align 8, !tbaa !626
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra_create_variable_infos() unnamed_addr #1 !prof !723 !PGOFuncName !808 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !626
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5, !prof !732

5:                                                ; preds = %0, %85
  %6 = phi ptr [ %87, %85 ], [ %3, %0 ]
  %7 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %6) #23, !range !656
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %85, label %9, !prof !809

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 268435456
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %59, label %14, !prof !724

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i16
  switch i16 %18, label %59 [
    i16 10, label %19
    i16 12, label %19
  ]

19:                                               ; preds = %14, %14
  %20 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 6
  %21 = load i32, ptr %20, align 4
  %22 = and i32 %21, 8192
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %59, label %24

24:                                               ; preds = %19
  %25 = tail call fastcc ptr @heapvar_lookup(ptr noundef nonnull %6, i64 noundef 0) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load ptr, ptr %15, align 8, !tbaa !706
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !706
  %31 = tail call ptr @create_tmp_var_raw(ptr noundef %30, ptr noundef nonnull @.str.55) #25
  %32 = getelementptr inbounds %struct.tree_decl_common, ptr %31, i64 0, i32 2
  %33 = load i64, ptr %32, align 8
  %34 = or i64 %33, 33554432
  store i64 %34, ptr %32, align 8
  tail call fastcc void @heapvar_insert(ptr noundef nonnull %6, i64 noundef 0, ptr noundef %31) #23
  %35 = tail call fastcc ptr @get_var_ann(ptr noundef %31) #23
  %36 = load i8, ptr %35, align 8
  %37 = or i8 %36, 16
  store i8 %37, ptr %35, align 8
  br label %38

38:                                               ; preds = %27, %24
  %39 = phi ptr [ %31, %27 ], [ %25, %24 ]
  %40 = load ptr, ptr @cfun, align 8, !tbaa !626
  %41 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %40) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %39) #25
  br label %45

45:                                               ; preds = %43, %38
  %46 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  %47 = load i32, ptr %46, align 8, !tbaa !810
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %39) #23
  %51 = load i32, ptr %50, align 8, !tbaa !810
  %52 = zext i32 %51 to i64
  %53 = shl nuw i64 %52, 32
  %54 = or disjoint i64 %53, 2
  %55 = tail call fastcc ptr @new_constraint(i64 %49, i64 0, i64 %54, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %55) #23
  %56 = getelementptr inbounds %struct.variable_info, ptr %50, i64 0, i32 1
  %57 = load i8, ptr %56, align 4
  %58 = or i8 %57, 32
  store i8 %58, ptr %56, align 4
  br label %85

59:                                               ; preds = %14, %19, %9
  %60 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  %61 = icmp eq ptr %60, null
  br i1 %61, label %73, label %62, !prof !732

62:                                               ; preds = %59, %69
  %63 = phi ptr [ %71, %69 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 64
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68, !prof !809

68:                                               ; preds = %62
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %63, i32 noundef 4) #23
  br label %69

69:                                               ; preds = %62, %68
  %70 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !811
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %62, !prof !812, !llvm.loop !813

73:                                               ; preds = %69, %59
  %74 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !706
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %85 [
    i16 10, label %78
    i16 12, label %78
  ], !prof !814

78:                                               ; preds = %73, %73
  %79 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 8192
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !724

83:                                               ; preds = %78
  %84 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  tail call fastcc void @make_constraint_from_restrict(ptr noundef %84, ptr noundef nonnull @.str.56) #23
  br label %85

85:                                               ; preds = %78, %83, %73, %5, %45
  %86 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !706
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %5, !prof !812, !llvm.loop !815

89:                                               ; preds = %85, %0
  %90 = load ptr, ptr @cfun, align 8, !tbaa !626
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !816
  %93 = getelementptr inbounds %struct.tree_decl_non_common, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !706
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96, !prof !809

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %94, i64 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 268435456
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %109, label %101, !prof !724

101:                                              ; preds = %96
  %102 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %94) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %107, %104 ], [ %102, %101 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %105, i32 noundef 4) #23
  %106 = getelementptr inbounds %struct.variable_info, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !811
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %104, !llvm.loop !817

109:                                              ; preds = %104, %101, %96, %89
  %110 = load ptr, ptr @cfun, align 8, !tbaa !626
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !818
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114, !prof !724

114:                                              ; preds = %109
  %115 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %112) #23
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114, %117
  %118 = phi ptr [ %120, %117 ], [ %115, %114 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %118, i32 noundef 4) #23
  %119 = getelementptr inbounds %struct.variable_info, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !811
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %117, !llvm.loop !819

122:                                              ; preds = %117, %114, %109
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #9 !prof !820 !PGOFuncName !821 {
  %2 = load ptr, ptr %0, align 8, !tbaa !822
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #13 !prof !824 !PGOFuncName !825 {
  %2 = load ptr, ptr %0, align 8, !tbaa !822
  %3 = load ptr, ptr %2, align 8, !tbaa !826
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !828 !PGOFuncName !829 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_func_aliases(ptr noundef %0) unnamed_addr #1 !prof !830 !PGOFuncName !831 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.constraint_expr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %72, !prof !833

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !706
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = add nsw i64 %22, -15
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %26, !prof !834

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3630, ptr noundef nonnull @.str.4) #25
  br label %26

26:                                               ; preds = %17, %25
  %27 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %28 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %27) #23, !range !656
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %494, label %30, !prof !835

30:                                               ; preds = %26
  call fastcc void @get_constraint_for(ptr noundef %27, ptr noundef nonnull %2) #23
  %31 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %494, label %33, !prof !836

33:                                               ; preds = %30
  %34 = load ptr, ptr %2, align 8
  br label %35

35:                                               ; preds = %33, %67
  %36 = phi i64 [ 0, %33 ], [ %68, %67 ]
  %37 = trunc i64 %36 to i32
  %38 = tail call fastcc ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %37) #23
  %39 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %38) #23
  %40 = tail call ptr @tree_strip_nop_conversions(ptr noundef %39) #25
  %41 = tail call fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %36) #23
  call fastcc void @get_constraint_for(ptr noundef %41, ptr noundef nonnull %3) #23
  %42 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %67, label %44, !prof !837

44:                                               ; preds = %35
  %45 = load ptr, ptr %3, align 8
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i32 [ 0, %44 ], [ %64, %63 ]
  %48 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %45) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50, !prof !837

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 8, !tbaa !626
  %52 = getelementptr inbounds { i64, i64 }, ptr %51, i64 0, i32 1
  br label %53

53:                                               ; preds = %50, %53
  %54 = tail call fastcc ptr @VEC_ce_s_base_last(ptr noundef %45) #23
  %55 = load i64, ptr %51, align 8
  %56 = load i64, ptr %52, align 8
  %57 = load i64, ptr %54, align 8
  %58 = getelementptr inbounds { i64, i64 }, ptr %54, i64 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = tail call fastcc ptr @new_constraint(i64 %55, i64 %56, i64 %57, i64 %59) #23
  tail call fastcc void @process_constraint(ptr noundef %60) #23
  tail call fastcc void @VEC_ce_s_base_pop(ptr noundef %45) #23
  %61 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %45) #23
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %53, !prof !838, !llvm.loop !839

63:                                               ; preds = %53, %46
  %64 = add i32 %47, 1
  %65 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef %64, ptr noundef nonnull %4) #23, !range !644
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %46, !prof !838, !llvm.loop !840

67:                                               ; preds = %63, %35
  %68 = add nuw nsw i64 %36, 1
  %69 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %35, label %494, !prof !841, !llvm.loop !842

72:                                               ; preds = %1
  %73 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !656
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %263, label %75, !prof !843

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #23
  %77 = icmp eq ptr %76, null
  br i1 %77, label %142, label %78, !prof !844

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_function_decl, ptr %76, i64 0, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 6144
  %82 = icmp eq i32 %81, 6144
  br i1 %82, label %83, label %140, !prof !844

83:                                               ; preds = %78
  %84 = and i32 %80, 2047
  switch i32 %84, label %140 [
    i32 341, label %85
    i32 349, label %85
    i32 325, label %85
    i32 330, label %85
    i32 331, label %85
    i32 332, label %85
    i32 335, label %85
    i32 336, label %85
    i32 338, label %85
    i32 347, label %85
    i32 333, label %109
    i32 220, label %495
    i32 221, label %495
    i32 222, label %495
    i32 78, label %495
    i32 79, label %495
    i32 80, label %495
    i32 84, label %495
    i32 85, label %495
    i32 86, label %495
    i32 123, label %495
    i32 124, label %495
    i32 125, label %495
    i32 159, label %495
    i32 160, label %495
    i32 161, label %495
    i32 192, label %495
    i32 193, label %495
    i32 194, label %495
    i32 455, label %495
  ]

85:                                               ; preds = %83, %83, %83, %83, %83, %83, %83, %83, %83, %83
  %86 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %87 = load i32, ptr %79, align 8
  %88 = and i32 %87, 2047
  %89 = icmp eq i32 %88, 325
  %90 = zext i1 %89 to i32
  %91 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %90) #23
  %92 = load i32, ptr %79, align 8
  %93 = and i32 %92, 2047
  %94 = icmp ne i32 %93, 325
  %95 = zext i1 %94 to i32
  %96 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %95) #23
  %97 = icmp eq ptr %86, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %85
  call fastcc void @get_constraint_for(ptr noundef nonnull %86, ptr noundef nonnull %2) #23
  %99 = load i32, ptr %79, align 8
  %100 = and i32 %99, 2047
  switch i32 %100, label %102 [
    i32 332, label %101
    i32 335, label %101
    i32 336, label %101
  ]

101:                                              ; preds = %98, %98, %98
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %91, ptr noundef null, ptr noundef nonnull %3) #23
  br label %103

102:                                              ; preds = %98
  call fastcc void @get_constraint_for(ptr noundef %91, ptr noundef nonnull %3) #23
  br label %103

103:                                              ; preds = %102, %101
  %104 = load ptr, ptr %2, align 8, !tbaa !626
  %105 = load ptr, ptr %3, align 8, !tbaa !626
  tail call fastcc void @process_all_all_constraints(ptr noundef %104, ptr noundef %105) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %106

106:                                              ; preds = %103, %85
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %91, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %96, ptr noundef null, ptr noundef nonnull %3) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %3) #23
  %107 = load ptr, ptr %2, align 8, !tbaa !626
  %108 = load ptr, ptr %3, align 8, !tbaa !626
  tail call fastcc void @process_all_all_constraints(ptr noundef %107, ptr noundef %108) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %495

109:                                              ; preds = %83
  %110 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %111 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %112 = icmp eq ptr %110, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %109
  call fastcc void @get_constraint_for(ptr noundef nonnull %110, ptr noundef nonnull %2) #23
  call fastcc void @get_constraint_for(ptr noundef %111, ptr noundef nonnull %3) #23
  %114 = load ptr, ptr %2, align 8, !tbaa !626
  %115 = load ptr, ptr %3, align 8, !tbaa !626
  tail call fastcc void @process_all_all_constraints(ptr noundef %114, ptr noundef %115) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %116

116:                                              ; preds = %113, %109
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %111, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  %117 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !651
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #23
  %121 = tail call i32 @integer_zerop(ptr noundef %120) #25
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %119, %123
  %125 = phi i64 [ 30064771072, %123 ], [ 2, %119 ]
  %126 = load ptr, ptr %2, align 8
  %127 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef 0, ptr noundef nonnull %5) #23, !range !644
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %124, %129
  %130 = phi i32 [ %136, %129 ], [ 0, %124 ]
  %131 = load ptr, ptr %5, align 8, !tbaa !626
  %132 = load i64, ptr %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %131, i64 0, i32 1
  %134 = load i64, ptr %133, align 8
  %135 = tail call fastcc ptr @new_constraint(i64 %132, i64 %134, i64 %125, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %135) #23
  %136 = add i32 %130, 1
  %137 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef %136, ptr noundef nonnull %5) #23, !range !644
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %129, !llvm.loop !845

139:                                              ; preds = %129, %124
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %495

140:                                              ; preds = %83, %78
  %141 = load i1, ptr @in_ipa_mode, align 4
  br i1 %141, label %144, label %147, !prof !844

142:                                              ; preds = %75
  %143 = load i1, ptr @in_ipa_mode, align 4
  br i1 %143, label %175, label %147, !prof !844

144:                                              ; preds = %140
  %145 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %76) #23
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %142, %144, %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !626
  %148 = tail call i32 @gimple_call_flags(ptr noundef %0) #25
  %149 = and i32 %148, 513
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151, !prof !846

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154

154:                                              ; preds = %151
  %155 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %156 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %155) #23, !range !656
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %154
  call fastcc void @handle_const_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

159:                                              ; preds = %147
  %160 = and i32 %148, 6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162, !prof !846

162:                                              ; preds = %159
  call fastcc void @handle_pure_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

163:                                              ; preds = %159
  call fastcc void @handle_rhs_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

164:                                              ; preds = %162, %163, %151, %154, %158
  %165 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167, !prof !847

167:                                              ; preds = %164
  %168 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %169 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %168) #23, !range !656
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171, !prof !848

171:                                              ; preds = %167
  %172 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %173 = load ptr, ptr %6, align 8, !tbaa !626
  tail call fastcc void @handle_lhs_call(ptr noundef %172, i32 noundef %148, ptr noundef %173, ptr noundef %76) #23
  br label %174

174:                                              ; preds = %171, %167, %164
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %494

175:                                              ; preds = %142, %144
  %176 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %177 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #23
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %175
  %180 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %177) #23
  br label %184

181:                                              ; preds = %175
  %182 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %183 = tail call fastcc ptr @get_vi_for_tree(ptr noundef %182) #23
  br label %184

184:                                              ; preds = %181, %179
  %185 = phi ptr [ %177, %179 ], [ %182, %181 ]
  %186 = phi ptr [ %180, %179 ], [ %183, %181 ]
  %187 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %229, label %189

189:                                              ; preds = %184, %221
  %190 = phi i64 [ %222, %221 ], [ 1, %184 ]
  %191 = phi i64 [ %223, %221 ], [ 0, %184 ]
  %192 = trunc i64 %191 to i32
  %193 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %192) #23
  call fastcc void @get_constraint_for(ptr noundef %193, ptr noundef nonnull %3) #23
  %194 = load i64, ptr %185, align 8
  %195 = and i64 %194, 65535
  %196 = icmp eq i64 %195, 29
  br i1 %196, label %202, label %197

197:                                              ; preds = %189
  %198 = load i32, ptr %186, align 8, !tbaa !810
  %199 = zext i32 %198 to i64
  %200 = shl nuw i64 %199, 32
  %201 = or disjoint i64 %200, 1
  br label %207

202:                                              ; preds = %189
  %203 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %190) #23
  %204 = load i32, ptr %203, align 8, !tbaa !810
  %205 = zext i32 %204 to i64
  %206 = shl nuw i64 %205, 32
  br label %207

207:                                              ; preds = %202, %197
  %208 = phi i64 [ %201, %197 ], [ %206, %202 ]
  %209 = phi i64 [ %190, %197 ], [ 0, %202 ]
  %210 = load ptr, ptr %3, align 8
  %211 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %210) #23
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %221, label %213

213:                                              ; preds = %207, %213
  %214 = tail call fastcc ptr @VEC_ce_s_base_last(ptr noundef %210) #23
  %215 = load i64, ptr %214, align 8
  %216 = getelementptr inbounds { i64, i64 }, ptr %214, i64 0, i32 1
  %217 = load i64, ptr %216, align 8
  %218 = tail call fastcc ptr @new_constraint(i64 %208, i64 %209, i64 %215, i64 %217) #23
  tail call fastcc void @process_constraint(ptr noundef %218) #23
  tail call fastcc void @VEC_ce_s_base_pop(ptr noundef %210) #23
  %219 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %210) #23
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %213, !llvm.loop !849

221:                                              ; preds = %213, %207
  %222 = add nuw nsw i64 %190, 1
  %223 = add nuw nsw i64 %191, 1
  %224 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %225 = zext i32 %224 to i64
  %226 = icmp ult i64 %223, %225
  br i1 %226, label %189, label %227, !llvm.loop !850

227:                                              ; preds = %221
  %228 = and i64 %222, 4294967295
  br label %229

229:                                              ; preds = %227, %184
  %230 = phi i64 [ 1, %184 ], [ %228, %227 ]
  %231 = icmp eq ptr %176, null
  br i1 %231, label %494, label %232

232:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call fastcc void @get_constraint_for(ptr noundef nonnull %176, ptr noundef nonnull %2) #23
  %233 = load i64, ptr %185, align 8
  %234 = and i64 %233, 65535
  %235 = icmp eq i64 %234, 29
  br i1 %235, label %241, label %236

236:                                              ; preds = %232
  %237 = load i32, ptr %186, align 8, !tbaa !810
  %238 = zext i32 %237 to i64
  %239 = shl nuw i64 %238, 32
  %240 = or disjoint i64 %239, 1
  br label %246

241:                                              ; preds = %232
  %242 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %230) #23
  %243 = load i32, ptr %242, align 8, !tbaa !810
  %244 = zext i32 %243 to i64
  %245 = shl nuw i64 %244, 32
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i64 [ %230, %236 ], [ 0, %241 ]
  %248 = phi i64 [ %240, %236 ], [ %245, %241 ]
  %249 = load ptr, ptr %2, align 8
  %250 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef 0, ptr noundef nonnull %7) #23, !range !644
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %246, %252
  %253 = phi i32 [ %259, %252 ], [ 0, %246 ]
  %254 = load ptr, ptr %7, align 8, !tbaa !626
  %255 = load i64, ptr %254, align 8
  %256 = getelementptr inbounds { i64, i64 }, ptr %254, i64 0, i32 1
  %257 = load i64, ptr %256, align 8
  %258 = tail call fastcc ptr @new_constraint(i64 %255, i64 %257, i64 %248, i64 %247) #23
  tail call fastcc void @process_constraint(ptr noundef %258) #23
  %259 = add i32 %253, 1
  %260 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef %259, ptr noundef nonnull %7) #23, !range !644
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %252, !llvm.loop !851

262:                                              ; preds = %252, %246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %494

263:                                              ; preds = %72
  %264 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !656
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %363, label %266, !prof !852

266:                                              ; preds = %263
  %267 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %268 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %267) #23, !range !656
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %363, label %270, !prof !853

270:                                              ; preds = %266
  %271 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %272 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %286, !prof !854

274:                                              ; preds = %270
  %275 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %276 = icmp eq ptr %275, null
  br i1 %276, label %286, label %277, !prof !855

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.tree_common, ptr %271, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !706
  %280 = load i64, ptr %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65535
  %283 = add nsw i32 %282, -15
  %284 = icmp ult i32 %283, 4
  br i1 %284, label %285, label %286, !prof !856

285:                                              ; preds = %277
  tail call fastcc void @do_structure_copy(ptr noundef nonnull %271, ptr noundef nonnull %275) #23
  br label %324

286:                                              ; preds = %270, %277, %274
  %287 = phi ptr [ %275, %277 ], [ null, %274 ], [ null, %270 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  call fastcc void @get_constraint_for(ptr noundef %271, ptr noundef nonnull %2) #23
  %288 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !857
  %289 = icmp eq i32 %288, 66
  br i1 %289, label %290, label %293, !prof !858

290:                                              ; preds = %286
  %291 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %292 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %291, ptr noundef %292, ptr noundef nonnull %3) #23
  br label %321

293:                                              ; preds = %286
  %294 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !857
  %295 = icmp eq i32 %294, 116
  br i1 %295, label %299, label %296, !prof !859

296:                                              ; preds = %293
  %297 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !857
  %298 = icmp eq i32 %297, 113
  br i1 %298, label %299, label %314, !prof !859

299:                                              ; preds = %296, %293
  %300 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #23
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 10
  br i1 %303, label %309, label %304

304:                                              ; preds = %299
  %305 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #23
  %306 = load i64, ptr %305, align 8
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 12
  br i1 %308, label %309, label %317

309:                                              ; preds = %304, %299
  %310 = getelementptr inbounds %struct.tree_common, ptr %287, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !706
  %312 = load i64, ptr %311, align 8
  %313 = trunc i64 %312 to i16
  switch i16 %313, label %314 [
    i16 10, label %317
    i16 12, label %317
  ]

314:                                              ; preds = %309, %296
  %315 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #25
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %318, label %317, !prof !859

317:                                              ; preds = %309, %309, %314, %304
  call fastcc void @get_constraint_for(ptr noundef %287, ptr noundef nonnull %3) #23
  br label %321

318:                                              ; preds = %314
  store i32 2, ptr %8, align 8, !tbaa !860
  %319 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  store i32 1, ptr %319, align 4, !tbaa !861
  %320 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %320, align 8, !tbaa !862
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %8) #23
  br label %321

321:                                              ; preds = %317, %318, %290
  %322 = load ptr, ptr %2, align 8, !tbaa !626
  %323 = load ptr, ptr %3, align 8, !tbaa !626
  call fastcc void @process_all_all_constraints(ptr noundef %322, ptr noundef %323) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %324

324:                                              ; preds = %321, %285
  %325 = phi ptr [ %287, %321 ], [ %275, %285 ]
  %326 = call ptr @get_base_address(ptr noundef %271) #25
  %327 = icmp eq ptr %326, null
  br i1 %327, label %338, label %328, !prof !863

328:                                              ; preds = %324
  %329 = load i64, ptr %326, align 8
  %330 = and i64 %329, 65535
  %331 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !651
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %338, !prof !863

334:                                              ; preds = %328
  %335 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %326) #23, !range !656
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %334
  call fastcc void @make_escape_constraint(ptr noundef %325) #23
  br label %494

338:                                              ; preds = %334, %328, %324
  %339 = call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !656
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %494, label %341, !prof !864

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.tree_common, ptr %325, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !706
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i16
  switch i16 %345, label %494 [
    i16 10, label %346
    i16 12, label %346
  ]

346:                                              ; preds = %341, %341
  %347 = getelementptr inbounds %struct.tree_common, ptr %326, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !706
  %349 = load i64, ptr %348, align 8
  %350 = trunc i64 %349 to i16
  switch i16 %350, label %494 [
    i16 10, label %351
    i16 12, label %351
  ]

351:                                              ; preds = %346, %346
  %352 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 8192
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %494

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.tree_type, ptr %348, i64 0, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = and i32 %358, 8192
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %494, label %361

361:                                              ; preds = %356
  %362 = call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %326) #23
  call fastcc void @make_constraint_from_restrict(ptr noundef %362, ptr noundef nonnull @.str.62) #23
  br label %494

363:                                              ; preds = %266, %263
  %364 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !656
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %396, label %366, !prof !865

366:                                              ; preds = %363
  %367 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !706
  %370 = load i64, ptr %369, align 8
  %371 = and i64 %370, 65535
  %372 = icmp eq i64 %371, 10
  br i1 %372, label %380, label %373, !prof !866

373:                                              ; preds = %366
  %374 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %375 = getelementptr inbounds %struct.tree_common, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !706
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 12
  br i1 %379, label %380, label %396, !prof !866

380:                                              ; preds = %373, %366
  %381 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %382 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !706
  %384 = load i64, ptr %383, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 10
  br i1 %386, label %396, label %387

387:                                              ; preds = %380
  %388 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %389 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !706
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 12
  br i1 %393, label %396, label %394

394:                                              ; preds = %387
  %395 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %395) #23
  br label %494

396:                                              ; preds = %387, %380, %373, %363
  %397 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %398 = icmp eq i32 %397, 9
  br i1 %398, label %399, label %408, !prof !867

399:                                              ; preds = %396
  %400 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %401 = icmp eq ptr %400, null
  br i1 %401, label %408, label %402, !prof !809

402:                                              ; preds = %399
  %403 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %404 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %403) #23, !range !656
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %408, label %406, !prof !868

406:                                              ; preds = %402
  %407 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %407) #23
  br label %494

408:                                              ; preds = %402, %399, %396
  %409 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %410 = icmp eq i32 %409, 7
  br i1 %410, label %411, label %494, !prof !869

411:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #24
  %412 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #23, !range !832
  %413 = shl nuw nsw i32 %412, 3
  %414 = zext nneg i32 %413 to i64
  %415 = alloca i8, i64 %414, align 16
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %411
  %418 = zext nneg i32 %412 to i64
  br label %422

419:                                              ; preds = %462, %411
  %420 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !832
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %493, label %465

422:                                              ; preds = %417, %462
  %423 = phi i64 [ 0, %417 ], [ %463, %462 ]
  %424 = trunc i64 %423 to i32
  %425 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %424) #23
  %426 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !706
  %428 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !706
  %430 = getelementptr inbounds %struct.tree_list, ptr %429, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !706
  %432 = getelementptr inbounds %struct.tree_string, ptr %431, i64 0, i32 2
  store ptr %432, ptr %9, align 8, !tbaa !626
  %433 = getelementptr inbounds ptr, ptr %415, i64 %423
  store ptr %432, ptr %433, align 8, !tbaa !626
  %434 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %9, i32 noundef %424, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  %435 = load i8, ptr %11, align 1, !tbaa !706
  %436 = icmp eq i8 %435, 0
  %437 = load i8, ptr %10, align 1
  %438 = icmp ne i8 %437, 0
  %439 = select i1 %436, i1 %438, i1 false
  br i1 %439, label %440, label %442

440:                                              ; preds = %422
  %441 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %427) #25
  call fastcc void @make_escape_constraint(ptr noundef %441) #23
  br label %442

442:                                              ; preds = %440, %422
  %443 = icmp eq ptr %427, null
  br i1 %443, label %462, label %444

444:                                              ; preds = %442
  %445 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %427) #23, !range !656
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %462, label %447

447:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  store ptr null, ptr %13, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #24
  call fastcc void @get_constraint_for(ptr noundef nonnull %427, ptr noundef nonnull %13) #23
  %448 = load ptr, ptr %13, align 8
  %449 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef 0, ptr noundef nonnull %14) #23, !range !644
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %461, label %451

451:                                              ; preds = %447, %451
  %452 = phi i32 [ %458, %451 ], [ 0, %447 ]
  %453 = load ptr, ptr %14, align 8, !tbaa !626
  %454 = load i64, ptr %453, align 8
  %455 = getelementptr inbounds { i64, i64 }, ptr %453, i64 0, i32 1
  %456 = load i64, ptr %455, align 8
  %457 = call fastcc ptr @new_constraint(i64 %454, i64 %456, i64 17179869184, i64 0) #23
  call fastcc void @process_constraint(ptr noundef %457) #23
  %458 = add i32 %452, 1
  %459 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef %458, ptr noundef nonnull %14) #23, !range !644
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %451, !llvm.loop !870

461:                                              ; preds = %451, %447
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  br label %462

462:                                              ; preds = %461, %444, %442
  %463 = add nuw nsw i64 %423, 1
  %464 = icmp eq i64 %463, %418
  br i1 %464, label %419, label %422, !llvm.loop !871

465:                                              ; preds = %419, %489
  %466 = phi i32 [ %490, %489 ], [ 0, %419 ]
  %467 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %466) #23
  %468 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !706
  %470 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !706
  %472 = getelementptr inbounds %struct.tree_list, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !706
  %474 = getelementptr inbounds %struct.tree_string, ptr %473, i64 0, i32 2
  store ptr %474, ptr %9, align 8, !tbaa !626
  %475 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i32 noundef %412, i32 noundef 0, ptr noundef nonnull %415, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  %476 = load i8, ptr %11, align 1, !tbaa !706
  %477 = icmp eq i8 %476, 0
  %478 = load i8, ptr %10, align 1
  %479 = icmp ne i8 %478, 0
  %480 = select i1 %477, i1 %479, i1 false
  br i1 %480, label %481, label %483

481:                                              ; preds = %465
  %482 = call ptr @build_fold_addr_expr_loc(i32 noundef 0, ptr noundef %469) #25
  call fastcc void @make_escape_constraint(ptr noundef %482) #23
  br label %489

483:                                              ; preds = %465
  %484 = icmp eq ptr %469, null
  br i1 %484, label %489, label %485

485:                                              ; preds = %483
  %486 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %469) #23, !range !656
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %485
  call fastcc void @make_escape_constraint(ptr noundef nonnull %469) #23
  br label %489

489:                                              ; preds = %483, %485, %488, %481
  %490 = add nuw nsw i32 %466, 1
  %491 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !832
  %492 = icmp ult i32 %490, %491
  br i1 %492, label %465, label %493, !llvm.loop !872

493:                                              ; preds = %489, %419
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  br label %494

494:                                              ; preds = %67, %30, %337, %361, %356, %351, %338, %341, %346, %229, %262, %174, %394, %408, %493, %406, %26
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  br label %495

495:                                              ; preds = %139, %106, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %83, %494
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #6 !prof !824 !PGOFuncName !873 {
  %2 = load ptr, ptr %0, align 8, !tbaa !822
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !874
  store ptr %4, ptr %0, align 8, !tbaa !822
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #6 !prof !875 !PGOFuncName !876 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !822
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !877
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !878
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_constraints() unnamed_addr #1 !prof !723 !PGOFuncName !879 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3, !prof !724

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 34, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !626
  tail call fastcc void @dump_constraints(ptr noundef %5) #23
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !855

8:                                                ; preds = %3
  %9 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 58, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %0, %8, %3
  %11 = load ptr, ptr @varmap, align 8
  %12 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %11) #23
  %13 = shl i32 %12, 1
  tail call fastcc void @init_graph(i32 noundef %13) #23
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !724

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 27, i64 1, ptr nonnull %14)
  br label %18

18:                                               ; preds = %16, %10
  tail call fastcc void @build_pred_graph() #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !724

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 44, i64 1, ptr nonnull %19)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @graph, align 8, !tbaa !626
  %25 = tail call fastcc ptr @perform_var_substitution(ptr noundef %24) #23
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !724

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 45, i64 1, ptr nonnull %26)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @rewrite_constraints(ptr noundef %31, ptr noundef %25) #23
  tail call fastcc void @build_succ_graph() #23
  tail call fastcc void @free_var_substitution_info(ptr noundef %25) #23
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34, !prof !724

34:                                               ; preds = %30
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @dump_constraint_graph(ptr noundef nonnull %32) #23
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @move_complex_constraints(ptr noundef %40) #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !724

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 54, i64 1, ptr nonnull %41)
  br label %45

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @unite_pointer_equivalences(ptr noundef %46) #23
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !724

49:                                               ; preds = %45
  %50 = tail call i64 @fwrite(ptr nonnull @.str.75, i64 24, i64 1, ptr nonnull %47)
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @find_indirect_cycles(ptr noundef %52) #23
  %53 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @remove_preds_and_fake_succs(ptr noundef %53) #23
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !724

56:                                               ; preds = %51
  %57 = tail call i64 @fwrite(ptr nonnull @.str.76, i64 14, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %51
  %59 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @solve_graph(ptr noundef %59) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !724

62:                                               ; preds = %58
  tail call fastcc void @dump_sa_points_to_info(ptr noundef nonnull %60) #23
  br label %63

63:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_var_points_to(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !880 !PGOFuncName !881 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %0, align 8, !tbaa !810
  %6 = tail call fastcc i32 @find(i32 noundef %5) #23
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull %3) #23
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %50, label %12, !prof !882

12:                                               ; preds = %2, %47
  %13 = load i32, ptr %3, align 4, !tbaa !651
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19, !prof !883

19:                                               ; preds = %12
  %20 = load i32, ptr %14, align 8, !tbaa !810
  switch i32 %20, label %31 [
    i32 0, label %21
    i32 3, label %24
    i32 5, label %27
    i32 4, label %28
  ], !prof !884

21:                                               ; preds = %19
  %22 = load i8, ptr %1, align 8
  %23 = or i8 %22, 8
  store i8 %23, ptr %1, align 8
  br label %40

24:                                               ; preds = %19
  %25 = load i8, ptr %1, align 8
  %26 = or i8 %25, 4
  store i8 %26, ptr %1, align 8
  br label %40

27:                                               ; preds = %19
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4820, ptr noundef nonnull @.str.4) #25
  br label %40

28:                                               ; preds = %19
  %29 = load i8, ptr %1, align 8
  %30 = or i8 %29, 2
  store i8 %30, ptr %1, align 8
  br label %40

31:                                               ; preds = %19
  %32 = and i8 %16, 16
  %33 = icmp ne i8 %32, 0
  %34 = icmp eq i32 %20, 2
  %35 = or i1 %33, %34
  br i1 %35, label %40, label %36, !prof !885

36:                                               ; preds = %31
  switch i32 %20, label %40 [
    i32 1, label %37
    i32 7, label %37
  ]

37:                                               ; preds = %36, %36
  %38 = load i8, ptr %1, align 8
  %39 = or i8 %38, 1
  store i8 %39, ptr %1, align 8
  br label %40

40:                                               ; preds = %36, %21, %27, %31, %37, %28, %24, %12
  %41 = load i8, ptr %15, align 4
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44, !prof !886

44:                                               ; preds = %40
  %45 = load i8, ptr %1, align 8
  %46 = or i8 %45, 32
  store i8 %46, ptr %1, align 8
  br label %47

47:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %48 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %12, !prof !887, !llvm.loop !888

50:                                               ; preds = %47, %2
  %51 = load i8, ptr %1, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !889

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = icmp ne i8 %57, 0
  %59 = and i8 %51, 32
  %60 = icmp eq i8 %59, 0
  %61 = or i1 %60, %58
  br i1 %61, label %73, label %62

62:                                               ; preds = %54, %50
  %63 = tail call ptr @bitmap_gc_alloc_stat() #25
  %64 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !755
  %65 = add i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !755
  %66 = load ptr, ptr %8, align 8, !tbaa !655
  tail call fastcc void @set_uids_in_ptset(ptr noundef %63, ptr noundef %66, ptr noundef nonnull %1) #23
  %67 = tail call fastcc ptr @shared_bitmap_lookup(ptr noundef %63) #23
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71, !prof !890

69:                                               ; preds = %62
  tail call fastcc void @shared_bitmap_add(ptr noundef %63) #23
  %70 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %63, ptr %70, align 8, !tbaa !664
  br label %73

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %67, ptr %72, align 8, !tbaa !664
  tail call void @bitmap_clear(ptr noundef %63) #25
  br label %73

73:                                               ; preds = %69, %71, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_varinfo_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !891 !PGOFuncName !892 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !893

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !795
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !894

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !626
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !895 !PGOFuncName !896 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !897

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !898
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !900 !PGOFuncName !901 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !626
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_p_points_to(ptr noundef %0) unnamed_addr #1 !prof !902 !PGOFuncName !903 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %15, !prof !904

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 34
  br i1 %10, label %11, label %15, !prof !905

11:                                               ; preds = %5
  %12 = and i64 %2, 4294967296
  %13 = icmp eq i64 %12, 0
  %14 = select i1 %13, ptr %0, ptr %7, !prof !809
  br label %15

15:                                               ; preds = %11, %5, %1
  %16 = phi ptr [ %0, %5 ], [ %0, %1 ], [ %14, %11 ]
  %17 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %16) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !906

19:                                               ; preds = %15
  %20 = tail call ptr @get_ptr_info(ptr noundef nonnull %0) #25
  tail call fastcc void @find_what_var_points_to(ptr noundef nonnull %17, ptr noundef %20) #23
  br label %21

21:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constraint_t_heap_alloc() unnamed_addr #1 !prof !723 !PGOFuncName !907 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_varinfo_t_heap_alloc() unnamed_addr #1 !prof !723 !PGOFuncName !908 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @shared_bitmap_hash(ptr nocapture noundef readonly %0) #9 !prof !625 !PGOFuncName !909 {
  %2 = getelementptr inbounds %struct.shared_bitmap_info, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !910
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shared_bitmap_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !912 !PGOFuncName !913 {
  %3 = load ptr, ptr %0, align 8, !tbaa !914
  %4 = load ptr, ptr %1, align 8, !tbaa !914
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %3, ptr noundef %4) #25
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #16

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_base_vars() unnamed_addr #1 !prof !723 !PGOFuncName !915 {
  %1 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.45) #23
  %2 = load i32, ptr %1, align 8, !tbaa !810
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !724

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5153, ptr noundef nonnull @.str.4) #25
  br label %5

5:                                                ; preds = %0, %4
  %6 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  store i64 0, ptr %8, align 8, !tbaa !916
  %9 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 4
  %10 = or i8 %7, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  store i8 %10, ptr %6, align 4
  %11 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.46) #23
  %12 = load i32, ptr %11, align 8, !tbaa !810
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14, !prof !724

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5163, ptr noundef nonnull @.str.4) #25
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 4
  store i64 -1, ptr %18, align 8, !tbaa !917
  %19 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 2
  %20 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i64 -1, ptr %20, align 8, !tbaa !918
  %21 = or i8 %17, 3
  store i8 %21, ptr %16, align 4
  %22 = tail call fastcc ptr @new_constraint(i64 4294967296, i64 0, i64 4294967298, i64 0) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %22) #23
  %23 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.47) #23
  %24 = load i32, ptr %23, align 8, !tbaa !810
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %27, label %26, !prof !724

26:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5189, ptr noundef nonnull @.str.4) #25
  br label %27

27:                                               ; preds = %15, %26
  %28 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 3
  store i64 0, ptr %30, align 8, !tbaa !916
  %31 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 4
  %32 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 -1, i64 16, i1 false)
  store ptr null, ptr %32, align 8, !tbaa !811
  %33 = or i8 %29, 3
  store i8 %33, ptr %28, align 4
  %34 = tail call fastcc ptr @new_constraint(i64 8589934592, i64 0, i64 8589934594, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %34) #23
  %35 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.48) #23
  %36 = load i32, ptr %35, align 8, !tbaa !810
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %39, label %38, !prof !724

38:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5212, ptr noundef nonnull @.str.4) #25
  br label %39

39:                                               ; preds = %27, %38
  %40 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 3
  store i64 0, ptr %42, align 8, !tbaa !916
  %43 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  %44 = and i8 %41, -4
  %45 = or disjoint i8 %44, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 -1, i64 16, i1 false)
  store i8 %45, ptr %40, align 4
  %46 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.49) #23
  %47 = load i32, ptr %46, align 8, !tbaa !810
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %50, label %49, !prof !724

49:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5222, ptr noundef nonnull @.str.4) #25
  br label %50

50:                                               ; preds = %39, %49
  %51 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 3
  store i64 0, ptr %53, align 8, !tbaa !916
  %54 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 4
  %55 = or i8 %52, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %54, i8 -1, i64 16, i1 false)
  store i8 %55, ptr %51, align 4
  %56 = tail call fastcc ptr @new_constraint(i64 12884901888, i64 0, i64 12884901889, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %56) #23
  %57 = tail call fastcc ptr @new_constraint(i64 12884901888, i64 0, i64 12884901888, i64 -9223372036854775808) #23
  tail call fastcc void @process_constraint(ptr noundef %57) #23
  %58 = tail call fastcc ptr @new_constraint(i64 12884901889, i64 0, i64 17179869184, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %58) #23
  %59 = tail call fastcc ptr @new_constraint(i64 17179869184, i64 0, i64 17179869186, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %59) #23
  %60 = tail call fastcc ptr @new_constraint(i64 17179869184, i64 0, i64 12884901890, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %60) #23
  %61 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.50) #23
  %62 = load i32, ptr %61, align 8, !tbaa !810
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %65, label %64, !prof !724

64:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5276, ptr noundef nonnull @.str.4) #25
  br label %65

65:                                               ; preds = %50, %64
  %66 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 3
  store i64 0, ptr %68, align 8, !tbaa !916
  %69 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 4
  %70 = and i8 %67, -4
  %71 = or disjoint i8 %70, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 -1, i64 16, i1 false)
  store i8 %71, ptr %66, align 4
  %72 = tail call fastcc ptr @new_constraint(i64 21474836480, i64 0, i64 21474836481, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %72) #23
  %73 = tail call fastcc ptr @new_constraint(i64 21474836480, i64 0, i64 21474836480, i64 -9223372036854775808) #23
  tail call fastcc void @process_constraint(ptr noundef %73) #23
  %74 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.51) #23
  %75 = load i32, ptr %74, align 8, !tbaa !810
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %78, label %77, !prof !724

77:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5305, ptr noundef nonnull @.str.4) #25
  br label %78

78:                                               ; preds = %65, %77
  %79 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 3
  store i64 0, ptr %81, align 8, !tbaa !916
  %82 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 4
  %83 = and i8 %80, -4
  %84 = or disjoint i8 %83, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 -1, i64 16, i1 false)
  store i8 %84, ptr %79, align 4
  %85 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.52) #23
  %86 = load i32, ptr %85, align 8, !tbaa !810
  %87 = icmp eq i32 %86, 7
  br i1 %87, label %89, label %88, !prof !724

88:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 5315, ptr noundef nonnull @.str.4) #25
  br label %89

89:                                               ; preds = %78, %88
  %90 = getelementptr inbounds %struct.variable_info, ptr %85, i64 0, i32 1
  %91 = load i8, ptr %90, align 4
  %92 = getelementptr inbounds %struct.variable_info, ptr %85, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %92, i8 -1, i64 16, i1 false)
  %93 = getelementptr inbounds %struct.variable_info, ptr %85, i64 0, i32 2
  %94 = or i8 %91, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %93, i8 0, i64 16, i1 false)
  store i8 %94, ptr %90, align 4
  %95 = tail call fastcc ptr @new_constraint(i64 30064771072, i64 0, i64 4294967298, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %95) #23
  ret void
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_var_info(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !919 !PGOFuncName !920 {
  %3 = load ptr, ptr @varmap, align 8
  %4 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %3) #23
  %5 = load ptr, ptr @variable_info_pool, align 8, !tbaa !626
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i32 %4, ptr %6, align 8, !tbaa !810
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !637
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  store ptr %0, ptr %8, align 8, !tbaa !747
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 1
  %11 = zext i1 %9 to i8
  %12 = select i1 %9, i8 8, i8 0
  %13 = select i1 %9, i8 -128, i8 0
  %14 = or disjoint i8 %12, %11
  %15 = or disjoint i8 %14, %13
  %16 = or disjoint i8 %15, 64
  store i8 %16, ptr %10, align 4
  br i1 %9, label %28, label %17, !prof !921

17:                                               ; preds = %2
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !651
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %28, !prof !922

23:                                               ; preds = %17
  %24 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %0) #23, !range !656
  %25 = shl nuw i8 %24, 7
  %26 = and i8 %16, 73
  %27 = or disjoint i8 %25, %26
  store i8 %27, ptr %10, align 4
  br label %28

28:                                               ; preds = %23, %17, %2
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %30 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !655
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %32 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !923
  %33 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 2
  store ptr null, ptr %33, align 8, !tbaa !811
  tail call fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef nonnull %6) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %0) unnamed_addr #1 !prof !924 !PGOFuncName !925 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef nonnull @constraints) #23
  %2 = load ptr, ptr @constraints, align 8, !tbaa !626
  tail call fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_constraint(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #1 !prof !924 !PGOFuncName !926 {
  %5 = load ptr, ptr @constraint_pool, align 8, !tbaa !626
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i64 %0, ptr %6, align 8, !tbaa.struct !927
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %1, ptr %7, align 8, !tbaa.struct !928
  %8 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1
  store i64 %2, ptr %8, align 8, !tbaa.struct !927
  %9 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1, i32 2
  store i64 %3, ptr %9, align 8, !tbaa.struct !928
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_constraint(ptr noundef %0) unnamed_addr #1 !prof !929 !PGOFuncName !930 {
  br label %2

2:                                                ; preds = %38, %1
  %3 = phi ptr [ %0, %1 ], [ %47, %38 ]
  %4 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !927
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa.struct !928
  %11 = load i64, ptr %3, align 8, !tbaa.struct !927
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !928
  %17 = load ptr, ptr @varmap, align 8
  %18 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %17) #23
  %19 = icmp ugt i32 %18, %8
  br i1 %19, label %22, label %20, !prof !931

20:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2749, ptr noundef nonnull @.str.4) #25
  %21 = load ptr, ptr @varmap, align 8
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi ptr [ %17, %2 ], [ %21, %20 ]
  %24 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %23) #23
  %25 = icmp ugt i32 %24, %14
  br i1 %25, label %27, label %26, !prof !931

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2750, ptr noundef nonnull @.str.4) #25
  br label %27

27:                                               ; preds = %22, %26
  %28 = icmp eq i32 %12, 2
  br i1 %28, label %29, label %32, !prof !932

29:                                               ; preds = %27
  %30 = icmp eq i32 %14, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2760, ptr noundef nonnull @.str.4) #25
  br label %32

32:                                               ; preds = %29, %27, %31
  %33 = phi i32 [ 2, %31 ], [ %12, %27 ], [ 1, %29 ]
  switch i32 %6, label %53 [
    i32 1, label %34
    i32 2, label %48
  ], !prof !933

34:                                               ; preds = %32
  %35 = icmp eq i32 %33, 1
  br i1 %35, label %36, label %53, !prof !934

36:                                               ; preds = %34
  %37 = icmp eq i32 %8, 1
  br i1 %37, label %53, label %38

38:                                               ; preds = %36, %48
  %39 = phi ptr [ @.str.54, %48 ], [ @.str.53, %36 ]
  %40 = phi i64 [ 2, %48 ], [ 1, %36 ]
  %41 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull %39) #23
  %42 = and i64 %5, -4294967296
  %43 = or disjoint i64 %42, %40
  %44 = tail call fastcc ptr @new_constraint(i64 %41, i64 0, i64 %43, i64 %10) #23
  tail call fastcc void @process_constraint(ptr noundef %44) #23
  %45 = and i64 %11, -4294967296
  %46 = or disjoint i64 %45, 1
  %47 = tail call fastcc ptr @new_constraint(i64 %46, i64 %16, i64 %41, i64 0) #23
  br label %2

48:                                               ; preds = %32
  %49 = icmp eq i32 %33, 1
  br i1 %49, label %38, label %50, !prof !935

50:                                               ; preds = %48
  %51 = icmp eq i64 %10, 0
  br i1 %51, label %53, label %52, !prof !936

52:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2781, ptr noundef nonnull @.str.4) #25
  br label %53

53:                                               ; preds = %34, %36, %32, %50, %52
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef %0) unnamed_addr #1 !prof !919 !PGOFuncName !937 {
  tail call fastcc void @VEC_varinfo_t_heap_reserve() #23
  %2 = load ptr, ptr @varmap, align 8, !tbaa !626
  tail call fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_reserve() unnamed_addr #1 !prof !919 !PGOFuncName !938 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !626
  %2 = tail call fastcc i32 @VEC_varinfo_t_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !939

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #25
  store ptr %5, ptr @varmap, align 8, !tbaa !626
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !919 !PGOFuncName !940 {
  %3 = load i32, ptr %0, align 8, !tbaa !795
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !795
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !626
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !919 !PGOFuncName !941 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !942

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !943
  %6 = load i32, ptr %0, align 8, !tbaa !795
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !944 !PGOFuncName !945 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = tail call fastcc i32 @VEC_constraint_t_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !946

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #25
  store ptr %6, ptr %0, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #10 !prof !924 !PGOFuncName !947 {
  %3 = load i32, ptr %0, align 8, !tbaa !789
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !789
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !626
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !944 !PGOFuncName !948 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !949

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !950
  %6 = load i32, ptr %0, align 8, !tbaa !789
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef %0) unnamed_addr #1 !prof !625 !PGOFuncName !951 {
  %2 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 3
  store i64 0, ptr %3, align 8, !tbaa !916
  %4 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 4
  %5 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 4
  %8 = load i32, ptr %2, align 8, !tbaa !810
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  ret i64 %10
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @heapvar_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !625 !PGOFuncName !952 {
  %3 = load ptr, ptr %0, align 8, !tbaa !953
  %4 = load ptr, ptr %1, align 8, !tbaa !953
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !957
  %9 = getelementptr inbounds %struct.heapvar_map, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !957
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #8

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !958 !PGOFuncName !959 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %3) #23, !range !656
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @heapvar_lookup(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !960 {
  %3 = alloca %struct.heapvar_map, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !953
  %4 = getelementptr inbounds %struct.heapvar_map, ptr %3, i64 0, i32 1
  store i64 %1, ptr %4, align 8, !tbaa !957
  %5 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !626
  %6 = call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %3) #23
  %7 = call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_map, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !961
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @heapvar_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !625 !PGOFuncName !962 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #25
  store ptr %0, ptr %4, align 8, !tbaa !953
  %5 = getelementptr inbounds %struct.heapvar_map, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !957
  %6 = tail call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %4) #23
  %7 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !963
  %8 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !961
  %9 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !626
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 1) #25
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 345, ptr noundef nonnull @.str.4) #25
  br label %14

14:                                               ; preds = %3, %13
  store ptr %4, ptr %10, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_var_ann(ptr noundef %0) unnamed_addr #1 !prof !625 !PGOFuncName !964 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ]

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.tree_var_decl, ptr %0, i64 0, i32 1
  br label %13

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_parm_decl, ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %1
  %9 = and i64 %2, 65535
  %10 = icmp eq i64 %9, 36
  %11 = getelementptr inbounds %struct.tree_result_decl, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.57, i32 noundef 144, ptr noundef nonnull @.str.4) #25
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !626
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !625 !PGOFuncName !965 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !699
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !966
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vi_for_tree(ptr noundef %0) unnamed_addr #1 !prof !967 !PGOFuncName !968 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !626
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !969

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @alias_get_name(ptr noundef %0) #23
  %7 = tail call fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %6) #23
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  br label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !626
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %8, %5 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_from(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !723 !PGOFuncName !970 {
  %3 = load i32, ptr %0, align 8, !tbaa !810
  %4 = zext i32 %3 to i64
  %5 = shl nuw i64 %4, 32
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, 2
  %9 = tail call fastcc ptr @new_constraint(i64 %5, i64 0, i64 %8, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %9) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_from_restrict(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !971 {
  %3 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %0, ptr noundef %1) #23
  %4 = getelementptr inbounds %struct.variable_info, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 29
  %7 = or disjoint i8 %6, 34
  store i8 %7, ptr %4, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #11 !prof !972 !PGOFuncName !973 {
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
  ], !prof !974

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  br label %2

9:                                                ; preds = %2
  %10 = and i64 %4, 65535
  %11 = icmp eq i64 %10, 18
  %12 = zext i1 %11 to i8
  br label %13

13:                                               ; preds = %2, %2, %2, %2, %9
  %14 = phi i8 [ %12, %9 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ], [ 1, %2 ]
  ret i8 %14
}

; Function Attrs: optsize
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @heapvar_map_hash(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !625 !PGOFuncName !975 {
  %2 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !957
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !626
  %5 = load ptr, ptr %0, align 8, !tbaa !953
  %6 = tail call i32 %4(ptr noundef %5) #25
  %7 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %3, i32 noundef %6) #25
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @iterative_hash_host_wide_int(i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !976 !PGOFuncName !977 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !706
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !651
  %12 = icmp eq i32 %11, 3
  br i1 %12, label %13, label %15, !prof !978

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  br label %17

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 2
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi ptr [ %14, %13 ], [ %16, %15 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !706
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !626
  %20 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !656
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %27, label %22, !prof !979

22:                                               ; preds = %17
  %23 = load i8, ptr @use_field_sensitive, align 1, !tbaa !706
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25, !prof !980

25:                                               ; preds = %22
  %26 = call fastcc i32 @push_fields_onto_fieldstack(ptr noundef %7, ptr noundef nonnull %3, i64 noundef 0) #23
  br label %27

27:                                               ; preds = %25, %22, %17
  %28 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %1) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 3
  store i64 0, ptr %29, align 8, !tbaa !916
  %30 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %0) #23, !range !656
  %31 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 1
  %32 = load i8, ptr %31, align 4
  %33 = shl nuw nsw i8 %30, 6
  %34 = and i8 %32, -65
  %35 = or disjoint i8 %34, %33
  store i8 %35, ptr %31, align 4
  %36 = icmp eq ptr %19, null
  br i1 %36, label %42, label %37, !prof !981

37:                                               ; preds = %27
  %38 = tail call i32 @host_integerp(ptr noundef nonnull %19, i32 noundef 1) #25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46, !prof !981

40:                                               ; preds = %37
  %41 = load i8, ptr %31, align 4
  br label %42

42:                                               ; preds = %40, %27
  %43 = phi i8 [ %41, %40 ], [ %35, %27 ]
  %44 = or i8 %43, 4
  store i8 %44, ptr %31, align 4
  %45 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %45, i8 -1, i64 16, i1 false)
  br label %51

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.tree_int_cst, ptr %19, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !706
  %49 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 5
  store i64 %48, ptr %49, align 8, !tbaa !918
  %50 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  store i64 %48, ptr %50, align 8, !tbaa !917
  br label %51

51:                                               ; preds = %46, %42
  %52 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !747
  tail call fastcc void @insert_vi_for_tree(ptr noundef %53, ptr noundef nonnull %28) #23
  %54 = load i8, ptr %31, align 4
  %55 = icmp sgt i8 %54, -1
  br i1 %55, label %79, label %56, !prof !982

56:                                               ; preds = %51
  %57 = load i32, ptr @flag_whole_program, align 4, !tbaa !651
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %64, label %59, !prof !983

59:                                               ; preds = %56
  %60 = load i1, ptr @in_ipa_mode, align 4
  %61 = and i8 %54, 64
  %62 = icmp eq i8 %61, 0
  %63 = or i1 %62, %60
  br i1 %63, label %79, label %67, !prof !984

64:                                               ; preds = %56
  %65 = and i8 %54, 64
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %79, label %67, !prof !985

67:                                               ; preds = %59, %64
  %68 = load ptr, ptr %6, align 8, !tbaa !706
  %69 = load i64, ptr %68, align 8
  %70 = trunc i64 %69 to i16
  switch i16 %70, label %77 [
    i16 10, label %71
    i16 12, label %71
  ], !prof !986

71:                                               ; preds = %67, %67
  %72 = getelementptr inbounds %struct.tree_type, ptr %68, i64 0, i32 6
  %73 = load i32, ptr %72, align 4
  %74 = and i32 %73, 8192
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %77, label %76, !prof !987

76:                                               ; preds = %71
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %28, ptr noundef nonnull @.str.58) #23
  br label %77

77:                                               ; preds = %67, %76, %71
  tail call fastcc void @make_copy_constraint(ptr noundef nonnull %28) #23
  %78 = load i8, ptr %31, align 4
  br label %79

79:                                               ; preds = %77, %64, %59, %51
  %80 = phi i8 [ %78, %77 ], [ %54, %64 ], [ %54, %59 ], [ %54, %51 ]
  %81 = load i32, ptr @stats, align 4, !tbaa !712
  %82 = add i32 %81, 1
  store i32 %82, ptr @stats, align 4, !tbaa !712
  %83 = load i8, ptr @use_field_sensitive, align 1, !tbaa !706
  %84 = icmp ne i8 %83, 0
  %85 = and i8 %80, 4
  %86 = icmp eq i8 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %230, !prof !988

88:                                               ; preds = %79
  %89 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !656
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %230, label %91, !prof !979

91:                                               ; preds = %88
  %92 = load ptr, ptr %3, align 8
  %93 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %92) #23
  %94 = icmp ugt i32 %93, 1
  br i1 %94, label %95, label %230, !prof !989

95:                                               ; preds = %91
  %96 = zext i32 %93 to i64
  %97 = load ptr, ptr @compiler_params, align 8, !tbaa !626
  %98 = getelementptr inbounds %struct.param_info, ptr %97, i64 95, i32 1
  %99 = load i32, ptr %98, align 8, !tbaa !804
  %100 = sext i32 %99 to i64
  %101 = icmp ugt i64 %96, %100
  br i1 %101, label %230, label %102, !prof !980

102:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !626
  %103 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %92, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %119, label %109, !prof !990

105:                                              ; preds = %116
  %106 = add i32 %110, 1
  %107 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %92, i32 noundef %106, ptr noundef nonnull %4) #23, !range !644
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %119, label %109, !prof !991, !llvm.loop !992

109:                                              ; preds = %102, %105
  %110 = phi i32 [ %106, %105 ], [ 0, %102 ]
  %111 = load ptr, ptr %4, align 8, !tbaa !626
  %112 = getelementptr inbounds %struct.fieldoff, ptr %111, i64 0, i32 2
  %113 = load i8, ptr %112, align 8
  %114 = and i8 %113, 1
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %122, !prof !993

116:                                              ; preds = %109
  %117 = load i64, ptr %111, align 8, !tbaa !994
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %122, label %105, !prof !996

119:                                              ; preds = %105, %102
  tail call fastcc void @sort_fieldstack(ptr noundef %92) #23
  %120 = tail call fastcc zeroext i8 @check_for_overlaps(ptr noundef %92) #23, !range !656
  %121 = icmp ne i8 %120, 0
  br label %122

122:                                              ; preds = %116, %109, %119
  %123 = phi i1 [ %121, %119 ], [ true, %109 ], [ true, %116 ]
  %124 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %92) #23
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %128, !prof !980

126:                                              ; preds = %122
  %127 = load ptr, ptr %4, align 8, !tbaa !626
  br label %130

128:                                              ; preds = %122
  %129 = tail call fastcc ptr @VEC_fieldoff_s_base_index(ptr noundef %92) #23
  store ptr %129, ptr %4, align 8, !tbaa !626
  br label %130

130:                                              ; preds = %126, %128
  %131 = phi ptr [ %127, %126 ], [ %129, %128 ]
  %132 = icmp eq ptr %131, null
  %133 = or i1 %123, %132
  br i1 %133, label %134, label %139, !prof !997

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  %136 = load i8, ptr %31, align 4
  %137 = or i8 %136, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %135, i8 -1, i64 16, i1 false)
  store i8 %137, ptr %31, align 4
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %138 = load i32, ptr %28, align 8, !tbaa !810
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %234

139:                                              ; preds = %130
  %140 = load <2 x i64>, ptr %131, align 8, !tbaa !678
  store <2 x i64> %140, ptr %29, align 8, !tbaa !678
  %141 = getelementptr inbounds %struct.fieldoff, ptr %131, i64 0, i32 2
  %142 = load i8, ptr %141, align 8
  %143 = load i8, ptr %31, align 4
  %144 = shl i8 %142, 5
  %145 = and i8 %144, 64
  %146 = and i8 %143, -65
  %147 = or disjoint i8 %146, %145
  store i8 %147, ptr %31, align 4
  %148 = icmp sgt i8 %143, -1
  br i1 %148, label %162, label %149, !prof !980

149:                                              ; preds = %139
  %150 = load i32, ptr @flag_whole_program, align 4, !tbaa !651
  %151 = icmp ne i32 %150, 0
  %152 = load i1, ptr @in_ipa_mode, align 4
  %153 = select i1 %151, i1 %152, i1 false
  %154 = and i8 %142, 2
  %155 = icmp eq i8 %154, 0
  %156 = select i1 %153, i1 true, i1 %155
  br i1 %156, label %162, label %157, !prof !998

157:                                              ; preds = %149
  %158 = load i8, ptr %141, align 8
  %159 = and i8 %158, 4
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %162, label %161, !prof !989

161:                                              ; preds = %157
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %28, ptr noundef nonnull @.str.58) #23
  br label %162

162:                                              ; preds = %157, %161, %149, %139
  %163 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %92) #23
  %164 = add i32 %163, -1
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %229, label %166, !prof !990

166:                                              ; preds = %162
  %167 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 5
  br label %168

168:                                              ; preds = %166, %224
  %169 = phi i32 [ %164, %166 ], [ %227, %224 ]
  %170 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %92, i32 noundef %169, ptr noundef nonnull %4) #23, !range !644
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %229, label %172, !prof !999

172:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %173 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %174 = icmp eq ptr %173, null
  %175 = load ptr, ptr %4, align 8, !tbaa !626
  br i1 %174, label %186, label %176, !prof !1000

176:                                              ; preds = %172
  %177 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 6
  %178 = load ptr, ptr %177, align 8, !tbaa !637
  %179 = load i64, ptr %175, align 8, !tbaa !994
  %180 = getelementptr inbounds %struct.fieldoff, ptr %175, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !1001
  %182 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.59, ptr noundef %178, i64 noundef %179, i64 noundef %181) #25
  %183 = load ptr, ptr %5, align 8, !tbaa !626
  %184 = call ptr @ggc_alloc_string(ptr noundef %183, i32 noundef -1) #25
  %185 = load ptr, ptr %5, align 8, !tbaa !626
  call void @free(ptr noundef %185) #23
  br label %186

186:                                              ; preds = %176, %172
  %187 = phi ptr [ %184, %176 ], [ @.str.45, %172 ]
  %188 = call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %187) #23
  %189 = getelementptr inbounds %struct.variable_info, ptr %188, i64 0, i32 3
  %190 = load <2 x i64>, ptr %175, align 8, !tbaa !678
  store <2 x i64> %190, ptr %189, align 8, !tbaa !678
  %191 = load i64, ptr %167, align 8, !tbaa !918
  %192 = getelementptr inbounds %struct.variable_info, ptr %188, i64 0, i32 5
  store i64 %191, ptr %192, align 8, !tbaa !918
  %193 = getelementptr inbounds %struct.fieldoff, ptr %175, i64 0, i32 2
  %194 = load i8, ptr %193, align 8
  %195 = getelementptr inbounds %struct.variable_info, ptr %188, i64 0, i32 1
  %196 = load i8, ptr %195, align 4
  %197 = shl i8 %194, 5
  %198 = and i8 %197, 64
  %199 = and i8 %196, -65
  %200 = or disjoint i8 %199, %198
  store i8 %200, ptr %195, align 4
  call fastcc void @insert_into_field_list(ptr noundef nonnull %28, ptr noundef %188) #23
  %201 = load i8, ptr %195, align 4
  %202 = icmp sgt i8 %201, -1
  br i1 %202, label %203, label %209, !prof !1002

203:                                              ; preds = %186
  %204 = load i64, ptr %0, align 8
  %205 = and i64 %204, 65535
  %206 = icmp ne i64 %205, 34
  %207 = icmp ult i8 %201, 64
  %208 = or i1 %207, %206
  br i1 %208, label %224, label %212, !prof !1003

209:                                              ; preds = %186
  %210 = and i8 %201, 64
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %224, label %212, !prof !1004

212:                                              ; preds = %203, %209
  %213 = load i8, ptr %193, align 8
  %214 = and i8 %213, 4
  %215 = icmp eq i8 %214, 0
  br i1 %215, label %218, label %216, !prof !1005

216:                                              ; preds = %212
  call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %188, ptr noundef nonnull @.str.58) #23
  %217 = load i8, ptr %195, align 4
  br label %218

218:                                              ; preds = %216, %212
  %219 = phi i8 [ %217, %216 ], [ %201, %212 ]
  %220 = icmp sgt i8 %219, -1
  %221 = load i1, ptr @in_ipa_mode, align 4
  %222 = select i1 %220, i1 true, i1 %221
  br i1 %222, label %224, label %223, !prof !1006

223:                                              ; preds = %218
  call fastcc void @make_copy_constraint(ptr noundef nonnull %188) #23
  br label %224

224:                                              ; preds = %218, %223, %209, %203
  %225 = load i32, ptr @stats, align 4, !tbaa !712
  %226 = add i32 %225, 1
  store i32 %226, ptr @stats, align 4, !tbaa !712
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  %227 = add i32 %169, -1
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %168, !prof !1007, !llvm.loop !1008

229:                                              ; preds = %224, %168, %162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %232

230:                                              ; preds = %95, %91, %88, %79
  %231 = or i8 %80, 8
  store i8 %231, ptr %31, align 4
  br label %232

232:                                              ; preds = %229, %230
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %233 = load i32, ptr %28, align 8, !tbaa !810
  br label %234

234:                                              ; preds = %134, %232
  %235 = phi i32 [ %233, %232 ], [ %138, %134 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %235
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alias_get_name(ptr noundef %0) unnamed_addr #1 !prof !976 !PGOFuncName !1009 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @get_name(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %34, !prof !1010

5:                                                ; preds = %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !1011

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !706
  %15 = tail call fastcc ptr @alias_get_name(ptr noundef %14) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !706
  %18 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.60, ptr noundef %15, i32 noundef %17) #25
  br label %27

19:                                               ; preds = %8
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %21 = load i32, ptr %20, align 4, !tbaa !651
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !706
  %26 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.61, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %18, %12 ], [ %26, %23 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8, !tbaa !626
  %32 = call ptr @ggc_alloc_string(ptr noundef %31, i32 noundef -1) #25
  %33 = load ptr, ptr %2, align 8, !tbaa !626
  call void @free(ptr noundef %33) #23
  br label %34

34:                                               ; preds = %19, %27, %30, %5, %1
  %35 = phi ptr [ %3, %1 ], [ @.str.45, %5 ], [ %32, %30 ], [ @.str.45, %27 ], [ @.str.45, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @var_can_have_subvars(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1012 !PGOFuncName !1013 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 524288
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %17, !prof !1014

5:                                                ; preds = %1
  %6 = and i64 %2, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !651
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17, !prof !1015

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !706
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 65535
  %15 = icmp eq i64 %14, 16
  %16 = zext i1 %15 to i8
  br label %17

17:                                               ; preds = %10, %5, %1
  %18 = phi i8 [ 0, %1 ], [ 0, %5 ], [ %16, %10 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @push_fields_onto_fieldstack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #1 !prof !763 !PGOFuncName !1016 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %139, !prof !989

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !626
  %9 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %8) #23
  %10 = zext i32 %9 to i64
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !626
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 95, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !804
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %10, %14
  br i1 %15, label %139, label %16, !prof !980

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !706
  %19 = icmp eq ptr %18, null
  br i1 %19, label %139, label %20, !prof !990

20:                                               ; preds = %16, %134
  %21 = phi ptr [ %137, %134 ], [ %18, %16 ]
  %22 = phi i32 [ %135, %134 ], [ 0, %16 ]
  %23 = load i64, ptr %21, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 31
  br i1 %25, label %26, label %134, !prof !1017

26:                                               ; preds = %20
  %27 = tail call fastcc i64 @bitpos_of_field(ptr noundef nonnull %21) #23
  %28 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %21) #23, !range !656
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %30, !prof !1017

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !706
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -17
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %49, label %38

38:                                               ; preds = %30
  %39 = add nsw i64 %27, %2
  %40 = tail call fastcc i32 @push_fields_onto_fieldstack(ptr noundef nonnull %32, ptr noundef nonnull %1, i64 noundef %39) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %132, !prof !1018

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !706
  %45 = icmp eq ptr %44, null
  br i1 %45, label %132, label %46, !prof !1019

46:                                               ; preds = %42
  %47 = tail call i32 @integer_zerop(ptr noundef nonnull %44) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %132, !prof !855

49:                                               ; preds = %26, %30, %46
  %50 = load ptr, ptr %1, align 8, !tbaa !626
  %51 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !1020

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %50) #23
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ null, %49 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !706
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !1021

60:                                               ; preds = %55
  %61 = tail call i32 @host_integerp(ptr noundef nonnull %58, i32 noundef 1) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64, !prof !1021

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i1 [ false, %60 ], [ true, %63 ]
  %66 = phi i1 [ true, %60 ], [ false, %63 ]
  %67 = phi i8 [ 0, %60 ], [ 1, %63 ]
  %68 = icmp eq ptr %56, null
  br i1 %68, label %97, label %69, !prof !1020

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 2
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %97, !prof !1022

74:                                               ; preds = %69
  %75 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !656
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %97, !prof !1023

77:                                               ; preds = %74
  %78 = and i8 %71, 1
  %79 = icmp ne i8 %78, 0
  %80 = or i1 %65, %79
  br i1 %80, label %97, label %81, !prof !1024

81:                                               ; preds = %77
  %82 = load i64, ptr %56, align 8, !tbaa !994
  %83 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !1001
  %85 = add nsw i64 %84, %82
  %86 = add nsw i64 %27, %2
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97, !prof !1025

88:                                               ; preds = %81
  %89 = load ptr, ptr %1, align 8, !tbaa !626
  %90 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %89) #23
  %91 = load ptr, ptr %57, align 8, !tbaa !706
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !706
  %94 = getelementptr inbounds %struct.fieldoff, ptr %90, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !1001
  %96 = add i64 %95, %93
  store i64 %96, ptr %94, align 8, !tbaa !1001
  br label %134

97:                                               ; preds = %81, %77, %74, %69, %64
  %98 = tail call fastcc ptr @VEC_fieldoff_s_heap_safe_push(ptr noundef nonnull %1) #23
  %99 = add nsw i64 %27, %2
  store i64 %99, ptr %98, align 8, !tbaa !994
  %100 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 2
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, -2
  %103 = or disjoint i8 %102, %67
  store i8 %103, ptr %100, align 8
  br i1 %66, label %104, label %108, !prof !993

104:                                              ; preds = %97
  %105 = load ptr, ptr %57, align 8, !tbaa !706
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !706
  br label %108

108:                                              ; preds = %97, %104
  %109 = phi i64 [ %107, %104 ], [ -1, %97 ]
  %110 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 1
  store i64 %109, ptr %110, align 8
  %111 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !656
  %112 = shl nuw nsw i8 %111, 1
  %113 = and i8 %103, -3
  %114 = or disjoint i8 %113, %112
  store i8 %114, ptr %100, align 8
  br i1 %66, label %115, label %127, !prof !993

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !706
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %127 [
    i16 10, label %120
    i16 12, label %120
  ], !prof !1026

120:                                              ; preds = %115, %115
  %121 = getelementptr inbounds %struct.tree_type, ptr %117, i64 0, i32 6
  %122 = load i32, ptr %121, align 4
  %123 = freeze i32 %122
  %124 = lshr i32 %123, 11
  %125 = trunc i32 %124 to i8
  %126 = and i8 %125, 4
  br label %127

127:                                              ; preds = %120, %115, %108
  %128 = phi i8 [ 0, %108 ], [ 0, %115 ], [ %126, %120 ]
  %129 = and i8 %114, -5
  %130 = or disjoint i8 %128, %129
  store i8 %130, ptr %100, align 8
  %131 = add nsw i32 %22, 1
  br label %134

132:                                              ; preds = %42, %38, %46
  %133 = add nsw i32 %40, %22
  br label %134

134:                                              ; preds = %132, %127, %88, %20
  %135 = phi i32 [ %22, %20 ], [ %133, %132 ], [ %131, %127 ], [ %22, %88 ]
  %136 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !706
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %20, !prof !1027, !llvm.loop !1028

139:                                              ; preds = %134, %16, %7, %3
  %140 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %16 ], [ %135, %134 ]
  ret i32 %140
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_vi_for_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !976 !PGOFuncName !1029 {
  %3 = load ptr, ptr @vi_for_tree, align 8, !tbaa !626
  %4 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #25
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !981

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2603, ptr noundef nonnull @.str.4) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !626
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !1030

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2604, ptr noundef nonnull @.str.4) #25
  br label %11

11:                                               ; preds = %7, %10
  store ptr %1, ptr %4, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_copy_constraint(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1031 !PGOFuncName !1032 {
  %2 = load i32, ptr %0, align 8, !tbaa !810
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = tail call fastcc ptr @new_constraint(i64 %4, i64 0, i64 17179869184, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1033 !PGOFuncName !1034 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1035

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1036
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !1038 !PGOFuncName !1039 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1040

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1036
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1041

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !626
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_fieldstack(ptr noundef %0) unnamed_addr #1 !prof !763 !PGOFuncName !1042 {
  %2 = tail call fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef %0) #23
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %0) #23
  %4 = zext i32 %3 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %4, i64 noundef 24, ptr noundef nonnull @fieldoff_compare) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_for_overlaps(ptr noundef %0) unnamed_addr #7 !prof !763 !PGOFuncName !1043 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !626
  %3 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %9, !prof !990

5:                                                ; preds = %9
  %6 = add i32 %11, 1
  %7 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #23, !range !644
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !991, !llvm.loop !1044

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %13, %5 ], [ -1, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !626
  %13 = load i64, ptr %12, align 8, !tbaa !994
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %15, label %5, !prof !996

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_index(ptr noundef readnone %0) unnamed_addr #17 !prof !763 !PGOFuncName !1045 {
  %2 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_fieldoff_s_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !976 !PGOFuncName !1046 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !979

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !626
  ret void
}

; Function Attrs: optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @insert_into_field_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #10 !prof !1047 !PGOFuncName !1048 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !811
  %5 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !811
  store ptr %1, ptr %3, align 8, !tbaa !811
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bitpos_of_field(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1049 !PGOFuncName !1050 {
  %2 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !706
  %4 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 0) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6, !prof !1021

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  %9 = tail call i32 @host_integerp(ptr noundef %8, i32 noundef 0) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11, !prof !1021

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !706
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !706
  %15 = shl i64 %14, 3
  %16 = load ptr, ptr %7, align 8, !tbaa !706
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !706
  %19 = add i64 %18, %15
  br label %20

20:                                               ; preds = %1, %6, %11
  %21 = phi i64 [ %19, %11 ], [ -1, %6 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_last(ptr noundef readonly %0) unnamed_addr #9 !prof !1051 !PGOFuncName !1052 {
  %2 = load i32, ptr %0, align 8, !tbaa !1036
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_heap_safe_push(ptr nocapture noundef %0) unnamed_addr #1 !prof !1053 !PGOFuncName !1054 {
  tail call fastcc void @VEC_fieldoff_s_heap_reserve(ptr noundef %0) #23
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = tail call fastcc ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %2) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_fieldoff_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !1053 !PGOFuncName !1055 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1056

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #25
  store ptr %6, ptr %0, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %0) unnamed_addr #10 !prof !1053 !PGOFuncName !1057 {
  %2 = load i32, ptr %0, align 8, !tbaa !1036
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1036
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !1053 !PGOFuncName !1058 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !999

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1059
  %6 = load i32, ptr %0, align 8, !tbaa !1036
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef readnone %0) unnamed_addr #17 !prof !763 !PGOFuncName !1060 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !980
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @fieldoff_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #9 !prof !1051 !PGOFuncName !1061 {
  %3 = load i64, ptr %0, align 8, !tbaa !994
  %4 = load i64, ptr %1, align 8, !tbaa !994
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %17, label %6, !prof !1062

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, %4
  br i1 %7, label %17, label %8, !prof !1063

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fieldoff, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !1001
  %11 = getelementptr inbounds %struct.fieldoff, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !1001
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

; Function Attrs: optsize
declare ptr @get_name(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_constraint_from_heapvar(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1064 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !747
  %5 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !916
  %7 = tail call fastcc ptr @heapvar_lookup(ptr noundef %4, i64 noundef %6) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !626
  %11 = tail call ptr @create_tmp_var_raw(ptr noundef %10, ptr noundef %1) #25
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 33554432
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %3, align 8, !tbaa !747
  %16 = load i64, ptr %5, align 8, !tbaa !916
  tail call fastcc void @heapvar_insert(ptr noundef %15, i64 noundef %16, ptr noundef %11) #23
  %17 = tail call fastcc ptr @get_var_ann(ptr noundef %11) #23
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 16
  store i8 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !626
  %23 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %22) #23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %21) #25
  br label %27

27:                                               ; preds = %25, %20
  %28 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %21, ptr noundef %1) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 3
  store i64 0, ptr %31, align 8, !tbaa !916
  %32 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  %33 = or i8 %30, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 -1, i64 16, i1 false)
  store i8 %33, ptr %29, align 4
  tail call fastcc void @insert_vi_for_tree(ptr noundef nonnull %21, ptr noundef %28) #23
  %34 = load i32, ptr %28, align 8, !tbaa !810
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %0, i32 noundef %34) #23
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1065 !PGOFuncName !1066 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !1067 !PGOFuncName !1068 {
  %3 = load ptr, ptr %1, align 8, !tbaa !626
  %4 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1069

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3229, ptr noundef nonnull @.str.4) #25
  br label %7

7:                                                ; preds = %2, %6
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1070 !PGOFuncName !1071 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !706
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !1072 !PGOFuncName !1073 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1074
  %4 = load ptr, ptr %3, align 8, !tbaa !626
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1076 !PGOFuncName !1077 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !1076 !PGOFuncName !1078 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !1079 !PGOFuncName !1080 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1081

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1082
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1084

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !626
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1085 !PGOFuncName !1086 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1087

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1082
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_last(ptr noundef readonly %0) unnamed_addr #9 !prof !1088 !PGOFuncName !1089 {
  %2 = load i32, ptr %0, align 8, !tbaa !1082
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !1090 !PGOFuncName !1091 {
  %2 = load i32, ptr %0, align 8, !tbaa !1082
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1082
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1092 !PGOFuncName !1093 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #1 !prof !1094 !PGOFuncName !1095 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !846

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #1 !prof !1096 !PGOFuncName !1097 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1098 !PGOFuncName !1099 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_ptr_offset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !1100 !PGOFuncName !1101 {
  %4 = alloca %struct.constraint_expr, align 8
  %5 = alloca %struct.constraint_expr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %7 = load i8, ptr @use_field_sensitive, align 1, !tbaa !706
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !1102

9:                                                ; preds = %3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %88

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12, !prof !1102

12:                                               ; preds = %10
  %13 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !1103

15:                                               ; preds = %12, %10
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !706
  %19 = shl nsw i64 %18, 3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %88, label %21, !prof !1104

21:                                               ; preds = %15, %16
  %22 = phi i64 [ -9223372036854775808, %15 ], [ %19, %16 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !626
  %24 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %88, label %26, !prof !1105

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  br label %28

28:                                               ; preds = %26, %84
  %29 = phi i32 [ 0, %26 ], [ %86, %84 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !626
  %31 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %30, i32 noundef %29) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !927
  %32 = load i32, ptr %27, align 4, !tbaa !861
  %33 = call fastcc ptr @get_varinfo(i32 noundef %32) #23
  %34 = load i32, ptr %4, align 8, !tbaa !860
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %81, !prof !1102

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %81

41:                                               ; preds = %36
  %42 = icmp eq i64 %22, -9223372036854775808
  br i1 %42, label %43, label %59, !prof !1106

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 1
  %45 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 2
  %46 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !747
  %48 = call fastcc ptr @lookup_vi_for_tree(ptr noundef %47) #23
  br label %49

49:                                               ; preds = %55, %43
  %50 = phi ptr [ %48, %43 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %51 = load i32, ptr %50, align 8, !tbaa !810
  store i32 %51, ptr %44, align 4, !tbaa !861
  store i32 2, ptr %5, align 8, !tbaa !860
  store i64 0, ptr %45, align 8, !tbaa !862
  %52 = load i32, ptr %27, align 4, !tbaa !861
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %5) #23
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.variable_info, ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !811
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %84, label %49, !llvm.loop !1107

59:                                               ; preds = %41
  %60 = icmp slt i64 %22, 0
  %61 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !916
  %63 = add i64 %62, %22
  %64 = icmp ult i64 %62, %63
  %65 = select i1 %60, i1 %64, i1 false
  %66 = select i1 %65, i64 0, i64 %63
  %67 = call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %33, i64 noundef %66) #23
  %68 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !916
  %70 = icmp eq i64 %69, %66
  br i1 %70, label %79, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !811
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  %77 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %78 = load i32, ptr %73, align 8, !tbaa !810
  store i32 %78, ptr %76, align 4, !tbaa !861
  store i32 2, ptr %6, align 8, !tbaa !860
  store i64 0, ptr %77, align 8, !tbaa !862
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %79

79:                                               ; preds = %75, %71, %59
  %80 = load i32, ptr %67, align 8, !tbaa !810
  store i32 %80, ptr %27, align 4, !tbaa !861
  br label %81

81:                                               ; preds = %28, %36, %79
  %82 = phi i64 [ 0, %79 ], [ 0, %36 ], [ %22, %28 ]
  %83 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 %82, ptr %83, align 8, !tbaa !862
  br label %84

84:                                               ; preds = %55, %81
  %85 = load ptr, ptr %2, align 8, !tbaa !626
  call fastcc void @VEC_ce_s_base_replace(ptr noundef %85, i32 noundef %29, ptr noundef nonnull %4) #23
  %86 = add nuw i32 %29, 1
  %87 = icmp eq i32 %86, %24
  br i1 %87, label %88, label %28, !prof !1108, !llvm.loop !1109

88:                                               ; preds = %84, %21, %16, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_all_all_constraints(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1110 !PGOFuncName !1111 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %0) #23
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %10, label %7, !prof !864

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %1) #23
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %36

10:                                               ; preds = %7, %2
  %11 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13, !prof !1112

13:                                               ; preds = %10, %32
  %14 = phi i32 [ %33, %32 ], [ 0, %10 ]
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17, !prof !1112

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !626
  %19 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ 0, %17 ], [ %29, %20 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !626
  %23 = load i64, ptr %18, align 8
  %24 = load i64, ptr %19, align 8
  %25 = load i64, ptr %22, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = tail call fastcc ptr @new_constraint(i64 %23, i64 %24, i64 %25, i64 %27) #23
  tail call fastcc void @process_constraint(ptr noundef %28) #23
  %29 = add i32 %21, 1
  %30 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %29, ptr noundef nonnull %4) #23, !range !644
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20, !prof !1113, !llvm.loop !1114

32:                                               ; preds = %20, %13
  %33 = add i32 %14, 1
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %3) #23, !range !644
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %13, !prof !1113, !llvm.loop !1115

36:                                               ; preds = %7
  %37 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull @.str.66) #23
  %38 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %43, %36
  %41 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %53

43:                                               ; preds = %36, %43
  %44 = phi i32 [ %50, %43 ], [ 0, %36 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !626
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, ptr %45, i64 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = tail call fastcc ptr @new_constraint(i64 %37, i64 0, i64 %46, i64 %48) #23
  tail call fastcc void @process_constraint(ptr noundef %49) #23
  %50 = add i32 %44, 1
  %51 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %50, ptr noundef nonnull %4) #23, !range !644
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %43, !llvm.loop !1116

53:                                               ; preds = %40, %53
  %54 = phi i32 [ %60, %53 ], [ 0, %40 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !626
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, ptr %55, i64 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = tail call fastcc ptr @new_constraint(i64 %56, i64 %58, i64 %37, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %59) #23
  %60 = add i32 %54, 1
  %61 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %3) #23, !range !644
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %53, !llvm.loop !1117

63:                                               ; preds = %53, %32, %40, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ce_s_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1118 !PGOFuncName !1119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1120

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_deref(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1121 !PGOFuncName !1122 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !626
  %4 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6, !prof !1123

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !626
  %9 = load i32, ptr %8, align 8, !tbaa !860
  switch i32 %9, label %21 [
    i32 0, label %10
    i32 2, label %11
    i32 1, label %12
  ], !prof !1124

10:                                               ; preds = %6
  store i32 1, ptr %8, align 8, !tbaa !860
  br label %22

11:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !860
  br label %22

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull @.str.67) #23
  %14 = load i64, ptr %8, align 8
  %15 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = tail call fastcc ptr @new_constraint(i64 %13, i64 0, i64 %14, i64 %16) #23
  tail call fastcc void @process_constraint(ptr noundef %17) #23
  %18 = lshr i64 %13, 32
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !861
  br label %22

21:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3090, ptr noundef nonnull @.str.4) #25
  br label %22

22:                                               ; preds = %10, %12, %21, %11
  %23 = add i32 %7, 1
  %24 = load ptr, ptr %0, align 8, !tbaa !626
  %25 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %2) #23, !range !644
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %6, !prof !1125, !llvm.loop !1126

27:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_vi_for_tree(ptr noundef %0) unnamed_addr #1 !prof !902 !PGOFuncName !1127 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !626
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !906

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_const_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1128 {
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %6 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 5, ptr %10, align 4, !tbaa !861
  %11 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %11, align 8, !tbaa !862
  store i32 0, ptr %3, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %12

12:                                               ; preds = %8, %2
  %13 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %12, %31
  %16 = phi i32 [ %32, %31 ], [ 0, %12 ]
  %17 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %16) #23
  %18 = call fastcc zeroext i8 @could_have_pointers(ptr noundef %17) #23, !range !656
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call fastcc void @get_constraint_for(ptr noundef %17, ptr noundef nonnull %4) #23
  %21 = load ptr, ptr %4, align 8
  %22 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %5) #23, !range !644
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %26 = load ptr, ptr %5, align 8, !tbaa !626
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef %26) #23
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef %27, ptr noundef nonnull %5) #23, !range !644
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !llvm.loop !1129

30:                                               ; preds = %24, %20
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %31

31:                                               ; preds = %30, %15
  %32 = add nuw i32 %16, 1
  %33 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %15, label %35, !llvm.loop !1130

35:                                               ; preds = %31, %12
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %36, align 4, !tbaa !861
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !862
  store i32 2, ptr %3, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_pure_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1131 {
  %3 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %2, %13
  %7 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %8 = phi i8 [ %14, %13 ], [ 0, %2 ]
  %9 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %7) #23
  %10 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %9) #23, !range !656
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %6
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %9) #23
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i8 [ 1, %12 ], [ %8, %6 ]
  %15 = add nuw i32 %7, 1
  %16 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %6, label %18, !llvm.loop !1132

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %24

21:                                               ; preds = %2
  %22 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21, %18
  %25 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %25) #23
  br label %28

26:                                               ; preds = %18
  %27 = icmp eq i8 %14, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24, %26
  %29 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 5, ptr %29, align 4, !tbaa !861
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %30, align 8, !tbaa !862
  store i32 0, ptr %3, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %31

31:                                               ; preds = %21, %28, %26
  %32 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %32, align 4, !tbaa !861
  %33 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %33, align 8, !tbaa !862
  store i32 0, ptr %3, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_rhs_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !1094 !PGOFuncName !1133 {
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %6 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !1134

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %10) #23, !range !656
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !1135

13:                                               ; preds = %8
  tail call fastcc void @make_escape_constraint(ptr noundef %10) #23
  br label %14

14:                                               ; preds = %13, %8
  %15 = add nuw i32 %9, 1
  %16 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %8, label %18, !prof !1136, !llvm.loop !1137

18:                                               ; preds = %14, %2
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !846

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #23, !range !656
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %52, label %26, !prof !846

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !706
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 262144
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %37 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  call fastcc void @get_constraint_for_address_of(ptr noundef %37, ptr noundef nonnull %4) #23
  %38 = load ptr, ptr %4, align 8
  %39 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %5) #23, !range !644
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %36 ]
  %43 = load ptr, ptr %5, align 8, !tbaa !626
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, ptr %43, i64 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = tail call fastcc ptr @new_constraint(i64 12884901888, i64 0, i64 %44, i64 %46) #23
  tail call fastcc void @process_constraint(ptr noundef %47) #23
  %48 = add i32 %42, 1
  %49 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef %48, ptr noundef nonnull %5) #23, !range !644
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %41, !llvm.loop !1138

51:                                               ; preds = %41, %36
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %52

52:                                               ; preds = %51, %29, %26, %23
  %53 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %53, align 4, !tbaa !861
  %54 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %54, align 8, !tbaa !862
  store i32 0, ptr %3, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_lhs_call(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #1 !prof !625 !PGOFuncName !1139 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !626
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %5) #23
  %7 = and i32 %1, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @get_vi_for_tree(ptr noundef %0) #23
  %11 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %10, ptr noundef nonnull @.str.68) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !747
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, -33554433
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 127
  store i8 %19, ptr %17, align 4
  %20 = icmp eq ptr %3, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 6144
  %25 = icmp eq i32 %24, 6144
  br i1 %25, label %47, label %26

26:                                               ; preds = %21, %9
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %11, i32 noundef 4) #23
  br label %47

27:                                               ; preds = %4
  %28 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %2) #23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %27
  %31 = tail call ptr @get_base_address(ptr noundef %0) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !651
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %31) #23, !range !656
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %43 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  store i32 3, ptr %43, align 4, !tbaa !861
  %44 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !862
  store i32 0, ptr %6, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %45

45:                                               ; preds = %42, %39, %33, %30
  %46 = load ptr, ptr %5, align 8, !tbaa !626
  call fastcc void @process_all_all_constraints(ptr noundef %46, ptr noundef %2) #23
  br label %47

47:                                               ; preds = %21, %26, %27, %45
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #1 !prof !1094 !PGOFuncName !1140 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1141 !PGOFuncName !1142 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1143 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !918
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %31

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !916
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !747
  %13 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %12) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %0, %6 ], [ %13, %10 ]
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi ptr [ %29, %27 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !916
  %21 = icmp ugt i64 %20, %1
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = sub i64 %1, %20
  %24 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !917
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !811
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !llvm.loop !1144

31:                                               ; preds = %22, %27, %10, %2
  %32 = phi ptr [ null, %2 ], [ null, %10 ], [ %18, %22 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1145 !PGOFuncName !1146 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #1 !prof !1147 !PGOFuncName !1148 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1149 !PGOFuncName !1150 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !706
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #1 !prof !1151 !PGOFuncName !1152 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_structure_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1153 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !626
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %4) #23
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %5) #23
  %12 = load ptr, ptr %4, align 8
  %13 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %12, i32 noundef 0) #23
  store ptr %13, ptr %3, align 8, !tbaa !626
  %14 = load ptr, ptr %5, align 8
  %15 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef 0) #23
  %16 = load i32, ptr %13, align 8, !tbaa !860
  switch i32 %16, label %21 [
    i32 1, label %27
    i32 2, label %17
  ]

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.constraint_expr, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !861
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %27, label %24

21:                                               ; preds = %2
  %22 = load i32, ptr %15, align 8, !tbaa !860
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %28

24:                                               ; preds = %17
  %25 = load i32, ptr %15, align 8, !tbaa !860
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %107

27:                                               ; preds = %24, %2, %21, %17
  tail call fastcc void @process_all_all_constraints(ptr noundef %12, ptr noundef %14) #23
  br label %108

28:                                               ; preds = %21
  %29 = icmp eq i32 %16, 0
  br i1 %29, label %30, label %107

30:                                               ; preds = %28
  switch i32 %22, label %107 [
    i32 0, label %31
    i32 2, label %31
  ]

31:                                               ; preds = %30, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #24
  %32 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %33 = call ptr @get_ref_base_and_extent(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36

36:                                               ; preds = %31
  %37 = load i64, ptr %11, align 8, !tbaa !678
  %38 = load i64, ptr %8, align 8, !tbaa !678
  br label %39

39:                                               ; preds = %36, %101
  %40 = phi i64 [ %80, %101 ], [ %38, %36 ]
  %41 = phi i64 [ %81, %101 ], [ %37, %36 ]
  %42 = phi i32 [ %103, %101 ], [ 0, %36 ]
  %43 = phi i32 [ %102, %101 ], [ 0, %36 ]
  %44 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef %43) #23
  %45 = load ptr, ptr %3, align 8, !tbaa !626
  %46 = getelementptr inbounds %struct.constraint_expr, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !861
  %48 = call fastcc ptr @get_varinfo(i32 noundef %47) #23
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !861
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 64
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !916
  %59 = add i64 %41, %58
  %60 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !917
  %62 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !916
  %64 = add i64 %40, %63
  %65 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %66 = load i64, ptr %65, align 8, !tbaa !917
  %67 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %59, i64 noundef %61, i64 noundef %64, i64 noundef %66) #23, !range !656
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %56
  %70 = load i64, ptr %45, align 8
  %71 = getelementptr inbounds { i64, i64 }, ptr %45, i64 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = load i64, ptr %44, align 8
  %74 = getelementptr inbounds { i64, i64 }, ptr %44, i64 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = call fastcc ptr @new_constraint(i64 %70, i64 %72, i64 %73, i64 %75) #23
  call fastcc void @process_constraint(ptr noundef %76) #23
  %77 = load i64, ptr %11, align 8, !tbaa !678
  %78 = load i64, ptr %8, align 8, !tbaa !678
  br label %79

79:                                               ; preds = %69, %56, %39
  %80 = phi i64 [ %78, %69 ], [ %40, %56 ], [ %40, %39 ]
  %81 = phi i64 [ %77, %69 ], [ %41, %56 ], [ %41, %39 ]
  %82 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !916
  %84 = add i64 %81, %83
  %85 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !917
  %87 = add i64 %84, %86
  %88 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !916
  %90 = add i64 %80, %89
  %91 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !917
  %93 = add i64 %90, %92
  %94 = icmp ugt i64 %87, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = add i32 %43, 1
  %97 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %14) #23
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %101, label %106

99:                                               ; preds = %79
  %100 = add i32 %42, 1
  br label %101

101:                                              ; preds = %95, %99
  %102 = phi i32 [ %43, %99 ], [ %96, %95 ]
  %103 = phi i32 [ %100, %99 ], [ %42, %95 ]
  %104 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef %103, ptr noundef nonnull %3) #23, !range !644
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %39

106:                                              ; preds = %101, %95, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %108

107:                                              ; preds = %24, %30, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3311, ptr noundef nonnull @.str.4) #25
  br label %108

108:                                              ; preds = %106, %107, %27
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #1 !prof !1154 !PGOFuncName !1155 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #23, !range !857
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #23, !range !832
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1156

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %7 = load i64, ptr %6, align 8
  %8 = trunc i64 %7 to i32
  %9 = and i32 %8, 65535
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i32 [ %9, %5 ], [ %2, %1 ]
  ret i32 %11
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #1 !prof !1100 !PGOFuncName !1157 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1103

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #1 !prof !625 !PGOFuncName !1158 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ]

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #23
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !857
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !706
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #25
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !626
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !626
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1159 !PGOFuncName !1160 {
  tail call fastcc void @VEC_ce_s_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !626
  tail call fastcc void @VEC_ce_s_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_escape_constraint(ptr noundef %0) unnamed_addr #1 !prof !1161 !PGOFuncName !1162 {
  tail call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #1 !prof !1163 !PGOFuncName !1164 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !656
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !852

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !857
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
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #1 !prof !1165 !PGOFuncName !1166 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !625 !PGOFuncName !1167 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !706
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1168 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !706
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 2655, ptr noundef nonnull @.str.4) #25
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !706
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #23
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !625 !PGOFuncName !1169 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !706
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1170 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !706
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 2622, ptr noundef nonnull @.str.4) #25
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #23
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_1(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !1171 !PGOFuncName !1172 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !651
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %0, align 8
  br i1 %6, label %24, label %8, !prof !1173

8:                                                ; preds = %3
  %9 = and i64 %7, 65535
  %10 = icmp eq i64 %9, 23
  br i1 %10, label %11, label %17, !prof !1174

11:                                               ; preds = %8
  %12 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !1175

14:                                               ; preds = %11
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 65535
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %16, %14 ], [ %9, %8 ]
  %19 = phi i64 [ %15, %14 ], [ %7, %8 ]
  %20 = icmp eq i64 %18, 51
  br i1 %20, label %21, label %24, !prof !1176

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !861
  store i32 2, ptr %4, align 8, !tbaa !860
  %23 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !862
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

24:                                               ; preds = %17, %3
  %25 = phi i64 [ %19, %17 ], [ %7, %3 ]
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 28
  br i1 %28, label %29, label %32, !prof !1177

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 2, ptr %30, align 4, !tbaa !861
  store i32 0, ptr %4, align 8, !tbaa !860
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %31, align 8, !tbaa !862
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

32:                                               ; preds = %24
  %33 = and i64 %25, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !651
  switch i32 %35, label %54 [
    i32 10, label %36
    i32 4, label %41
    i32 0, label %50
    i32 3, label %53
  ], !prof !1178

36:                                               ; preds = %32
  %37 = icmp eq i32 %27, 121
  br i1 %37, label %38, label %54, !prof !1179

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !706
  tail call fastcc void @get_constraint_for_address_of(ptr noundef %40, ptr noundef %1) #23
  br label %57

41:                                               ; preds = %32
  %42 = trunc i64 %25 to i16
  switch i16 %42, label %54 [
    i16 47, label %43
    i16 45, label %46
    i16 46, label %46
    i16 41, label %46
    i16 118, label %47
  ], !prof !1180

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !706
  tail call fastcc void @get_constraint_for_1(ptr noundef %45, ptr noundef %1, i8 noundef zeroext %2) #23
  tail call fastcc void @do_deref(ptr noundef %1) #23
  br label %57

46:                                               ; preds = %41, %41, %41
  tail call fastcc void @get_constraint_for_component_ref(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !706
  tail call fastcc void @get_constraint_for_1(ptr noundef %49, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

50:                                               ; preds = %32
  %51 = icmp eq i32 %27, 141
  br i1 %51, label %52, label %54, !prof !1181

52:                                               ; preds = %50
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

53:                                               ; preds = %32
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

54:                                               ; preds = %32, %50, %41, %36
  store i32 2, ptr %4, align 8, !tbaa !860
  %55 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 1, ptr %55, align 4, !tbaa !861
  %56 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %56, align 8, !tbaa !862
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

57:                                               ; preds = %54, %53, %52, %47, %46, %43, %38, %29, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_address_of(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !1182 !PGOFuncName !1183 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !626
  %5 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7, !prof !1184

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !626
  %10 = load i32, ptr %9, align 8, !tbaa !860
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 0, i32 2, !prof !1185
  store i32 %12, ptr %9, align 8, !tbaa !860
  %13 = add i32 %8, 1
  %14 = load ptr, ptr %1, align 8, !tbaa !626
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %14, i32 noundef %13, ptr noundef nonnull %3) #23, !range !644
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7, !prof !1186, !llvm.loop !1187

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_component_ref(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !1188 !PGOFuncName !1189 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.constraint_expr, align 8
  %8 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 -1, ptr %4, align 8, !tbaa !678
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store i64 -1, ptr %5, align 8, !tbaa !678
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  br label %9

9:                                                ; preds = %23, %3
  %10 = phi ptr [ %0, %3 ], [ %25, %23 ]
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i16
  switch i16 %12, label %18 [
    i16 32, label %26
    i16 34, label %26
    i16 36, label %26
    i16 141, label %13
  ], !prof !1190

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !706
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 32, label %26
    i16 34, label %26
    i16 36, label %26
  ], !prof !1191

18:                                               ; preds = %13, %9
  %19 = and i64 %11, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !651
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23, !prof !1192

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !706
  br label %9, !llvm.loop !1193

26:                                               ; preds = %13, %13, %13, %9, %9, %9, %18
  %27 = and i64 %11, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !651
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37, !prof !1194

31:                                               ; preds = %26
  %32 = tail call i32 @integer_zerop(ptr noundef nonnull %10) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34, !prof !1195

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %35 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 2
  store i64 0, ptr %35, align 8, !tbaa !862
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 1
  store i32 7, ptr %36, align 4, !tbaa !861
  store i32 0, ptr %7, align 8, !tbaa !860
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %159

37:                                               ; preds = %31, %26
  %38 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @get_constraint_for_1(ptr noundef %38, ptr noundef %1, i8 noundef zeroext 1) #23
  %39 = load ptr, ptr %1, align 8, !tbaa !626
  %40 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %39) #23
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42, !prof !1196

42:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2973, ptr noundef nonnull @.str.4) #25
  %43 = load ptr, ptr %1, align 8, !tbaa !626
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %39, %37 ], [ %43, %42 ]
  %46 = call fastcc ptr @VEC_ce_s_base_last(ptr noundef %45) #23
  %47 = load i32, ptr %46, align 8, !tbaa !860
  switch i32 %47, label %158 [
    i32 0, label %48
    i32 2, label %155
    i32 1, label %136
  ], !prof !1197

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !861
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56, !prof !1198

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %57, align 8, !tbaa !862
  br label %159

58:                                               ; preds = %48
  %59 = load i64, ptr %6, align 8, !tbaa !678
  %60 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %61 = getelementptr inbounds %struct.variable_info, ptr %60, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !918
  %63 = icmp ult i64 %59, %62
  %64 = load i64, ptr %5, align 8
  %65 = icmp ne i64 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %118, !prof !1199

67:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  %68 = load i64, ptr %46, align 8
  store i64 %68, ptr %8, align 8
  call fastcc void @VEC_ce_s_base_pop(ptr noundef %45) #23
  %69 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %69, align 8, !tbaa !862
  %70 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !861
  %72 = call fastcc ptr @get_varinfo(i32 noundef %71) #23
  %73 = icmp eq ptr %72, null
  br i1 %73, label %91, label %74, !prof !1200

74:                                               ; preds = %67, %87
  %75 = phi ptr [ %89, %87 ], [ %72, %67 ]
  %76 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 3
  %77 = load i64, ptr %76, align 8, !tbaa !916
  %78 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 4
  %79 = load i64, ptr %78, align 8, !tbaa !917
  %80 = load i64, ptr %6, align 8, !tbaa !678
  %81 = load i64, ptr %5, align 8, !tbaa !678
  %82 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %77, i64 noundef %79, i64 noundef %80, i64 noundef %81) #23, !range !656
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %87, label %84, !prof !1201

84:                                               ; preds = %74
  %85 = icmp eq i8 %2, 0
  %86 = load i32, ptr %75, align 8, !tbaa !810
  store i32 %86, ptr %70, align 4, !tbaa !861
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br i1 %85, label %87, label %95, !prof !1202

87:                                               ; preds = %84, %74
  %88 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !811
  %90 = icmp eq ptr %89, null
  br i1 %90, label %91, label %74, !prof !1203, !llvm.loop !1204

91:                                               ; preds = %87, %67
  %92 = icmp eq i8 %2, 0
  br i1 %92, label %93, label %95, !prof !1202

93:                                               ; preds = %91
  %94 = load ptr, ptr %1, align 8, !tbaa !626
  br label %109

95:                                               ; preds = %84, %91
  %96 = load ptr, ptr %1, align 8, !tbaa !626
  %97 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %96) #23
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %95
  %100 = load i32, ptr %70, align 4, !tbaa !861
  %101 = call fastcc ptr @get_varinfo(i32 noundef %100) #23
  br label %102

102:                                              ; preds = %102, %99
  %103 = phi ptr [ %101, %99 ], [ %105, %102 ]
  %104 = getelementptr inbounds %struct.variable_info, ptr %103, i64 0, i32 2
  %105 = load ptr, ptr %104, align 8, !tbaa !811
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %102, !llvm.loop !1205

107:                                              ; preds = %102
  %108 = load i32, ptr %103, align 8, !tbaa !810
  store i32 %108, ptr %70, align 4, !tbaa !861
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br label %117

109:                                              ; preds = %93, %95
  %110 = phi ptr [ %94, %93 ], [ %96, %95 ]
  %111 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %110) #23
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117, !prof !1206

113:                                              ; preds = %109
  %114 = call fastcc zeroext i8 @ref_contains_array_ref(ptr noundef %0) #23, !range !656
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3027, ptr noundef nonnull @.str.4) #25
  br label %117

117:                                              ; preds = %116, %113, %109, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %159

118:                                              ; preds = %58
  %119 = icmp eq i64 %64, 0
  %120 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %121 = icmp eq ptr %120, null
  br i1 %119, label %122, label %129

122:                                              ; preds = %118
  br i1 %121, label %159, label %123

123:                                              ; preds = %122
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %159, label %127

127:                                              ; preds = %123
  %128 = call i64 @fwrite(ptr nonnull @.str.63, i64 47, i64 1, ptr nonnull %120)
  br label %159

129:                                              ; preds = %118
  br i1 %121, label %159, label %130

130:                                              ; preds = %129
  %131 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %132 = and i32 %131, 8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %159, label %134

134:                                              ; preds = %130
  %135 = call i64 @fwrite(ptr nonnull @.str.64, i64 45, i64 1, ptr nonnull %120)
  br label %159

136:                                              ; preds = %44
  %137 = load i64, ptr %6, align 8, !tbaa !678
  %138 = icmp eq i64 %137, -1
  br i1 %138, label %151, label %139, !prof !1207

139:                                              ; preds = %136
  %140 = load i64, ptr %4, align 8, !tbaa !678
  %141 = load i64, ptr %5, align 8, !tbaa !678
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %151, !prof !1208

143:                                              ; preds = %139
  %144 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %145 = load ptr, ptr %144, align 8, !tbaa !706
  %146 = load i64, ptr %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = and i32 %147, 65535
  %149 = add nsw i32 %148, -15
  %150 = icmp ult i32 %149, 4
  br i1 %150, label %151, label %153, !prof !1209

151:                                              ; preds = %143, %139, %136
  %152 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 -9223372036854775808, ptr %152, align 8, !tbaa !862
  br label %159

153:                                              ; preds = %143
  %154 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 %137, ptr %154, align 8, !tbaa !862
  br label %159

155:                                              ; preds = %44
  store i32 0, ptr %46, align 8, !tbaa !860
  %156 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  store i32 1, ptr %156, align 4, !tbaa !861
  %157 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %157, align 8, !tbaa !862
  br label %159

158:                                              ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 3060, ptr noundef nonnull @.str.4) #25
  br label %159

159:                                              ; preds = %56, %153, %151, %158, %155, %117, %129, %130, %134, %122, %123, %127, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_ssa_var(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #1 !prof !1210 !PGOFuncName !1211 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %7
  ], !prof !1212

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !706
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ], !prof !1213

12:                                               ; preds = %7, %3
  %13 = and i64 %5, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !651
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2699, ptr noundef nonnull @.str.4) #25
  %18 = load i64, ptr %0, align 8
  br label %19

19:                                               ; preds = %7, %7, %7, %3, %3, %3, %12, %17
  %20 = phi i64 [ %5, %7 ], [ %5, %7 ], [ %5, %7 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ], [ %5, %12 ], [ %18, %17 ]
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %33, !prof !1214

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !706
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp ne i64 %27, 34
  %29 = and i64 %20, 4294967296
  %30 = icmp eq i64 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %33, label %32, !prof !1215

32:                                               ; preds = %23
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %25, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %58

33:                                               ; preds = %23, %19
  %34 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %0) #23
  %35 = load i32, ptr %34, align 8, !tbaa !810
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !861
  store i32 0, ptr %4, align 8, !tbaa !860
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !862
  %38 = icmp eq i32 %35, 1
  br i1 %38, label %39, label %44, !prof !1216

39:                                               ; preds = %33
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 1048576
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2719, ptr noundef nonnull @.str.4) #25
  store i32 2, ptr %4, align 8, !tbaa !860
  store i32 2, ptr %36, align 4, !tbaa !861
  br label %44

44:                                               ; preds = %43, %39, %33
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %46, label %57, !prof !1217

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %57, !prof !1218

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %55, %51 ], [ %34, %46 ]
  %53 = load i32, ptr %52, align 8, !tbaa !810
  store i32 %53, ptr %36, align 4, !tbaa !861
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  %54 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !811
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %51, !llvm.loop !1219

57:                                               ; preds = %46, %44
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %58

58:                                               ; preds = %51, %57, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #17 !prof !1220 !PGOFuncName !1221 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6, !prof !1222

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11, !prof !1223

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13, !prof !1224

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18, !prof !1225

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_contains_array_ref(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !625 !PGOFuncName !1226 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !656
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.57, i32 noundef 1161, ptr noundef nonnull @.str.4) #25
  br label %5

5:                                                ; preds = %1, %4
  br label %6

6:                                                ; preds = %5, %11
  %7 = phi ptr [ %13, %11 ], [ %0, %5 ]
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp eq i64 %9, 45
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.tree_exp, ptr %7, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !706
  %14 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %13) #23, !range !656
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !1227

16:                                               ; preds = %11, %6
  %17 = phi i8 [ 1, %6 ], [ 0, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !625 !PGOFuncName !1228 {
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !1072 !PGOFuncName !1229 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !706
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !837

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 3103, ptr noundef nonnull @.str.4) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1230 !PGOFuncName !1231 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !656
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1232

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !626
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1230 !PGOFuncName !1233 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #1 !prof !1230 !PGOFuncName !1234 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !678
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1232

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1622, ptr noundef nonnull @.str.4) #25
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1230 !PGOFuncName !1235 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #17 !prof !1230 !PGOFuncName !1236 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !651
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #17 !prof !1100 !PGOFuncName !1237 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1238 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !916
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !747
  %9 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %8) #23
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %0, %2 ], [ %9, %6 ]
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %15, %21 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !811
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !916
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = sub i64 %1, %19
  %23 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !917
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %12, !llvm.loop !1239

26:                                               ; preds = %17, %12, %21
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #10 !prof !1100 !PGOFuncName !1240 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !1102

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !927
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #1 !prof !1094 !PGOFuncName !1241 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_to(i32 noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1161 !PGOFuncName !1242 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !626
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw nsw i64 %5, 32
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %3) #23
  %7 = load ptr, ptr %3, align 8
  %8 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10, !prof !1243

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %17, %10 ], [ 0, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !626
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc ptr @new_constraint(i64 %6, i64 0, i64 %13, i64 %15) #23
  tail call fastcc void @process_constraint(ptr noundef %16) #23
  %17 = add i32 %11, 1
  %18 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef %17, ptr noundef nonnull %4) #23, !range !644
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !prof !1244, !llvm.loop !1245

20:                                               ; preds = %10, %2
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1094 !PGOFuncName !1246 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !1154 !PGOFuncName !1247 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !832
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1248

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.65, i32 noundef 1446, ptr noundef nonnull @.str.4) #25
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #17 !prof !1154 !PGOFuncName !1249 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !706
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #1 !prof !625 !PGOFuncName !1250 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !706
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !1159 !PGOFuncName !1251 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = tail call fastcc i32 @VEC_ce_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1252

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  store ptr %6, ptr %0, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #10 !prof !1159 !PGOFuncName !1253 {
  %3 = load i32, ptr %0, align 8, !tbaa !1082
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1082
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !1254

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !927
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !1159 !PGOFuncName !1255 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1252

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1256
  %6 = load i32, ptr %0, align 8, !tbaa !1082
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !875 !PGOFuncName !1257 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1258
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1259

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !706
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1260

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1261
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #9 !prof !875 !PGOFuncName !1263 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1260

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1264
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_graph(i32 noundef %0) unnamed_addr #1 !prof !723 !PGOFuncName !1266 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #25
  store ptr %2, ptr @graph, align 8, !tbaa !626
  store i32 %0, ptr %2, align 8, !tbaa !648
  %3 = zext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %5 = load ptr, ptr @graph, align 8, !tbaa !626
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !759
  %7 = load i32, ptr %5, align 8, !tbaa !648
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call ptr @xmalloc(i64 noundef %9) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !626
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !762
  %13 = load i32, ptr %11, align 8, !tbaa !648
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #25
  %17 = load ptr, ptr @graph, align 8, !tbaa !626
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 5
  store ptr %16, ptr %18, align 8, !tbaa !650
  %19 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %20 = load ptr, ptr @graph, align 8, !tbaa !626
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %20, i64 0, i32 15
  store ptr %19, ptr %21, align 8, !tbaa !756
  %22 = load i32, ptr %20, align 8, !tbaa !648
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 4) #25
  %25 = load ptr, ptr @graph, align 8, !tbaa !626
  %26 = getelementptr inbounds %struct.constraint_graph, ptr %25, i64 0, i32 7
  store ptr %24, ptr %26, align 8, !tbaa !760
  %27 = load i32, ptr %25, align 8, !tbaa !648
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = tail call ptr @xmalloc(i64 noundef %29) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !626
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 8
  store ptr %30, ptr %32, align 8, !tbaa !761
  %33 = load i32, ptr %31, align 8, !tbaa !648
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35, !prof !732

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !650
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !762
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %46, %40 ]
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = trunc i64 %41 to i32
  store i32 %43, ptr %42, align 4, !tbaa !651
  %44 = getelementptr inbounds i32, ptr %30, i64 %41
  store i32 -1, ptr %44, align 4, !tbaa !651
  %45 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 -1, ptr %45, align 4, !tbaa !651
  %46 = add nuw nsw i64 %41, 1
  %47 = load i32, ptr %31, align 8, !tbaa !648
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %40, label %50, !prof !1267, !llvm.loop !1268

50:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_pred_graph() unnamed_addr #1 !prof !723 !PGOFuncName !1269 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @graph, align 8, !tbaa !626
  %3 = load i32, ptr %2, align 8, !tbaa !648
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !626
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %6, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !1270
  %8 = load i32, ptr %6, align 8, !tbaa !648
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !626
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 3
  store ptr %10, ptr %12, align 8, !tbaa !1271
  %13 = load i32, ptr %11, align 8, !tbaa !648
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #25
  %16 = load ptr, ptr @graph, align 8, !tbaa !626
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %16, i64 0, i32 9
  store ptr %15, ptr %17, align 8, !tbaa !1272
  %18 = load i32, ptr %16, align 8, !tbaa !648
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 4) #25
  %21 = load ptr, ptr @graph, align 8, !tbaa !626
  %22 = getelementptr inbounds %struct.constraint_graph, ptr %21, i64 0, i32 10
  store ptr %20, ptr %22, align 8, !tbaa !1273
  %23 = load i32, ptr %21, align 8, !tbaa !648
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #25
  %26 = load ptr, ptr @graph, align 8, !tbaa !626
  %27 = getelementptr inbounds %struct.constraint_graph, ptr %26, i64 0, i32 11
  store ptr %25, ptr %27, align 8, !tbaa !1274
  %28 = load i32, ptr %26, align 8, !tbaa !648
  %29 = zext i32 %28 to i64
  %30 = tail call ptr @xcalloc(i64 noundef %29, i64 noundef 8) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !626
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 12
  store ptr %30, ptr %32, align 8, !tbaa !1275
  %33 = load i32, ptr %31, align 8, !tbaa !648
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 2
  %36 = tail call ptr @xmalloc(i64 noundef %35) #25
  %37 = load ptr, ptr @graph, align 8, !tbaa !626
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %37, i64 0, i32 6
  store ptr %36, ptr %38, align 8, !tbaa !1276
  %39 = load i32, ptr %37, align 8, !tbaa !648
  %40 = tail call ptr @sbitmap_alloc(i32 noundef %39) #25
  %41 = load ptr, ptr @graph, align 8, !tbaa !626
  %42 = getelementptr inbounds %struct.constraint_graph, ptr %41, i64 0, i32 13
  store ptr %40, ptr %42, align 8, !tbaa !1277
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %44 = load ptr, ptr @graph, align 8, !tbaa !626
  %45 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 14
  store ptr %43, ptr %45, align 8, !tbaa !1278
  %46 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !1277
  tail call void @sbitmap_zero(ptr noundef %47) #25
  %48 = load ptr, ptr @varmap, align 8
  %49 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %48) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59, !prof !732

51:                                               ; preds = %72, %0
  %52 = phi ptr [ %48, %0 ], [ %73, %72 ]
  %53 = load ptr, ptr @graph, align 8, !tbaa !626
  %54 = load i32, ptr %53, align 8, !tbaa !648
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56, !prof !732

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !1276
  br label %87

59:                                               ; preds = %0, %72
  %60 = phi ptr [ %73, %72 ], [ %48, %0 ]
  %61 = phi i32 [ %74, %72 ], [ 0, %0 ]
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %61) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72, !prof !1279

67:                                               ; preds = %59
  %68 = load ptr, ptr @graph, align 8, !tbaa !626
  %69 = getelementptr inbounds %struct.constraint_graph, ptr %68, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !1277
  tail call fastcc void @SET_BIT(ptr noundef %70, i32 noundef %61) #23
  %71 = load ptr, ptr @varmap, align 8
  br label %72

72:                                               ; preds = %59, %67
  %73 = phi ptr [ %60, %59 ], [ %71, %67 ]
  %74 = add nuw i32 %61, 1
  %75 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %73) #23
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %51, !prof !757, !llvm.loop !1280

77:                                               ; preds = %87
  %78 = load ptr, ptr @varmap, align 8
  br label %79

79:                                               ; preds = %77, %51
  %80 = phi ptr [ %78, %77 ], [ %52, %51 ]
  %81 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %80) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83, !prof !732

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !762
  %86 = load ptr, ptr @varmap, align 8
  br label %98

87:                                               ; preds = %56, %87
  %88 = phi i64 [ 0, %56 ], [ %90, %87 ]
  %89 = getelementptr inbounds i32, ptr %58, i64 %88
  store i32 -1, ptr %89, align 4, !tbaa !651
  %90 = add nuw nsw i64 %88, 1
  %91 = load i32, ptr %53, align 8, !tbaa !648
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %87, label %77, !prof !1267, !llvm.loop !1281

94:                                               ; preds = %98, %79
  %95 = load ptr, ptr @constraints, align 8
  %96 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %1) #23, !range !644
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %251, label %105, !prof !732

98:                                               ; preds = %83, %98
  %99 = phi i64 [ 0, %83 ], [ %101, %98 ]
  %100 = getelementptr inbounds i32, ptr %85, i64 %99
  store i32 -1, ptr %100, align 4, !tbaa !651
  %101 = add nuw nsw i64 %99, 1
  %102 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %86) #23
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %98, label %94, !prof !757, !llvm.loop !1282

105:                                              ; preds = %94, %246
  %106 = phi i32 [ %247, %246 ], [ 0, %94 ]
  %107 = load ptr, ptr %1, align 8, !tbaa !626
  %108 = load i32, ptr %107, align 8, !tbaa.struct !927
  %109 = getelementptr inbounds i8, ptr %107, i64 4
  %110 = load i32, ptr %109, align 4, !tbaa.struct !1283
  %111 = getelementptr inbounds i8, ptr %107, i64 8
  %112 = load i64, ptr %111, align 8, !tbaa.struct !928
  %113 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa.struct !927
  %115 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa.struct !1283
  %117 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa.struct !928
  %119 = icmp eq i32 %108, 1
  br i1 %119, label %120, label %131, !prof !1284

120:                                              ; preds = %105
  %121 = icmp eq i64 %118, 0
  %122 = icmp eq i64 %112, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp eq i32 %114, 0
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %246, !prof !1285

126:                                              ; preds = %120
  %127 = load ptr, ptr @graph, align 8, !tbaa !626
  %128 = load ptr, ptr @varmap, align 8
  %129 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %128) #23
  %130 = add i32 %129, %110
  tail call fastcc void @add_pred_graph_edge(ptr noundef %127, i32 noundef %130, i32 noundef %116) #23
  br label %246

131:                                              ; preds = %105
  switch i32 %114, label %217 [
    i32 1, label %132
    i32 2, label %146
  ], !prof !1286

132:                                              ; preds = %131
  %133 = icmp eq i64 %118, 0
  %134 = icmp eq i64 %112, 0
  %135 = select i1 %133, i1 %134, i1 false
  %136 = icmp eq i32 %108, 0
  %137 = and i1 %136, %135
  %138 = load ptr, ptr @graph, align 8, !tbaa !626
  br i1 %137, label %139, label %143, !prof !1287

139:                                              ; preds = %132
  %140 = load ptr, ptr @varmap, align 8
  %141 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %140) #23
  %142 = add i32 %141, %116
  tail call fastcc void @add_pred_graph_edge(ptr noundef %138, i32 noundef %110, i32 noundef %142) #23
  br label %246

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.constraint_graph, ptr %138, i64 0, i32 13
  %145 = load ptr, ptr %144, align 8, !tbaa !1277
  tail call fastcc void @RESET_BIT(ptr noundef %145, i32 noundef %110) #23
  br label %246

146:                                              ; preds = %131
  %147 = load ptr, ptr @graph, align 8, !tbaa !626
  %148 = getelementptr inbounds %struct.constraint_graph, ptr %147, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !1275
  %150 = zext i32 %110 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !626
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %163, !prof !1288

154:                                              ; preds = %146
  %155 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %156 = load ptr, ptr @graph, align 8, !tbaa !626
  %157 = getelementptr inbounds %struct.constraint_graph, ptr %156, i64 0, i32 12
  %158 = load ptr, ptr %157, align 8, !tbaa !1275
  %159 = getelementptr inbounds ptr, ptr %158, i64 %150
  store ptr %155, ptr %159, align 8, !tbaa !626
  %160 = load ptr, ptr %157, align 8, !tbaa !1275
  %161 = getelementptr inbounds ptr, ptr %160, i64 %150
  %162 = load ptr, ptr %161, align 8, !tbaa !626
  br label %163

163:                                              ; preds = %154, %146
  %164 = phi ptr [ %162, %154 ], [ %152, %146 ]
  %165 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %164, i32 noundef %116) #25
  %166 = load ptr, ptr @graph, align 8, !tbaa !626
  %167 = getelementptr inbounds %struct.constraint_graph, ptr %166, i64 0, i32 11
  %168 = load ptr, ptr %167, align 8, !tbaa !1274
  %169 = zext i32 %116 to i64
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !626
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %182, !prof !1289

173:                                              ; preds = %163
  %174 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %175 = load ptr, ptr @graph, align 8, !tbaa !626
  %176 = getelementptr inbounds %struct.constraint_graph, ptr %175, i64 0, i32 11
  %177 = load ptr, ptr %176, align 8, !tbaa !1274
  %178 = getelementptr inbounds ptr, ptr %177, i64 %169
  store ptr %174, ptr %178, align 8, !tbaa !626
  %179 = load ptr, ptr %176, align 8, !tbaa !1274
  %180 = getelementptr inbounds ptr, ptr %179, i64 %169
  %181 = load ptr, ptr %180, align 8, !tbaa !626
  br label %182

182:                                              ; preds = %173, %163
  %183 = phi ptr [ %181, %173 ], [ %171, %163 ]
  %184 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %183, i32 noundef %110) #25
  %185 = load ptr, ptr @graph, align 8, !tbaa !626
  %186 = load ptr, ptr @varmap, align 8
  %187 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %186) #23
  %188 = add i32 %187, %110
  tail call fastcc void @add_implicit_graph_edge(ptr noundef %185, i32 noundef %188, i32 noundef %116) #23
  %189 = load ptr, ptr @graph, align 8, !tbaa !626
  %190 = getelementptr inbounds %struct.constraint_graph, ptr %189, i64 0, i32 13
  %191 = load ptr, ptr %190, align 8, !tbaa !1277
  tail call fastcc void @RESET_BIT(ptr noundef %191, i32 noundef %116) #23
  %192 = tail call fastcc ptr @get_varinfo(i32 noundef %116) #23
  %193 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 1
  %194 = load i8, ptr %193, align 4
  %195 = and i8 %194, 8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197, !prof !1290

197:                                              ; preds = %182
  %198 = load ptr, ptr @graph, align 8, !tbaa !626
  br label %212

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !747
  %202 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %201) #23
  %203 = load ptr, ptr @graph, align 8, !tbaa !626
  %204 = getelementptr inbounds %struct.constraint_graph, ptr %203, i64 0, i32 13
  br label %205

205:                                              ; preds = %205, %199
  %206 = phi ptr [ %202, %199 ], [ %210, %205 ]
  %207 = load ptr, ptr %204, align 8, !tbaa !1277
  %208 = load i32, ptr %206, align 8, !tbaa !810
  tail call fastcc void @RESET_BIT(ptr noundef %207, i32 noundef %208) #23
  %209 = getelementptr inbounds %struct.variable_info, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !811
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %205, !llvm.loop !1291

212:                                              ; preds = %205, %197
  %213 = phi ptr [ %198, %197 ], [ %203, %205 ]
  %214 = getelementptr inbounds %struct.constraint_graph, ptr %213, i64 0, i32 14
  %215 = load ptr, ptr %214, align 8, !tbaa !1278
  %216 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %215, i32 noundef %116) #25
  br label %246

217:                                              ; preds = %131
  %218 = icmp ugt i32 %110, 1
  br i1 %218, label %219, label %232, !prof !1292

219:                                              ; preds = %217
  %220 = icmp ne i32 %110, %116
  %221 = icmp eq i64 %112, 0
  %222 = select i1 %220, i1 %221, i1 false
  %223 = icmp eq i64 %118, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %232, !prof !1293

225:                                              ; preds = %219
  %226 = load ptr, ptr @graph, align 8, !tbaa !626
  tail call fastcc void @add_pred_graph_edge(ptr noundef %226, i32 noundef %110, i32 noundef %116) #23
  %227 = load ptr, ptr @graph, align 8, !tbaa !626
  %228 = load ptr, ptr @varmap, align 8
  %229 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %228) #23
  %230 = add i32 %229, %110
  %231 = add i32 %229, %116
  tail call fastcc void @add_implicit_graph_edge(ptr noundef %227, i32 noundef %230, i32 noundef %231) #23
  br label %246

232:                                              ; preds = %219, %217
  %233 = icmp ne i64 %112, 0
  %234 = icmp ne i64 %118, 0
  %235 = select i1 %233, i1 true, i1 %234
  br i1 %235, label %236, label %246, !prof !1294

236:                                              ; preds = %232
  br i1 %234, label %237, label %241, !prof !1295

237:                                              ; preds = %236
  %238 = load ptr, ptr @graph, align 8, !tbaa !626
  %239 = getelementptr inbounds %struct.constraint_graph, ptr %238, i64 0, i32 13
  %240 = load ptr, ptr %239, align 8, !tbaa !1277
  tail call fastcc void @RESET_BIT(ptr noundef %240, i32 noundef %110) #23
  br label %246

241:                                              ; preds = %236
  br i1 %233, label %242, label %246

242:                                              ; preds = %241
  %243 = load ptr, ptr @graph, align 8, !tbaa !626
  %244 = getelementptr inbounds %struct.constraint_graph, ptr %243, i64 0, i32 13
  %245 = load ptr, ptr %244, align 8, !tbaa !1277
  tail call fastcc void @RESET_BIT(ptr noundef %245, i32 noundef %116) #23
  br label %246

246:                                              ; preds = %143, %139, %225, %237, %242, %241, %232, %212, %120, %126
  %247 = add nuw nsw i32 %106, 1
  %248 = load ptr, ptr @constraints, align 8
  %249 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %248, i32 noundef %247, ptr noundef nonnull %1) #23, !range !644
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %105, !prof !1296, !llvm.loop !1297

251:                                              ; preds = %246, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @perform_var_substitution(ptr noundef %0) unnamed_addr #1 !prof !723 !PGOFuncName !1298 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load i32, ptr %0, align 8, !tbaa !648
  %5 = zext i32 %4 to i64
  %6 = tail call fastcc ptr @init_scc_info(i64 noundef %5) #23
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  %7 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %7, ptr @pointer_equiv_class_table, align 8, !tbaa !626
  %8 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %8, ptr @location_equiv_class_table, align 8, !tbaa !626
  store i32 1, ptr @pointer_equiv_class, align 4, !tbaa !651
  store i32 1, ptr @location_equiv_class, align 4, !tbaa !651
  %9 = load ptr, ptr @varmap, align 8
  %10 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %9) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12, !prof !732

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi ptr [ %9, %12 ], [ %33, %32 ]
  %16 = phi i64 [ 0, %12 ], [ %34, %32 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !1299
  %18 = load ptr, ptr %13, align 8, !tbaa !1301
  %19 = getelementptr inbounds i32, ptr %18, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !651
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !678
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32, !prof !1302

30:                                               ; preds = %14
  tail call fastcc void @condense_visit(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %20) #23
  %31 = load ptr, ptr @varmap, align 8
  br label %32

32:                                               ; preds = %14, %30
  %33 = phi ptr [ %15, %14 ], [ %31, %30 ]
  %34 = add nuw nsw i64 %16, 1
  %35 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %33) #23
  %36 = zext i32 %35 to i64
  %37 = icmp ult i64 %34, %36
  br i1 %37, label %14, label %38, !prof !757, !llvm.loop !1303

38:                                               ; preds = %32, %1
  %39 = load ptr, ptr %6, align 8, !tbaa !1299
  tail call void @sbitmap_zero(ptr noundef %39) #25
  %40 = load ptr, ptr @varmap, align 8
  %41 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %40) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !732

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %54

45:                                               ; preds = %72, %38
  %46 = phi ptr [ %40, %38 ], [ %73, %72 ]
  %47 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %46) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %145, label %49, !prof !732

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 10
  br label %78

54:                                               ; preds = %43, %72
  %55 = phi ptr [ %40, %43 ], [ %73, %72 ]
  %56 = phi i64 [ 0, %43 ], [ %74, %72 ]
  %57 = load ptr, ptr %6, align 8, !tbaa !1299
  %58 = load ptr, ptr %44, align 8, !tbaa !1301
  %59 = getelementptr inbounds i32, ptr %58, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !651
  %61 = lshr i32 %60, 6
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.simple_bitmap_def, ptr %57, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !678
  %65 = and i32 %60, 63
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = and i64 %67, %64
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72, !prof !1304

70:                                               ; preds = %54
  tail call fastcc void @label_visit(ptr noundef nonnull %0, ptr noundef nonnull %6, i32 noundef %60) #23
  %71 = load ptr, ptr @varmap, align 8
  br label %72

72:                                               ; preds = %54, %70
  %73 = phi ptr [ %55, %54 ], [ %71, %70 ]
  %74 = add nuw nsw i64 %56, 1
  %75 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %73) #23
  %76 = zext i32 %75 to i64
  %77 = icmp ult i64 %74, %76
  br i1 %77, label %54, label %45, !prof !757, !llvm.loop !1305

78:                                               ; preds = %49, %139
  %79 = phi ptr [ %46, %49 ], [ %140, %139 ]
  %80 = phi i64 [ 0, %49 ], [ %141, %139 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %81 = load ptr, ptr %50, align 8, !tbaa !1274
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !626
  %84 = icmp eq ptr %83, null
  br i1 %84, label %139, label %85, !prof !1306

85:                                               ; preds = %78
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  %87 = load ptr, ptr %50, align 8, !tbaa !1274
  %88 = getelementptr inbounds ptr, ptr %87, i64 %80
  %89 = load ptr, ptr %88, align 8, !tbaa !626
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %89, ptr noundef nonnull %3) #23
  %90 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !656
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %109, label %92, !prof !1307

92:                                               ; preds = %85, %92
  %93 = load ptr, ptr %51, align 8, !tbaa !1272
  %94 = load ptr, ptr %52, align 8, !tbaa !1301
  %95 = load i32, ptr %3, align 4, !tbaa !651
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !651
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %93, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !651
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %86, i32 noundef %101) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %103 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !656
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %92, !prof !1308, !llvm.loop !1309

105:                                              ; preds = %92
  %106 = load ptr, ptr %50, align 8, !tbaa !1274
  %107 = getelementptr inbounds ptr, ptr %106, i64 %80
  %108 = load ptr, ptr %107, align 8, !tbaa !626
  br label %109

109:                                              ; preds = %105, %85
  %110 = phi ptr [ %108, %105 ], [ %89, %85 ]
  tail call void @bitmap_obstack_free(ptr noundef %110) #25
  %111 = load ptr, ptr %50, align 8, !tbaa !1274
  %112 = getelementptr inbounds ptr, ptr %111, i64 %80
  store ptr null, ptr %112, align 8, !tbaa !626
  %113 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !626
  %114 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %113, ptr noundef %86) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120, !prof !1310

116:                                              ; preds = %109
  %117 = load i32, ptr @location_equiv_class, align 4, !tbaa !651
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @location_equiv_class, align 4, !tbaa !651
  %119 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !626
  tail call fastcc void @equiv_class_add(ptr noundef %119, i32 noundef %117, ptr noundef %86) #23
  br label %134

120:                                              ; preds = %109
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123, !prof !1311

123:                                              ; preds = %120
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = trunc i64 %80 to i32
  %129 = tail call fastcc ptr @get_varinfo(i32 noundef %128) #23
  %130 = getelementptr inbounds %struct.variable_info, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !637
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %121, ptr noundef nonnull @.str.77, ptr noundef %131) #23
  br label %133

133:                                              ; preds = %127, %123, %120
  tail call void @bitmap_obstack_free(ptr noundef %86) #25
  br label %134

134:                                              ; preds = %133, %116
  %135 = phi i32 [ %117, %116 ], [ %114, %133 ]
  %136 = load ptr, ptr %53, align 8, !tbaa !1273
  %137 = getelementptr inbounds i32, ptr %136, i64 %80
  store i32 %135, ptr %137, align 4, !tbaa !651
  %138 = load ptr, ptr @varmap, align 8
  br label %139

139:                                              ; preds = %78, %134
  %140 = phi ptr [ %79, %78 ], [ %138, %134 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #24
  %141 = add nuw nsw i64 %80, 1
  %142 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %140) #23
  %143 = zext i32 %142 to i64
  %144 = icmp ult i64 %141, %143
  br i1 %144, label %78, label %145, !prof !757, !llvm.loop !1312

145:                                              ; preds = %139, %45
  %146 = phi ptr [ %46, %45 ], [ %140, %139 ]
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %148 = icmp eq ptr %147, null
  br i1 %148, label %193, label %149, !prof !724

149:                                              ; preds = %145
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %151 = and i32 %150, 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %193, label %153

153:                                              ; preds = %149
  %154 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %146) #23
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %193, label %156

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %158 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %159 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %160 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 10
  br label %161

161:                                              ; preds = %156, %161
  %162 = phi i64 [ 0, %156 ], [ %188, %161 ]
  %163 = load ptr, ptr %157, align 8, !tbaa !1277
  %164 = trunc i64 %162 to i32
  %165 = lshr i64 %162, 6
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %163, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !678
  %168 = and i64 %162, 63
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %170 = shl nuw i64 1, %168
  %171 = and i64 %167, %170
  %172 = icmp eq i64 %171, 0
  %173 = select i1 %172, ptr @.str.80, ptr @.str.79
  %174 = tail call fastcc ptr @get_varinfo(i32 noundef %164) #23
  %175 = getelementptr inbounds %struct.variable_info, ptr %174, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !637
  %177 = load ptr, ptr %158, align 8, !tbaa !1272
  %178 = load ptr, ptr %159, align 8, !tbaa !1301
  %179 = getelementptr inbounds i32, ptr %178, i64 %162
  %180 = load i32, ptr %179, align 4, !tbaa !651
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %177, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !651
  %184 = load ptr, ptr %160, align 8, !tbaa !1273
  %185 = getelementptr inbounds i32, ptr %184, i64 %181
  %186 = load i32, ptr %185, align 4, !tbaa !651
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.78, ptr noundef nonnull %173, i32 noundef %164, ptr noundef %176, i32 noundef %183, i32 noundef %186) #23
  %188 = add nuw nsw i64 %162, 1
  %189 = load ptr, ptr @varmap, align 8
  %190 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %189) #23
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %161, label %193, !llvm.loop !1313

193:                                              ; preds = %161, %153, %149, %145
  %194 = phi ptr [ %146, %153 ], [ %146, %149 ], [ %146, %145 ], [ %189, %161 ]
  %195 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %194) #23
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %233, label %197, !prof !732

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %199 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %200

200:                                              ; preds = %197, %227
  %201 = phi ptr [ %194, %197 ], [ %228, %227 ]
  %202 = phi i64 [ 0, %197 ], [ %229, %227 ]
  %203 = load ptr, ptr %198, align 8, !tbaa !1301
  %204 = getelementptr inbounds i32, ptr %203, i64 %202
  %205 = load i32, ptr %204, align 4, !tbaa !651
  %206 = load ptr, ptr %199, align 8, !tbaa !1272
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds i32, ptr %206, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !651
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %227, !prof !1314

211:                                              ; preds = %200
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214, !prof !1315

214:                                              ; preds = %211
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %216 = and i32 %215, 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = tail call fastcc ptr @get_varinfo(i32 noundef %205) #23
  %220 = getelementptr inbounds %struct.variable_info, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !637
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %212, ptr noundef nonnull @.str.81, ptr noundef %221) #23
  br label %223

223:                                              ; preds = %218, %214, %211
  %224 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !714
  %225 = add i32 %224, 1
  store i32 %225, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !714
  tail call fastcc void @clear_edges_for_node(ptr noundef nonnull %0, i32 noundef %205) #23
  %226 = load ptr, ptr @varmap, align 8
  br label %227

227:                                              ; preds = %223, %200
  %228 = phi ptr [ %226, %223 ], [ %201, %200 ]
  %229 = add nuw nsw i64 %202, 1
  %230 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %228) #23
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %200, label %233, !prof !757, !llvm.loop !1316

233:                                              ; preds = %227, %193
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_constraints(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !723 !PGOFuncName !1317 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8, !tbaa !648
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13, !prof !732

6:                                                ; preds = %18, %2
  %7 = load ptr, ptr @constraints, align 8
  %8 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %86, label %10, !prof !732

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %22

13:                                               ; preds = %2, %18
  %14 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %15 = tail call fastcc i32 @find(i32 noundef %14) #23
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %18, label %17, !prof !1318

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2347, ptr noundef nonnull @.str.4) #25
  br label %18

18:                                               ; preds = %17, %13
  %19 = add nuw i32 %14, 1
  %20 = load i32, ptr %0, align 8, !tbaa !648
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %13, label %6, !prof !1267, !llvm.loop !1319

22:                                               ; preds = %10, %81
  %23 = phi i32 [ 0, %10 ], [ %82, %81 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !626
  %25 = getelementptr inbounds i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa.struct !1283
  %27 = getelementptr inbounds %struct.constraint, ptr %24, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa.struct !1283
  %29 = tail call fastcc i32 @find(i32 noundef %26) #23
  %30 = tail call fastcc i32 @find(i32 noundef %28) #23
  %31 = load ptr, ptr %11, align 8, !tbaa !1301
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !651
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds i32, ptr %31, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !651
  %38 = load ptr, ptr %12, align 8, !tbaa !1272
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !651
  %42 = zext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !651
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %61, !prof !1320

46:                                               ; preds = %22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %26) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !637
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.82, ptr noundef %56) #23
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !626
  tail call fastcc void @dump_constraint(ptr noundef %58, ptr noundef nonnull %24) #23
  br label %59

59:                                               ; preds = %53, %49, %46
  %60 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %60, i32 noundef %23) #23
  br label %81

61:                                               ; preds = %22
  %62 = icmp eq i32 %44, 0
  br i1 %62, label %63, label %78, !prof !1320

63:                                               ; preds = %61
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc ptr @get_varinfo(i32 noundef %28) #23
  %72 = getelementptr inbounds %struct.variable_info, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !637
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.82, ptr noundef %73) #23
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !626
  tail call fastcc void @dump_constraint(ptr noundef %75, ptr noundef nonnull %24) #23
  br label %76

76:                                               ; preds = %70, %66, %63
  %77 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %77, i32 noundef %23) #23
  br label %81

78:                                               ; preds = %61
  %79 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %41) #23
  %80 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %44) #23
  store i32 %79, ptr %25, align 4, !tbaa !636
  store i32 %80, ptr %27, align 4, !tbaa !641
  br label %81

81:                                               ; preds = %78, %76, %59
  %82 = add nuw nsw i32 %23, 1
  %83 = load ptr, ptr @constraints, align 8
  %84 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %83, i32 noundef %82, ptr noundef nonnull %3) #23, !range !644
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %22, !prof !1296, !llvm.loop !1321

86:                                               ; preds = %81, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_succ_graph() unnamed_addr #1 !prof !723 !PGOFuncName !1322 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @constraints, align 8
  %3 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #23, !range !644
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %74, label %5, !prof !732

5:                                                ; preds = %0, %69
  %6 = phi i32 [ %70, %69 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !626
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9, !prof !1320

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa.struct !927
  %11 = getelementptr inbounds i8, ptr %7, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa.struct !1283
  %13 = getelementptr inbounds i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa.struct !928
  %15 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa.struct !927
  %17 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa.struct !1283
  %19 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa.struct !928
  %21 = tail call fastcc i32 @find(i32 noundef %12) #23
  %22 = tail call fastcc i32 @find(i32 noundef %18) #23
  %23 = icmp eq i32 %10, 1
  br i1 %23, label %24, label %36, !prof !1284

24:                                               ; preds = %9
  %25 = icmp eq i64 %20, 0
  %26 = icmp eq i64 %14, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %69, !prof !1285

30:                                               ; preds = %24
  %31 = load ptr, ptr @graph, align 8, !tbaa !626
  %32 = load ptr, ptr @varmap, align 8
  %33 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %32) #23
  %34 = add i32 %33, %21
  %35 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %31, i32 noundef %34, i32 noundef %22) #23, !range !656
  br label %69

36:                                               ; preds = %9
  switch i32 %16, label %58 [
    i32 1, label %37
    i32 2, label %49
  ], !prof !1286

37:                                               ; preds = %36
  %38 = icmp eq i64 %20, 0
  %39 = icmp eq i64 %14, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i32 %10, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %69, !prof !1287

43:                                               ; preds = %37
  %44 = load ptr, ptr @graph, align 8, !tbaa !626
  %45 = load ptr, ptr @varmap, align 8
  %46 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %45) #23
  %47 = add i32 %46, %22
  %48 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %44, i32 noundef %21, i32 noundef %47) #23, !range !656
  br label %69

49:                                               ; preds = %36
  %50 = tail call fastcc i32 @find(i32 noundef %18) #23
  %51 = icmp eq i32 %50, %18
  br i1 %51, label %53, label %52, !prof !1323

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1263, ptr noundef nonnull @.str.4) #25
  br label %53

53:                                               ; preds = %49, %52
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %21) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !655
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %22) #25
  br label %69

58:                                               ; preds = %36
  %59 = icmp ugt i32 %21, 1
  br i1 %59, label %60, label %69, !prof !1292

60:                                               ; preds = %58
  %61 = icmp ne i32 %21, %22
  %62 = icmp eq i64 %14, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp eq i64 %20, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %69, !prof !1324

66:                                               ; preds = %60
  %67 = load ptr, ptr @graph, align 8, !tbaa !626
  %68 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %67, i32 noundef %21, i32 noundef %22) #23, !range !656
  br label %69

69:                                               ; preds = %30, %24, %53, %66, %60, %58, %37, %43, %5
  %70 = add i32 %6, 1
  %71 = load ptr, ptr @constraints, align 8
  %72 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %1) #23, !range !644
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %5, !prof !1296, !llvm.loop !1325

74:                                               ; preds = %69, %0
  %75 = tail call fastcc i32 @find(i32 noundef 6) #23
  %76 = load ptr, ptr @varmap, align 8
  %77 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %76) #23
  %78 = icmp ugt i32 %77, 8
  %79 = load ptr, ptr @graph, align 8, !tbaa !626
  br i1 %78, label %80, label %112, !prof !812

80:                                               ; preds = %74, %106
  %81 = phi ptr [ %107, %106 ], [ %76, %74 ]
  %82 = phi ptr [ %108, %106 ], [ %79, %74 ]
  %83 = phi i32 [ %109, %106 ], [ 8, %74 ]
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %82, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !1277
  %86 = lshr i32 %83, 6
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds %struct.simple_bitmap_def, ptr %85, i64 0, i32 3, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !678
  %90 = and i32 %83, 63
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = and i64 %89, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %106, !prof !1326

95:                                               ; preds = %80
  %96 = tail call fastcc ptr @get_varinfo(i32 noundef %83) #23
  %97 = getelementptr inbounds %struct.variable_info, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101, !prof !1327

101:                                              ; preds = %95
  %102 = tail call fastcc i32 @find(i32 noundef %83) #23
  %103 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef nonnull %82, i32 noundef %102, i32 noundef %75) #23, !range !656
  %104 = load ptr, ptr @graph, align 8, !tbaa !626
  %105 = load ptr, ptr @varmap, align 8
  br label %106

106:                                              ; preds = %80, %95, %101
  %107 = phi ptr [ %81, %80 ], [ %81, %95 ], [ %105, %101 ]
  %108 = phi ptr [ %82, %80 ], [ %82, %95 ], [ %104, %101 ]
  %109 = add nuw i32 %83, 1
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %107) #23
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %80, label %112, !prof !1328, !llvm.loop !1329

112:                                              ; preds = %106, %74
  %113 = phi ptr [ %79, %74 ], [ %108, %106 ]
  %114 = tail call fastcc i32 @find(i32 noundef 3) #23
  %115 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %113, i32 noundef %114, i32 noundef %75) #23, !range !656
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_var_substitution_info(ptr nocapture noundef %0) unnamed_addr #1 !prof !723 !PGOFuncName !1330 {
  tail call fastcc void @free_scc_info(ptr noundef %0) #23
  %2 = load ptr, ptr @graph, align 8, !tbaa !626
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !1272
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !1273
  tail call void @free(ptr noundef %6) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !1274
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !1275
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !1276
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !1277
  %15 = load ptr, ptr %14, align 8, !tbaa !1331
  tail call void @free(ptr noundef %15) #23
  %16 = load ptr, ptr %13, align 8, !tbaa !1277
  tail call void @free(ptr noundef %16) #23
  %17 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !626
  tail call void @htab_delete(ptr noundef %17) #25
  %18 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !626
  tail call void @htab_delete(ptr noundef %18) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_complex_constraints(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !723 !PGOFuncName !1333 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %46, label %6, !prof !732

6:                                                ; preds = %1, %41
  %7 = phi i32 [ %42, %41 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !626
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10, !prof !1320

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa.struct !927
  %12 = getelementptr inbounds i8, ptr %8, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa.struct !1283
  %14 = getelementptr inbounds i8, ptr %8, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa.struct !928
  %16 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa.struct !927
  %18 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa.struct !1283
  %20 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa.struct !928
  %22 = icmp eq i32 %11, 1
  br i1 %22, label %39, label %23, !prof !1284

23:                                               ; preds = %10
  %24 = icmp eq i32 %17, 1
  br i1 %24, label %25, label %31, !prof !1334

25:                                               ; preds = %23
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %41, !prof !1335

31:                                               ; preds = %23
  %32 = icmp ne i32 %17, 2
  %33 = icmp ugt i32 %13, 1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %41, !prof !1336

35:                                               ; preds = %31
  %36 = icmp ne i64 %15, 0
  %37 = icmp ne i64 %21, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %41, !prof !1337

39:                                               ; preds = %35, %25, %10
  %40 = phi i32 [ %13, %10 ], [ %19, %25 ], [ %19, %35 ]
  tail call fastcc void @insert_into_complex(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %8) #23
  br label %41

41:                                               ; preds = %39, %31, %35, %25, %6
  %42 = add nuw nsw i32 %7, 1
  %43 = load ptr, ptr @constraints, align 8
  %44 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #23, !range !644
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %6, !prof !1296, !llvm.loop !1338

46:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unite_pointer_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !723 !PGOFuncName !1339 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5, !prof !732

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %5, %29
  %9 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !760
  %11 = getelementptr inbounds i32, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !651
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14, !prof !1306

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !761
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !651
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20, !prof !1340

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @find(i32 noundef %18) #23
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29, !prof !1341

23:                                               ; preds = %20
  %24 = trunc i64 %9 to i32
  %25 = tail call fastcc i32 @find(i32 noundef %24) #23
  %26 = tail call fastcc zeroext i8 @unite(i32 noundef %21, i32 noundef %25) #23, !range !656
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !1342

28:                                               ; preds = %23
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %24, i8 noundef zeroext 0) #23
  br label %29

29:                                               ; preds = %28, %23, %20, %14, %8
  %30 = add nuw nsw i64 %9, 1
  %31 = load ptr, ptr @varmap, align 8
  %32 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %31) #23
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %8, label %35, !prof !757, !llvm.loop !1343

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_indirect_cycles(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !723 !PGOFuncName !1344 {
  %2 = load i32, ptr %0, align 8, !tbaa !648
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @init_scc_info(i64 noundef %3) #23
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %30, label %6, !prof !732

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %4, align 8, !tbaa !1299
  %9 = lshr i32 %7, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !678
  %13 = and i32 %7, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %12, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22, !prof !1345

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @find(i32 noundef %7) #23
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %22, !prof !1346

21:                                               ; preds = %18
  tail call fastcc void @scc_visit(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef %7) #23
  br label %22

22:                                               ; preds = %6, %18, %21
  %23 = add nuw i32 %7, 1
  %24 = load ptr, ptr @varmap, align 8
  %25 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %24) #23
  %26 = shl i32 %25, 1
  %27 = add i32 %26, -1
  %28 = tail call i32 @llvm.umin.i32(i32 %27, i32 %2)
  %29 = icmp ult i32 %23, %28
  br i1 %29, label %6, label %30, !prof !1347, !llvm.loop !1348

30:                                               ; preds = %22, %1
  tail call fastcc void @free_scc_info(ptr noundef %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_preds_and_fake_succs(ptr nocapture noundef %0) unnamed_addr #1 !prof !723 !PGOFuncName !1349 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !732

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %15

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %2, %1 ], [ %27, %26 ]
  %9 = phi i32 [ 0, %1 ], [ %29, %26 ]
  %10 = load i32, ptr %0, align 8, !tbaa !648
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %50, !prof !812

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %14 = zext i32 %9 to i64
  br label %32

15:                                               ; preds = %5, %26
  %16 = phi ptr [ %2, %5 ], [ %27, %26 ]
  %17 = phi i64 [ 0, %5 ], [ %28, %26 ]
  %18 = phi i32 [ %3, %5 ], [ %29, %26 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !759
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !626
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !1350

23:                                               ; preds = %15
  %24 = shl i32 %18, 1
  tail call void @bitmap_clear_range(ptr noundef nonnull %21, i32 noundef %18, i32 noundef %24) #25
  %25 = load ptr, ptr @varmap, align 8
  br label %26

26:                                               ; preds = %15, %23
  %27 = phi ptr [ %16, %15 ], [ %25, %23 ]
  %28 = add nuw nsw i64 %17, 1
  %29 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %27) #23
  %30 = zext i32 %29 to i64
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %15, label %7, !prof !757, !llvm.loop !1351

32:                                               ; preds = %12, %43
  %33 = phi i32 [ %10, %12 ], [ %44, %43 ]
  %34 = phi i64 [ %14, %12 ], [ %45, %43 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !759
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !626
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !1352

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %37) #25
  %40 = load ptr, ptr %13, align 8, !tbaa !759
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  store ptr null, ptr %41, align 8, !tbaa !626
  %42 = load i32, ptr %0, align 8, !tbaa !648
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi i32 [ %33, %32 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %34, 1
  %46 = zext i32 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %32, label %48, !prof !757, !llvm.loop !1353

48:                                               ; preds = %43
  %49 = load ptr, ptr @varmap, align 8
  br label %50

50:                                               ; preds = %48, %7
  %51 = phi ptr [ %49, %48 ], [ %8, %7 ]
  %52 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %51) #23
  store i32 %52, ptr %0, align 8, !tbaa !648
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !759
  %55 = zext i32 %52 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = tail call ptr @xrealloc(ptr noundef %54, i64 noundef %56) #25
  store ptr %57, ptr %53, align 8, !tbaa !759
  %58 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !1270
  tail call void @free(ptr noundef %59) #23
  store ptr null, ptr %58, align 8, !tbaa !1270
  %60 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !1271
  tail call void @free(ptr noundef %61) #23
  store ptr null, ptr %60, align 8, !tbaa !1271
  tail call void @bitmap_obstack_release(ptr noundef nonnull @predbitmap_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_graph(ptr nocapture noundef readonly %0) unnamed_addr #1 !prof !723 !PGOFuncName !1354 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr %0, align 8, !tbaa !648
  store i32 0, ptr @changed_count, align 4, !tbaa !651
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #25
  store ptr %6, ptr @changed, align 8, !tbaa !626
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %45, label %8, !prof !732

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %10 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %11 = zext i32 %5 to i64
  br label %12

12:                                               ; preds = %8, %42
  %13 = phi i64 [ 0, %8 ], [ %43, %42 ]
  %14 = trunc i64 %13 to i32
  %15 = tail call fastcc ptr @get_varinfo(i32 noundef %14) #23
  %16 = tail call fastcc i32 @find(i32 noundef %14) #23
  %17 = zext i32 %16 to i64
  %18 = icmp eq i64 %13, %17
  br i1 %18, label %19, label %42, !prof !1355

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.variable_info, ptr %15, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !655
  %22 = load ptr, ptr %21, align 8, !tbaa !669
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24, !prof !1356

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 8, !tbaa !759
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !626
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29, !prof !1357

29:                                               ; preds = %24
  %30 = load ptr, ptr %27, align 8, !tbaa !669
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38, !prof !1358

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !756
  %34 = getelementptr inbounds ptr, ptr %33, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !626
  %36 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %35) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !1359

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr @changed, align 8, !tbaa !626
  tail call fastcc void @SET_BIT(ptr noundef %39, i32 noundef %14) #23
  %40 = load i32, ptr @changed_count, align 4, !tbaa !651
  %41 = add i32 %40, 1
  store i32 %41, ptr @changed_count, align 4, !tbaa !651
  br label %42

42:                                               ; preds = %38, %32, %19, %12
  %43 = add nuw nsw i64 %13, 1
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %45, label %12, !prof !748, !llvm.loop !1360

45:                                               ; preds = %42, %1
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %47 = load i32, ptr @changed_count, align 4, !tbaa !651
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %187, label %49, !prof !732

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %52

52:                                               ; preds = %49, %184
  %53 = tail call fastcc ptr @init_topo_info() #23
  %54 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !717
  %55 = add i32 %54, 1
  store i32 %55, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !717
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  tail call fastcc void @compute_topo_order(ptr noundef nonnull %0, ptr noundef %53) #23
  %56 = getelementptr inbounds %struct.topo_info, ptr %53, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !1361
  %58 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %184, label %60, !prof !1363

60:                                               ; preds = %52, %180
  %61 = phi ptr [ %181, %180 ], [ %57, %52 ]
  %62 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %61) #23
  %63 = tail call fastcc i32 @find(i32 noundef %62) #23
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %65, label %180, !prof !1364

65:                                               ; preds = %60
  %66 = tail call fastcc zeroext i8 @eliminate_indirect_cycles(i32 noundef %62) #23, !range !656
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68, !prof !1364

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @find(i32 noundef %62) #23
  %70 = icmp eq i32 %69, %62
  br i1 %70, label %71, label %180

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr @changed, align 8, !tbaa !626
  %73 = lshr i32 %62, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %72, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !678
  %77 = and i32 %62, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %76, %79
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %180, label %82, !prof !1365

82:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %83 = load ptr, ptr %50, align 8, !tbaa !756
  %84 = zext i32 %62 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !626
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %72, i32 noundef %62) #23
  %87 = load i32, ptr @changed_count, align 4, !tbaa !651
  %88 = add i32 %87, -1
  store i32 %88, ptr @changed_count, align 4, !tbaa !651
  %89 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %90 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !655
  %92 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !923
  %94 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %46, ptr noundef %91, ptr noundef %93) #25
  %95 = load ptr, ptr %46, align 8, !tbaa !669
  %96 = icmp eq ptr %95, null
  br i1 %96, label %179, label %97, !prof !1366, !llvm.loop !1367

97:                                               ; preds = %82
  %98 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %99 = getelementptr inbounds %struct.variable_info, ptr %98, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !923
  %101 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %100, ptr noundef nonnull %46) #25
  %102 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %103 = getelementptr inbounds %struct.variable_info, ptr %102, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !655
  %105 = load ptr, ptr %104, align 8, !tbaa !669
  %106 = icmp eq ptr %105, null
  %107 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109, !prof !1368

109:                                              ; preds = %97, %122
  %110 = phi i32 [ %123, %122 ], [ 0, %97 ]
  %111 = load ptr, ptr %3, align 8, !tbaa !626
  %112 = getelementptr inbounds %struct.constraint_expr, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !636
  %114 = tail call fastcc i32 @find(i32 noundef %113) #23
  store i32 %114, ptr %112, align 4, !tbaa !636
  %115 = getelementptr inbounds %struct.constraint, ptr %111, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !641
  %117 = tail call fastcc i32 @find(i32 noundef %116) #23
  store i32 %117, ptr %115, align 4, !tbaa !641
  br i1 %106, label %118, label %121, !prof !1369

118:                                              ; preds = %109
  %119 = load i32, ptr %111, align 8, !tbaa !631
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %109
  tail call fastcc void @do_complex_constraint(ptr noundef nonnull %0, ptr noundef nonnull %111, ptr noundef nonnull %46) #23
  br label %122

122:                                              ; preds = %118, %121
  %123 = add i32 %110, 1
  %124 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef %123, ptr noundef nonnull %3) #23, !range !644
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %109, !prof !1370, !llvm.loop !1371

126:                                              ; preds = %122
  %127 = load ptr, ptr %104, align 8, !tbaa !669
  br label %128

128:                                              ; preds = %126, %97
  %129 = phi ptr [ %105, %97 ], [ %127, %126 ]
  %130 = phi i32 [ 0, %97 ], [ %123, %126 ]
  store i32 %130, ptr %2, align 4, !tbaa !651
  %131 = icmp eq ptr %129, null
  br i1 %131, label %178, label %132, !prof !1366

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %133 = tail call fastcc i32 @find(i32 noundef 3) #23
  %134 = load ptr, ptr %51, align 8, !tbaa !759
  %135 = getelementptr inbounds ptr, ptr %134, i64 %84
  %136 = load ptr, ptr %135, align 8, !tbaa !626
  %137 = icmp eq ptr %136, null
  br i1 %137, label %177, label %138, !prof !1372

138:                                              ; preds = %132
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %136, ptr noundef nonnull %2) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !656
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %177, label %141, !prof !1373

141:                                              ; preds = %138
  %142 = icmp eq i32 %62, %133
  br label %143

143:                                              ; preds = %141, %174
  %144 = load i32, ptr %2, align 4, !tbaa !651
  %145 = tail call fastcc i32 @find(i32 noundef %144) #23
  %146 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %147 = getelementptr inbounds %struct.variable_info, ptr %146, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !655
  %149 = icmp eq i32 %145, %62
  br i1 %149, label %174, label %150, !prof !1374

150:                                              ; preds = %143
  br i1 %142, label %151, label %153, !prof !1374

151:                                              ; preds = %150
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %148, i32 noundef 3) #25
  br label %155

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %148, ptr noundef nonnull %46, i64 noundef 0) #23
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i8 [ %152, %151 ], [ %154, %153 ]
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %174, label %158, !prof !1375

158:                                              ; preds = %155
  %159 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %160 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 8
  store ptr %148, ptr %160, align 8, !tbaa !655
  %161 = load ptr, ptr @changed, align 8, !tbaa !626
  %162 = lshr i32 %145, 6
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds %struct.simple_bitmap_def, ptr %161, i64 0, i32 3, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !678
  %166 = and i32 %145, 63
  %167 = zext nneg i32 %166 to i64
  %168 = shl nuw i64 1, %167
  %169 = and i64 %165, %168
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174, !prof !1376

171:                                              ; preds = %158
  tail call fastcc void @SET_BIT(ptr noundef nonnull %161, i32 noundef %145) #23
  %172 = load i32, ptr @changed_count, align 4, !tbaa !651
  %173 = add i32 %172, 1
  store i32 %173, ptr @changed_count, align 4, !tbaa !651
  br label %174

174:                                              ; preds = %155, %171, %158, %143
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !656
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %143, !prof !1377, !llvm.loop !1378

177:                                              ; preds = %174, %138, %132
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  br label %178

178:                                              ; preds = %177, %128
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  br label %180

179:                                              ; preds = %82
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  br label %180

180:                                              ; preds = %71, %178, %60, %68, %179
  %181 = load ptr, ptr %56, align 8, !tbaa !1361
  %182 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %181) #23
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %60, !prof !1379, !llvm.loop !1367

184:                                              ; preds = %180, %52
  tail call fastcc void @free_topo_info(ptr noundef nonnull %53) #23
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  %185 = load i32, ptr @changed_count, align 4, !tbaa !651
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %52, !prof !1380, !llvm.loop !1381

187:                                              ; preds = %184, %45
  tail call void @bitmap_obstack_free(ptr noundef %46) #25
  %188 = load ptr, ptr @changed, align 8, !tbaa !626
  %189 = load ptr, ptr %188, align 8, !tbaa !1331
  tail call void @free(ptr noundef %189) #23
  tail call void @free(ptr noundef %188) #23
  tail call void @bitmap_obstack_release(ptr noundef nonnull @oldpta_obstack) #25
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 !prof !1382 !PGOFuncName !1383 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1384

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !678
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !706
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !706
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !678
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !678
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_pred_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1385 !PGOFuncName !1386 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1271
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !626
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !1387

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %12 = load ptr, ptr %4, align 8, !tbaa !1271
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !626
  %14 = load ptr, ptr %4, align 8, !tbaa !1271
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !626
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #19 !prof !1388 !PGOFuncName !1389 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1331
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1390

5:                                                ; preds = %2
  %6 = and i32 %1, 63
  %7 = zext nneg i32 %6 to i64
  %8 = shl nuw i64 1, %7
  %9 = lshr i32 %1, 6
  %10 = zext nneg i32 %9 to i64
  br label %25

11:                                               ; preds = %2
  %12 = lshr i32 %1, 6
  %13 = zext nneg i32 %12 to i64
  %14 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %13
  %15 = load i64, ptr %14, align 8, !tbaa !678
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !706
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !706
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !678
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !678
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_implicit_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1391 !PGOFuncName !1392 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %26, label %5, !prof !1393

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1270
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !626
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19, !prof !1394

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !1270
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !626
  %16 = load ptr, ptr %6, align 8, !tbaa !1270
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !626
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %2) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23, !prof !1395

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !719
  %25 = add i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !719
  br label %26

26:                                               ; preds = %3, %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_scc_info(i64 noundef %0) unnamed_addr #1 !prof !1396 !PGOFuncName !1397 {
  %2 = tail call ptr @xmalloc(i64 noundef 48) #25
  %3 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !1398
  %4 = trunc i64 %0 to i32
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  store ptr %5, ptr %2, align 8, !tbaa !1299
  tail call void @sbitmap_zero(ptr noundef %5) #25
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  %7 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1399
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %8 = shl nuw nsw i64 %0, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #25
  %10 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !1301
  %11 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 4) #25
  %12 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !1400
  %13 = icmp eq i64 %0, 0
  br i1 %13, label %51, label %14, !prof !1401

14:                                               ; preds = %1
  %15 = load ptr, ptr %10, align 8, !tbaa !1301
  %16 = add i64 %0, 3
  %17 = and i64 %16, -4
  %18 = add i64 %0, -1
  %19 = insertelement <4 x i64> poison, i64 %18, i64 0
  %20 = shufflevector <4 x i64> %19, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %21

21:                                               ; preds = %47, %14
  %22 = phi i64 [ 0, %14 ], [ %48, %47 ]
  %23 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %14 ], [ %49, %47 ]
  %24 = trunc i64 %22 to i32
  %25 = icmp ule <4 x i64> %23, %20
  %26 = extractelement <4 x i1> %25, i64 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = getelementptr inbounds i32, ptr %15, i64 %22
  store i32 %24, ptr %28, align 4, !tbaa !651
  br label %29

29:                                               ; preds = %27, %21
  %30 = extractelement <4 x i1> %25, i64 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = or disjoint i64 %22, 1
  %33 = getelementptr inbounds i32, ptr %15, i64 %32
  %34 = or disjoint i32 %24, 1
  store i32 %34, ptr %33, align 4, !tbaa !651
  br label %35

35:                                               ; preds = %31, %29
  %36 = extractelement <4 x i1> %25, i64 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = or disjoint i64 %22, 2
  %39 = getelementptr inbounds i32, ptr %15, i64 %38
  %40 = or disjoint i32 %24, 2
  store i32 %40, ptr %39, align 4, !tbaa !651
  br label %41

41:                                               ; preds = %37, %35
  %42 = extractelement <4 x i1> %25, i64 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = or disjoint i64 %22, 3
  %45 = getelementptr inbounds i32, ptr %15, i64 %44
  %46 = or disjoint i32 %24, 3
  store i32 %46, ptr %45, align 4, !tbaa !651
  br label %47

47:                                               ; preds = %43, %41
  %48 = add i64 %22, 4
  %49 = add <4 x i64> %23, <i64 4, i64 4, i64 4, i64 4>
  %50 = icmp eq i64 %48, %17
  br i1 %50, label %51, label %21, !prof !1402, !llvm.loop !1403

51:                                               ; preds = %47, %1
  %52 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %53 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !1406
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @equiv_class_label_hash(ptr nocapture noundef readonly %0) #9 !prof !625 !PGOFuncName !1407 {
  %2 = load i32, ptr %0, align 8, !tbaa !1408
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_class_label_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 !prof !1410 !PGOFuncName !1411 {
  %3 = load i32, ptr %0, align 8, !tbaa !1408
  %4 = load i32, ptr %1, align 8, !tbaa !1408
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %14, !prof !1412

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.equiv_class_label, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1413
  %9 = getelementptr inbounds %struct.equiv_class_label, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1413
  %11 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %10) #25
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @condense_visit(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1414 !PGOFuncName !1415 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1301
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !651
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %13, label %12, !prof !1416

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1979, ptr noundef nonnull @.str.4) #25
  br label %13

13:                                               ; preds = %3, %12
  %14 = load ptr, ptr %1, align 8, !tbaa !1299
  tail call fastcc void @SET_BIT(ptr noundef %14, i32 noundef %2) #23
  %15 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !1398
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !1398
  %18 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !1400
  %20 = getelementptr inbounds i32, ptr %19, i64 %8
  store i32 %16, ptr %20, align 4, !tbaa !651
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !1271
  %23 = getelementptr inbounds ptr, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !626
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26, !prof !1417

26:                                               ; preds = %13
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29, !prof !1418

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %76
  %32 = phi ptr [ %19, %29 ], [ %77, %76 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !1301
  %34 = load i32, ptr %4, align 4, !tbaa !651
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !651
  %38 = load ptr, ptr %30, align 8, !tbaa !1399
  %39 = lshr i32 %37, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %38, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !678
  %43 = and i32 %37, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %45, %42
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %76, !prof !1419

48:                                               ; preds = %31
  %49 = load ptr, ptr %1, align 8, !tbaa !1299
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %49, i64 0, i32 3, i64 %40
  %51 = load i64, ptr %50, align 8, !tbaa !678
  %52 = and i64 %51, %45
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56, !prof !1420

54:                                               ; preds = %48
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %37) #23
  %55 = load ptr, ptr %6, align 8, !tbaa !1301
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi ptr [ %55, %54 ], [ %33, %48 ]
  %58 = zext i32 %37 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !651
  %61 = getelementptr inbounds i32, ptr %57, i64 %8
  %62 = load i32, ptr %61, align 4, !tbaa !651
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %65, label %64, !prof !1420

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1997, ptr noundef nonnull @.str.4) #25
  br label %65

65:                                               ; preds = %56, %64
  %66 = load ptr, ptr %18, align 8, !tbaa !1400
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !651
  %70 = zext i32 %62 to i64
  %71 = getelementptr inbounds i32, ptr %66, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !651
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %76, !prof !1421

74:                                               ; preds = %65
  %75 = getelementptr inbounds i32, ptr %66, i64 %8
  store i32 %69, ptr %75, align 4, !tbaa !651
  br label %76

76:                                               ; preds = %65, %74, %31
  %77 = phi ptr [ %66, %65 ], [ %66, %74 ], [ %32, %31 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %31, !prof !1422, !llvm.loop !1423

80:                                               ; preds = %76, %26, %13
  %81 = phi ptr [ %19, %26 ], [ %19, %13 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !1270
  %84 = getelementptr inbounds ptr, ptr %83, i64 %8
  %85 = load ptr, ptr %84, align 8, !tbaa !626
  %86 = icmp eq ptr %85, null
  br i1 %86, label %141, label %87, !prof !1424

87:                                               ; preds = %80
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %85, ptr noundef nonnull %4) #23
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %141, label %90, !prof !1425

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %92

92:                                               ; preds = %90, %137
  %93 = phi ptr [ %81, %90 ], [ %138, %137 ]
  %94 = load ptr, ptr %6, align 8, !tbaa !1301
  %95 = load i32, ptr %4, align 4, !tbaa !651
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !651
  %99 = load ptr, ptr %91, align 8, !tbaa !1399
  %100 = lshr i32 %98, 6
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !678
  %104 = and i32 %98, 63
  %105 = zext nneg i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %137, !prof !1426

109:                                              ; preds = %92
  %110 = load ptr, ptr %1, align 8, !tbaa !1299
  %111 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %101
  %112 = load i64, ptr %111, align 8, !tbaa !678
  %113 = and i64 %112, %106
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117, !prof !1427

115:                                              ; preds = %109
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %98) #23
  %116 = load ptr, ptr %6, align 8, !tbaa !1301
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi ptr [ %116, %115 ], [ %94, %109 ]
  %119 = zext i32 %98 to i64
  %120 = getelementptr inbounds i32, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !651
  %122 = getelementptr inbounds i32, ptr %118, i64 %8
  %123 = load i32, ptr %122, align 4, !tbaa !651
  %124 = icmp eq i32 %123, %2
  br i1 %124, label %126, label %125, !prof !1428

125:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2017, ptr noundef nonnull @.str.4) #25
  br label %126

126:                                              ; preds = %117, %125
  %127 = load ptr, ptr %18, align 8, !tbaa !1400
  %128 = zext i32 %121 to i64
  %129 = getelementptr inbounds i32, ptr %127, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !651
  %131 = zext i32 %123 to i64
  %132 = getelementptr inbounds i32, ptr %127, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !651
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %137, !prof !1429

135:                                              ; preds = %126
  %136 = getelementptr inbounds i32, ptr %127, i64 %8
  store i32 %130, ptr %136, align 4, !tbaa !651
  br label %137

137:                                              ; preds = %126, %135, %92
  %138 = phi ptr [ %127, %126 ], [ %127, %135 ], [ %93, %92 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %92, !prof !1430, !llvm.loop !1431

141:                                              ; preds = %137, %87, %80
  %142 = phi ptr [ %81, %87 ], [ %81, %80 ], [ %138, %137 ]
  %143 = getelementptr inbounds i32, ptr %142, i64 %8
  %144 = load i32, ptr %143, align 4, !tbaa !651
  %145 = icmp eq i32 %144, %16
  %146 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  br i1 %145, label %147, label %250, !prof !1432

147:                                              ; preds = %141
  %148 = load ptr, ptr %146, align 8, !tbaa !1406
  %149 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %148) #23
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %247, label %151, !prof !1433

151:                                              ; preds = %147, %243
  %152 = phi ptr [ %244, %243 ], [ %148, %147 ]
  %153 = load ptr, ptr %18, align 8, !tbaa !1400
  %154 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %152) #23
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %153, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !651
  %158 = icmp ult i32 %157, %16
  br i1 %158, label %247, label %159, !prof !1432

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %161 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %162 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %152) #23
  %163 = load ptr, ptr %6, align 8, !tbaa !1301
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32, ptr %163, i64 %164
  store i32 %2, ptr %165, align 4, !tbaa !651
  %166 = load ptr, ptr %160, align 8, !tbaa !1277
  %167 = lshr i32 %162, 6
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds %struct.simple_bitmap_def, ptr %166, i64 0, i32 3, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !678
  %171 = and i32 %162, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl nuw i64 1, %172
  %174 = and i64 %170, %173
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177, !prof !1434

176:                                              ; preds = %159
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %166, i32 noundef %2) #23
  br label %177

177:                                              ; preds = %176, %159
  %178 = load ptr, ptr %21, align 8, !tbaa !1271
  %179 = getelementptr inbounds ptr, ptr %178, i64 %164
  %180 = load ptr, ptr %179, align 8, !tbaa !626
  %181 = icmp eq ptr %180, null
  br i1 %181, label %199, label %182, !prof !1435

182:                                              ; preds = %177
  %183 = getelementptr inbounds ptr, ptr %178, i64 %8
  %184 = load ptr, ptr %183, align 8, !tbaa !626
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %195, !prof !980

186:                                              ; preds = %182
  %187 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %188 = load ptr, ptr %21, align 8, !tbaa !1271
  %189 = getelementptr inbounds ptr, ptr %188, i64 %8
  store ptr %187, ptr %189, align 8, !tbaa !626
  %190 = load ptr, ptr %21, align 8, !tbaa !1271
  %191 = getelementptr inbounds ptr, ptr %190, i64 %8
  %192 = load ptr, ptr %191, align 8, !tbaa !626
  %193 = getelementptr inbounds ptr, ptr %190, i64 %164
  %194 = load ptr, ptr %193, align 8, !tbaa !626
  br label %195

195:                                              ; preds = %186, %182
  %196 = phi ptr [ %194, %186 ], [ %180, %182 ]
  %197 = phi ptr [ %192, %186 ], [ %184, %182 ]
  %198 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %197, ptr noundef %196) #25
  br label %199

199:                                              ; preds = %195, %177
  %200 = load ptr, ptr %82, align 8, !tbaa !1270
  %201 = getelementptr inbounds ptr, ptr %200, i64 %164
  %202 = load ptr, ptr %201, align 8, !tbaa !626
  %203 = icmp eq ptr %202, null
  br i1 %203, label %221, label %204, !prof !1436

204:                                              ; preds = %199
  %205 = getelementptr inbounds ptr, ptr %200, i64 %8
  %206 = load ptr, ptr %205, align 8, !tbaa !626
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %217, !prof !1437

208:                                              ; preds = %204
  %209 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %210 = load ptr, ptr %82, align 8, !tbaa !1270
  %211 = getelementptr inbounds ptr, ptr %210, i64 %8
  store ptr %209, ptr %211, align 8, !tbaa !626
  %212 = load ptr, ptr %82, align 8, !tbaa !1270
  %213 = getelementptr inbounds ptr, ptr %212, i64 %8
  %214 = load ptr, ptr %213, align 8, !tbaa !626
  %215 = getelementptr inbounds ptr, ptr %212, i64 %164
  %216 = load ptr, ptr %215, align 8, !tbaa !626
  br label %217

217:                                              ; preds = %208, %204
  %218 = phi ptr [ %216, %208 ], [ %202, %204 ]
  %219 = phi ptr [ %214, %208 ], [ %206, %204 ]
  %220 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %219, ptr noundef %218) #25
  br label %221

221:                                              ; preds = %217, %199
  %222 = load ptr, ptr %161, align 8, !tbaa !1275
  %223 = getelementptr inbounds ptr, ptr %222, i64 %164
  %224 = load ptr, ptr %223, align 8, !tbaa !626
  %225 = icmp eq ptr %224, null
  br i1 %225, label %243, label %226, !prof !1434

226:                                              ; preds = %221
  %227 = getelementptr inbounds ptr, ptr %222, i64 %8
  %228 = load ptr, ptr %227, align 8, !tbaa !626
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %239

230:                                              ; preds = %226
  %231 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %232 = load ptr, ptr %161, align 8, !tbaa !1275
  %233 = getelementptr inbounds ptr, ptr %232, i64 %8
  store ptr %231, ptr %233, align 8, !tbaa !626
  %234 = load ptr, ptr %161, align 8, !tbaa !1275
  %235 = getelementptr inbounds ptr, ptr %234, i64 %8
  %236 = load ptr, ptr %235, align 8, !tbaa !626
  %237 = getelementptr inbounds ptr, ptr %234, i64 %164
  %238 = load ptr, ptr %237, align 8, !tbaa !626
  br label %239

239:                                              ; preds = %230, %226
  %240 = phi ptr [ %238, %230 ], [ %224, %226 ]
  %241 = phi ptr [ %236, %230 ], [ %228, %226 ]
  %242 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %241, ptr noundef %240) #25
  br label %243

243:                                              ; preds = %239, %221
  %244 = load ptr, ptr %146, align 8, !tbaa !1406
  %245 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %244) #23
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %151, !prof !1438, !llvm.loop !1439

247:                                              ; preds = %151, %243, %147
  %248 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !1399
  tail call fastcc void @SET_BIT(ptr noundef %249, i32 noundef %2) #23
  br label %251

250:                                              ; preds = %141
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %146, i32 noundef %2) #23
  br label %251

251:                                              ; preds = %250, %247
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @label_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 !prof !1440 !PGOFuncName !1441 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !1299
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !1275
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !1442

13:                                               ; preds = %3
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %15 = load ptr, ptr %7, align 8, !tbaa !1275
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  store ptr %14, ptr %16, align 8, !tbaa !626
  br label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1271
  %20 = getelementptr inbounds ptr, ptr %19, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !626
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23, !prof !1443

23:                                               ; preds = %17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull %4) #23
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %66, label %26, !prof !1444

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %28 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %26, %63
  %30 = load ptr, ptr %27, align 8, !tbaa !1301
  %31 = load i32, ptr %4, align 4, !tbaa !651
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !651
  %35 = load ptr, ptr %1, align 8, !tbaa !1299
  %36 = lshr i32 %34, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %35, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !678
  %40 = and i32 %34, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %42, %39
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !1445

45:                                               ; preds = %29
  tail call fastcc void @label_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %34) #23
  br label %46

46:                                               ; preds = %45, %29
  %47 = icmp eq i32 %34, %2
  br i1 %47, label %63, label %48, !prof !1446

48:                                               ; preds = %46
  %49 = load ptr, ptr %28, align 8, !tbaa !1272
  %50 = zext i32 %34 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !651
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54, !prof !1447

54:                                               ; preds = %48
  %55 = load ptr, ptr %7, align 8, !tbaa !1275
  %56 = getelementptr inbounds ptr, ptr %55, i64 %50
  %57 = load ptr, ptr %56, align 8, !tbaa !626
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59, !prof !1447

59:                                               ; preds = %54
  %60 = getelementptr inbounds ptr, ptr %55, i64 %9
  %61 = load ptr, ptr %60, align 8, !tbaa !626
  %62 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %61, ptr noundef nonnull %57) #25
  br label %63

63:                                               ; preds = %54, %59, %46, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %29, !prof !1448, !llvm.loop !1449

66:                                               ; preds = %63, %23, %17
  %67 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !1277
  %69 = lshr i32 %2, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !678
  %73 = and i32 %2, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %72, %75
  %77 = icmp eq i64 %76, 0
  %78 = load ptr, ptr %7, align 8, !tbaa !1275
  br i1 %77, label %79, label %87, !prof !1450

79:                                               ; preds = %66
  %80 = getelementptr inbounds ptr, ptr %78, i64 %9
  %81 = load ptr, ptr %80, align 8, !tbaa !626
  %82 = load ptr, ptr @varmap, align 8
  %83 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %82) #23
  %84 = add i32 %83, %2
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %81, i32 noundef %84) #25
  %86 = load ptr, ptr %7, align 8, !tbaa !1275
  br label %87

87:                                               ; preds = %79, %66
  %88 = phi ptr [ %86, %79 ], [ %78, %66 ]
  %89 = getelementptr inbounds ptr, ptr %88, i64 %9
  %90 = load ptr, ptr %89, align 8, !tbaa !626
  %91 = load ptr, ptr %90, align 8, !tbaa !669
  %92 = icmp eq ptr %91, null
  br i1 %92, label %109, label %93, !prof !1451

93:                                               ; preds = %87
  %94 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !626
  %95 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %94, ptr noundef nonnull %90) #23
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104, !prof !1452

97:                                               ; preds = %93
  %98 = load i32, ptr @pointer_equiv_class, align 4, !tbaa !651
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @pointer_equiv_class, align 4, !tbaa !651
  %100 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !626
  %101 = load ptr, ptr %7, align 8, !tbaa !1275
  %102 = getelementptr inbounds ptr, ptr %101, i64 %9
  %103 = load ptr, ptr %102, align 8, !tbaa !626
  tail call fastcc void @equiv_class_add(ptr noundef %100, i32 noundef %98, ptr noundef %103) #23
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi i32 [ %95, %93 ], [ %98, %97 ]
  %106 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !1272
  %108 = getelementptr inbounds i32, ptr %107, i64 %9
  store i32 %105, ptr %108, align 4, !tbaa !651
  br label %109

109:                                              ; preds = %104, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_class_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !1453 !PGOFuncName !1454 {
  %3 = alloca %struct.equiv_class_label, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.equiv_class_label, ptr %3, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !1413
  %5 = tail call i32 @bitmap_hash(ptr noundef %1) #25
  store i32 %5, ptr %3, align 8, !tbaa !1408
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1455

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !626
  %10 = getelementptr inbounds %struct.equiv_class_label, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !1456
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @equiv_class_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1457 !PGOFuncName !1458 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #25
  %5 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !1413
  %6 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !1456
  %7 = tail call i32 @bitmap_hash(ptr noundef %2) #25
  store i32 %7, ptr %4, align 8, !tbaa !1408
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7, i32 noundef 1) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !626
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !1459

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1916, ptr noundef nonnull @.str.4) #25
  br label %12

12:                                               ; preds = %3, %11
  store ptr %4, ptr %8, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_edges_for_node(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #1 !prof !880 !PGOFuncName !1460 {
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !759
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !626
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1461

9:                                                ; preds = %2
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #25
  %10 = load ptr, ptr %3, align 8, !tbaa !759
  %11 = getelementptr inbounds ptr, ptr %10, i64 %5
  store ptr null, ptr %11, align 8, !tbaa !626
  br label %12

12:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_unsigned_heap_alloc() unnamed_addr #1 !prof !1462 !PGOFuncName !1463 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1464 !PGOFuncName !1465 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1466

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !1467
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_last(ptr nocapture noundef readonly %0) unnamed_addr #9 !prof !1469 !PGOFuncName !1470 {
  %2 = load i32, ptr %0, align 4, !tbaa !1467
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !651
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_unsigned_base_pop(ptr nocapture noundef %0) unnamed_addr #10 !prof !1471 !PGOFuncName !1472 {
  %2 = load i32, ptr %0, align 4, !tbaa !1467
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !1467
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !651
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1471 !PGOFuncName !1473 {
  tail call fastcc void @VEC_unsigned_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !626
  tail call fastcc void @VEC_unsigned_base_quick_push(ptr noundef %3, i32 noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(ptr nocapture noundef %0) unnamed_addr #1 !prof !1471 !PGOFuncName !1474 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1475

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  store ptr %6, ptr %0, align 8, !tbaa !626
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_unsigned_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #10 !prof !1471 !PGOFuncName !1476 {
  %3 = load i32, ptr %0, align 4, !tbaa !1467
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1467
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !651
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0) unnamed_addr #9 !prof !1471 !PGOFuncName !1477 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1478

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1479
  %6 = load i32, ptr %0, align 4, !tbaa !1467
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @bitmap_hash(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #10 !prof !625 !PGOFuncName !1480 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_equivalent_node(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1481 !PGOFuncName !1482 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !1278
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %1) #25
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %0, align 8, !tbaa !648
  %9 = icmp ugt i32 %8, %2
  br i1 %7, label %10, label %34, !prof !1483

10:                                               ; preds = %3
  br i1 %9, label %12, label %11, !prof !1484

11:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2246, ptr noundef nonnull @.str.4) #25
  br label %12

12:                                               ; preds = %10, %11
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !1276
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !651
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %30, label %19, !prof !1485

19:                                               ; preds = %12
  %20 = tail call fastcc zeroext i8 @unite(i32 noundef %17, i32 noundef %1) #23, !range !656
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22, !prof !1486

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 8, !tbaa !1276
  %24 = getelementptr inbounds i32, ptr %23, i64 %15
  %25 = load i32, ptr %24, align 4, !tbaa !651
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %25, i32 noundef %1, i8 noundef zeroext 0) #23
  br label %26

26:                                               ; preds = %22, %19
  %27 = load ptr, ptr %13, align 8, !tbaa !1276
  %28 = getelementptr inbounds i32, ptr %27, i64 %15
  %29 = load i32, ptr %28, align 4, !tbaa !651
  br label %48

30:                                               ; preds = %12
  store i32 %1, ptr %16, align 4, !tbaa !651
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !761
  %33 = getelementptr inbounds i32, ptr %32, i64 %15
  store i32 %1, ptr %33, align 4, !tbaa !651
  br label %48

34:                                               ; preds = %3
  br i1 %9, label %36, label %35, !prof !1487

35:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 2263, ptr noundef nonnull @.str.4) #25
  br label %36

36:                                               ; preds = %34, %35
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !760
  %39 = zext i32 %1 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !651
  %41 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !761
  %43 = zext i32 %2 to i64
  %44 = getelementptr inbounds i32, ptr %42, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !651
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48, !prof !1488

47:                                               ; preds = %36
  store i32 %1, ptr %44, align 4, !tbaa !651
  br label %48

48:                                               ; preds = %30, %47, %36, %26
  %49 = phi i32 [ %29, %26 ], [ %1, %36 ], [ %1, %47 ], [ %1, %30 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @unite(i32 noundef %0, i32 noundef %1) unnamed_addr #1 !prof !1489 !PGOFuncName !1490 {
  %3 = load ptr, ptr @graph, align 8, !tbaa !626
  %4 = load i32, ptr %3, align 8, !tbaa !648
  %5 = icmp ugt i32 %4, %0
  %6 = icmp ugt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8, !prof !1491

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 534, ptr noundef nonnull @.str.4) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %20, label %11, !prof !1492

11:                                               ; preds = %9
  %12 = load ptr, ptr @graph, align 8, !tbaa !626
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !650
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !651
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %20, label %19, !prof !1493

19:                                               ; preds = %11
  store i32 %0, ptr %16, align 4, !tbaa !651
  br label %20

20:                                               ; preds = %9, %11, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %11 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unify_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #1 !prof !1494 !PGOFuncName !1495 {
  %5 = icmp eq i32 %1, %2
  br i1 %5, label %9, label %6, !prof !1493

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @find(i32 noundef %1) #23
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1496

9:                                                ; preds = %6, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1404, ptr noundef nonnull @.str.4) #25
  br label %10

10:                                               ; preds = %6, %9
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !626
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !1496

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !651
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !637
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !637
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.83, ptr noundef %20, ptr noundef %23) #23
  br label %25

25:                                               ; preds = %17, %13, %10
  %26 = icmp eq i8 %3, 0
  %27 = select i1 %26, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), !prof !1496
  %28 = load i32, ptr %27, align 4, !tbaa !651
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !651
  tail call fastcc void @merge_graph_nodes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  tail call fastcc void @merge_node_constraints(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  br i1 %26, label %60, label %30, !prof !1496

30:                                               ; preds = %25
  %31 = load ptr, ptr @changed, align 8, !tbaa !626
  %32 = lshr i32 %2, 6
  %33 = zext nneg i32 %32 to i64
  %34 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !678
  %36 = and i32 %2, 63
  %37 = zext nneg i32 %36 to i64
  %38 = shl nuw i64 1, %37
  %39 = and i64 %35, %38
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %60, label %41

41:                                               ; preds = %30
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %31, i32 noundef %2) #23
  %42 = lshr i32 %1, 6
  %43 = zext nneg i32 %42 to i64
  %44 = getelementptr inbounds %struct.simple_bitmap_def, ptr %31, i64 0, i32 3, i64 %43
  %45 = load i64, ptr %44, align 8, !tbaa !678
  %46 = and i32 %1, 63
  %47 = zext nneg i32 %46 to i64
  %48 = shl nuw i64 1, %47
  %49 = and i64 %45, %48
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  tail call fastcc void @SET_BIT(ptr noundef nonnull %31, i32 noundef %1) #23
  br label %60

52:                                               ; preds = %41
  %53 = load i32, ptr @changed_count, align 4, !tbaa !651
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1428, ptr noundef nonnull @.str.4) #25
  %56 = load i32, ptr @changed_count, align 4, !tbaa !651
  br label %57

57:                                               ; preds = %52, %55
  %58 = phi i32 [ %53, %52 ], [ %56, %55 ]
  %59 = add i32 %58, -1
  store i32 %59, ptr @changed_count, align 4, !tbaa !651
  br label %60

60:                                               ; preds = %51, %57, %30, %25
  %61 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %62 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !655
  %64 = icmp eq ptr %63, null
  br i1 %64, label %108, label %65, !prof !1493

65:                                               ; preds = %60
  %66 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %67 = getelementptr inbounds %struct.variable_info, ptr %66, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !655
  %69 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %68, ptr noundef nonnull %63) #25
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %86, label %71, !prof !1497

71:                                               ; preds = %65
  br i1 %26, label %86, label %72, !prof !1498

72:                                               ; preds = %71
  %73 = load ptr, ptr @changed, align 8, !tbaa !626
  %74 = lshr i32 %1, 6
  %75 = zext nneg i32 %74 to i64
  %76 = getelementptr inbounds %struct.simple_bitmap_def, ptr %73, i64 0, i32 3, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !678
  %78 = and i32 %1, 63
  %79 = zext nneg i32 %78 to i64
  %80 = shl nuw i64 1, %79
  %81 = and i64 %77, %80
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  tail call fastcc void @SET_BIT(ptr noundef nonnull %73, i32 noundef %1) #23
  %84 = load i32, ptr @changed_count, align 4, !tbaa !651
  %85 = add i32 %84, 1
  store i32 %85, ptr @changed_count, align 4, !tbaa !651
  br label %86

86:                                               ; preds = %71, %72, %83, %65
  %87 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %88 = getelementptr inbounds %struct.variable_info, ptr %87, i64 0, i32 8
  %89 = load ptr, ptr %88, align 8, !tbaa !655
  tail call void @bitmap_obstack_free(ptr noundef %89) #25
  %90 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %91 = getelementptr inbounds %struct.variable_info, ptr %90, i64 0, i32 8
  store ptr null, ptr %91, align 8, !tbaa !655
  %92 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %93 = getelementptr inbounds %struct.variable_info, ptr %92, i64 0, i32 9
  %94 = load ptr, ptr %93, align 8, !tbaa !923
  tail call void @bitmap_obstack_free(ptr noundef %94) #25
  %95 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %96 = getelementptr inbounds %struct.variable_info, ptr %95, i64 0, i32 9
  store ptr null, ptr %96, align 8, !tbaa !923
  %97 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !717
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %108, label %99, !prof !1496

99:                                               ; preds = %86
  %100 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %101 = getelementptr inbounds %struct.variable_info, ptr %100, i64 0, i32 9
  %102 = load ptr, ptr %101, align 8, !tbaa !923
  tail call void @bitmap_obstack_free(ptr noundef %102) #25
  %103 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %104 = getelementptr inbounds %struct.variable_info, ptr %103, i64 0, i32 9
  store ptr null, ptr %104, align 8, !tbaa !923
  %105 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %106 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %107 = getelementptr inbounds %struct.variable_info, ptr %106, i64 0, i32 9
  store ptr %105, ptr %107, align 8, !tbaa !923
  br label %108

108:                                              ; preds = %86, %99, %60
  %109 = tail call fastcc zeroext i8 @valid_graph_edge(ptr noundef %0, i32 noundef %1, i32 noundef %1) #23, !range !656
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %120, label %111, !prof !1497

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %113 = load ptr, ptr %112, align 8, !tbaa !759
  %114 = zext i32 %1 to i64
  %115 = getelementptr inbounds ptr, ptr %113, i64 %114
  %116 = load ptr, ptr %115, align 8, !tbaa !626
  %117 = icmp eq ptr %116, null
  br i1 %117, label %120, label %118, !prof !1499

118:                                              ; preds = %111
  %119 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %116, i32 noundef %1) #25
  br label %120

120:                                              ; preds = %111, %118, %108
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_graph_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1494 !PGOFuncName !1500 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !762
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !651
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %16, label %10, !prof !1496

10:                                               ; preds = %3
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !651
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %8, ptr %12, align 4, !tbaa !651
  br label %16

16:                                               ; preds = %10, %15, %3
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !759
  %19 = getelementptr inbounds ptr, ptr %18, i64 %6
  %20 = load ptr, ptr %19, align 8, !tbaa !626
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22, !prof !1497

22:                                               ; preds = %16
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !626
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36, !prof !1499

27:                                               ; preds = %22
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %29 = load ptr, ptr %17, align 8, !tbaa !759
  %30 = getelementptr inbounds ptr, ptr %29, i64 %23
  store ptr %28, ptr %30, align 8, !tbaa !626
  %31 = load ptr, ptr %17, align 8, !tbaa !759
  %32 = getelementptr inbounds ptr, ptr %31, i64 %23
  %33 = load ptr, ptr %32, align 8, !tbaa !626
  %34 = getelementptr inbounds ptr, ptr %31, i64 %6
  %35 = load ptr, ptr %34, align 8, !tbaa !626
  br label %36

36:                                               ; preds = %27, %22
  %37 = phi ptr [ %35, %27 ], [ %20, %22 ]
  %38 = phi ptr [ %33, %27 ], [ %25, %22 ]
  %39 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %38, ptr noundef %37) #25
  br label %40

40:                                               ; preds = %36, %16
  tail call fastcc void @clear_edges_for_node(ptr noundef nonnull %0, i32 noundef %2) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_node_constraints(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1494 !PGOFuncName !1501 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @find(i32 noundef %2) #23
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %8, label %7, !prof !1496

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 969, ptr noundef nonnull @.str.4) #25
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !756
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !626
  %14 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #23, !range !644
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16, !prof !1502

16:                                               ; preds = %8, %31
  %17 = phi i32 [ %33, %31 ], [ 0, %8 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !626
  %19 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !640
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1, i32 1
  br label %31

24:                                               ; preds = %16
  %25 = load i32, ptr %18, align 8, !tbaa !631
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.constraint_expr, ptr %18, i64 0, i32 1
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1, i32 1
  br label %31

31:                                               ; preds = %22, %29, %27
  %32 = phi ptr [ %23, %22 ], [ %30, %29 ], [ %28, %27 ]
  store i32 %1, ptr %32, align 4, !tbaa !651
  %33 = add i32 %17, 1
  %34 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef %33, ptr noundef nonnull %4) #23, !range !644
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !prof !1503, !llvm.loop !1504

36:                                               ; preds = %31, %8
  %37 = zext i32 %1 to i64
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  tail call fastcc void @constraint_set_union(ptr noundef %38, ptr noundef nonnull %12) #23
  %39 = load ptr, ptr %9, align 8, !tbaa !756
  %40 = getelementptr inbounds ptr, ptr %39, i64 %11
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %40) #23
  %41 = load ptr, ptr %9, align 8, !tbaa !756
  %42 = getelementptr inbounds ptr, ptr %41, i64 %11
  store ptr null, ptr %42, align 8, !tbaa !626
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1494 !PGOFuncName !1505 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !759
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !626
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !1497

10:                                               ; preds = %3
  %11 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %8, i32 noundef %1) #25
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i8
  br label %14

14:                                               ; preds = %10, %3
  %15 = phi i8 [ 0, %3 ], [ %13, %10 ]
  ret i8 %15
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraint_set_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !1494 !PGOFuncName !1506 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load ptr, ptr %1, align 8, !tbaa !626
  %5 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !644
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7, !prof !1502

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %9 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !626
  %11 = load ptr, ptr %3, align 8, !tbaa !626
  %12 = tail call fastcc ptr @constraint_vec_find(ptr noundef %10, ptr noundef byval(%struct.constraint) align 8 %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %10, ptr noundef %11) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %15, ptr noundef %11) #23
  %16 = load ptr, ptr %1, align 8, !tbaa !626
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %8, %7 ], [ %16, %14 ]
  %19 = add nuw nsw i32 %9, 1
  %20 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %18, i32 noundef %19, ptr noundef nonnull %3) #23, !range !644
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %7, !prof !1503, !llvm.loop !1507

22:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_constraint_t_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1508 !PGOFuncName !1509 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1510

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !626
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @constraint_vec_find(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #11 !prof !625 !PGOFuncName !1511 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %2
  %5 = call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %6 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef nonnull %0) #23
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef nonnull %0, i32 noundef %5) #23
  %10 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %9, ptr noundef nonnull byval(%struct.constraint) align 8 %1) #23, !range !656
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr null, ptr %9
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = phi ptr [ null, %2 ], [ null, %4 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #11 !prof !1512 !PGOFuncName !1513 {
  %3 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %0) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5, !prof !1514

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %17, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %2 ]
  %8 = lshr i32 %6, 1
  %9 = add i32 %8, %7
  %10 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @constraint_less(ptr noundef %10, ptr noundef %1) #23, !range !656
  %12 = icmp eq i8 %11, 0
  %13 = add i32 %9, 1
  %14 = xor i32 %8, -1
  %15 = add i32 %6, %14
  %16 = select i1 %12, i32 %7, i32 %13, !prof !1515
  %17 = select i1 %12, i32 %8, i32 %15, !prof !1515
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %5, !prof !1516, !llvm.loop !1517

19:                                               ; preds = %5, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %5 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #9 !prof !1518 !PGOFuncName !1519 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !656
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24, !prof !1515

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %6, i64 %8, i64 %3, i64 %5) #23, !range !656
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24, !prof !812

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %15, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %16, align 8
  %21 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %17, i64 %19, i64 %20, i64 %22) #23, !range !656
  br label %24

24:                                               ; preds = %11, %2, %14
  %25 = phi i8 [ %23, %14 ], [ 1, %2 ], [ 0, %11 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1512 !PGOFuncName !1520 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef %0) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !626
  tail call fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_length(ptr noundef readonly %0) unnamed_addr #9 !prof !1521 !PGOFuncName !1522 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1523

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !789
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_constraint_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #9 !prof !1524 !PGOFuncName !1525 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !626
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_equal(ptr nocapture noundef readonly byval(%struct.constraint) align 8 %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #9 !prof !1396 !PGOFuncName !1526 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !656
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !732

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %12, align 8
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %13, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %14, i64 %16, i64 %17, i64 %19) #23, !range !656
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i8 [ 0, %2 ], [ %20, %11 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_equal(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #17 !prof !1527 !PGOFuncName !1528 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false, !prof !1529
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_less(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #17 !prof !1530 !PGOFuncName !1531 {
  %5 = trunc i64 %0 to i32
  %6 = lshr i64 %0, 32
  %7 = trunc i64 %2 to i32
  %8 = lshr i64 %2, 32
  %9 = icmp eq i32 %5, %7
  br i1 %9, label %10, label %16, !prof !1532

10:                                               ; preds = %4
  %11 = icmp eq i64 %6, %8
  br i1 %11, label %12, label %14, !prof !1533

12:                                               ; preds = %10
  %13 = icmp slt i64 %1, %3
  br label %18

14:                                               ; preds = %10
  %15 = icmp ult i64 %6, %8
  br label %18

16:                                               ; preds = %4
  %17 = icmp ult i32 %5, %7
  br label %18

18:                                               ; preds = %16, %14, %12
  %19 = phi i1 [ %13, %12 ], [ %15, %14 ], [ %17, %16 ]
  %20 = zext i1 %19 to i8
  ret i8 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #10 !prof !1512 !PGOFuncName !1534 {
  %4 = load i32, ptr %0, align 8, !tbaa !789
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !789
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !626
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1535 !PGOFuncName !1536 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %32, label %5, !prof !1537

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !759
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !626
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19, !prof !1538

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !759
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !626
  %16 = load ptr, ptr %6, align 8, !tbaa !759
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !626
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %1) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23, !prof !1539

23:                                               ; preds = %19
  %24 = load ptr, ptr @varmap, align 8
  %25 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %24) #23
  %26 = icmp ugt i32 %25, %1
  %27 = icmp ugt i32 %25, %2
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %32, !prof !1540

29:                                               ; preds = %23
  %30 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !718
  %31 = add i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !718
  br label %32

32:                                               ; preds = %19, %29, %23, %3
  %33 = phi i8 [ 0, %3 ], [ 1, %29 ], [ 1, %23 ], [ 0, %19 ]
  ret i8 %33
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_scc_info(ptr nocapture noundef %0) unnamed_addr #18 !prof !1396 !PGOFuncName !1541 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1299
  %3 = load ptr, ptr %2, align 8, !tbaa !1331
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !1299
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1399
  %7 = load ptr, ptr %6, align 8, !tbaa !1331
  tail call void @free(ptr noundef %7) #23
  %8 = load ptr, ptr %5, align 8, !tbaa !1399
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1301
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1400
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %13) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free(ptr nocapture noundef %0) unnamed_addr #18 !prof !1462 !PGOFuncName !1542 {
  %2 = load ptr, ptr %0, align 8, !tbaa !626
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1543

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !626
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_into_complex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #1 !prof !1512 !PGOFuncName !1544 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !756
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !626
  %9 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %8, ptr noundef %2) #23
  %10 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %8) #23
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %16, !prof !1545

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %8, i32 noundef %9) #23
  %14 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %2, ptr noundef byval(%struct.constraint) align 8 %13) #23, !range !656
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !812

16:                                               ; preds = %12, %3
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %7, i32 noundef %9, ptr noundef %2) #23
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scc_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1546 !PGOFuncName !1547 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %7 = load ptr, ptr %1, align 8, !tbaa !1299
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !1398
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !1398
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1400
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %9, ptr %14, align 4, !tbaa !651
  %15 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !759
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !626
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20, !prof !1548

20:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %4) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %75, label %23, !prof !1549

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %25

25:                                               ; preds = %23, %67
  %26 = load i32, ptr %4, align 4, !tbaa !651
  %27 = load ptr, ptr @varmap, align 8
  %28 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %27) #23
  %29 = shl i32 %28, 1
  %30 = add i32 %29, -1
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %70, label %32, !prof !1550

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @find(i32 noundef %26) #23
  %34 = load ptr, ptr %24, align 8, !tbaa !1399
  %35 = lshr i32 %33, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !678
  %39 = and i32 %33, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67, !prof !1551

44:                                               ; preds = %32
  %45 = load ptr, ptr %1, align 8, !tbaa !1299
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %36
  %47 = load i64, ptr %46, align 8, !tbaa !678
  %48 = and i64 %47, %41
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51, !prof !1552

50:                                               ; preds = %44
  tail call fastcc void @scc_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %33) #23
  br label %51

51:                                               ; preds = %50, %44
  %52 = tail call fastcc i32 @find(i32 noundef %33) #23
  %53 = tail call fastcc i32 @find(i32 noundef %2) #23
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %56, label %55, !prof !1552

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1344, ptr noundef nonnull @.str.4) #25
  br label %56

56:                                               ; preds = %51, %55
  %57 = load ptr, ptr %11, align 8, !tbaa !1400
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !651
  %61 = zext i32 %53 to i64
  %62 = getelementptr inbounds i32, ptr %57, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !651
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %67, !prof !1553

65:                                               ; preds = %56
  %66 = getelementptr inbounds i32, ptr %57, i64 %13
  store i32 %60, ptr %66, align 4, !tbaa !651
  br label %67

67:                                               ; preds = %32, %65, %56
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %68 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %25, !prof !1554, !llvm.loop !1555

70:                                               ; preds = %67, %25
  %71 = load ptr, ptr %11, align 8, !tbaa !1400
  %72 = getelementptr inbounds i32, ptr %71, i64 %13
  %73 = load i32, ptr %72, align 4, !tbaa !651
  %74 = icmp eq i32 %73, %9
  br i1 %74, label %75, label %141, !prof !1556

75:                                               ; preds = %3, %20, %70
  %76 = phi ptr [ %71, %70 ], [ %12, %20 ], [ %12, %3 ]
  %77 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !1406
  %79 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %78) #23
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %138, label %81, !prof !1557

81:                                               ; preds = %75
  %82 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %78) #23
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %76, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !651
  %86 = icmp ult i32 %85, %9
  br i1 %86, label %138, label %87

87:                                               ; preds = %81
  %88 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %89 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %2) #25
  %90 = load ptr, ptr %77, align 8, !tbaa !1406
  %91 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %90) #23
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93

93:                                               ; preds = %87, %101
  %94 = phi ptr [ %104, %101 ], [ %90, %87 ]
  %95 = load ptr, ptr %11, align 8, !tbaa !1400
  %96 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %94) #23
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !651
  %100 = icmp ult i32 %99, %9
  br i1 %100, label %107, label %101

101:                                              ; preds = %93
  %102 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %94) #23
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %102) #25
  %104 = load ptr, ptr %77, align 8, !tbaa !1406
  %105 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %104) #23
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %93, !llvm.loop !1558

107:                                              ; preds = %93, %101, %87
  %108 = tail call i32 @bitmap_first_set_bit(ptr noundef %88) #25
  %109 = load ptr, ptr @varmap, align 8
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %109) #23
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1372, ptr noundef nonnull @.str.4) #25
  br label %113

113:                                              ; preds = %107, %112
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %88, ptr noundef nonnull %4) #23
  %114 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !656
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %137, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  br label %118

118:                                              ; preds = %116, %134
  %119 = load i32, ptr %4, align 4, !tbaa !651
  %120 = load ptr, ptr @varmap, align 8
  %121 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %120) #23
  %122 = icmp ult i32 %119, %121
  %123 = tail call fastcc zeroext i8 @unite(i32 noundef %108, i32 noundef %119) #23, !range !656
  br i1 %122, label %124, label %127

124:                                              ; preds = %118
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %124
  tail call fastcc void @unify_nodes(ptr noundef %0, i32 noundef %108, i32 noundef %119, i8 noundef zeroext 0) #23
  br label %134

127:                                              ; preds = %118
  %128 = load ptr, ptr %117, align 8, !tbaa !762
  %129 = load ptr, ptr @varmap, align 8
  %130 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %129) #23
  %131 = sub i32 %119, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %128, i64 %132
  store i32 %108, ptr %133, align 4, !tbaa !651
  br label %134

134:                                              ; preds = %127, %126, %124
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %4) #23
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !656
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %118, !llvm.loop !1559

137:                                              ; preds = %134, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  br label %138

138:                                              ; preds = %137, %81, %75
  %139 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !1399
  tail call fastcc void @SET_BIT(ptr noundef %140, i32 noundef %2) #23
  br label %143

141:                                              ; preds = %70
  %142 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %142, i32 noundef %2) #23
  br label %143

143:                                              ; preds = %141, %138
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_topo_info() unnamed_addr #1 !prof !1560 !PGOFuncName !1561 {
  %1 = load ptr, ptr @graph, align 8, !tbaa !626
  %2 = load i32, ptr %1, align 8, !tbaa !648
  %3 = tail call ptr @xmalloc(i64 noundef 16) #25
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %2) #25
  store ptr %4, ptr %3, align 8, !tbaa !1562
  tail call void @sbitmap_zero(ptr noundef %4) #25
  %5 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %6 = getelementptr inbounds %struct.topo_info, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !1361
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_topo_order(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #1 !prof !1560 !PGOFuncName !1563 {
  %3 = load i32, ptr %0, align 8, !tbaa !648
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5, !prof !1363

5:                                                ; preds = %2, %21
  %6 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !1562
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !678
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21, !prof !1564

17:                                               ; preds = %5
  %18 = tail call fastcc i32 @find(i32 noundef %6) #23
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %21, !prof !1565

20:                                               ; preds = %17
  tail call fastcc void @topo_visit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %6) #23
  br label %21

21:                                               ; preds = %5, %17, %20
  %22 = add nuw i32 %6, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %5, !prof !1566, !llvm.loop !1567

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_indirect_cycles(i32 noundef %0) unnamed_addr #1 !prof !1568 !PGOFuncName !1569 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr @graph, align 8, !tbaa !626
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !762
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !651
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %52, label %12, !prof !1364

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !655
  %16 = load ptr, ptr %15, align 8, !tbaa !669
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !626
  %19 = tail call fastcc i32 @find(i32 noundef %10) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %20 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %21 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !655
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %22, ptr noundef nonnull %2) #23
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !656
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %31

25:                                               ; preds = %41
  %26 = load ptr, ptr %3, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ null, %18 ]
  %29 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %2) #23, !range !644
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %44

31:                                               ; preds = %18, %41
  %32 = load i32, ptr %2, align 4, !tbaa !651
  %33 = tail call fastcc i32 @find(i32 noundef %32) #23
  %34 = icmp ne i32 %33, %32
  %35 = icmp eq i32 %32, %19
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @unite(i32 noundef %19, i32 noundef %32) #23, !range !656
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %3, i32 noundef %32) #23
  br label %41

41:                                               ; preds = %31, %40, %37
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !656
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %25, label %31, !llvm.loop !1570

44:                                               ; preds = %27, %44
  %45 = phi i32 [ %48, %44 ], [ 0, %27 ]
  %46 = load ptr, ptr @graph, align 8, !tbaa !626
  %47 = load i32, ptr %2, align 4, !tbaa !651
  tail call fastcc void @unify_nodes(ptr noundef %46, i32 noundef %19, i32 noundef %47, i8 noundef zeroext 1) #23
  %48 = add nuw nsw i32 %45, 1
  %49 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef %48, ptr noundef nonnull %2) #23, !range !644
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %44, !llvm.loop !1571

51:                                               ; preds = %44, %27
  call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #24
  br label %52

52:                                               ; preds = %1, %12, %51
  %53 = phi i8 [ 1, %51 ], [ 0, %12 ], [ 0, %1 ]
  ret i8 %53
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_complex_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !prof !1572 !PGOFuncName !1573 {
  %4 = load i32, ptr %1, align 8, !tbaa !631
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !640
  br i1 %5, label %8, label %12, !prof !1574

8:                                                ; preds = %3
  %9 = icmp eq i32 %7, 2
  br i1 %9, label %10, label %11, !prof !1575

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1729, ptr noundef nonnull @.str.4) #25
  br label %57

11:                                               ; preds = %8
  tail call fastcc void @do_ds_constraint(ptr noundef nonnull %1, ptr noundef %2) #23
  br label %57

12:                                               ; preds = %3
  switch i32 %7, label %24 [
    i32 1, label %13
    i32 0, label %22
  ], !prof !1576

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !636
  %16 = tail call fastcc ptr @get_varinfo(i32 noundef %15) #23
  %17 = getelementptr inbounds %struct.variable_info, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %57, !prof !1577

21:                                               ; preds = %13
  tail call fastcc void @do_sd_constraint(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  br label %57

22:                                               ; preds = %12
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %25, label %24, !prof !1578

24:                                               ; preds = %12, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1749, ptr noundef nonnull @.str.4) #25
  br label %25

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !641
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !655
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !636
  %33 = tail call fastcc ptr @get_varinfo(i32 noundef %32) #23
  %34 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !655
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !642
  %38 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %35, ptr noundef %30, i64 noundef %37) #23
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40, !prof !1579

40:                                               ; preds = %25
  %41 = load i32, ptr %31, align 4, !tbaa !636
  %42 = tail call fastcc ptr @get_varinfo(i32 noundef %41) #23
  %43 = getelementptr inbounds %struct.variable_info, ptr %42, i64 0, i32 8
  store ptr %35, ptr %43, align 8, !tbaa !655
  %44 = load ptr, ptr @changed, align 8, !tbaa !626
  %45 = lshr i32 %41, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %44, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !678
  %49 = and i32 %41, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = and i64 %48, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57, !prof !1580

54:                                               ; preds = %40
  tail call fastcc void @SET_BIT(ptr noundef nonnull %44, i32 noundef %41) #23
  %55 = load i32, ptr @changed_count, align 4, !tbaa !651
  %56 = add i32 %55, 1
  store i32 %56, ptr @changed_count, align 4, !tbaa !651
  br label %57

57:                                               ; preds = %25, %54, %40, %21, %13, %10, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @set_union_with_increment(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #1 !prof !1581 !PGOFuncName !1582 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %7, !prof !1583

5:                                                ; preds = %3
  %6 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef %1) #25
  br label %10

7:                                                ; preds = %3
  %8 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  tail call void @bitmap_copy(ptr noundef %8, ptr noundef %1) #25
  tail call fastcc void @solution_set_add(ptr noundef %8, i64 noundef %2) #23
  %9 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %0, ptr noundef %8) #25
  tail call void @bitmap_obstack_free(ptr noundef %8) #25
  br label %10

10:                                               ; preds = %7, %5
  %11 = phi i8 [ %6, %5 ], [ %9, %7 ]
  ret i8 %11
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_topo_info(ptr nocapture noundef %0) unnamed_addr #18 !prof !1560 !PGOFuncName !1584 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1562
  %3 = load ptr, ptr %2, align 8, !tbaa !1331
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !1562
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.topo_info, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %5) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @topo_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #1 !prof !1568 !PGOFuncName !1585 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !1562
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !759
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !626
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13, !prof !1586

13:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !656
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16, !prof !1587

16:                                               ; preds = %13, %29
  %17 = load ptr, ptr %1, align 8, !tbaa !1562
  %18 = load i32, ptr %5, align 4, !tbaa !651
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !678
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29, !prof !1588

28:                                               ; preds = %16
  tail call fastcc void @topo_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %18) #23
  br label %29

29:                                               ; preds = %16, %28
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !656
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %16, !prof !1589, !llvm.loop !1590

32:                                               ; preds = %29, %13, %3
  %33 = getelementptr inbounds %struct.topo_info, ptr %1, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %33, i32 noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_unsigned_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #10 !prof !625 !PGOFuncName !1591 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1467
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !651
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !651
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_ds_constraint(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #1 !prof !1592 !PGOFuncName !1593 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !641
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %10 = getelementptr inbounds %struct.constraint_expr, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !639
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !642
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15, !prof !1594

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1624, ptr noundef nonnull @.str.4) #25
  br label %16

16:                                               ; preds = %2, %15
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef 1) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !1594

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @find(i32 noundef 1) #23
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %20) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !655
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %23, %19 ], [ %9, %16 ]
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 1) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28, !prof !1594

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @find(i32 noundef 6) #23
  %30 = load ptr, ptr @graph, align 8, !tbaa !626
  %31 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %30, i32 noundef %29, i32 noundef %6) #23, !range !656
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %156, label %33

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @get_varinfo(i32 noundef %29) #23
  %35 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !655
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %36, ptr noundef %25) #25
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %156, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr @changed, align 8, !tbaa !626
  %41 = lshr i32 %29, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %40, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !678
  %45 = and i32 %29, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %156

50:                                               ; preds = %39
  tail call fastcc void @SET_BIT(ptr noundef nonnull %40, i32 noundef %29) #23
  %51 = load i32, ptr @changed_count, align 4, !tbaa !651
  %52 = add i32 %51, 1
  store i32 %52, ptr @changed_count, align 4, !tbaa !651
  br label %156

53:                                               ; preds = %24
  %54 = icmp eq i64 %11, -9223372036854775808
  br i1 %54, label %55, label %56, !prof !1575

55:                                               ; preds = %53
  tail call fastcc void @solution_set_expand(ptr noundef %1, ptr noundef %1) #23
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ 0, %55 ], [ %11, %53 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #23
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %156, label %60, !prof !1595

60:                                               ; preds = %56, %153
  %61 = load i32, ptr %3, align 4, !tbaa !651
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %61) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !916
  %65 = add i64 %64, %57
  %66 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = icmp sgt i8 %67, -1
  br i1 %68, label %94, label %69, !prof !1596

69:                                               ; preds = %60
  %70 = tail call fastcc i32 @find(i32 noundef 3) #23
  %71 = load ptr, ptr @graph, align 8, !tbaa !626
  %72 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %71, i32 noundef %70, i32 noundef %6) #23, !range !656
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %94, label %74, !prof !1597

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_varinfo(i32 noundef %70) #23
  %76 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !655
  %78 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %77, ptr noundef %25) #25
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %94, label %80, !prof !1598

80:                                               ; preds = %74
  %81 = load ptr, ptr @changed, align 8, !tbaa !626
  %82 = lshr i32 %70, 6
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct.simple_bitmap_def, ptr %81, i64 0, i32 3, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !678
  %86 = and i32 %70, 63
  %87 = zext nneg i32 %86 to i64
  %88 = shl nuw i64 1, %87
  %89 = and i64 %85, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  tail call fastcc void @SET_BIT(ptr noundef nonnull %81, i32 noundef %70) #23
  %92 = load i32, ptr @changed_count, align 4, !tbaa !651
  %93 = add i32 %92, 1
  store i32 %93, ptr @changed_count, align 4, !tbaa !651
  br label %94

94:                                               ; preds = %69, %74, %80, %91, %60
  %95 = load i8, ptr %66, align 4
  %96 = and i8 %95, 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %153, !prof !1599

98:                                               ; preds = %94
  %99 = and i8 %95, 8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106, !prof !732

101:                                              ; preds = %98
  %102 = icmp eq i64 %57, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %101
  %104 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %62, i64 noundef %65) #23
  %105 = icmp eq ptr %104, null
  br i1 %105, label %153, label %110, !prof !1104

106:                                              ; preds = %98, %151
  %107 = phi ptr [ %152, %151 ], [ %63, %98 ]
  %108 = phi ptr [ %149, %151 ], [ %62, %98 ]
  %109 = load i64, ptr %107, align 8, !tbaa !916
  br label %110

110:                                              ; preds = %106, %103, %101
  %111 = phi ptr [ %104, %103 ], [ %62, %101 ], [ %108, %106 ]
  %112 = phi i64 [ %65, %103 ], [ %65, %101 ], [ %109, %106 ]
  %113 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 64
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %143, label %117, !prof !1600

117:                                              ; preds = %110
  %118 = load i32, ptr %111, align 8, !tbaa !810
  %119 = tail call fastcc i32 @find(i32 noundef %118) #23
  %120 = load ptr, ptr @graph, align 8, !tbaa !626
  %121 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %120, i32 noundef %119, i32 noundef %6) #23, !range !656
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %143, label %123, !prof !724

123:                                              ; preds = %117
  %124 = tail call fastcc ptr @get_varinfo(i32 noundef %119) #23
  %125 = getelementptr inbounds %struct.variable_info, ptr %124, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !655
  %127 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %126, ptr noundef %25) #25
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %123
  %130 = load ptr, ptr @changed, align 8, !tbaa !626
  %131 = lshr i32 %119, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds %struct.simple_bitmap_def, ptr %130, i64 0, i32 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !678
  %135 = and i32 %119, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = and i64 %134, %137
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %129
  tail call fastcc void @SET_BIT(ptr noundef nonnull %130, i32 noundef %119) #23
  %141 = load i32, ptr @changed_count, align 4, !tbaa !651
  %142 = add i32 %141, 1
  store i32 %142, ptr @changed_count, align 4, !tbaa !651
  br label %143

143:                                              ; preds = %117, %123, %129, %140, %110
  %144 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 3
  %145 = load i64, ptr %144, align 8, !tbaa !916
  %146 = icmp eq i64 %145, %112
  br i1 %146, label %153, label %147, !prof !812

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !811
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.variable_info, ptr %149, i64 0, i32 3
  br label %106

153:                                              ; preds = %147, %143, %103, %94
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %154 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %60, !prof !1601, !llvm.loop !1602

156:                                              ; preds = %153, %56, %28, %39, %50, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_sd_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #1 !prof !1603 !PGOFuncName !1604 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !636
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %9 = getelementptr inbounds %struct.variable_info, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !655
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %11 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !642
  %13 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !639
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16, !prof !1577

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 1535, ptr noundef nonnull @.str.4) #25
  br label %17

17:                                               ; preds = %3, %16
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef 1) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !1577

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 1) #25
  br label %95

22:                                               ; preds = %17
  %23 = icmp eq i64 %12, -9223372036854775808
  br i1 %23, label %24, label %25, !prof !1605

24:                                               ; preds = %22
  tail call fastcc void @solution_set_expand(ptr noundef %2, ptr noundef %2) #23
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ 0, %24 ], [ %12, %22 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %114, label %29, !prof !1606

29:                                               ; preds = %25, %91
  %30 = phi i8 [ %92, %91 ], [ 0, %25 ]
  %31 = load i32, ptr %4, align 4, !tbaa !651
  %32 = tail call fastcc ptr @get_varinfo(i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.variable_info, ptr %32, i64 0, i32 3
  %34 = load i64, ptr %33, align 8, !tbaa !916
  %35 = add i64 %34, %26
  %36 = getelementptr inbounds %struct.variable_info, ptr %32, i64 0, i32 1
  %37 = load i8, ptr %36, align 4
  %38 = and i8 %37, 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %45, !prof !1607

40:                                               ; preds = %29
  %41 = icmp eq i64 %26, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %32, i64 noundef %35) #23
  %44 = icmp eq ptr %43, null
  br i1 %44, label %91, label %45, !prof !1104

45:                                               ; preds = %29, %40, %42
  %46 = phi ptr [ %32, %40 ], [ %32, %29 ], [ %43, %42 ]
  %47 = phi i64 [ %35, %40 ], [ %34, %29 ], [ %35, %42 ]
  br label %48

48:                                               ; preds = %45, %88
  %49 = phi ptr [ %86, %88 ], [ %46, %45 ]
  %50 = phi i64 [ %90, %88 ], [ %47, %45 ]
  %51 = phi i8 [ %80, %88 ], [ %30, %45 ]
  %52 = load i32, ptr %49, align 8, !tbaa !810
  %53 = tail call fastcc i32 @find(i32 noundef %52) #23
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %53) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 2
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %64, label %59, !prof !1608

59:                                               ; preds = %48
  %60 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 8
  %61 = load ptr, ptr %60, align 8, !tbaa !655
  %62 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %61) #25
  %63 = or i8 %62, %51
  br label %79

64:                                               ; preds = %48
  %65 = load i32, ptr %49, align 8, !tbaa !810
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %70, !prof !1609

67:                                               ; preds = %64
  %68 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 3) #25
  %69 = or i8 %68, %51
  br label %79

70:                                               ; preds = %64
  %71 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %0, i32 noundef %7, i32 noundef %53) #23, !range !656
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %79, label %73, !prof !1610

73:                                               ; preds = %70
  %74 = tail call fastcc ptr @get_varinfo(i32 noundef %53) #23
  %75 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 8
  %76 = load ptr, ptr %75, align 8, !tbaa !655
  %77 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %76) #25
  %78 = or i8 %77, %51
  br label %79

79:                                               ; preds = %67, %73, %70, %59
  %80 = phi i8 [ %63, %59 ], [ %69, %67 ], [ %78, %73 ], [ %51, %70 ]
  %81 = getelementptr inbounds %struct.variable_info, ptr %49, i64 0, i32 3
  %82 = load i64, ptr %81, align 8, !tbaa !916
  %83 = icmp eq i64 %82, %50
  br i1 %83, label %91, label %84, !prof !1611

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.variable_info, ptr %49, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !811
  %87 = icmp eq ptr %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.variable_info, ptr %86, i64 0, i32 3
  %90 = load i64, ptr %89, align 8, !tbaa !916
  br label %48

91:                                               ; preds = %84, %79, %42
  %92 = phi i8 [ %30, %42 ], [ %80, %79 ], [ %80, %84 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %93 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %29, !prof !1612, !llvm.loop !1613

95:                                               ; preds = %91, %20
  %96 = phi i8 [ %21, %20 ], [ %92, %91 ]
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %114, label %98, !prof !1614

98:                                               ; preds = %95
  %99 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %100 = getelementptr inbounds %struct.variable_info, ptr %99, i64 0, i32 8
  store ptr %10, ptr %100, align 8, !tbaa !655
  %101 = load ptr, ptr @changed, align 8, !tbaa !626
  %102 = lshr i32 %7, 6
  %103 = zext nneg i32 %102 to i64
  %104 = getelementptr inbounds %struct.simple_bitmap_def, ptr %101, i64 0, i32 3, i64 %103
  %105 = load i64, ptr %104, align 8, !tbaa !678
  %106 = and i32 %7, 63
  %107 = zext nneg i32 %106 to i64
  %108 = shl nuw i64 1, %107
  %109 = and i64 %105, %108
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %114, !prof !1615

111:                                              ; preds = %98
  tail call fastcc void @SET_BIT(ptr noundef nonnull %101, i32 noundef %7) #23
  %112 = load i32, ptr @changed_count, align 4, !tbaa !651
  %113 = add i32 %112, 1
  store i32 %113, ptr @changed_count, align 4, !tbaa !651
  br label %114

114:                                              ; preds = %25, %98, %111, %95
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solution_set_expand(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #1 !prof !1616 !PGOFuncName !1617 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7, !prof !1618

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %27, %26 ], [ null, %2 ]
  %9 = load i32, ptr %4, align 4, !tbaa !651
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %26, !prof !1619

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !747
  %18 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %17) #23
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %8, %15 ]
  %24 = load i32, ptr %18, align 8, !tbaa !810
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %24) #25
  br label %26

26:                                               ; preds = %7, %22
  %27 = phi ptr [ %23, %22 ], [ %8, %7 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %7, !prof !1620, !llvm.loop !1621

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, null
  br i1 %31, label %50, label %32, !prof !1622

32:                                               ; preds = %30
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %27, ptr noundef nonnull %4) #23
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %32, %46
  %36 = load i32, ptr %4, align 4, !tbaa !651
  %37 = tail call fastcc ptr @get_varinfo(i32 noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %44, %39 ], [ %37, %35 ]
  %41 = load i32, ptr %40, align 8, !tbaa !810
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %41) #25
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !811
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %39, !llvm.loop !1623

46:                                               ; preds = %39, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !656
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %35, !llvm.loop !1624

49:                                               ; preds = %46, %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %27) #25
  br label %50

50:                                               ; preds = %2, %49, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solution_set_add(ptr noundef %0, i64 noundef %1) unnamed_addr #1 !prof !1625 !PGOFuncName !1626 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %6 = icmp eq i64 %1, -9223372036854775808
  br i1 %6, label %7, label %8, !prof !1627

7:                                                ; preds = %2
  tail call fastcc void @solution_set_expand(ptr noundef %0, ptr noundef %0) #23
  br label %45

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %44, label %11, !prof !1628

11:                                               ; preds = %8, %41
  %12 = load i32, ptr %3, align 4, !tbaa !651
  %13 = tail call fastcc ptr @get_varinfo(i32 noundef %12) #23
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %38, !prof !1629

18:                                               ; preds = %11
  %19 = icmp slt i64 %1, 0
  %20 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !916
  %22 = add i64 %21, %1
  %23 = icmp ugt i64 %22, %21
  %24 = select i1 %19, i1 %23, i1 false
  %25 = select i1 %24, i64 0, i64 %22
  %26 = tail call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %13, i64 noundef %25) #23
  %27 = load i32, ptr %26, align 8, !tbaa !810
  %28 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %27) #25
  %29 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 3
  %30 = load i64, ptr %29, align 8, !tbaa !916
  %31 = icmp eq i64 %30, %25
  br i1 %31, label %41, label %32

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !811
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load i32, ptr %34, align 8, !tbaa !810
  br label %38

38:                                               ; preds = %11, %36
  %39 = phi i32 [ %37, %36 ], [ %12, %11 ]
  %40 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %39) #25
  br label %41

41:                                               ; preds = %38, %18, %32
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !656
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %11, !prof !1630, !llvm.loop !1631

44:                                               ; preds = %41, %8
  tail call void @bitmap_copy(ptr noundef %0, ptr noundef %5) #25
  tail call void @bitmap_obstack_free(ptr noundef %5) #25
  br label %45

45:                                               ; preds = %44, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_uids_in_ptset(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #1 !prof !880 !PGOFuncName !1632 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8, !prof !882

8:                                                ; preds = %3, %29
  %9 = load i32, ptr %4, align 4, !tbaa !651
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 17
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %29, label %15, !prof !1633

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !747
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %29 [
    i16 32, label %20
    i16 34, label %20
    i16 36, label %20
  ], !prof !1634

20:                                               ; preds = %15, %15, %15
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !706
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %22) #25
  %24 = load i8, ptr %11, align 4
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %29, label %26, !prof !809

26:                                               ; preds = %20
  %27 = load i8, ptr %2, align 8
  %28 = or i8 %27, 16
  store i8 %28, ptr %2, align 8
  br label %29

29:                                               ; preds = %26, %20, %15, %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !656
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %8, !prof !887, !llvm.loop !1635

32:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_bitmap_lookup(ptr noundef %0) unnamed_addr #1 !prof !880 !PGOFuncName !1636 {
  %2 = alloca %struct.shared_bitmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !914
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !910
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !626
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !890

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !626
  %10 = load ptr, ptr %9, align 8, !tbaa !914
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shared_bitmap_add(ptr noundef %0) unnamed_addr #1 !prof !1637 !PGOFuncName !1638 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #25
  store ptr %0, ptr %2, align 8, !tbaa !914
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !910
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !626
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #25
  %7 = load ptr, ptr %6, align 8, !tbaa !626
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !1639

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.3, i32 noundef 4754, ptr noundef nonnull @.str.4) #25
  br label %10

10:                                               ; preds = %1, %9
  store ptr %2, ptr %6, align 8, !tbaa !626
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_varinfo_t_heap_free() unnamed_addr #18 !prof !723 !PGOFuncName !1640 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !626
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !809

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @varmap, align 8, !tbaa !626
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_function_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #1 !prof !625 !PGOFuncName !1641 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  store i8 0, ptr %3, align 1, !tbaa !706
  %6 = tail call fastcc ptr @new_var_info(ptr noundef %0, ptr noundef %1) #23
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 3
  store i64 0, ptr %7, align 8, !tbaa !916
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 4
  store i64 1, ptr %8, align 8, !tbaa !917
  %9 = call fastcc i32 @count_num_arguments(ptr noundef %0, ptr noundef nonnull %3) #23
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !918
  %13 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !747
  tail call fastcc void @insert_vi_for_tree(ptr noundef %14, ptr noundef %6) #23
  %15 = load i32, ptr @stats, align 4, !tbaa !712
  %16 = add i32 %15, 1
  store i32 %16, ptr @stats, align 4, !tbaa !712
  %17 = load i8, ptr %3, align 1, !tbaa !706
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  %21 = load i8, ptr %20, align 4
  %22 = or i8 %21, 4
  store i8 %22, ptr %20, align 4
  br label %96

23:                                               ; preds = %2
  %24 = load i64, ptr %12, align 8, !tbaa !918
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !706
  br label %29

29:                                               ; preds = %26, %53
  %30 = phi i64 [ %56, %53 ], [ 1, %26 ]
  %31 = phi ptr [ %54, %53 ], [ %28, %26 ]
  %32 = phi i32 [ %55, %53 ], [ 1, %26 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %33 = icmp eq ptr %31, null
  %34 = select i1 %33, ptr %0, ptr %31
  %35 = add i32 %32, -1
  %36 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %4, ptr noundef nonnull @.str.86, ptr noundef %1, i32 noundef %35) #25
  %37 = load ptr, ptr %4, align 8, !tbaa !626
  %38 = call ptr @ggc_alloc_string(ptr noundef %37, i32 noundef -1) #25
  %39 = load ptr, ptr %4, align 8, !tbaa !626
  call void @free(ptr noundef %39) #23
  %40 = call fastcc ptr @new_var_info(ptr noundef %34, ptr noundef %38) #23
  %41 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 3
  store i64 %30, ptr %41, align 8, !tbaa !916
  %42 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 4
  store i64 1, ptr %42, align 8, !tbaa !917
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 8
  store i8 %45, ptr %43, align 4
  %46 = load i64, ptr %12, align 8, !tbaa !918
  %47 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 5
  store i64 %46, ptr %47, align 8, !tbaa !918
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %40) #23
  %48 = load i32, ptr @stats, align 4, !tbaa !712
  %49 = add i32 %48, 1
  store i32 %49, ptr @stats, align 4, !tbaa !712
  br i1 %33, label %53, label %50

50:                                               ; preds = %29
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %31, ptr noundef nonnull %40) #23
  %51 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !706
  br label %53

53:                                               ; preds = %50, %29
  %54 = phi ptr [ %52, %50 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %55 = add i32 %32, 1
  %56 = zext i32 %55 to i64
  %57 = load i64, ptr %12, align 8, !tbaa !918
  %58 = icmp ugt i64 %57, %56
  br i1 %58, label %29, label %59, !llvm.loop !1642

59:                                               ; preds = %53, %23
  %60 = phi i64 [ 1, %23 ], [ %56, %53 ]
  %61 = phi i64 [ %24, %23 ], [ %57, %53 ]
  %62 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !706
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !706
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !706
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 19
  br i1 %72, label %96, label %73

73:                                               ; preds = %65, %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %74 = add nuw nsw i64 %61, 1
  store i64 %74, ptr %12, align 8, !tbaa !918
  %75 = load ptr, ptr %62, align 8, !tbaa !706
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr %0, ptr %75
  %78 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef %1) #25
  %79 = load ptr, ptr %5, align 8, !tbaa !626
  %80 = call ptr @ggc_alloc_string(ptr noundef %79, i32 noundef -1) #25
  %81 = load ptr, ptr %5, align 8, !tbaa !626
  call void @free(ptr noundef %81) #23
  %82 = call fastcc ptr @new_var_info(ptr noundef %77, ptr noundef %80) #23
  %83 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 3
  store i64 %60, ptr %83, align 8, !tbaa !916
  %84 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 4
  store i64 1, ptr %84, align 8, !tbaa !917
  %85 = load i64, ptr %12, align 8, !tbaa !918
  %86 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 5
  store i64 %85, ptr %86, align 8, !tbaa !918
  %87 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %82) #23
  %90 = load i32, ptr @stats, align 4, !tbaa !712
  %91 = add i32 %90, 1
  store i32 %91, ptr @stats, align 4, !tbaa !712
  %92 = load ptr, ptr %62, align 8, !tbaa !706
  %93 = icmp eq ptr %92, null
  br i1 %93, label %95, label %94

94:                                               ; preds = %73
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %92, ptr noundef nonnull %82) #23
  br label %95

95:                                               ; preds = %94, %73
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %96

96:                                               ; preds = %65, %95, %19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #8

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_num_arguments(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #7 !prof !625 !PGOFuncName !1643 {
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !706
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !706
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !1644

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !706
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !706
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !626
  br label %26

22:                                               ; preds = %26
  %23 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !706
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !llvm.loop !1645

26:                                               ; preds = %20, %22
  %27 = phi ptr [ %18, %20 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.tree_list, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !706
  %30 = icmp eq ptr %29, %21
  br i1 %30, label %32, label %22

31:                                               ; preds = %22, %13
  store i8 1, ptr %1, align 1, !tbaa !706
  br label %32

32:                                               ; preds = %26, %31
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_into_field_list_sorted(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #20 !prof !625 !PGOFuncName !1646 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !811
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !916
  %9 = getelementptr inbounds %struct.variable_info, ptr %4, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !916
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %18, label %23

12:                                               ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !811
  %13 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !811
  br label %28

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !916
  %17 = icmp ugt i64 %8, %16
  br i1 %17, label %18, label %23, !llvm.loop !1647

18:                                               ; preds = %6, %14
  %19 = phi ptr [ %21, %14 ], [ %4, %6 ]
  %20 = getelementptr inbounds %struct.variable_info, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !811
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !1647

23:                                               ; preds = %14, %18, %6
  %24 = phi ptr [ %4, %6 ], [ %21, %14 ], [ null, %18 ]
  %25 = phi ptr [ %0, %6 ], [ %19, %18 ], [ %19, %14 ]
  %26 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !811
  store ptr %1, ptr %26, align 8, !tbaa !811
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!624}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623}
!35 = !{ptr @pt_solution_includes, ptr @pt_solution_includes_1, i64 36}
!36 = !{ptr @pt_solution_includes_1, ptr @is_global_var, i64 34}
!37 = !{ptr @pt_solution_includes_1, ptr @bitmap_bit_p, i64 1}
!38 = !{ptr @pt_solution_includes_1, ptr @pt_solution_includes_1, i64 1}
!39 = !{ptr @pt_solutions_intersect, ptr @pt_solutions_intersect_1, i64 159}
!40 = !{ptr @delete_alias_heapvars, ptr @htab_delete, i64 38}
!41 = !{ptr @compute_may_aliases, ptr @compute_points_to_sets, i64 116}
!42 = !{ptr @compute_may_aliases, ptr @dump_alias_info, i64 1}
!43 = !{ptr @compute_may_aliases, ptr @delete_points_to_sets, i64 116}
!44 = !{ptr @compute_may_aliases, ptr @need_ssa_update_p, i64 116}
!45 = !{ptr @compute_may_aliases, ptr @fancy_abort, i64 1}
!46 = !{ptr @compute_points_to_sets, ptr @timevar_push_1, i64 1}
!47 = !{ptr @compute_points_to_sets, ptr @init_alias_vars, i64 116}
!48 = !{ptr @compute_points_to_sets, ptr @init_alias_heapvars, i64 116}
!49 = !{ptr @compute_points_to_sets, ptr @intra_create_variable_infos, i64 116}
!50 = !{ptr @compute_points_to_sets, ptr @gsi_start_phis, i64 669997}
!51 = !{ptr @compute_points_to_sets, ptr @gsi_end_p, i64 2558120}
!52 = !{ptr @compute_points_to_sets, ptr @gsi_stmt, i64 1218126}
!53 = !{ptr @compute_points_to_sets, ptr @gimple_phi_result, i64 132768}
!54 = !{ptr @compute_points_to_sets, ptr @is_gimple_reg, i64 132768}
!55 = !{ptr @compute_points_to_sets, ptr @find_func_aliases, i64 1088492}
!56 = !{ptr @compute_points_to_sets, ptr @gsi_next, i64 1218126}
!57 = !{ptr @compute_points_to_sets, ptr @gsi_start_bb, i64 669997}
!58 = !{ptr @compute_points_to_sets, ptr @solve_constraints, i64 116}
!59 = !{ptr @compute_points_to_sets, ptr @get_varinfo, i64 232}
!60 = !{ptr @compute_points_to_sets, ptr @find_what_var_points_to, i64 232}
!61 = !{ptr @compute_points_to_sets, ptr @VEC_varinfo_t_base_iterate, i64 43967}
!62 = !{ptr @compute_points_to_sets, ptr @VEC_tree_base_length, i64 1147738}
!63 = !{ptr @compute_points_to_sets, ptr @VEC_tree_base_index, i64 1147622}
!64 = !{ptr @compute_points_to_sets, ptr @find_what_p_points_to, i64 42213}
!65 = !{ptr @compute_points_to_sets, ptr @timevar_pop_1, i64 1}
!66 = !{ptr @delete_points_to_sets, ptr @htab_delete, i64 116}
!67 = !{ptr @delete_points_to_sets, ptr @pointer_map_destroy, i64 116}
!68 = !{ptr @delete_points_to_sets, ptr @bitmap_obstack_release, i64 116}
!69 = !{ptr @delete_points_to_sets, ptr @VEC_constraint_t_heap_free, i64 43967}
!70 = !{ptr @delete_points_to_sets, ptr @free, i64 812}
!71 = !{ptr @delete_points_to_sets, ptr @VEC_varinfo_t_heap_free, i64 116}
!72 = !{ptr @delete_points_to_sets, ptr @free_alloc_pool, i64 232}
!73 = !{ptr @get_varinfo, ptr @VEC_varinfo_t_base_index, i64 766924}
!74 = !{ptr @find, ptr @fancy_abort, i64 1}
!75 = !{ptr @find, ptr @find, i64 259625}
!76 = !{ptr @init_alias_vars, ptr @bitmap_obstack_initialize, i64 348}
!77 = !{ptr @init_alias_vars, ptr @create_alloc_pool, i64 232}
!78 = !{ptr @init_alias_vars, ptr @VEC_constraint_t_heap_alloc, i64 116}
!79 = !{ptr @init_alias_vars, ptr @VEC_varinfo_t_heap_alloc, i64 116}
!80 = !{ptr @init_alias_vars, ptr @pointer_map_create, i64 116}
!81 = !{ptr @init_alias_vars, ptr @htab_create, i64 116}
!82 = !{ptr @init_alias_vars, ptr @init_base_vars, i64 116}
!83 = !{ptr @init_alias_heapvars, ptr @htab_create_alloc, i64 39}
!84 = !{ptr @intra_create_variable_infos, ptr @could_have_pointers, i64 116}
!85 = !{ptr @intra_create_variable_infos, ptr @get_vi_for_tree, i64 118}
!86 = !{ptr @intra_create_variable_infos, ptr @make_constraint_from, i64 153}
!87 = !{ptr @intra_create_variable_infos, ptr @make_constraint_from_restrict, i64 1}
!88 = !{ptr @find_func_aliases, ptr @gimple_code, i64 2787684}
!89 = !{ptr @find_func_aliases, ptr @gimple_phi_result, i64 6322}
!90 = !{ptr @find_func_aliases, ptr @fancy_abort, i64 4}
!91 = !{ptr @find_func_aliases, ptr @could_have_pointers, i64 654476}
!92 = !{ptr @find_func_aliases, ptr @get_constraint_for, i64 84963}
!93 = !{ptr @find_func_aliases, ptr @gimple_phi_num_args, i64 131}
!94 = !{ptr @find_func_aliases, ptr @gimple_phi_arg_imm_use_ptr, i64 87}
!95 = !{ptr @find_func_aliases, ptr @get_use_from_ptr, i64 87}
!96 = !{ptr @find_func_aliases, ptr @tree_strip_nop_conversions, i64 87}
!97 = !{ptr @find_func_aliases, ptr @gimple_phi_arg_def, i64 87}
!98 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_iterate, i64 347}
!99 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_length, i64 436}
!100 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_last, i64 337}
!101 = !{ptr @find_func_aliases, ptr @new_constraint, i64 502}
!102 = !{ptr @find_func_aliases, ptr @process_constraint, i64 502}
!103 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_pop, i64 337}
!104 = !{ptr @find_func_aliases, ptr @is_gimple_call, i64 1094711}
!105 = !{ptr @find_func_aliases, ptr @gimple_call_fndecl, i64 207387}
!106 = !{ptr @find_func_aliases, ptr @lookup_vi_for_tree, i64 1}
!107 = !{ptr @find_func_aliases, ptr @gimple_call_flags, i64 207385}
!108 = !{ptr @find_func_aliases, ptr @gimple_call_lhs, i64 408028}
!109 = !{ptr @find_func_aliases, ptr @handle_pure_call, i64 1}
!110 = !{ptr @find_func_aliases, ptr @handle_rhs_call, i64 207383}
!111 = !{ptr @find_func_aliases, ptr @handle_lhs_call, i64 1}
!112 = !{ptr @find_func_aliases, ptr @VEC_ce_s_heap_free, i64 2403135}
!113 = !{ptr @find_func_aliases, ptr @gimple_call_num_args, i64 13}
!114 = !{ptr @find_func_aliases, ptr @gimple_call_arg, i64 12}
!115 = !{ptr @find_func_aliases, ptr @first_vi_for_offset, i64 6}
!116 = !{ptr @find_func_aliases, ptr @is_gimple_assign, i64 887325}
!117 = !{ptr @find_func_aliases, ptr @gimple_assign_lhs, i64 492960}
!118 = !{ptr @find_func_aliases, ptr @gimple_num_ops, i64 42417}
!119 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs1, i64 42734}
!120 = !{ptr @find_func_aliases, ptr @do_structure_copy, i64 4}
!121 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs_code, i64 127212}
!122 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs2, i64 13}
!123 = !{ptr @find_func_aliases, ptr @get_constraint_for_ptr_offset, i64 13}
!124 = !{ptr @find_func_aliases, ptr @gimple_expr_type, i64 3}
!125 = !{ptr @find_func_aliases, ptr @gimple_assign_single_p, i64 42398}
!126 = !{ptr @find_func_aliases, ptr @VEC_ce_s_heap_safe_push, i64 1}
!127 = !{ptr @find_func_aliases, ptr @process_all_all_constraints, i64 42413}
!128 = !{ptr @find_func_aliases, ptr @get_base_address, i64 42417}
!129 = !{ptr @find_func_aliases, ptr @is_global_var, i64 1}
!130 = !{ptr @find_func_aliases, ptr @make_escape_constraint, i64 27}
!131 = !{ptr @find_func_aliases, ptr @gimple_assign_cast_p, i64 887324}
!132 = !{ptr @find_func_aliases, ptr @gimple_return_retval, i64 235}
!133 = !{ptr @find_func_aliases, ptr @gimple_asm_noutputs, i64 1}
!134 = !{ptr @find_func_aliases, ptr @gimple_asm_ninputs, i64 21}
!135 = !{ptr @find_func_aliases, ptr @gimple_asm_output_op, i64 20}
!136 = !{ptr @find_func_aliases, ptr @parse_output_constraint, i64 20}
!137 = !{ptr @find_func_aliases, ptr @build_fold_addr_expr_loc, i64 20}
!138 = !{ptr @find_func_aliases, ptr @gimple_asm_input_op, i64 20}
!139 = !{ptr @find_func_aliases, ptr @parse_input_constraint, i64 20}
!140 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 675771}
!141 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 675771}
!142 = !{ptr @solve_constraints, ptr @fwrite, i64 8}
!143 = !{ptr @solve_constraints, ptr @dump_constraints, i64 1}
!144 = !{ptr @solve_constraints, ptr @VEC_varinfo_t_base_length, i64 116}
!145 = !{ptr @solve_constraints, ptr @init_graph, i64 116}
!146 = !{ptr @solve_constraints, ptr @build_pred_graph, i64 116}
!147 = !{ptr @solve_constraints, ptr @perform_var_substitution, i64 116}
!148 = !{ptr @solve_constraints, ptr @rewrite_constraints, i64 116}
!149 = !{ptr @solve_constraints, ptr @build_succ_graph, i64 116}
!150 = !{ptr @solve_constraints, ptr @free_var_substitution_info, i64 116}
!151 = !{ptr @solve_constraints, ptr @move_complex_constraints, i64 116}
!152 = !{ptr @solve_constraints, ptr @unite_pointer_equivalences, i64 116}
!153 = !{ptr @solve_constraints, ptr @find_indirect_cycles, i64 116}
!154 = !{ptr @solve_constraints, ptr @remove_preds_and_fake_succs, i64 116}
!155 = !{ptr @solve_constraints, ptr @solve_graph, i64 116}
!156 = !{ptr @solve_constraints, ptr @dump_sa_points_to_info, i64 1}
!157 = !{ptr @find_what_var_points_to, ptr @find, i64 42807}
!158 = !{ptr @find_what_var_points_to, ptr @get_varinfo, i64 128432}
!159 = !{ptr @find_what_var_points_to, ptr @bmp_iter_set_init, i64 42807}
!160 = !{ptr @find_what_var_points_to, ptr @bmp_iter_set, i64 128432}
!161 = !{ptr @find_what_var_points_to, ptr @fancy_abort, i64 1}
!162 = !{ptr @find_what_var_points_to, ptr @bmp_iter_next, i64 85625}
!163 = !{ptr @find_what_var_points_to, ptr @bitmap_gc_alloc_stat, i64 42807}
!164 = !{ptr @find_what_var_points_to, ptr @set_uids_in_ptset, i64 42807}
!165 = !{ptr @find_what_var_points_to, ptr @shared_bitmap_lookup, i64 42807}
!166 = !{ptr @find_what_var_points_to, ptr @shared_bitmap_add, i64 231}
!167 = !{ptr @find_what_var_points_to, ptr @bitmap_clear, i64 42576}
!168 = !{ptr @find_what_p_points_to, ptr @lookup_vi_for_tree, i64 42575}
!169 = !{ptr @find_what_p_points_to, ptr @get_ptr_info, i64 42574}
!170 = !{ptr @find_what_p_points_to, ptr @find_what_var_points_to, i64 42574}
!171 = !{ptr @VEC_constraint_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 116}
!172 = !{ptr @VEC_varinfo_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 116}
!173 = !{ptr @shared_bitmap_eq, ptr @bitmap_equal_p, i64 42577}
!174 = !{ptr @init_base_vars, ptr @new_var_info, i64 928}
!175 = !{ptr @init_base_vars, ptr @fancy_abort, i64 8}
!176 = !{ptr @init_base_vars, ptr @new_constraint, i64 1160}
!177 = !{ptr @init_base_vars, ptr @VEC_constraint_t_heap_safe_push, i64 116}
!178 = !{ptr @init_base_vars, ptr @process_constraint, i64 1044}
!179 = !{ptr @new_var_info, ptr @VEC_varinfo_t_base_length, i64 44228}
!180 = !{ptr @new_var_info, ptr @pool_alloc, i64 44228}
!181 = !{ptr @new_var_info, ptr @is_global_var, i64 842}
!182 = !{ptr @new_var_info, ptr @bitmap_obstack_alloc_stat, i64 88456}
!183 = !{ptr @new_var_info, ptr @VEC_varinfo_t_heap_safe_push, i64 44228}
!184 = !{ptr @VEC_constraint_t_heap_safe_push, ptr @VEC_constraint_t_heap_reserve, i64 252085}
!185 = !{ptr @VEC_constraint_t_heap_safe_push, ptr @VEC_constraint_t_base_quick_push, i64 252085}
!186 = !{ptr @new_constraint, ptr @pool_alloc, i64 252085}
!187 = !{ptr @process_constraint, ptr @VEC_varinfo_t_base_length, i64 503942}
!188 = !{ptr @process_constraint, ptr @fancy_abort, i64 4}
!189 = !{ptr @process_constraint, ptr @new_scalar_tmp_constraint_exp, i64 2}
!190 = !{ptr @process_constraint, ptr @new_constraint, i64 4}
!191 = !{ptr @process_constraint, ptr @process_constraint, i64 2}
!192 = !{ptr @process_constraint, ptr @VEC_constraint_t_heap_safe_push, i64 251969}
!193 = !{ptr @VEC_varinfo_t_heap_safe_push, ptr @VEC_varinfo_t_heap_reserve, i64 44228}
!194 = !{ptr @VEC_varinfo_t_heap_safe_push, ptr @VEC_varinfo_t_base_quick_push, i64 44228}
!195 = !{ptr @VEC_varinfo_t_heap_reserve, ptr @VEC_varinfo_t_base_space, i64 44228}
!196 = !{ptr @VEC_varinfo_t_heap_reserve, ptr @vec_heap_p_reserve, i64 549}
!197 = !{ptr @VEC_constraint_t_heap_reserve, ptr @VEC_constraint_t_base_space, i64 252997}
!198 = !{ptr @VEC_constraint_t_heap_reserve, ptr @vec_heap_p_reserve, i64 1286}
!199 = !{ptr @could_have_pointers, ptr @type_could_have_pointers, i64 943934}
!200 = !{ptr @get_vi_for_tree, ptr @pointer_map_contains, i64 292631}
!201 = !{ptr @get_vi_for_tree, ptr @alias_get_name, i64 42833}
!202 = !{ptr @get_vi_for_tree, ptr @create_variable_info_for, i64 42833}
!203 = !{ptr @get_vi_for_tree, ptr @get_varinfo, i64 42833}
!204 = !{ptr @make_constraint_from, ptr @new_constraint, i64 116}
!205 = !{ptr @make_constraint_from, ptr @process_constraint, i64 116}
!206 = !{ptr @create_variable_info_for, ptr @var_can_have_subvars, i64 85662}
!207 = !{ptr @create_variable_info_for, ptr @push_fields_onto_fieldstack, i64 78}
!208 = !{ptr @create_variable_info_for, ptr @new_var_info, i64 43054}
!209 = !{ptr @create_variable_info_for, ptr @could_have_pointers, i64 42832}
!210 = !{ptr @create_variable_info_for, ptr @host_integerp, i64 42831}
!211 = !{ptr @create_variable_info_for, ptr @insert_vi_for_tree, i64 42832}
!212 = !{ptr @create_variable_info_for, ptr @make_constraint_from_restrict, i64 2}
!213 = !{ptr @create_variable_info_for, ptr @make_copy_constraint, i64 288}
!214 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_length, i64 231}
!215 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_iterate, i64 857}
!216 = !{ptr @create_variable_info_for, ptr @sort_fieldstack, i64 75}
!217 = !{ptr @create_variable_info_for, ptr @check_for_overlaps, i64 75}
!218 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_index, i64 76}
!219 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_heap_free, i64 42832}
!220 = !{ptr @create_variable_info_for, ptr @insert_into_field_list, i64 222}
!221 = !{ptr @alias_get_name, ptr @get_name, i64 42832}
!222 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_base_length, i64 978}
!223 = !{ptr @push_fields_onto_fieldstack, ptr @bitpos_of_field, i64 901}
!224 = !{ptr @push_fields_onto_fieldstack, ptr @var_can_have_subvars, i64 901}
!225 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_base_last, i64 1196}
!226 = !{ptr @push_fields_onto_fieldstack, ptr @host_integerp, i64 900}
!227 = !{ptr @push_fields_onto_fieldstack, ptr @could_have_pointers, i64 1054}
!228 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_heap_safe_push, i64 529}
!229 = !{ptr @insert_vi_for_tree, ptr @pointer_map_insert, i64 42832}
!230 = !{ptr @insert_vi_for_tree, ptr @fancy_abort, i64 2}
!231 = !{ptr @make_copy_constraint, ptr @new_constraint, i64 453}
!232 = !{ptr @make_copy_constraint, ptr @process_constraint, i64 453}
!233 = !{ptr @sort_fieldstack, ptr @VEC_fieldoff_s_base_address, i64 78}
!234 = !{ptr @sort_fieldstack, ptr @VEC_fieldoff_s_base_length, i64 78}
!235 = !{ptr @sort_fieldstack, ptr @spec_qsort, i64 78}
!236 = !{ptr @check_for_overlaps, ptr @VEC_fieldoff_s_base_iterate, i64 611}
!237 = !{ptr @VEC_fieldoff_s_heap_free, ptr @free, i64 79}
!238 = !{ptr @bitpos_of_field, ptr @host_integerp, i64 1871}
!239 = !{ptr @VEC_fieldoff_s_heap_safe_push, ptr @VEC_fieldoff_s_heap_reserve, i64 546}
!240 = !{ptr @VEC_fieldoff_s_heap_safe_push, ptr @VEC_fieldoff_s_base_quick_push, i64 546}
!241 = !{ptr @VEC_fieldoff_s_heap_reserve, ptr @VEC_fieldoff_s_base_space, i64 546}
!242 = !{ptr @VEC_fieldoff_s_heap_reserve, ptr @vec_heap_o_reserve, i64 156}
!243 = !{ptr @get_constraint_for, ptr @VEC_ce_s_base_length, i64 292815}
!244 = !{ptr @get_constraint_for, ptr @fancy_abort, i64 1}
!245 = !{ptr @get_constraint_for, ptr @get_constraint_for_1, i64 292815}
!246 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 86}
!247 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 86}
!248 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 86}
!249 = !{ptr @is_gimple_call, ptr @gimple_code, i64 1094712}
!250 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 207386}
!251 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 408027}
!252 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 245436}
!253 = !{ptr @get_constraint_for_ptr_offset, ptr @get_constraint_for, i64 12}
!254 = !{ptr @get_constraint_for_ptr_offset, ptr @host_integerp, i64 10}
!255 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_length, i64 10}
!256 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_index, i64 10}
!257 = !{ptr @get_constraint_for_ptr_offset, ptr @get_varinfo, i64 10}
!258 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_heap_safe_push, i64 6}
!259 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_replace, i64 10}
!260 = !{ptr @process_all_all_constraints, ptr @VEC_ce_s_base_length, i64 42417}
!261 = !{ptr @process_all_all_constraints, ptr @VEC_ce_s_base_iterate, i64 169684}
!262 = !{ptr @process_all_all_constraints, ptr @new_constraint, i64 42436}
!263 = !{ptr @process_all_all_constraints, ptr @process_constraint, i64 42436}
!264 = !{ptr @VEC_ce_s_heap_free, ptr @free, i64 500159}
!265 = !{ptr @do_deref, ptr @VEC_ce_s_base_iterate, i64 640}
!266 = !{ptr @lookup_vi_for_tree, ptr @pointer_map_contains, i64 42575}
!267 = !{ptr @handle_rhs_call, ptr @gimple_call_num_args, i64 452822}
!268 = !{ptr @handle_rhs_call, ptr @gimple_call_arg, i64 245436}
!269 = !{ptr @handle_rhs_call, ptr @could_have_pointers, i64 245436}
!270 = !{ptr @handle_rhs_call, ptr @make_escape_constraint, i64 207853}
!271 = !{ptr @handle_rhs_call, ptr @gimple_call_chain, i64 207387}
!272 = !{ptr @handle_rhs_call, ptr @gimple_call_return_slot_opt_p, i64 207386}
!273 = !{ptr @handle_rhs_call, ptr @gimple_call_lhs, i64 2}
!274 = !{ptr @handle_rhs_call, ptr @new_constraint, i64 6}
!275 = !{ptr @handle_rhs_call, ptr @process_constraint, i64 6}
!276 = !{ptr @handle_rhs_call, ptr @VEC_ce_s_base_iterate, i64 6}
!277 = !{ptr @handle_rhs_call, ptr @VEC_ce_s_heap_safe_push, i64 207386}
!278 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 207386}
!279 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 452822}
!280 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 1774652}
!281 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 492957}
!282 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 476001}
!283 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 577765}
!284 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 577765}
!285 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 433269}
!286 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 12}
!287 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 11}
!288 = !{ptr @VEC_ce_s_heap_safe_push, ptr @VEC_ce_s_heap_reserve, i64 537255}
!289 = !{ptr @VEC_ce_s_heap_safe_push, ptr @VEC_ce_s_base_quick_push, i64 537255}
!290 = !{ptr @make_escape_constraint, ptr @make_constraint_to, i64 207854}
!291 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 887326}
!292 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 450541}
!293 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 233}
!294 = !{ptr @get_constraint_for_1, ptr @integer_zerop, i64 114}
!295 = !{ptr @get_constraint_for_1, ptr @VEC_ce_s_heap_safe_push, i64 306}
!296 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_address_of, i64 399}
!297 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_1, i64 322}
!298 = !{ptr @get_constraint_for_1, ptr @do_deref, i64 321}
!299 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_component_ref, i64 37745}
!300 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_ssa_var, i64 292510}
!301 = !{ptr @get_constraint_for_address_of, ptr @get_constraint_for_1, i64 399}
!302 = !{ptr @get_constraint_for_address_of, ptr @VEC_ce_s_base_iterate, i64 798}
!303 = !{ptr @get_constraint_for_component_ref, ptr @integer_zerop, i64 188}
!304 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_heap_safe_push, i64 37050}
!305 = !{ptr @get_constraint_for_component_ref, ptr @get_ref_base_and_extent, i64 37747}
!306 = !{ptr @get_constraint_for_component_ref, ptr @get_constraint_for_1, i64 37747}
!307 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_length, i64 74797}
!308 = !{ptr @get_constraint_for_component_ref, ptr @fancy_abort, i64 1}
!309 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_last, i64 37747}
!310 = !{ptr @get_constraint_for_component_ref, ptr @get_varinfo, i64 111527}
!311 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_pop, i64 37049}
!312 = !{ptr @get_constraint_for_component_ref, ptr @ranges_overlap_p, i64 259331}
!313 = !{ptr @get_constraint_for_component_ref, ptr @ref_contains_array_ref, i64 1}
!314 = !{ptr @get_constraint_for_ssa_var, ptr @fancy_abort, i64 1}
!315 = !{ptr @get_constraint_for_ssa_var, ptr @get_constraint_for_ssa_var, i64 165608}
!316 = !{ptr @get_constraint_for_ssa_var, ptr @get_vi_for_tree, i64 292516}
!317 = !{ptr @get_constraint_for_ssa_var, ptr @VEC_ce_s_heap_safe_push, i64 292547}
!318 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!319 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 2037438}
!320 = !{ptr @gimple_op, ptr @gimple_ops, i64 2037437}
!321 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 2037438}
!322 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 2037438}
!323 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!324 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 2037438}
!325 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 2037438}
!326 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 207386}
!327 = !{ptr @make_constraint_to, ptr @get_constraint_for, i64 207854}
!328 = !{ptr @make_constraint_to, ptr @VEC_ce_s_base_iterate, i64 415708}
!329 = !{ptr @make_constraint_to, ptr @new_constraint, i64 207854}
!330 = !{ptr @make_constraint_to, ptr @process_constraint, i64 207854}
!331 = !{ptr @make_constraint_to, ptr @VEC_ce_s_heap_free, i64 207854}
!332 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 577765}
!333 = !{ptr @VEC_ce_s_heap_reserve, ptr @VEC_ce_s_base_space, i64 537255}
!334 = !{ptr @VEC_ce_s_heap_reserve, ptr @vec_heap_o_reserve, i64 500157}
!335 = !{ptr @init_graph, ptr @xcalloc, i64 464}
!336 = !{ptr @init_graph, ptr @xmalloc, i64 348}
!337 = !{ptr @build_pred_graph, ptr @xcalloc, i64 696}
!338 = !{ptr @build_pred_graph, ptr @xmalloc, i64 116}
!339 = !{ptr @build_pred_graph, ptr @sbitmap_alloc, i64 116}
!340 = !{ptr @build_pred_graph, ptr @bitmap_obstack_alloc_stat, i64 1491}
!341 = !{ptr @build_pred_graph, ptr @sbitmap_zero, i64 116}
!342 = !{ptr @build_pred_graph, ptr @VEC_varinfo_t_base_length, i64 337298}
!343 = !{ptr @build_pred_graph, ptr @get_varinfo, i64 45025}
!344 = !{ptr @build_pred_graph, ptr @SET_BIT, i64 43275}
!345 = !{ptr @build_pred_graph, ptr @VEC_constraint_t_base_iterate, i64 250048}
!346 = !{ptr @build_pred_graph, ptr @add_pred_graph_edge, i64 248190}
!347 = !{ptr @build_pred_graph, ptr @RESET_BIT, i64 1771}
!348 = !{ptr @build_pred_graph, ptr @bitmap_set_bit, i64 3522}
!349 = !{ptr @build_pred_graph, ptr @add_implicit_graph_edge, i64 249022}
!350 = !{ptr @build_pred_graph, ptr @lookup_vi_for_tree, i64 1}
!351 = !{ptr @perform_var_substitution, ptr @init_scc_info, i64 116}
!352 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_initialize, i64 116}
!353 = !{ptr @perform_var_substitution, ptr @htab_create, i64 232}
!354 = !{ptr @perform_var_substitution, ptr @VEC_varinfo_t_base_length, i64 175878}
!355 = !{ptr @perform_var_substitution, ptr @condense_visit, i64 1657}
!356 = !{ptr @perform_var_substitution, ptr @sbitmap_zero, i64 116}
!357 = !{ptr @perform_var_substitution, ptr @label_visit, i64 1772}
!358 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_alloc_stat, i64 654}
!359 = !{ptr @perform_var_substitution, ptr @bmp_iter_set_init, i64 654}
!360 = !{ptr @perform_var_substitution, ptr @bmp_iter_set, i64 1681}
!361 = !{ptr @perform_var_substitution, ptr @bitmap_set_bit, i64 1027}
!362 = !{ptr @perform_var_substitution, ptr @bmp_iter_next, i64 1027}
!363 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_free, i64 731}
!364 = !{ptr @perform_var_substitution, ptr @equiv_class_lookup, i64 654}
!365 = !{ptr @perform_var_substitution, ptr @equiv_class_add, i64 577}
!366 = !{ptr @perform_var_substitution, ptr @get_varinfo, i64 10}
!367 = !{ptr @perform_var_substitution, ptr @fprintf, i64 10}
!368 = !{ptr @perform_var_substitution, ptr @clear_edges_for_node, i64 271}
!369 = !{ptr @rewrite_constraints, ptr @VEC_constraint_t_base_iterate, i64 250048}
!370 = !{ptr @rewrite_constraints, ptr @find, i64 587565}
!371 = !{ptr @rewrite_constraints, ptr @fancy_abort, i64 1}
!372 = !{ptr @rewrite_constraints, ptr @VEC_constraint_t_base_replace, i64 2}
!373 = !{ptr @rewrite_constraints, ptr @find_equivalent_node, i64 499860}
!374 = !{ptr @build_succ_graph, ptr @VEC_constraint_t_base_iterate, i64 250048}
!375 = !{ptr @build_succ_graph, ptr @find, i64 501597}
!376 = !{ptr @build_succ_graph, ptr @VEC_varinfo_t_base_length, i64 43389}
!377 = !{ptr @build_succ_graph, ptr @add_graph_edge, i64 206917}
!378 = !{ptr @build_succ_graph, ptr @fancy_abort, i64 1}
!379 = !{ptr @build_succ_graph, ptr @get_varinfo, i64 1619}
!380 = !{ptr @build_succ_graph, ptr @bitmap_set_bit, i64 1174}
!381 = !{ptr @free_var_substitution_info, ptr @free_scc_info, i64 116}
!382 = !{ptr @free_var_substitution_info, ptr @free, i64 812}
!383 = !{ptr @free_var_substitution_info, ptr @htab_delete, i64 232}
!384 = !{ptr @free_var_substitution_info, ptr @bitmap_obstack_release, i64 116}
!385 = !{ptr @move_complex_constraints, ptr @VEC_constraint_t_base_iterate, i64 250048}
!386 = !{ptr @move_complex_constraints, ptr @get_varinfo, i64 523}
!387 = !{ptr @move_complex_constraints, ptr @insert_into_complex, i64 907}
!388 = !{ptr @unite_pointer_equivalences, ptr @VEC_varinfo_t_base_length, i64 43967}
!389 = !{ptr @unite_pointer_equivalences, ptr @find, i64 1305}
!390 = !{ptr @unite_pointer_equivalences, ptr @unite, i64 652}
!391 = !{ptr @unite_pointer_equivalences, ptr @unify_nodes, i64 81}
!392 = !{ptr @find_indirect_cycles, ptr @init_scc_info, i64 116}
!393 = !{ptr @find_indirect_cycles, ptr @find, i64 87098}
!394 = !{ptr @find_indirect_cycles, ptr @scc_visit, i64 44927}
!395 = !{ptr @find_indirect_cycles, ptr @VEC_varinfo_t_base_length, i64 87586}
!396 = !{ptr @find_indirect_cycles, ptr @free_scc_info, i64 116}
!397 = !{ptr @remove_preds_and_fake_succs, ptr @VEC_varinfo_t_base_length, i64 44083}
!398 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_clear_range, i64 586}
!399 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_obstack_free, i64 231}
!400 = !{ptr @remove_preds_and_fake_succs, ptr @xrealloc, i64 116}
!401 = !{ptr @remove_preds_and_fake_succs, ptr @free, i64 232}
!402 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_obstack_release, i64 116}
!403 = !{ptr @solve_graph, ptr @sbitmap_alloc, i64 116}
!404 = !{ptr @solve_graph, ptr @sbitmap_zero, i64 116}
!405 = !{ptr @solve_graph, ptr @get_varinfo, i64 46629}
!406 = !{ptr @solve_graph, ptr @find, i64 48316}
!407 = !{ptr @solve_graph, ptr @VEC_constraint_t_base_length, i64 521}
!408 = !{ptr @solve_graph, ptr @SET_BIT, i64 366}
!409 = !{ptr @solve_graph, ptr @bitmap_obstack_alloc_stat, i64 116}
!410 = !{ptr @solve_graph, ptr @init_topo_info, i64 121}
!411 = !{ptr @solve_graph, ptr @bitmap_obstack_initialize, i64 121}
!412 = !{ptr @solve_graph, ptr @compute_topo_order, i64 121}
!413 = !{ptr @solve_graph, ptr @VEC_unsigned_base_length, i64 2038}
!414 = !{ptr @solve_graph, ptr @VEC_unsigned_base_pop, i64 1917}
!415 = !{ptr @solve_graph, ptr @eliminate_indirect_cycles, i64 1916}
!416 = !{ptr @solve_graph, ptr @RESET_BIT, i64 707}
!417 = !{ptr @solve_graph, ptr @bitmap_and_compl, i64 707}
!418 = !{ptr @solve_graph, ptr @bitmap_ior_into, i64 706}
!419 = !{ptr @solve_graph, ptr @VEC_constraint_t_base_iterate, i64 1394}
!420 = !{ptr @solve_graph, ptr @do_complex_constraint, i64 688}
!421 = !{ptr @solve_graph, ptr @bmp_iter_set_init, i64 434}
!422 = !{ptr @solve_graph, ptr @bmp_iter_set, i64 900}
!423 = !{ptr @solve_graph, ptr @bitmap_set_bit, i64 1}
!424 = !{ptr @solve_graph, ptr @set_union_with_increment, i64 464}
!425 = !{ptr @solve_graph, ptr @bmp_iter_next, i64 466}
!426 = !{ptr @solve_graph, ptr @free_topo_info, i64 121}
!427 = !{ptr @solve_graph, ptr @bitmap_obstack_release, i64 237}
!428 = !{ptr @solve_graph, ptr @bitmap_obstack_free, i64 116}
!429 = !{ptr @solve_graph, ptr @free, i64 232}
!430 = !{ptr @add_pred_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 42922}
!431 = !{ptr @add_pred_graph_edge, ptr @bitmap_set_bit, i64 250338}
!432 = !{ptr @add_implicit_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 43276}
!433 = !{ptr @add_implicit_graph_edge, ptr @bitmap_set_bit, i64 251172}
!434 = !{ptr @init_scc_info, ptr @xmalloc, i64 464}
!435 = !{ptr @init_scc_info, ptr @sbitmap_alloc, i64 464}
!436 = !{ptr @init_scc_info, ptr @sbitmap_zero, i64 464}
!437 = !{ptr @init_scc_info, ptr @xcalloc, i64 232}
!438 = !{ptr @init_scc_info, ptr @VEC_unsigned_heap_alloc, i64 232}
!439 = !{ptr @equiv_class_label_eq, ptr @bitmap_equal_p, i64 44226}
!440 = !{ptr @condense_visit, ptr @fancy_abort, i64 3}
!441 = !{ptr @condense_visit, ptr @SET_BIT, i64 131554}
!442 = !{ptr @condense_visit, ptr @bmp_iter_set_init, i64 85232}
!443 = !{ptr @condense_visit, ptr @bmp_iter_set, i64 255116}
!444 = !{ptr @condense_visit, ptr @condense_visit, i64 85183}
!445 = !{ptr @condense_visit, ptr @bmp_iter_next, i64 169884}
!446 = !{ptr @condense_visit, ptr @VEC_unsigned_base_length, i64 65241}
!447 = !{ptr @condense_visit, ptr @VEC_unsigned_base_last, i64 42323}
!448 = !{ptr @condense_visit, ptr @VEC_unsigned_base_pop, i64 20542}
!449 = !{ptr @condense_visit, ptr @RESET_BIT, i64 20542}
!450 = !{ptr @condense_visit, ptr @bitmap_ior_into, i64 20580}
!451 = !{ptr @condense_visit, ptr @bitmap_obstack_alloc_stat, i64 38}
!452 = !{ptr @condense_visit, ptr @VEC_unsigned_heap_safe_push, i64 42156}
!453 = !{ptr @label_visit, ptr @SET_BIT, i64 44382}
!454 = !{ptr @label_visit, ptr @bitmap_obstack_alloc_stat, i64 43654}
!455 = !{ptr @label_visit, ptr @bmp_iter_set_init, i64 42842}
!456 = !{ptr @label_visit, ptr @bmp_iter_set, i64 127961}
!457 = !{ptr @label_visit, ptr @label_visit, i64 42595}
!458 = !{ptr @label_visit, ptr @bitmap_ior_into, i64 85038}
!459 = !{ptr @label_visit, ptr @bmp_iter_next, i64 85119}
!460 = !{ptr @label_visit, ptr @VEC_varinfo_t_base_length, i64 1415}
!461 = !{ptr @label_visit, ptr @bitmap_set_bit, i64 1415}
!462 = !{ptr @label_visit, ptr @equiv_class_lookup, i64 44109}
!463 = !{ptr @label_visit, ptr @equiv_class_add, i64 1576}
!464 = !{ptr @equiv_class_lookup, ptr @bitmap_hash, i64 44769}
!465 = !{ptr @equiv_class_lookup, ptr @htab_find_slot_with_hash, i64 44769}
!466 = !{ptr @equiv_class_add, ptr @xmalloc, i64 2157}
!467 = !{ptr @equiv_class_add, ptr @bitmap_hash, i64 2157}
!468 = !{ptr @equiv_class_add, ptr @htab_find_slot_with_hash, i64 2157}
!469 = !{ptr @equiv_class_add, ptr @fancy_abort, i64 1}
!470 = !{ptr @clear_edges_for_node, ptr @bitmap_obstack_free, i64 82}
!471 = !{ptr @VEC_unsigned_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 353}
!472 = !{ptr @VEC_unsigned_heap_safe_push, ptr @VEC_unsigned_heap_reserve, i64 44089}
!473 = !{ptr @VEC_unsigned_heap_safe_push, ptr @VEC_unsigned_base_quick_push, i64 44089}
!474 = !{ptr @VEC_unsigned_heap_reserve, ptr @VEC_unsigned_base_space, i64 44089}
!475 = !{ptr @VEC_unsigned_heap_reserve, ptr @vec_heap_o_reserve, i64 1158}
!476 = !{ptr @find_equivalent_node, ptr @bitmap_bit_p, i64 504170}
!477 = !{ptr @find_equivalent_node, ptr @fancy_abort, i64 2}
!478 = !{ptr @find_equivalent_node, ptr @unite, i64 292713}
!479 = !{ptr @find_equivalent_node, ptr @unify_nodes, i64 42455}
!480 = !{ptr @unite, ptr @fancy_abort, i64 2}
!481 = !{ptr @unify_nodes, ptr @find, i64 42534}
!482 = !{ptr @unify_nodes, ptr @fancy_abort, i64 2}
!483 = !{ptr @unify_nodes, ptr @merge_graph_nodes, i64 42535}
!484 = !{ptr @unify_nodes, ptr @merge_node_constraints, i64 42535}
!485 = !{ptr @unify_nodes, ptr @RESET_BIT, i64 1}
!486 = !{ptr @unify_nodes, ptr @get_varinfo, i64 255208}
!487 = !{ptr @unify_nodes, ptr @bitmap_ior_into, i64 42534}
!488 = !{ptr @unify_nodes, ptr @bitmap_obstack_free, i64 85069}
!489 = !{ptr @unify_nodes, ptr @bitmap_obstack_alloc_stat, i64 1}
!490 = !{ptr @unify_nodes, ptr @valid_graph_edge, i64 42535}
!491 = !{ptr @unify_nodes, ptr @bitmap_clear_bit, i64 81}
!492 = !{ptr @merge_graph_nodes, ptr @bitmap_obstack_alloc_stat, i64 1}
!493 = !{ptr @merge_graph_nodes, ptr @bitmap_ior_into, i64 82}
!494 = !{ptr @merge_graph_nodes, ptr @clear_edges_for_node, i64 42535}
!495 = !{ptr @merge_node_constraints, ptr @find, i64 42535}
!496 = !{ptr @merge_node_constraints, ptr @fancy_abort, i64 1}
!497 = !{ptr @merge_node_constraints, ptr @VEC_constraint_t_base_iterate, i64 42536}
!498 = !{ptr @merge_node_constraints, ptr @constraint_set_union, i64 42535}
!499 = !{ptr @merge_node_constraints, ptr @VEC_constraint_t_heap_free, i64 42535}
!500 = !{ptr @valid_graph_edge, ptr @bitmap_bit_p, i64 82}
!501 = !{ptr @constraint_set_union, ptr @VEC_constraint_t_base_iterate, i64 42536}
!502 = !{ptr @constraint_set_union, ptr @constraint_vec_find, i64 1}
!503 = !{ptr @VEC_constraint_t_heap_free, ptr @free, i64 492}
!504 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @VEC_constraint_t_base_length, i64 912}
!505 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @VEC_constraint_t_base_index, i64 579}
!506 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @constraint_less, i64 579}
!507 = !{ptr @constraint_less, ptr @constraint_expr_less, i64 1042}
!508 = !{ptr @VEC_constraint_t_heap_safe_insert, ptr @VEC_constraint_t_heap_reserve, i64 912}
!509 = !{ptr @VEC_constraint_t_heap_safe_insert, ptr @VEC_constraint_t_base_quick_insert, i64 912}
!510 = !{ptr @constraint_equal, ptr @constraint_expr_equal, i64 463}
!511 = !{ptr @add_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 1020}
!512 = !{ptr @add_graph_edge, ptr @bitmap_set_bit, i64 209778}
!513 = !{ptr @add_graph_edge, ptr @VEC_varinfo_t_base_length, i64 1703}
!514 = !{ptr @free_scc_info, ptr @free, i64 1624}
!515 = !{ptr @free_scc_info, ptr @VEC_unsigned_heap_free, i64 232}
!516 = !{ptr @VEC_unsigned_heap_free, ptr @free, i64 352}
!517 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_lower_bound, i64 912}
!518 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_length, i64 912}
!519 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_index, i64 232}
!520 = !{ptr @insert_into_complex, ptr @constraint_equal, i64 232}
!521 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_heap_safe_insert, i64 911}
!522 = !{ptr @scc_visit, ptr @SET_BIT, i64 91609}
!523 = !{ptr @scc_visit, ptr @bmp_iter_set_init, i64 823}
!524 = !{ptr @scc_visit, ptr @bmp_iter_set, i64 2082}
!525 = !{ptr @scc_visit, ptr @VEC_varinfo_t_base_length, i64 1265}
!526 = !{ptr @scc_visit, ptr @find, i64 2231}
!527 = !{ptr @scc_visit, ptr @scc_visit, i64 490}
!528 = !{ptr @scc_visit, ptr @fancy_abort, i64 1}
!529 = !{ptr @scc_visit, ptr @bmp_iter_next, i64 1259}
!530 = !{ptr @scc_visit, ptr @VEC_unsigned_base_length, i64 45809}
!531 = !{ptr @scc_visit, ptr @VEC_unsigned_base_last, i64 6}
!532 = !{ptr @scc_visit, ptr @VEC_unsigned_base_pop, i64 5}
!533 = !{ptr @scc_visit, ptr @bitmap_set_bit, i64 5}
!534 = !{ptr @scc_visit, ptr @unite, i64 10}
!535 = !{ptr @scc_visit, ptr @unify_nodes, i64 3}
!536 = !{ptr @scc_visit, ptr @VEC_unsigned_heap_safe_push, i64 1}
!537 = !{ptr @init_topo_info, ptr @xmalloc, i64 121}
!538 = !{ptr @init_topo_info, ptr @sbitmap_alloc, i64 121}
!539 = !{ptr @init_topo_info, ptr @sbitmap_zero, i64 121}
!540 = !{ptr @init_topo_info, ptr @VEC_unsigned_heap_alloc, i64 121}
!541 = !{ptr @compute_topo_order, ptr @find, i64 43754}
!542 = !{ptr @compute_topo_order, ptr @topo_visit, i64 1368}
!543 = !{ptr @eliminate_indirect_cycles, ptr @get_varinfo, i64 2}
!544 = !{ptr @eliminate_indirect_cycles, ptr @find, i64 13}
!545 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_set_init, i64 1}
!546 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_set, i64 13}
!547 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_base_iterate, i64 13}
!548 = !{ptr @eliminate_indirect_cycles, ptr @unite, i64 6}
!549 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_heap_safe_push, i64 4}
!550 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_next, i64 12}
!551 = !{ptr @eliminate_indirect_cycles, ptr @unify_nodes, i64 12}
!552 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_heap_free, i64 1}
!553 = !{ptr @do_complex_constraint, ptr @fancy_abort, i64 3}
!554 = !{ptr @do_complex_constraint, ptr @do_ds_constraint, i64 117}
!555 = !{ptr @do_complex_constraint, ptr @get_varinfo, i64 792}
!556 = !{ptr @do_complex_constraint, ptr @do_sd_constraint, i64 410}
!557 = !{ptr @do_complex_constraint, ptr @set_union_with_increment, i64 166}
!558 = !{ptr @do_complex_constraint, ptr @SET_BIT, i64 49}
!559 = !{ptr @set_union_with_increment, ptr @bitmap_ior_into, i64 638}
!560 = !{ptr @set_union_with_increment, ptr @bitmap_obstack_alloc_stat, i64 166}
!561 = !{ptr @set_union_with_increment, ptr @bitmap_copy, i64 166}
!562 = !{ptr @set_union_with_increment, ptr @solution_set_add, i64 166}
!563 = !{ptr @set_union_with_increment, ptr @bitmap_obstack_free, i64 166}
!564 = !{ptr @free_topo_info, ptr @free, i64 363}
!565 = !{ptr @free_topo_info, ptr @VEC_unsigned_heap_free, i64 121}
!566 = !{ptr @topo_visit, ptr @SET_BIT, i64 1933}
!567 = !{ptr @topo_visit, ptr @bmp_iter_set_init, i64 688}
!568 = !{ptr @topo_visit, ptr @bmp_iter_set, i64 1853}
!569 = !{ptr @topo_visit, ptr @topo_visit, i64 555}
!570 = !{ptr @topo_visit, ptr @bmp_iter_next, i64 1165}
!571 = !{ptr @topo_visit, ptr @VEC_unsigned_heap_safe_push, i64 1933}
!572 = !{ptr @do_ds_constraint, ptr @get_varinfo, i64 687}
!573 = !{ptr @do_ds_constraint, ptr @fancy_abort, i64 1}
!574 = !{ptr @do_ds_constraint, ptr @bitmap_bit_p, i64 234}
!575 = !{ptr @do_ds_constraint, ptr @find, i64 647}
!576 = !{ptr @do_ds_constraint, ptr @add_graph_edge, i64 646}
!577 = !{ptr @do_ds_constraint, ptr @bitmap_ior_into, i64 37}
!578 = !{ptr @do_ds_constraint, ptr @solution_set_expand, i64 1}
!579 = !{ptr @do_ds_constraint, ptr @bmp_iter_set_init, i64 116}
!580 = !{ptr @do_ds_constraint, ptr @bmp_iter_set, i64 648}
!581 = !{ptr @do_ds_constraint, ptr @first_vi_for_offset, i64 1}
!582 = !{ptr @do_ds_constraint, ptr @bmp_iter_next, i64 532}
!583 = !{ptr @do_sd_constraint, ptr @get_varinfo, i64 2742}
!584 = !{ptr @do_sd_constraint, ptr @fancy_abort, i64 1}
!585 = !{ptr @do_sd_constraint, ptr @bitmap_bit_p, i64 412}
!586 = !{ptr @do_sd_constraint, ptr @bitmap_set_bit, i64 135}
!587 = !{ptr @do_sd_constraint, ptr @solution_set_expand, i64 1}
!588 = !{ptr @do_sd_constraint, ptr @bmp_iter_set_init, i64 411}
!589 = !{ptr @do_sd_constraint, ptr @bmp_iter_set, i64 1261}
!590 = !{ptr @do_sd_constraint, ptr @first_vi_for_offset, i64 1}
!591 = !{ptr @do_sd_constraint, ptr @find, i64 850}
!592 = !{ptr @do_sd_constraint, ptr @bitmap_ior_into, i64 638}
!593 = !{ptr @do_sd_constraint, ptr @add_graph_edge, i64 412}
!594 = !{ptr @do_sd_constraint, ptr @bmp_iter_next, i64 850}
!595 = !{ptr @do_sd_constraint, ptr @SET_BIT, i64 295}
!596 = !{ptr @solution_set_expand, ptr @bmp_iter_set_init, i64 154}
!597 = !{ptr @solution_set_expand, ptr @bmp_iter_set, i64 785}
!598 = !{ptr @solution_set_expand, ptr @get_varinfo, i64 631}
!599 = !{ptr @solution_set_expand, ptr @lookup_vi_for_tree, i64 1}
!600 = !{ptr @solution_set_expand, ptr @bitmap_set_bit, i64 396}
!601 = !{ptr @solution_set_expand, ptr @bmp_iter_next, i64 631}
!602 = !{ptr @solution_set_expand, ptr @bitmap_obstack_free, i64 1}
!603 = !{ptr @solution_set_add, ptr @bitmap_obstack_alloc_stat, i64 166}
!604 = !{ptr @solution_set_add, ptr @solution_set_expand, i64 152}
!605 = !{ptr @solution_set_add, ptr @bmp_iter_set_init, i64 14}
!606 = !{ptr @solution_set_add, ptr @bmp_iter_set, i64 52}
!607 = !{ptr @solution_set_add, ptr @get_varinfo, i64 38}
!608 = !{ptr @solution_set_add, ptr @bitmap_set_bit, i64 37}
!609 = !{ptr @solution_set_add, ptr @bmp_iter_next, i64 38}
!610 = !{ptr @solution_set_add, ptr @bitmap_copy, i64 14}
!611 = !{ptr @solution_set_add, ptr @bitmap_obstack_free, i64 14}
!612 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_set_init, i64 42807}
!613 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_set, i64 128432}
!614 = !{ptr @set_uids_in_ptset, ptr @get_varinfo, i64 85625}
!615 = !{ptr @set_uids_in_ptset, ptr @bitmap_set_bit, i64 118}
!616 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_next, i64 85625}
!617 = !{ptr @shared_bitmap_lookup, ptr @bitmap_hash, i64 42807}
!618 = !{ptr @shared_bitmap_lookup, ptr @htab_find_slot_with_hash, i64 42807}
!619 = !{ptr @shared_bitmap_add, ptr @xmalloc, i64 230}
!620 = !{ptr @shared_bitmap_add, ptr @bitmap_hash, i64 230}
!621 = !{ptr @shared_bitmap_add, ptr @htab_find_slot_with_hash, i64 230}
!622 = !{ptr @shared_bitmap_add, ptr @fancy_abort, i64 1}
!623 = !{ptr @VEC_varinfo_t_heap_free, ptr @free, i64 115}
!624 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!625 = !{!"function_entry_count", i64 0}
!626 = !{!627, !627, i64 0}
!627 = !{!"any pointer", !628, i64 0}
!628 = !{!"omnipotent char", !629, i64 0}
!629 = !{!"Simple C/C++ TBAA"}
!630 = !{!"tree-ssa-structalias.c:dump_constraint"}
!631 = !{!632, !634, i64 0}
!632 = !{!"constraint", !633, i64 0, !633, i64 16}
!633 = !{!"constraint_expr", !634, i64 0, !634, i64 4, !635, i64 8}
!634 = !{!"int", !628, i64 0}
!635 = !{!"long", !628, i64 0}
!636 = !{!632, !634, i64 4}
!637 = !{!638, !627, i64 40}
!638 = !{!"variable_info", !634, i64 0, !634, i64 4, !634, i64 4, !634, i64 4, !634, i64 4, !634, i64 4, !634, i64 4, !634, i64 4, !634, i64 4, !627, i64 8, !635, i64 16, !635, i64 24, !635, i64 32, !627, i64 40, !627, i64 48, !627, i64 56, !627, i64 64}
!639 = !{!632, !635, i64 8}
!640 = !{!632, !634, i64 16}
!641 = !{!632, !634, i64 20}
!642 = !{!632, !635, i64 24}
!643 = !{!"tree-ssa-structalias.c:dump_constraints"}
!644 = !{i32 0, i32 2}
!645 = distinct !{!645, !646}
!646 = !{!"llvm.loop.mustprogress"}
!647 = !{!"tree-ssa-structalias.c:dump_constraint_graph"}
!648 = !{!649, !634, i64 0}
!649 = !{!"constraint_graph", !634, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !627, i64 32, !627, i64 40, !627, i64 48, !627, i64 56, !627, i64 64, !627, i64 72, !627, i64 80, !627, i64 88, !627, i64 96, !627, i64 104, !627, i64 112, !627, i64 120}
!650 = !{!649, !627, i64 40}
!651 = !{!634, !634, i64 0}
!652 = distinct !{!652, !646}
!653 = distinct !{!653, !646}
!654 = !{!"tree-ssa-structalias.c:dump_solution_for_var"}
!655 = !{!638, !627, i64 56}
!656 = !{i8 0, i8 2}
!657 = distinct !{!657, !646}
!658 = !{!659, !635, i64 8}
!659 = !{!"", !635, i64 0, !635, i64 8, !635, i64 16, !635, i64 24}
!660 = !{!659, !635, i64 0}
!661 = !{!659, !635, i64 24}
!662 = !{!659, !635, i64 16}
!663 = !{!"function_entry_count", i64 14515}
!664 = !{!665, !627, i64 8}
!665 = !{!"pt_solution", !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !634, i64 0, !627, i64 8}
!666 = distinct !{!666, !646}
!667 = !{!"function_entry_count", i64 216992}
!668 = !{!"tree-ssa-structalias.c:bmp_iter_set_init"}
!669 = !{!670, !627, i64 0}
!670 = !{!"bitmap_head_def", !627, i64 0, !627, i64 8, !634, i64 16, !627, i64 24}
!671 = !{!672, !627, i64 0}
!672 = !{!"", !627, i64 0, !627, i64 8, !634, i64 16, !635, i64 24}
!673 = !{!672, !627, i64 8}
!674 = !{!"branch_weights", i32 268, i32 216726}
!675 = !{!676, !634, i64 16}
!676 = !{!"bitmap_element_def", !627, i64 0, !627, i64 8, !634, i64 16, !628, i64 24}
!677 = !{!672, !634, i64 16}
!678 = !{!635, !635, i64 0}
!679 = !{!672, !635, i64 24}
!680 = !{!"function_entry_count", i64 649218}
!681 = !{!"tree-ssa-structalias.c:bmp_iter_set"}
!682 = !{!"branch_weights", i32 235954, i32 413266}
!683 = !{!"branch_weights", i32 432226, i32 1}
!684 = !{!"branch_weights", i32 2500376, i32 432226}
!685 = distinct !{!685, !646}
!686 = !{!"branch_weights", i32 1, i32 218242}
!687 = !{!"branch_weights", i32 200532, i32 18962}
!688 = !{!"branch_weights", i32 218242, i32 1251}
!689 = distinct !{!689, !646}
!690 = !{!676, !627, i64 0}
!691 = !{!"branch_weights", i32 216993, i32 1251}
!692 = !{!"function_entry_count", i64 877}
!693 = !{!"tree-ssa-structalias.c:is_global_var"}
!694 = !{!"branch_weights", i32 762, i32 117}
!695 = !{!"function_entry_count", i64 432226}
!696 = !{!"tree-ssa-structalias.c:bmp_iter_next"}
!697 = !{!"function_entry_count", i64 1441}
!698 = !{!"branch_weights", i32 1442, i32 2079365}
!699 = !{!700, !627, i64 24}
!700 = !{!"function", !627, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !627, i64 32, !627, i64 40, !627, i64 48, !627, i64 56, !627, i64 64, !627, i64 72, !627, i64 80, !627, i64 88, !627, i64 96, !634, i64 104, !634, i64 108, !634, i64 112, !634, i64 116, !634, i64 120, !634, i64 124, !627, i64 128, !634, i64 136, !634, i64 137, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 138, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139, !634, i64 139}
!701 = !{!"branch_weights", i32 0, i32 1442}
!702 = !{!"function_entry_count", i64 36}
!703 = !{!"branch_weights", i32 1, i32 37}
!704 = !{!"tree-ssa-structalias.c:pt_solution_includes_1"}
!705 = !{!"branch_weights", i32 37, i32 1}
!706 = !{!628, !628, i64 0}
!707 = !{!"function_entry_count", i64 159}
!708 = !{!"branch_weights", i32 1, i32 160}
!709 = !{!"tree-ssa-structalias.c:pt_solutions_intersect_1"}
!710 = !{!"branch_weights", i32 160, i32 1}
!711 = !{!"tree-ssa-structalias.c:dump_sa_points_to_info"}
!712 = !{!713, !634, i64 0}
!713 = !{!"constraint_stats", !634, i64 0, !634, i64 4, !634, i64 8, !634, i64 12, !634, i64 16, !634, i64 20, !634, i64 24, !634, i64 28}
!714 = !{!713, !634, i64 4}
!715 = !{!713, !634, i64 8}
!716 = !{!713, !634, i64 12}
!717 = !{!713, !634, i64 16}
!718 = !{!713, !634, i64 20}
!719 = !{!713, !634, i64 24}
!720 = distinct !{!720, !646}
!721 = !{!"function_entry_count", i64 41}
!722 = !{!"branch_weights", i32 3, i32 40}
!723 = !{!"function_entry_count", i64 116}
!724 = !{!"branch_weights", i32 117, i32 1}
!725 = !{!"tree-ssa-structalias.c:compute_points_to_sets"}
!726 = !{!700, !627, i64 8}
!727 = !{!728, !627, i64 0}
!728 = !{!"control_flow_graph", !627, i64 0, !627, i64 8, !627, i64 16, !634, i64 24, !634, i64 28, !634, i64 32, !627, i64 40, !634, i64 48, !628, i64 52, !628, i64 60, !634, i64 68, !634, i64 72}
!729 = !{!730, !627, i64 56}
!730 = !{!"basic_block_def", !627, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !628, i64 32, !627, i64 48, !627, i64 56, !628, i64 64, !635, i64 72, !634, i64 80, !634, i64 84, !634, i64 88, !634, i64 92, !634, i64 96}
!731 = !{!728, !627, i64 8}
!732 = !{!"branch_weights", i32 1, i32 233}
!733 = !{!"branch_weights", i32 133912, i32 541860}
!734 = !{!"branch_weights", i32 130752, i32 3161}
!735 = !{!"branch_weights", i32 0, i32 133912}
!736 = distinct !{!736, !646}
!737 = !{i64 0, i64 8, !626, i64 8, i64 8, !626, i64 16, i64 8, !626}
!738 = !{!"branch_weights", i32 675771, i32 1}
!739 = !{!"branch_weights", i32 418942, i32 675771}
!740 = distinct !{!740, !646}
!741 = !{!"branch_weights", i32 233, i32 1351311}
!742 = distinct !{!742, !646}
!743 = !{!744, !627, i64 16}
!744 = !{!"gimple_df", !627, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !665, i64 32, !665, i64 48, !627, i64 64, !627, i64 72, !627, i64 80, !627, i64 88, !634, i64 96, !745, i64 104}
!745 = !{!"ssa_operands", !627, i64 0, !634, i64 8, !634, i64 12, !628, i64 16, !627, i64 24, !627, i64 32}
!746 = !{!"branch_weights", i32 44229, i32 1}
!747 = !{!638, !627, i64 48}
!748 = !{!"branch_weights", i32 233, i32 88225}
!749 = distinct !{!749, !646}
!750 = !{!"branch_weights", i32 164910, i32 992604}
!751 = !{!"branch_weights", i32 -769361434, i32 158001864, i32 3711}
!752 = !{!"branch_weights", i32 2314793, i32 233}
!753 = distinct !{!753, !646}
!754 = !{!"tree-ssa-structalias.c:delete_points_to_sets"}
!755 = !{!713, !634, i64 28}
!756 = !{!649, !627, i64 120}
!757 = !{!"branch_weights", i32 88225, i32 233}
!758 = distinct !{!758, !646}
!759 = !{!649, !627, i64 8}
!760 = !{!649, !627, i64 56}
!761 = !{!649, !627, i64 64}
!762 = !{!649, !627, i64 32}
!763 = !{!"function_entry_count", i64 78}
!764 = !{!"tree-ssa-structalias.c:gate_tree_pta"}
!765 = !{!"function_entry_count", i64 1}
!766 = !{!"tree-ssa-structalias.c:gate_ipa_pta"}
!767 = !{!"branch_weights", i32 2, i32 7}
!768 = !{!"tree-ssa-structalias.c:ipa_pta_execute"}
!769 = !{!770, !627, i64 0}
!770 = !{!"cgraph_node", !627, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !627, i64 32, !627, i64 40, !627, i64 48, !627, i64 56, !627, i64 64, !627, i64 72, !627, i64 80, !627, i64 88, !627, i64 96, !627, i64 104, !627, i64 112, !627, i64 120, !627, i64 128, !627, i64 136, !771, i64 144, !773, i64 184, !774, i64 224, !775, i64 232, !776, i64 256, !635, i64 288, !634, i64 296, !634, i64 300, !634, i64 304, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 308, !634, i64 309, !634, i64 309}
!771 = !{!"cgraph_local_info", !627, i64 0, !772, i64 8, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32, !634, i64 32}
!772 = !{!"inline_summary", !635, i64 0, !634, i64 8, !634, i64 12, !634, i64 16, !634, i64 20}
!773 = !{!"cgraph_global_info", !635, i64 0, !635, i64 8, !627, i64 16, !634, i64 24, !634, i64 28, !634, i64 32, !628, i64 36}
!774 = !{!"cgraph_rtl_info", !634, i64 0}
!775 = !{!"cgraph_clone_info", !627, i64 0, !627, i64 8, !627, i64 16}
!776 = !{!"cgraph_thunk_info", !635, i64 0, !635, i64 8, !627, i64 16, !628, i64 24, !628, i64 25, !628, i64 26}
!777 = !{!770, !627, i64 96}
!778 = distinct !{!778, !646}
!779 = distinct !{!779, !646}
!780 = distinct !{!780, !646}
!781 = distinct !{!781, !646}
!782 = distinct !{!782, !646}
!783 = !{!"function_entry_count", i64 766924}
!784 = !{!"tree-ssa-structalias.c:get_varinfo"}
!785 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_index"}
!786 = !{!"function_entry_count", i64 1095282}
!787 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_iterate"}
!788 = !{!"branch_weights", i32 85512, i32 1009772}
!789 = !{!790, !634, i64 0}
!790 = !{!"VEC_constraint_t_base", !634, i64 0, !634, i64 4, !628, i64 8}
!791 = !{!"branch_weights", i32 1009036, i32 737}
!792 = !{!"function_entry_count", i64 1810747}
!793 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_length"}
!794 = !{!"branch_weights", i32 1, i32 1810748}
!795 = !{!796, !634, i64 0}
!796 = !{!"VEC_varinfo_t_base", !634, i64 0, !634, i64 4, !628, i64 8}
!797 = !{!"tree-ssa-structalias.c:dump_constraint_edge"}
!798 = !{!"function_entry_count", i64 1671804}
!799 = !{!"tree-ssa-structalias.c:find"}
!800 = !{!"branch_weights", i32 1671805, i32 1}
!801 = !{!"branch_weights", i32 1412181, i32 259625}
!802 = !{!"tree-ssa-structalias.c:pt_solution_empty_p"}
!803 = !{!"tree-ssa-structalias.c:init_alias_vars"}
!804 = !{!805, !634, i64 8}
!805 = !{!"param_info", !627, i64 0, !634, i64 8, !628, i64 12, !634, i64 16, !634, i64 20, !627, i64 24}
!806 = !{!"tree-ssa-structalias.c:init_alias_heapvars"}
!807 = !{!"branch_weights", i32 40, i32 78}
!808 = !{!"tree-ssa-structalias.c:intra_create_variable_infos"}
!809 = !{!"branch_weights", i32 1, i32 117}
!810 = !{!638, !634, i64 0}
!811 = !{!638, !627, i64 8}
!812 = !{!"branch_weights", i32 233, i32 1}
!813 = distinct !{!813, !646}
!814 = !{!"branch_weights", i32 1, i32 234, i32 1}
!815 = distinct !{!815, !646}
!816 = !{!700, !627, i64 48}
!817 = distinct !{!817, !646}
!818 = !{!700, !627, i64 56}
!819 = distinct !{!819, !646}
!820 = !{!"function_entry_count", i64 2580165}
!821 = !{!"tree-ssa-structalias.c:gsi_end_p"}
!822 = !{!823, !627, i64 0}
!823 = !{!"", !627, i64 0, !627, i64 8, !627, i64 16}
!824 = !{!"function_entry_count", i64 1228623}
!825 = !{!"tree-ssa-structalias.c:gsi_stmt"}
!826 = !{!827, !627, i64 0}
!827 = !{!"gimple_seq_node_d", !627, i64 0, !627, i64 8, !627, i64 16}
!828 = !{!"function_entry_count", i64 149754}
!829 = !{!"tree-ssa-structalias.c:gimple_phi_result"}
!830 = !{!"function_entry_count", i64 1097872}
!831 = !{!"tree-ssa-structalias.c:find_func_aliases"}
!832 = !{i32 0, i32 256}
!833 = !{!"branch_weights", i32 3161, i32 1094713}
!834 = !{!"branch_weights", i32 3857353, i32 -1248138522}
!835 = !{!"branch_weights", i32 3118, i32 44}
!836 = !{!"branch_weights", i32 1, i32 175}
!837 = !{!"branch_weights", i32 1, i32 173}
!838 = !{!"branch_weights", i32 173, i32 1}
!839 = distinct !{!839, !646}
!840 = distinct !{!840, !646}
!841 = !{!"branch_weights", i32 173, i32 175}
!842 = distinct !{!842, !646}
!843 = !{!"branch_weights", i32 887327, i32 207387}
!844 = !{!"branch_weights", i32 1, i32 207387}
!845 = distinct !{!845, !646}
!846 = !{!"branch_weights", i32 207387, i32 1}
!847 = !{!"branch_weights", i32 6746, i32 200642}
!848 = !{!"branch_weights", i32 200642, i32 1}
!849 = distinct !{!849, !646}
!850 = distinct !{!850, !646}
!851 = distinct !{!851, !646}
!852 = !{!"branch_weights", i32 436786, i32 450542}
!853 = !{!"branch_weights", i32 408126, i32 42417}
!854 = !{!"branch_weights", i32 42405, i32 13}
!855 = !{!"branch_weights", i32 0, i32 -2147483648}
!856 = !{!"branch_weights", i32 284067, i32 -1283567614}
!857 = !{i32 0, i32 65536}
!858 = !{!"branch_weights", i32 13, i32 42405}
!859 = !{!"branch_weights", i32 1, i32 42405}
!860 = !{!633, !634, i64 0}
!861 = !{!633, !634, i64 4}
!862 = !{!633, !635, i64 8}
!863 = !{!"branch_weights", i32 1, i32 42417}
!864 = !{!"branch_weights", i32 42417, i32 1}
!865 = !{!"branch_weights", i32 844753, i32 159}
!866 = !{!"branch_weights", i32 1, i32 159}
!867 = !{!"branch_weights", i32 117, i32 844795}
!868 = !{!"branch_weights", i32 116, i32 2}
!869 = !{!"branch_weights", i32 1, i32 844910}
!870 = distinct !{!870, !646}
!871 = distinct !{!871, !646}
!872 = distinct !{!872, !646}
!873 = !{!"tree-ssa-structalias.c:gsi_next"}
!874 = !{!827, !627, i64 16}
!875 = !{!"function_entry_count", i64 675771}
!876 = !{!"tree-ssa-structalias.c:gsi_start_bb"}
!877 = !{!823, !627, i64 8}
!878 = !{!823, !627, i64 16}
!879 = !{!"tree-ssa-structalias.c:solve_constraints"}
!880 = !{!"function_entry_count", i64 42807}
!881 = !{!"tree-ssa-structalias.c:find_what_var_points_to"}
!882 = !{!"branch_weights", i32 1, i32 42807}
!883 = !{!"branch_weights", i32 117, i32 85511}
!884 = !{!"branch_weights", i32 8373556, i32 10777032, i32 -1195441393, i32 72814, i32 -1186921418}
!885 = !{!"branch_weights", i32 13341, i32 115}
!886 = !{!"branch_weights", i32 85627, i32 1}
!887 = !{!"branch_weights", i32 42807, i32 42820}
!888 = distinct !{!888, !646}
!889 = !{!"branch_weights", i32 42808, i32 1}
!890 = !{!"branch_weights", i32 231, i32 42578}
!891 = !{!"function_entry_count", i64 44344}
!892 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_iterate"}
!893 = !{!"branch_weights", i32 1, i32 44345}
!894 = !{!"branch_weights", i32 44229, i32 117}
!895 = !{!"function_entry_count", i64 1157628}
!896 = !{!"tree-ssa-structalias.c:VEC_tree_base_length"}
!897 = !{!"branch_weights", i32 1, i32 1157629}
!898 = !{!899, !634, i64 0}
!899 = !{!"VEC_tree_base", !634, i64 0, !634, i64 4, !628, i64 8}
!900 = !{!"function_entry_count", i64 1157512}
!901 = !{!"tree-ssa-structalias.c:VEC_tree_base_index"}
!902 = !{!"function_entry_count", i64 42575}
!903 = !{!"tree-ssa-structalias.c:find_what_p_points_to"}
!904 = !{!"branch_weights", i32 42576, i32 1}
!905 = !{!"branch_weights", i32 117, i32 42460}
!906 = !{!"branch_weights", i32 1, i32 42576}
!907 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_alloc"}
!908 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_alloc"}
!909 = !{!"tree-ssa-structalias.c:shared_bitmap_hash"}
!910 = !{!911, !634, i64 8}
!911 = !{!"shared_bitmap_info", !627, i64 0, !634, i64 8}
!912 = !{!"function_entry_count", i64 42577}
!913 = !{!"tree-ssa-structalias.c:shared_bitmap_eq"}
!914 = !{!911, !627, i64 0}
!915 = !{!"tree-ssa-structalias.c:init_base_vars"}
!916 = !{!638, !635, i64 16}
!917 = !{!638, !635, i64 24}
!918 = !{!638, !635, i64 32}
!919 = !{!"function_entry_count", i64 44228}
!920 = !{!"tree-ssa-structalias.c:new_var_info"}
!921 = !{!"branch_weights", i32 929, i32 43301}
!922 = !{!"branch_weights", i32 842, i32 42460}
!923 = !{!638, !627, i64 64}
!924 = !{!"function_entry_count", i64 252085}
!925 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_safe_push"}
!926 = !{!"tree-ssa-structalias.c:new_constraint"}
!927 = !{i64 0, i64 4, !651, i64 4, i64 4, !651, i64 8, i64 8, !678}
!928 = !{i64 0, i64 8, !678}
!929 = !{!"function_entry_count", i64 251969}
!930 = !{!"tree-ssa-structalias.c:process_constraint"}
!931 = !{!"branch_weights", i32 251970, i32 1}
!932 = !{!"branch_weights", i32 1, i32 251970}
!933 = !{!"branch_weights", i32 -521058910, i32 7958485, i32 16064112}
!934 = !{!"branch_weights", i32 1, i32 528}
!935 = !{!"branch_weights", i32 1, i32 1068}
!936 = !{!"branch_weights", i32 1068, i32 1}
!937 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_safe_push"}
!938 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_reserve"}
!939 = !{!"branch_weights", i32 549, i32 43681}
!940 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_quick_push"}
!941 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_space"}
!942 = !{!"branch_weights", i32 1, i32 44229}
!943 = !{!796, !634, i64 4}
!944 = !{!"function_entry_count", i64 252997}
!945 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_reserve"}
!946 = !{!"branch_weights", i32 1286, i32 251713}
!947 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_quick_push"}
!948 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_space"}
!949 = !{!"branch_weights", i32 376, i32 252623}
!950 = !{!790, !634, i64 4}
!951 = !{!"tree-ssa-structalias.c:new_scalar_tmp_constraint_exp"}
!952 = !{!"tree-ssa-structalias.c:heapvar_map_eq"}
!953 = !{!954, !627, i64 0}
!954 = !{!"heapvar_map", !955, i64 0, !635, i64 24}
!955 = !{!"tree_map", !956, i64 0, !634, i64 8, !627, i64 16}
!956 = !{!"tree_map_base", !627, i64 0}
!957 = !{!954, !635, i64 24}
!958 = !{!"function_entry_count", i64 943934}
!959 = !{!"tree-ssa-structalias.c:could_have_pointers"}
!960 = !{!"tree-ssa-structalias.c:heapvar_lookup"}
!961 = !{!954, !627, i64 16}
!962 = !{!"tree-ssa-structalias.c:heapvar_insert"}
!963 = !{!954, !634, i64 8}
!964 = !{!"tree-ssa-structalias.c:get_var_ann"}
!965 = !{!"tree-ssa-structalias.c:gimple_referenced_vars"}
!966 = !{!744, !627, i64 0}
!967 = !{!"function_entry_count", i64 292631}
!968 = !{!"tree-ssa-structalias.c:get_vi_for_tree"}
!969 = !{!"branch_weights", i32 42833, i32 249800}
!970 = !{!"tree-ssa-structalias.c:make_constraint_from"}
!971 = !{!"tree-ssa-structalias.c:make_constraint_from_restrict"}
!972 = !{!"function_entry_count", i64 944752}
!973 = !{!"tree-ssa-structalias.c:type_could_have_pointers"}
!974 = !{!"branch_weights", i32 -1135017482, i32 1426866234, i32 4858, i32 3980053, i32 383911, i32 4859}
!975 = !{!"tree-ssa-structalias.c:heapvar_map_hash"}
!976 = !{!"function_entry_count", i64 42832}
!977 = !{!"tree-ssa-structalias.c:create_variable_info_for"}
!978 = !{!"branch_weights", i32 374, i32 42460}
!979 = !{!"branch_weights", i32 42755, i32 79}
!980 = !{!"branch_weights", i32 1, i32 79}
!981 = !{!"branch_weights", i32 1, i32 42833}
!982 = !{!"branch_weights", i32 42576, i32 258}
!983 = !{!"branch_weights", i32 258, i32 1}
!984 = !{!"branch_weights", i32 376, i32 142}
!985 = !{!"branch_weights", i32 117, i32 142}
!986 = !{!"branch_weights", i32 6241, i32 5120, i32 79}
!987 = !{!"branch_weights", i32 64, i32 1}
!988 = !{!"branch_weights", i32 1834665889, i32 85667}
!989 = !{!"branch_weights", i32 79, i32 1}
!990 = !{!"branch_weights", i32 1, i32 157}
!991 = !{!"branch_weights", i32 157, i32 937}
!992 = distinct !{!992, !646}
!993 = !{!"branch_weights", i32 547, i32 1}
!994 = !{!995, !635, i64 0}
!995 = !{!"fieldoff", !635, i64 0, !635, i64 8, !634, i64 16, !634, i64 16, !634, i64 16}
!996 = !{!"branch_weights", i32 1, i32 547}
!997 = !{!"branch_weights", i32 159, i32 6241}
!998 = !{!"branch_weights", i32 239, i32 12561}
!999 = !{!"branch_weights", i32 79, i32 469}
!1000 = !{!"branch_weights", i32 469, i32 1}
!1001 = !{!995, !635, i64 8}
!1002 = !{!"branch_weights", i32 1, i32 469}
!1003 = !{!"branch_weights", i32 627, i32 313}
!1004 = !{!"branch_weights", i32 157, i32 313}
!1005 = !{!"branch_weights", i32 313, i32 1}
!1006 = !{!"branch_weights", i32 627, i32 97969}
!1007 = !{!"branch_weights", i32 157, i32 781}
!1008 = distinct !{!1008, !646}
!1009 = !{!"tree-ssa-structalias.c:alias_get_name"}
!1010 = !{!"branch_weights", i32 42460, i32 374}
!1011 = !{!"branch_weights", i32 42460, i32 1}
!1012 = !{!"function_entry_count", i64 86600}
!1013 = !{!"tree-ssa-structalias.c:var_can_have_subvars"}
!1014 = !{!"branch_weights", i32 86601, i32 1}
!1015 = !{!"branch_weights", i32 1683, i32 84919}
!1016 = !{!"tree-ssa-structalias.c:push_fields_onto_fieldstack"}
!1017 = !{!"branch_weights", i32 937, i32 1}
!1018 = !{!"branch_weights", i32 2145194220, i32 2289428}
!1019 = !{!"branch_weights", i32 2289428, i32 2145194220}
!1020 = !{!"branch_weights", i32 79, i32 859}
!1021 = !{!"branch_weights", i32 1, i32 937}
!1022 = !{!"branch_weights", i32 547, i32 313}
!1023 = !{!"branch_weights", i32 391, i32 157}
!1024 = !{!"branch_weights", i32 783, i32 152881}
!1025 = !{!"branch_weights", i32 391, i32 1}
!1026 = !{!"branch_weights", i32 219961, i32 37130, i32 469}
!1027 = !{!"branch_weights", i32 157, i32 1717}
!1028 = distinct !{!1028, !646}
!1029 = !{!"tree-ssa-structalias.c:insert_vi_for_tree"}
!1030 = !{!"branch_weights", i32 42833, i32 1}
!1031 = !{!"function_entry_count", i64 453}
!1032 = !{!"tree-ssa-structalias.c:make_copy_constraint"}
!1033 = !{!"function_entry_count", i64 1404}
!1034 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_length"}
!1035 = !{!"branch_weights", i32 157, i32 1249}
!1036 = !{!1037, !634, i64 0}
!1037 = !{!"VEC_fieldoff_s_base", !634, i64 0, !634, i64 4, !628, i64 8}
!1038 = !{!"function_entry_count", i64 1716}
!1039 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_iterate"}
!1040 = !{!"branch_weights", i32 1, i32 1717}
!1041 = !{!"branch_weights", i32 1561, i32 157}
!1042 = !{!"tree-ssa-structalias.c:sort_fieldstack"}
!1043 = !{!"tree-ssa-structalias.c:check_for_overlaps"}
!1044 = distinct !{!1044, !646}
!1045 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_index"}
!1046 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_free"}
!1047 = !{!"function_entry_count", i64 468}
!1048 = !{!"tree-ssa-structalias.c:insert_into_field_list"}
!1049 = !{!"function_entry_count", i64 936}
!1050 = !{!"tree-ssa-structalias.c:bitpos_of_field"}
!1051 = !{!"function_entry_count", i64 1248}
!1052 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_last"}
!1053 = !{!"function_entry_count", i64 546}
!1054 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_safe_push"}
!1055 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_reserve"}
!1056 = !{!"branch_weights", i32 157, i32 391}
!1057 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_quick_push"}
!1058 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_space"}
!1059 = !{!1037, !634, i64 4}
!1060 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_address"}
!1061 = !{!"tree-ssa-structalias.c:fieldoff_compare"}
!1062 = !{!"branch_weights", i32 547, i32 703}
!1063 = !{!"branch_weights", i32 703, i32 1}
!1064 = !{!"tree-ssa-structalias.c:make_constraint_from_heapvar"}
!1065 = !{!"function_entry_count", i64 12347134}
!1066 = !{!"tree-ssa-structalias.c:gimple_code"}
!1067 = !{!"function_entry_count", i64 292815}
!1068 = !{!"tree-ssa-structalias.c:get_constraint_for"}
!1069 = !{!"branch_weights", i32 292816, i32 1}
!1070 = !{!"function_entry_count", i64 129}
!1071 = !{!"tree-ssa-structalias.c:gimple_phi_num_args"}
!1072 = !{!"function_entry_count", i64 172}
!1073 = !{!"tree-ssa-structalias.c:get_use_from_ptr"}
!1074 = !{!1075, !627, i64 24}
!1075 = !{!"ssa_use_operand_d", !627, i64 0, !627, i64 8, !628, i64 16, !627, i64 24}
!1076 = !{!"function_entry_count", i64 86}
!1077 = !{!"tree-ssa-structalias.c:gimple_phi_arg_imm_use_ptr"}
!1078 = !{!"tree-ssa-structalias.c:gimple_phi_arg_def"}
!1079 = !{!"function_entry_count", i64 586982}
!1080 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_iterate"}
!1081 = !{!"branch_weights", i32 1, i32 586983}
!1082 = !{!1083, !634, i64 0}
!1083 = !{!"VEC_ce_s_base", !634, i64 0, !634, i64 4, !628, i64 8}
!1084 = !{!"branch_weights", i32 293492, i32 293492}
!1085 = !{!"function_entry_count", i64 410217}
!1086 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_length"}
!1087 = !{!"branch_weights", i32 292773, i32 117446}
!1088 = !{!"function_entry_count", i64 37834}
!1089 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_last"}
!1090 = !{!"function_entry_count", i64 37140}
!1091 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_pop"}
!1092 = !{!"function_entry_count", i64 1094712}
!1093 = !{!"tree-ssa-structalias.c:is_gimple_call"}
!1094 = !{!"function_entry_count", i64 207386}
!1095 = !{!"tree-ssa-structalias.c:gimple_call_fndecl"}
!1096 = !{!"function_entry_count", i64 408027}
!1097 = !{!"tree-ssa-structalias.c:gimple_call_lhs"}
!1098 = !{!"function_entry_count", i64 245436}
!1099 = !{!"tree-ssa-structalias.c:gimple_call_arg"}
!1100 = !{!"function_entry_count", i64 12}
!1101 = !{!"tree-ssa-structalias.c:get_constraint_for_ptr_offset"}
!1102 = !{!"branch_weights", i32 1, i32 13}
!1103 = !{!"branch_weights", i32 13, i32 1}
!1104 = !{!"branch_weights", i32 -2147483648, i32 0}
!1105 = !{!"branch_weights", i32 1, i32 207}
!1106 = !{!"branch_weights", i32 2070787817, i32 76695831}
!1107 = distinct !{!1107, !646}
!1108 = !{!"branch_weights", i32 207, i32 1}
!1109 = distinct !{!1109, !646}
!1110 = !{!"function_entry_count", i64 42416}
!1111 = !{!"tree-ssa-structalias.c:process_all_all_constraints"}
!1112 = !{!"branch_weights", i32 1, i32 42416}
!1113 = !{!"branch_weights", i32 42416, i32 1}
!1114 = distinct !{!1114, !646}
!1115 = distinct !{!1115, !646}
!1116 = distinct !{!1116, !646}
!1117 = distinct !{!1117, !646}
!1118 = !{!"function_entry_count", i64 2610984}
!1119 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_free"}
!1120 = !{!"branch_weights", i32 2110827, i32 500159}
!1121 = !{!"function_entry_count", i64 320}
!1122 = !{!"tree-ssa-structalias.c:do_deref"}
!1123 = !{!"branch_weights", i32 1, i32 320}
!1124 = !{!"branch_weights", i32 1, i32 1284, i32 2, i32 1}
!1125 = !{!"branch_weights", i32 320, i32 1}
!1126 = distinct !{!1126, !646}
!1127 = !{!"tree-ssa-structalias.c:lookup_vi_for_tree"}
!1128 = !{!"tree-ssa-structalias.c:handle_const_call"}
!1129 = distinct !{!1129, !646}
!1130 = distinct !{!1130, !646}
!1131 = !{!"tree-ssa-structalias.c:handle_pure_call"}
!1132 = distinct !{!1132, !646}
!1133 = !{!"tree-ssa-structalias.c:handle_rhs_call"}
!1134 = !{!"branch_weights", i32 1, i32 207386}
!1135 = !{!"branch_weights", i32 37584, i32 207854}
!1136 = !{!"branch_weights", i32 38051, i32 207386}
!1137 = distinct !{!1137, !646}
!1138 = distinct !{!1138, !646}
!1139 = !{!"tree-ssa-structalias.c:handle_lhs_call"}
!1140 = !{!"tree-ssa-structalias.c:gimple_call_fn"}
!1141 = !{!"function_entry_count", i64 452822}
!1142 = !{!"tree-ssa-structalias.c:gimple_call_num_args"}
!1143 = !{!"tree-ssa-structalias.c:first_vi_for_offset"}
!1144 = distinct !{!1144, !646}
!1145 = !{!"function_entry_count", i64 1774652}
!1146 = !{!"tree-ssa-structalias.c:is_gimple_assign"}
!1147 = !{!"function_entry_count", i64 492957}
!1148 = !{!"tree-ssa-structalias.c:gimple_assign_lhs"}
!1149 = !{!"function_entry_count", i64 495250}
!1150 = !{!"tree-ssa-structalias.c:gimple_num_ops"}
!1151 = !{!"function_entry_count", i64 476001}
!1152 = !{!"tree-ssa-structalias.c:gimple_assign_rhs1"}
!1153 = !{!"tree-ssa-structalias.c:do_structure_copy"}
!1154 = !{!"function_entry_count", i64 577765}
!1155 = !{!"tree-ssa-structalias.c:gimple_assign_rhs_code"}
!1156 = !{!"branch_weights", i32 433270, i32 144497}
!1157 = !{!"tree-ssa-structalias.c:gimple_assign_rhs2"}
!1158 = !{!"tree-ssa-structalias.c:gimple_expr_type"}
!1159 = !{!"function_entry_count", i64 537255}
!1160 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_safe_push"}
!1161 = !{!"function_entry_count", i64 207854}
!1162 = !{!"tree-ssa-structalias.c:make_escape_constraint"}
!1163 = !{!"function_entry_count", i64 887326}
!1164 = !{!"tree-ssa-structalias.c:gimple_assign_cast_p"}
!1165 = !{!"function_entry_count", i64 233}
!1166 = !{!"tree-ssa-structalias.c:gimple_return_retval"}
!1167 = !{!"tree-ssa-structalias.c:gimple_asm_noutputs"}
!1168 = !{!"tree-ssa-structalias.c:gimple_asm_output_op"}
!1169 = !{!"tree-ssa-structalias.c:gimple_asm_ninputs"}
!1170 = !{!"tree-ssa-structalias.c:gimple_asm_input_op"}
!1171 = !{!"function_entry_count", i64 331282}
!1172 = !{!"tree-ssa-structalias.c:get_constraint_for_1"}
!1173 = !{!"branch_weights", i32 1, i32 331283}
!1174 = !{!"branch_weights", i32 114, i32 331170}
!1175 = !{!"branch_weights", i32 1, i32 114}
!1176 = !{!"branch_weights", i32 1, i32 331170}
!1177 = !{!"branch_weights", i32 188, i32 330983}
!1178 = !{!"branch_weights", i32 1, i32 400, i32 38069, i32 250265, i32 42252}
!1179 = !{!"branch_weights", i32 400, i32 1}
!1180 = !{!"branch_weights", i32 1, i32 321, i32 37442, i32 1, i32 308, i32 1}
!1181 = !{!"branch_weights", i32 250265, i32 1}
!1182 = !{!"function_entry_count", i64 399}
!1183 = !{!"tree-ssa-structalias.c:get_constraint_for_address_of"}
!1184 = !{!"branch_weights", i32 1, i32 399}
!1185 = !{!"branch_weights", i32 26, i32 375}
!1186 = !{!"branch_weights", i32 399, i32 1}
!1187 = distinct !{!1187, !646}
!1188 = !{!"function_entry_count", i64 37748}
!1189 = !{!"tree-ssa-structalias.c:get_constraint_for_component_ref"}
!1190 = !{!"branch_weights", i32 -318734549, i32 1943216789, i32 52176, i32 52175, i32 16748513}
!1191 = !{!"branch_weights", i32 279, i32 24080, i32 155682, i32 279}
!1192 = !{!"branch_weights", i32 37749, i32 76021}
!1193 = distinct !{!1193, !646}
!1194 = !{!"branch_weights", i32 188, i32 37562}
!1195 = !{!"branch_weights", i32 188, i32 1}
!1196 = !{!"branch_weights", i32 37749, i32 1}
!1197 = !{!"branch_weights", i32 32665, i32 -1842085388, i32 32665, i32 20971167}
!1198 = !{!"branch_weights", i32 37055, i32 375}
!1199 = !{!"branch_weights", i32 1373073025, i32 74111}
!1200 = !{!"branch_weights", i32 1, i32 37054}
!1201 = !{!"branch_weights", i32 222325, i32 37055}
!1202 = !{!"branch_weights", i32 37055, i32 1}
!1203 = !{!"branch_weights", i32 37054, i32 222325}
!1204 = distinct !{!1204, !646}
!1205 = distinct !{!1205, !646}
!1206 = !{!"branch_weights", i32 1, i32 37055}
!1207 = !{!"branch_weights", i32 1, i32 321}
!1208 = !{!"branch_weights", i32 321, i32 1}
!1209 = !{!"branch_weights", i32 123341872, i32 -1927301069}
!1210 = !{!"function_entry_count", i64 458124}
!1211 = !{!"tree-ssa-structalias.c:get_constraint_for_ssa_var"}
!1212 = !{!"branch_weights", i32 11844, i32 500476818, i32 1961653100, i32 11844, i32 -1330598056}
!1213 = !{!"branch_weights", i32 10350, i32 1752495602, i32 -866633284, i32 10350}
!1214 = !{!"branch_weights", i32 250265, i32 207861}
!1215 = !{!"branch_weights", i32 1752516303, i32 -866633284}
!1216 = !{!"branch_weights", i32 1, i32 292516}
!1217 = !{!"branch_weights", i32 254955, i32 37562}
!1218 = !{!"branch_weights", i32 1, i32 254955}
!1219 = distinct !{!1219, !646}
!1220 = !{!"function_entry_count", i64 259378}
!1221 = !{!"tree-ssa-structalias.c:ranges_overlap_p"}
!1222 = !{!"branch_weights", i32 26555, i32 232825}
!1223 = !{!"branch_weights", i32 152820509, i32 -1059791164}
!1224 = !{!"branch_weights", i32 222325, i32 26555}
!1225 = !{!"branch_weights", i32 705194581, i32 26555}
!1226 = !{!"tree-ssa-structalias.c:ref_contains_array_ref"}
!1227 = distinct !{!1227, !646}
!1228 = !{!"tree-ssa-structalias.c:handled_component_p"}
!1229 = !{!"tree-ssa-structalias.c:gimple_phi_arg"}
!1230 = !{!"function_entry_count", i64 2037438}
!1231 = !{!"tree-ssa-structalias.c:gimple_op"}
!1232 = !{!"branch_weights", i32 1, i32 2037439}
!1233 = !{!"tree-ssa-structalias.c:gimple_has_ops"}
!1234 = !{!"tree-ssa-structalias.c:gimple_ops"}
!1235 = !{!"tree-ssa-structalias.c:gimple_statement_structure"}
!1236 = !{!"tree-ssa-structalias.c:gss_for_code"}
!1237 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_index"}
!1238 = !{!"tree-ssa-structalias.c:first_or_preceding_vi_for_offset"}
!1239 = distinct !{!1239, !646}
!1240 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_replace"}
!1241 = !{!"tree-ssa-structalias.c:gimple_call_chain"}
!1242 = !{!"tree-ssa-structalias.c:make_constraint_to"}
!1243 = !{!"branch_weights", i32 1, i32 207854}
!1244 = !{!"branch_weights", i32 207854, i32 1}
!1245 = distinct !{!1245, !646}
!1246 = !{!"tree-ssa-structalias.c:gimple_call_return_slot_opt_p"}
!1247 = !{!"tree-ssa-structalias.c:gimple_expr_code"}
!1248 = !{!"branch_weights", i32 1, i32 2311064, i32 2, i32 1}
!1249 = !{!"tree-ssa-structalias.c:get_gimple_rhs_class"}
!1250 = !{!"tree-ssa-structalias.c:gimple_call_return_type"}
!1251 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_reserve"}
!1252 = !{!"branch_weights", i32 500159, i32 37098}
!1253 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_quick_push"}
!1254 = !{!"branch_weights", i32 1, i32 537256}
!1255 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_space"}
!1256 = !{!1083, !634, i64 4}
!1257 = !{!"tree-ssa-structalias.c:bb_seq"}
!1258 = !{!730, !634, i64 96}
!1259 = !{!"branch_weights", i32 675772, i32 1}
!1260 = !{!"branch_weights", i32 1, i32 675772}
!1261 = !{!1262, !627, i64 0}
!1262 = !{!"gimple_bb_info", !627, i64 0, !627, i64 8}
!1263 = !{!"tree-ssa-structalias.c:gimple_seq_first"}
!1264 = !{!1265, !627, i64 0}
!1265 = !{!"gimple_seq_d", !627, i64 0, !627, i64 8, !627, i64 16}
!1266 = !{!"tree-ssa-structalias.c:init_graph"}
!1267 = !{!"branch_weights", i32 176681, i32 233}
!1268 = distinct !{!1268, !646}
!1269 = !{!"tree-ssa-structalias.c:build_pred_graph"}
!1270 = !{!649, !627, i64 16}
!1271 = !{!649, !627, i64 24}
!1272 = !{!649, !627, i64 72}
!1273 = !{!649, !627, i64 80}
!1274 = !{!649, !627, i64 88}
!1275 = !{!649, !627, i64 96}
!1276 = !{!649, !627, i64 48}
!1277 = !{!649, !627, i64 104}
!1278 = !{!649, !627, i64 112}
!1279 = !{!"branch_weights", i32 43649, i32 581}
!1280 = distinct !{!1280, !646}
!1281 = distinct !{!1281, !646}
!1282 = distinct !{!1282, !646}
!1283 = !{i64 0, i64 4, !651, i64 4, i64 8, !678}
!1284 = !{!"branch_weights", i32 117, i32 251970}
!1285 = !{!"branch_weights", i32 1601613, i32 41419}
!1286 = !{!"branch_weights", i32 -362084473, i32 8297652, i32 18606782}
!1287 = !{!"branch_weights", i32 12649337, i32 16316587}
!1288 = !{!"branch_weights", i32 728, i32 457}
!1289 = !{!"branch_weights", i32 660, i32 525}
!1290 = !{!"branch_weights", i32 1, i32 1184}
!1291 = distinct !{!1291, !646}
!1292 = !{!"branch_weights", i32 250260, i32 1}
!1293 = !{!"branch_weights", i32 -568976627, i32 4054051}
!1294 = !{!"branch_weights", i32 73171, i32 270}
!1295 = !{!"branch_weights", i32 270, i32 1}
!1296 = !{!"branch_weights", i32 233, i32 503939}
!1297 = distinct !{!1297, !646}
!1298 = !{!"tree-ssa-structalias.c:perform_var_substitution"}
!1299 = !{!1300, !627, i64 0}
!1300 = !{!"scc_info", !627, i64 0, !627, i64 8, !627, i64 16, !627, i64 24, !634, i64 32, !627, i64 40}
!1301 = !{!1300, !627, i64 24}
!1302 = !{!"branch_weights", i32 1671, i32 42559}
!1303 = distinct !{!1303, !646}
!1304 = !{!"branch_weights", i32 1787, i32 42443}
!1305 = distinct !{!1305, !646}
!1306 = !{!"branch_weights", i32 43570, i32 660}
!1307 = !{!"branch_weights", i32 1, i32 659}
!1308 = !{!"branch_weights", i32 659, i32 377}
!1309 = distinct !{!1309, !646}
!1310 = !{!"branch_weights", i32 583, i32 78}
!1311 = !{!"branch_weights", i32 78, i32 1}
!1312 = distinct !{!1312, !646}
!1313 = distinct !{!1313, !646}
!1314 = !{!"branch_weights", i32 273, i32 43957}
!1315 = !{!"branch_weights", i32 273, i32 1}
!1316 = distinct !{!1316, !646}
!1317 = !{!"tree-ssa-structalias.c:rewrite_constraints"}
!1318 = !{!"branch_weights", i32 88457, i32 1}
!1319 = distinct !{!1319, !646}
!1320 = !{!"branch_weights", i32 1, i32 252086}
!1321 = distinct !{!1321, !646}
!1322 = !{!"tree-ssa-structalias.c:build_succ_graph"}
!1323 = !{!"branch_weights", i32 1184, i32 1}
!1324 = !{!"branch_weights", i32 -7746496, i32 873251719}
!1325 = distinct !{!1325, !646}
!1326 = !{!"branch_weights", i32 449, i32 42853}
!1327 = !{!"branch_weights", i32 117, i32 333}
!1328 = !{!"branch_weights", i32 86369, i32 233}
!1329 = distinct !{!1329, !646}
!1330 = !{!"tree-ssa-structalias.c:free_var_substitution_info"}
!1331 = !{!1332, !627, i64 0}
!1332 = !{!"simple_bitmap_def", !627, i64 0, !634, i64 8, !634, i64 12, !628, i64 16}
!1333 = !{!"tree-ssa-structalias.c:move_complex_constraints"}
!1334 = !{!"branch_weights", i32 528, i32 251443}
!1335 = !{!"branch_weights", i32 528, i32 1}
!1336 = !{!"branch_weights", i32 -380588071, i32 18534955}
!1337 = !{!"branch_weights", i32 4238778, i32 -384795568}
!1338 = distinct !{!1338, !646}
!1339 = !{!"tree-ssa-structalias.c:unite_pointer_equivalences"}
!1340 = !{!"branch_weights", i32 1, i32 660}
!1341 = !{!"branch_weights", i32 660, i32 1}
!1342 = !{!"branch_weights", i32 579, i32 82}
!1343 = distinct !{!1343, !646}
!1344 = !{!"tree-ssa-structalias.c:find_indirect_cycles"}
!1345 = !{!"branch_weights", i32 87850, i32 492}
!1346 = !{!"branch_weights", i32 45315, i32 42536}
!1347 = !{!"branch_weights", i32 176449, i32 233}
!1348 = distinct !{!1348, !646}
!1349 = !{!"tree-ssa-structalias.c:remove_preds_and_fake_succs"}
!1350 = !{!"branch_weights", i32 43639, i32 591}
!1351 = distinct !{!1351, !646}
!1352 = !{!"branch_weights", i32 43997, i32 233}
!1353 = distinct !{!1353, !646}
!1354 = !{!"tree-ssa-structalias.c:solve_graph"}
!1355 = !{!"branch_weights", i32 1694, i32 42536}
!1356 = !{!"branch_weights", i32 972, i32 723}
!1357 = !{!"branch_weights", i32 491, i32 233}
!1358 = !{!"branch_weights", i32 36, i32 198}
!1359 = !{!"branch_weights", i32 386, i32 141}
!1360 = distinct !{!1360, !646}
!1361 = !{!1362, !627, i64 8}
!1362 = !{!"topo_info", !627, i64 0, !627, i64 8}
!1363 = !{!"branch_weights", i32 1, i32 243}
!1364 = !{!"branch_weights", i32 1934, i32 1}
!1365 = !{!"branch_weights", i32 1221, i32 714}
!1366 = !{!"branch_weights", i32 1, i32 714}
!1367 = distinct !{!1367, !646}
!1368 = !{!"branch_weights", i32 18, i32 696}
!1369 = !{!"branch_weights", i32 1, i32 696}
!1370 = !{!"branch_weights", i32 696, i32 0}
!1371 = distinct !{!1371, !646}
!1372 = !{!"branch_weights", i32 275, i32 440}
!1373 = !{!"branch_weights", i32 1, i32 439}
!1374 = !{!"branch_weights", i32 1, i32 473}
!1375 = !{!"branch_weights", i32 277, i32 197}
!1376 = !{!"branch_weights", i32 32, i32 166}
!1377 = !{!"branch_weights", i32 439, i32 34}
!1378 = distinct !{!1378, !646}
!1379 = !{!"branch_weights", i32 243, i32 3625}
!1380 = !{!"branch_weights", i32 233, i32 11}
!1381 = distinct !{!1381, !646}
!1382 = !{!"function_entry_count", i64 313840}
!1383 = !{!"tree-ssa-structalias.c:SET_BIT"}
!1384 = !{!"branch_weights", i32 313841, i32 1}
!1385 = !{!"function_entry_count", i64 250338}
!1386 = !{!"tree-ssa-structalias.c:add_pred_graph_edge"}
!1387 = !{!"branch_weights", i32 42922, i32 207418}
!1388 = !{!"function_entry_count", i64 44616}
!1389 = !{!"tree-ssa-structalias.c:RESET_BIT"}
!1390 = !{!"branch_weights", i32 44617, i32 1}
!1391 = !{!"function_entry_count", i64 251173}
!1392 = !{!"tree-ssa-structalias.c:add_implicit_graph_edge"}
!1393 = !{!"branch_weights", i32 1, i32 251174}
!1394 = !{!"branch_weights", i32 43277, i32 207898}
!1395 = !{!"branch_weights", i32 165365, i32 85810}
!1396 = !{!"function_entry_count", i64 232}
!1397 = !{!"tree-ssa-structalias.c:init_scc_info"}
!1398 = !{!1300, !634, i64 32}
!1399 = !{!1300, !627, i64 8}
!1400 = !{!1300, !627, i64 16}
!1401 = !{!"branch_weights", i32 1, i32 232}
!1402 = !{!"branch_weights", i32 232, i32 43848}
!1403 = distinct !{!1403, !646, !1404, !1405}
!1404 = !{!"llvm.loop.isvectorized", i32 1}
!1405 = !{!"llvm.loop.unroll.runtime.disable"}
!1406 = !{!1300, !627, i64 40}
!1407 = !{!"tree-ssa-structalias.c:equiv_class_label_hash"}
!1408 = !{!1409, !634, i64 0}
!1409 = !{!"equiv_class_label", !634, i64 0, !634, i64 4, !627, i64 8}
!1410 = !{!"function_entry_count", i64 45068}
!1411 = !{!"tree-ssa-structalias.c:equiv_class_label_eq"}
!1412 = !{!"branch_weights", i32 44228, i32 842}
!1413 = !{!1409, !627, i64 8}
!1414 = !{!"function_entry_count", i64 86855}
!1415 = !{!"tree-ssa-structalias.c:condense_visit"}
!1416 = !{!"branch_weights", i32 86856, i32 1}
!1417 = !{!"branch_weights", i32 43935, i32 42922}
!1418 = !{!"branch_weights", i32 1, i32 42921}
!1419 = !{!"branch_weights", i32 42675, i32 42449}
!1420 = !{!"branch_weights", i32 42675, i32 1}
!1421 = !{!"branch_weights", i32 1, i32 42675}
!1422 = !{!"branch_weights", i32 42921, i32 42202}
!1423 = distinct !{!1423, !646}
!1424 = !{!"branch_weights", i32 44545, i32 42312}
!1425 = !{!"branch_weights", i32 1, i32 42311}
!1426 = !{!"branch_weights", i32 84380, i32 386}
!1427 = !{!"branch_weights", i32 42512, i32 41869}
!1428 = !{!"branch_weights", i32 84380, i32 1}
!1429 = !{!"branch_weights", i32 42157, i32 42224}
!1430 = !{!"branch_weights", i32 42311, i32 42454}
!1431 = distinct !{!1431, !646}
!1432 = !{!"branch_weights", i32 44700, i32 42157}
!1433 = !{!"branch_weights", i32 2371, i32 42243}
!1434 = !{!"branch_weights", i32 42157, i32 1}
!1435 = !{!"branch_weights", i32 42079, i32 79}
!1436 = !{!"branch_weights", i32 1, i32 42157}
!1437 = !{!"branch_weights", i32 79, i32 42079}
!1438 = !{!"branch_weights", i32 42243, i32 0}
!1439 = distinct !{!1439, !646}
!1440 = !{!"function_entry_count", i64 44382}
!1441 = !{!"tree-ssa-structalias.c:label_visit"}
!1442 = !{!"branch_weights", i32 43656, i32 728}
!1443 = !{!"branch_weights", i32 1540, i32 42844}
!1444 = !{!"branch_weights", i32 1, i32 42843}
!1445 = !{!"branch_weights", i32 42597, i32 42527}
!1446 = !{!"branch_weights", i32 79, i32 85045}
!1447 = !{!"branch_weights", i32 1, i32 85045}
!1448 = !{!"branch_weights", i32 42843, i32 42280}
!1449 = distinct !{!1449, !646}
!1450 = !{!"branch_weights", i32 1415, i32 42969}
!1451 = !{!"branch_weights", i32 273, i32 44111}
!1452 = !{!"branch_weights", i32 1576, i32 42536}
!1453 = !{!"function_entry_count", i64 44769}
!1454 = !{!"tree-ssa-structalias.c:equiv_class_lookup"}
!1455 = !{!"branch_weights", i32 2158, i32 42613}
!1456 = !{!1409, !634, i64 4}
!1457 = !{!"function_entry_count", i64 2157}
!1458 = !{!"tree-ssa-structalias.c:equiv_class_add"}
!1459 = !{!"branch_weights", i32 2158, i32 1}
!1460 = !{!"tree-ssa-structalias.c:clear_edges_for_node"}
!1461 = !{!"branch_weights", i32 42727, i32 82}
!1462 = !{!"function_entry_count", i64 353}
!1463 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_alloc"}
!1464 = !{!"function_entry_count", i64 134714}
!1465 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_length"}
!1466 = !{!"branch_weights", i32 1, i32 134715}
!1467 = !{!1468, !634, i64 0}
!1468 = !{!"VEC_unsigned_base", !634, i64 0, !634, i64 4, !628, i64 8}
!1469 = !{!"function_entry_count", i64 42242}
!1470 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_last"}
!1471 = !{!"function_entry_count", i64 44089}
!1472 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_pop"}
!1473 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_safe_push"}
!1474 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_reserve"}
!1475 = !{!"branch_weights", i32 1158, i32 42933}
!1476 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_quick_push"}
!1477 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_space"}
!1478 = !{!"branch_weights", i32 1, i32 44090}
!1479 = !{!1468, !634, i64 4}
!1480 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_replace"}
!1481 = !{!"function_entry_count", i64 504170}
!1482 = !{!"tree-ssa-structalias.c:find_equivalent_node"}
!1483 = !{!"branch_weights", i32 293521, i32 210651}
!1484 = !{!"branch_weights", i32 293521, i32 1}
!1485 = !{!"branch_weights", i32 807, i32 292715}
!1486 = !{!"branch_weights", i32 250261, i32 42455}
!1487 = !{!"branch_weights", i32 210651, i32 1}
!1488 = !{!"branch_weights", i32 660, i32 209992}
!1489 = !{!"function_entry_count", i64 293373}
!1490 = !{!"tree-ssa-structalias.c:unite"}
!1491 = !{!"branch_weights", i32 -1605332800, i32 18335}
!1492 = !{!"branch_weights", i32 250839, i32 42536}
!1493 = !{!"branch_weights", i32 1, i32 42536}
!1494 = !{!"function_entry_count", i64 42535}
!1495 = !{!"tree-ssa-structalias.c:unify_nodes"}
!1496 = !{!"branch_weights", i32 42536, i32 1}
!1497 = !{!"branch_weights", i32 42455, i32 82}
!1498 = !{!"branch_weights", i32 82, i32 1}
!1499 = !{!"branch_weights", i32 1, i32 82}
!1500 = !{!"tree-ssa-structalias.c:merge_graph_nodes"}
!1501 = !{!"tree-ssa-structalias.c:merge_node_constraints"}
!1502 = !{!"branch_weights", i32 42535, i32 1}
!1503 = !{!"branch_weights", i32 1, i32 0}
!1504 = distinct !{!1504, !646}
!1505 = !{!"tree-ssa-structalias.c:valid_graph_edge"}
!1506 = !{!"tree-ssa-structalias.c:constraint_set_union"}
!1507 = distinct !{!1507, !646}
!1508 = !{!"function_entry_count", i64 86879}
!1509 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_free"}
!1510 = !{!"branch_weights", i32 86389, i32 492}
!1511 = !{!"tree-ssa-structalias.c:constraint_vec_find"}
!1512 = !{!"function_entry_count", i64 912}
!1513 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_lower_bound"}
!1514 = !{!"branch_weights", i32 333, i32 580}
!1515 = !{!"branch_weights", i32 233, i32 348}
!1516 = !{!"branch_weights", i32 580, i32 0}
!1517 = distinct !{!1517, !646}
!1518 = !{!"function_entry_count", i64 579}
!1519 = !{!"tree-ssa-structalias.c:constraint_less"}
!1520 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_safe_insert"}
!1521 = !{!"function_entry_count", i64 2349}
!1522 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_length"}
!1523 = !{!"branch_weights", i32 1136, i32 1215}
!1524 = !{!"function_entry_count", i64 811}
!1525 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_index"}
!1526 = !{!"tree-ssa-structalias.c:constraint_equal"}
!1527 = !{!"function_entry_count", i64 464}
!1528 = !{!"tree-ssa-structalias.c:constraint_expr_equal"}
!1529 = !{!"branch_weights", i32 54289, i32 54755}
!1530 = !{!"function_entry_count", i64 1043}
!1531 = !{!"tree-ssa-structalias.c:constraint_expr_less"}
!1532 = !{!"branch_weights", i32 696, i32 349}
!1533 = !{!"branch_weights", i32 465, i32 232}
!1534 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_quick_insert"}
!1535 = !{!"function_entry_count", i64 209779}
!1536 = !{!"tree-ssa-structalias.c:add_graph_edge"}
!1537 = !{!"branch_weights", i32 1, i32 209780}
!1538 = !{!"branch_weights", i32 1020, i32 208761}
!1539 = !{!"branch_weights", i32 208078, i32 1703}
!1540 = !{!"branch_weights", i32 2150385, i32 555567}
!1541 = !{!"tree-ssa-structalias.c:free_scc_info"}
!1542 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_free"}
!1543 = !{!"branch_weights", i32 1, i32 354}
!1544 = !{!"tree-ssa-structalias.c:insert_into_complex"}
!1545 = !{!"branch_weights", i32 233, i32 681}
!1546 = !{!"function_entry_count", i64 45805}
!1547 = !{!"tree-ssa-structalias.c:scc_visit"}
!1548 = !{!"branch_weights", i32 44984, i32 823}
!1549 = !{!"branch_weights", i32 1, i32 822}
!1550 = !{!"branch_weights", i32 1, i32 1251}
!1551 = !{!"branch_weights", i32 492, i32 760}
!1552 = !{!"branch_weights", i32 492, i32 1}
!1553 = !{!"branch_weights", i32 1, i32 492}
!1554 = !{!"branch_weights", i32 822, i32 429}
!1555 = distinct !{!1555, !646}
!1556 = !{!"branch_weights", i32 2144871144, i32 2612504}
!1557 = !{!"branch_weights", i32 45806, i32 1}
!1558 = distinct !{!1558, !646}
!1559 = distinct !{!1559, !646}
!1560 = !{!"function_entry_count", i64 121}
!1561 = !{!"tree-ssa-structalias.c:init_topo_info"}
!1562 = !{!1362, !627, i64 0}
!1563 = !{!"tree-ssa-structalias.c:compute_topo_order"}
!1564 = !{!"branch_weights", i32 44117, i32 556}
!1565 = !{!"branch_weights", i32 1379, i32 42739}
!1566 = !{!"branch_weights", i32 243, i32 89101}
!1567 = distinct !{!1567, !646}
!1568 = !{!"function_entry_count", i64 1933}
!1569 = !{!"tree-ssa-structalias.c:eliminate_indirect_cycles"}
!1570 = distinct !{!1570, !646}
!1571 = distinct !{!1571, !646}
!1572 = !{!"function_entry_count", i64 695}
!1573 = !{!"tree-ssa-structalias.c:do_complex_constraint"}
!1574 = !{!"branch_weights", i32 118, i32 579}
!1575 = !{!"branch_weights", i32 1, i32 118}
!1576 = !{!"branch_weights", i32 167, i32 69384, i32 27889}
!1577 = !{!"branch_weights", i32 413, i32 1}
!1578 = !{!"branch_weights", i32 167, i32 1}
!1579 = !{!"branch_weights", i32 118, i32 50}
!1580 = !{!"branch_weights", i32 50, i32 1}
!1581 = !{!"function_entry_count", i64 638}
!1582 = !{!"tree-ssa-structalias.c:set_union_with_increment"}
!1583 = !{!"branch_weights", i32 473, i32 167}
!1584 = !{!"tree-ssa-structalias.c:free_topo_info"}
!1585 = !{!"tree-ssa-structalias.c:topo_visit"}
!1586 = !{!"branch_weights", i32 1246, i32 689}
!1587 = !{!"branch_weights", i32 1, i32 688}
!1588 = !{!"branch_weights", i32 556, i32 611}
!1589 = !{!"branch_weights", i32 688, i32 478}
!1590 = distinct !{!1590, !646}
!1591 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_iterate"}
!1592 = !{!"function_entry_count", i64 117}
!1593 = !{!"tree-ssa-structalias.c:do_ds_constraint"}
!1594 = !{!"branch_weights", i32 118, i32 1}
!1595 = !{!"branch_weights", i32 1, i32 235}
!1596 = !{!"branch_weights", i32 1, i32 541}
!1597 = !{!"branch_weights", i32 506, i32 36}
!1598 = !{!"branch_weights", i32 36, i32 1}
!1599 = !{!"branch_weights", i32 233, i32 309}
!1600 = !{!"branch_weights", i32 117, i32 117}
!1601 = !{!"branch_weights", i32 235, i32 847}
!1602 = distinct !{!1602, !646}
!1603 = !{!"function_entry_count", i64 412}
!1604 = !{!"tree-ssa-structalias.c:do_sd_constraint"}
!1605 = !{!"branch_weights", i32 1, i32 413}
!1606 = !{!"branch_weights", i32 1, i32 412}
!1607 = !{!"branch_weights", i32 1, i32 854}
!1608 = !{!"branch_weights", i32 549, i32 306}
!1609 = !{!"branch_weights", i32 135, i32 415}
!1610 = !{!"branch_weights", i32 79, i32 337}
!1611 = !{!"branch_weights", i32 854, i32 1}
!1612 = !{!"branch_weights", i32 412, i32 442}
!1613 = distinct !{!1613, !646}
!1614 = !{!"branch_weights", i32 603167320, i32 1544316328}
!1615 = !{!"branch_weights", i32 297, i32 1}
!1616 = !{!"function_entry_count", i64 153}
!1617 = !{!"tree-ssa-structalias.c:solution_set_expand"}
!1618 = !{!"branch_weights", i32 1, i32 153}
!1619 = !{!"branch_weights", i32 117, i32 72571}
!1620 = !{!"branch_weights", i32 153, i32 462}
!1621 = distinct !{!1621, !646}
!1622 = !{!"branch_weights", i32 2133538362, i32 13945286}
!1623 = distinct !{!1623, !646}
!1624 = distinct !{!1624, !646}
!1625 = !{!"function_entry_count", i64 166}
!1626 = !{!"tree-ssa-structalias.c:solution_set_add"}
!1627 = !{!"branch_weights", i32 154, i32 14}
!1628 = !{!"branch_weights", i32 1, i32 223}
!1629 = !{!"branch_weights", i32 1, i32 155}
!1630 = !{!"branch_weights", i32 223, i32 385}
!1631 = distinct !{!1631, !646}
!1632 = !{!"tree-ssa-structalias.c:set_uids_in_ptset"}
!1633 = !{!"branch_weights", i32 -638901736, i32 5045207}
!1634 = !{!"branch_weights", i32 1, i32 468, i32 2, i32 1}
!1635 = distinct !{!1635, !646}
!1636 = !{!"tree-ssa-structalias.c:shared_bitmap_lookup"}
!1637 = !{!"function_entry_count", i64 230}
!1638 = !{!"tree-ssa-structalias.c:shared_bitmap_add"}
!1639 = !{!"branch_weights", i32 231, i32 1}
!1640 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_free"}
!1641 = !{!"tree-ssa-structalias.c:create_function_info_for"}
!1642 = distinct !{!1642, !646}
!1643 = !{!"tree-ssa-structalias.c:count_num_arguments"}
!1644 = distinct !{!1644, !646}
!1645 = distinct !{!1645, !646}
!1646 = !{!"tree-ssa-structalias.c:insert_into_field_list_sorted"}
!1647 = distinct !{!1647, !646}
