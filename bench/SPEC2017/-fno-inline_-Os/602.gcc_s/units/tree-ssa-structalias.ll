; ModuleID = 'tree-ssa-structalias.c'
source_filename = "tree-ssa-structalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.bitmap_element_def = type { ptr, ptr, i32, [2 x i64] }
%struct.constraint_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bitmap_obstack = type { ptr, ptr, %struct.obstack }
%struct.obstack = type { i64, ptr, ptr, ptr, ptr, i64, i32, ptr, ptr, ptr, i8 }
%struct.gimple_opt_pass = type { %struct.opt_pass }
%struct.opt_pass = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.simple_ipa_opt_pass = type { %struct.opt_pass }
%struct.ggc_cache_tab = type { ptr, i64, i64, ptr, ptr, ptr }
%struct.ggc_root_tab = type { ptr, i64, i64, ptr, ptr }
%struct.constraint_expr = type { i32, i32, i64 }
%struct.variable_info = type { i32, i8, ptr, i64, i64, i64, ptr, ptr, ptr, ptr }
%struct.constraint = type { %struct.constraint_expr, %struct.constraint_expr }
%struct.VEC_varinfo_t_base = type { i32, i32, [1 x ptr] }
%struct.VEC_constraint_t_base = type { i32, i32, [1 x ptr] }
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
%struct.param_info = type { ptr, i32, i8, i32, i32, ptr }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, ptr, ptr, ptr, ptr }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, ptr, ptr, ptr, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, ptr }
%struct.tree_type = type { %struct.tree_common, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, %union.tree_type_symtab, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.tree_type_symtab = type { ptr }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, ptr, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, ptr, ptr }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, ptr, i32 }
%struct.ssa_use_operand_d = type { ptr, ptr, %union.anon, ptr }
%union.anon = type { ptr }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, ptr, ptr, ptr, ptr, i32 }
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
%struct.diagnostic_context = type { ptr, [12 x i32], i8, i8, [870 x i32], i8, i8, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.cgraph_node = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.cgraph_local_info, %struct.cgraph_global_info, %struct.cgraph_rtl_info, %struct.cgraph_clone_info, %struct.cgraph_thunk_info, i64, i32, i32, i32, i16 }
%struct.cgraph_local_info = type { ptr, %struct.inline_summary, i8 }
%struct.inline_summary = type { i64, i32, i32, i32, i32 }
%struct.cgraph_global_info = type { i64, i64, ptr, i32, i32, i32, i8 }
%struct.cgraph_rtl_info = type { i32 }
%struct.cgraph_clone_info = type { ptr, ptr, ptr }
%struct.cgraph_thunk_info = type { i64, i64, ptr, i8, i8, i8 }

@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c" + UNKNOWN\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" + %ld\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@varmap = internal unnamed_addr global ptr null, align 8
@constraints = internal global ptr null, align 8
@graph = internal unnamed_addr global ptr null, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c"\0A\0A/* Constraints used in the constraint graph:\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"*/\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"\0A\0A// The constraint graph in dot format:\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"strict digraph {\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"  node [\0A    shape = box\0A  ]\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"  edge [\0A    fontsize = \2212\22\0A  ]\0A\00", align 1
@.str.13 = private unnamed_addr constant [46 x i8] c"\0A  // List of nodes in the constraint graph:\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"  \22%s\22 ;\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"\0A  // The constraint edges:\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"}\0A\0A\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"  \22%s\22 -> \22%s\22 \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c" [ label=\22*=\22 ] ;\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c" [ label=\22=*\22 ] ;\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c" [ label=\22+\22 ] ;\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" ;\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.22 = private unnamed_addr constant [17 x i8] c"%s = same as %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"%s = { \00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.26 = private unnamed_addr constant [23 x i8] c"tree-ssa-structalias.c\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@bitmap_zero_bits = external global %struct.bitmap_element_def, align 8
@.str.28 = private unnamed_addr constant [19 x i8] c"\0APTA query stats:\0A\00", align 1
@.str.29 = private unnamed_addr constant [58 x i8] c"  pt_solution_includes: %ld disambiguations, %ld queries\0A\00", align 1
@pta_stats.0 = internal unnamed_addr global i64 0, align 8
@pta_stats.1 = internal unnamed_addr global i64 0, align 8
@pta_stats.2 = internal unnamed_addr global i64 0, align 8
@pta_stats.3 = internal unnamed_addr global i64 0, align 8
@.str.30 = private unnamed_addr constant [60 x i8] c"  pt_solutions_intersect: %ld disambiguations, %ld queries\0A\00", align 1
@cfun = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [18 x i8] c"\0APoints-to sets\0A\0A\00", align 1
@dump_flags = external local_unnamed_addr global i32, align 4
@.str.32 = private unnamed_addr constant [8 x i8] c"Stats:\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"Total vars:               %d\0A\00", align 1
@stats = internal unnamed_addr global %struct.constraint_stats zeroinitializer, align 4
@.str.34 = private unnamed_addr constant [31 x i8] c"Non-pointer vars:          %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"Statically unified vars:  %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Dynamically unified vars: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [30 x i8] c"Iterations:               %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"Number of edges:          %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [30 x i8] c"Number of implicit edges: %d\0A\00", align 1
@heapvar_for_stmt = internal global ptr null, align 8
@dump_file = external local_unnamed_addr global ptr, align 8
@timevar_enable = external local_unnamed_addr global i8, align 1
@compiler_params = external local_unnamed_addr global ptr, align 8
@use_field_sensitive = internal unnamed_addr global i8 1, align 1
@pta_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@oldpta_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@predbitmap_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@.str.40 = private unnamed_addr constant [16 x i8] c"Constraint pool\00", align 1
@constraint_pool = internal unnamed_addr global ptr null, align 8
@.str.41 = private unnamed_addr constant [19 x i8] c"Variable info pool\00", align 1
@variable_info_pool = internal unnamed_addr global ptr null, align 8
@vi_for_tree = internal unnamed_addr global ptr null, align 8
@shared_bitmap_table = internal unnamed_addr global ptr null, align 8
@.str.42 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"ANYTHING\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"READONLY\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"ESCAPED\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"NONLOCAL\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"CALLUSED\00", align 1
@.str.48 = private unnamed_addr constant [15 x i8] c"STOREDANYTHING\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"INTEGER\00", align 1
@tree_code_type = external local_unnamed_addr constant [0 x i32], align 4
@.str.50 = private unnamed_addr constant [15 x i8] c"doubledereftmp\00", align 1
@.str.51 = private unnamed_addr constant [13 x i8] c"derefaddrtmp\00", align 1
@current_function_decl = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [13 x i8] c"PARM_NOALIAS\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"PARM_RESTRICT\00", align 1
@htab_hash_pointer = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@flag_whole_program = external local_unnamed_addr global i32, align 4
@in_ipa_mode = internal unnamed_addr global i1 false, align 4
@.str.55 = private unnamed_addr constant [16 x i8] c"GLOBAL_RESTRICT\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"%s.%ld+%ld\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"%s_%u\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"D.%u\00", align 1
@global_trees = external local_unnamed_addr global [131 x ptr], align 16
@flag_delete_null_pointer_checks = external local_unnamed_addr global i32, align 4
@.str.59 = private unnamed_addr constant [14 x i8] c"CAST_RESTRICT\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Access to zero-sized part of variable,ignoring\0A\00", align 1
@.str.61 = private unnamed_addr constant [46 x i8] c"Access to past the end of variable, ignoring\0A\00", align 1
@.str.62 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gimple_ops_offset_ = external local_unnamed_addr constant [0 x i64], align 8
@gss_for_code_ = external local_unnamed_addr constant [0 x i32], align 4
@.str.63 = private unnamed_addr constant [10 x i8] c"allalltmp\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"dereftmp\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"HEAP\00", align 1
@gimple_rhs_class_table = external local_unnamed_addr constant [0 x i8], align 1
@.str.66 = private unnamed_addr constant [35 x i8] c"Points-to analysis\0A\0AConstraints:\0A\0A\00", align 1
@.str.67 = private unnamed_addr constant [59 x i8] c"\0ACollapsing static cycles and doing variable substitution\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"Building predecessor graph\0A\00", align 1
@.str.69 = private unnamed_addr constant [45 x i8] c"Detecting pointer and location equivalences\0A\00", align 1
@.str.70 = private unnamed_addr constant [46 x i8] c"Rewriting constraints and unifying variables\0A\00", align 1
@.str.71 = private unnamed_addr constant [55 x i8] c"Uniting pointer but not location equivalent variables\0A\00", align 1
@.str.72 = private unnamed_addr constant [25 x i8] c"Finding indirect cycles\0A\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"Solving graph\0A\00", align 1
@iteration_obstack = internal global %struct.bitmap_obstack zeroinitializer, align 8
@pointer_equiv_class_table = internal unnamed_addr global ptr null, align 8
@location_equiv_class_table = internal unnamed_addr global ptr null, align 8
@pointer_equiv_class = internal unnamed_addr global i32 0, align 4
@location_equiv_class = internal unnamed_addr global i32 0, align 4
@.str.74 = private unnamed_addr constant [40 x i8] c"Found location equivalence for node %s\0A\00", align 1
@.str.75 = private unnamed_addr constant [71 x i8] c"Equivalence classes for %s node id %d:%s are pointer: %d, location:%d\0A\00", align 1
@.str.76 = private unnamed_addr constant [12 x i8] c"Direct node\00", align 1
@.str.77 = private unnamed_addr constant [14 x i8] c"Indirect node\00", align 1
@.str.78 = private unnamed_addr constant [50 x i8] c"%s is a non-pointer variable, eliminating edges.\0A\00", align 1
@.str.79 = private unnamed_addr constant [50 x i8] c"%s is a non-pointer variable,ignoring constraint:\00", align 1
@.str.80 = private unnamed_addr constant [19 x i8] c"Unifying %s to %s\0A\00", align 1
@changed = internal unnamed_addr global ptr null, align 8
@changed_count = internal unnamed_addr global i32 0, align 4
@.str.81 = private unnamed_addr constant [27 x i8] c"Points to sets created:%d\0A\00", align 1
@pass_build_alias = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.82, ptr @gate_tree_pta, ptr null, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1048577 } }, align 8
@.str.82 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@flag_tree_pta = external local_unnamed_addr global i32, align 4
@pass_build_ealias = dso_local local_unnamed_addr global %struct.gimple_opt_pass { %struct.opt_pass { i32 0, ptr @.str.83, ptr @gate_tree_pta, ptr null, ptr null, ptr null, i32 0, i32 0, i32 40, i32 0, i32 0, i32 0, i32 1048577 } }, align 8
@.str.83 = private unnamed_addr constant [7 x i8] c"ealias\00", align 1
@pass_ipa_pta = dso_local local_unnamed_addr global %struct.simple_ipa_opt_pass { %struct.opt_pass { i32 2, ptr @.str.84, ptr @gate_ipa_pta, ptr @ipa_pta_execute, ptr null, ptr null, i32 0, i32 19, i32 0, i32 0, i32 0, i32 0, i32 2048 } }, align 8
@.str.84 = private unnamed_addr constant [4 x i8] c"pta\00", align 1
@optimize = external local_unnamed_addr global i32, align 4
@flag_ipa_pta = external local_unnamed_addr global i32, align 4
@global_dc = external local_unnamed_addr global ptr, align 8
@cgraph_nodes = external local_unnamed_addr global ptr, align 8
@.str.85 = private unnamed_addr constant [31 x i8] c"Generating constraints for %s\0A\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"%s.arg%d\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"%s.result\00", align 1
@gt_ggc_rc_gt_tree_ssa_structalias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_cache_tab] [%struct.ggc_cache_tab { ptr @heapvar_for_stmt, i64 1, i64 8, ptr @gt_ggc_mx_tree_map, ptr @gt_pch_nx_tree_map, ptr @tree_map_base_marked_p }, %struct.ggc_cache_tab zeroinitializer], align 16
@gt_pch_rc_gt_tree_ssa_structalias_h = dso_local local_unnamed_addr constant [2 x %struct.ggc_root_tab] [%struct.ggc_root_tab { ptr @heapvar_for_stmt, i64 1, i64 8, ptr @gt_ggc_m_P8tree_map4htab, ptr @gt_pch_n_P8tree_map4htab }, %struct.ggc_root_tab zeroinitializer], align 16

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraint(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !prof !724 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !725
  tail call fastcc void @dump_constraint(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !724 !PGOFuncName !729 {
  %3 = load i32, ptr %1, align 8, !tbaa !730
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
  %10 = load i32, ptr %9, align 4, !tbaa !735
  %11 = tail call fastcc ptr @get_varinfo(i32 noundef %10) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !736
  %14 = tail call i32 @fputs(ptr %13, ptr %0)
  %15 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !738
  switch i64 %16, label %19 [
    i64 -9223372036854775808, label %17
    i64 0, label %21
  ]

17:                                               ; preds = %8
  %18 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 10, i64 1, ptr %0)
  br label %21

19:                                               ; preds = %8
  %20 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %16) #23
  br label %21

21:                                               ; preds = %8, %19, %17
  %22 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 3, i64 1, ptr %0)
  %23 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !739
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
  %31 = load i32, ptr %30, align 4, !tbaa !740
  %32 = tail call fastcc ptr @get_varinfo(i32 noundef %31) #23
  %33 = getelementptr inbounds %struct.variable_info, ptr %32, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !736
  %35 = tail call i32 @fputs(ptr %34, ptr %0)
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !741
  switch i64 %37, label %40 [
    i64 -9223372036854775808, label %38
    i64 0, label %42
  ]

38:                                               ; preds = %29
  %39 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 10, i64 1, ptr %0)
  br label %42

40:                                               ; preds = %29
  %41 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef %37) #23
  br label %42

42:                                               ; preds = %29, %40, %38
  %43 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_varinfo(i32 noundef %0) unnamed_addr #2 !prof !742 !PGOFuncName !743 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc ptr @VEC_varinfo_t_base_index(ptr noundef %2, i32 noundef %0) #23
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_varinfo_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !742 !PGOFuncName !744 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !725
  ret ptr %5
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraints() local_unnamed_addr #0 !prof !724 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !725
  tail call fastcc void @dump_constraints(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraints(ptr nocapture noundef %0) unnamed_addr #0 !prof !724 !PGOFuncName !745 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %13, label %6

6:                                                ; preds = %1, %6
  %7 = phi i32 [ %9, %6 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !725
  tail call fastcc void @dump_constraint(ptr noundef %0, ptr noundef %8) #23
  %9 = add nuw nsw i32 %7, 1
  %10 = load ptr, ptr @constraints, align 8
  %11 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %10, i32 noundef %9, ptr noundef nonnull %2) #23, !range !746
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %6, !llvm.loop !747

13:                                               ; preds = %6, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_constraint_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !749 !PGOFuncName !750 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !751

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !752
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !754

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !725
  ret i32 %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @debug_constraint_graph() local_unnamed_addr #0 !prof !724 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !725
  tail call fastcc void @dump_constraint_graph(ptr noundef %1) #23
  ret void
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_graph(ptr nocapture noundef %0) unnamed_addr #0 !prof !724 !PGOFuncName !755 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @graph, align 8, !tbaa !725
  %4 = icmp eq ptr %3, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 47, i64 1, ptr %0)
  tail call fastcc void @dump_constraints(ptr noundef %0) #23
  %7 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 3, i64 1, ptr %0)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 41, i64 1, ptr %0)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 17, i64 1, ptr %0)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 29, i64 1, ptr %0)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 33, i64 1, ptr %0)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 45, i64 1, ptr %0)
  %13 = load ptr, ptr @varmap, align 8
  %14 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %13) #23
  %15 = load ptr, ptr @graph, align 8, !tbaa !725
  %16 = load i32, ptr %15, align 8, !tbaa !756
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %5
  %20 = zext i32 %17 to i64
  br label %21

21:                                               ; preds = %19, %21
  %22 = phi i64 [ 0, %19 ], [ %32, %21 ]
  %23 = load ptr, ptr @graph, align 8, !tbaa !725
  %24 = getelementptr inbounds %struct.constraint_graph, ptr %23, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !758
  %26 = getelementptr inbounds i32, ptr %25, i64 %22
  %27 = load i32, ptr %26, align 4, !tbaa !759
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !736
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %30) #23
  %32 = add nuw nsw i64 %22, 1
  %33 = icmp eq i64 %32, %20
  br i1 %33, label %34, label %21, !llvm.loop !760

34:                                               ; preds = %21, %5
  %35 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 28, i64 1, ptr %0)
  %36 = load ptr, ptr @constraints, align 8
  %37 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %36, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34, %46
  %40 = phi ptr [ %47, %46 ], [ %36, %34 ]
  %41 = phi i32 [ %48, %46 ], [ 0, %34 ]
  %42 = load ptr, ptr %2, align 8, !tbaa !725
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  tail call fastcc void @dump_constraint_edge(ptr noundef %0, ptr noundef nonnull %42) #23
  %45 = load ptr, ptr @constraints, align 8
  br label %46

46:                                               ; preds = %39, %44
  %47 = phi ptr [ %40, %39 ], [ %45, %44 ]
  %48 = add i32 %41, 1
  %49 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %47, i32 noundef %48, ptr noundef nonnull %2) #23, !range !746
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %39, !llvm.loop !761

51:                                               ; preds = %46, %34
  %52 = tail call i64 @fwrite(ptr nonnull @.str.16, i64 4, i64 1, ptr %0)
  br label %53

53:                                               ; preds = %1, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !762 !PGOFuncName !763 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !764

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !765
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: nofree noinline nounwind optsize uwtable
define internal fastcc void @dump_constraint_edge(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 !prof !724 !PGOFuncName !767 {
  %3 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !739
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %37, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !740
  %9 = tail call fastcc ptr @get_varinfo(i32 noundef %8) #23
  %10 = getelementptr inbounds %struct.variable_info, ptr %9, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !736
  %12 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 4, !tbaa !735
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !736
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17, ptr noundef %11, ptr noundef %16) #23
  %18 = load i32, ptr %1, align 8, !tbaa !730
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 18, i64 1, ptr %0)
  br label %37

22:                                               ; preds = %6
  %23 = load i32, ptr %3, align 8, !tbaa !739
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 18, i64 1, ptr %0)
  br label %37

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !741
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !738
  %32 = icmp eq i64 %29, %31
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 17, i64 1, ptr %0)
  br label %37

35:                                               ; preds = %27
  %36 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %20, %33, %35, %25, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_solution_for_var(i32 noundef %0) local_unnamed_addr #6 !prof !724 {
  %2 = load ptr, ptr @stdout, align 8, !tbaa !725
  tail call fastcc void @dump_solution_for_var(ptr noundef %2, i32 noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_solution_for_var(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !724 !PGOFuncName !768 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !736
  %13 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !736
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %12, ptr noundef %14) #23
  br label %34

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !736
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef %18) #23
  %20 = getelementptr inbounds %struct.variable_info, ptr %5, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !769
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %21, ptr noundef nonnull %3) #23
  %22 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16, %24
  %25 = load i32, ptr %3, align 4, !tbaa !759
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %25) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !736
  %29 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, ptr noundef %28) #23
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %24, !llvm.loop !771

32:                                               ; preds = %24, %16
  %33 = tail call i64 @fwrite(ptr nonnull @.str.25, i64 2, i64 1, ptr %0)
  br label %34

34:                                               ; preds = %32, %8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find(i32 noundef %0) unnamed_addr #6 !prof !772 !PGOFuncName !773 {
  %2 = load ptr, ptr @graph, align 8, !tbaa !725
  %3 = load i32, ptr %2, align 8, !tbaa !756
  %4 = icmp ugt i32 %3, %0
  br i1 %4, label %7, label %5, !prof !774

5:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 520, ptr noundef nonnull @.str.27) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %2, %1 ], [ %6, %5 ]
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %8, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !758
  %11 = zext i32 %0 to i64
  %12 = getelementptr inbounds i32, ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !759
  %14 = icmp eq i32 %13, %0
  br i1 %14, label %15, label %17, !prof !775

15:                                               ; preds = %7, %17
  %16 = phi i32 [ %18, %17 ], [ %0, %7 ]
  ret i32 %16

17:                                               ; preds = %7
  %18 = tail call fastcc i32 @find(i32 noundef %13) #23
  %19 = load ptr, ptr @graph, align 8, !tbaa !725
  %20 = getelementptr inbounds %struct.constraint_graph, ptr %19, i64 0, i32 5
  %21 = load ptr, ptr %20, align 8, !tbaa !758
  %22 = getelementptr inbounds i32, ptr %21, i64 %11
  store i32 %18, ptr %22, align 4, !tbaa !759
  br label %15
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @bmp_iter_set_init(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #7 !prof !776 !PGOFuncName !777 {
  %4 = load ptr, ptr %1, align 8, !tbaa !778
  store ptr %4, ptr %0, align 8, !tbaa !780
  %5 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !782
  %6 = icmp eq ptr %4, null
  br i1 %6, label %7, label %8, !prof !783

7:                                                ; preds = %3
  store ptr @bitmap_zero_bits, ptr %0, align 8, !tbaa !780
  br label %8

8:                                                ; preds = %3, %7
  %9 = phi ptr [ %4, %3 ], [ @bitmap_zero_bits, %7 ]
  %10 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !784
  %12 = shl i32 %11, 7
  %13 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  store i32 0, ptr %13, align 8, !tbaa !786
  %14 = getelementptr inbounds %struct.bitmap_element_def, ptr %9, i64 0, i32 3
  %15 = load i64, ptr %14, align 8, !tbaa !787
  %16 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !788
  %17 = icmp eq i64 %15, 0
  %18 = zext i1 %17 to i32
  %19 = or disjoint i32 %12, %18
  store i32 %19, ptr %2, align 4, !tbaa !759
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @bmp_iter_set(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 !prof !789 !PGOFuncName !790 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !788
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %19, label %6, !prof !791

6:                                                ; preds = %31, %2
  %7 = phi i64 [ %4, %2 ], [ %35, %31 ]
  %8 = and i64 %7, 1
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %51, !prof !792

10:                                               ; preds = %6
  %11 = load i32, ptr %1, align 4, !tbaa !759
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi i32 [ %11, %10 ], [ %16, %12 ]
  %14 = phi i64 [ %7, %10 ], [ %15, %12 ]
  %15 = lshr exact i64 %14, 1
  %16 = add i32 %13, 1
  %17 = and i64 %14, 2
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %12, label %50, !prof !793, !llvm.loop !794

19:                                               ; preds = %2
  %20 = load i32, ptr %1, align 4, !tbaa !759
  %21 = add i32 %20, 63
  %22 = and i32 %21, -64
  store i32 %22, ptr %1, align 4, !tbaa !759
  %23 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !786
  %25 = add i32 %24, 1
  %26 = load ptr, ptr %0, align 8, !tbaa !780
  br label %27

27:                                               ; preds = %19, %46
  %28 = phi ptr [ %26, %19 ], [ %44, %46 ]
  %29 = phi i32 [ %25, %19 ], [ 0, %46 ]
  store i32 %29, ptr %23, align 8, !tbaa !786
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %43, label %31, !prof !795

31:                                               ; preds = %27, %37
  %32 = phi i32 [ %41, %37 ], [ %29, %27 ]
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.bitmap_element_def, ptr %28, i64 0, i32 3, i64 %33
  %35 = load i64, ptr %34, align 8, !tbaa !787
  store i64 %35, ptr %3, align 8, !tbaa !788
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %6, !prof !796

37:                                               ; preds = %31
  %38 = load i32, ptr %1, align 4, !tbaa !759
  %39 = add i32 %38, 64
  store i32 %39, ptr %1, align 4, !tbaa !759
  %40 = load i32, ptr %23, align 8, !tbaa !786
  %41 = add i32 %40, 1
  store i32 %41, ptr %23, align 8, !tbaa !786
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %31, !prof !797, !llvm.loop !798

43:                                               ; preds = %37, %27
  %44 = load ptr, ptr %28, align 8, !tbaa !799
  store ptr %44, ptr %0, align 8, !tbaa !780
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46, !prof !800

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.bitmap_element_def, ptr %44, i64 0, i32 2
  %48 = load i32, ptr %47, align 8, !tbaa !784
  %49 = shl i32 %48, 7
  store i32 %49, ptr %1, align 4, !tbaa !759
  br label %27

50:                                               ; preds = %12
  store i64 %15, ptr %3, align 8, !tbaa !788
  store i32 %16, ptr %1, align 4, !tbaa !759
  br label %51

51:                                               ; preds = %43, %6, %50
  %52 = phi i8 [ 1, %50 ], [ 1, %6 ], [ 0, %43 ]
  ret i8 %52
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @bmp_iter_next(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #5 !prof !801 !PGOFuncName !802 {
  %3 = getelementptr inbounds %struct.bitmap_iterator, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !788
  %5 = lshr i64 %4, 1
  store i64 %5, ptr %3, align 8, !tbaa !788
  %6 = load i32, ptr %1, align 4, !tbaa !759
  %7 = add i32 %6, 1
  store i32 %7, ptr %1, align 4, !tbaa !759
  ret void
}

; Function Attrs: optsize
declare void @fancy_abort(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree noinline nounwind optsize uwtable
define dso_local void @dump_pta_stats(ptr nocapture noundef %0) local_unnamed_addr #0 !prof !724 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 18, i64 1, ptr %0)
  %3 = load i64, ptr @pta_stats.1, align 8, !tbaa !803
  %4 = load i64, ptr @pta_stats.0, align 8, !tbaa !805
  %5 = add i64 %4, %3
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef %3, i64 noundef %5) #23
  %7 = load i64, ptr @pta_stats.3, align 8, !tbaa !806
  %8 = load i64, ptr @pta_stats.2, align 8, !tbaa !807
  %9 = add i64 %8, %7
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef %7, i64 noundef %9) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local void @pt_solution_reset(ptr nocapture noundef writeonly %0) local_unnamed_addr #10 !prof !808 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  store i8 1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @pt_solution_set(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #6 !prof !809 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  store i64 0, ptr %0, align 8
  %5 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  store ptr %1, ptr %5, align 8, !tbaa !810
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8, !prof !812

8:                                                ; preds = %2, %16
  %9 = load i32, ptr %4, align 4, !tbaa !759
  %10 = tail call ptr @referenced_var_lookup(i32 noundef %9) #25
  %11 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %10) #23, !range !770
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13, !prof !813

13:                                               ; preds = %8
  %14 = load i8, ptr %0, align 8
  %15 = or i8 %14, 16
  store i8 %15, ptr %0, align 8
  br label %19

16:                                               ; preds = %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %17 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %8, !prof !814, !llvm.loop !815

19:                                               ; preds = %16, %2, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @referenced_var_lookup(i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_global_var(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !816 !PGOFuncName !817 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 67108864
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %11, !prof !818

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

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i8 @pt_solution_includes_global(ptr nocapture noundef readonly %0) local_unnamed_addr #12 !prof !819 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 19
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %17, !prof !820

5:                                                ; preds = %1, %9
  %6 = phi i8 [ %14, %9 ], [ %2, %1 ]
  %7 = and i8 %6, 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9, !prof !821

9:                                                ; preds = %5
  %10 = load ptr, ptr @cfun, align 8
  %11 = getelementptr inbounds %struct.function, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !822
  %13 = getelementptr inbounds %struct.gimple_df, ptr %12, i64 0, i32 4
  %14 = load i8, ptr %13, align 8
  %15 = and i8 %14, 19
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %5, label %17, !prof !824

17:                                               ; preds = %9, %5, %1
  %18 = phi i8 [ 1, %1 ], [ 0, %5 ], [ 1, %9 ]
  ret i8 %18
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef zeroext i8 @pt_solution_includes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !prof !825 {
  %3 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef %0, ptr noundef %1) #23, !range !770
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.1, ptr @pta_stats.0, !prof !826
  %6 = load i64, ptr %5, align 8, !tbaa !787
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !787
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @pt_solution_includes_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !827 !PGOFuncName !828 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %35, !prof !829

6:                                                ; preds = %2
  %7 = and i8 %3, 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9, !prof !830

9:                                                ; preds = %6
  %10 = tail call fastcc zeroext i8 @is_global_var(ptr noundef %1) #23, !range !770
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %35, !prof !831

12:                                               ; preds = %9, %6
  %13 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !810
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16, !prof !832

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_decl_minimal, ptr %1, i64 0, i32 2
  %18 = load i32, ptr %17, align 4, !tbaa !833
  %19 = tail call i32 @bitmap_bit_p(ptr noundef nonnull %14, i32 noundef %18) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35, !prof !834

21:                                               ; preds = %16
  %22 = load i8, ptr %0, align 8
  br label %23

23:                                               ; preds = %21, %12
  %24 = phi i8 [ %22, %21 ], [ %3, %12 ]
  %25 = and i8 %24, 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %34, label %27, !prof !835

27:                                               ; preds = %23
  %28 = load ptr, ptr @cfun, align 8, !tbaa !725
  %29 = getelementptr inbounds %struct.function, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !822
  %31 = getelementptr inbounds %struct.gimple_df, ptr %30, i64 0, i32 4
  %32 = tail call fastcc zeroext i8 @pt_solution_includes_1(ptr noundef nonnull %31, ptr noundef %1) #23, !range !770
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %35, !prof !836

34:                                               ; preds = %27, %23
  br label %35

35:                                               ; preds = %27, %16, %9, %2, %34
  %36 = phi i8 [ 0, %34 ], [ 1, %2 ], [ 1, %9 ], [ 1, %16 ], [ 1, %27 ]
  ret i8 %36
}

; Function Attrs: optsize
declare i32 @bitmap_bit_p(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pt_solutions_intersect(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !prof !837 {
  %3 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef %0, ptr noundef %1) #23, !range !770
  %4 = icmp eq i8 %3, 0
  %5 = select i1 %4, ptr @pta_stats.3, ptr @pta_stats.2, !prof !838
  %6 = load i64, ptr %5, align 8, !tbaa !787
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !787
  ret i8 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @pt_solutions_intersect_1(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !839 !PGOFuncName !840 {
  %3 = load i8, ptr %0, align 8
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %67, !prof !841

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 8
  %8 = and i8 %7, 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %67, !prof !842

10:                                               ; preds = %6
  %11 = and i8 %3, 2
  %12 = icmp eq i8 %11, 0
  %13 = and i8 %7, 18
  %14 = icmp eq i8 %13, 0
  %15 = or i1 %12, %14
  br i1 %15, label %16, label %67, !prof !843

16:                                               ; preds = %10
  %17 = and i8 %7, 2
  %18 = icmp eq i8 %17, 0
  %19 = and i8 %3, 16
  %20 = icmp eq i8 %19, 0
  %21 = or i1 %20, %18
  br i1 %21, label %22, label %67, !prof !844

22:                                               ; preds = %16
  %23 = and i8 %3, 4
  %24 = icmp eq i8 %23, 0
  %25 = or i8 %7, %3
  %26 = and i8 %25, 4
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %55, label %28, !prof !845

28:                                               ; preds = %22
  %29 = load ptr, ptr @cfun, align 8, !tbaa !725
  %30 = getelementptr inbounds %struct.function, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !822
  %32 = getelementptr inbounds %struct.gimple_df, ptr %31, i64 0, i32 4
  %33 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %32) #23, !range !770
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %55, !prof !846

35:                                               ; preds = %28
  br i1 %24, label %44, label %36, !prof !847

36:                                               ; preds = %35
  %37 = and i8 %7, 4
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %67, !prof !848

39:                                               ; preds = %36
  %40 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %32, ptr noundef nonnull %1) #23, !range !770
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %42, label %67, !prof !849

42:                                               ; preds = %39
  %43 = load i8, ptr %1, align 8
  br label %44

44:                                               ; preds = %42, %35
  %45 = phi i8 [ %43, %42 ], [ %7, %35 ]
  %46 = and i8 %45, 4
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %55, label %48, !prof !850

48:                                               ; preds = %44
  %49 = load ptr, ptr @cfun, align 8, !tbaa !725
  %50 = getelementptr inbounds %struct.function, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !822
  %52 = getelementptr inbounds %struct.gimple_df, ptr %51, i64 0, i32 4
  %53 = tail call fastcc zeroext i8 @pt_solutions_intersect_1(ptr noundef nonnull %52, ptr noundef nonnull %0) #23, !range !770
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %67, !prof !851

55:                                               ; preds = %22, %44, %48, %28
  %56 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !810
  %58 = icmp eq ptr %57, null
  br i1 %58, label %67, label %59, !prof !852

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !810
  %62 = icmp eq ptr %61, null
  br i1 %62, label %67, label %63, !prof !852

63:                                               ; preds = %59
  %64 = tail call zeroext i8 @bitmap_intersect_p(ptr noundef nonnull %57, ptr noundef nonnull %61) #25
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i8
  br label %67

67:                                               ; preds = %10, %16, %55, %59, %63, %39, %48, %36, %2, %6
  %68 = phi i8 [ 1, %6 ], [ 1, %2 ], [ 1, %36 ], [ 1, %48 ], [ 1, %39 ], [ 0, %59 ], [ 0, %55 ], [ %66, %63 ], [ 1, %16 ], [ 1, %10 ]
  ret i8 %68
}

; Function Attrs: nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @pt_solution_empty_p(ptr nocapture noundef readonly %0) unnamed_addr #13 !prof !853 !PGOFuncName !854 {
  %2 = load i8, ptr %0, align 8
  %3 = and i8 %2, 3
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %23, !prof !855

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pt_solution, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !810
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !856

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !778
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %23, !prof !857

12:                                               ; preds = %9, %5
  %13 = and i8 %2, 4
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15, !prof !858

15:                                               ; preds = %12
  %16 = load ptr, ptr @cfun, align 8, !tbaa !725
  %17 = getelementptr inbounds %struct.function, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !822
  %19 = getelementptr inbounds %struct.gimple_df, ptr %18, i64 0, i32 4
  %20 = tail call fastcc zeroext i8 @pt_solution_empty_p(ptr noundef nonnull %19) #23, !range !770
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %12
  br label %23

23:                                               ; preds = %15, %9, %1, %22
  %24 = phi i8 [ 1, %22 ], [ 0, %1 ], [ 0, %9 ], [ 0, %15 ]
  ret i8 %24
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_intersect_p(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local zeroext i8 @pt_solutions_same_restrict_base(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !prof !724 {
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
  %12 = load ptr, ptr %11, align 8, !tbaa !810
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !810
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5087, ptr noundef nonnull @.str.27) #25
  %19 = load ptr, ptr %11, align 8, !tbaa !810
  %20 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !810
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

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @debug_sa_points_to_info() local_unnamed_addr #6 !prof !724 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !725
  tail call fastcc void @dump_sa_points_to_info(ptr noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @dump_sa_points_to_info(ptr nocapture noundef %0) unnamed_addr #6 !prof !724 !PGOFuncName !859 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 17, i64 1, ptr %0)
  %3 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %4 = and i32 %3, 16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = tail call i64 @fwrite(ptr nonnull @.str.32, i64 7, i64 1, ptr %0)
  %8 = load i32, ptr @stats, align 4, !tbaa !860
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.33, i32 noundef %8) #23
  %10 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !862
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, i32 noundef %10) #23
  %12 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), align 4, !tbaa !863
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, i32 noundef %12) #23
  %14 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), align 4, !tbaa !864
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %14) #23
  %16 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !865
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.37, i32 noundef %16) #23
  %18 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !866
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.38, i32 noundef %18) #23
  %20 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !867
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.39, i32 noundef %20) #23
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
  br i1 %31, label %26, label %32, !llvm.loop !868

32:                                               ; preds = %26, %22
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @delete_alias_heapvars() local_unnamed_addr #6 !prof !869 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !725
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !870

3:                                                ; preds = %0
  tail call void @htab_delete(ptr noundef nonnull %1) #25
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @heapvar_for_stmt, align 8, !tbaa !725
  ret void
}

; Function Attrs: optsize
declare void @htab_delete(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define dso_local noundef i32 @compute_may_aliases() local_unnamed_addr #6 !prof !871 {
  tail call fastcc void @compute_points_to_sets() #23
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %2 = icmp eq ptr %1, null
  br i1 %2, label %9, label %3, !prof !872

3:                                                ; preds = %0
  tail call void @dump_alias_info(ptr noundef nonnull %1) #25
  %4 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @dump_file, align 8, !tbaa !725
  tail call void @dump_referenced_vars(ptr noundef %8) #25
  br label %9

9:                                                ; preds = %3, %7, %0
  tail call fastcc void @delete_points_to_sets() #23
  %10 = load ptr, ptr @cfun, align 8, !tbaa !725
  %11 = tail call zeroext i8 @need_ssa_update_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !872

13:                                               ; preds = %9
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5611, ptr noundef nonnull @.str.27) #25
  br label %14

14:                                               ; preds = %9, %13
  ret i32 0
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_points_to_sets() unnamed_addr #6 !prof !871 !PGOFuncName !873 {
  %1 = alloca ptr, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  %3 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %4 = load i8, ptr @timevar_enable, align 1, !tbaa !833
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %7, label %6, !prof !872

6:                                                ; preds = %0
  tail call void @timevar_push_1(i32 noundef 56) #25
  br label %7

7:                                                ; preds = %6, %0
  tail call fastcc void @init_alias_vars() #23
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @intra_create_variable_infos() #23
  %8 = load ptr, ptr @cfun, align 8, !tbaa !725
  %9 = getelementptr inbounds %struct.function, ptr %8, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !874
  %11 = load ptr, ptr %10, align 8, !tbaa !875
  %12 = getelementptr inbounds %struct.basic_block_def, ptr %11, i64 0, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !877
  %14 = getelementptr inbounds %struct.control_flow_graph, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !879
  %16 = icmp eq ptr %13, %15
  br i1 %16, label %46, label %17, !prof !880

17:                                               ; preds = %7, %37
  %18 = phi ptr [ %39, %37 ], [ %13, %7 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %18) #25
  %19 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !770
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %30, !prof !881

21:                                               ; preds = %17, %27
  %22 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  %23 = call fastcc ptr @gimple_phi_result(ptr noundef %22) #23
  %24 = call zeroext i8 @is_gimple_reg(ptr noundef %23) #25
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %27, label %26, !prof !882

26:                                               ; preds = %21
  call fastcc void @find_func_aliases(ptr noundef %22) #23
  br label %27

27:                                               ; preds = %26, %21
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %28 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !770
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %21, label %30, !prof !883, !llvm.loop !884

30:                                               ; preds = %27, %17
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %3, ptr noundef %18) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa.struct !885
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #24
  %31 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !770
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %37, !prof !886

33:                                               ; preds = %30, %33
  %34 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23
  call fastcc void @find_func_aliases(ptr noundef %34) #23
  call fastcc void @gsi_next(ptr noundef nonnull %2) #23
  %35 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %2) #23, !range !770
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %33, label %37, !prof !887, !llvm.loop !888

37:                                               ; preds = %33, %30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %38 = getelementptr inbounds %struct.basic_block_def, ptr %18, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !877
  %40 = load ptr, ptr @cfun, align 8, !tbaa !725
  %41 = getelementptr inbounds %struct.function, ptr %40, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !874
  %43 = getelementptr inbounds %struct.control_flow_graph, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !879
  %45 = icmp eq ptr %39, %44
  br i1 %45, label %46, label %17, !prof !889, !llvm.loop !890

46:                                               ; preds = %37, %7
  call fastcc void @solve_constraints() #23
  %47 = call fastcc ptr @get_varinfo(i32 noundef 3) #23
  %48 = load ptr, ptr @cfun, align 8, !tbaa !725
  %49 = getelementptr inbounds %struct.function, ptr %48, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !822
  %51 = getelementptr inbounds %struct.gimple_df, ptr %50, i64 0, i32 4
  call fastcc void @find_what_var_points_to(ptr noundef %47, ptr noundef nonnull %51) #23
  %52 = call fastcc ptr @get_varinfo(i32 noundef 5) #23
  %53 = load ptr, ptr @cfun, align 8, !tbaa !725
  %54 = getelementptr inbounds %struct.function, ptr %53, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !822
  %56 = getelementptr inbounds %struct.gimple_df, ptr %55, i64 0, i32 5
  call fastcc void @find_what_var_points_to(ptr noundef %52, ptr noundef nonnull %56) #23
  %57 = load ptr, ptr @cfun, align 8, !tbaa !725
  %58 = getelementptr inbounds %struct.function, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !822
  %60 = getelementptr inbounds %struct.gimple_df, ptr %59, i64 0, i32 4
  %61 = load i8, ptr %60, align 8
  %62 = and i8 %61, -5
  store i8 %62, ptr %60, align 8
  %63 = load ptr, ptr @varmap, align 8
  %64 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %63, i32 noundef 0, ptr noundef nonnull %1) #23, !range !746
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %76, !prof !880

66:                                               ; preds = %107
  %67 = load ptr, ptr @cfun, align 8, !tbaa !725
  br label %68

68:                                               ; preds = %66, %46
  %69 = phi ptr [ %67, %66 ], [ %57, %46 ]
  %70 = getelementptr inbounds %struct.function, ptr %69, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !822
  %72 = getelementptr inbounds %struct.gimple_df, ptr %71, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !891
  %74 = call fastcc i32 @VEC_tree_base_length(ptr noundef %73) #23
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %134, label %112, !prof !880

76:                                               ; preds = %46, %107
  %77 = phi ptr [ %108, %107 ], [ %63, %46 ]
  %78 = phi i32 [ %109, %107 ], [ 0, %46 ]
  %79 = load ptr, ptr %1, align 8, !tbaa !725
  %80 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = and i8 %81, 16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %107, label %84, !prof !894

84:                                               ; preds = %76
  %85 = and i8 %81, -96
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %107, !prof !895

87:                                               ; preds = %84
  %88 = load ptr, ptr @cfun, align 8, !tbaa !725
  %89 = getelementptr inbounds %struct.function, ptr %88, i64 0, i32 3
  %90 = load ptr, ptr %89, align 8, !tbaa !822
  %91 = getelementptr inbounds %struct.gimple_df, ptr %90, i64 0, i32 4
  %92 = getelementptr inbounds %struct.variable_info, ptr %79, i64 0, i32 7
  %93 = load ptr, ptr %92, align 8, !tbaa !896
  %94 = call zeroext i8 @pt_solution_includes(ptr noundef nonnull %91, ptr noundef %93) #23, !range !770
  %95 = load i8, ptr %80, align 4
  %96 = shl nuw i8 %94, 7
  %97 = and i8 %95, 127
  %98 = or disjoint i8 %97, %96
  store i8 %98, ptr %80, align 4
  %99 = load ptr, ptr %92, align 8, !tbaa !896
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
  %110 = call fastcc i32 @VEC_varinfo_t_base_iterate(ptr noundef %108, i32 noundef %109, ptr noundef nonnull %1) #23, !range !746
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %66, label %76, !prof !897, !llvm.loop !898

112:                                              ; preds = %68, %125
  %113 = phi ptr [ %126, %125 ], [ %69, %68 ]
  %114 = phi ptr [ %131, %125 ], [ %73, %68 ]
  %115 = phi i32 [ %127, %125 ], [ 0, %68 ]
  %116 = call fastcc ptr @VEC_tree_base_index(ptr noundef %114, i32 noundef %115) #23
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118, !prof !899

118:                                              ; preds = %112
  %119 = getelementptr inbounds %struct.tree_common, ptr %116, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !833
  %121 = load i64, ptr %120, align 8
  %122 = trunc i64 %121 to i16
  switch i16 %122, label %125 [
    i16 10, label %123
    i16 12, label %123
  ], !prof !900

123:                                              ; preds = %118, %118
  call fastcc void @find_what_p_points_to(ptr noundef nonnull %116) #23
  %124 = load ptr, ptr @cfun, align 8, !tbaa !725
  br label %125

125:                                              ; preds = %118, %123, %112
  %126 = phi ptr [ %113, %118 ], [ %124, %123 ], [ %113, %112 ]
  %127 = add nuw i32 %115, 1
  %128 = getelementptr inbounds %struct.function, ptr %126, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !822
  %130 = getelementptr inbounds %struct.gimple_df, ptr %129, i64 0, i32 2
  %131 = load ptr, ptr %130, align 8, !tbaa !891
  %132 = call fastcc i32 @VEC_tree_base_length(ptr noundef %131) #23
  %133 = icmp ult i32 %127, %132
  br i1 %133, label %112, label %134, !prof !901, !llvm.loop !902

134:                                              ; preds = %125, %68
  %135 = load i8, ptr @timevar_enable, align 1, !tbaa !833
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %138, label %137, !prof !872

137:                                              ; preds = %134
  call void @timevar_pop_1(i32 noundef 56) #25
  br label %138

138:                                              ; preds = %137, %134
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: optsize
declare void @dump_alias_info(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @dump_referenced_vars(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @delete_points_to_sets() unnamed_addr #6 !prof !871 !PGOFuncName !903 {
  %1 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !725
  tail call void @htab_delete(ptr noundef %1) #25
  %2 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %3 = icmp eq ptr %2, null
  br i1 %3, label %11, label %4, !prof !872

4:                                                ; preds = %0
  %5 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %6 = and i32 %5, 16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !904
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.81, i32 noundef %9) #23
  br label %11

11:                                               ; preds = %8, %4, %0
  %12 = load ptr, ptr @vi_for_tree, align 8, !tbaa !725
  tail call void @pointer_map_destroy(ptr noundef %12) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @pta_obstack) #25
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef nonnull @constraints) #23
  %13 = load ptr, ptr @graph, align 8, !tbaa !725
  %14 = load i32, ptr %13, align 8, !tbaa !756
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %27, label %16, !prof !880

16:                                               ; preds = %11, %16
  %17 = phi i64 [ %22, %16 ], [ 0, %11 ]
  %18 = phi ptr [ %23, %16 ], [ %13, %11 ]
  %19 = getelementptr inbounds %struct.constraint_graph, ptr %18, i64 0, i32 15
  %20 = load ptr, ptr %19, align 8, !tbaa !905
  %21 = getelementptr inbounds ptr, ptr %20, i64 %17
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %21) #23
  %22 = add nuw nsw i64 %17, 1
  %23 = load ptr, ptr @graph, align 8, !tbaa !725
  %24 = load i32, ptr %23, align 8, !tbaa !756
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %16, label %27, !prof !906, !llvm.loop !907

27:                                               ; preds = %16, %11
  %28 = phi ptr [ %13, %11 ], [ %23, %16 ]
  %29 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 15
  %30 = load ptr, ptr %29, align 8, !tbaa !905
  tail call void @free(ptr noundef %30) #23
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !758
  tail call void @free(ptr noundef %32) #23
  %33 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !908
  tail call void @free(ptr noundef %34) #23
  %35 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !909
  tail call void @free(ptr noundef %36) #23
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 8
  %38 = load ptr, ptr %37, align 8, !tbaa !910
  tail call void @free(ptr noundef %38) #23
  %39 = getelementptr inbounds %struct.constraint_graph, ptr %28, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !911
  tail call void @free(ptr noundef %40) #23
  tail call void @free(ptr noundef nonnull %28) #23
  tail call fastcc void @VEC_varinfo_t_heap_free() #23
  %41 = load ptr, ptr @variable_info_pool, align 8, !tbaa !725
  tail call void @free_alloc_pool(ptr noundef %41) #25
  %42 = load ptr, ptr @constraint_pool, align 8, !tbaa !725
  tail call void @free_alloc_pool(ptr noundef %42) #25
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @need_ssa_update_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @timevar_push_1(i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_vars() unnamed_addr #6 !prof !871 !PGOFuncName !912 {
  %1 = load ptr, ptr @compiler_params, align 8, !tbaa !725
  %2 = getelementptr inbounds %struct.param_info, ptr %1, i64 95, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !913
  %4 = icmp ugt i32 %3, 1
  %5 = zext i1 %4 to i8
  store i8 %5, ptr @use_field_sensitive, align 1, !tbaa !833
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @pta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @oldpta_obstack) #25
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @predbitmap_obstack) #25
  %6 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.40, i64 noundef 32, i64 noundef 30) #25
  store ptr %6, ptr @constraint_pool, align 8, !tbaa !725
  %7 = tail call ptr @create_alloc_pool(ptr noundef nonnull @.str.41, i64 noundef 72, i64 noundef 30) #25
  store ptr %7, ptr @variable_info_pool, align 8, !tbaa !725
  %8 = tail call fastcc ptr @VEC_constraint_t_heap_alloc() #23
  store ptr %8, ptr @constraints, align 8, !tbaa !725
  %9 = tail call fastcc ptr @VEC_varinfo_t_heap_alloc() #23
  store ptr %9, ptr @varmap, align 8, !tbaa !725
  %10 = tail call ptr @pointer_map_create() #25
  store ptr %10, ptr @vi_for_tree, align 8, !tbaa !725
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) @stats, i8 0, i64 32, i1 false)
  %11 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @shared_bitmap_hash, ptr noundef nonnull @shared_bitmap_eq, ptr noundef nonnull @free) #25
  store ptr %11, ptr @shared_bitmap_table, align 8, !tbaa !725
  tail call fastcc void @init_base_vars() #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_alias_heapvars() unnamed_addr #6 !prof !871 !PGOFuncName !915 {
  %1 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !725
  %2 = icmp eq ptr %1, null
  br i1 %2, label %3, label %5, !prof !916

3:                                                ; preds = %0
  %4 = tail call ptr @htab_create_alloc(i64 noundef 11, ptr noundef nonnull @tree_map_hash, ptr noundef nonnull @heapvar_map_eq, ptr noundef null, ptr noundef nonnull @ggc_calloc, ptr noundef nonnull @ggc_free) #25
  store ptr %4, ptr @heapvar_for_stmt, align 8, !tbaa !725
  br label %5

5:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @intra_create_variable_infos() unnamed_addr #6 !prof !871 !PGOFuncName !917 {
  %1 = load ptr, ptr @current_function_decl, align 8, !tbaa !725
  %2 = getelementptr inbounds %struct.tree_decl_non_common, ptr %1, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  %4 = icmp eq ptr %3, null
  br i1 %4, label %89, label %5, !prof !880

5:                                                ; preds = %0, %85
  %6 = phi ptr [ %87, %85 ], [ %3, %0 ]
  %7 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %6) #23, !range !770
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %85, label %9, !prof !918

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.tree_decl_common, ptr %6, i64 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 268435456
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %59, label %14, !prof !919

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !833
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
  %28 = load ptr, ptr %15, align 8, !tbaa !833
  %29 = getelementptr inbounds %struct.tree_common, ptr %28, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !833
  %31 = tail call ptr @create_tmp_var_raw(ptr noundef %30, ptr noundef nonnull @.str.52) #25
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
  %40 = load ptr, ptr @cfun, align 8, !tbaa !725
  %41 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %40) #23
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %39) #25
  br label %45

45:                                               ; preds = %43, %38
  %46 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  %47 = load i32, ptr %46, align 8, !tbaa !920
  %48 = zext i32 %47 to i64
  %49 = shl nuw i64 %48, 32
  %50 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %39) #23
  %51 = load i32, ptr %50, align 8, !tbaa !920
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
  br i1 %61, label %73, label %62, !prof !921

62:                                               ; preds = %59, %69
  %63 = phi ptr [ %71, %69 ], [ %60, %59 ]
  %64 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 64
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %69, label %68, !prof !922

68:                                               ; preds = %62
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %63, i32 noundef 4) #23
  br label %69

69:                                               ; preds = %62, %68
  %70 = getelementptr inbounds %struct.variable_info, ptr %63, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !923
  %72 = icmp eq ptr %71, null
  br i1 %72, label %73, label %62, !prof !924, !llvm.loop !925

73:                                               ; preds = %69, %59
  %74 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !833
  %76 = load i64, ptr %75, align 8
  %77 = trunc i64 %76 to i16
  switch i16 %77, label %85 [
    i16 10, label %78
    i16 12, label %78
  ], !prof !926

78:                                               ; preds = %73, %73
  %79 = getelementptr inbounds %struct.tree_type, ptr %75, i64 0, i32 6
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, 8192
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %85, label %83, !prof !927

83:                                               ; preds = %78
  %84 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %6) #23
  tail call fastcc void @make_constraint_from_restrict(ptr noundef %84, ptr noundef nonnull @.str.53) #23
  br label %85

85:                                               ; preds = %78, %83, %73, %5, %45
  %86 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !833
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %5, !prof !928, !llvm.loop !929

89:                                               ; preds = %85, %0
  %90 = load ptr, ptr @cfun, align 8, !tbaa !725
  %91 = getelementptr inbounds %struct.function, ptr %90, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !930
  %93 = getelementptr inbounds %struct.tree_decl_non_common, ptr %92, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !833
  %95 = icmp eq ptr %94, null
  br i1 %95, label %109, label %96, !prof !931

96:                                               ; preds = %89
  %97 = getelementptr inbounds %struct.tree_decl_common, ptr %94, i64 0, i32 2
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 268435456
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %109, label %101, !prof !872

101:                                              ; preds = %96
  %102 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %94) #23
  %103 = icmp eq ptr %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %101, %104
  %105 = phi ptr [ %107, %104 ], [ %102, %101 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %105, i32 noundef 4) #23
  %106 = getelementptr inbounds %struct.variable_info, ptr %105, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !923
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %104, !llvm.loop !932

109:                                              ; preds = %104, %101, %96, %89
  %110 = load ptr, ptr @cfun, align 8, !tbaa !725
  %111 = getelementptr inbounds %struct.function, ptr %110, i64 0, i32 7
  %112 = load ptr, ptr %111, align 8, !tbaa !933
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114, !prof !872

114:                                              ; preds = %109
  %115 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %112) #23
  %116 = icmp eq ptr %115, null
  br i1 %116, label %122, label %117

117:                                              ; preds = %114, %117
  %118 = phi ptr [ %120, %117 ], [ %115, %114 ]
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %118, i32 noundef 4) #23
  %119 = getelementptr inbounds %struct.variable_info, ptr %118, i64 0, i32 2
  %120 = load ptr, ptr %119, align 8, !tbaa !923
  %121 = icmp eq ptr %120, null
  br i1 %121, label %122, label %117, !llvm.loop !934

122:                                              ; preds = %117, %114, %109
  ret void
}

; Function Attrs: optsize
declare void @gsi_start_phis(ptr dead_on_unwind writable sret(%struct.gimple_stmt_iterator) align 8, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gsi_end_p(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #3 !prof !935 !PGOFuncName !936 {
  %2 = load ptr, ptr %0, align 8, !tbaa !937
  %3 = icmp eq ptr %2, null
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gsi_stmt(ptr nocapture noundef readonly byval(%struct.gimple_stmt_iterator) align 8 %0) unnamed_addr #2 !prof !939 !PGOFuncName !940 {
  %2 = load ptr, ptr %0, align 8, !tbaa !937
  %3 = load ptr, ptr %2, align 8, !tbaa !941
  ret ptr %3
}

; Function Attrs: optsize
declare zeroext i8 @is_gimple_reg(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_phi_result(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !943 !PGOFuncName !944 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_func_aliases(ptr noundef %0) unnamed_addr #6 !prof !945 !PGOFuncName !946 {
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
  store ptr null, ptr %2, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %15 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %16 = icmp eq i32 %15, 16
  br i1 %16, label %17, label %72, !prof !948

17:                                               ; preds = %1
  %18 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %19 = getelementptr inbounds %struct.tree_common, ptr %18, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !833
  %21 = load i64, ptr %20, align 8
  %22 = and i64 %21, 65535
  %23 = add nsw i64 %22, -15
  %24 = icmp ult i64 %23, 4
  br i1 %24, label %25, label %26, !prof !949

25:                                               ; preds = %17
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3630, ptr noundef nonnull @.str.27) #25
  br label %26

26:                                               ; preds = %17, %25
  %27 = tail call fastcc ptr @gimple_phi_result(ptr noundef %0) #23
  %28 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %27) #23, !range !770
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %494, label %30, !prof !950

30:                                               ; preds = %26
  call fastcc void @get_constraint_for(ptr noundef %27, ptr noundef nonnull %2) #23
  %31 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %494, label %33, !prof !951

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
  %42 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %67, label %44, !prof !952

44:                                               ; preds = %35
  %45 = load ptr, ptr %3, align 8
  br label %46

46:                                               ; preds = %44, %63
  %47 = phi i32 [ 0, %44 ], [ %64, %63 ]
  %48 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %45) #23
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50, !prof !952

50:                                               ; preds = %46
  %51 = load ptr, ptr %4, align 8, !tbaa !725
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
  br i1 %62, label %63, label %53, !prof !953, !llvm.loop !954

63:                                               ; preds = %53, %46
  %64 = add i32 %47, 1
  %65 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %34, i32 noundef %64, ptr noundef nonnull %4) #23, !range !746
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %46, !prof !953, !llvm.loop !955

67:                                               ; preds = %63, %35
  %68 = add nuw nsw i64 %36, 1
  %69 = tail call fastcc i32 @gimple_phi_num_args(ptr noundef %0) #23
  %70 = zext i32 %69 to i64
  %71 = icmp ult i64 %68, %70
  br i1 %71, label %35, label %494, !prof !956, !llvm.loop !957

72:                                               ; preds = %1
  %73 = tail call fastcc zeroext i8 @is_gimple_call(ptr noundef %0) #23, !range !770
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %263, label %75, !prof !958

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @gimple_call_fndecl(ptr noundef %0) #23
  %77 = icmp eq ptr %76, null
  br i1 %77, label %142, label %78, !prof !959

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct.tree_function_decl, ptr %76, i64 0, i32 5
  %80 = load i32, ptr %79, align 8
  %81 = and i32 %80, 6144
  %82 = icmp eq i32 %81, 6144
  br i1 %82, label %83, label %140, !prof !960

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
  ], !prof !961

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
  br i1 %97, label %106, label %98, !prof !962

98:                                               ; preds = %85
  call fastcc void @get_constraint_for(ptr noundef nonnull %86, ptr noundef nonnull %2) #23
  %99 = load i32, ptr %79, align 8
  %100 = and i32 %99, 2047
  switch i32 %100, label %102 [
    i32 332, label %101
    i32 335, label %101
    i32 336, label %101
  ], !prof !963

101:                                              ; preds = %98, %98, %98
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %91, ptr noundef null, ptr noundef nonnull %3) #23
  br label %103

102:                                              ; preds = %98
  call fastcc void @get_constraint_for(ptr noundef %91, ptr noundef nonnull %3) #23
  br label %103

103:                                              ; preds = %102, %101
  %104 = load ptr, ptr %2, align 8, !tbaa !725
  %105 = load ptr, ptr %3, align 8, !tbaa !725
  tail call fastcc void @process_all_all_constraints(ptr noundef %104, ptr noundef %105) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %106

106:                                              ; preds = %103, %85
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %91, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %96, ptr noundef null, ptr noundef nonnull %3) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %3) #23
  %107 = load ptr, ptr %2, align 8, !tbaa !725
  %108 = load ptr, ptr %3, align 8, !tbaa !725
  tail call fastcc void @process_all_all_constraints(ptr noundef %107, ptr noundef %108) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %495

109:                                              ; preds = %83
  %110 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %111 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 0) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %112 = icmp eq ptr %110, null
  br i1 %112, label %116, label %113, !prof !964

113:                                              ; preds = %109
  call fastcc void @get_constraint_for(ptr noundef nonnull %110, ptr noundef nonnull %2) #23
  call fastcc void @get_constraint_for(ptr noundef %111, ptr noundef nonnull %3) #23
  %114 = load ptr, ptr %2, align 8, !tbaa !725
  %115 = load ptr, ptr %3, align 8, !tbaa !725
  tail call fastcc void @process_all_all_constraints(ptr noundef %114, ptr noundef %115) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  br label %116

116:                                              ; preds = %113, %109
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %111, ptr noundef null, ptr noundef nonnull %2) #23
  call fastcc void @do_deref(ptr noundef nonnull %2) #23
  %117 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !759
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %123, label %119, !prof !965

119:                                              ; preds = %116
  %120 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef 1) #23
  %121 = tail call i32 @integer_zerop(ptr noundef %120) #25
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %124, !prof !966

123:                                              ; preds = %119, %116
  br label %124

124:                                              ; preds = %119, %123
  %125 = phi i64 [ 30064771072, %123 ], [ 2, %119 ]
  %126 = load ptr, ptr %2, align 8
  %127 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef 0, ptr noundef nonnull %5) #23, !range !746
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %139, label %129, !prof !967

129:                                              ; preds = %124, %129
  %130 = phi i32 [ %136, %129 ], [ 0, %124 ]
  %131 = load ptr, ptr %5, align 8, !tbaa !725
  %132 = load i64, ptr %131, align 8
  %133 = getelementptr inbounds { i64, i64 }, ptr %131, i64 0, i32 1
  %134 = load i64, ptr %133, align 8
  %135 = tail call fastcc ptr @new_constraint(i64 %132, i64 %134, i64 %125, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %135) #23
  %136 = add i32 %130, 1
  %137 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %126, i32 noundef %136, ptr noundef nonnull %5) #23, !range !746
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %129, !prof !968, !llvm.loop !969

139:                                              ; preds = %129, %124
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %2) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  br label %495

140:                                              ; preds = %83, %78
  %141 = load i1, ptr @in_ipa_mode, align 4
  br i1 %141, label %144, label %147, !prof !970

142:                                              ; preds = %75
  %143 = load i1, ptr @in_ipa_mode, align 4
  br i1 %143, label %175, label %147, !prof !970

144:                                              ; preds = %140
  %145 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %76) #23
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %175

147:                                              ; preds = %142, %144, %140
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !725
  %148 = tail call i32 @gimple_call_flags(ptr noundef %0) #25
  %149 = and i32 %148, 513
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %159, label %151, !prof !971

151:                                              ; preds = %147
  %152 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %153 = icmp eq ptr %152, null
  br i1 %153, label %164, label %154, !prof !972

154:                                              ; preds = %151
  %155 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %156 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %155) #23, !range !770
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %164, label %158, !prof !973

158:                                              ; preds = %154
  call fastcc void @handle_const_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

159:                                              ; preds = %147
  %160 = and i32 %148, 6
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162, !prof !974

162:                                              ; preds = %159
  call fastcc void @handle_pure_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

163:                                              ; preds = %159
  call fastcc void @handle_rhs_call(ptr noundef %0, ptr noundef nonnull %6) #23
  br label %164

164:                                              ; preds = %162, %163, %151, %154, %158
  %165 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %166 = icmp eq ptr %165, null
  br i1 %166, label %174, label %167, !prof !975

167:                                              ; preds = %164
  %168 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %169 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %168) #23, !range !770
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %174, label %171, !prof !976

171:                                              ; preds = %167
  %172 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %173 = load ptr, ptr %6, align 8, !tbaa !725
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
  %198 = load i32, ptr %186, align 8, !tbaa !920
  %199 = zext i32 %198 to i64
  %200 = shl nuw i64 %199, 32
  %201 = or disjoint i64 %200, 1
  br label %207

202:                                              ; preds = %189
  %203 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %190) #23
  %204 = load i32, ptr %203, align 8, !tbaa !920
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
  br i1 %220, label %221, label %213, !llvm.loop !977

221:                                              ; preds = %213, %207
  %222 = add nuw nsw i64 %190, 1
  %223 = add nuw nsw i64 %191, 1
  %224 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %225 = zext i32 %224 to i64
  %226 = icmp ult i64 %223, %225
  br i1 %226, label %189, label %227, !llvm.loop !978

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
  %237 = load i32, ptr %186, align 8, !tbaa !920
  %238 = zext i32 %237 to i64
  %239 = shl nuw i64 %238, 32
  %240 = or disjoint i64 %239, 1
  br label %246

241:                                              ; preds = %232
  %242 = tail call fastcc ptr @first_vi_for_offset(ptr noundef %186, i64 noundef %230) #23
  %243 = load i32, ptr %242, align 8, !tbaa !920
  %244 = zext i32 %243 to i64
  %245 = shl nuw i64 %244, 32
  br label %246

246:                                              ; preds = %241, %236
  %247 = phi i64 [ %230, %236 ], [ 0, %241 ]
  %248 = phi i64 [ %240, %236 ], [ %245, %241 ]
  %249 = load ptr, ptr %2, align 8
  %250 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef 0, ptr noundef nonnull %7) #23, !range !746
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %262, label %252

252:                                              ; preds = %246, %252
  %253 = phi i32 [ %259, %252 ], [ 0, %246 ]
  %254 = load ptr, ptr %7, align 8, !tbaa !725
  %255 = load i64, ptr %254, align 8
  %256 = getelementptr inbounds { i64, i64 }, ptr %254, i64 0, i32 1
  %257 = load i64, ptr %256, align 8
  %258 = tail call fastcc ptr @new_constraint(i64 %255, i64 %257, i64 %248, i64 %247) #23
  tail call fastcc void @process_constraint(ptr noundef %258) #23
  %259 = add i32 %253, 1
  %260 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %249, i32 noundef %259, ptr noundef nonnull %7) #23, !range !746
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %252, !llvm.loop !979

262:                                              ; preds = %252, %246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  br label %494

263:                                              ; preds = %72
  %264 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !770
  %265 = icmp eq i8 %264, 0
  br i1 %265, label %363, label %266, !prof !980

266:                                              ; preds = %263
  %267 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %268 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %267) #23, !range !770
  %269 = icmp eq i8 %268, 0
  br i1 %269, label %363, label %270, !prof !981

270:                                              ; preds = %266
  %271 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %272 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %273 = icmp eq i32 %272, 2
  br i1 %273, label %274, label %286, !prof !982

274:                                              ; preds = %270
  %275 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %276 = icmp eq ptr %275, null
  br i1 %276, label %286, label %277, !prof !983

277:                                              ; preds = %274
  %278 = getelementptr inbounds %struct.tree_common, ptr %271, i64 0, i32 2
  %279 = load ptr, ptr %278, align 8, !tbaa !833
  %280 = load i64, ptr %279, align 8
  %281 = trunc i64 %280 to i32
  %282 = and i32 %281, 65535
  %283 = add nsw i32 %282, -15
  %284 = icmp ult i32 %283, 4
  br i1 %284, label %285, label %286, !prof !984

285:                                              ; preds = %277
  tail call fastcc void @do_structure_copy(ptr noundef nonnull %271, ptr noundef nonnull %275) #23
  br label %324

286:                                              ; preds = %270, %277, %274
  %287 = phi ptr [ %275, %277 ], [ null, %274 ], [ null, %270 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  call fastcc void @get_constraint_for(ptr noundef %271, ptr noundef nonnull %2) #23
  %288 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !985
  %289 = icmp eq i32 %288, 66
  br i1 %289, label %290, label %293, !prof !986

290:                                              ; preds = %286
  %291 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %292 = tail call fastcc ptr @gimple_assign_rhs2(ptr noundef %0) #23
  call fastcc void @get_constraint_for_ptr_offset(ptr noundef %291, ptr noundef %292, ptr noundef nonnull %3) #23
  br label %321

293:                                              ; preds = %286
  %294 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !985
  %295 = icmp eq i32 %294, 116
  br i1 %295, label %299, label %296, !prof !987

296:                                              ; preds = %293
  %297 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !985
  %298 = icmp eq i32 %297, 113
  br i1 %298, label %299, label %314, !prof !988

299:                                              ; preds = %296, %293
  %300 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #23
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 65535
  %303 = icmp eq i64 %302, 10
  br i1 %303, label %309, label %304, !prof !989

304:                                              ; preds = %299
  %305 = tail call fastcc ptr @gimple_expr_type(ptr noundef %0) #23
  %306 = load i64, ptr %305, align 8
  %307 = and i64 %306, 65535
  %308 = icmp eq i64 %307, 12
  br i1 %308, label %309, label %317

309:                                              ; preds = %304, %299
  %310 = getelementptr inbounds %struct.tree_common, ptr %287, i64 0, i32 2
  %311 = load ptr, ptr %310, align 8, !tbaa !833
  %312 = load i64, ptr %311, align 8
  %313 = trunc i64 %312 to i16
  switch i16 %313, label %314 [
    i16 10, label %317
    i16 12, label %317
  ], !prof !990

314:                                              ; preds = %309, %296
  %315 = tail call zeroext i8 @gimple_assign_single_p(ptr noundef %0) #25
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %318, label %317, !prof !991

317:                                              ; preds = %309, %309, %314, %304
  call fastcc void @get_constraint_for(ptr noundef %287, ptr noundef nonnull %3) #23
  br label %321

318:                                              ; preds = %314
  store i32 2, ptr %8, align 8, !tbaa !992
  %319 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  store i32 1, ptr %319, align 4, !tbaa !993
  %320 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %320, align 8, !tbaa !994
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %3, ptr noundef nonnull %8) #23
  br label %321

321:                                              ; preds = %317, %318, %290
  %322 = load ptr, ptr %2, align 8, !tbaa !725
  %323 = load ptr, ptr %3, align 8, !tbaa !725
  call fastcc void @process_all_all_constraints(ptr noundef %322, ptr noundef %323) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %324

324:                                              ; preds = %321, %285
  %325 = phi ptr [ %287, %321 ], [ %275, %285 ]
  %326 = call ptr @get_base_address(ptr noundef %271) #25
  %327 = icmp eq ptr %326, null
  br i1 %327, label %338, label %328, !prof !995

328:                                              ; preds = %324
  %329 = load i64, ptr %326, align 8
  %330 = and i64 %329, 65535
  %331 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %330
  %332 = load i32, ptr %331, align 4, !tbaa !759
  %333 = icmp eq i32 %332, 3
  br i1 %333, label %334, label %338, !prof !996

334:                                              ; preds = %328
  %335 = call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %326) #23, !range !770
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %338, label %337, !prof !997

337:                                              ; preds = %334
  call fastcc void @make_escape_constraint(ptr noundef %325) #23
  br label %494

338:                                              ; preds = %334, %328, %324
  %339 = call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !770
  %340 = icmp eq i8 %339, 0
  br i1 %340, label %494, label %341, !prof !998

341:                                              ; preds = %338
  %342 = getelementptr inbounds %struct.tree_common, ptr %325, i64 0, i32 2
  %343 = load ptr, ptr %342, align 8, !tbaa !833
  %344 = load i64, ptr %343, align 8
  %345 = trunc i64 %344 to i16
  switch i16 %345, label %494 [
    i16 10, label %346
    i16 12, label %346
  ], !prof !990

346:                                              ; preds = %341, %341
  %347 = getelementptr inbounds %struct.tree_common, ptr %326, i64 0, i32 2
  %348 = load ptr, ptr %347, align 8, !tbaa !833
  %349 = load i64, ptr %348, align 8
  %350 = trunc i64 %349 to i16
  switch i16 %350, label %494 [
    i16 10, label %351
    i16 12, label %351
  ], !prof !999

351:                                              ; preds = %346, %346
  %352 = getelementptr inbounds %struct.tree_type, ptr %343, i64 0, i32 6
  %353 = load i32, ptr %352, align 4
  %354 = and i32 %353, 8192
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %494, !prof !1000

356:                                              ; preds = %351
  %357 = getelementptr inbounds %struct.tree_type, ptr %348, i64 0, i32 6
  %358 = load i32, ptr %357, align 4
  %359 = and i32 %358, 8192
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %494, label %361, !prof !1001

361:                                              ; preds = %356
  %362 = call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %326) #23
  call fastcc void @make_constraint_from_restrict(ptr noundef %362, ptr noundef nonnull @.str.59) #23
  br label %494

363:                                              ; preds = %266, %263
  %364 = tail call fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) #23, !range !770
  %365 = icmp eq i8 %364, 0
  br i1 %365, label %396, label %366, !prof !1002

366:                                              ; preds = %363
  %367 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %368 = getelementptr inbounds %struct.tree_common, ptr %367, i64 0, i32 2
  %369 = load ptr, ptr %368, align 8, !tbaa !833
  %370 = load i64, ptr %369, align 8
  %371 = and i64 %370, 65535
  %372 = icmp eq i64 %371, 10
  br i1 %372, label %380, label %373, !prof !1003

373:                                              ; preds = %366
  %374 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %375 = getelementptr inbounds %struct.tree_common, ptr %374, i64 0, i32 2
  %376 = load ptr, ptr %375, align 8, !tbaa !833
  %377 = load i64, ptr %376, align 8
  %378 = and i64 %377, 65535
  %379 = icmp eq i64 %378, 12
  br i1 %379, label %380, label %396, !prof !1004

380:                                              ; preds = %373, %366
  %381 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %382 = getelementptr inbounds %struct.tree_common, ptr %381, i64 0, i32 2
  %383 = load ptr, ptr %382, align 8, !tbaa !833
  %384 = load i64, ptr %383, align 8
  %385 = and i64 %384, 65535
  %386 = icmp eq i64 %385, 10
  br i1 %386, label %396, label %387, !prof !1005

387:                                              ; preds = %380
  %388 = tail call fastcc ptr @gimple_assign_lhs(ptr noundef %0) #23
  %389 = getelementptr inbounds %struct.tree_common, ptr %388, i64 0, i32 2
  %390 = load ptr, ptr %389, align 8, !tbaa !833
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 65535
  %393 = icmp eq i64 %392, 12
  br i1 %393, label %396, label %394, !prof !1005

394:                                              ; preds = %387
  %395 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %395) #23
  br label %494

396:                                              ; preds = %387, %380, %373, %363
  %397 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %398 = icmp eq i32 %397, 9
  br i1 %398, label %399, label %408, !prof !1006

399:                                              ; preds = %396
  %400 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %401 = icmp eq ptr %400, null
  br i1 %401, label %408, label %402, !prof !1007

402:                                              ; preds = %399
  %403 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  %404 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %403) #23, !range !770
  %405 = icmp eq i8 %404, 0
  br i1 %405, label %408, label %406, !prof !1008

406:                                              ; preds = %402
  %407 = tail call fastcc ptr @gimple_return_retval(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %407) #23
  br label %494

408:                                              ; preds = %402, %399, %396
  %409 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %410 = icmp eq i32 %409, 7
  br i1 %410, label %411, label %494, !prof !1009

411:                                              ; preds = %408
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #24
  %412 = tail call fastcc i32 @gimple_asm_noutputs(ptr noundef %0) #23, !range !947
  %413 = shl nuw nsw i32 %412, 3
  %414 = zext nneg i32 %413 to i64
  %415 = alloca i8, i64 %414, align 16
  %416 = icmp eq i32 %412, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %411
  %418 = zext nneg i32 %412 to i64
  br label %422

419:                                              ; preds = %462, %411
  %420 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !947
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %493, label %465

422:                                              ; preds = %417, %462
  %423 = phi i64 [ 0, %417 ], [ %463, %462 ]
  %424 = trunc i64 %423 to i32
  %425 = call fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %424) #23
  %426 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 2
  %427 = load ptr, ptr %426, align 8, !tbaa !833
  %428 = getelementptr inbounds %struct.tree_list, ptr %425, i64 0, i32 1
  %429 = load ptr, ptr %428, align 8, !tbaa !833
  %430 = getelementptr inbounds %struct.tree_list, ptr %429, i64 0, i32 2
  %431 = load ptr, ptr %430, align 8, !tbaa !833
  %432 = getelementptr inbounds %struct.tree_string, ptr %431, i64 0, i32 2
  store ptr %432, ptr %9, align 8, !tbaa !725
  %433 = getelementptr inbounds ptr, ptr %415, i64 %423
  store ptr %432, ptr %433, align 8, !tbaa !725
  %434 = call zeroext i8 @parse_output_constraint(ptr noundef nonnull %9, i32 noundef %424, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %11, ptr noundef nonnull %12) #25
  %435 = load i8, ptr %11, align 1, !tbaa !833
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
  %445 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %427) #23, !range !770
  %446 = icmp eq i8 %445, 0
  br i1 %446, label %462, label %447

447:                                              ; preds = %444
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #24
  store ptr null, ptr %13, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #24
  call fastcc void @get_constraint_for(ptr noundef nonnull %427, ptr noundef nonnull %13) #23
  %448 = load ptr, ptr %13, align 8
  %449 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef 0, ptr noundef nonnull %14) #23, !range !746
  %450 = icmp eq i32 %449, 0
  br i1 %450, label %461, label %451

451:                                              ; preds = %447, %451
  %452 = phi i32 [ %458, %451 ], [ 0, %447 ]
  %453 = load ptr, ptr %14, align 8, !tbaa !725
  %454 = load i64, ptr %453, align 8
  %455 = getelementptr inbounds { i64, i64 }, ptr %453, i64 0, i32 1
  %456 = load i64, ptr %455, align 8
  %457 = call fastcc ptr @new_constraint(i64 %454, i64 %456, i64 17179869184, i64 0) #23
  call fastcc void @process_constraint(ptr noundef %457) #23
  %458 = add i32 %452, 1
  %459 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %448, i32 noundef %458, ptr noundef nonnull %14) #23, !range !746
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %451, !llvm.loop !1010

461:                                              ; preds = %451, %447
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #24
  br label %462

462:                                              ; preds = %461, %444, %442
  %463 = add nuw nsw i64 %423, 1
  %464 = icmp eq i64 %463, %418
  br i1 %464, label %419, label %422, !llvm.loop !1011

465:                                              ; preds = %419, %489
  %466 = phi i32 [ %490, %489 ], [ 0, %419 ]
  %467 = call fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %466) #23
  %468 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 2
  %469 = load ptr, ptr %468, align 8, !tbaa !833
  %470 = getelementptr inbounds %struct.tree_list, ptr %467, i64 0, i32 1
  %471 = load ptr, ptr %470, align 8, !tbaa !833
  %472 = getelementptr inbounds %struct.tree_list, ptr %471, i64 0, i32 2
  %473 = load ptr, ptr %472, align 8, !tbaa !833
  %474 = getelementptr inbounds %struct.tree_string, ptr %473, i64 0, i32 2
  store ptr %474, ptr %9, align 8, !tbaa !725
  %475 = call zeroext i8 @parse_input_constraint(ptr noundef nonnull %9, i32 noundef 0, i32 noundef 0, i32 noundef %412, i32 noundef 0, ptr noundef nonnull %415, ptr noundef nonnull %10, ptr noundef nonnull %11) #25
  %476 = load i8, ptr %11, align 1, !tbaa !833
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
  %486 = call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %469) #23, !range !770
  %487 = icmp eq i8 %486, 0
  br i1 %487, label %489, label %488

488:                                              ; preds = %485
  call fastcc void @make_escape_constraint(ptr noundef nonnull %469) #23
  br label %489

489:                                              ; preds = %483, %485, %488, %481
  %490 = add nuw nsw i32 %466, 1
  %491 = call fastcc i32 @gimple_asm_ninputs(ptr noundef %0) #23, !range !947
  %492 = icmp ult i32 %490, %491
  br i1 %492, label %465, label %493, !llvm.loop !1012

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
define internal fastcc void @gsi_next(ptr nocapture noundef %0) unnamed_addr #7 !prof !939 !PGOFuncName !1013 {
  %2 = load ptr, ptr %0, align 8, !tbaa !937
  %3 = getelementptr inbounds %struct.gimple_seq_node_d, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !1014
  store ptr %4, ptr %0, align 8, !tbaa !937
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @gsi_start_bb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%struct.gimple_stmt_iterator) align 8 %0, ptr noundef %1) unnamed_addr #7 !prof !1015 !PGOFuncName !1016 {
  %3 = tail call fastcc ptr @bb_seq(ptr noundef %1) #23
  %4 = tail call fastcc ptr @gimple_seq_first(ptr noundef %3) #23
  store ptr %4, ptr %0, align 8, !tbaa !937
  %5 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !1017
  %6 = getelementptr inbounds %struct.gimple_stmt_iterator, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !1018
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_constraints() unnamed_addr #6 !prof !871 !PGOFuncName !1019 {
  %1 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %2 = icmp eq ptr %1, null
  br i1 %2, label %10, label %3, !prof !872

3:                                                ; preds = %0
  %4 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 34, i64 1, ptr nonnull %1)
  %5 = load ptr, ptr @dump_file, align 8, !tbaa !725
  tail call fastcc void @dump_constraints(ptr noundef %5) #23
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8, !prof !983

8:                                                ; preds = %3
  %9 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 58, i64 1, ptr nonnull %6)
  br label %10

10:                                               ; preds = %0, %8, %3
  %11 = load ptr, ptr @varmap, align 8
  %12 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %11) #23
  %13 = shl i32 %12, 1
  tail call fastcc void @init_graph(i32 noundef %13) #23
  %14 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16, !prof !872

16:                                               ; preds = %10
  %17 = tail call i64 @fwrite(ptr nonnull @.str.68, i64 27, i64 1, ptr nonnull %14)
  br label %18

18:                                               ; preds = %16, %10
  tail call fastcc void @build_pred_graph() #23
  %19 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !872

21:                                               ; preds = %18
  %22 = tail call i64 @fwrite(ptr nonnull @.str.69, i64 44, i64 1, ptr nonnull %19)
  br label %23

23:                                               ; preds = %21, %18
  %24 = load ptr, ptr @graph, align 8, !tbaa !725
  %25 = tail call fastcc ptr @perform_var_substitution(ptr noundef %24) #23
  %26 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28, !prof !872

28:                                               ; preds = %23
  %29 = tail call i64 @fwrite(ptr nonnull @.str.70, i64 45, i64 1, ptr nonnull %26)
  br label %30

30:                                               ; preds = %28, %23
  %31 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @rewrite_constraints(ptr noundef %31, ptr noundef %25) #23
  tail call fastcc void @build_succ_graph() #23
  tail call fastcc void @free_var_substitution_info(ptr noundef %25) #23
  %32 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %33 = icmp eq ptr %32, null
  br i1 %33, label %39, label %34, !prof !872

34:                                               ; preds = %30
  %35 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %36 = and i32 %35, 8192
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call fastcc void @dump_constraint_graph(ptr noundef nonnull %32) #23
  br label %39

39:                                               ; preds = %38, %34, %30
  %40 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @move_complex_constraints(ptr noundef %40) #23
  %41 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43, !prof !872

43:                                               ; preds = %39
  %44 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 54, i64 1, ptr nonnull %41)
  br label %45

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @unite_pointer_equivalences(ptr noundef %46) #23
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49, !prof !872

49:                                               ; preds = %45
  %50 = tail call i64 @fwrite(ptr nonnull @.str.72, i64 24, i64 1, ptr nonnull %47)
  br label %51

51:                                               ; preds = %49, %45
  %52 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @find_indirect_cycles(ptr noundef %52) #23
  %53 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @remove_preds_and_fake_succs(ptr noundef %53) #23
  %54 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !872

56:                                               ; preds = %51
  %57 = tail call i64 @fwrite(ptr nonnull @.str.73, i64 14, i64 1, ptr nonnull %54)
  br label %58

58:                                               ; preds = %56, %51
  %59 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @solve_graph(ptr noundef %59) #23
  %60 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %61 = icmp eq ptr %60, null
  br i1 %61, label %63, label %62, !prof !872

62:                                               ; preds = %58
  tail call fastcc void @dump_sa_points_to_info(ptr noundef nonnull %60) #23
  br label %63

63:                                               ; preds = %62, %58
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_var_points_to(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1020 !PGOFuncName !1021 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  %5 = load i32, ptr %0, align 8, !tbaa !920
  %6 = tail call fastcc i32 @find(i32 noundef %5) #23
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !769
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %9, ptr noundef nonnull %3) #23
  %10 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %50, label %12, !prof !1022

12:                                               ; preds = %2, %47
  %13 = load i32, ptr %3, align 4, !tbaa !759
  %14 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %15 = getelementptr inbounds %struct.variable_info, ptr %14, i64 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = and i8 %16, 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %40, label %19, !prof !1023

19:                                               ; preds = %12
  %20 = load i32, ptr %14, align 8, !tbaa !920
  switch i32 %20, label %31 [
    i32 0, label %21
    i32 3, label %24
    i32 5, label %27
    i32 4, label %28
  ], !prof !1024

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 4820, ptr noundef nonnull @.str.27) #25
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
  br i1 %35, label %40, label %36, !prof !1025

36:                                               ; preds = %31
  switch i32 %20, label %40 [
    i32 1, label %37
    i32 7, label %37
  ], !prof !1026

37:                                               ; preds = %36, %36
  %38 = load i8, ptr %1, align 8
  %39 = or i8 %38, 1
  store i8 %39, ptr %1, align 8
  br label %40

40:                                               ; preds = %36, %21, %27, %31, %37, %28, %24, %12
  %41 = load i8, ptr %15, align 4
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %47, label %44, !prof !1027

44:                                               ; preds = %40
  %45 = load i8, ptr %1, align 8
  %46 = or i8 %45, 32
  store i8 %46, ptr %1, align 8
  br label %47

47:                                               ; preds = %44, %40
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %48 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %12, !prof !1028, !llvm.loop !1029

50:                                               ; preds = %47, %2
  %51 = load i8, ptr %1, align 8
  %52 = and i8 %51, 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54, !prof !1030

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 1
  %56 = load i8, ptr %55, align 4
  %57 = and i8 %56, 1
  %58 = icmp ne i8 %57, 0
  %59 = and i8 %51, 32
  %60 = icmp eq i8 %59, 0
  %61 = or i1 %60, %58
  br i1 %61, label %73, label %62, !prof !1031

62:                                               ; preds = %54, %50
  %63 = tail call ptr @bitmap_gc_alloc_stat() #25
  %64 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !904
  %65 = add i32 %64, 1
  store i32 %65, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 7), align 4, !tbaa !904
  %66 = load ptr, ptr %8, align 8, !tbaa !769
  tail call fastcc void @set_uids_in_ptset(ptr noundef %63, ptr noundef %66, ptr noundef nonnull %1) #23
  %67 = tail call fastcc ptr @shared_bitmap_lookup(ptr noundef %63) #23
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %71, !prof !1032

69:                                               ; preds = %62
  tail call fastcc void @shared_bitmap_add(ptr noundef %63) #23
  %70 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %63, ptr %70, align 8, !tbaa !810
  br label %73

71:                                               ; preds = %62
  %72 = getelementptr inbounds %struct.pt_solution, ptr %1, i64 0, i32 1
  store ptr %67, ptr %72, align 8, !tbaa !810
  tail call void @bitmap_clear(ptr noundef %63) #25
  br label %73

73:                                               ; preds = %69, %71, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_varinfo_t_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1033 !PGOFuncName !1034 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1035

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !765
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1036

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi ptr [ %11, %8 ], [ null, %5 ], [ null, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %13, ptr %2, align 8, !tbaa !725
  ret i32 %14
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_tree_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1037 !PGOFuncName !1038 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1039

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1040
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_tree_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1042 !PGOFuncName !1043 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_tree_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !725
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_what_p_points_to(ptr noundef %0) unnamed_addr #6 !prof !1044 !PGOFuncName !1045 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 65535
  %4 = icmp eq i64 %3, 141
  br i1 %4, label %5, label %15, !prof !1046

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !833
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 65535
  %10 = icmp ne i64 %9, 34
  %11 = and i64 %2, 4294967296
  %12 = icmp eq i64 %11, 0
  %13 = or i1 %12, %10
  %14 = select i1 %13, ptr %0, ptr %7, !prof !1047
  br label %15

15:                                               ; preds = %5, %1
  %16 = phi ptr [ %0, %1 ], [ %14, %5 ]
  %17 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef nonnull %16) #23
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !1048

19:                                               ; preds = %15
  %20 = tail call ptr @get_ptr_info(ptr noundef nonnull %0) #25
  tail call fastcc void @find_what_var_points_to(ptr noundef nonnull %17, ptr noundef %20) #23
  br label %21

21:                                               ; preds = %15, %19
  ret void
}

; Function Attrs: optsize
declare void @timevar_pop_1(i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @bitmap_obstack_initialize(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @create_alloc_pool(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_constraint_t_heap_alloc() unnamed_addr #6 !prof !871 !PGOFuncName !1049 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_varinfo_t_heap_alloc() unnamed_addr #6 !prof !871 !PGOFuncName !1050 {
  %1 = tail call ptr @vec_heap_p_reserve_exact(ptr noundef null, i32 noundef 8) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @pointer_map_create() local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @htab_create(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @shared_bitmap_hash(ptr nocapture noundef readonly %0) #3 !prof !724 !PGOFuncName !1051 {
  %2 = getelementptr inbounds %struct.shared_bitmap_info, ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !1052
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @shared_bitmap_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !1054 !PGOFuncName !1055 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1056
  %4 = load ptr, ptr %1, align 8, !tbaa !1056
  %5 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %3, ptr noundef %4) #25
  %6 = zext i8 %5 to i32
  ret i32 %6
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) #15

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_base_vars() unnamed_addr #6 !prof !871 !PGOFuncName !1057 {
  %1 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.42) #23
  %2 = load i32, ptr %1, align 8, !tbaa !920
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !872

4:                                                ; preds = %0
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5153, ptr noundef nonnull @.str.27) #25
  br label %5

5:                                                ; preds = %0, %4
  %6 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  store i64 0, ptr %8, align 8, !tbaa !1058
  %9 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 4
  %10 = or i8 %7, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, i8 -1, i64 16, i1 false)
  store i8 %10, ptr %6, align 4
  %11 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.43) #23
  %12 = load i32, ptr %11, align 8, !tbaa !920
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %15, label %14, !prof !872

14:                                               ; preds = %5
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5163, ptr noundef nonnull @.str.27) #25
  br label %15

15:                                               ; preds = %5, %14
  %16 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 4
  store i64 -1, ptr %18, align 8, !tbaa !1059
  %19 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 2
  %20 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store i64 -1, ptr %20, align 8, !tbaa !1060
  %21 = or i8 %17, 3
  store i8 %21, ptr %16, align 4
  %22 = tail call fastcc ptr @new_constraint(i64 4294967296, i64 0, i64 4294967298, i64 0) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %22) #23
  %23 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.44) #23
  %24 = load i32, ptr %23, align 8, !tbaa !920
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %27, label %26, !prof !872

26:                                               ; preds = %15
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5189, ptr noundef nonnull @.str.27) #25
  br label %27

27:                                               ; preds = %15, %26
  %28 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 3
  store i64 0, ptr %30, align 8, !tbaa !1058
  %31 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 4
  %32 = getelementptr inbounds %struct.variable_info, ptr %23, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %31, i8 -1, i64 16, i1 false)
  store ptr null, ptr %32, align 8, !tbaa !923
  %33 = or i8 %29, 3
  store i8 %33, ptr %28, align 4
  %34 = tail call fastcc ptr @new_constraint(i64 8589934592, i64 0, i64 8589934594, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %34) #23
  %35 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.45) #23
  %36 = load i32, ptr %35, align 8, !tbaa !920
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %39, label %38, !prof !872

38:                                               ; preds = %27
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5212, ptr noundef nonnull @.str.27) #25
  br label %39

39:                                               ; preds = %27, %38
  %40 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 1
  %41 = load i8, ptr %40, align 4
  %42 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 3
  store i64 0, ptr %42, align 8, !tbaa !1058
  %43 = getelementptr inbounds %struct.variable_info, ptr %35, i64 0, i32 4
  %44 = and i8 %41, -4
  %45 = or disjoint i8 %44, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 -1, i64 16, i1 false)
  store i8 %45, ptr %40, align 4
  %46 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.46) #23
  %47 = load i32, ptr %46, align 8, !tbaa !920
  %48 = icmp eq i32 %47, 4
  br i1 %48, label %50, label %49, !prof !872

49:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5222, ptr noundef nonnull @.str.27) #25
  br label %50

50:                                               ; preds = %39, %49
  %51 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 1
  %52 = load i8, ptr %51, align 4
  %53 = getelementptr inbounds %struct.variable_info, ptr %46, i64 0, i32 3
  store i64 0, ptr %53, align 8, !tbaa !1058
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
  %61 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.47) #23
  %62 = load i32, ptr %61, align 8, !tbaa !920
  %63 = icmp eq i32 %62, 5
  br i1 %63, label %65, label %64, !prof !872

64:                                               ; preds = %50
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5276, ptr noundef nonnull @.str.27) #25
  br label %65

65:                                               ; preds = %50, %64
  %66 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 3
  store i64 0, ptr %68, align 8, !tbaa !1058
  %69 = getelementptr inbounds %struct.variable_info, ptr %61, i64 0, i32 4
  %70 = and i8 %67, -4
  %71 = or disjoint i8 %70, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %69, i8 -1, i64 16, i1 false)
  store i8 %71, ptr %66, align 4
  %72 = tail call fastcc ptr @new_constraint(i64 21474836480, i64 0, i64 21474836481, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %72) #23
  %73 = tail call fastcc ptr @new_constraint(i64 21474836480, i64 0, i64 21474836480, i64 -9223372036854775808) #23
  tail call fastcc void @process_constraint(ptr noundef %73) #23
  %74 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.48) #23
  %75 = load i32, ptr %74, align 8, !tbaa !920
  %76 = icmp eq i32 %75, 6
  br i1 %76, label %78, label %77, !prof !872

77:                                               ; preds = %65
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5305, ptr noundef nonnull @.str.27) #25
  br label %78

78:                                               ; preds = %65, %77
  %79 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 1
  %80 = load i8, ptr %79, align 4
  %81 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 3
  store i64 0, ptr %81, align 8, !tbaa !1058
  %82 = getelementptr inbounds %struct.variable_info, ptr %74, i64 0, i32 4
  %83 = and i8 %80, -4
  %84 = or disjoint i8 %83, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %82, i8 -1, i64 16, i1 false)
  store i8 %84, ptr %79, align 4
  %85 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef nonnull @.str.49) #23
  %86 = load i32, ptr %85, align 8, !tbaa !920
  %87 = icmp eq i32 %86, 7
  br i1 %87, label %89, label %88, !prof !872

88:                                               ; preds = %78
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 5315, ptr noundef nonnull @.str.27) #25
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
declare ptr @vec_heap_p_reserve_exact(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare zeroext i8 @bitmap_equal_p(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_var_info(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1061 !PGOFuncName !1062 {
  %3 = load ptr, ptr @varmap, align 8
  %4 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %3) #23
  %5 = load ptr, ptr @variable_info_pool, align 8, !tbaa !725
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i32 %4, ptr %6, align 8, !tbaa !920
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 6
  store ptr %1, ptr %7, align 8, !tbaa !736
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  store ptr %0, ptr %8, align 8, !tbaa !896
  %9 = icmp eq ptr %0, null
  %10 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 1
  %11 = zext i1 %9 to i8
  %12 = select i1 %9, i8 8, i8 0
  %13 = select i1 %9, i8 -128, i8 0
  %14 = or disjoint i8 %12, %11
  %15 = or disjoint i8 %14, %13
  %16 = or disjoint i8 %15, 64
  store i8 %16, ptr %10, align 4
  br i1 %9, label %28, label %17, !prof !1063

17:                                               ; preds = %2
  %18 = load i64, ptr %0, align 8
  %19 = and i64 %18, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !759
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %28, !prof !1064

23:                                               ; preds = %17
  %24 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %0) #23, !range !770
  %25 = shl nuw i8 %24, 7
  %26 = and i8 %16, 73
  %27 = or disjoint i8 %25, %26
  store i8 %27, ptr %10, align 4
  br label %28

28:                                               ; preds = %23, %17, %2
  %29 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %30 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 8
  store ptr %29, ptr %30, align 8, !tbaa !769
  %31 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %32 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 9
  store ptr %31, ptr %32, align 8, !tbaa !1065
  %33 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 2
  store ptr null, ptr %33, align 8, !tbaa !923
  tail call fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef nonnull %6) #23
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef %0) unnamed_addr #6 !prof !1066 !PGOFuncName !1067 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef nonnull @constraints) #23
  %2 = load ptr, ptr @constraints, align 8, !tbaa !725
  tail call fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @new_constraint(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #6 !prof !1068 !PGOFuncName !1069 {
  %5 = load ptr, ptr @constraint_pool, align 8, !tbaa !725
  %6 = tail call ptr @pool_alloc(ptr noundef %5) #25
  store i64 %0, ptr %6, align 8, !tbaa.struct !1070
  %7 = getelementptr inbounds i8, ptr %6, i64 8
  store i64 %1, ptr %7, align 8, !tbaa.struct !1071
  %8 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1
  store i64 %2, ptr %8, align 8, !tbaa.struct !1070
  %9 = getelementptr inbounds %struct.constraint, ptr %6, i64 0, i32 1, i32 2
  store i64 %3, ptr %9, align 8, !tbaa.struct !1071
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_constraint(ptr noundef %0) unnamed_addr #6 !prof !1072 !PGOFuncName !1073 {
  br label %2

2:                                                ; preds = %39, %1
  %3 = phi ptr [ %0, %1 ], [ %48, %39 ]
  %4 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa.struct !1070
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %9 = getelementptr inbounds %struct.constraint, ptr %3, i64 0, i32 1, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa.struct !1071
  %11 = load i64, ptr %3, align 8, !tbaa.struct !1070
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds i8, ptr %3, i64 8
  %16 = load i64, ptr %15, align 8, !tbaa.struct !1071
  %17 = load ptr, ptr @varmap, align 8
  %18 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %17) #23
  %19 = icmp ugt i32 %18, %8
  br i1 %19, label %22, label %20, !prof !1074

20:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2749, ptr noundef nonnull @.str.27) #25
  %21 = load ptr, ptr @varmap, align 8
  br label %22

22:                                               ; preds = %2, %20
  %23 = phi ptr [ %17, %2 ], [ %21, %20 ]
  %24 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %23) #23
  %25 = icmp ugt i32 %24, %14
  br i1 %25, label %27, label %26, !prof !1074

26:                                               ; preds = %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2750, ptr noundef nonnull @.str.27) #25
  br label %27

27:                                               ; preds = %22, %26
  %28 = icmp eq i32 %12, 2
  br i1 %28, label %29, label %32, !prof !1075

29:                                               ; preds = %27
  %30 = icmp eq i32 %14, 1
  br i1 %30, label %32, label %31

31:                                               ; preds = %29
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2760, ptr noundef nonnull @.str.27) #25
  br label %52

32:                                               ; preds = %29, %27
  %33 = phi i32 [ %12, %27 ], [ 1, %29 ]
  %34 = icmp eq i32 %6, 1
  %35 = icmp eq i32 %33, 1
  %36 = and i1 %34, %35
  br i1 %36, label %37, label %49, !prof !1076

37:                                               ; preds = %32
  %38 = icmp eq i32 %8, 1
  br i1 %38, label %57, label %39, !prof !1077

39:                                               ; preds = %37, %49
  %40 = phi ptr [ @.str.51, %49 ], [ @.str.50, %37 ]
  %41 = phi i64 [ 2, %49 ], [ 1, %37 ]
  %42 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull %40) #23
  %43 = and i64 %5, -4294967296
  %44 = or disjoint i64 %43, %41
  %45 = tail call fastcc ptr @new_constraint(i64 %42, i64 0, i64 %44, i64 %10) #23
  tail call fastcc void @process_constraint(ptr noundef %45) #23
  %46 = and i64 %11, -4294967296
  %47 = or disjoint i64 %46, 1
  %48 = tail call fastcc ptr @new_constraint(i64 %47, i64 %16, i64 %42, i64 0) #23
  br label %2

49:                                               ; preds = %32
  %50 = icmp eq i32 %6, 2
  %51 = and i1 %50, %35
  br i1 %51, label %39, label %52, !prof !1078

52:                                               ; preds = %49, %31
  %53 = icmp ne i32 %6, 2
  %54 = icmp eq i64 %10, 0
  %55 = select i1 %53, i1 true, i1 %54
  br i1 %55, label %57, label %56, !prof !1079

56:                                               ; preds = %52
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2781, ptr noundef nonnull @.str.27) #25
  br label %57

57:                                               ; preds = %37, %52, %56
  tail call fastcc void @VEC_constraint_t_heap_safe_push(ptr noundef nonnull %3) #23
  ret void
}

; Function Attrs: optsize
declare ptr @pool_alloc(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @bitmap_obstack_alloc_stat(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_safe_push(ptr noundef %0) unnamed_addr #6 !prof !1061 !PGOFuncName !1080 {
  tail call fastcc void @VEC_varinfo_t_heap_reserve() #23
  %2 = load ptr, ptr @varmap, align 8, !tbaa !725
  tail call fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %2, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_varinfo_t_heap_reserve() unnamed_addr #6 !prof !1061 !PGOFuncName !1081 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !725
  %2 = tail call fastcc i32 @VEC_varinfo_t_base_space(ptr noundef %1) #23
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %6, !prof !1082

4:                                                ; preds = %0
  %5 = tail call ptr @vec_heap_p_reserve(ptr noundef %1, i32 noundef 1) #25
  store ptr %5, ptr @varmap, align 8, !tbaa !725
  br label %6

6:                                                ; preds = %4, %0
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_varinfo_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1061 !PGOFuncName !1083 {
  %3 = load i32, ptr %0, align 8, !tbaa !765
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !765
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !725
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_varinfo_t_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1061 !PGOFuncName !1084 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1085

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_varinfo_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1086
  %6 = load i32, ptr %0, align 8, !tbaa !765
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_p_reserve(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 !prof !1087 !PGOFuncName !1088 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = tail call fastcc i32 @VEC_constraint_t_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1089

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_p_reserve(ptr noundef %2, i32 noundef 1) #25
  store ptr %6, ptr %0, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_quick_push(ptr noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1066 !PGOFuncName !1090 {
  %3 = load i32, ptr %0, align 8, !tbaa !752
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !752
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  store ptr %1, ptr %6, align 8, !tbaa !725
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1087 !PGOFuncName !1091 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1092

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1093
  %6 = load i32, ptr %0, align 8, !tbaa !752
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef %0) unnamed_addr #6 !prof !1094 !PGOFuncName !1095 {
  %2 = tail call fastcc ptr @new_var_info(ptr noundef null, ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 3
  store i64 0, ptr %3, align 8, !tbaa !1058
  %4 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 4
  %5 = getelementptr inbounds %struct.variable_info, ptr %2, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 8
  store i8 %7, ptr %5, align 4
  %8 = load i32, ptr %2, align 8, !tbaa !920
  %9 = zext i32 %8 to i64
  %10 = shl nuw i64 %9, 32
  ret i64 %10
}

; Function Attrs: optsize
declare ptr @htab_create_alloc(i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare i32 @tree_map_hash(ptr noundef) #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @heapvar_map_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !1096 !PGOFuncName !1097 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1098
  %4 = load ptr, ptr %1, align 8, !tbaa !1098
  %5 = icmp eq ptr %3, %4
  br i1 %5, label %6, label %13, !prof !1102

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !1103
  %9 = getelementptr inbounds %struct.heapvar_map, ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !1103
  %11 = icmp eq i64 %8, %10
  %12 = zext i1 %11 to i32
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %12, %6 ]
  ret i32 %14
}

; Function Attrs: optsize
declare ptr @ggc_calloc(i64 noundef, i64 noundef) #9

; Function Attrs: optsize
declare void @ggc_free(ptr noundef) #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !1104 !PGOFuncName !1105 {
  %2 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  %4 = tail call fastcc zeroext i8 @type_could_have_pointers(ptr noundef %3) #23, !range !770
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @heapvar_lookup(ptr noundef %0, i64 noundef %1) unnamed_addr #6 !prof !1106 !PGOFuncName !1107 {
  %3 = alloca %struct.heapvar_map, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  store ptr %0, ptr %3, align 8, !tbaa !1098
  %4 = getelementptr inbounds %struct.heapvar_map, ptr %3, i64 0, i32 1
  store i64 %1, ptr %4, align 8, !tbaa !1103
  %5 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !725
  %6 = call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %3) #23
  %7 = call ptr @htab_find_with_hash(ptr noundef %5, ptr noundef nonnull %3, i32 noundef %6) #25
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1108

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tree_map, ptr %7, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !1109
  br label %12

12:                                               ; preds = %2, %9
  %13 = phi ptr [ %11, %9 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret ptr %13
}

; Function Attrs: optsize
declare ptr @create_tmp_var_raw(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @heapvar_insert(ptr noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !1110 !PGOFuncName !1111 {
  %4 = tail call ptr @ggc_alloc_stat(i64 noundef 32) #25
  store ptr %0, ptr %4, align 8, !tbaa !1098
  %5 = getelementptr inbounds %struct.heapvar_map, ptr %4, i64 0, i32 1
  store i64 %1, ptr %5, align 8, !tbaa !1103
  %6 = tail call fastcc i32 @heapvar_map_hash(ptr noundef nonnull %4) #23
  %7 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 1
  store i32 %6, ptr %7, align 8, !tbaa !1112
  %8 = getelementptr inbounds %struct.tree_map, ptr %4, i64 0, i32 2
  store ptr %2, ptr %8, align 8, !tbaa !1109
  %9 = load ptr, ptr @heapvar_for_stmt, align 8, !tbaa !725
  %10 = tail call ptr @htab_find_slot_with_hash(ptr noundef %9, ptr noundef nonnull %4, i32 noundef %6, i32 noundef 1) #25
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13, !prof !1113

13:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 345, ptr noundef nonnull @.str.27) #25
  br label %14

14:                                               ; preds = %3, %13
  store ptr %4, ptr %10, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_var_ann(ptr noundef %0) unnamed_addr #6 !prof !1110 !PGOFuncName !1114 {
  %2 = load i64, ptr %0, align 8
  %3 = trunc i64 %2 to i16
  switch i16 %3, label %8 [
    i16 32, label %4
    i16 34, label %6
  ], !prof !1115

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
  tail call void @fancy_abort(ptr noundef nonnull @.str.54, i32 noundef 144, ptr noundef nonnull @.str.27) #25
  unreachable

13:                                               ; preds = %8, %6, %4
  %14 = phi ptr [ %7, %6 ], [ %5, %4 ], [ %11, %8 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !725
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %19, !prof !1113

17:                                               ; preds = %13
  %18 = tail call ptr @create_var_ann(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %13, %17
  %20 = phi ptr [ %18, %17 ], [ %15, %13 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @gimple_referenced_vars(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1106 !PGOFuncName !1116 {
  %2 = getelementptr inbounds %struct.function, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !822
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1117

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !1118
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare zeroext i8 @add_referenced_var(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @get_vi_for_tree(ptr noundef %0) unnamed_addr #6 !prof !1119 !PGOFuncName !1120 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !725
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %9, !prof !1121

5:                                                ; preds = %1
  %6 = tail call fastcc ptr @alias_get_name(ptr noundef %0) #23
  %7 = tail call fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %6) #23
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  br label %11

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8, !tbaa !725
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi ptr [ %8, %5 ], [ %10, %9 ]
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_from(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1122 !PGOFuncName !1123 {
  %3 = load i32, ptr %0, align 8, !tbaa !920
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
define internal fastcc void @make_constraint_from_restrict(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 !prof !1124 !PGOFuncName !1125 {
  %3 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %0, ptr noundef %1) #23
  %4 = getelementptr inbounds %struct.variable_info, ptr %3, i64 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 29
  %7 = or disjoint i8 %6, 34
  store i8 %7, ptr %4, align 4
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @type_could_have_pointers(ptr nocapture noundef readonly %0) unnamed_addr #12 !prof !1126 !PGOFuncName !1127 {
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
  ], !prof !1128

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tree_common, ptr %3, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !833
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
declare ptr @htab_find_with_hash(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @heapvar_map_hash(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1129 !PGOFuncName !1130 {
  %2 = getelementptr inbounds %struct.heapvar_map, ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !1103
  %4 = load ptr, ptr @htab_hash_pointer, align 8, !tbaa !725
  %5 = load ptr, ptr %0, align 8, !tbaa !1098
  %6 = tail call i32 %4(ptr noundef %5) #25
  %7 = tail call i32 @iterative_hash_host_wide_int(i64 noundef %3, i32 noundef %6) #25
  ret i32 %7
}

; Function Attrs: optsize
declare i32 @iterative_hash_host_wide_int(i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ggc_alloc_stat(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @htab_find_slot_with_hash(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @create_var_ann(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @pointer_map_contains(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @create_variable_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1131 !PGOFuncName !1132 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !833
  %8 = load i64, ptr %0, align 8
  %9 = and i64 %8, 65535
  %10 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !759
  %12 = icmp eq i32 %11, 3
  %13 = getelementptr inbounds %struct.tree_decl_common, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.tree_type, ptr %7, i64 0, i32 2
  %15 = select i1 %12, ptr %13, ptr %14, !prof !1133
  %16 = load ptr, ptr %15, align 8, !tbaa !833
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !725
  %17 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !770
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %24, label %19, !prof !1134

19:                                               ; preds = %2
  %20 = load i8, ptr @use_field_sensitive, align 1, !tbaa !833
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %24, label %22, !prof !1135

22:                                               ; preds = %19
  %23 = call fastcc i32 @push_fields_onto_fieldstack(ptr noundef %7, ptr noundef nonnull %3, i64 noundef 0) #23
  br label %24

24:                                               ; preds = %22, %19, %2
  %25 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %1) #23
  %26 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 3
  store i64 0, ptr %26, align 8, !tbaa !1058
  %27 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %0) #23, !range !770
  %28 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = shl nuw nsw i8 %27, 6
  %31 = and i8 %29, -65
  %32 = or disjoint i8 %31, %30
  store i8 %32, ptr %28, align 4
  %33 = icmp eq ptr %16, null
  br i1 %33, label %39, label %34, !prof !1136

34:                                               ; preds = %24
  %35 = tail call i32 @host_integerp(ptr noundef nonnull %16, i32 noundef 1) #25
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %43, !prof !1137

37:                                               ; preds = %34
  %38 = load i8, ptr %28, align 4
  br label %39

39:                                               ; preds = %37, %24
  %40 = phi i8 [ %38, %37 ], [ %32, %24 ]
  %41 = or i8 %40, 4
  store i8 %41, ptr %28, align 4
  %42 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %42, i8 -1, i64 16, i1 false)
  br label %48

43:                                               ; preds = %34
  %44 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !833
  %46 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 5
  store i64 %45, ptr %46, align 8, !tbaa !1060
  %47 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 4
  store i64 %45, ptr %47, align 8, !tbaa !1059
  br label %48

48:                                               ; preds = %43, %39
  %49 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !896
  tail call fastcc void @insert_vi_for_tree(ptr noundef %50, ptr noundef nonnull %25) #23
  %51 = load i8, ptr %28, align 4
  %52 = icmp sgt i8 %51, -1
  br i1 %52, label %76, label %53, !prof !1138

53:                                               ; preds = %48
  %54 = load i32, ptr @flag_whole_program, align 4, !tbaa !759
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56, !prof !1139

56:                                               ; preds = %53
  %57 = load i1, ptr @in_ipa_mode, align 4
  %58 = and i8 %51, 64
  %59 = icmp eq i8 %58, 0
  %60 = or i1 %59, %57
  br i1 %60, label %76, label %64, !prof !1140

61:                                               ; preds = %53
  %62 = and i8 %51, 64
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %76, label %64, !prof !1141

64:                                               ; preds = %56, %61
  %65 = load ptr, ptr %6, align 8, !tbaa !833
  %66 = load i64, ptr %65, align 8
  %67 = trunc i64 %66 to i16
  switch i16 %67, label %74 [
    i16 10, label %68
    i16 12, label %68
  ], !prof !1142

68:                                               ; preds = %64, %64
  %69 = getelementptr inbounds %struct.tree_type, ptr %65, i64 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, 8192
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %74, label %73, !prof !1143

73:                                               ; preds = %68
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %25, ptr noundef nonnull @.str.55) #23
  br label %74

74:                                               ; preds = %64, %73, %68
  tail call fastcc void @make_copy_constraint(ptr noundef nonnull %25) #23
  %75 = load i8, ptr %28, align 4
  br label %76

76:                                               ; preds = %74, %61, %56, %48
  %77 = phi i8 [ %75, %74 ], [ %51, %61 ], [ %51, %56 ], [ %51, %48 ]
  %78 = load i32, ptr @stats, align 4, !tbaa !860
  %79 = add i32 %78, 1
  store i32 %79, ptr @stats, align 4, !tbaa !860
  %80 = load i8, ptr @use_field_sensitive, align 1, !tbaa !833
  %81 = icmp ne i8 %80, 0
  %82 = and i8 %77, 4
  %83 = icmp eq i8 %82, 0
  %84 = select i1 %81, i1 %83, i1 false
  br i1 %84, label %85, label %228, !prof !1144

85:                                               ; preds = %76
  %86 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %0) #23, !range !770
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %228, label %88, !prof !1145

88:                                               ; preds = %85
  %89 = load ptr, ptr %3, align 8
  %90 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %89) #23
  %91 = icmp ugt i32 %90, 1
  br i1 %91, label %92, label %228, !prof !1146

92:                                               ; preds = %88
  %93 = zext i32 %90 to i64
  %94 = load ptr, ptr @compiler_params, align 8, !tbaa !725
  %95 = getelementptr inbounds %struct.param_info, ptr %94, i64 95, i32 1
  %96 = load i32, ptr %95, align 8, !tbaa !913
  %97 = sext i32 %96 to i64
  %98 = icmp ugt i64 %93, %97
  br i1 %98, label %228, label %99, !prof !1147

99:                                               ; preds = %92
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !725
  %100 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %89, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %116, label %106, !prof !1148

102:                                              ; preds = %113
  %103 = add i32 %107, 1
  %104 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %89, i32 noundef %103, ptr noundef nonnull %4) #23, !range !746
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %116, label %106, !prof !1149, !llvm.loop !1150

106:                                              ; preds = %99, %102
  %107 = phi i32 [ %103, %102 ], [ 0, %99 ]
  %108 = load ptr, ptr %4, align 8, !tbaa !725
  %109 = getelementptr inbounds %struct.fieldoff, ptr %108, i64 0, i32 2
  %110 = load i8, ptr %109, align 8
  %111 = and i8 %110, 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %119, !prof !1151

113:                                              ; preds = %106
  %114 = load i64, ptr %108, align 8, !tbaa !1152
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %119, label %102, !prof !1154

116:                                              ; preds = %102, %99
  tail call fastcc void @sort_fieldstack(ptr noundef %89) #23
  %117 = tail call fastcc zeroext i8 @check_for_overlaps(ptr noundef %89) #23, !range !770
  %118 = icmp ne i8 %117, 0
  br label %119

119:                                              ; preds = %113, %106, %116
  %120 = phi i1 [ %118, %116 ], [ true, %106 ], [ true, %113 ]
  %121 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %89) #23
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %125, !prof !1155

123:                                              ; preds = %119
  %124 = load ptr, ptr %4, align 8, !tbaa !725
  br label %127

125:                                              ; preds = %119
  %126 = tail call fastcc ptr @VEC_fieldoff_s_base_index(ptr noundef %89) #23
  store ptr %126, ptr %4, align 8, !tbaa !725
  br label %127

127:                                              ; preds = %123, %125
  %128 = phi ptr [ %124, %123 ], [ %126, %125 ]
  %129 = icmp eq ptr %128, null
  %130 = or i1 %120, %129
  br i1 %130, label %131, label %136, !prof !1156

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 4
  %133 = load i8, ptr %28, align 4
  %134 = or i8 %133, 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %132, i8 -1, i64 16, i1 false)
  store i8 %134, ptr %28, align 4
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %135 = load i32, ptr %25, align 8, !tbaa !920
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %232

136:                                              ; preds = %127
  %137 = load <2 x i64>, ptr %128, align 8, !tbaa !787
  store <2 x i64> %137, ptr %26, align 8, !tbaa !787
  %138 = getelementptr inbounds %struct.fieldoff, ptr %128, i64 0, i32 2
  %139 = load i8, ptr %138, align 8
  %140 = load i8, ptr %28, align 4
  %141 = shl i8 %139, 5
  %142 = and i8 %141, 64
  %143 = and i8 %140, -65
  %144 = or disjoint i8 %143, %142
  store i8 %144, ptr %28, align 4
  %145 = icmp sgt i8 %140, -1
  br i1 %145, label %160, label %146, !prof !1157

146:                                              ; preds = %136
  %147 = load i32, ptr @flag_whole_program, align 4, !tbaa !759
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %153, label %149, !prof !1158

149:                                              ; preds = %146
  %150 = load i1, ptr @in_ipa_mode, align 4
  %151 = icmp eq i8 %142, 0
  %152 = select i1 %150, i1 true, i1 %151
  br i1 %152, label %160, label %155, !prof !1159

153:                                              ; preds = %146
  %154 = icmp eq i8 %142, 0
  br i1 %154, label %160, label %155, !prof !1160

155:                                              ; preds = %149, %153
  %156 = load i8, ptr %138, align 8
  %157 = and i8 %156, 4
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %160, label %159, !prof !1161

159:                                              ; preds = %155
  tail call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %25, ptr noundef nonnull @.str.55) #23
  br label %160

160:                                              ; preds = %155, %159, %153, %149, %136
  %161 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %89) #23
  %162 = add i32 %161, -1
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %227, label %164, !prof !1148

164:                                              ; preds = %160
  %165 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 5
  br label %166

166:                                              ; preds = %164, %222
  %167 = phi i32 [ %162, %164 ], [ %225, %222 ]
  %168 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %89, i32 noundef %167, ptr noundef nonnull %4) #23, !range !746
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %227, label %170, !prof !1162

170:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %171 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %172 = icmp eq ptr %171, null
  %173 = load ptr, ptr %4, align 8, !tbaa !725
  br i1 %172, label %184, label %174, !prof !1163

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !736
  %177 = load i64, ptr %173, align 8, !tbaa !1152
  %178 = getelementptr inbounds %struct.fieldoff, ptr %173, i64 0, i32 1
  %179 = load i64, ptr %178, align 8, !tbaa !1164
  %180 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.56, ptr noundef %176, i64 noundef %177, i64 noundef %179) #25
  %181 = load ptr, ptr %5, align 8, !tbaa !725
  %182 = call ptr @ggc_alloc_string(ptr noundef %181, i32 noundef -1) #25
  %183 = load ptr, ptr %5, align 8, !tbaa !725
  call void @free(ptr noundef %183) #23
  br label %184

184:                                              ; preds = %174, %170
  %185 = phi ptr [ %182, %174 ], [ @.str.42, %170 ]
  %186 = call fastcc ptr @new_var_info(ptr noundef nonnull %0, ptr noundef %185) #23
  %187 = getelementptr inbounds %struct.variable_info, ptr %186, i64 0, i32 3
  %188 = load <2 x i64>, ptr %173, align 8, !tbaa !787
  store <2 x i64> %188, ptr %187, align 8, !tbaa !787
  %189 = load i64, ptr %165, align 8, !tbaa !1060
  %190 = getelementptr inbounds %struct.variable_info, ptr %186, i64 0, i32 5
  store i64 %189, ptr %190, align 8, !tbaa !1060
  %191 = getelementptr inbounds %struct.fieldoff, ptr %173, i64 0, i32 2
  %192 = load i8, ptr %191, align 8
  %193 = getelementptr inbounds %struct.variable_info, ptr %186, i64 0, i32 1
  %194 = load i8, ptr %193, align 4
  %195 = shl i8 %192, 5
  %196 = and i8 %195, 64
  %197 = and i8 %194, -65
  %198 = or disjoint i8 %197, %196
  store i8 %198, ptr %193, align 4
  call fastcc void @insert_into_field_list(ptr noundef nonnull %25, ptr noundef %186) #23
  %199 = load i8, ptr %193, align 4
  %200 = icmp sgt i8 %199, -1
  br i1 %200, label %201, label %207, !prof !1165

201:                                              ; preds = %184
  %202 = load i64, ptr %0, align 8
  %203 = and i64 %202, 65535
  %204 = icmp ne i64 %203, 34
  %205 = icmp ult i8 %199, 64
  %206 = or i1 %205, %204
  br i1 %206, label %222, label %210, !prof !1166

207:                                              ; preds = %184
  %208 = and i8 %199, 64
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %222, label %210, !prof !1167

210:                                              ; preds = %201, %207
  %211 = load i8, ptr %191, align 8
  %212 = and i8 %211, 4
  %213 = icmp eq i8 %212, 0
  br i1 %213, label %216, label %214, !prof !1168

214:                                              ; preds = %210
  call fastcc void @make_constraint_from_restrict(ptr noundef nonnull %186, ptr noundef nonnull @.str.55) #23
  %215 = load i8, ptr %193, align 4
  br label %216

216:                                              ; preds = %214, %210
  %217 = phi i8 [ %215, %214 ], [ %199, %210 ]
  %218 = icmp sgt i8 %217, -1
  %219 = load i1, ptr @in_ipa_mode, align 4
  %220 = select i1 %218, i1 true, i1 %219
  br i1 %220, label %222, label %221, !prof !1169

221:                                              ; preds = %216
  call fastcc void @make_copy_constraint(ptr noundef nonnull %186) #23
  br label %222

222:                                              ; preds = %216, %221, %207, %201
  %223 = load i32, ptr @stats, align 4, !tbaa !860
  %224 = add i32 %223, 1
  store i32 %224, ptr @stats, align 4, !tbaa !860
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  %225 = add i32 %167, -1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %166, !prof !1170, !llvm.loop !1171

227:                                              ; preds = %222, %166, %160
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %230

228:                                              ; preds = %92, %88, %85, %76
  %229 = or i8 %77, 8
  store i8 %229, ptr %28, align 4
  br label %230

230:                                              ; preds = %227, %228
  call fastcc void @VEC_fieldoff_s_heap_free(ptr noundef nonnull %3) #23
  %231 = load i32, ptr %25, align 8, !tbaa !920
  br label %232

232:                                              ; preds = %131, %230
  %233 = phi i32 [ %231, %230 ], [ %135, %131 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret i32 %233
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @alias_get_name(ptr noundef %0) unnamed_addr #6 !prof !1131 !PGOFuncName !1172 {
  %2 = alloca ptr, align 8
  %3 = tail call ptr @get_name(ptr noundef %0) #25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %34, !prof !1173

5:                                                ; preds = %1
  %6 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %7 = icmp eq ptr %6, null
  br i1 %7, label %34, label %8, !prof !1174

8:                                                ; preds = %5
  %9 = load i64, ptr %0, align 8
  %10 = and i64 %9, 65535
  %11 = icmp eq i64 %10, 141
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !833
  %15 = tail call fastcc ptr @alias_get_name(ptr noundef %14) #23
  %16 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !833
  %18 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.57, ptr noundef %15, i32 noundef %17) #25
  br label %27

19:                                               ; preds = %8
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %10
  %21 = load i32, ptr %20, align 4, !tbaa !759
  %22 = icmp eq i32 %21, 3
  br i1 %22, label %23, label %34

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_decl_minimal, ptr %0, i64 0, i32 2
  %25 = load i32, ptr %24, align 4, !tbaa !833
  %26 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.58, i32 noundef %25) #25
  br label %27

27:                                               ; preds = %23, %12
  %28 = phi i32 [ %18, %12 ], [ %26, %23 ]
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8, !tbaa !725
  %32 = call ptr @ggc_alloc_string(ptr noundef %31, i32 noundef -1) #25
  %33 = load ptr, ptr %2, align 8, !tbaa !725
  call void @free(ptr noundef %33) #23
  br label %34

34:                                               ; preds = %19, %27, %30, %5, %1
  %35 = phi ptr [ %3, %1 ], [ @.str.42, %5 ], [ %32, %30 ], [ @.str.42, %27 ], [ @.str.42, %19 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr %35
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc zeroext i8 @var_can_have_subvars(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1175 !PGOFuncName !1176 {
  %2 = load i64, ptr %0, align 8
  %3 = and i64 %2, 524288
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %17, !prof !1177

5:                                                ; preds = %1
  %6 = and i64 %2, 65535
  %7 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !759
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %17, !prof !1178

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !833
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
define internal fastcc i32 @push_fields_onto_fieldstack(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #6 !prof !1179 !PGOFuncName !1180 {
  %4 = load i64, ptr %0, align 8
  %5 = and i64 %4, 65535
  %6 = icmp eq i64 %5, 16
  br i1 %6, label %7, label %139, !prof !1181

7:                                                ; preds = %3
  %8 = load ptr, ptr %1, align 8, !tbaa !725
  %9 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %8) #23
  %10 = zext i32 %9 to i64
  %11 = load ptr, ptr @compiler_params, align 8, !tbaa !725
  %12 = getelementptr inbounds %struct.param_info, ptr %11, i64 95, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !913
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %10, %14
  br i1 %15, label %139, label %16, !prof !1182

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.tree_type, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !833
  %19 = icmp eq ptr %18, null
  br i1 %19, label %139, label %20, !prof !1183

20:                                               ; preds = %16, %134
  %21 = phi ptr [ %137, %134 ], [ %18, %16 ]
  %22 = phi i32 [ %135, %134 ], [ 0, %16 ]
  %23 = load i64, ptr %21, align 8
  %24 = and i64 %23, 65535
  %25 = icmp eq i64 %24, 31
  br i1 %25, label %26, label %134, !prof !1184

26:                                               ; preds = %20
  %27 = tail call fastcc i64 @bitpos_of_field(ptr noundef nonnull %21) #23
  %28 = tail call fastcc zeroext i8 @var_can_have_subvars(ptr noundef nonnull %21) #23, !range !770
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %49, label %30, !prof !1185

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !833
  %33 = load i64, ptr %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = add nsw i32 %35, -17
  %37 = icmp ult i32 %36, 2
  br i1 %37, label %49, label %38, !prof !1186

38:                                               ; preds = %30
  %39 = add nsw i64 %27, %2
  %40 = tail call fastcc i32 @push_fields_onto_fieldstack(ptr noundef nonnull %32, ptr noundef nonnull %1, i64 noundef %39) #23
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %132, !prof !1187

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !833
  %45 = icmp eq ptr %44, null
  br i1 %45, label %132, label %46, !prof !1188

46:                                               ; preds = %42
  %47 = tail call i32 @integer_zerop(ptr noundef nonnull %44) #25
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %132, !prof !1189

49:                                               ; preds = %26, %30, %46
  %50 = load ptr, ptr %1, align 8, !tbaa !725
  %51 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %50) #23
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53, !prof !1190

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %50) #23
  br label %55

55:                                               ; preds = %53, %49
  %56 = phi ptr [ null, %49 ], [ %54, %53 ]
  %57 = getelementptr inbounds %struct.tree_decl_common, ptr %21, i64 0, i32 1
  %58 = load ptr, ptr %57, align 8, !tbaa !833
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60, !prof !1191

60:                                               ; preds = %55
  %61 = tail call i32 @host_integerp(ptr noundef nonnull %58, i32 noundef 1) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64, !prof !1191

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i1 [ false, %60 ], [ true, %63 ]
  %66 = phi i1 [ true, %60 ], [ false, %63 ]
  %67 = phi i8 [ 0, %60 ], [ 1, %63 ]
  %68 = icmp eq ptr %56, null
  br i1 %68, label %97, label %69, !prof !1190

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 2
  %71 = load i8, ptr %70, align 8
  %72 = and i8 %71, 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %97, !prof !1192

74:                                               ; preds = %69
  %75 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !770
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %97, !prof !1193

77:                                               ; preds = %74
  %78 = and i8 %71, 1
  %79 = icmp ne i8 %78, 0
  %80 = or i1 %65, %79
  br i1 %80, label %97, label %81, !prof !1194

81:                                               ; preds = %77
  %82 = load i64, ptr %56, align 8, !tbaa !1152
  %83 = getelementptr inbounds %struct.fieldoff, ptr %56, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !1164
  %85 = add nsw i64 %84, %82
  %86 = add nsw i64 %27, %2
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97, !prof !1195

88:                                               ; preds = %81
  %89 = load ptr, ptr %1, align 8, !tbaa !725
  %90 = tail call fastcc ptr @VEC_fieldoff_s_base_last(ptr noundef %89) #23
  %91 = load ptr, ptr %57, align 8, !tbaa !833
  %92 = getelementptr inbounds %struct.tree_int_cst, ptr %91, i64 0, i32 1
  %93 = load i64, ptr %92, align 8, !tbaa !833
  %94 = getelementptr inbounds %struct.fieldoff, ptr %90, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !1164
  %96 = add i64 %95, %93
  store i64 %96, ptr %94, align 8, !tbaa !1164
  br label %134

97:                                               ; preds = %81, %77, %74, %69, %64
  %98 = tail call fastcc ptr @VEC_fieldoff_s_heap_safe_push(ptr noundef nonnull %1) #23
  %99 = add nsw i64 %27, %2
  store i64 %99, ptr %98, align 8, !tbaa !1152
  %100 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 2
  %101 = load i8, ptr %100, align 8
  %102 = and i8 %101, -2
  %103 = or disjoint i8 %102, %67
  store i8 %103, ptr %100, align 8
  br i1 %66, label %104, label %108, !prof !1196

104:                                              ; preds = %97
  %105 = load ptr, ptr %57, align 8, !tbaa !833
  %106 = getelementptr inbounds %struct.tree_int_cst, ptr %105, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !833
  br label %108

108:                                              ; preds = %97, %104
  %109 = phi i64 [ %107, %104 ], [ -1, %97 ]
  %110 = getelementptr inbounds %struct.fieldoff, ptr %98, i64 0, i32 1
  store i64 %109, ptr %110, align 8
  %111 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef nonnull %21) #23, !range !770
  %112 = shl nuw nsw i8 %111, 1
  %113 = and i8 %103, -3
  %114 = or disjoint i8 %113, %112
  store i8 %114, ptr %100, align 8
  br i1 %66, label %115, label %127, !prof !1196

115:                                              ; preds = %108
  %116 = getelementptr inbounds %struct.tree_common, ptr %21, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !833
  %118 = load i64, ptr %117, align 8
  %119 = trunc i64 %118 to i16
  switch i16 %119, label %127 [
    i16 10, label %120
    i16 12, label %120
  ], !prof !1197

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
  %137 = load ptr, ptr %136, align 8, !tbaa !833
  %138 = icmp eq ptr %137, null
  br i1 %138, label %139, label %20, !prof !1198, !llvm.loop !1199

139:                                              ; preds = %134, %16, %7, %3
  %140 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 0, %16 ], [ %135, %134 ]
  ret i32 %140
}

; Function Attrs: optsize
declare i32 @host_integerp(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_vi_for_tree(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1200 !PGOFuncName !1201 {
  %3 = load ptr, ptr @vi_for_tree, align 8, !tbaa !725
  %4 = tail call ptr @pointer_map_insert(ptr noundef %3, ptr noundef %0) #25
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %7, !prof !1202

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2603, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = load ptr, ptr %4, align 8, !tbaa !725
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10, !prof !1203

10:                                               ; preds = %7
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2604, ptr noundef nonnull @.str.27) #25
  br label %11

11:                                               ; preds = %7, %10
  store ptr %1, ptr %4, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_copy_constraint(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1204 !PGOFuncName !1205 {
  %2 = load i32, ptr %0, align 8, !tbaa !920
  %3 = zext i32 %2 to i64
  %4 = shl nuw i64 %3, 32
  %5 = tail call fastcc ptr @new_constraint(i64 %4, i64 0, i64 17179869184, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %5) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1206 !PGOFuncName !1207 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1208

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1209
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1211 !PGOFuncName !1212 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1213

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1209
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1214

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !725
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @sort_fieldstack(ptr noundef %0) unnamed_addr #6 !prof !1215 !PGOFuncName !1216 {
  %2 = tail call fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef %0) #23
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_length(ptr noundef %0) #23
  %4 = zext i32 %3 to i64
  tail call void @spec_qsort(ptr noundef %2, i64 noundef %4, i64 noundef 24, ptr noundef nonnull @fieldoff_compare) #25
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc noundef zeroext i8 @check_for_overlaps(ptr noundef %0) unnamed_addr #8 !prof !1215 !PGOFuncName !1217 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !725
  %3 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %15, label %9, !prof !1148

5:                                                ; preds = %9
  %6 = add i32 %11, 1
  %7 = call fastcc i32 @VEC_fieldoff_s_base_iterate(ptr noundef %0, i32 noundef %6, ptr noundef nonnull %2) #23, !range !746
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9, !prof !1149, !llvm.loop !1218

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %13, %5 ], [ -1, %1 ]
  %11 = phi i32 [ %6, %5 ], [ 0, %1 ]
  %12 = load ptr, ptr %2, align 8, !tbaa !725
  %13 = load i64, ptr %12, align 8, !tbaa !1152
  %14 = icmp eq i64 %13, %10
  br i1 %14, label %15, label %5, !prof !1154

15:                                               ; preds = %9, %5, %1
  %16 = phi i8 [ 0, %1 ], [ 0, %5 ], [ 1, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret i8 %16
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_index(ptr noundef readnone %0) unnamed_addr #16 !prof !1215 !PGOFuncName !1219 {
  %2 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_fieldoff_s_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1131 !PGOFuncName !1220 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1134

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !725
  ret void
}

; Function Attrs: optsize
declare i32 @asprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @ggc_alloc_string(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @insert_into_field_list(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #5 !prof !1221 !PGOFuncName !1222 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !923
  %5 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %4, ptr %5, align 8, !tbaa !923
  store ptr %1, ptr %3, align 8, !tbaa !923
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i64 @bitpos_of_field(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1223 !PGOFuncName !1224 {
  %2 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !833
  %4 = tail call i32 @host_integerp(ptr noundef %3, i32 noundef 0) #25
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6, !prof !1225

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_field_decl, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !833
  %9 = tail call i32 @host_integerp(ptr noundef %8, i32 noundef 0) #25
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %20, label %11, !prof !1225

11:                                               ; preds = %6
  %12 = load ptr, ptr %2, align 8, !tbaa !833
  %13 = getelementptr inbounds %struct.tree_int_cst, ptr %12, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !833
  %15 = shl i64 %14, 3
  %16 = load ptr, ptr %7, align 8, !tbaa !833
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %16, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !833
  %19 = add i64 %18, %15
  br label %20

20:                                               ; preds = %1, %6, %11
  %21 = phi i64 [ %19, %11 ], [ -1, %6 ], [ -1, %1 ]
  ret i64 %21
}

; Function Attrs: optsize
declare i32 @integer_zerop(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_last(ptr noundef readonly %0) unnamed_addr #3 !prof !1226 !PGOFuncName !1227 {
  %2 = load i32, ptr %0, align 8, !tbaa !1209
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_heap_safe_push(ptr nocapture noundef %0) unnamed_addr #6 !prof !1228 !PGOFuncName !1229 {
  tail call fastcc void @VEC_fieldoff_s_heap_reserve(ptr noundef %0) #23
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = tail call fastcc ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %2) #23
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_fieldoff_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 !prof !1228 !PGOFuncName !1230 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = tail call fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1231

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 24) #25
  store ptr %6, ptr %0, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @VEC_fieldoff_s_base_quick_push(ptr noundef %0) unnamed_addr #5 !prof !1228 !PGOFuncName !1232 {
  %2 = load i32, ptr %0, align 8, !tbaa !1209
  %3 = add i32 %2, 1
  store i32 %3, ptr %0, align 8, !tbaa !1209
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_fieldoff_s_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1228 !PGOFuncName !1233 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1234

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1235
  %6 = load i32, ptr %0, align 8, !tbaa !1209
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @pointer_map_insert(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @spec_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc ptr @VEC_fieldoff_s_base_address(ptr noundef readnone %0) unnamed_addr #16 !prof !1215 !PGOFuncName !1236 {
  %2 = icmp eq ptr %0, null
  %3 = getelementptr inbounds %struct.VEC_fieldoff_s_base, ptr %0, i64 0, i32 2
  %4 = select i1 %2, ptr null, ptr %3, !prof !1155
  ret ptr %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @fieldoff_compare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 !prof !1237 !PGOFuncName !1238 {
  %3 = load i64, ptr %0, align 8, !tbaa !1152
  %4 = load i64, ptr %1, align 8, !tbaa !1152
  %5 = icmp slt i64 %3, %4
  br i1 %5, label %17, label %6, !prof !1239

6:                                                ; preds = %2
  %7 = icmp sgt i64 %3, %4
  br i1 %7, label %17, label %8, !prof !1240

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.fieldoff, ptr %0, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !1164
  %11 = getelementptr inbounds %struct.fieldoff, ptr %1, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !1164
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
declare ptr @get_name(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef ptr @make_constraint_from_heapvar(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 !prof !1106 !PGOFuncName !1241 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !896
  %5 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !1058
  %7 = tail call fastcc ptr @heapvar_lookup(ptr noundef %4, i64 noundef %6) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %20, !prof !1108

9:                                                ; preds = %2
  %10 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 39), align 8, !tbaa !725
  %11 = tail call ptr @create_tmp_var_raw(ptr noundef %10, ptr noundef %1) #25
  %12 = getelementptr inbounds %struct.tree_decl_common, ptr %11, i64 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = or i64 %13, 33554432
  store i64 %14, ptr %12, align 8
  %15 = load ptr, ptr %3, align 8, !tbaa !896
  %16 = load i64, ptr %5, align 8, !tbaa !1058
  tail call fastcc void @heapvar_insert(ptr noundef %15, i64 noundef %16, ptr noundef %11) #23
  %17 = tail call fastcc ptr @get_var_ann(ptr noundef %11) #23
  %18 = load i8, ptr %17, align 8
  %19 = or i8 %18, 16
  store i8 %19, ptr %17, align 8
  br label %20

20:                                               ; preds = %9, %2
  %21 = phi ptr [ %11, %9 ], [ %7, %2 ]
  %22 = load ptr, ptr @cfun, align 8, !tbaa !725
  %23 = tail call fastcc ptr @gimple_referenced_vars(ptr noundef %22) #23
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25, !prof !1117

25:                                               ; preds = %20
  %26 = tail call zeroext i8 @add_referenced_var(ptr noundef nonnull %21) #25
  br label %27

27:                                               ; preds = %25, %20
  %28 = tail call fastcc ptr @new_var_info(ptr noundef nonnull %21, ptr noundef %1) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 1
  %30 = load i8, ptr %29, align 4
  %31 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 3
  store i64 0, ptr %31, align 8, !tbaa !1058
  %32 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 4
  %33 = or i8 %30, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, i8 -1, i64 16, i1 false)
  store i8 %33, ptr %29, align 4
  tail call fastcc void @insert_vi_for_tree(ptr noundef nonnull %21, ptr noundef %28) #23
  %34 = load i32, ptr %28, align 8, !tbaa !920
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %0, i32 noundef %34) #23
  ret ptr %28
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_code(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1242 !PGOFuncName !1243 {
  %2 = load i32, ptr %0, align 8
  %3 = and i32 %2, 255
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1244 !PGOFuncName !1245 {
  %3 = load ptr, ptr %1, align 8, !tbaa !725
  %4 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %3) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !1246

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3229, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef nonnull %1, i8 noundef zeroext 0) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_phi_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1247 !PGOFuncName !1248 {
  %2 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !833
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @get_use_from_ptr(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1249 !PGOFuncName !1250 {
  %2 = getelementptr inbounds %struct.ssa_use_operand_d, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !1251
  %4 = load ptr, ptr %3, align 8, !tbaa !725
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc nonnull ptr @gimple_phi_arg_imm_use_ptr(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1253 !PGOFuncName !1254 {
  %3 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %1) #23
  ret ptr %3
}

; Function Attrs: optsize
declare ptr @tree_strip_nop_conversions(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_phi_arg_def(ptr noundef %0, i64 noundef %1) unnamed_addr #6 !prof !1253 !PGOFuncName !1255 {
  %3 = trunc i64 %1 to i32
  %4 = tail call fastcc ptr @gimple_phi_arg(ptr noundef %0, i32 noundef %3) #23
  %5 = tail call fastcc ptr @get_use_from_ptr(ptr noundef nonnull %4) #23
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1256 !PGOFuncName !1257 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5, !prof !1258

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !1259
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %11, !prof !1261

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %9
  br label %11

11:                                               ; preds = %3, %5, %8
  %12 = phi ptr [ %10, %8 ], [ null, %5 ], [ null, %3 ]
  %13 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store ptr %12, ptr %2, align 8, !tbaa !725
  ret i32 %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1262 !PGOFuncName !1263 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1264

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !1259
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_last(ptr noundef readonly %0) unnamed_addr #3 !prof !1265 !PGOFuncName !1266 {
  %2 = load i32, ptr %0, align 8, !tbaa !1259
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %4
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1267 !PGOFuncName !1268 {
  %2 = load i32, ptr %0, align 8, !tbaa !1259
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 8, !tbaa !1259
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_call(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1269 !PGOFuncName !1270 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = icmp eq i32 %2, 8
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fndecl(ptr noundef %0) unnamed_addr #6 !prof !1271 !PGOFuncName !1272 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = load i64, ptr %2, align 8
  %4 = and i64 %3, 65535
  %5 = icmp eq i64 %4, 121
  br i1 %5, label %6, label %9, !prof !1273

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.tree_exp, ptr %2, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !833
  br label %9

9:                                                ; preds = %1, %6
  %10 = phi ptr [ %8, %6 ], [ null, %1 ]
  ret ptr %10
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_lhs(ptr noundef %0) unnamed_addr #6 !prof !1274 !PGOFuncName !1275 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1276 !PGOFuncName !1277 {
  %3 = add i32 %1, 3
  %4 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %3) #23
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_ptr_offset(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) unnamed_addr #6 !prof !1278 !PGOFuncName !1279 {
  %4 = alloca %struct.constraint_expr, align 8
  %5 = alloca %struct.constraint_expr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %7 = load i8, ptr @use_field_sensitive, align 1, !tbaa !833
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10, !prof !1280

9:                                                ; preds = %3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %88

10:                                               ; preds = %3
  %11 = icmp eq ptr %1, null
  br i1 %11, label %15, label %12, !prof !1281

12:                                               ; preds = %10
  %13 = tail call i32 @host_integerp(ptr noundef nonnull %1, i32 noundef 0) #25
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16, !prof !1282

15:                                               ; preds = %12, %10
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  br label %21

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.tree_int_cst, ptr %1, i64 0, i32 1
  %18 = load i64, ptr %17, align 8, !tbaa !833
  %19 = shl nsw i64 %18, 3
  tail call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef %2) #23
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %88, label %21, !prof !1283

21:                                               ; preds = %15, %16
  %22 = phi i64 [ -9223372036854775808, %15 ], [ %19, %16 ]
  %23 = load ptr, ptr %2, align 8, !tbaa !725
  %24 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %23) #23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %88, label %26, !prof !1284

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  br label %28

28:                                               ; preds = %26, %84
  %29 = phi i32 [ 0, %26 ], [ %86, %84 ]
  %30 = load ptr, ptr %2, align 8, !tbaa !725
  %31 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %30, i32 noundef %29) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false), !tbaa.struct !1070
  %32 = load i32, ptr %27, align 4, !tbaa !993
  %33 = call fastcc ptr @get_varinfo(i32 noundef %32) #23
  %34 = load i32, ptr %4, align 8, !tbaa !992
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %36, label %81, !prof !1285

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 1
  %38 = load i8, ptr %37, align 4
  %39 = and i8 %38, 8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %41, label %81, !prof !1286

41:                                               ; preds = %36
  %42 = icmp eq i64 %22, -9223372036854775808
  br i1 %42, label %43, label %59, !prof !1287

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 1
  %45 = getelementptr inbounds %struct.constraint_expr, ptr %5, i64 0, i32 2
  %46 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 7
  %47 = load ptr, ptr %46, align 8, !tbaa !896
  %48 = call fastcc ptr @lookup_vi_for_tree(ptr noundef %47) #23
  br label %49

49:                                               ; preds = %55, %43
  %50 = phi ptr [ %48, %43 ], [ %57, %55 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #24
  %51 = load i32, ptr %50, align 8, !tbaa !920
  store i32 %51, ptr %44, align 4, !tbaa !993
  store i32 2, ptr %5, align 8, !tbaa !992
  store i64 0, ptr %45, align 8, !tbaa !994
  %52 = load i32, ptr %27, align 4, !tbaa !993
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %55, label %54, !prof !1288

54:                                               ; preds = %49
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %5) #23
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct.variable_info, ptr %50, i64 0, i32 2
  %57 = load ptr, ptr %56, align 8, !tbaa !923
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #24
  %58 = icmp eq ptr %57, null
  br i1 %58, label %84, label %49, !prof !1288, !llvm.loop !1289

59:                                               ; preds = %41
  %60 = icmp slt i64 %22, 0
  %61 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 3
  %62 = load i64, ptr %61, align 8, !tbaa !1058
  %63 = add i64 %62, %22
  %64 = icmp ult i64 %62, %63
  %65 = select i1 %60, i1 %64, i1 false
  %66 = select i1 %65, i64 0, i64 %63
  %67 = call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %33, i64 noundef %66) #23
  %68 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 3
  %69 = load i64, ptr %68, align 8, !tbaa !1058
  %70 = icmp eq i64 %69, %66
  br i1 %70, label %79, label %71

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !923
  %74 = icmp eq ptr %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  %77 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %78 = load i32, ptr %73, align 8, !tbaa !920
  store i32 %78, ptr %76, align 4, !tbaa !993
  store i32 2, ptr %6, align 8, !tbaa !992
  store i64 0, ptr %77, align 8, !tbaa !994
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %2, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %79

79:                                               ; preds = %75, %71, %59
  %80 = load i32, ptr %67, align 8, !tbaa !920
  store i32 %80, ptr %27, align 4, !tbaa !993
  br label %81

81:                                               ; preds = %28, %36, %79
  %82 = phi i64 [ 0, %79 ], [ 0, %36 ], [ %22, %28 ]
  %83 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 %82, ptr %83, align 8, !tbaa !994
  br label %84

84:                                               ; preds = %55, %81
  %85 = load ptr, ptr %2, align 8, !tbaa !725
  call fastcc void @VEC_ce_s_base_replace(ptr noundef %85, i32 noundef %29, ptr noundef nonnull %4) #23
  %86 = add nuw i32 %29, 1
  %87 = icmp eq i32 %86, %24
  br i1 %87, label %88, label %28, !prof !1290, !llvm.loop !1291

88:                                               ; preds = %84, %21, %16, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @process_all_all_constraints(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1292 !PGOFuncName !1293 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %0) #23
  %6 = icmp ult i32 %5, 2
  br i1 %6, label %10, label %7, !prof !1294

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %1) #23
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %10, label %36, !prof !1295

10:                                               ; preds = %7, %2
  %11 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %63, label %13, !prof !1296

13:                                               ; preds = %10, %32
  %14 = phi i32 [ %33, %32 ], [ 0, %10 ]
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %32, label %17, !prof !1297

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !tbaa !725
  %19 = getelementptr inbounds { i64, i64 }, ptr %18, i64 0, i32 1
  br label %20

20:                                               ; preds = %17, %20
  %21 = phi i32 [ 0, %17 ], [ %29, %20 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !725
  %23 = load i64, ptr %18, align 8
  %24 = load i64, ptr %19, align 8
  %25 = load i64, ptr %22, align 8
  %26 = getelementptr inbounds { i64, i64 }, ptr %22, i64 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = tail call fastcc ptr @new_constraint(i64 %23, i64 %24, i64 %25, i64 %27) #23
  tail call fastcc void @process_constraint(ptr noundef %28) #23
  %29 = add i32 %21, 1
  %30 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %29, ptr noundef nonnull %4) #23, !range !746
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %20, !prof !1298, !llvm.loop !1299

32:                                               ; preds = %20, %13
  %33 = add i32 %14, 1
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %33, ptr noundef nonnull %3) #23, !range !746
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %63, label %13, !prof !1300, !llvm.loop !1301

36:                                               ; preds = %7
  %37 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull @.str.63) #23
  %38 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %43, %36
  %41 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %63, label %53

43:                                               ; preds = %36, %43
  %44 = phi i32 [ %50, %43 ], [ 0, %36 ]
  %45 = load ptr, ptr %4, align 8, !tbaa !725
  %46 = load i64, ptr %45, align 8
  %47 = getelementptr inbounds { i64, i64 }, ptr %45, i64 0, i32 1
  %48 = load i64, ptr %47, align 8
  %49 = tail call fastcc ptr @new_constraint(i64 %37, i64 0, i64 %46, i64 %48) #23
  tail call fastcc void @process_constraint(ptr noundef %49) #23
  %50 = add i32 %44, 1
  %51 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %1, i32 noundef %50, ptr noundef nonnull %4) #23, !range !746
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %40, label %43, !llvm.loop !1302

53:                                               ; preds = %40, %53
  %54 = phi i32 [ %60, %53 ], [ 0, %40 ]
  %55 = load ptr, ptr %3, align 8, !tbaa !725
  %56 = load i64, ptr %55, align 8
  %57 = getelementptr inbounds { i64, i64 }, ptr %55, i64 0, i32 1
  %58 = load i64, ptr %57, align 8
  %59 = tail call fastcc ptr @new_constraint(i64 %56, i64 %58, i64 %37, i64 0) #23
  tail call fastcc void @process_constraint(ptr noundef %59) #23
  %60 = add i32 %54, 1
  %61 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %0, i32 noundef %60, ptr noundef nonnull %3) #23, !range !746
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %53, !llvm.loop !1303

63:                                               ; preds = %53, %32, %40, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_ce_s_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1304 !PGOFuncName !1305 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1306

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_deref(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1307 !PGOFuncName !1308 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr %0, align 8, !tbaa !725
  %4 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %27, label %6, !prof !1309

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !725
  %9 = load i32, ptr %8, align 8, !tbaa !992
  switch i32 %9, label %21 [
    i32 0, label %10
    i32 2, label %11
    i32 1, label %12
  ], !prof !1310

10:                                               ; preds = %6
  store i32 1, ptr %8, align 8, !tbaa !992
  br label %22

11:                                               ; preds = %6
  store i32 0, ptr %8, align 8, !tbaa !992
  br label %22

12:                                               ; preds = %6
  %13 = tail call fastcc i64 @new_scalar_tmp_constraint_exp(ptr noundef nonnull @.str.64) #23
  %14 = load i64, ptr %8, align 8
  %15 = getelementptr inbounds { i64, i64 }, ptr %8, i64 0, i32 1
  %16 = load i64, ptr %15, align 8
  %17 = tail call fastcc ptr @new_constraint(i64 %13, i64 0, i64 %14, i64 %16) #23
  tail call fastcc void @process_constraint(ptr noundef %17) #23
  %18 = lshr i64 %13, 32
  %19 = trunc i64 %18 to i32
  %20 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  store i32 %19, ptr %20, align 4, !tbaa !993
  br label %22

21:                                               ; preds = %6
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3090, ptr noundef nonnull @.str.27) #25
  br label %22

22:                                               ; preds = %10, %12, %21, %11
  %23 = add i32 %7, 1
  %24 = load ptr, ptr %0, align 8, !tbaa !725
  %25 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %24, i32 noundef %23, ptr noundef nonnull %2) #23, !range !746
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %6, !prof !1311, !llvm.loop !1312

27:                                               ; preds = %22, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @lookup_vi_for_tree(ptr noundef %0) unnamed_addr #6 !prof !1313 !PGOFuncName !1314 {
  %2 = load ptr, ptr @vi_for_tree, align 8, !tbaa !725
  %3 = tail call ptr @pointer_map_contains(ptr noundef %2, ptr noundef %0) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5, !prof !1315

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi ptr [ %6, %5 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: optsize
declare i32 @gimple_call_flags(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_const_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1316 !PGOFuncName !1317 {
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %6 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1318

8:                                                ; preds = %2
  %9 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 5, ptr %10, align 4, !tbaa !993
  %11 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %11, align 8, !tbaa !994
  store i32 0, ptr %3, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %12

12:                                               ; preds = %8, %2
  %13 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %35, label %15, !prof !1319

15:                                               ; preds = %12, %31
  %16 = phi i32 [ %32, %31 ], [ 0, %12 ]
  %17 = call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %16) #23
  %18 = call fastcc zeroext i8 @could_have_pointers(ptr noundef %17) #23, !range !770
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %31, label %20, !prof !1320

20:                                               ; preds = %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  call fastcc void @get_constraint_for(ptr noundef %17, ptr noundef nonnull %4) #23
  %21 = load ptr, ptr %4, align 8
  %22 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef 0, ptr noundef nonnull %5) #23, !range !746
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24, !prof !1321

24:                                               ; preds = %20, %24
  %25 = phi i32 [ %27, %24 ], [ 0, %20 ]
  %26 = load ptr, ptr %5, align 8, !tbaa !725
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef %26) #23
  %27 = add i32 %25, 1
  %28 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %21, i32 noundef %27, ptr noundef nonnull %5) #23, !range !746
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %24, !prof !1322, !llvm.loop !1323

30:                                               ; preds = %24, %20
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %31

31:                                               ; preds = %30, %15
  %32 = add nuw i32 %16, 1
  %33 = call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %15, label %35, !prof !1324, !llvm.loop !1325

35:                                               ; preds = %31, %12
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %36, align 4, !tbaa !993
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !994
  store i32 2, ptr %3, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_pure_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1326 !PGOFuncName !1327 {
  %3 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %21, label %6, !prof !1328

6:                                                ; preds = %2, %13
  %7 = phi i32 [ %15, %13 ], [ 0, %2 ]
  %8 = phi i8 [ %14, %13 ], [ 0, %2 ]
  %9 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %7) #23
  %10 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %9) #23, !range !770
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12, !prof !1329

12:                                               ; preds = %6
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %9) #23
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i8 [ 1, %12 ], [ %8, %6 ]
  %15 = add nuw i32 %7, 1
  %16 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %6, label %18, !prof !1330, !llvm.loop !1331

18:                                               ; preds = %13
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %24, !prof !1332

21:                                               ; preds = %2
  %22 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %23 = icmp eq ptr %22, null
  br i1 %23, label %31, label %24, !prof !1332

24:                                               ; preds = %21, %18
  %25 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_constraint_to(i32 noundef 5, ptr noundef %25) #23
  br label %28

26:                                               ; preds = %18
  %27 = icmp eq i8 %14, 0
  br i1 %27, label %31, label %28, !prof !1333

28:                                               ; preds = %24, %26
  %29 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 5, ptr %29, align 4, !tbaa !993
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %30, align 8, !tbaa !994
  store i32 0, ptr %3, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  br label %31

31:                                               ; preds = %21, %28, %26
  %32 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %32, align 4, !tbaa !993
  %33 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %33, align 8, !tbaa !994
  store i32 0, ptr %3, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_rhs_call(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1334 !PGOFuncName !1335 {
  %3 = alloca %struct.constraint_expr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %6 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %18, label %8, !prof !1336

8:                                                ; preds = %2, %14
  %9 = phi i32 [ %15, %14 ], [ 0, %2 ]
  %10 = tail call fastcc ptr @gimple_call_arg(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @could_have_pointers(ptr noundef %10) #23, !range !770
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !1337

13:                                               ; preds = %8
  tail call fastcc void @make_escape_constraint(ptr noundef %10) #23
  br label %14

14:                                               ; preds = %13, %8
  %15 = add nuw i32 %9, 1
  %16 = tail call fastcc i32 @gimple_call_num_args(ptr noundef %0) #23
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %8, label %18, !prof !1338, !llvm.loop !1339

18:                                               ; preds = %14, %2
  %19 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21, !prof !1340

21:                                               ; preds = %18
  %22 = tail call fastcc ptr @gimple_call_chain(ptr noundef %0) #23
  tail call fastcc void @make_escape_constraint(ptr noundef %22) #23
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr noundef %0) #23, !range !770
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %52, label %26, !prof !1341

26:                                               ; preds = %23
  %27 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %28 = icmp eq ptr %27, null
  br i1 %28, label %52, label %29, !prof !1342

29:                                               ; preds = %26
  %30 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  %31 = getelementptr inbounds %struct.tree_common, ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !833
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 262144
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %52, label %36, !prof !1343

36:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store ptr null, ptr %4, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %37 = tail call fastcc ptr @gimple_call_lhs(ptr noundef %0) #23
  call fastcc void @get_constraint_for_address_of(ptr noundef %37, ptr noundef nonnull %4) #23
  %38 = load ptr, ptr %4, align 8
  %39 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %5) #23, !range !746
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %36, %41
  %42 = phi i32 [ %48, %41 ], [ 0, %36 ]
  %43 = load ptr, ptr %5, align 8, !tbaa !725
  %44 = load i64, ptr %43, align 8
  %45 = getelementptr inbounds { i64, i64 }, ptr %43, i64 0, i32 1
  %46 = load i64, ptr %45, align 8
  %47 = tail call fastcc ptr @new_constraint(i64 12884901888, i64 0, i64 %44, i64 %46) #23
  tail call fastcc void @process_constraint(ptr noundef %47) #23
  %48 = add i32 %42, 1
  %49 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %38, i32 noundef %48, ptr noundef nonnull %5) #23, !range !746
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %41, !llvm.loop !1344

51:                                               ; preds = %41, %36
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  br label %52

52:                                               ; preds = %51, %29, %26, %23
  %53 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 1
  store i32 4, ptr %53, align 4, !tbaa !993
  %54 = getelementptr inbounds %struct.constraint_expr, ptr %3, i64 0, i32 2
  store i64 0, ptr %54, align 8, !tbaa !994
  store i32 0, ptr %3, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @handle_lhs_call(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef readonly %3) unnamed_addr #6 !prof !1345 !PGOFuncName !1346 {
  %5 = alloca ptr, align 8
  %6 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !725
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %5) #23
  %7 = and i32 %1, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9, !prof !1347

9:                                                ; preds = %4
  %10 = tail call fastcc ptr @get_vi_for_tree(ptr noundef %0) #23
  %11 = tail call fastcc ptr @make_constraint_from_heapvar(ptr noundef %10, ptr noundef nonnull @.str.65) #23
  %12 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 7
  %13 = load ptr, ptr %12, align 8, !tbaa !896
  %14 = getelementptr inbounds %struct.tree_decl_common, ptr %13, i64 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, -33554433
  store i64 %16, ptr %14, align 8
  %17 = getelementptr inbounds %struct.variable_info, ptr %11, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 127
  store i8 %19, ptr %17, align 4
  %20 = icmp eq ptr %3, null
  br i1 %20, label %26, label %21, !prof !1348

21:                                               ; preds = %9
  %22 = getelementptr inbounds %struct.tree_function_decl, ptr %3, i64 0, i32 5
  %23 = load i32, ptr %22, align 8
  %24 = and i32 %23, 6144
  %25 = icmp eq i32 %24, 6144
  br i1 %25, label %47, label %26, !prof !1349

26:                                               ; preds = %21, %9
  tail call fastcc void @make_constraint_from(ptr noundef nonnull %11, i32 noundef 4) #23
  br label %47

27:                                               ; preds = %4
  %28 = tail call fastcc i32 @VEC_ce_s_base_length(ptr noundef %2) #23
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %47, label %30, !prof !1350

30:                                               ; preds = %27
  %31 = tail call ptr @get_base_address(ptr noundef %0) #25
  %32 = icmp eq ptr %31, null
  br i1 %32, label %45, label %33, !prof !1350

33:                                               ; preds = %30
  %34 = load i64, ptr %31, align 8
  %35 = and i64 %34, 65535
  %36 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !759
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %45, !prof !1351

39:                                               ; preds = %33
  %40 = tail call fastcc zeroext i8 @is_global_var(ptr noundef nonnull %31) #23, !range !770
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %45, label %42, !prof !1352

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #24
  %43 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 1
  store i32 3, ptr %43, align 4, !tbaa !993
  %44 = getelementptr inbounds %struct.constraint_expr, ptr %6, i64 0, i32 2
  store i64 0, ptr %44, align 8, !tbaa !994
  store i32 0, ptr %6, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %5, ptr noundef nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #24
  br label %45

45:                                               ; preds = %42, %39, %33, %30
  %46 = load ptr, ptr %5, align 8, !tbaa !725
  call fastcc void @process_all_all_constraints(ptr noundef %46, ptr noundef %2) #23
  br label %47

47:                                               ; preds = %21, %26, %27, %45
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_fn(ptr noundef %0) unnamed_addr #6 !prof !1271 !PGOFuncName !1353 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_call_num_args(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1354 !PGOFuncName !1355 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = add i32 %2, -3
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #6 !prof !1356 !PGOFuncName !1357 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !1060
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %31, !prof !1358

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !1058
  %9 = icmp ugt i64 %8, %1
  br i1 %9, label %10, label %15, !prof !1359

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !896
  %13 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %12) #23
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15, !prof !1360

15:                                               ; preds = %6, %10
  %16 = phi ptr [ %0, %6 ], [ %13, %10 ]
  br label %17

17:                                               ; preds = %15, %27
  %18 = phi ptr [ %29, %27 ], [ %16, %15 ]
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !1058
  %21 = icmp ugt i64 %20, %1
  br i1 %21, label %27, label %22, !prof !1361

22:                                               ; preds = %17
  %23 = sub i64 %1, %20
  %24 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 4
  %25 = load i64, ptr %24, align 8, !tbaa !1059
  %26 = icmp ult i64 %23, %25
  br i1 %26, label %31, label %27, !prof !1362

27:                                               ; preds = %22, %17
  %28 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !923
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %17, !prof !1363, !llvm.loop !1364

31:                                               ; preds = %22, %27, %10, %2
  %32 = phi ptr [ null, %2 ], [ null, %10 ], [ %18, %22 ], [ null, %27 ]
  ret ptr %32
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @is_gimple_assign(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1365 !PGOFuncName !1366 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = icmp eq i32 %2, 6
  %4 = zext i1 %3 to i8
  ret i8 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_lhs(ptr noundef %0) unnamed_addr #6 !prof !1367 !PGOFuncName !1368 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_num_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1369 !PGOFuncName !1370 {
  %2 = getelementptr inbounds %struct.gimple_statement_base, ptr %0, i64 0, i32 3
  %3 = load i32, ptr %2, align 4, !tbaa !833
  ret i32 %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_assign_rhs1(ptr noundef %0) unnamed_addr #6 !prof !1371 !PGOFuncName !1372 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 1) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_structure_copy(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1373 !PGOFuncName !1374 {
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
  store ptr null, ptr %4, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !725
  call fastcc void @get_constraint_for(ptr noundef %0, ptr noundef nonnull %4) #23
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %5) #23
  %12 = load ptr, ptr %4, align 8
  %13 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %12, i32 noundef 0) #23
  store ptr %13, ptr %3, align 8, !tbaa !725
  %14 = load ptr, ptr %5, align 8
  %15 = tail call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef 0) #23
  %16 = load i32, ptr %13, align 8, !tbaa !992
  switch i32 %16, label %21 [
    i32 1, label %27
    i32 2, label %17
  ], !prof !1375

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.constraint_expr, ptr %13, i64 0, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa !993
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %27, label %24

21:                                               ; preds = %2
  %22 = load i32, ptr %15, align 8, !tbaa !992
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %27, label %28, !prof !1376

24:                                               ; preds = %17
  %25 = load i32, ptr %15, align 8, !tbaa !992
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %107, !prof !1376

27:                                               ; preds = %24, %2, %21, %17
  tail call fastcc void @process_all_all_constraints(ptr noundef %12, ptr noundef %14) #23
  br label %108

28:                                               ; preds = %21
  %29 = icmp eq i32 %16, 0
  br i1 %29, label %30, label %107, !prof !1377

30:                                               ; preds = %28
  switch i32 %22, label %107 [
    i32 0, label %31
    i32 2, label %31
  ], !prof !1378

31:                                               ; preds = %30, %30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #24
  %32 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %33 = call ptr @get_ref_base_and_extent(ptr noundef %1, ptr noundef nonnull %11, ptr noundef nonnull %9, ptr noundef nonnull %10) #25
  %34 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %106, label %36, !prof !1379

36:                                               ; preds = %31
  %37 = load i64, ptr %11, align 8, !tbaa !787
  %38 = load i64, ptr %8, align 8, !tbaa !787
  br label %39

39:                                               ; preds = %36, %101
  %40 = phi i64 [ %80, %101 ], [ %38, %36 ]
  %41 = phi i64 [ %81, %101 ], [ %37, %36 ]
  %42 = phi i32 [ %103, %101 ], [ 0, %36 ]
  %43 = phi i32 [ %102, %101 ], [ 0, %36 ]
  %44 = call fastcc ptr @VEC_ce_s_base_index(ptr noundef %14, i32 noundef %43) #23
  %45 = load ptr, ptr %3, align 8, !tbaa !725
  %46 = getelementptr inbounds %struct.constraint_expr, ptr %45, i64 0, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !993
  %48 = call fastcc ptr @get_varinfo(i32 noundef %47) #23
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %44, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !993
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 64
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %79, label %56, !prof !1380

56:                                               ; preds = %39
  %57 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !1058
  %59 = add i64 %41, %58
  %60 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %61 = load i64, ptr %60, align 8, !tbaa !1059
  %62 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %63 = load i64, ptr %62, align 8, !tbaa !1058
  %64 = add i64 %40, %63
  %65 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %66 = load i64, ptr %65, align 8, !tbaa !1059
  %67 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %59, i64 noundef %61, i64 noundef %64, i64 noundef %66) #23, !range !770
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %79, label %69, !prof !1381

69:                                               ; preds = %56
  %70 = load i64, ptr %45, align 8
  %71 = getelementptr inbounds { i64, i64 }, ptr %45, i64 0, i32 1
  %72 = load i64, ptr %71, align 8
  %73 = load i64, ptr %44, align 8
  %74 = getelementptr inbounds { i64, i64 }, ptr %44, i64 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = call fastcc ptr @new_constraint(i64 %70, i64 %72, i64 %73, i64 %75) #23
  call fastcc void @process_constraint(ptr noundef %76) #23
  %77 = load i64, ptr %11, align 8, !tbaa !787
  %78 = load i64, ptr %8, align 8, !tbaa !787
  br label %79

79:                                               ; preds = %69, %56, %39
  %80 = phi i64 [ %78, %69 ], [ %40, %56 ], [ %40, %39 ]
  %81 = phi i64 [ %77, %69 ], [ %41, %56 ], [ %41, %39 ]
  %82 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 3
  %83 = load i64, ptr %82, align 8, !tbaa !1058
  %84 = add i64 %81, %83
  %85 = getelementptr inbounds %struct.variable_info, ptr %48, i64 0, i32 4
  %86 = load i64, ptr %85, align 8, !tbaa !1059
  %87 = add i64 %84, %86
  %88 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %89 = load i64, ptr %88, align 8, !tbaa !1058
  %90 = add i64 %80, %89
  %91 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 4
  %92 = load i64, ptr %91, align 8, !tbaa !1059
  %93 = add i64 %90, %92
  %94 = icmp ugt i64 %87, %93
  br i1 %94, label %95, label %99, !prof !1382

95:                                               ; preds = %79
  %96 = add i32 %43, 1
  %97 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %14) #23
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %101, label %106, !prof !1383

99:                                               ; preds = %79
  %100 = add i32 %42, 1
  br label %101

101:                                              ; preds = %95, %99
  %102 = phi i32 [ %43, %99 ], [ %96, %95 ]
  %103 = phi i32 [ %100, %99 ], [ %42, %95 ]
  %104 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %12, i32 noundef %103, ptr noundef nonnull %3) #23, !range !746
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %39, !prof !1384

106:                                              ; preds = %101, %95, %31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  br label %108

107:                                              ; preds = %24, %30, %28
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3311, ptr noundef nonnull @.str.27) #25
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
define internal fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) unnamed_addr #6 !prof !1385 !PGOFuncName !1386 {
  %2 = tail call fastcc i32 @gimple_expr_code(ptr noundef %0) #23, !range !985
  %3 = tail call fastcc i32 @get_gimple_rhs_class(i32 noundef %2) #23, !range !947
  %4 = icmp eq i32 %3, 3
  br i1 %4, label %5, label %10, !prof !1387

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
define internal fastcc ptr @gimple_assign_rhs2(ptr noundef %0) unnamed_addr #6 !prof !1388 !PGOFuncName !1389 {
  %2 = tail call fastcc i32 @gimple_num_ops(ptr noundef %0) #23
  %3 = icmp ugt i32 %2, 2
  br i1 %3, label %4, label %6, !prof !1390

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_expr_type(ptr noundef %0) unnamed_addr #6 !prof !1391 !PGOFuncName !1392 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %19 [
    i8 8, label %4
    i8 6, label %6
    i8 1, label %17
  ], !prof !1393

4:                                                ; preds = %1
  %5 = tail call fastcc ptr @gimple_call_return_type(ptr noundef %0) #23
  br label %21

6:                                                ; preds = %1
  %7 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !985
  %8 = icmp eq i32 %7, 66
  br i1 %8, label %9, label %13, !prof !1394

9:                                                ; preds = %6
  %10 = tail call fastcc ptr @gimple_assign_rhs1(ptr noundef %0) #23
  %11 = getelementptr inbounds %struct.tree_common, ptr %10, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !833
  br label %21

13:                                               ; preds = %6
  %14 = tail call ptr @gimple_get_lhs(ptr noundef %0) #25
  %15 = getelementptr inbounds %struct.tree_common, ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !833
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 47), align 8, !tbaa !725
  br label %21

19:                                               ; preds = %1
  %20 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !725
  br label %21

21:                                               ; preds = %4, %13, %9, %19, %17
  %22 = phi ptr [ %18, %17 ], [ %20, %19 ], [ %5, %4 ], [ %12, %9 ], [ %16, %13 ]
  ret ptr %22
}

; Function Attrs: optsize
declare zeroext i8 @gimple_assign_single_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_safe_push(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1395 !PGOFuncName !1396 {
  tail call fastcc void @VEC_ce_s_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !725
  tail call fastcc void @VEC_ce_s_base_quick_push(ptr noundef %3, ptr noundef %1) #23
  ret void
}

; Function Attrs: optsize
declare ptr @get_base_address(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_escape_constraint(ptr noundef %0) unnamed_addr #6 !prof !1397 !PGOFuncName !1398 {
  tail call fastcc void @make_constraint_to(i32 noundef 3, ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @gimple_assign_cast_p(ptr noundef %0) unnamed_addr #6 !prof !1399 !PGOFuncName !1400 {
  %2 = tail call fastcc zeroext i8 @is_gimple_assign(ptr noundef %0) #23, !range !770
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %13, label %4, !prof !1401

4:                                                ; preds = %1
  %5 = tail call fastcc i32 @gimple_assign_rhs_code(ptr noundef %0) #23, !range !985
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
define internal fastcc ptr @gimple_return_retval(ptr noundef %0) unnamed_addr #6 !prof !1402 !PGOFuncName !1403 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 0) #23
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_noutputs(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !724 !PGOFuncName !1404 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %3 = load i8, ptr %2, align 1, !tbaa !833
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_output_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !724 !PGOFuncName !1405 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 3
  %4 = load i8, ptr %3, align 1, !tbaa !833
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 2655, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %2, %7
  %9 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %10 = load i8, ptr %9, align 8, !tbaa !833
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, %1
  %13 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %12) #23
  ret ptr %13
}

; Function Attrs: optsize
declare zeroext i8 @parse_output_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @build_fold_addr_expr_loc(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_asm_ninputs(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !724 !PGOFuncName !1406 {
  %2 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 8, !tbaa !833
  %4 = zext i8 %3 to i32
  ret i32 %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_asm_input_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !724 !PGOFuncName !1407 {
  %3 = getelementptr inbounds %struct.gimple_statement_asm, ptr %0, i64 0, i32 2
  %4 = load i8, ptr %3, align 8, !tbaa !833
  %5 = zext i8 %4 to i32
  %6 = icmp ult i32 %5, %1
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 2622, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %2, %7
  %9 = tail call fastcc ptr @gimple_op(ptr noundef nonnull %0, i32 noundef %1) #23
  ret ptr %9
}

; Function Attrs: optsize
declare zeroext i8 @parse_input_constraint(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_1(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 !prof !1408 !PGOFuncName !1409 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i32, ptr @flag_delete_null_pointer_checks, align 4, !tbaa !759
  %6 = icmp eq i32 %5, 0
  %7 = load i64, ptr %0, align 8
  br i1 %6, label %24, label %8, !prof !1410

8:                                                ; preds = %3
  %9 = and i64 %7, 65535
  %10 = icmp eq i64 %9, 23
  br i1 %10, label %11, label %17, !prof !1411

11:                                               ; preds = %8
  %12 = tail call i32 @integer_zerop(ptr noundef nonnull %0) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21, !prof !1412

14:                                               ; preds = %11
  %15 = load i64, ptr %0, align 8
  %16 = and i64 %15, 65535
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i64 [ %16, %14 ], [ %9, %8 ]
  %19 = phi i64 [ %15, %14 ], [ %7, %8 ]
  %20 = icmp eq i64 %18, 51
  br i1 %20, label %21, label %24, !prof !1413

21:                                               ; preds = %17, %11
  %22 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !993
  store i32 2, ptr %4, align 8, !tbaa !992
  %23 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %23, align 8, !tbaa !994
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

24:                                               ; preds = %17, %3
  %25 = phi i64 [ %19, %17 ], [ %7, %3 ]
  %26 = trunc i64 %25 to i32
  %27 = and i32 %26, 65535
  %28 = icmp eq i32 %27, 28
  br i1 %28, label %29, label %32, !prof !1414

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 2, ptr %30, align 4, !tbaa !993
  store i32 0, ptr %4, align 8, !tbaa !992
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %31, align 8, !tbaa !994
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

32:                                               ; preds = %24
  %33 = and i64 %25, 65535
  %34 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !759
  switch i32 %35, label %54 [
    i32 10, label %36
    i32 4, label %41
    i32 0, label %50
    i32 3, label %53
  ], !prof !1415

36:                                               ; preds = %32
  %37 = icmp eq i32 %27, 121
  br i1 %37, label %38, label %54, !prof !1416

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !833
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
  ], !prof !1417

43:                                               ; preds = %41
  %44 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %45 = load ptr, ptr %44, align 8, !tbaa !833
  tail call fastcc void @get_constraint_for_1(ptr noundef %45, ptr noundef %1, i8 noundef zeroext %2) #23
  tail call fastcc void @do_deref(ptr noundef %1) #23
  br label %57

46:                                               ; preds = %41, %41, %41
  tail call fastcc void @get_constraint_for_component_ref(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.tree_exp, ptr %0, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !833
  tail call fastcc void @get_constraint_for_1(ptr noundef %49, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

50:                                               ; preds = %32
  %51 = icmp eq i32 %27, 141
  br i1 %51, label %52, label %54, !prof !1418

52:                                               ; preds = %50
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

53:                                               ; preds = %32
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %0, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %57

54:                                               ; preds = %32, %50, %41, %36
  store i32 2, ptr %4, align 8, !tbaa !992
  %55 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 1, ptr %55, align 4, !tbaa !993
  %56 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %56, align 8, !tbaa !994
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %57

57:                                               ; preds = %54, %53, %52, %47, %46, %43, %38, %29, %21
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_address_of(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1419 !PGOFuncName !1420 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  tail call fastcc void @get_constraint_for_1(ptr noundef %0, ptr noundef %1, i8 noundef zeroext 1) #23
  %4 = load ptr, ptr %1, align 8, !tbaa !725
  %5 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %17, label %7, !prof !1421

7:                                                ; preds = %2, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %2 ]
  %9 = load ptr, ptr %3, align 8, !tbaa !725
  %10 = load i32, ptr %9, align 8, !tbaa !992
  %11 = icmp eq i32 %10, 1
  %12 = select i1 %11, i32 0, i32 2, !prof !1422
  store i32 %12, ptr %9, align 8, !tbaa !992
  %13 = add i32 %8, 1
  %14 = load ptr, ptr %1, align 8, !tbaa !725
  %15 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %14, i32 noundef %13, ptr noundef nonnull %3) #23, !range !746
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7, !prof !1423, !llvm.loop !1424

17:                                               ; preds = %7, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_component_ref(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 !prof !1425 !PGOFuncName !1426 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.constraint_expr, align 8
  %8 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  store i64 -1, ptr %4, align 8, !tbaa !787
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  store i64 -1, ptr %5, align 8, !tbaa !787
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
  ], !prof !1427

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.tree_ssa_name, ptr %10, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !833
  %16 = load i64, ptr %15, align 8
  %17 = trunc i64 %16 to i16
  switch i16 %17, label %18 [
    i16 32, label %26
    i16 34, label %26
    i16 36, label %26
  ], !prof !1428

18:                                               ; preds = %13, %9
  %19 = and i64 %11, 65535
  %20 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !759
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %26, label %23, !prof !1429

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tree_exp, ptr %10, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !833
  br label %9, !llvm.loop !1430

26:                                               ; preds = %13, %13, %13, %9, %9, %9, %18
  %27 = and i64 %11, 65535
  %28 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !759
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %37, !prof !1431

31:                                               ; preds = %26
  %32 = tail call i32 @integer_zerop(ptr noundef nonnull %10) #25
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %37, label %34, !prof !1432

34:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #24
  %35 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 2
  store i64 0, ptr %35, align 8, !tbaa !994
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %7, i64 0, i32 1
  store i32 7, ptr %36, align 4, !tbaa !993
  store i32 0, ptr %7, align 8, !tbaa !992
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #24
  br label %160

37:                                               ; preds = %31, %26
  %38 = call ptr @get_ref_base_and_extent(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  call fastcc void @get_constraint_for_1(ptr noundef %38, ptr noundef %1, i8 noundef zeroext 1) #23
  %39 = load ptr, ptr %1, align 8, !tbaa !725
  %40 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %39) #23
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %44, label %42, !prof !1433

42:                                               ; preds = %37
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2973, ptr noundef nonnull @.str.27) #25
  %43 = load ptr, ptr %1, align 8, !tbaa !725
  br label %44

44:                                               ; preds = %37, %42
  %45 = phi ptr [ %39, %37 ], [ %43, %42 ]
  %46 = call fastcc ptr @VEC_ce_s_base_last(ptr noundef %45) #23
  %47 = load i32, ptr %46, align 8, !tbaa !992
  switch i32 %47, label %159 [
    i32 0, label %48
    i32 2, label %156
    i32 1, label %137
  ], !prof !1434

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  %50 = load i32, ptr %49, align 4, !tbaa !993
  %51 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %52 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 1
  %53 = load i8, ptr %52, align 4
  %54 = and i8 %53, 8
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56, !prof !1435

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %57, align 8, !tbaa !994
  br label %160

58:                                               ; preds = %48
  %59 = load i64, ptr %6, align 8, !tbaa !787
  %60 = call fastcc ptr @get_varinfo(i32 noundef %50) #23
  %61 = getelementptr inbounds %struct.variable_info, ptr %60, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !1060
  %63 = icmp ult i64 %59, %62
  %64 = load i64, ptr %5, align 8
  %65 = icmp ne i64 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %67, label %119, !prof !1436

67:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #24
  %68 = load i64, ptr %46, align 8
  store i64 %68, ptr %8, align 8
  call fastcc void @VEC_ce_s_base_pop(ptr noundef %45) #23
  %69 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 2
  store i64 0, ptr %69, align 8, !tbaa !994
  %70 = getelementptr inbounds %struct.constraint_expr, ptr %8, i64 0, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !993
  %72 = call fastcc ptr @get_varinfo(i32 noundef %71) #23
  %73 = icmp eq ptr %72, null
  br i1 %73, label %92, label %74, !prof !1437

74:                                               ; preds = %67
  %75 = icmp eq i8 %2, 0
  br label %76

76:                                               ; preds = %74, %88
  %77 = phi ptr [ %72, %74 ], [ %90, %88 ]
  %78 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 3
  %79 = load i64, ptr %78, align 8, !tbaa !1058
  %80 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 4
  %81 = load i64, ptr %80, align 8, !tbaa !1059
  %82 = load i64, ptr %6, align 8, !tbaa !787
  %83 = load i64, ptr %5, align 8, !tbaa !787
  %84 = call fastcc zeroext i8 @ranges_overlap_p(i64 noundef %79, i64 noundef %81, i64 noundef %82, i64 noundef %83) #23, !range !770
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %88, label %86, !prof !1438

86:                                               ; preds = %76
  %87 = load i32, ptr %77, align 8, !tbaa !920
  store i32 %87, ptr %70, align 4, !tbaa !993
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br i1 %75, label %88, label %96, !prof !1439

88:                                               ; preds = %86, %76
  %89 = getelementptr inbounds %struct.variable_info, ptr %77, i64 0, i32 2
  %90 = load ptr, ptr %89, align 8, !tbaa !923
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %76, !prof !1440, !llvm.loop !1441

92:                                               ; preds = %88, %67
  %93 = icmp eq i8 %2, 0
  br i1 %93, label %94, label %96, !prof !1442

94:                                               ; preds = %92
  %95 = load ptr, ptr %1, align 8, !tbaa !725
  br label %110

96:                                               ; preds = %86, %92
  %97 = load ptr, ptr %1, align 8, !tbaa !725
  %98 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %97) #23
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %110, !prof !1443

100:                                              ; preds = %96
  %101 = load i32, ptr %70, align 4, !tbaa !993
  %102 = call fastcc ptr @get_varinfo(i32 noundef %101) #23
  br label %103

103:                                              ; preds = %103, %100
  %104 = phi ptr [ %102, %100 ], [ %106, %103 ]
  %105 = getelementptr inbounds %struct.variable_info, ptr %104, i64 0, i32 2
  %106 = load ptr, ptr %105, align 8, !tbaa !923
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %103, !llvm.loop !1444

108:                                              ; preds = %103
  %109 = load i32, ptr %104, align 8, !tbaa !920
  store i32 %109, ptr %70, align 4, !tbaa !993
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef nonnull %1, ptr noundef nonnull %8) #23
  br label %118

110:                                              ; preds = %94, %96
  %111 = phi ptr [ %95, %94 ], [ %97, %96 ]
  %112 = call fastcc i32 @VEC_ce_s_base_length(ptr noundef %111) #23
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118, !prof !1445

114:                                              ; preds = %110
  %115 = call fastcc zeroext i8 @ref_contains_array_ref(ptr noundef %0) #23, !range !770
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3027, ptr noundef nonnull @.str.27) #25
  br label %118

118:                                              ; preds = %117, %114, %110, %108
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #24
  br label %160

119:                                              ; preds = %58
  %120 = icmp eq i64 %64, 0
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %122 = icmp eq ptr %121, null
  br i1 %120, label %123, label %130

123:                                              ; preds = %119
  br i1 %122, label %160, label %124

124:                                              ; preds = %123
  %125 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %126 = and i32 %125, 8
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %160, label %128

128:                                              ; preds = %124
  %129 = call i64 @fwrite(ptr nonnull @.str.60, i64 47, i64 1, ptr nonnull %121)
  br label %160

130:                                              ; preds = %119
  br i1 %122, label %160, label %131

131:                                              ; preds = %130
  %132 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %133 = and i32 %132, 8
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %160, label %135

135:                                              ; preds = %131
  %136 = call i64 @fwrite(ptr nonnull @.str.61, i64 45, i64 1, ptr nonnull %121)
  br label %160

137:                                              ; preds = %44
  %138 = load i64, ptr %6, align 8, !tbaa !787
  %139 = icmp eq i64 %138, -1
  br i1 %139, label %152, label %140, !prof !1446

140:                                              ; preds = %137
  %141 = load i64, ptr %4, align 8, !tbaa !787
  %142 = load i64, ptr %5, align 8, !tbaa !787
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %152, !prof !1447

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !833
  %147 = load i64, ptr %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = and i32 %148, 65535
  %150 = add nsw i32 %149, -15
  %151 = icmp ult i32 %150, 4
  br i1 %151, label %152, label %154, !prof !1448

152:                                              ; preds = %144, %140, %137
  %153 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 -9223372036854775808, ptr %153, align 8, !tbaa !994
  br label %160

154:                                              ; preds = %144
  %155 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 %138, ptr %155, align 8, !tbaa !994
  br label %160

156:                                              ; preds = %44
  store i32 0, ptr %46, align 8, !tbaa !992
  %157 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 1
  store i32 1, ptr %157, align 4, !tbaa !993
  %158 = getelementptr inbounds %struct.constraint_expr, ptr %46, i64 0, i32 2
  store i64 0, ptr %158, align 8, !tbaa !994
  br label %160

159:                                              ; preds = %44
  call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 3060, ptr noundef nonnull @.str.27) #25
  br label %160

160:                                              ; preds = %56, %154, %152, %159, %156, %118, %130, %131, %135, %123, %124, %128, %34
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @get_constraint_for_ssa_var(ptr noundef %0, ptr nocapture noundef %1, i8 noundef zeroext %2) unnamed_addr #6 !prof !1449 !PGOFuncName !1450 {
  %4 = alloca %struct.constraint_expr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #24
  %5 = load i64, ptr %0, align 8
  %6 = trunc i64 %5 to i16
  switch i16 %6, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
    i16 141, label %7
  ], !prof !1451

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !833
  %10 = load i64, ptr %9, align 8
  %11 = trunc i64 %10 to i16
  switch i16 %11, label %12 [
    i16 32, label %19
    i16 34, label %19
    i16 36, label %19
  ], !prof !1452

12:                                               ; preds = %7, %3
  %13 = and i64 %5, 65535
  %14 = getelementptr inbounds [0 x i32], ptr @tree_code_type, i64 0, i64 %13
  %15 = load i32, ptr %14, align 4, !tbaa !759
  %16 = icmp eq i32 %15, 3
  br i1 %16, label %19, label %17, !prof !1453

17:                                               ; preds = %12
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2699, ptr noundef nonnull @.str.27) #25
  %18 = load i64, ptr %0, align 8
  br label %19

19:                                               ; preds = %7, %7, %7, %3, %3, %3, %12, %17
  %20 = phi i64 [ %5, %7 ], [ %5, %7 ], [ %5, %7 ], [ %5, %3 ], [ %5, %3 ], [ %5, %3 ], [ %5, %12 ], [ %18, %17 ]
  %21 = and i64 %20, 65535
  %22 = icmp eq i64 %21, 141
  br i1 %22, label %23, label %33, !prof !1454

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.tree_ssa_name, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !833
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65535
  %28 = icmp ne i64 %27, 34
  %29 = and i64 %20, 4294967296
  %30 = icmp eq i64 %29, 0
  %31 = or i1 %30, %28
  br i1 %31, label %33, label %32, !prof !1455

32:                                               ; preds = %23
  tail call fastcc void @get_constraint_for_ssa_var(ptr noundef nonnull %25, ptr noundef %1, i8 noundef zeroext %2) #23
  br label %58

33:                                               ; preds = %23, %19
  %34 = tail call fastcc ptr @get_vi_for_tree(ptr noundef nonnull %0) #23
  %35 = load i32, ptr %34, align 8, !tbaa !920
  %36 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 1
  store i32 %35, ptr %36, align 4, !tbaa !993
  store i32 0, ptr %4, align 8, !tbaa !992
  %37 = getelementptr inbounds %struct.constraint_expr, ptr %4, i64 0, i32 2
  store i64 0, ptr %37, align 8, !tbaa !994
  %38 = icmp eq i32 %35, 1
  br i1 %38, label %39, label %44, !prof !1456

39:                                               ; preds = %33
  %40 = load i64, ptr %0, align 8
  %41 = and i64 %40, 1048576
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2719, ptr noundef nonnull @.str.27) #25
  store i32 2, ptr %4, align 8, !tbaa !992
  store i32 2, ptr %36, align 4, !tbaa !993
  br label %44

44:                                               ; preds = %43, %39, %33
  %45 = icmp eq i8 %2, 0
  br i1 %45, label %46, label %57, !prof !1457

46:                                               ; preds = %44
  %47 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = and i8 %48, 8
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %57, !prof !1458

51:                                               ; preds = %46, %51
  %52 = phi ptr [ %55, %51 ], [ %34, %46 ]
  %53 = load i32, ptr %52, align 8, !tbaa !920
  store i32 %53, ptr %36, align 4, !tbaa !993
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  %54 = getelementptr inbounds %struct.variable_info, ptr %52, i64 0, i32 2
  %55 = load ptr, ptr %54, align 8, !tbaa !923
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %51, !prof !1459, !llvm.loop !1460

57:                                               ; preds = %46, %44
  call fastcc void @VEC_ce_s_heap_safe_push(ptr noundef %1, ptr noundef nonnull %4) #23
  br label %58

58:                                               ; preds = %51, %57, %32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare ptr @get_ref_base_and_extent(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef zeroext i8 @ranges_overlap_p(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #16 !prof !1461 !PGOFuncName !1462 {
  %5 = icmp ult i64 %0, %2
  br i1 %5, label %11, label %6, !prof !1463

6:                                                ; preds = %4
  %7 = icmp eq i64 %3, -1
  %8 = add i64 %3, %2
  %9 = icmp ugt i64 %8, %0
  %10 = or i1 %7, %9
  br i1 %10, label %19, label %11, !prof !1464

11:                                               ; preds = %6, %4
  %12 = icmp ult i64 %2, %0
  br i1 %12, label %18, label %13, !prof !1465

13:                                               ; preds = %11
  %14 = icmp eq i64 %1, -1
  %15 = add i64 %1, %0
  %16 = icmp ugt i64 %15, %2
  %17 = or i1 %14, %16
  br i1 %17, label %19, label %18, !prof !1466

18:                                               ; preds = %13, %11
  br label %19

19:                                               ; preds = %13, %6, %18
  %20 = phi i8 [ 0, %18 ], [ 1, %6 ], [ 1, %13 ]
  ret i8 %20
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @ref_contains_array_ref(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !724 !PGOFuncName !1467 {
  %2 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %0) #23, !range !770
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.54, i32 noundef 1161, ptr noundef nonnull @.str.27) #25
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
  %13 = load ptr, ptr %12, align 8, !tbaa !833
  %14 = tail call fastcc zeroext i8 @handled_component_p(ptr noundef %13) #23, !range !770
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %6, !llvm.loop !1468

16:                                               ; preds = %11, %6
  %17 = phi i8 [ 1, %6 ], [ 0, %11 ]
  ret i8 %17
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc noundef zeroext i8 @handled_component_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !724 !PGOFuncName !1469 {
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
define internal fastcc nonnull ptr @gimple_phi_arg(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1249 !PGOFuncName !1470 {
  %3 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !833
  %5 = icmp ult i32 %4, %1
  br i1 %5, label %6, label %7, !prof !1471

6:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 3103, ptr noundef nonnull @.str.27) #25
  br label %7

7:                                                ; preds = %2, %6
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds %struct.gimple_statement_phi, ptr %0, i64 0, i32 4, i64 %8
  ret ptr %9
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_op(ptr noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1472 !PGOFuncName !1473 {
  %3 = tail call fastcc zeroext i8 @gimple_has_ops(ptr noundef %0) #23, !range !770
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %10, label %5, !prof !1474

5:                                                ; preds = %2
  %6 = tail call fastcc ptr @gimple_ops(ptr noundef %0) #23
  %7 = zext i32 %1 to i64
  %8 = getelementptr inbounds ptr, ptr %6, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !725
  br label %10

10:                                               ; preds = %2, %5
  %11 = phi ptr [ %9, %5 ], [ null, %2 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_has_ops(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1472 !PGOFuncName !1475 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = add nsw i32 %2, -1
  %4 = icmp ult i32 %3, 9
  %5 = zext i1 %4 to i8
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_ops(ptr noundef readonly %0) unnamed_addr #6 !prof !1472 !PGOFuncName !1476 {
  %2 = tail call fastcc i32 @gimple_statement_structure(ptr noundef %0) #23
  %3 = zext i32 %2 to i64
  %4 = getelementptr inbounds [0 x i64], ptr @gimple_ops_offset_, i64 0, i64 %3
  %5 = load i64, ptr %4, align 8, !tbaa !787
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8, !prof !1474

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1622, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %1, %7
  %9 = getelementptr inbounds i8, ptr %0, i64 %5
  ret ptr %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @gimple_statement_structure(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1472 !PGOFuncName !1477 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = tail call fastcc i32 @gss_for_code(i32 noundef %2) #23
  ret i32 %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @gss_for_code(i32 noundef %0) unnamed_addr #16 !prof !1472 !PGOFuncName !1478 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i32], ptr @gss_for_code_, i64 0, i64 %2
  %4 = load i32, ptr %3, align 4, !tbaa !759
  ret i32 %4
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc nonnull ptr @VEC_ce_s_base_index(ptr noundef readnone %0, i32 noundef %1) unnamed_addr #16 !prof !1479 !PGOFuncName !1480 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %3
  ret ptr %4
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #6 !prof !1481 !PGOFuncName !1482 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !1058
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %6, label %10, !prof !1483

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !896
  %9 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %8) #23
  br label %10

10:                                               ; preds = %6, %2
  %11 = phi ptr [ %0, %2 ], [ %9, %6 ]
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %15, %21 ], [ %11, %10 ]
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !923
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17, !prof !1484

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 3
  %19 = load i64, ptr %18, align 8, !tbaa !1058
  %20 = icmp ugt i64 %19, %1
  br i1 %20, label %26, label %21, !prof !1485

21:                                               ; preds = %17
  %22 = sub i64 %1, %19
  %23 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 4
  %24 = load i64, ptr %23, align 8, !tbaa !1059
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %26, label %12, !prof !1486, !llvm.loop !1487

26:                                               ; preds = %17, %12, %21
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_replace(ptr noundef writeonly %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #5 !prof !1278 !PGOFuncName !1488 {
  %4 = icmp eq ptr %2, null
  br i1 %4, label %8, label %5, !prof !1280

5:                                                ; preds = %3
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !1070
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_chain(ptr noundef %0) unnamed_addr #6 !prof !1489 !PGOFuncName !1490 {
  %2 = tail call fastcc ptr @gimple_op(ptr noundef %0, i32 noundef 2) #23
  ret ptr %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @make_constraint_to(i32 noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1491 !PGOFuncName !1492 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !725
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = zext nneg i32 %0 to i64
  %6 = shl nuw nsw i64 %5, 32
  call fastcc void @get_constraint_for(ptr noundef %1, ptr noundef nonnull %3) #23
  %7 = load ptr, ptr %3, align 8
  %8 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10, !prof !1493

10:                                               ; preds = %2, %10
  %11 = phi i32 [ %17, %10 ], [ 0, %2 ]
  %12 = load ptr, ptr %4, align 8, !tbaa !725
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds { i64, i64 }, ptr %12, i64 0, i32 1
  %15 = load i64, ptr %14, align 8
  %16 = tail call fastcc ptr @new_constraint(i64 %6, i64 0, i64 %13, i64 %15) #23
  tail call fastcc void @process_constraint(ptr noundef %16) #23
  %17 = add i32 %11, 1
  %18 = call fastcc i32 @VEC_ce_s_base_iterate(ptr noundef %7, i32 noundef %17, ptr noundef nonnull %4) #23, !range !746
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10, !prof !1494, !llvm.loop !1495

20:                                               ; preds = %10, %2
  call fastcc void @VEC_ce_s_heap_free(ptr noundef nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @gimple_call_return_slot_opt_p(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1334 !PGOFuncName !1496 {
  %2 = load i32, ptr %0, align 8
  %3 = lshr i32 %2, 18
  %4 = trunc i32 %3 to i8
  %5 = and i8 %4, 1
  ret i8 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @gimple_expr_code(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !1385 !PGOFuncName !1497 {
  %2 = tail call fastcc i32 @gimple_code(ptr noundef %0) #23, !range !947
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 6, label %4
    i8 1, label %4
    i8 8, label %8
  ], !prof !1498

4:                                                ; preds = %1, %1
  %5 = load i32, ptr %0, align 8
  %6 = lshr i32 %5, 16
  br label %8

7:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.62, i32 noundef 1446, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %1, %7, %4
  %9 = phi i32 [ %6, %4 ], [ 0, %7 ], [ 59, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 noundef %0) unnamed_addr #16 !prof !1385 !PGOFuncName !1499 {
  %2 = zext nneg i32 %0 to i64
  %3 = getelementptr inbounds [0 x i8], ptr @gimple_rhs_class_table, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !833
  %5 = zext i8 %4 to i32
  ret i32 %5
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @gimple_call_return_type(ptr noundef %0) unnamed_addr #6 !prof !724 !PGOFuncName !1500 {
  %2 = tail call fastcc ptr @gimple_call_fn(ptr noundef %0) #23
  %3 = getelementptr inbounds %struct.tree_common, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !833
  %5 = getelementptr inbounds %struct.tree_common, ptr %4, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !833
  %7 = getelementptr inbounds %struct.tree_common, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !833
  ret ptr %8
}

; Function Attrs: optsize
declare ptr @gimple_get_lhs(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_ce_s_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 !prof !1395 !PGOFuncName !1501 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = tail call fastcc i32 @VEC_ce_s_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1502

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 16) #25
  store ptr %6, ptr %0, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_ce_s_base_quick_push(ptr noundef %0, ptr noundef readonly %1) unnamed_addr #5 !prof !1395 !PGOFuncName !1503 {
  %3 = load i32, ptr %0, align 8, !tbaa !1259
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 8, !tbaa !1259
  %5 = icmp eq ptr %1, null
  br i1 %5, label %9, label %6, !prof !1504

6:                                                ; preds = %2
  %7 = zext i32 %3 to i64
  %8 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 2, i64 %7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1070
  br label %9

9:                                                ; preds = %6, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_ce_s_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1395 !PGOFuncName !1505 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1506

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_ce_s_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1507
  %6 = load i32, ptr %0, align 8, !tbaa !1259
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @bb_seq(ptr nocapture noundef readonly %0) unnamed_addr #2 !prof !1015 !PGOFuncName !1508 {
  %2 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 8, !tbaa !1509
  %4 = and i32 %3, 512
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %12, !prof !1510

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.basic_block_def, ptr %0, i64 0, i32 7
  %8 = load ptr, ptr %7, align 8, !tbaa !833
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10, !prof !1511

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !1512
  br label %12

12:                                               ; preds = %1, %6, %10
  %13 = phi ptr [ %11, %10 ], [ null, %6 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @gimple_seq_first(ptr noundef readonly %0) unnamed_addr #3 !prof !1015 !PGOFuncName !1514 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1511

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !1515
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ null, %1 ]
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @init_graph(i32 noundef %0) unnamed_addr #6 !prof !871 !PGOFuncName !1517 {
  %2 = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 128) #25
  store ptr %2, ptr @graph, align 8, !tbaa !725
  store i32 %0, ptr %2, align 8, !tbaa !756
  %3 = zext i32 %0 to i64
  %4 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %5 = load ptr, ptr @graph, align 8, !tbaa !725
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 1
  store ptr %4, ptr %6, align 8, !tbaa !908
  %7 = load i32, ptr %5, align 8, !tbaa !756
  %8 = zext i32 %7 to i64
  %9 = shl nuw nsw i64 %8, 2
  %10 = tail call ptr @xmalloc(i64 noundef %9) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !725
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 4
  store ptr %10, ptr %12, align 8, !tbaa !911
  %13 = load i32, ptr %11, align 8, !tbaa !756
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 2
  %16 = tail call ptr @xmalloc(i64 noundef %15) #25
  %17 = load ptr, ptr @graph, align 8, !tbaa !725
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %17, i64 0, i32 5
  store ptr %16, ptr %18, align 8, !tbaa !758
  %19 = tail call ptr @xcalloc(i64 noundef %3, i64 noundef 8) #25
  %20 = load ptr, ptr @graph, align 8, !tbaa !725
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %20, i64 0, i32 15
  store ptr %19, ptr %21, align 8, !tbaa !905
  %22 = load i32, ptr %20, align 8, !tbaa !756
  %23 = zext i32 %22 to i64
  %24 = tail call ptr @xcalloc(i64 noundef %23, i64 noundef 4) #25
  %25 = load ptr, ptr @graph, align 8, !tbaa !725
  %26 = getelementptr inbounds %struct.constraint_graph, ptr %25, i64 0, i32 7
  store ptr %24, ptr %26, align 8, !tbaa !909
  %27 = load i32, ptr %25, align 8, !tbaa !756
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = tail call ptr @xmalloc(i64 noundef %29) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !725
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 8
  store ptr %30, ptr %32, align 8, !tbaa !910
  %33 = load i32, ptr %31, align 8, !tbaa !756
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %50, label %35, !prof !880

35:                                               ; preds = %1
  %36 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !758
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !911
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ 0, %35 ], [ %46, %40 ]
  %42 = getelementptr inbounds i32, ptr %37, i64 %41
  %43 = trunc i64 %41 to i32
  store i32 %43, ptr %42, align 4, !tbaa !759
  %44 = getelementptr inbounds i32, ptr %30, i64 %41
  store i32 -1, ptr %44, align 4, !tbaa !759
  %45 = getelementptr inbounds i32, ptr %39, i64 %41
  store i32 -1, ptr %45, align 4, !tbaa !759
  %46 = add nuw nsw i64 %41, 1
  %47 = load i32, ptr %31, align 8, !tbaa !756
  %48 = zext i32 %47 to i64
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %40, label %50, !prof !1518, !llvm.loop !1519

50:                                               ; preds = %40, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_pred_graph() unnamed_addr #6 !prof !871 !PGOFuncName !1520 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @graph, align 8, !tbaa !725
  %3 = load i32, ptr %2, align 8, !tbaa !756
  %4 = zext i32 %3 to i64
  %5 = tail call ptr @xcalloc(i64 noundef %4, i64 noundef 8) #25
  %6 = load ptr, ptr @graph, align 8, !tbaa !725
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %6, i64 0, i32 2
  store ptr %5, ptr %7, align 8, !tbaa !1521
  %8 = load i32, ptr %6, align 8, !tbaa !756
  %9 = zext i32 %8 to i64
  %10 = tail call ptr @xcalloc(i64 noundef %9, i64 noundef 8) #25
  %11 = load ptr, ptr @graph, align 8, !tbaa !725
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %11, i64 0, i32 3
  store ptr %10, ptr %12, align 8, !tbaa !1522
  %13 = load i32, ptr %11, align 8, !tbaa !756
  %14 = zext i32 %13 to i64
  %15 = tail call ptr @xcalloc(i64 noundef %14, i64 noundef 4) #25
  %16 = load ptr, ptr @graph, align 8, !tbaa !725
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %16, i64 0, i32 9
  store ptr %15, ptr %17, align 8, !tbaa !1523
  %18 = load i32, ptr %16, align 8, !tbaa !756
  %19 = zext i32 %18 to i64
  %20 = tail call ptr @xcalloc(i64 noundef %19, i64 noundef 4) #25
  %21 = load ptr, ptr @graph, align 8, !tbaa !725
  %22 = getelementptr inbounds %struct.constraint_graph, ptr %21, i64 0, i32 10
  store ptr %20, ptr %22, align 8, !tbaa !1524
  %23 = load i32, ptr %21, align 8, !tbaa !756
  %24 = zext i32 %23 to i64
  %25 = tail call ptr @xcalloc(i64 noundef %24, i64 noundef 8) #25
  %26 = load ptr, ptr @graph, align 8, !tbaa !725
  %27 = getelementptr inbounds %struct.constraint_graph, ptr %26, i64 0, i32 11
  store ptr %25, ptr %27, align 8, !tbaa !1525
  %28 = load i32, ptr %26, align 8, !tbaa !756
  %29 = zext i32 %28 to i64
  %30 = tail call ptr @xcalloc(i64 noundef %29, i64 noundef 8) #25
  %31 = load ptr, ptr @graph, align 8, !tbaa !725
  %32 = getelementptr inbounds %struct.constraint_graph, ptr %31, i64 0, i32 12
  store ptr %30, ptr %32, align 8, !tbaa !1526
  %33 = load i32, ptr %31, align 8, !tbaa !756
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 2
  %36 = tail call ptr @xmalloc(i64 noundef %35) #25
  %37 = load ptr, ptr @graph, align 8, !tbaa !725
  %38 = getelementptr inbounds %struct.constraint_graph, ptr %37, i64 0, i32 6
  store ptr %36, ptr %38, align 8, !tbaa !1527
  %39 = load i32, ptr %37, align 8, !tbaa !756
  %40 = tail call ptr @sbitmap_alloc(i32 noundef %39) #25
  %41 = load ptr, ptr @graph, align 8, !tbaa !725
  %42 = getelementptr inbounds %struct.constraint_graph, ptr %41, i64 0, i32 13
  store ptr %40, ptr %42, align 8, !tbaa !1528
  %43 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %44 = load ptr, ptr @graph, align 8, !tbaa !725
  %45 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 14
  store ptr %43, ptr %45, align 8, !tbaa !1529
  %46 = getelementptr inbounds %struct.constraint_graph, ptr %44, i64 0, i32 13
  %47 = load ptr, ptr %46, align 8, !tbaa !1528
  tail call void @sbitmap_zero(ptr noundef %47) #25
  %48 = load ptr, ptr @varmap, align 8
  %49 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %48) #23
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %59, !prof !880

51:                                               ; preds = %72, %0
  %52 = phi ptr [ %48, %0 ], [ %73, %72 ]
  %53 = load ptr, ptr @graph, align 8, !tbaa !725
  %54 = load i32, ptr %53, align 8, !tbaa !756
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %79, label %56, !prof !880

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 6
  %58 = load ptr, ptr %57, align 8, !tbaa !1527
  br label %87

59:                                               ; preds = %0, %72
  %60 = phi ptr [ %73, %72 ], [ %48, %0 ]
  %61 = phi i32 [ %74, %72 ], [ 0, %0 ]
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %61) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 1
  %64 = load i8, ptr %63, align 4
  %65 = and i8 %64, 2
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %72, !prof !1530

67:                                               ; preds = %59
  %68 = load ptr, ptr @graph, align 8, !tbaa !725
  %69 = getelementptr inbounds %struct.constraint_graph, ptr %68, i64 0, i32 13
  %70 = load ptr, ptr %69, align 8, !tbaa !1528
  tail call fastcc void @SET_BIT(ptr noundef %70, i32 noundef %61) #23
  %71 = load ptr, ptr @varmap, align 8
  br label %72

72:                                               ; preds = %59, %67
  %73 = phi ptr [ %60, %59 ], [ %71, %67 ]
  %74 = add nuw i32 %61, 1
  %75 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %73) #23
  %76 = icmp ult i32 %74, %75
  br i1 %76, label %59, label %51, !prof !906, !llvm.loop !1531

77:                                               ; preds = %87
  %78 = load ptr, ptr @varmap, align 8
  br label %79

79:                                               ; preds = %77, %51
  %80 = phi ptr [ %78, %77 ], [ %52, %51 ]
  %81 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %80) #23
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %94, label %83, !prof !880

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %53, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !911
  %86 = load ptr, ptr @varmap, align 8
  br label %98

87:                                               ; preds = %56, %87
  %88 = phi i64 [ 0, %56 ], [ %90, %87 ]
  %89 = getelementptr inbounds i32, ptr %58, i64 %88
  store i32 -1, ptr %89, align 4, !tbaa !759
  %90 = add nuw nsw i64 %88, 1
  %91 = load i32, ptr %53, align 8, !tbaa !756
  %92 = zext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %87, label %77, !prof !1518, !llvm.loop !1532

94:                                               ; preds = %98, %79
  %95 = load ptr, ptr @constraints, align 8
  %96 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %95, i32 noundef 0, ptr noundef nonnull %1) #23, !range !746
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %251, label %105, !prof !880

98:                                               ; preds = %83, %98
  %99 = phi i64 [ 0, %83 ], [ %101, %98 ]
  %100 = getelementptr inbounds i32, ptr %85, i64 %99
  store i32 -1, ptr %100, align 4, !tbaa !759
  %101 = add nuw nsw i64 %99, 1
  %102 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %86) #23
  %103 = zext i32 %102 to i64
  %104 = icmp ult i64 %101, %103
  br i1 %104, label %98, label %94, !prof !906, !llvm.loop !1533

105:                                              ; preds = %94, %246
  %106 = phi i32 [ %247, %246 ], [ 0, %94 ]
  %107 = load ptr, ptr %1, align 8, !tbaa !725
  %108 = load i32, ptr %107, align 8, !tbaa.struct !1070
  %109 = getelementptr inbounds i8, ptr %107, i64 4
  %110 = load i32, ptr %109, align 4, !tbaa.struct !1534
  %111 = getelementptr inbounds i8, ptr %107, i64 8
  %112 = load i64, ptr %111, align 8, !tbaa.struct !1071
  %113 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1
  %114 = load i32, ptr %113, align 8, !tbaa.struct !1070
  %115 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa.struct !1534
  %117 = getelementptr inbounds %struct.constraint, ptr %107, i64 0, i32 1, i32 2
  %118 = load i64, ptr %117, align 8, !tbaa.struct !1071
  %119 = icmp eq i32 %108, 1
  br i1 %119, label %120, label %131, !prof !1535

120:                                              ; preds = %105
  %121 = icmp eq i64 %118, 0
  %122 = icmp eq i64 %112, 0
  %123 = select i1 %121, i1 %122, i1 false
  %124 = icmp eq i32 %114, 0
  %125 = select i1 %123, i1 %124, i1 false
  br i1 %125, label %126, label %246, !prof !1536

126:                                              ; preds = %120
  %127 = load ptr, ptr @graph, align 8, !tbaa !725
  %128 = load ptr, ptr @varmap, align 8
  %129 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %128) #23
  %130 = add i32 %129, %110
  tail call fastcc void @add_pred_graph_edge(ptr noundef %127, i32 noundef %130, i32 noundef %116) #23
  br label %246

131:                                              ; preds = %105
  switch i32 %114, label %217 [
    i32 1, label %132
    i32 2, label %146
  ], !prof !1537

132:                                              ; preds = %131
  %133 = icmp eq i64 %118, 0
  %134 = icmp eq i64 %112, 0
  %135 = select i1 %133, i1 %134, i1 false
  %136 = icmp eq i32 %108, 0
  %137 = and i1 %136, %135
  %138 = load ptr, ptr @graph, align 8, !tbaa !725
  br i1 %137, label %139, label %143, !prof !1538

139:                                              ; preds = %132
  %140 = load ptr, ptr @varmap, align 8
  %141 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %140) #23
  %142 = add i32 %141, %116
  tail call fastcc void @add_pred_graph_edge(ptr noundef %138, i32 noundef %110, i32 noundef %142) #23
  br label %246

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.constraint_graph, ptr %138, i64 0, i32 13
  %145 = load ptr, ptr %144, align 8, !tbaa !1528
  tail call fastcc void @RESET_BIT(ptr noundef %145, i32 noundef %110) #23
  br label %246

146:                                              ; preds = %131
  %147 = load ptr, ptr @graph, align 8, !tbaa !725
  %148 = getelementptr inbounds %struct.constraint_graph, ptr %147, i64 0, i32 12
  %149 = load ptr, ptr %148, align 8, !tbaa !1526
  %150 = zext i32 %110 to i64
  %151 = getelementptr inbounds ptr, ptr %149, i64 %150
  %152 = load ptr, ptr %151, align 8, !tbaa !725
  %153 = icmp eq ptr %152, null
  br i1 %153, label %154, label %163, !prof !1539

154:                                              ; preds = %146
  %155 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %156 = load ptr, ptr @graph, align 8, !tbaa !725
  %157 = getelementptr inbounds %struct.constraint_graph, ptr %156, i64 0, i32 12
  %158 = load ptr, ptr %157, align 8, !tbaa !1526
  %159 = getelementptr inbounds ptr, ptr %158, i64 %150
  store ptr %155, ptr %159, align 8, !tbaa !725
  %160 = load ptr, ptr %157, align 8, !tbaa !1526
  %161 = getelementptr inbounds ptr, ptr %160, i64 %150
  %162 = load ptr, ptr %161, align 8, !tbaa !725
  br label %163

163:                                              ; preds = %154, %146
  %164 = phi ptr [ %162, %154 ], [ %152, %146 ]
  %165 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %164, i32 noundef %116) #25
  %166 = load ptr, ptr @graph, align 8, !tbaa !725
  %167 = getelementptr inbounds %struct.constraint_graph, ptr %166, i64 0, i32 11
  %168 = load ptr, ptr %167, align 8, !tbaa !1525
  %169 = zext i32 %116 to i64
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169
  %171 = load ptr, ptr %170, align 8, !tbaa !725
  %172 = icmp eq ptr %171, null
  br i1 %172, label %173, label %182, !prof !1540

173:                                              ; preds = %163
  %174 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %175 = load ptr, ptr @graph, align 8, !tbaa !725
  %176 = getelementptr inbounds %struct.constraint_graph, ptr %175, i64 0, i32 11
  %177 = load ptr, ptr %176, align 8, !tbaa !1525
  %178 = getelementptr inbounds ptr, ptr %177, i64 %169
  store ptr %174, ptr %178, align 8, !tbaa !725
  %179 = load ptr, ptr %176, align 8, !tbaa !1525
  %180 = getelementptr inbounds ptr, ptr %179, i64 %169
  %181 = load ptr, ptr %180, align 8, !tbaa !725
  br label %182

182:                                              ; preds = %173, %163
  %183 = phi ptr [ %181, %173 ], [ %171, %163 ]
  %184 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %183, i32 noundef %110) #25
  %185 = load ptr, ptr @graph, align 8, !tbaa !725
  %186 = load ptr, ptr @varmap, align 8
  %187 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %186) #23
  %188 = add i32 %187, %110
  tail call fastcc void @add_implicit_graph_edge(ptr noundef %185, i32 noundef %188, i32 noundef %116) #23
  %189 = load ptr, ptr @graph, align 8, !tbaa !725
  %190 = getelementptr inbounds %struct.constraint_graph, ptr %189, i64 0, i32 13
  %191 = load ptr, ptr %190, align 8, !tbaa !1528
  tail call fastcc void @RESET_BIT(ptr noundef %191, i32 noundef %116) #23
  %192 = tail call fastcc ptr @get_varinfo(i32 noundef %116) #23
  %193 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 1
  %194 = load i8, ptr %193, align 4
  %195 = and i8 %194, 8
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %199, label %197, !prof !1541

197:                                              ; preds = %182
  %198 = load ptr, ptr @graph, align 8, !tbaa !725
  br label %212

199:                                              ; preds = %182
  %200 = getelementptr inbounds %struct.variable_info, ptr %192, i64 0, i32 7
  %201 = load ptr, ptr %200, align 8, !tbaa !896
  %202 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %201) #23
  %203 = load ptr, ptr @graph, align 8, !tbaa !725
  %204 = getelementptr inbounds %struct.constraint_graph, ptr %203, i64 0, i32 13
  br label %205

205:                                              ; preds = %205, %199
  %206 = phi ptr [ %202, %199 ], [ %210, %205 ]
  %207 = load ptr, ptr %204, align 8, !tbaa !1528
  %208 = load i32, ptr %206, align 8, !tbaa !920
  tail call fastcc void @RESET_BIT(ptr noundef %207, i32 noundef %208) #23
  %209 = getelementptr inbounds %struct.variable_info, ptr %206, i64 0, i32 2
  %210 = load ptr, ptr %209, align 8, !tbaa !923
  %211 = icmp eq ptr %210, null
  br i1 %211, label %212, label %205, !prof !1542, !llvm.loop !1543

212:                                              ; preds = %205, %197
  %213 = phi ptr [ %198, %197 ], [ %203, %205 ]
  %214 = getelementptr inbounds %struct.constraint_graph, ptr %213, i64 0, i32 14
  %215 = load ptr, ptr %214, align 8, !tbaa !1529
  %216 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %215, i32 noundef %116) #25
  br label %246

217:                                              ; preds = %131
  %218 = icmp ugt i32 %110, 1
  br i1 %218, label %219, label %232, !prof !1544

219:                                              ; preds = %217
  %220 = icmp ne i32 %110, %116
  %221 = icmp eq i64 %112, 0
  %222 = select i1 %220, i1 %221, i1 false
  %223 = icmp eq i64 %118, 0
  %224 = select i1 %222, i1 %223, i1 false
  br i1 %224, label %225, label %232, !prof !1545

225:                                              ; preds = %219
  %226 = load ptr, ptr @graph, align 8, !tbaa !725
  tail call fastcc void @add_pred_graph_edge(ptr noundef %226, i32 noundef %110, i32 noundef %116) #23
  %227 = load ptr, ptr @graph, align 8, !tbaa !725
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
  br i1 %235, label %236, label %246, !prof !1546

236:                                              ; preds = %232
  br i1 %234, label %237, label %241, !prof !1547

237:                                              ; preds = %236
  %238 = load ptr, ptr @graph, align 8, !tbaa !725
  %239 = getelementptr inbounds %struct.constraint_graph, ptr %238, i64 0, i32 13
  %240 = load ptr, ptr %239, align 8, !tbaa !1528
  tail call fastcc void @RESET_BIT(ptr noundef %240, i32 noundef %110) #23
  br label %246

241:                                              ; preds = %236
  br i1 %233, label %242, label %246

242:                                              ; preds = %241
  %243 = load ptr, ptr @graph, align 8, !tbaa !725
  %244 = getelementptr inbounds %struct.constraint_graph, ptr %243, i64 0, i32 13
  %245 = load ptr, ptr %244, align 8, !tbaa !1528
  tail call fastcc void @RESET_BIT(ptr noundef %245, i32 noundef %116) #23
  br label %246

246:                                              ; preds = %143, %139, %225, %237, %242, %241, %232, %212, %120, %126
  %247 = add nuw nsw i32 %106, 1
  %248 = load ptr, ptr @constraints, align 8
  %249 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %248, i32 noundef %247, ptr noundef nonnull %1) #23, !range !746
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %105, !prof !1548, !llvm.loop !1549

251:                                              ; preds = %246, %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @perform_var_substitution(ptr noundef %0) unnamed_addr #6 !prof !871 !PGOFuncName !1550 {
  %2 = alloca %struct.bitmap_iterator, align 8
  %3 = alloca i32, align 4
  %4 = load i32, ptr %0, align 8, !tbaa !756
  %5 = zext i32 %4 to i64
  %6 = tail call fastcc ptr @init_scc_info(i64 noundef %5) #23
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  %7 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %7, ptr @pointer_equiv_class_table, align 8, !tbaa !725
  %8 = tail call ptr @htab_create(i64 noundef 511, ptr noundef nonnull @equiv_class_label_hash, ptr noundef nonnull @equiv_class_label_eq, ptr noundef nonnull @free) #25
  store ptr %8, ptr @location_equiv_class_table, align 8, !tbaa !725
  store i32 1, ptr @pointer_equiv_class, align 4, !tbaa !759
  store i32 1, ptr @location_equiv_class, align 4, !tbaa !759
  %9 = load ptr, ptr @varmap, align 8
  %10 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %9) #23
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %38, label %12, !prof !880

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %14

14:                                               ; preds = %12, %32
  %15 = phi ptr [ %9, %12 ], [ %33, %32 ]
  %16 = phi i64 [ 0, %12 ], [ %34, %32 ]
  %17 = load ptr, ptr %6, align 8, !tbaa !1551
  %18 = load ptr, ptr %13, align 8, !tbaa !1553
  %19 = getelementptr inbounds i32, ptr %18, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !759
  %21 = lshr i32 %20, 6
  %22 = zext nneg i32 %21 to i64
  %23 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %22
  %24 = load i64, ptr %23, align 8, !tbaa !787
  %25 = and i32 %20, 63
  %26 = zext nneg i32 %25 to i64
  %27 = shl nuw i64 1, %26
  %28 = and i64 %27, %24
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32, !prof !1554

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
  br i1 %37, label %14, label %38, !prof !906, !llvm.loop !1555

38:                                               ; preds = %32, %1
  %39 = load ptr, ptr %6, align 8, !tbaa !1551
  tail call void @sbitmap_zero(ptr noundef %39) #25
  %40 = load ptr, ptr @varmap, align 8
  %41 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %40) #23
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43, !prof !880

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  br label %54

45:                                               ; preds = %72, %38
  %46 = phi ptr [ %40, %38 ], [ %73, %72 ]
  %47 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %46) #23
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %145, label %49, !prof !880

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 11
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 10
  br label %78

54:                                               ; preds = %43, %72
  %55 = phi ptr [ %40, %43 ], [ %73, %72 ]
  %56 = phi i64 [ 0, %43 ], [ %74, %72 ]
  %57 = load ptr, ptr %6, align 8, !tbaa !1551
  %58 = load ptr, ptr %44, align 8, !tbaa !1553
  %59 = getelementptr inbounds i32, ptr %58, i64 %56
  %60 = load i32, ptr %59, align 4, !tbaa !759
  %61 = lshr i32 %60, 6
  %62 = zext nneg i32 %61 to i64
  %63 = getelementptr inbounds %struct.simple_bitmap_def, ptr %57, i64 0, i32 3, i64 %62
  %64 = load i64, ptr %63, align 8, !tbaa !787
  %65 = and i32 %60, 63
  %66 = zext nneg i32 %65 to i64
  %67 = shl nuw i64 1, %66
  %68 = and i64 %67, %64
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %72, !prof !1556

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
  br i1 %77, label %54, label %45, !prof !906, !llvm.loop !1557

78:                                               ; preds = %49, %139
  %79 = phi ptr [ %46, %49 ], [ %140, %139 ]
  %80 = phi i64 [ 0, %49 ], [ %141, %139 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  %81 = load ptr, ptr %50, align 8, !tbaa !1525
  %82 = getelementptr inbounds ptr, ptr %81, i64 %80
  %83 = load ptr, ptr %82, align 8, !tbaa !725
  %84 = icmp eq ptr %83, null
  br i1 %84, label %139, label %85, !prof !1558

85:                                               ; preds = %78
  %86 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  %87 = load ptr, ptr %50, align 8, !tbaa !1525
  %88 = getelementptr inbounds ptr, ptr %87, i64 %80
  %89 = load ptr, ptr %88, align 8, !tbaa !725
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %2, ptr noundef %89, ptr noundef nonnull %3) #23
  %90 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !770
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %109, label %92, !prof !1559

92:                                               ; preds = %85, %92
  %93 = load ptr, ptr %51, align 8, !tbaa !1523
  %94 = load ptr, ptr %52, align 8, !tbaa !1553
  %95 = load i32, ptr %3, align 4, !tbaa !759
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !759
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i32, ptr %93, i64 %99
  %101 = load i32, ptr %100, align 4, !tbaa !759
  %102 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %86, i32 noundef %101) #25
  call fastcc void @bmp_iter_next(ptr noundef nonnull %2, ptr noundef nonnull %3) #23
  %103 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %2, ptr noundef nonnull %3) #23, !range !770
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %92, !prof !1560, !llvm.loop !1561

105:                                              ; preds = %92
  %106 = load ptr, ptr %50, align 8, !tbaa !1525
  %107 = getelementptr inbounds ptr, ptr %106, i64 %80
  %108 = load ptr, ptr %107, align 8, !tbaa !725
  br label %109

109:                                              ; preds = %105, %85
  %110 = phi ptr [ %108, %105 ], [ %89, %85 ]
  tail call void @bitmap_obstack_free(ptr noundef %110) #25
  %111 = load ptr, ptr %50, align 8, !tbaa !1525
  %112 = getelementptr inbounds ptr, ptr %111, i64 %80
  store ptr null, ptr %112, align 8, !tbaa !725
  %113 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !725
  %114 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %113, ptr noundef %86) #23
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %120, !prof !1562

116:                                              ; preds = %109
  %117 = load i32, ptr @location_equiv_class, align 4, !tbaa !759
  %118 = add nsw i32 %117, 1
  store i32 %118, ptr @location_equiv_class, align 4, !tbaa !759
  %119 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !725
  tail call fastcc void @equiv_class_add(ptr noundef %119, i32 noundef %117, ptr noundef %86) #23
  br label %134

120:                                              ; preds = %109
  %121 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %122 = icmp eq ptr %121, null
  br i1 %122, label %133, label %123, !prof !1563

123:                                              ; preds = %120
  %124 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = trunc i64 %80 to i32
  %129 = tail call fastcc ptr @get_varinfo(i32 noundef %128) #23
  %130 = getelementptr inbounds %struct.variable_info, ptr %129, i64 0, i32 6
  %131 = load ptr, ptr %130, align 8, !tbaa !736
  %132 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %121, ptr noundef nonnull @.str.74, ptr noundef %131) #23
  br label %133

133:                                              ; preds = %127, %123, %120
  tail call void @bitmap_obstack_free(ptr noundef %86) #25
  br label %134

134:                                              ; preds = %133, %116
  %135 = phi i32 [ %117, %116 ], [ %114, %133 ]
  %136 = load ptr, ptr %53, align 8, !tbaa !1524
  %137 = getelementptr inbounds i32, ptr %136, i64 %80
  store i32 %135, ptr %137, align 4, !tbaa !759
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
  br i1 %144, label %78, label %145, !prof !906, !llvm.loop !1564

145:                                              ; preds = %139, %45
  %146 = phi ptr [ %46, %45 ], [ %140, %139 ]
  %147 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %148 = icmp eq ptr %147, null
  br i1 %148, label %193, label %149, !prof !872

149:                                              ; preds = %145
  %150 = load i32, ptr @dump_flags, align 4, !tbaa !759
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
  %163 = load ptr, ptr %157, align 8, !tbaa !1528
  %164 = trunc i64 %162 to i32
  %165 = lshr i64 %162, 6
  %166 = getelementptr inbounds %struct.simple_bitmap_def, ptr %163, i64 0, i32 3, i64 %165
  %167 = load i64, ptr %166, align 8, !tbaa !787
  %168 = and i64 %162, 63
  %169 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %170 = shl nuw i64 1, %168
  %171 = and i64 %167, %170
  %172 = icmp eq i64 %171, 0
  %173 = select i1 %172, ptr @.str.77, ptr @.str.76
  %174 = tail call fastcc ptr @get_varinfo(i32 noundef %164) #23
  %175 = getelementptr inbounds %struct.variable_info, ptr %174, i64 0, i32 6
  %176 = load ptr, ptr %175, align 8, !tbaa !736
  %177 = load ptr, ptr %158, align 8, !tbaa !1523
  %178 = load ptr, ptr %159, align 8, !tbaa !1553
  %179 = getelementptr inbounds i32, ptr %178, i64 %162
  %180 = load i32, ptr %179, align 4, !tbaa !759
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds i32, ptr %177, i64 %181
  %183 = load i32, ptr %182, align 4, !tbaa !759
  %184 = load ptr, ptr %160, align 8, !tbaa !1524
  %185 = getelementptr inbounds i32, ptr %184, i64 %181
  %186 = load i32, ptr %185, align 4, !tbaa !759
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %169, ptr noundef nonnull @.str.75, ptr noundef nonnull %173, i32 noundef %164, ptr noundef %176, i32 noundef %183, i32 noundef %186) #23
  %188 = add nuw nsw i64 %162, 1
  %189 = load ptr, ptr @varmap, align 8
  %190 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %189) #23
  %191 = zext i32 %190 to i64
  %192 = icmp ult i64 %188, %191
  br i1 %192, label %161, label %193, !llvm.loop !1565

193:                                              ; preds = %161, %153, %149, %145
  %194 = phi ptr [ %146, %153 ], [ %146, %149 ], [ %146, %145 ], [ %189, %161 ]
  %195 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %194) #23
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %233, label %197, !prof !880

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.scc_info, ptr %6, i64 0, i32 3
  %199 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %200

200:                                              ; preds = %197, %227
  %201 = phi ptr [ %194, %197 ], [ %228, %227 ]
  %202 = phi i64 [ 0, %197 ], [ %229, %227 ]
  %203 = load ptr, ptr %198, align 8, !tbaa !1553
  %204 = getelementptr inbounds i32, ptr %203, i64 %202
  %205 = load i32, ptr %204, align 4, !tbaa !759
  %206 = load ptr, ptr %199, align 8, !tbaa !1523
  %207 = zext i32 %205 to i64
  %208 = getelementptr inbounds i32, ptr %206, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !759
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %227, !prof !1566

211:                                              ; preds = %200
  %212 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %213 = icmp eq ptr %212, null
  br i1 %213, label %223, label %214, !prof !1567

214:                                              ; preds = %211
  %215 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %216 = and i32 %215, 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %214
  %219 = tail call fastcc ptr @get_varinfo(i32 noundef %205) #23
  %220 = getelementptr inbounds %struct.variable_info, ptr %219, i64 0, i32 6
  %221 = load ptr, ptr %220, align 8, !tbaa !736
  %222 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %212, ptr noundef nonnull @.str.78, ptr noundef %221) #23
  br label %223

223:                                              ; preds = %218, %214, %211
  %224 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !862
  %225 = add i32 %224, 1
  store i32 %225, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 1), align 4, !tbaa !862
  tail call fastcc void @clear_edges_for_node(ptr noundef nonnull %0, i32 noundef %205) #23
  %226 = load ptr, ptr @varmap, align 8
  br label %227

227:                                              ; preds = %223, %200
  %228 = phi ptr [ %226, %223 ], [ %201, %200 ]
  %229 = add nuw nsw i64 %202, 1
  %230 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %228) #23
  %231 = zext i32 %230 to i64
  %232 = icmp ult i64 %229, %231
  br i1 %232, label %200, label %233, !prof !906, !llvm.loop !1568

233:                                              ; preds = %227, %193
  ret ptr %6
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @rewrite_constraints(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !871 !PGOFuncName !1569 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load i32, ptr %0, align 8, !tbaa !756
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %13, !prof !880

6:                                                ; preds = %18, %2
  %7 = load ptr, ptr @constraints, align 8
  %8 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %7, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %86, label %10, !prof !880

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %12 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %22

13:                                               ; preds = %2, %18
  %14 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %15 = tail call fastcc i32 @find(i32 noundef %14) #23
  %16 = icmp eq i32 %15, %14
  br i1 %16, label %18, label %17, !prof !1570

17:                                               ; preds = %13
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2347, ptr noundef nonnull @.str.27) #25
  br label %18

18:                                               ; preds = %17, %13
  %19 = add nuw i32 %14, 1
  %20 = load i32, ptr %0, align 8, !tbaa !756
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %13, label %6, !prof !1518, !llvm.loop !1571

22:                                               ; preds = %10, %81
  %23 = phi i32 [ 0, %10 ], [ %82, %81 ]
  %24 = load ptr, ptr %3, align 8, !tbaa !725
  %25 = getelementptr inbounds i8, ptr %24, i64 4
  %26 = load i32, ptr %25, align 4, !tbaa.struct !1534
  %27 = getelementptr inbounds %struct.constraint, ptr %24, i64 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa.struct !1534
  %29 = tail call fastcc i32 @find(i32 noundef %26) #23
  %30 = tail call fastcc i32 @find(i32 noundef %28) #23
  %31 = load ptr, ptr %11, align 8, !tbaa !1553
  %32 = zext i32 %29 to i64
  %33 = getelementptr inbounds i32, ptr %31, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !759
  %35 = zext i32 %30 to i64
  %36 = getelementptr inbounds i32, ptr %31, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !759
  %38 = load ptr, ptr %12, align 8, !tbaa !1523
  %39 = zext i32 %34 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !759
  %42 = zext i32 %37 to i64
  %43 = getelementptr inbounds i32, ptr %38, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !759
  %45 = icmp eq i32 %41, 0
  br i1 %45, label %46, label %61, !prof !1572

46:                                               ; preds = %22
  %47 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %48 = icmp eq ptr %47, null
  br i1 %48, label %59, label %49, !prof !1573

49:                                               ; preds = %46
  %50 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %51 = and i32 %50, 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %26) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 6
  %56 = load ptr, ptr %55, align 8, !tbaa !736
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %47, ptr noundef nonnull @.str.79, ptr noundef %56) #23
  %58 = load ptr, ptr @dump_file, align 8, !tbaa !725
  tail call fastcc void @dump_constraint(ptr noundef %58, ptr noundef nonnull %24) #23
  br label %59

59:                                               ; preds = %53, %49, %46
  %60 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %60, i32 noundef %23) #23
  br label %81

61:                                               ; preds = %22
  %62 = icmp eq i32 %44, 0
  br i1 %62, label %63, label %78, !prof !1574

63:                                               ; preds = %61
  %64 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %65 = icmp eq ptr %64, null
  br i1 %65, label %76, label %66, !prof !1575

66:                                               ; preds = %63
  %67 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %66
  %71 = tail call fastcc ptr @get_varinfo(i32 noundef %28) #23
  %72 = getelementptr inbounds %struct.variable_info, ptr %71, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !736
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %64, ptr noundef nonnull @.str.79, ptr noundef %73) #23
  %75 = load ptr, ptr @dump_file, align 8, !tbaa !725
  tail call fastcc void @dump_constraint(ptr noundef %75, ptr noundef nonnull %24) #23
  br label %76

76:                                               ; preds = %70, %66, %63
  %77 = load ptr, ptr @constraints, align 8
  tail call fastcc void @VEC_constraint_t_base_replace(ptr noundef %77, i32 noundef %23) #23
  br label %81

78:                                               ; preds = %61
  %79 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %41) #23
  %80 = tail call fastcc i32 @find_equivalent_node(ptr noundef nonnull %0, i32 noundef %30, i32 noundef %44) #23
  store i32 %79, ptr %25, align 4, !tbaa !735
  store i32 %80, ptr %27, align 4, !tbaa !740
  br label %81

81:                                               ; preds = %78, %76, %59
  %82 = add nuw nsw i32 %23, 1
  %83 = load ptr, ptr @constraints, align 8
  %84 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %83, i32 noundef %82, ptr noundef nonnull %3) #23, !range !746
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %22, !prof !1548, !llvm.loop !1576

86:                                               ; preds = %81, %6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @build_succ_graph() unnamed_addr #6 !prof !871 !PGOFuncName !1577 {
  %1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #24
  %2 = load ptr, ptr @constraints, align 8
  %3 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %1) #23, !range !746
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %74, label %5, !prof !880

5:                                                ; preds = %0, %69
  %6 = phi i32 [ %70, %69 ], [ 0, %0 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !725
  %8 = icmp eq ptr %7, null
  br i1 %8, label %69, label %9, !prof !1578

9:                                                ; preds = %5
  %10 = load i32, ptr %7, align 8, !tbaa.struct !1070
  %11 = getelementptr inbounds i8, ptr %7, i64 4
  %12 = load i32, ptr %11, align 4, !tbaa.struct !1534
  %13 = getelementptr inbounds i8, ptr %7, i64 8
  %14 = load i64, ptr %13, align 8, !tbaa.struct !1071
  %15 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa.struct !1070
  %17 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa.struct !1534
  %19 = getelementptr inbounds %struct.constraint, ptr %7, i64 0, i32 1, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa.struct !1071
  %21 = tail call fastcc i32 @find(i32 noundef %12) #23
  %22 = tail call fastcc i32 @find(i32 noundef %18) #23
  %23 = icmp eq i32 %10, 1
  br i1 %23, label %24, label %36, !prof !1579

24:                                               ; preds = %9
  %25 = icmp eq i64 %20, 0
  %26 = icmp eq i64 %14, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i32 %16, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %69, !prof !1580

30:                                               ; preds = %24
  %31 = load ptr, ptr @graph, align 8, !tbaa !725
  %32 = load ptr, ptr @varmap, align 8
  %33 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %32) #23
  %34 = add i32 %33, %21
  %35 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %31, i32 noundef %34, i32 noundef %22) #23, !range !770
  br label %69

36:                                               ; preds = %9
  switch i32 %16, label %58 [
    i32 1, label %37
    i32 2, label %49
  ], !prof !1581

37:                                               ; preds = %36
  %38 = icmp eq i64 %20, 0
  %39 = icmp eq i64 %14, 0
  %40 = select i1 %38, i1 %39, i1 false
  %41 = icmp eq i32 %10, 0
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %43, label %69, !prof !1538

43:                                               ; preds = %37
  %44 = load ptr, ptr @graph, align 8, !tbaa !725
  %45 = load ptr, ptr @varmap, align 8
  %46 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %45) #23
  %47 = add i32 %46, %22
  %48 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %44, i32 noundef %21, i32 noundef %47) #23, !range !770
  br label %69

49:                                               ; preds = %36
  %50 = tail call fastcc i32 @find(i32 noundef %18) #23
  %51 = icmp eq i32 %50, %18
  br i1 %51, label %53, label %52, !prof !1582

52:                                               ; preds = %49
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1263, ptr noundef nonnull @.str.27) #25
  br label %53

53:                                               ; preds = %49, %52
  %54 = tail call fastcc ptr @get_varinfo(i32 noundef %21) #23
  %55 = getelementptr inbounds %struct.variable_info, ptr %54, i64 0, i32 8
  %56 = load ptr, ptr %55, align 8, !tbaa !769
  %57 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %56, i32 noundef %22) #25
  br label %69

58:                                               ; preds = %36
  %59 = icmp ugt i32 %21, 1
  br i1 %59, label %60, label %69, !prof !1583

60:                                               ; preds = %58
  %61 = icmp ne i32 %21, %22
  %62 = icmp eq i64 %14, 0
  %63 = select i1 %61, i1 %62, i1 false
  %64 = icmp eq i64 %20, 0
  %65 = select i1 %63, i1 %64, i1 false
  br i1 %65, label %66, label %69, !prof !1584

66:                                               ; preds = %60
  %67 = load ptr, ptr @graph, align 8, !tbaa !725
  %68 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %67, i32 noundef %21, i32 noundef %22) #23, !range !770
  br label %69

69:                                               ; preds = %30, %24, %53, %66, %60, %58, %37, %43, %5
  %70 = add i32 %6, 1
  %71 = load ptr, ptr @constraints, align 8
  %72 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %71, i32 noundef %70, ptr noundef nonnull %1) #23, !range !746
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %5, !prof !1548, !llvm.loop !1585

74:                                               ; preds = %69, %0
  %75 = tail call fastcc i32 @find(i32 noundef 6) #23
  %76 = load ptr, ptr @varmap, align 8
  %77 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %76) #23
  %78 = icmp ugt i32 %77, 8
  %79 = load ptr, ptr @graph, align 8, !tbaa !725
  br i1 %78, label %80, label %112, !prof !1586

80:                                               ; preds = %74, %106
  %81 = phi ptr [ %107, %106 ], [ %76, %74 ]
  %82 = phi ptr [ %108, %106 ], [ %79, %74 ]
  %83 = phi i32 [ %109, %106 ], [ 8, %74 ]
  %84 = getelementptr inbounds %struct.constraint_graph, ptr %82, i64 0, i32 13
  %85 = load ptr, ptr %84, align 8, !tbaa !1528
  %86 = lshr i32 %83, 6
  %87 = zext nneg i32 %86 to i64
  %88 = getelementptr inbounds %struct.simple_bitmap_def, ptr %85, i64 0, i32 3, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !787
  %90 = and i32 %83, 63
  %91 = zext nneg i32 %90 to i64
  %92 = shl nuw i64 1, %91
  %93 = and i64 %89, %92
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %106, !prof !1587

95:                                               ; preds = %80
  %96 = tail call fastcc ptr @get_varinfo(i32 noundef %83) #23
  %97 = getelementptr inbounds %struct.variable_info, ptr %96, i64 0, i32 1
  %98 = load i8, ptr %97, align 4
  %99 = and i8 %98, 64
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %106, label %101, !prof !1588

101:                                              ; preds = %95
  %102 = tail call fastcc i32 @find(i32 noundef %83) #23
  %103 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef nonnull %82, i32 noundef %102, i32 noundef %75) #23, !range !770
  %104 = load ptr, ptr @graph, align 8, !tbaa !725
  %105 = load ptr, ptr @varmap, align 8
  br label %106

106:                                              ; preds = %80, %95, %101
  %107 = phi ptr [ %81, %80 ], [ %81, %95 ], [ %105, %101 ]
  %108 = phi ptr [ %82, %80 ], [ %82, %95 ], [ %104, %101 ]
  %109 = add nuw i32 %83, 1
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %107) #23
  %111 = icmp ult i32 %109, %110
  br i1 %111, label %80, label %112, !prof !1589, !llvm.loop !1590

112:                                              ; preds = %106, %74
  %113 = phi ptr [ %79, %74 ], [ %108, %106 ]
  %114 = tail call fastcc i32 @find(i32 noundef 3) #23
  %115 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %113, i32 noundef %114, i32 noundef %75) #23, !range !770
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @free_var_substitution_info(ptr nocapture noundef %0) unnamed_addr #6 !prof !871 !PGOFuncName !1591 {
  tail call fastcc void @free_scc_info(ptr noundef %0) #23
  %2 = load ptr, ptr @graph, align 8, !tbaa !725
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 9
  %4 = load ptr, ptr %3, align 8, !tbaa !1523
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !1524
  tail call void @free(ptr noundef %6) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !1525
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 12
  %10 = load ptr, ptr %9, align 8, !tbaa !1526
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !1527
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %2, i64 0, i32 13
  %14 = load ptr, ptr %13, align 8, !tbaa !1528
  %15 = load ptr, ptr %14, align 8, !tbaa !1592
  tail call void @free(ptr noundef %15) #23
  %16 = load ptr, ptr %13, align 8, !tbaa !1528
  tail call void @free(ptr noundef %16) #23
  %17 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !725
  tail call void @htab_delete(ptr noundef %17) #25
  %18 = load ptr, ptr @location_equiv_class_table, align 8, !tbaa !725
  tail call void @htab_delete(ptr noundef %18) #25
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @move_complex_constraints(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !871 !PGOFuncName !1594 {
  %2 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = load ptr, ptr @constraints, align 8
  %4 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %46, label %6, !prof !880

6:                                                ; preds = %1, %41
  %7 = phi i32 [ %42, %41 ], [ 0, %1 ]
  %8 = load ptr, ptr %2, align 8, !tbaa !725
  %9 = icmp eq ptr %8, null
  br i1 %9, label %41, label %10, !prof !1578

10:                                               ; preds = %6
  %11 = load i32, ptr %8, align 8, !tbaa.struct !1070
  %12 = getelementptr inbounds i8, ptr %8, i64 4
  %13 = load i32, ptr %12, align 4, !tbaa.struct !1534
  %14 = getelementptr inbounds i8, ptr %8, i64 8
  %15 = load i64, ptr %14, align 8, !tbaa.struct !1071
  %16 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa.struct !1070
  %18 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 1
  %19 = load i32, ptr %18, align 4, !tbaa.struct !1534
  %20 = getelementptr inbounds %struct.constraint, ptr %8, i64 0, i32 1, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa.struct !1071
  %22 = icmp eq i32 %11, 1
  br i1 %22, label %39, label %23, !prof !1579

23:                                               ; preds = %10
  %24 = icmp eq i32 %17, 1
  br i1 %24, label %25, label %31, !prof !1595

25:                                               ; preds = %23
  %26 = tail call fastcc ptr @get_varinfo(i32 noundef %13) #23
  %27 = getelementptr inbounds %struct.variable_info, ptr %26, i64 0, i32 1
  %28 = load i8, ptr %27, align 4
  %29 = and i8 %28, 2
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %39, label %41, !prof !1596

31:                                               ; preds = %23
  %32 = icmp ne i32 %17, 2
  %33 = icmp ugt i32 %13, 1
  %34 = select i1 %32, i1 %33, i1 false
  br i1 %34, label %35, label %41, !prof !1597

35:                                               ; preds = %31
  %36 = icmp ne i64 %15, 0
  %37 = icmp ne i64 %21, 0
  %38 = select i1 %36, i1 true, i1 %37
  br i1 %38, label %39, label %41, !prof !1598

39:                                               ; preds = %35, %25, %10
  %40 = phi i32 [ %13, %10 ], [ %19, %25 ], [ %19, %35 ]
  tail call fastcc void @insert_into_complex(ptr noundef %0, i32 noundef %40, ptr noundef nonnull %8) #23
  br label %41

41:                                               ; preds = %39, %31, %35, %25, %6
  %42 = add nuw nsw i32 %7, 1
  %43 = load ptr, ptr @constraints, align 8
  %44 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %43, i32 noundef %42, ptr noundef nonnull %2) #23, !range !746
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %6, !prof !1548, !llvm.loop !1599

46:                                               ; preds = %41, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unite_pointer_equivalences(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !871 !PGOFuncName !1600 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %35, label %5, !prof !880

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  br label %8

8:                                                ; preds = %5, %29
  %9 = phi i64 [ 0, %5 ], [ %30, %29 ]
  %10 = load ptr, ptr %6, align 8, !tbaa !909
  %11 = getelementptr inbounds i32, ptr %10, i64 %9
  %12 = load i32, ptr %11, align 4, !tbaa !759
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %29, label %14, !prof !1558

14:                                               ; preds = %8
  %15 = load ptr, ptr %7, align 8, !tbaa !910
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds i32, ptr %15, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !759
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %29, label %20, !prof !1601

20:                                               ; preds = %14
  %21 = tail call fastcc i32 @find(i32 noundef %18) #23
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %29, !prof !1602

23:                                               ; preds = %20
  %24 = trunc i64 %9 to i32
  %25 = tail call fastcc i32 @find(i32 noundef %24) #23
  %26 = tail call fastcc zeroext i8 @unite(i32 noundef %21, i32 noundef %25) #23, !range !770
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %29, label %28, !prof !1603

28:                                               ; preds = %23
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %21, i32 noundef %24, i8 noundef zeroext 0) #23
  br label %29

29:                                               ; preds = %28, %23, %20, %14, %8
  %30 = add nuw nsw i64 %9, 1
  %31 = load ptr, ptr @varmap, align 8
  %32 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %31) #23
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %8, label %35, !prof !906, !llvm.loop !1604

35:                                               ; preds = %29, %1
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @find_indirect_cycles(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !871 !PGOFuncName !1605 {
  %2 = load i32, ptr %0, align 8, !tbaa !756
  %3 = zext i32 %2 to i64
  %4 = tail call fastcc ptr @init_scc_info(i64 noundef %3) #23
  %5 = icmp eq i32 %2, 0
  br i1 %5, label %30, label %6, !prof !880

6:                                                ; preds = %1, %22
  %7 = phi i32 [ %23, %22 ], [ 0, %1 ]
  %8 = load ptr, ptr %4, align 8, !tbaa !1551
  %9 = lshr i32 %7, 6
  %10 = zext nneg i32 %9 to i64
  %11 = getelementptr inbounds %struct.simple_bitmap_def, ptr %8, i64 0, i32 3, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !787
  %13 = and i32 %7, 63
  %14 = zext nneg i32 %13 to i64
  %15 = shl nuw i64 1, %14
  %16 = and i64 %12, %15
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %22, !prof !1606

18:                                               ; preds = %6
  %19 = tail call fastcc i32 @find(i32 noundef %7) #23
  %20 = icmp eq i32 %19, %7
  br i1 %20, label %21, label %22, !prof !1607

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
  br i1 %29, label %6, label %30, !prof !1608, !llvm.loop !1609

30:                                               ; preds = %22, %1
  tail call fastcc void @free_scc_info(ptr noundef %4) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @remove_preds_and_fake_succs(ptr nocapture noundef %0) unnamed_addr #6 !prof !871 !PGOFuncName !1610 {
  %2 = load ptr, ptr @varmap, align 8
  %3 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5, !prof !880

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %15

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %2, %1 ], [ %27, %26 ]
  %9 = phi i32 [ 0, %1 ], [ %29, %26 ]
  %10 = load i32, ptr %0, align 8, !tbaa !756
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %50, !prof !1586

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %14 = zext i32 %9 to i64
  br label %32

15:                                               ; preds = %5, %26
  %16 = phi ptr [ %2, %5 ], [ %27, %26 ]
  %17 = phi i64 [ 0, %5 ], [ %28, %26 ]
  %18 = phi i32 [ %3, %5 ], [ %29, %26 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !908
  %20 = getelementptr inbounds ptr, ptr %19, i64 %17
  %21 = load ptr, ptr %20, align 8, !tbaa !725
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23, !prof !1611

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
  br i1 %31, label %15, label %7, !prof !906, !llvm.loop !1612

32:                                               ; preds = %12, %43
  %33 = phi i32 [ %10, %12 ], [ %44, %43 ]
  %34 = phi i64 [ %14, %12 ], [ %45, %43 ]
  %35 = load ptr, ptr %13, align 8, !tbaa !908
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  %37 = load ptr, ptr %36, align 8, !tbaa !725
  %38 = icmp eq ptr %37, null
  br i1 %38, label %43, label %39, !prof !1613

39:                                               ; preds = %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %37) #25
  %40 = load ptr, ptr %13, align 8, !tbaa !908
  %41 = getelementptr inbounds ptr, ptr %40, i64 %34
  store ptr null, ptr %41, align 8, !tbaa !725
  %42 = load i32, ptr %0, align 8, !tbaa !756
  br label %43

43:                                               ; preds = %32, %39
  %44 = phi i32 [ %33, %32 ], [ %42, %39 ]
  %45 = add nuw nsw i64 %34, 1
  %46 = zext i32 %44 to i64
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %32, label %48, !prof !906, !llvm.loop !1614

48:                                               ; preds = %43
  %49 = load ptr, ptr @varmap, align 8
  br label %50

50:                                               ; preds = %48, %7
  %51 = phi ptr [ %49, %48 ], [ %8, %7 ]
  %52 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %51) #23
  store i32 %52, ptr %0, align 8, !tbaa !756
  %53 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !908
  %55 = zext i32 %52 to i64
  %56 = shl nuw nsw i64 %55, 3
  %57 = tail call ptr @xrealloc(ptr noundef %54, i64 noundef %56) #25
  store ptr %57, ptr %53, align 8, !tbaa !908
  %58 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %59 = load ptr, ptr %58, align 8, !tbaa !1521
  tail call void @free(ptr noundef %59) #23
  store ptr null, ptr %58, align 8, !tbaa !1521
  %60 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8, !tbaa !1522
  tail call void @free(ptr noundef %61) #23
  store ptr null, ptr %60, align 8, !tbaa !1522
  tail call void @bitmap_obstack_release(ptr noundef nonnull @predbitmap_obstack) #25
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solve_graph(ptr nocapture noundef readonly %0) unnamed_addr #6 !prof !871 !PGOFuncName !1615 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load i32, ptr %0, align 8, !tbaa !756
  store i32 0, ptr @changed_count, align 4, !tbaa !759
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %5) #25
  store ptr %6, ptr @changed, align 8, !tbaa !725
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %45, label %8, !prof !880

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
  br i1 %18, label %19, label %42, !prof !1616

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.variable_info, ptr %15, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !769
  %22 = load ptr, ptr %21, align 8, !tbaa !778
  %23 = icmp eq ptr %22, null
  br i1 %23, label %42, label %24, !prof !1617

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 8, !tbaa !908
  %26 = getelementptr inbounds ptr, ptr %25, i64 %13
  %27 = load ptr, ptr %26, align 8, !tbaa !725
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29, !prof !1618

29:                                               ; preds = %24
  %30 = load ptr, ptr %27, align 8, !tbaa !778
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %38, !prof !1619

32:                                               ; preds = %29, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !905
  %34 = getelementptr inbounds ptr, ptr %33, i64 %13
  %35 = load ptr, ptr %34, align 8, !tbaa !725
  %36 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %35) #23
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38, !prof !1620

38:                                               ; preds = %32, %29
  %39 = load ptr, ptr @changed, align 8, !tbaa !725
  tail call fastcc void @SET_BIT(ptr noundef %39, i32 noundef %14) #23
  %40 = load i32, ptr @changed_count, align 4, !tbaa !759
  %41 = add i32 %40, 1
  store i32 %41, ptr @changed_count, align 4, !tbaa !759
  br label %42

42:                                               ; preds = %38, %32, %19, %12
  %43 = add nuw nsw i64 %13, 1
  %44 = icmp eq i64 %43, %11
  br i1 %44, label %45, label %12, !prof !897, !llvm.loop !1621

45:                                               ; preds = %42, %1
  %46 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %47 = load i32, ptr @changed_count, align 4, !tbaa !759
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %187, label %49, !prof !880

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %51 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  br label %52

52:                                               ; preds = %49, %184
  %53 = tail call fastcc ptr @init_topo_info() #23
  %54 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !865
  %55 = add i32 %54, 1
  store i32 %55, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !865
  tail call void @bitmap_obstack_initialize(ptr noundef nonnull @iteration_obstack) #25
  tail call fastcc void @compute_topo_order(ptr noundef nonnull %0, ptr noundef %53) #23
  %56 = getelementptr inbounds %struct.topo_info, ptr %53, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !1622
  %58 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %57) #23
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %184, label %60, !prof !1624

60:                                               ; preds = %52, %180
  %61 = phi ptr [ %181, %180 ], [ %57, %52 ]
  %62 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %61) #23
  %63 = tail call fastcc i32 @find(i32 noundef %62) #23
  %64 = icmp eq i32 %63, %62
  br i1 %64, label %65, label %180, !prof !1625

65:                                               ; preds = %60
  %66 = tail call fastcc zeroext i8 @eliminate_indirect_cycles(i32 noundef %62) #23, !range !770
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68, !prof !1626

68:                                               ; preds = %65
  %69 = tail call fastcc i32 @find(i32 noundef %62) #23
  %70 = icmp eq i32 %69, %62
  br i1 %70, label %71, label %180, !prof !1627

71:                                               ; preds = %68, %65
  %72 = load ptr, ptr @changed, align 8, !tbaa !725
  %73 = lshr i32 %62, 6
  %74 = zext nneg i32 %73 to i64
  %75 = getelementptr inbounds %struct.simple_bitmap_def, ptr %72, i64 0, i32 3, i64 %74
  %76 = load i64, ptr %75, align 8, !tbaa !787
  %77 = and i32 %62, 63
  %78 = zext nneg i32 %77 to i64
  %79 = shl nuw i64 1, %78
  %80 = and i64 %76, %79
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %180, label %82, !prof !1628

82:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %83 = load ptr, ptr %50, align 8, !tbaa !905
  %84 = zext i32 %62 to i64
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !725
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %72, i32 noundef %62) #23
  %87 = load i32, ptr @changed_count, align 4, !tbaa !759
  %88 = add i32 %87, -1
  store i32 %88, ptr @changed_count, align 4, !tbaa !759
  %89 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %90 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !769
  %92 = getelementptr inbounds %struct.variable_info, ptr %89, i64 0, i32 9
  %93 = load ptr, ptr %92, align 8, !tbaa !1065
  %94 = tail call zeroext i8 @bitmap_and_compl(ptr noundef %46, ptr noundef %91, ptr noundef %93) #25
  %95 = load ptr, ptr %46, align 8, !tbaa !778
  %96 = icmp eq ptr %95, null
  br i1 %96, label %179, label %97, !prof !1629, !llvm.loop !1630

97:                                               ; preds = %82
  %98 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %99 = getelementptr inbounds %struct.variable_info, ptr %98, i64 0, i32 9
  %100 = load ptr, ptr %99, align 8, !tbaa !1065
  %101 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %100, ptr noundef nonnull %46) #25
  %102 = tail call fastcc ptr @get_varinfo(i32 noundef %62) #23
  %103 = getelementptr inbounds %struct.variable_info, ptr %102, i64 0, i32 8
  %104 = load ptr, ptr %103, align 8, !tbaa !769
  %105 = load ptr, ptr %104, align 8, !tbaa !778
  %106 = icmp eq ptr %105, null
  %107 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %128, label %109, !prof !1631

109:                                              ; preds = %97, %122
  %110 = phi i32 [ %123, %122 ], [ 0, %97 ]
  %111 = load ptr, ptr %3, align 8, !tbaa !725
  %112 = getelementptr inbounds %struct.constraint_expr, ptr %111, i64 0, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !735
  %114 = tail call fastcc i32 @find(i32 noundef %113) #23
  store i32 %114, ptr %112, align 4, !tbaa !735
  %115 = getelementptr inbounds %struct.constraint, ptr %111, i64 0, i32 1, i32 1
  %116 = load i32, ptr %115, align 4, !tbaa !740
  %117 = tail call fastcc i32 @find(i32 noundef %116) #23
  store i32 %117, ptr %115, align 4, !tbaa !740
  br i1 %106, label %118, label %121, !prof !1632

118:                                              ; preds = %109
  %119 = load i32, ptr %111, align 8, !tbaa !730
  %120 = icmp eq i32 %119, 1
  br i1 %120, label %122, label %121

121:                                              ; preds = %118, %109
  tail call fastcc void @do_complex_constraint(ptr noundef nonnull %0, ptr noundef nonnull %111, ptr noundef nonnull %46) #23
  br label %122

122:                                              ; preds = %118, %121
  %123 = add i32 %110, 1
  %124 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %86, i32 noundef %123, ptr noundef nonnull %3) #23, !range !746
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %109, !prof !1633, !llvm.loop !1634

126:                                              ; preds = %122
  %127 = load ptr, ptr %104, align 8, !tbaa !778
  br label %128

128:                                              ; preds = %126, %97
  %129 = phi ptr [ %105, %97 ], [ %127, %126 ]
  %130 = phi i32 [ 0, %97 ], [ %123, %126 ]
  store i32 %130, ptr %2, align 4, !tbaa !759
  %131 = icmp eq ptr %129, null
  br i1 %131, label %178, label %132, !prof !1629

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %133 = tail call fastcc i32 @find(i32 noundef 3) #23
  %134 = load ptr, ptr %51, align 8, !tbaa !908
  %135 = getelementptr inbounds ptr, ptr %134, i64 %84
  %136 = load ptr, ptr %135, align 8, !tbaa !725
  %137 = icmp eq ptr %136, null
  br i1 %137, label %177, label %138, !prof !1635

138:                                              ; preds = %132
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %136, ptr noundef nonnull %2) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !770
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %177, label %141, !prof !1636

141:                                              ; preds = %138
  %142 = icmp eq i32 %62, %133
  br label %143

143:                                              ; preds = %141, %174
  %144 = load i32, ptr %2, align 4, !tbaa !759
  %145 = tail call fastcc i32 @find(i32 noundef %144) #23
  %146 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %147 = getelementptr inbounds %struct.variable_info, ptr %146, i64 0, i32 8
  %148 = load ptr, ptr %147, align 8, !tbaa !769
  %149 = icmp eq i32 %145, %62
  br i1 %149, label %174, label %150, !prof !1637

150:                                              ; preds = %143
  br i1 %142, label %151, label %153, !prof !1638

151:                                              ; preds = %150
  %152 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %148, i32 noundef 3) #25
  br label %155

153:                                              ; preds = %150
  %154 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %148, ptr noundef nonnull %46, i64 noundef 0) #23
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i8 [ %152, %151 ], [ %154, %153 ]
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %174, label %158, !prof !1639

158:                                              ; preds = %155
  %159 = tail call fastcc ptr @get_varinfo(i32 noundef %145) #23
  %160 = getelementptr inbounds %struct.variable_info, ptr %159, i64 0, i32 8
  store ptr %148, ptr %160, align 8, !tbaa !769
  %161 = load ptr, ptr @changed, align 8, !tbaa !725
  %162 = lshr i32 %145, 6
  %163 = zext nneg i32 %162 to i64
  %164 = getelementptr inbounds %struct.simple_bitmap_def, ptr %161, i64 0, i32 3, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !787
  %166 = and i32 %145, 63
  %167 = zext nneg i32 %166 to i64
  %168 = shl nuw i64 1, %167
  %169 = and i64 %165, %168
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %174, !prof !1640

171:                                              ; preds = %158
  tail call fastcc void @SET_BIT(ptr noundef nonnull %161, i32 noundef %145) #23
  %172 = load i32, ptr @changed_count, align 4, !tbaa !759
  %173 = add i32 %172, 1
  store i32 %173, ptr @changed_count, align 4, !tbaa !759
  br label %174

174:                                              ; preds = %155, %171, %158, %143
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %175 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !770
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %177, label %143, !prof !1641, !llvm.loop !1642

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
  %181 = load ptr, ptr %56, align 8, !tbaa !1622
  %182 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %181) #23
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %60, !prof !1643, !llvm.loop !1630

184:                                              ; preds = %180, %52
  tail call fastcc void @free_topo_info(ptr noundef nonnull %53) #23
  tail call void @bitmap_obstack_release(ptr noundef nonnull @iteration_obstack) #25
  %185 = load i32, ptr @changed_count, align 4, !tbaa !759
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %52, !prof !1644, !llvm.loop !1645

187:                                              ; preds = %184, %45
  tail call void @bitmap_obstack_free(ptr noundef %46) #25
  %188 = load ptr, ptr @changed, align 8, !tbaa !725
  %189 = load ptr, ptr %188, align 8, !tbaa !1592
  tail call void @free(ptr noundef %189) #23
  tail call void @free(ptr noundef %188) #23
  tail call void @bitmap_obstack_release(ptr noundef nonnull @oldpta_obstack) #25
  ret void
}

; Function Attrs: optsize
declare ptr @xcalloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @xmalloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @sbitmap_alloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @sbitmap_zero(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @SET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 !prof !1646 !PGOFuncName !1647 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1592
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1648

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
  %15 = load i64, ptr %14, align 8, !tbaa !787
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !833
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1, !tbaa !833
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %29 = load i64, ptr %28, align 8, !tbaa !787
  %30 = or i64 %29, %27
  store i64 %30, ptr %28, align 8, !tbaa !787
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_pred_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1649 !PGOFuncName !1650 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !1522
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !725
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17, !prof !1651

10:                                               ; preds = %3
  %11 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %12 = load ptr, ptr %4, align 8, !tbaa !1522
  %13 = getelementptr inbounds ptr, ptr %12, i64 %6
  store ptr %11, ptr %13, align 8, !tbaa !725
  %14 = load ptr, ptr %4, align 8, !tbaa !1522
  %15 = getelementptr inbounds ptr, ptr %14, i64 %6
  %16 = load ptr, ptr %15, align 8, !tbaa !725
  br label %17

17:                                               ; preds = %10, %3
  %18 = phi ptr [ %16, %10 ], [ %8, %3 ]
  %19 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %18, i32 noundef %2) #25
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @RESET_BIT(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #18 !prof !1652 !PGOFuncName !1653 {
  %3 = load ptr, ptr %0, align 8, !tbaa !1592
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %11, !prof !1654

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
  %15 = load i64, ptr %14, align 8, !tbaa !787
  %16 = and i32 %1, 63
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw i64 1, %17
  %19 = and i64 %15, %18
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds i8, ptr %3, i64 %13
  %23 = load i8, ptr %22, align 1, !tbaa !833
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1, !tbaa !833
  br label %25

25:                                               ; preds = %5, %11, %21
  %26 = phi i64 [ %10, %5 ], [ %13, %11 ], [ %13, %21 ]
  %27 = phi i64 [ %8, %5 ], [ %18, %11 ], [ %18, %21 ]
  %28 = xor i64 %27, -1
  %29 = getelementptr inbounds %struct.simple_bitmap_def, ptr %0, i64 0, i32 3, i64 %26
  %30 = load i64, ptr %29, align 8, !tbaa !787
  %31 = and i64 %30, %28
  store i64 %31, ptr %29, align 8, !tbaa !787
  ret void
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_set_bit(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @add_implicit_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1655 !PGOFuncName !1656 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %26, label %5, !prof !1657

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !1521
  %8 = zext i32 %1 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !725
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19, !prof !1658

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !1521
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !725
  %16 = load ptr, ptr %6, align 8, !tbaa !1521
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !725
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %2) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %26, label %23, !prof !1659

23:                                               ; preds = %19
  %24 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !867
  %25 = add i32 %24, 1
  store i32 %25, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 6), align 4, !tbaa !867
  br label %26

26:                                               ; preds = %3, %23, %19
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_scc_info(i64 noundef %0) unnamed_addr #6 !prof !1660 !PGOFuncName !1661 {
  %2 = tail call ptr @xmalloc(i64 noundef 48) #25
  %3 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 4
  store i32 0, ptr %3, align 8, !tbaa !1662
  %4 = trunc i64 %0 to i32
  %5 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  store ptr %5, ptr %2, align 8, !tbaa !1551
  tail call void @sbitmap_zero(ptr noundef %5) #25
  %6 = tail call ptr @sbitmap_alloc(i32 noundef %4) #25
  %7 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !1663
  tail call void @sbitmap_zero(ptr noundef %6) #25
  %8 = shl nuw nsw i64 %0, 2
  %9 = tail call ptr @xmalloc(i64 noundef %8) #25
  %10 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 3
  store ptr %9, ptr %10, align 8, !tbaa !1553
  %11 = tail call ptr @xcalloc(i64 noundef %0, i64 noundef 4) #25
  %12 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !1664
  %13 = icmp eq i64 %0, 0
  br i1 %13, label %51, label %14, !prof !1665

14:                                               ; preds = %1
  %15 = load ptr, ptr %10, align 8, !tbaa !1553
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
  store i32 %24, ptr %28, align 4, !tbaa !759
  br label %29

29:                                               ; preds = %27, %21
  %30 = extractelement <4 x i1> %25, i64 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  %32 = or disjoint i64 %22, 1
  %33 = getelementptr inbounds i32, ptr %15, i64 %32
  %34 = or disjoint i32 %24, 1
  store i32 %34, ptr %33, align 4, !tbaa !759
  br label %35

35:                                               ; preds = %31, %29
  %36 = extractelement <4 x i1> %25, i64 2
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  %38 = or disjoint i64 %22, 2
  %39 = getelementptr inbounds i32, ptr %15, i64 %38
  %40 = or disjoint i32 %24, 2
  store i32 %40, ptr %39, align 4, !tbaa !759
  br label %41

41:                                               ; preds = %37, %35
  %42 = extractelement <4 x i1> %25, i64 3
  br i1 %42, label %43, label %47

43:                                               ; preds = %41
  %44 = or disjoint i64 %22, 3
  %45 = getelementptr inbounds i32, ptr %15, i64 %44
  %46 = or disjoint i32 %24, 3
  store i32 %46, ptr %45, align 4, !tbaa !759
  br label %47

47:                                               ; preds = %43, %41
  %48 = add i64 %22, 4
  %49 = add <4 x i64> %23, <i64 4, i64 4, i64 4, i64 4>
  %50 = icmp eq i64 %48, %17
  br i1 %50, label %51, label %21, !prof !1666, !llvm.loop !1667

51:                                               ; preds = %47, %1
  %52 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %53 = getelementptr inbounds %struct.scc_info, ptr %2, i64 0, i32 5
  store ptr %52, ptr %53, align 8, !tbaa !1670
  ret ptr %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @equiv_class_label_hash(ptr nocapture noundef readonly %0) #3 !prof !1671 !PGOFuncName !1672 {
  %2 = load i32, ptr %0, align 8, !tbaa !1673
  ret i32 %2
}

; Function Attrs: noinline nounwind optsize uwtable
define internal i32 @equiv_class_label_eq(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #6 !prof !1675 !PGOFuncName !1676 {
  %3 = load i32, ptr %0, align 8, !tbaa !1673
  %4 = load i32, ptr %1, align 8, !tbaa !1673
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %14, !prof !1677

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.equiv_class_label, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !1678
  %9 = getelementptr inbounds %struct.equiv_class_label, ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !1678
  %11 = tail call zeroext i8 @bitmap_equal_p(ptr noundef %8, ptr noundef %10) #25
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  br label %14

14:                                               ; preds = %6, %2
  %15 = phi i32 [ 0, %2 ], [ %13, %6 ]
  ret i32 %15
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @condense_visit(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1679 !PGOFuncName !1680 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1553
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !759
  %11 = icmp eq i32 %10, %2
  br i1 %11, label %13, label %12, !prof !1681

12:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1979, ptr noundef nonnull @.str.27) #25
  br label %13

13:                                               ; preds = %3, %12
  %14 = load ptr, ptr %1, align 8, !tbaa !1551
  tail call fastcc void @SET_BIT(ptr noundef %14, i32 noundef %2) #23
  %15 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !1662
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 8, !tbaa !1662
  %18 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !1664
  %20 = getelementptr inbounds i32, ptr %19, i64 %8
  store i32 %16, ptr %20, align 4, !tbaa !759
  %21 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !1522
  %23 = getelementptr inbounds ptr, ptr %22, i64 %8
  %24 = load ptr, ptr %23, align 8, !tbaa !725
  %25 = icmp eq ptr %24, null
  br i1 %25, label %80, label %26, !prof !1682

26:                                               ; preds = %13
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %24, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %80, label %29, !prof !1683

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %31

31:                                               ; preds = %29, %76
  %32 = phi ptr [ %19, %29 ], [ %77, %76 ]
  %33 = load ptr, ptr %6, align 8, !tbaa !1553
  %34 = load i32, ptr %4, align 4, !tbaa !759
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, ptr %33, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !759
  %38 = load ptr, ptr %30, align 8, !tbaa !1663
  %39 = lshr i32 %37, 6
  %40 = zext nneg i32 %39 to i64
  %41 = getelementptr inbounds %struct.simple_bitmap_def, ptr %38, i64 0, i32 3, i64 %40
  %42 = load i64, ptr %41, align 8, !tbaa !787
  %43 = and i32 %37, 63
  %44 = zext nneg i32 %43 to i64
  %45 = shl nuw i64 1, %44
  %46 = and i64 %45, %42
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %76, !prof !1684

48:                                               ; preds = %31
  %49 = load ptr, ptr %1, align 8, !tbaa !1551
  %50 = getelementptr inbounds %struct.simple_bitmap_def, ptr %49, i64 0, i32 3, i64 %40
  %51 = load i64, ptr %50, align 8, !tbaa !787
  %52 = and i64 %51, %45
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %56, !prof !1685

54:                                               ; preds = %48
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %37) #23
  %55 = load ptr, ptr %6, align 8, !tbaa !1553
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi ptr [ %55, %54 ], [ %33, %48 ]
  %58 = zext i32 %37 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !759
  %61 = getelementptr inbounds i32, ptr %57, i64 %8
  %62 = load i32, ptr %61, align 4, !tbaa !759
  %63 = icmp eq i32 %62, %2
  br i1 %63, label %65, label %64, !prof !1686

64:                                               ; preds = %56
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1997, ptr noundef nonnull @.str.27) #25
  br label %65

65:                                               ; preds = %56, %64
  %66 = load ptr, ptr %18, align 8, !tbaa !1664
  %67 = zext i32 %60 to i64
  %68 = getelementptr inbounds i32, ptr %66, i64 %67
  %69 = load i32, ptr %68, align 4, !tbaa !759
  %70 = zext i32 %62 to i64
  %71 = getelementptr inbounds i32, ptr %66, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !759
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %76, !prof !1687

74:                                               ; preds = %65
  %75 = getelementptr inbounds i32, ptr %66, i64 %8
  store i32 %69, ptr %75, align 4, !tbaa !759
  br label %76

76:                                               ; preds = %65, %74, %31
  %77 = phi ptr [ %66, %65 ], [ %66, %74 ], [ %32, %31 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %78 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %31, !prof !1688, !llvm.loop !1689

80:                                               ; preds = %76, %26, %13
  %81 = phi ptr [ %19, %26 ], [ %19, %13 ], [ %77, %76 ]
  %82 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !1521
  %84 = getelementptr inbounds ptr, ptr %83, i64 %8
  %85 = load ptr, ptr %84, align 8, !tbaa !725
  %86 = icmp eq ptr %85, null
  br i1 %86, label %141, label %87, !prof !1690

87:                                               ; preds = %80
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %85, ptr noundef nonnull %4) #23
  %88 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %89 = icmp eq i8 %88, 0
  br i1 %89, label %141, label %90, !prof !1691

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %92

92:                                               ; preds = %90, %137
  %93 = phi ptr [ %81, %90 ], [ %138, %137 ]
  %94 = load ptr, ptr %6, align 8, !tbaa !1553
  %95 = load i32, ptr %4, align 4, !tbaa !759
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, ptr %94, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !759
  %99 = load ptr, ptr %91, align 8, !tbaa !1663
  %100 = lshr i32 %98, 6
  %101 = zext nneg i32 %100 to i64
  %102 = getelementptr inbounds %struct.simple_bitmap_def, ptr %99, i64 0, i32 3, i64 %101
  %103 = load i64, ptr %102, align 8, !tbaa !787
  %104 = and i32 %98, 63
  %105 = zext nneg i32 %104 to i64
  %106 = shl nuw i64 1, %105
  %107 = and i64 %106, %103
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %137, !prof !1692

109:                                              ; preds = %92
  %110 = load ptr, ptr %1, align 8, !tbaa !1551
  %111 = getelementptr inbounds %struct.simple_bitmap_def, ptr %110, i64 0, i32 3, i64 %101
  %112 = load i64, ptr %111, align 8, !tbaa !787
  %113 = and i64 %112, %106
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117, !prof !1693

115:                                              ; preds = %109
  tail call fastcc void @condense_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %98) #23
  %116 = load ptr, ptr %6, align 8, !tbaa !1553
  br label %117

117:                                              ; preds = %115, %109
  %118 = phi ptr [ %116, %115 ], [ %94, %109 ]
  %119 = zext i32 %98 to i64
  %120 = getelementptr inbounds i32, ptr %118, i64 %119
  %121 = load i32, ptr %120, align 4, !tbaa !759
  %122 = getelementptr inbounds i32, ptr %118, i64 %8
  %123 = load i32, ptr %122, align 4, !tbaa !759
  %124 = icmp eq i32 %123, %2
  br i1 %124, label %126, label %125, !prof !1694

125:                                              ; preds = %117
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2017, ptr noundef nonnull @.str.27) #25
  br label %126

126:                                              ; preds = %117, %125
  %127 = load ptr, ptr %18, align 8, !tbaa !1664
  %128 = zext i32 %121 to i64
  %129 = getelementptr inbounds i32, ptr %127, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !759
  %131 = zext i32 %123 to i64
  %132 = getelementptr inbounds i32, ptr %127, i64 %131
  %133 = load i32, ptr %132, align 4, !tbaa !759
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %137, !prof !1695

135:                                              ; preds = %126
  %136 = getelementptr inbounds i32, ptr %127, i64 %8
  store i32 %130, ptr %136, align 4, !tbaa !759
  br label %137

137:                                              ; preds = %126, %135, %92
  %138 = phi ptr [ %127, %126 ], [ %127, %135 ], [ %93, %92 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %139 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %92, !prof !1696, !llvm.loop !1697

141:                                              ; preds = %137, %87, %80
  %142 = phi ptr [ %81, %87 ], [ %81, %80 ], [ %138, %137 ]
  %143 = getelementptr inbounds i32, ptr %142, i64 %8
  %144 = load i32, ptr %143, align 4, !tbaa !759
  %145 = icmp eq i32 %144, %16
  %146 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  br i1 %145, label %147, label %250, !prof !1698

147:                                              ; preds = %141
  %148 = load ptr, ptr %146, align 8, !tbaa !1670
  %149 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %148) #23
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %247, label %151, !prof !1699

151:                                              ; preds = %147, %243
  %152 = phi ptr [ %244, %243 ], [ %148, %147 ]
  %153 = load ptr, ptr %18, align 8, !tbaa !1664
  %154 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %152) #23
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %153, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !759
  %158 = icmp ult i32 %157, %16
  br i1 %158, label %247, label %159, !prof !1698

159:                                              ; preds = %151
  %160 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %161 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %162 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %152) #23
  %163 = load ptr, ptr %6, align 8, !tbaa !1553
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32, ptr %163, i64 %164
  store i32 %2, ptr %165, align 4, !tbaa !759
  %166 = load ptr, ptr %160, align 8, !tbaa !1528
  %167 = lshr i32 %162, 6
  %168 = zext nneg i32 %167 to i64
  %169 = getelementptr inbounds %struct.simple_bitmap_def, ptr %166, i64 0, i32 3, i64 %168
  %170 = load i64, ptr %169, align 8, !tbaa !787
  %171 = and i32 %162, 63
  %172 = zext nneg i32 %171 to i64
  %173 = shl nuw i64 1, %172
  %174 = and i64 %170, %173
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %177, !prof !1700

176:                                              ; preds = %159
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %166, i32 noundef %2) #23
  br label %177

177:                                              ; preds = %176, %159
  %178 = load ptr, ptr %21, align 8, !tbaa !1522
  %179 = getelementptr inbounds ptr, ptr %178, i64 %164
  %180 = load ptr, ptr %179, align 8, !tbaa !725
  %181 = icmp eq ptr %180, null
  br i1 %181, label %199, label %182, !prof !1701

182:                                              ; preds = %177
  %183 = getelementptr inbounds ptr, ptr %178, i64 %8
  %184 = load ptr, ptr %183, align 8, !tbaa !725
  %185 = icmp eq ptr %184, null
  br i1 %185, label %186, label %195, !prof !1702

186:                                              ; preds = %182
  %187 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %188 = load ptr, ptr %21, align 8, !tbaa !1522
  %189 = getelementptr inbounds ptr, ptr %188, i64 %8
  store ptr %187, ptr %189, align 8, !tbaa !725
  %190 = load ptr, ptr %21, align 8, !tbaa !1522
  %191 = getelementptr inbounds ptr, ptr %190, i64 %8
  %192 = load ptr, ptr %191, align 8, !tbaa !725
  %193 = getelementptr inbounds ptr, ptr %190, i64 %164
  %194 = load ptr, ptr %193, align 8, !tbaa !725
  br label %195

195:                                              ; preds = %186, %182
  %196 = phi ptr [ %194, %186 ], [ %180, %182 ]
  %197 = phi ptr [ %192, %186 ], [ %184, %182 ]
  %198 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %197, ptr noundef %196) #25
  br label %199

199:                                              ; preds = %195, %177
  %200 = load ptr, ptr %82, align 8, !tbaa !1521
  %201 = getelementptr inbounds ptr, ptr %200, i64 %164
  %202 = load ptr, ptr %201, align 8, !tbaa !725
  %203 = icmp eq ptr %202, null
  br i1 %203, label %221, label %204, !prof !1703

204:                                              ; preds = %199
  %205 = getelementptr inbounds ptr, ptr %200, i64 %8
  %206 = load ptr, ptr %205, align 8, !tbaa !725
  %207 = icmp eq ptr %206, null
  br i1 %207, label %208, label %217, !prof !1704

208:                                              ; preds = %204
  %209 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %210 = load ptr, ptr %82, align 8, !tbaa !1521
  %211 = getelementptr inbounds ptr, ptr %210, i64 %8
  store ptr %209, ptr %211, align 8, !tbaa !725
  %212 = load ptr, ptr %82, align 8, !tbaa !1521
  %213 = getelementptr inbounds ptr, ptr %212, i64 %8
  %214 = load ptr, ptr %213, align 8, !tbaa !725
  %215 = getelementptr inbounds ptr, ptr %212, i64 %164
  %216 = load ptr, ptr %215, align 8, !tbaa !725
  br label %217

217:                                              ; preds = %208, %204
  %218 = phi ptr [ %216, %208 ], [ %202, %204 ]
  %219 = phi ptr [ %214, %208 ], [ %206, %204 ]
  %220 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %219, ptr noundef %218) #25
  br label %221

221:                                              ; preds = %217, %199
  %222 = load ptr, ptr %161, align 8, !tbaa !1526
  %223 = getelementptr inbounds ptr, ptr %222, i64 %164
  %224 = load ptr, ptr %223, align 8, !tbaa !725
  %225 = icmp eq ptr %224, null
  br i1 %225, label %243, label %226, !prof !1705

226:                                              ; preds = %221
  %227 = getelementptr inbounds ptr, ptr %222, i64 %8
  %228 = load ptr, ptr %227, align 8, !tbaa !725
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %239, !prof !1706

230:                                              ; preds = %226
  %231 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %232 = load ptr, ptr %161, align 8, !tbaa !1526
  %233 = getelementptr inbounds ptr, ptr %232, i64 %8
  store ptr %231, ptr %233, align 8, !tbaa !725
  %234 = load ptr, ptr %161, align 8, !tbaa !1526
  %235 = getelementptr inbounds ptr, ptr %234, i64 %8
  %236 = load ptr, ptr %235, align 8, !tbaa !725
  %237 = getelementptr inbounds ptr, ptr %234, i64 %164
  %238 = load ptr, ptr %237, align 8, !tbaa !725
  br label %239

239:                                              ; preds = %230, %226
  %240 = phi ptr [ %238, %230 ], [ %224, %226 ]
  %241 = phi ptr [ %236, %230 ], [ %228, %226 ]
  %242 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %241, ptr noundef %240) #25
  br label %243

243:                                              ; preds = %239, %221
  %244 = load ptr, ptr %146, align 8, !tbaa !1670
  %245 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %244) #23
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %151, !prof !1707, !llvm.loop !1708

247:                                              ; preds = %151, %243, %147
  %248 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %249 = load ptr, ptr %248, align 8, !tbaa !1663
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
define internal fastcc void @label_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 !prof !1709 !PGOFuncName !1710 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !1551
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 12
  %8 = load ptr, ptr %7, align 8, !tbaa !1526
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17, !prof !1711

13:                                               ; preds = %3
  %14 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @predbitmap_obstack) #25
  %15 = load ptr, ptr %7, align 8, !tbaa !1526
  %16 = getelementptr inbounds ptr, ptr %15, i64 %9
  store ptr %14, ptr %16, align 8, !tbaa !725
  br label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !1522
  %20 = getelementptr inbounds ptr, ptr %19, i64 %9
  %21 = load ptr, ptr %20, align 8, !tbaa !725
  %22 = icmp eq ptr %21, null
  br i1 %22, label %66, label %23, !prof !1712

23:                                               ; preds = %17
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %21, ptr noundef nonnull %4) #23
  %24 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %66, label %26, !prof !1713

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 3
  %28 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  br label %29

29:                                               ; preds = %26, %63
  %30 = load ptr, ptr %27, align 8, !tbaa !1553
  %31 = load i32, ptr %4, align 4, !tbaa !759
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !759
  %35 = load ptr, ptr %1, align 8, !tbaa !1551
  %36 = lshr i32 %34, 6
  %37 = zext nneg i32 %36 to i64
  %38 = getelementptr inbounds %struct.simple_bitmap_def, ptr %35, i64 0, i32 3, i64 %37
  %39 = load i64, ptr %38, align 8, !tbaa !787
  %40 = and i32 %34, 63
  %41 = zext nneg i32 %40 to i64
  %42 = shl nuw i64 1, %41
  %43 = and i64 %42, %39
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %46, !prof !1714

45:                                               ; preds = %29
  tail call fastcc void @label_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %34) #23
  br label %46

46:                                               ; preds = %45, %29
  %47 = icmp eq i32 %34, %2
  br i1 %47, label %63, label %48, !prof !1715

48:                                               ; preds = %46
  %49 = load ptr, ptr %28, align 8, !tbaa !1523
  %50 = zext i32 %34 to i64
  %51 = getelementptr inbounds i32, ptr %49, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !759
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54, !prof !1716

54:                                               ; preds = %48
  %55 = load ptr, ptr %7, align 8, !tbaa !1526
  %56 = getelementptr inbounds ptr, ptr %55, i64 %50
  %57 = load ptr, ptr %56, align 8, !tbaa !725
  %58 = icmp eq ptr %57, null
  br i1 %58, label %63, label %59, !prof !1717

59:                                               ; preds = %54
  %60 = getelementptr inbounds ptr, ptr %55, i64 %9
  %61 = load ptr, ptr %60, align 8, !tbaa !725
  %62 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %61, ptr noundef nonnull %57) #25
  br label %63

63:                                               ; preds = %54, %59, %46, %48
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %64 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %29, !prof !1718, !llvm.loop !1719

66:                                               ; preds = %63, %23, %17
  %67 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 13
  %68 = load ptr, ptr %67, align 8, !tbaa !1528
  %69 = lshr i32 %2, 6
  %70 = zext nneg i32 %69 to i64
  %71 = getelementptr inbounds %struct.simple_bitmap_def, ptr %68, i64 0, i32 3, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !787
  %73 = and i32 %2, 63
  %74 = zext nneg i32 %73 to i64
  %75 = shl nuw i64 1, %74
  %76 = and i64 %72, %75
  %77 = icmp eq i64 %76, 0
  %78 = load ptr, ptr %7, align 8, !tbaa !1526
  br i1 %77, label %79, label %87, !prof !1720

79:                                               ; preds = %66
  %80 = getelementptr inbounds ptr, ptr %78, i64 %9
  %81 = load ptr, ptr %80, align 8, !tbaa !725
  %82 = load ptr, ptr @varmap, align 8
  %83 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %82) #23
  %84 = add i32 %83, %2
  %85 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %81, i32 noundef %84) #25
  %86 = load ptr, ptr %7, align 8, !tbaa !1526
  br label %87

87:                                               ; preds = %79, %66
  %88 = phi ptr [ %86, %79 ], [ %78, %66 ]
  %89 = getelementptr inbounds ptr, ptr %88, i64 %9
  %90 = load ptr, ptr %89, align 8, !tbaa !725
  %91 = load ptr, ptr %90, align 8, !tbaa !778
  %92 = icmp eq ptr %91, null
  br i1 %92, label %109, label %93, !prof !1721

93:                                               ; preds = %87
  %94 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !725
  %95 = tail call fastcc i32 @equiv_class_lookup(ptr noundef %94, ptr noundef nonnull %90) #23
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %104, !prof !1722

97:                                               ; preds = %93
  %98 = load i32, ptr @pointer_equiv_class, align 4, !tbaa !759
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr @pointer_equiv_class, align 4, !tbaa !759
  %100 = load ptr, ptr @pointer_equiv_class_table, align 8, !tbaa !725
  %101 = load ptr, ptr %7, align 8, !tbaa !1526
  %102 = getelementptr inbounds ptr, ptr %101, i64 %9
  %103 = load ptr, ptr %102, align 8, !tbaa !725
  tail call fastcc void @equiv_class_add(ptr noundef %100, i32 noundef %98, ptr noundef %103) #23
  br label %104

104:                                              ; preds = %97, %93
  %105 = phi i32 [ %95, %93 ], [ %98, %97 ]
  %106 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 9
  %107 = load ptr, ptr %106, align 8, !tbaa !1523
  %108 = getelementptr inbounds i32, ptr %107, i64 %9
  store i32 %105, ptr %108, align 4, !tbaa !759
  br label %109

109:                                              ; preds = %104, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_free(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @equiv_class_lookup(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !1723 !PGOFuncName !1724 {
  %3 = alloca %struct.equiv_class_label, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #24
  %4 = getelementptr inbounds %struct.equiv_class_label, ptr %3, i64 0, i32 2
  store ptr %1, ptr %4, align 8, !tbaa !1678
  %5 = tail call i32 @bitmap_hash(ptr noundef %1) #25
  store i32 %5, ptr %3, align 8, !tbaa !1673
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !1725

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !725
  %10 = getelementptr inbounds %struct.equiv_class_label, ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !1726
  br label %12

12:                                               ; preds = %2, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %2 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #24
  ret i32 %13
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @equiv_class_add(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !1727 !PGOFuncName !1728 {
  %4 = tail call ptr @xmalloc(i64 noundef 16) #25
  %5 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !1678
  %6 = getelementptr inbounds %struct.equiv_class_label, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 4, !tbaa !1726
  %7 = tail call i32 @bitmap_hash(ptr noundef %2) #25
  store i32 %7, ptr %4, align 8, !tbaa !1673
  %8 = tail call ptr @htab_find_slot_with_hash(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %7, i32 noundef 1) #25
  %9 = load ptr, ptr %8, align 8, !tbaa !725
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11, !prof !1729

11:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1916, ptr noundef nonnull @.str.27) #25
  br label %12

12:                                               ; preds = %3, %11
  store ptr %4, ptr %8, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @clear_edges_for_node(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #6 !prof !1730 !PGOFuncName !1731 {
  %3 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !908
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds ptr, ptr %4, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !725
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9, !prof !1732

9:                                                ; preds = %2
  tail call void @bitmap_obstack_free(ptr noundef nonnull %7) #25
  %10 = load ptr, ptr %3, align 8, !tbaa !908
  %11 = getelementptr inbounds ptr, ptr %10, i64 %5
  store ptr null, ptr %11, align 8, !tbaa !725
  br label %12

12:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @VEC_unsigned_heap_alloc() unnamed_addr #6 !prof !1733 !PGOFuncName !1734 {
  %1 = tail call ptr @vec_heap_o_reserve_exact(ptr noundef null, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  ret ptr %1
}

; Function Attrs: optsize
declare ptr @vec_heap_o_reserve_exact(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1735 !PGOFuncName !1736 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1737

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 4, !tbaa !1738
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_last(ptr nocapture noundef readonly %0) unnamed_addr #3 !prof !1740 !PGOFuncName !1741 {
  %2 = load i32, ptr %0, align 4, !tbaa !1738
  %3 = add i32 %2, -1
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !759
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc i32 @VEC_unsigned_base_pop(ptr nocapture noundef %0) unnamed_addr #5 !prof !1742 !PGOFuncName !1743 {
  %2 = load i32, ptr %0, align 4, !tbaa !1738
  %3 = add i32 %2, -1
  store i32 %3, ptr %0, align 4, !tbaa !1738
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !759
  ret i32 %6
}

; Function Attrs: optsize
declare zeroext i8 @bitmap_ior_into(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_safe_push(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1744 !PGOFuncName !1745 {
  tail call fastcc void @VEC_unsigned_heap_reserve(ptr noundef %0) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !725
  tail call fastcc void @VEC_unsigned_base_quick_push(ptr noundef %3, i32 noundef %1) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_unsigned_heap_reserve(ptr nocapture noundef %0) unnamed_addr #6 !prof !1744 !PGOFuncName !1746 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = tail call fastcc i32 @VEC_unsigned_base_space(ptr noundef %2) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %7, !prof !1747

5:                                                ; preds = %1
  %6 = tail call ptr @vec_heap_o_reserve(ptr noundef %2, i32 noundef 1, i64 noundef 8, i64 noundef 4) #25
  store ptr %6, ptr %0, align 8, !tbaa !725
  br label %7

7:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_unsigned_base_quick_push(ptr noundef %0, i32 noundef %1) unnamed_addr #5 !prof !1744 !PGOFuncName !1748 {
  %3 = load i32, ptr %0, align 4, !tbaa !1738
  %4 = add i32 %3, 1
  store i32 %4, ptr %0, align 4, !tbaa !1738
  %5 = zext i32 %3 to i64
  %6 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %5
  store i32 %1, ptr %6, align 4, !tbaa !759
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_unsigned_base_space(ptr noundef readonly %0) unnamed_addr #3 !prof !1744 !PGOFuncName !1749 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3, !prof !1750

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !1751
  %6 = load i32, ptr %0, align 4, !tbaa !1738
  %7 = icmp ne i32 %5, %6
  %8 = zext i1 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: optsize
declare i32 @bitmap_hash(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @VEC_constraint_t_base_replace(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #5 !prof !1752 !PGOFuncName !1753 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  store ptr null, ptr %4, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @find_equivalent_node(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1754 !PGOFuncName !1755 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 14
  %5 = load ptr, ptr %4, align 8, !tbaa !1529
  %6 = tail call i32 @bitmap_bit_p(ptr noundef %5, i32 noundef %1) #25
  %7 = icmp eq i32 %6, 0
  %8 = load i32, ptr %0, align 8, !tbaa !756
  %9 = icmp ugt i32 %8, %2
  br i1 %7, label %10, label %34, !prof !1756

10:                                               ; preds = %3
  br i1 %9, label %12, label %11, !prof !1757

11:                                               ; preds = %10
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2246, ptr noundef nonnull @.str.27) #25
  br label %12

12:                                               ; preds = %10, %11
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !1527
  %15 = zext i32 %2 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !759
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %30, label %19, !prof !1758

19:                                               ; preds = %12
  %20 = tail call fastcc zeroext i8 @unite(i32 noundef %17, i32 noundef %1) #23, !range !770
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22, !prof !1759

22:                                               ; preds = %19
  %23 = load ptr, ptr %13, align 8, !tbaa !1527
  %24 = getelementptr inbounds i32, ptr %23, i64 %15
  %25 = load i32, ptr %24, align 4, !tbaa !759
  tail call fastcc void @unify_nodes(ptr noundef nonnull %0, i32 noundef %25, i32 noundef %1, i8 noundef zeroext 0) #23
  br label %26

26:                                               ; preds = %22, %19
  %27 = load ptr, ptr %13, align 8, !tbaa !1527
  %28 = getelementptr inbounds i32, ptr %27, i64 %15
  %29 = load i32, ptr %28, align 4, !tbaa !759
  br label %48

30:                                               ; preds = %12
  store i32 %1, ptr %16, align 4, !tbaa !759
  %31 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !910
  %33 = getelementptr inbounds i32, ptr %32, i64 %15
  store i32 %1, ptr %33, align 4, !tbaa !759
  br label %48

34:                                               ; preds = %3
  br i1 %9, label %36, label %35, !prof !1760

35:                                               ; preds = %34
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 2263, ptr noundef nonnull @.str.27) #25
  br label %36

36:                                               ; preds = %34, %35
  %37 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !909
  %39 = zext i32 %1 to i64
  %40 = getelementptr inbounds i32, ptr %38, i64 %39
  store i32 %2, ptr %40, align 4, !tbaa !759
  %41 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 8
  %42 = load ptr, ptr %41, align 8, !tbaa !910
  %43 = zext i32 %2 to i64
  %44 = getelementptr inbounds i32, ptr %42, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !759
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %48, !prof !1761

47:                                               ; preds = %36
  store i32 %1, ptr %44, align 4, !tbaa !759
  br label %48

48:                                               ; preds = %30, %47, %36, %26
  %49 = phi i32 [ %29, %26 ], [ %1, %36 ], [ %1, %47 ], [ %1, %30 ]
  ret i32 %49
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @unite(i32 noundef %0, i32 noundef %1) unnamed_addr #6 !prof !1762 !PGOFuncName !1763 {
  %3 = load ptr, ptr @graph, align 8, !tbaa !725
  %4 = load i32, ptr %3, align 8, !tbaa !756
  %5 = icmp ugt i32 %4, %0
  %6 = icmp ugt i32 %4, %1
  %7 = and i1 %5, %6
  br i1 %7, label %9, label %8, !prof !1764

8:                                                ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 534, ptr noundef nonnull @.str.27) #25
  br label %9

9:                                                ; preds = %2, %8
  %10 = icmp eq i32 %0, %1
  br i1 %10, label %20, label %11, !prof !1765

11:                                               ; preds = %9
  %12 = load ptr, ptr @graph, align 8, !tbaa !725
  %13 = getelementptr inbounds %struct.constraint_graph, ptr %12, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !758
  %15 = zext i32 %1 to i64
  %16 = getelementptr inbounds i32, ptr %14, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !759
  %18 = icmp eq i32 %17, %0
  br i1 %18, label %20, label %19, !prof !1766

19:                                               ; preds = %11
  store i32 %0, ptr %16, align 4, !tbaa !759
  br label %20

20:                                               ; preds = %9, %11, %19
  %21 = phi i8 [ 1, %19 ], [ 0, %11 ], [ 0, %9 ]
  ret i8 %21
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @unify_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i8 noundef zeroext %3) unnamed_addr #6 !prof !1767 !PGOFuncName !1768 {
  %5 = icmp eq i32 %1, %2
  br i1 %5, label %9, label %6, !prof !1769

6:                                                ; preds = %4
  %7 = tail call fastcc i32 @find(i32 noundef %1) #23
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %10, label %9, !prof !1770

9:                                                ; preds = %6, %4
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1404, ptr noundef nonnull @.str.27) #25
  br label %10

10:                                               ; preds = %6, %9
  %11 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %12 = icmp eq ptr %11, null
  br i1 %12, label %25, label %13, !prof !1770

13:                                               ; preds = %10
  %14 = load i32, ptr @dump_flags, align 4, !tbaa !759
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %19 = getelementptr inbounds %struct.variable_info, ptr %18, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !736
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !736
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %11, ptr noundef nonnull @.str.80, ptr noundef %20, ptr noundef %23) #23
  br label %25

25:                                               ; preds = %17, %13, %10
  %26 = icmp eq i8 %3, 0
  %27 = select i1 %26, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 2), ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 3), !prof !1771
  %28 = load i32, ptr %27, align 4, !tbaa !759
  %29 = add i32 %28, 1
  store i32 %29, ptr %27, align 4, !tbaa !759
  tail call fastcc void @merge_graph_nodes(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  tail call fastcc void @merge_node_constraints(ptr noundef %0, i32 noundef %1, i32 noundef %2) #23
  %30 = icmp ne i8 %3, 0
  br i1 %30, label %31, label %61, !prof !1772

31:                                               ; preds = %25
  %32 = load ptr, ptr @changed, align 8, !tbaa !725
  %33 = lshr i32 %2, 6
  %34 = zext nneg i32 %33 to i64
  %35 = getelementptr inbounds %struct.simple_bitmap_def, ptr %32, i64 0, i32 3, i64 %34
  %36 = load i64, ptr %35, align 8, !tbaa !787
  %37 = and i32 %2, 63
  %38 = zext nneg i32 %37 to i64
  %39 = shl nuw i64 1, %38
  %40 = and i64 %36, %39
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %61, label %42, !prof !1773

42:                                               ; preds = %31
  tail call fastcc void @RESET_BIT(ptr noundef nonnull %32, i32 noundef %2) #23
  %43 = lshr i32 %1, 6
  %44 = zext nneg i32 %43 to i64
  %45 = getelementptr inbounds %struct.simple_bitmap_def, ptr %32, i64 0, i32 3, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !787
  %47 = and i32 %1, 63
  %48 = zext nneg i32 %47 to i64
  %49 = shl nuw i64 1, %48
  %50 = and i64 %46, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53, !prof !1774

52:                                               ; preds = %42
  tail call fastcc void @SET_BIT(ptr noundef nonnull %32, i32 noundef %1) #23
  br label %61

53:                                               ; preds = %42
  %54 = load i32, ptr @changed_count, align 4, !tbaa !759
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58, !prof !1775

56:                                               ; preds = %53
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1428, ptr noundef nonnull @.str.27) #25
  %57 = load i32, ptr @changed_count, align 4, !tbaa !759
  br label %58

58:                                               ; preds = %53, %56
  %59 = phi i32 [ %54, %53 ], [ %57, %56 ]
  %60 = add i32 %59, -1
  store i32 %60, ptr @changed_count, align 4, !tbaa !759
  br label %61

61:                                               ; preds = %52, %58, %31, %25
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 8
  %64 = load ptr, ptr %63, align 8, !tbaa !769
  %65 = icmp eq ptr %64, null
  br i1 %65, label %109, label %66, !prof !1769

66:                                               ; preds = %61
  %67 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %68 = getelementptr inbounds %struct.variable_info, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !769
  %70 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %69, ptr noundef nonnull %64) #25
  %71 = icmp ne i8 %70, 0
  %72 = and i1 %30, %71
  br i1 %72, label %73, label %87, !prof !1776

73:                                               ; preds = %66
  %74 = load ptr, ptr @changed, align 8, !tbaa !725
  %75 = lshr i32 %1, 6
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %struct.simple_bitmap_def, ptr %74, i64 0, i32 3, i64 %76
  %78 = load i64, ptr %77, align 8, !tbaa !787
  %79 = and i32 %1, 63
  %80 = zext nneg i32 %79 to i64
  %81 = shl nuw i64 1, %80
  %82 = and i64 %78, %81
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87, !prof !1777

84:                                               ; preds = %73
  tail call fastcc void @SET_BIT(ptr noundef nonnull %74, i32 noundef %1) #23
  %85 = load i32, ptr @changed_count, align 4, !tbaa !759
  %86 = add i32 %85, 1
  store i32 %86, ptr @changed_count, align 4, !tbaa !759
  br label %87

87:                                               ; preds = %73, %84, %66
  %88 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %89 = getelementptr inbounds %struct.variable_info, ptr %88, i64 0, i32 8
  %90 = load ptr, ptr %89, align 8, !tbaa !769
  tail call void @bitmap_obstack_free(ptr noundef %90) #25
  %91 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %92 = getelementptr inbounds %struct.variable_info, ptr %91, i64 0, i32 8
  store ptr null, ptr %92, align 8, !tbaa !769
  %93 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %94 = getelementptr inbounds %struct.variable_info, ptr %93, i64 0, i32 9
  %95 = load ptr, ptr %94, align 8, !tbaa !1065
  tail call void @bitmap_obstack_free(ptr noundef %95) #25
  %96 = tail call fastcc ptr @get_varinfo(i32 noundef %2) #23
  %97 = getelementptr inbounds %struct.variable_info, ptr %96, i64 0, i32 9
  store ptr null, ptr %97, align 8, !tbaa !1065
  %98 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 4), align 4, !tbaa !865
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %109, label %100, !prof !1771

100:                                              ; preds = %87
  %101 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %102 = getelementptr inbounds %struct.variable_info, ptr %101, i64 0, i32 9
  %103 = load ptr, ptr %102, align 8, !tbaa !1065
  tail call void @bitmap_obstack_free(ptr noundef %103) #25
  %104 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %105 = getelementptr inbounds %struct.variable_info, ptr %104, i64 0, i32 9
  store ptr null, ptr %105, align 8, !tbaa !1065
  %106 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @oldpta_obstack) #25
  %107 = tail call fastcc ptr @get_varinfo(i32 noundef %1) #23
  %108 = getelementptr inbounds %struct.variable_info, ptr %107, i64 0, i32 9
  store ptr %106, ptr %108, align 8, !tbaa !1065
  br label %109

109:                                              ; preds = %87, %100, %61
  %110 = tail call fastcc zeroext i8 @valid_graph_edge(ptr noundef %0, i32 noundef %1, i32 noundef %1) #23, !range !770
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %121, label %112, !prof !1778

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %114 = load ptr, ptr %113, align 8, !tbaa !908
  %115 = zext i32 %1 to i64
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !725
  %118 = icmp eq ptr %117, null
  br i1 %118, label %121, label %119, !prof !1779

119:                                              ; preds = %112
  %120 = tail call zeroext i8 @bitmap_clear_bit(ptr noundef nonnull %117, i32 noundef %1) #25
  br label %121

121:                                              ; preds = %112, %119, %109
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @merge_graph_nodes(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1767 !PGOFuncName !1780 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !911
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !759
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %16, label %10, !prof !1770

10:                                               ; preds = %3
  %11 = zext i32 %1 to i64
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !759
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 %8, ptr %12, align 4, !tbaa !759
  br label %16

16:                                               ; preds = %10, %15, %3
  %17 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !908
  %19 = getelementptr inbounds ptr, ptr %18, i64 %6
  %20 = load ptr, ptr %19, align 8, !tbaa !725
  %21 = icmp eq ptr %20, null
  br i1 %21, label %40, label %22, !prof !1781

22:                                               ; preds = %16
  %23 = zext i32 %1 to i64
  %24 = getelementptr inbounds ptr, ptr %18, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !725
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %36, !prof !1782

27:                                               ; preds = %22
  %28 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %29 = load ptr, ptr %17, align 8, !tbaa !908
  %30 = getelementptr inbounds ptr, ptr %29, i64 %23
  store ptr %28, ptr %30, align 8, !tbaa !725
  %31 = load ptr, ptr %17, align 8, !tbaa !908
  %32 = getelementptr inbounds ptr, ptr %31, i64 %23
  %33 = load ptr, ptr %32, align 8, !tbaa !725
  %34 = getelementptr inbounds ptr, ptr %31, i64 %6
  %35 = load ptr, ptr %34, align 8, !tbaa !725
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
define internal fastcc void @merge_node_constraints(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1767 !PGOFuncName !1783 {
  %4 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #24
  %5 = tail call fastcc i32 @find(i32 noundef %2) #23
  %6 = icmp eq i32 %5, %1
  br i1 %6, label %8, label %7, !prof !1770

7:                                                ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 969, ptr noundef nonnull @.str.27) #25
  br label %8

8:                                                ; preds = %3, %7
  %9 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %10 = load ptr, ptr %9, align 8, !tbaa !905
  %11 = zext i32 %2 to i64
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = load ptr, ptr %12, align 8, !tbaa !725
  %14 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %4) #23, !range !746
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16, !prof !1784

16:                                               ; preds = %8, %31
  %17 = phi i32 [ %33, %31 ], [ 0, %8 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !725
  %19 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !739
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %24, !prof !1785

22:                                               ; preds = %16
  %23 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1, i32 1
  br label %31

24:                                               ; preds = %16
  %25 = load i32, ptr %18, align 8, !tbaa !730
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %29, !prof !1786

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.constraint_expr, ptr %18, i64 0, i32 1
  br label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.constraint, ptr %18, i64 0, i32 1, i32 1
  br label %31

31:                                               ; preds = %22, %29, %27
  %32 = phi ptr [ %23, %22 ], [ %30, %29 ], [ %28, %27 ]
  store i32 %1, ptr %32, align 4, !tbaa !759
  %33 = add i32 %17, 1
  %34 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %13, i32 noundef %33, ptr noundef nonnull %4) #23, !range !746
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !prof !1787, !llvm.loop !1788

36:                                               ; preds = %31, %8
  %37 = zext i32 %1 to i64
  %38 = getelementptr inbounds ptr, ptr %10, i64 %37
  tail call fastcc void @constraint_set_union(ptr noundef %38, ptr noundef nonnull %12) #23
  %39 = load ptr, ptr %9, align 8, !tbaa !905
  %40 = getelementptr inbounds ptr, ptr %39, i64 %11
  tail call fastcc void @VEC_constraint_t_heap_free(ptr noundef %40) #23
  %41 = load ptr, ptr %9, align 8, !tbaa !905
  %42 = getelementptr inbounds ptr, ptr %41, i64 %11
  store ptr null, ptr %42, align 8, !tbaa !725
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @valid_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1767 !PGOFuncName !1789 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !908
  %6 = zext i32 %2 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !725
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10, !prof !1790

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
declare zeroext i8 @bitmap_clear_bit(ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @constraint_set_union(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !1767 !PGOFuncName !1791 {
  %3 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = load ptr, ptr %1, align 8, !tbaa !725
  %5 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %4, i32 noundef 0, ptr noundef nonnull %3) #23, !range !746
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7, !prof !1784

7:                                                ; preds = %2, %17
  %8 = phi ptr [ %18, %17 ], [ %4, %2 ]
  %9 = phi i32 [ %19, %17 ], [ 0, %2 ]
  %10 = load ptr, ptr %0, align 8, !tbaa !725
  %11 = load ptr, ptr %3, align 8, !tbaa !725
  %12 = tail call fastcc ptr @constraint_vec_find(ptr noundef %10, ptr noundef byval(%struct.constraint) align 8 %11) #23
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17, !prof !1792

14:                                               ; preds = %7
  %15 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %10, ptr noundef %11) #23
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %0, i32 noundef %15, ptr noundef %11) #23
  %16 = load ptr, ptr %1, align 8, !tbaa !725
  br label %17

17:                                               ; preds = %7, %14
  %18 = phi ptr [ %8, %7 ], [ %16, %14 ]
  %19 = add nuw nsw i32 %9, 1
  %20 = call fastcc i32 @VEC_constraint_t_base_iterate(ptr noundef %18, i32 noundef %19, ptr noundef nonnull %3) #23, !range !746
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %7, !prof !1787, !llvm.loop !1793

22:                                               ; preds = %17, %2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_constraint_t_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1794 !PGOFuncName !1795 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1796

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !725
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @constraint_vec_find(ptr noundef readonly %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #12 !prof !1797 !PGOFuncName !1798 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !1799

4:                                                ; preds = %2
  %5 = call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef nonnull %0, ptr noundef nonnull %1) #23
  %6 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef nonnull %0) #23
  %7 = icmp ult i32 %5, %6
  br i1 %7, label %8, label %13, !prof !1800

8:                                                ; preds = %4
  %9 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef nonnull %0, i32 noundef %5) #23
  %10 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %9, ptr noundef nonnull byval(%struct.constraint) align 8 %1) #23, !range !770
  %11 = icmp eq i8 %10, 0
  %12 = select i1 %11, ptr null, ptr %9, !prof !1801
  br label %13

13:                                               ; preds = %8, %4, %2
  %14 = phi ptr [ null, %2 ], [ null, %4 ], [ %12, %8 ]
  ret ptr %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #12 !prof !1802 !PGOFuncName !1803 {
  %3 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %0) #23
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5, !prof !1804

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %17, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %16, %5 ], [ 0, %2 ]
  %8 = lshr i32 %6, 1
  %9 = add i32 %8, %7
  %10 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %0, i32 noundef %9) #23
  %11 = tail call fastcc zeroext i8 @constraint_less(ptr noundef %10, ptr noundef %1) #23, !range !770
  %12 = icmp eq i8 %11, 0
  %13 = add i32 %9, 1
  %14 = xor i32 %8, -1
  %15 = add i32 %6, %14
  %16 = select i1 %12, i32 %7, i32 %13, !prof !1805
  %17 = select i1 %12, i32 %8, i32 %15, !prof !1805
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %5, !prof !1806, !llvm.loop !1807

19:                                               ; preds = %5, %2
  %20 = phi i32 [ 0, %2 ], [ %16, %5 ]
  ret i32 %20
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_less(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #3 !prof !1808 !PGOFuncName !1809 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !770
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %24, !prof !1810

11:                                               ; preds = %2
  %12 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %6, i64 %8, i64 %3, i64 %5) #23, !range !770
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %24, !prof !1811

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %16 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %17 = load i64, ptr %15, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = load i64, ptr %16, align 8
  %21 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %22 = load i64, ptr %21, align 8
  %23 = tail call fastcc zeroext i8 @constraint_expr_less(i64 %17, i64 %19, i64 %20, i64 %22) #23, !range !770
  br label %24

24:                                               ; preds = %11, %2, %14
  %25 = phi i8 [ %23, %14 ], [ 1, %2 ], [ 0, %11 ]
  ret i8 %25
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @VEC_constraint_t_heap_safe_insert(ptr nocapture noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !1812 !PGOFuncName !1813 {
  tail call fastcc void @VEC_constraint_t_heap_reserve(ptr noundef %0) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !725
  tail call fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %4, i32 noundef %1, ptr noundef %2) #23
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @VEC_constraint_t_base_length(ptr noundef readonly %0) unnamed_addr #3 !prof !1814 !PGOFuncName !1815 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3, !prof !1816

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !752
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc ptr @VEC_constraint_t_base_index(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #3 !prof !1817 !PGOFuncName !1818 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !725
  ret ptr %5
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc zeroext i8 @constraint_equal(ptr nocapture noundef readonly byval(%struct.constraint) align 8 %0, ptr nocapture noundef readonly byval(%struct.constraint) align 8 %1) unnamed_addr #3 !prof !1819 !PGOFuncName !1820 {
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds { i64, i64 }, ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = load i64, ptr %1, align 8
  %7 = getelementptr inbounds { i64, i64 }, ptr %1, i64 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %3, i64 %5, i64 %6, i64 %8) #23, !range !770
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %21, label %11, !prof !1821

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %14 = load i64, ptr %12, align 8
  %15 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %16 = load i64, ptr %15, align 8
  %17 = load i64, ptr %13, align 8
  %18 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = tail call fastcc zeroext i8 @constraint_expr_equal(i64 %14, i64 %16, i64 %17, i64 %19) #23, !range !770
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i8 [ 0, %2 ], [ %20, %11 ]
  ret i8 %22
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_equal(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #16 !prof !1822 !PGOFuncName !1823 {
  %5 = icmp eq i64 %0, %2
  %6 = icmp eq i64 %1, %3
  %7 = select i1 %5, i1 %6, i1 false, !prof !1824
  %8 = zext i1 %7 to i8
  ret i8 %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc zeroext i8 @constraint_expr_less(i64 %0, i64 %1, i64 %2, i64 %3) unnamed_addr #16 !prof !1825 !PGOFuncName !1826 {
  %5 = trunc i64 %0 to i32
  %6 = lshr i64 %0, 32
  %7 = trunc i64 %2 to i32
  %8 = lshr i64 %2, 32
  %9 = icmp eq i32 %5, %7
  br i1 %9, label %10, label %16, !prof !1827

10:                                               ; preds = %4
  %11 = icmp eq i64 %6, %8
  br i1 %11, label %12, label %14, !prof !1828

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
define internal fastcc void @VEC_constraint_t_base_quick_insert(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 !prof !1812 !PGOFuncName !1829 {
  %4 = load i32, ptr %0, align 8, !tbaa !752
  %5 = zext i32 %1 to i64
  %6 = getelementptr inbounds %struct.VEC_constraint_t_base, ptr %0, i64 0, i32 2, i64 %5
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = add i32 %4, 1
  store i32 %8, ptr %0, align 8, !tbaa !752
  %9 = sub i32 %4, %1
  %10 = zext i32 %9 to i64
  %11 = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %7, ptr nonnull align 8 %6, i64 %11, i1 false)
  store ptr %2, ptr %6, align 8, !tbaa !725
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #14

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @add_graph_edge(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1830 !PGOFuncName !1831 {
  %4 = icmp eq i32 %1, %2
  br i1 %4, label %32, label %5, !prof !1832

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !908
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds ptr, ptr %7, i64 %8
  %10 = load ptr, ptr %9, align 8, !tbaa !725
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19, !prof !1833

12:                                               ; preds = %5
  %13 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @pta_obstack) #25
  %14 = load ptr, ptr %6, align 8, !tbaa !908
  %15 = getelementptr inbounds ptr, ptr %14, i64 %8
  store ptr %13, ptr %15, align 8, !tbaa !725
  %16 = load ptr, ptr %6, align 8, !tbaa !908
  %17 = getelementptr inbounds ptr, ptr %16, i64 %8
  %18 = load ptr, ptr %17, align 8, !tbaa !725
  br label %19

19:                                               ; preds = %12, %5
  %20 = phi ptr [ %18, %12 ], [ %10, %5 ]
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %20, i32 noundef %1) #25
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23, !prof !1834

23:                                               ; preds = %19
  %24 = load ptr, ptr @varmap, align 8
  %25 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %24) #23
  %26 = icmp ugt i32 %25, %1
  %27 = icmp ugt i32 %25, %2
  %28 = and i1 %26, %27
  br i1 %28, label %29, label %32, !prof !1835

29:                                               ; preds = %23
  %30 = load i32, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !866
  %31 = add i32 %30, 1
  store i32 %31, ptr getelementptr inbounds (%struct.constraint_stats, ptr @stats, i64 0, i32 5), align 4, !tbaa !866
  br label %32

32:                                               ; preds = %19, %29, %23, %3
  %33 = phi i8 [ 0, %3 ], [ 1, %29 ], [ 1, %23 ], [ 0, %19 ]
  ret i8 %33
}

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @free_scc_info(ptr nocapture noundef %0) unnamed_addr #17 !prof !1660 !PGOFuncName !1836 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1551
  %3 = load ptr, ptr %2, align 8, !tbaa !1592
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !1551
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !1663
  %7 = load ptr, ptr %6, align 8, !tbaa !1592
  tail call void @free(ptr noundef %7) #23
  %8 = load ptr, ptr %5, align 8, !tbaa !1663
  tail call void @free(ptr noundef %8) #23
  %9 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !1553
  tail call void @free(ptr noundef %10) #23
  %11 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1664
  tail call void @free(ptr noundef %12) #23
  %13 = getelementptr inbounds %struct.scc_info, ptr %0, i64 0, i32 5
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %13) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: optsize
declare void @bitmap_obstack_release(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_unsigned_heap_free(ptr nocapture noundef %0) unnamed_addr #17 !prof !1837 !PGOFuncName !1838 {
  %2 = load ptr, ptr %0, align 8, !tbaa !725
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4, !prof !1839

4:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %2) #23
  br label %5

5:                                                ; preds = %4, %1
  store ptr null, ptr %0, align 8, !tbaa !725
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @insert_into_complex(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) unnamed_addr #6 !prof !1840 !PGOFuncName !1841 {
  %4 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 15
  %5 = load ptr, ptr %4, align 8, !tbaa !905
  %6 = zext i32 %1 to i64
  %7 = getelementptr inbounds ptr, ptr %5, i64 %6
  %8 = load ptr, ptr %7, align 8, !tbaa !725
  %9 = tail call fastcc i32 @VEC_constraint_t_base_lower_bound(ptr noundef %8, ptr noundef %2) #23
  %10 = tail call fastcc i32 @VEC_constraint_t_base_length(ptr noundef %8) #23
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %16, !prof !1842

12:                                               ; preds = %3
  %13 = tail call fastcc ptr @VEC_constraint_t_base_index(ptr noundef %8, i32 noundef %9) #23
  %14 = tail call fastcc zeroext i8 @constraint_equal(ptr noundef byval(%struct.constraint) align 8 %2, ptr noundef byval(%struct.constraint) align 8 %13) #23, !range !770
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %17, !prof !1843

16:                                               ; preds = %12, %3
  tail call fastcc void @VEC_constraint_t_heap_safe_insert(ptr noundef nonnull %7, i32 noundef %9, ptr noundef %2) #23
  br label %17

17:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @scc_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1844 !PGOFuncName !1845 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %7 = load ptr, ptr %1, align 8, !tbaa !1551
  tail call fastcc void @SET_BIT(ptr noundef %7, i32 noundef %2) #23
  %8 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 4
  %9 = load i32, ptr %8, align 8, !tbaa !1662
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !1662
  %11 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !1664
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i32, ptr %12, i64 %13
  store i32 %9, ptr %14, align 4, !tbaa !759
  %15 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !908
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = load ptr, ptr %17, align 8, !tbaa !725
  %19 = icmp eq ptr %18, null
  br i1 %19, label %75, label %20, !prof !1846

20:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef nonnull %18, ptr noundef nonnull %4) #23
  %21 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %75, label %23, !prof !1847

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  br label %25

25:                                               ; preds = %23, %67
  %26 = load i32, ptr %4, align 4, !tbaa !759
  %27 = load ptr, ptr @varmap, align 8
  %28 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %27) #23
  %29 = shl i32 %28, 1
  %30 = add i32 %29, -1
  %31 = icmp ugt i32 %26, %30
  br i1 %31, label %70, label %32, !prof !1848

32:                                               ; preds = %25
  %33 = tail call fastcc i32 @find(i32 noundef %26) #23
  %34 = load ptr, ptr %24, align 8, !tbaa !1663
  %35 = lshr i32 %33, 6
  %36 = zext nneg i32 %35 to i64
  %37 = getelementptr inbounds %struct.simple_bitmap_def, ptr %34, i64 0, i32 3, i64 %36
  %38 = load i64, ptr %37, align 8, !tbaa !787
  %39 = and i32 %33, 63
  %40 = zext nneg i32 %39 to i64
  %41 = shl nuw i64 1, %40
  %42 = and i64 %41, %38
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %67, !prof !1849

44:                                               ; preds = %32
  %45 = load ptr, ptr %1, align 8, !tbaa !1551
  %46 = getelementptr inbounds %struct.simple_bitmap_def, ptr %45, i64 0, i32 3, i64 %36
  %47 = load i64, ptr %46, align 8, !tbaa !787
  %48 = and i64 %47, %41
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51, !prof !1850

50:                                               ; preds = %44
  tail call fastcc void @scc_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %33) #23
  br label %51

51:                                               ; preds = %50, %44
  %52 = tail call fastcc i32 @find(i32 noundef %33) #23
  %53 = tail call fastcc i32 @find(i32 noundef %2) #23
  %54 = icmp eq i32 %53, %2
  br i1 %54, label %56, label %55, !prof !1851

55:                                               ; preds = %51
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1344, ptr noundef nonnull @.str.27) #25
  br label %56

56:                                               ; preds = %51, %55
  %57 = load ptr, ptr %11, align 8, !tbaa !1664
  %58 = zext i32 %52 to i64
  %59 = getelementptr inbounds i32, ptr %57, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !759
  %61 = zext i32 %53 to i64
  %62 = getelementptr inbounds i32, ptr %57, i64 %61
  %63 = load i32, ptr %62, align 4, !tbaa !759
  %64 = icmp ult i32 %60, %63
  br i1 %64, label %65, label %67, !prof !1852

65:                                               ; preds = %56
  %66 = getelementptr inbounds i32, ptr %57, i64 %13
  store i32 %60, ptr %66, align 4, !tbaa !759
  br label %67

67:                                               ; preds = %32, %65, %56
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %68 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %25, !prof !1853, !llvm.loop !1854

70:                                               ; preds = %67, %25
  %71 = load ptr, ptr %11, align 8, !tbaa !1664
  %72 = getelementptr inbounds i32, ptr %71, i64 %13
  %73 = load i32, ptr %72, align 4, !tbaa !759
  %74 = icmp eq i32 %73, %9
  br i1 %74, label %75, label %141, !prof !1855

75:                                               ; preds = %3, %20, %70
  %76 = phi ptr [ %71, %70 ], [ %12, %20 ], [ %12, %3 ]
  %77 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 5
  %78 = load ptr, ptr %77, align 8, !tbaa !1670
  %79 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %78) #23
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %138, label %81, !prof !1856

81:                                               ; preds = %75
  %82 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %78) #23
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, ptr %76, i64 %83
  %85 = load i32, ptr %84, align 4, !tbaa !759
  %86 = icmp ult i32 %85, %9
  br i1 %86, label %138, label %87, !prof !1857

87:                                               ; preds = %81
  %88 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #24
  %89 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %2) #25
  %90 = load ptr, ptr %77, align 8, !tbaa !1670
  %91 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %90) #23
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %107, label %93, !prof !1858

93:                                               ; preds = %87, %101
  %94 = phi ptr [ %104, %101 ], [ %90, %87 ]
  %95 = load ptr, ptr %11, align 8, !tbaa !1664
  %96 = tail call fastcc i32 @VEC_unsigned_base_last(ptr noundef %94) #23
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds i32, ptr %95, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !759
  %100 = icmp ult i32 %99, %9
  br i1 %100, label %107, label %101, !prof !1859

101:                                              ; preds = %93
  %102 = tail call fastcc i32 @VEC_unsigned_base_pop(ptr noundef %94) #23
  %103 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %88, i32 noundef %102) #25
  %104 = load ptr, ptr %77, align 8, !tbaa !1670
  %105 = tail call fastcc i32 @VEC_unsigned_base_length(ptr noundef %104) #23
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %93, !prof !1860, !llvm.loop !1861

107:                                              ; preds = %93, %101, %87
  %108 = tail call i32 @bitmap_first_set_bit(ptr noundef %88) #25
  %109 = load ptr, ptr @varmap, align 8
  %110 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %109) #23
  %111 = icmp ult i32 %108, %110
  br i1 %111, label %113, label %112, !prof !1862

112:                                              ; preds = %107
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1372, ptr noundef nonnull @.str.27) #25
  br label %113

113:                                              ; preds = %107, %112
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %6, ptr noundef %88, ptr noundef nonnull %4) #23
  %114 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !770
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %137, label %116, !prof !1858

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 4
  br label %118

118:                                              ; preds = %116, %134
  %119 = load i32, ptr %4, align 4, !tbaa !759
  %120 = load ptr, ptr @varmap, align 8
  %121 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %120) #23
  %122 = icmp ult i32 %119, %121
  %123 = tail call fastcc zeroext i8 @unite(i32 noundef %108, i32 noundef %119) #23, !range !770
  br i1 %122, label %124, label %127, !prof !1863

124:                                              ; preds = %118
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %134, label %126, !prof !1864

126:                                              ; preds = %124
  tail call fastcc void @unify_nodes(ptr noundef %0, i32 noundef %108, i32 noundef %119, i8 noundef zeroext 0) #23
  br label %134

127:                                              ; preds = %118
  %128 = load ptr, ptr %117, align 8, !tbaa !911
  %129 = load ptr, ptr @varmap, align 8
  %130 = tail call fastcc i32 @VEC_varinfo_t_base_length(ptr noundef %129) #23
  %131 = sub i32 %119, %130
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, ptr %128, i64 %132
  store i32 %108, ptr %133, align 4, !tbaa !759
  br label %134

134:                                              ; preds = %127, %126, %124
  call fastcc void @bmp_iter_next(ptr noundef nonnull %6, ptr noundef nonnull %4) #23
  %135 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %6, ptr noundef nonnull %4) #23, !range !770
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %118, !prof !1865, !llvm.loop !1866

137:                                              ; preds = %134, %113
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #24
  br label %138

138:                                              ; preds = %137, %81, %75
  %139 = getelementptr inbounds %struct.scc_info, ptr %1, i64 0, i32 1
  %140 = load ptr, ptr %139, align 8, !tbaa !1663
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
declare i32 @bitmap_first_set_bit(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @bitmap_clear_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @xrealloc(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @init_topo_info() unnamed_addr #6 !prof !1867 !PGOFuncName !1868 {
  %1 = load ptr, ptr @graph, align 8, !tbaa !725
  %2 = load i32, ptr %1, align 8, !tbaa !756
  %3 = tail call ptr @xmalloc(i64 noundef 16) #25
  %4 = tail call ptr @sbitmap_alloc(i32 noundef %2) #25
  store ptr %4, ptr %3, align 8, !tbaa !1869
  tail call void @sbitmap_zero(ptr noundef %4) #25
  %5 = tail call fastcc ptr @VEC_unsigned_heap_alloc() #23
  %6 = getelementptr inbounds %struct.topo_info, ptr %3, i64 0, i32 1
  store ptr %5, ptr %6, align 8, !tbaa !1622
  ret ptr %3
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @compute_topo_order(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #6 !prof !1867 !PGOFuncName !1870 {
  %3 = load i32, ptr %0, align 8, !tbaa !756
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %5, !prof !1624

5:                                                ; preds = %2, %21
  %6 = phi i32 [ %22, %21 ], [ 0, %2 ]
  %7 = load ptr, ptr %1, align 8, !tbaa !1869
  %8 = lshr i32 %6, 6
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds %struct.simple_bitmap_def, ptr %7, i64 0, i32 3, i64 %9
  %11 = load i64, ptr %10, align 8, !tbaa !787
  %12 = and i32 %6, 63
  %13 = zext nneg i32 %12 to i64
  %14 = shl nuw i64 1, %13
  %15 = and i64 %11, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %21, !prof !1871

17:                                               ; preds = %5
  %18 = tail call fastcc i32 @find(i32 noundef %6) #23
  %19 = icmp eq i32 %18, %6
  br i1 %19, label %20, label %21, !prof !1872

20:                                               ; preds = %17
  tail call fastcc void @topo_visit(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %6) #23
  br label %21

21:                                               ; preds = %5, %17, %20
  %22 = add nuw i32 %6, 1
  %23 = icmp eq i32 %22, %3
  br i1 %23, label %24, label %5, !prof !1873, !llvm.loop !1874

24:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc noundef zeroext i8 @eliminate_indirect_cycles(i32 noundef %0) unnamed_addr #6 !prof !1875 !PGOFuncName !1876 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = load ptr, ptr @graph, align 8, !tbaa !725
  %6 = getelementptr inbounds %struct.constraint_graph, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !911
  %8 = zext i32 %0 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !759
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %52, label %12, !prof !1877

12:                                               ; preds = %1
  %13 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !769
  %16 = load ptr, ptr %15, align 8, !tbaa !778
  %17 = icmp eq ptr %16, null
  br i1 %17, label %52, label %18, !prof !1878

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  store ptr null, ptr %3, align 8, !tbaa !725
  %19 = tail call fastcc i32 @find(i32 noundef %10) #23
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %20 = tail call fastcc ptr @get_varinfo(i32 noundef %0) #23
  %21 = getelementptr inbounds %struct.variable_info, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !769
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %22, ptr noundef nonnull %2) #23
  %23 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !770
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %31, !prof !1879

25:                                               ; preds = %41
  %26 = load ptr, ptr %3, align 8
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi ptr [ %26, %25 ], [ null, %18 ]
  %29 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef 0, ptr noundef nonnull %2) #23, !range !746
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %51, label %44, !prof !1880

31:                                               ; preds = %18, %41
  %32 = load i32, ptr %2, align 4, !tbaa !759
  %33 = tail call fastcc i32 @find(i32 noundef %32) #23
  %34 = icmp ne i32 %33, %32
  %35 = icmp eq i32 %32, %19
  %36 = select i1 %34, i1 true, i1 %35
  br i1 %36, label %41, label %37, !prof !1881

37:                                               ; preds = %31
  %38 = tail call fastcc zeroext i8 @unite(i32 noundef %19, i32 noundef %32) #23, !range !770
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %41, label %40, !prof !1882

40:                                               ; preds = %37
  call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %3, i32 noundef %32) #23
  br label %41

41:                                               ; preds = %31, %40, %37
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %2) #23
  %42 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %2) #23, !range !770
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %25, label %31, !prof !1883, !llvm.loop !1884

44:                                               ; preds = %27, %44
  %45 = phi i32 [ %48, %44 ], [ 0, %27 ]
  %46 = load ptr, ptr @graph, align 8, !tbaa !725
  %47 = load i32, ptr %2, align 4, !tbaa !759
  tail call fastcc void @unify_nodes(ptr noundef %46, i32 noundef %19, i32 noundef %47, i8 noundef zeroext 1) #23
  %48 = add nuw nsw i32 %45, 1
  %49 = call fastcc i32 @VEC_unsigned_base_iterate(ptr noundef %28, i32 noundef %48, ptr noundef nonnull %2) #23, !range !746
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %44, !prof !1885, !llvm.loop !1886

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
declare zeroext i8 @bitmap_and_compl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_complex_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 !prof !1887 !PGOFuncName !1888 {
  %4 = load i32, ptr %1, align 8, !tbaa !730
  %5 = icmp eq i32 %4, 1
  %6 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !739
  br i1 %5, label %8, label %12, !prof !1889

8:                                                ; preds = %3
  %9 = icmp eq i32 %7, 2
  br i1 %9, label %10, label %11, !prof !1890

10:                                               ; preds = %8
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1729, ptr noundef nonnull @.str.27) #25
  br label %57

11:                                               ; preds = %8
  tail call fastcc void @do_ds_constraint(ptr noundef nonnull %1, ptr noundef %2) #23
  br label %57

12:                                               ; preds = %3
  switch i32 %7, label %24 [
    i32 1, label %13
    i32 0, label %22
  ], !prof !1891

13:                                               ; preds = %12
  %14 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %15 = load i32, ptr %14, align 4, !tbaa !735
  %16 = tail call fastcc ptr @get_varinfo(i32 noundef %15) #23
  %17 = getelementptr inbounds %struct.variable_info, ptr %16, i64 0, i32 1
  %18 = load i8, ptr %17, align 4
  %19 = and i8 %18, 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %57, !prof !1892

21:                                               ; preds = %13
  tail call fastcc void @do_sd_constraint(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) #23
  br label %57

22:                                               ; preds = %12
  %23 = icmp eq i32 %4, 0
  br i1 %23, label %25, label %24, !prof !1893

24:                                               ; preds = %12, %22
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1749, ptr noundef nonnull @.str.27) #25
  br label %25

25:                                               ; preds = %22, %24
  %26 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !740
  %28 = tail call fastcc ptr @get_varinfo(i32 noundef %27) #23
  %29 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !769
  %31 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !735
  %33 = tail call fastcc ptr @get_varinfo(i32 noundef %32) #23
  %34 = getelementptr inbounds %struct.variable_info, ptr %33, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !769
  %36 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !741
  %38 = tail call fastcc zeroext i8 @set_union_with_increment(ptr noundef %35, ptr noundef %30, i64 noundef %37) #23
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %57, label %40, !prof !1894

40:                                               ; preds = %25
  %41 = load i32, ptr %31, align 4, !tbaa !735
  %42 = tail call fastcc ptr @get_varinfo(i32 noundef %41) #23
  %43 = getelementptr inbounds %struct.variable_info, ptr %42, i64 0, i32 8
  store ptr %35, ptr %43, align 8, !tbaa !769
  %44 = load ptr, ptr @changed, align 8, !tbaa !725
  %45 = lshr i32 %41, 6
  %46 = zext nneg i32 %45 to i64
  %47 = getelementptr inbounds %struct.simple_bitmap_def, ptr %44, i64 0, i32 3, i64 %46
  %48 = load i64, ptr %47, align 8, !tbaa !787
  %49 = and i32 %41, 63
  %50 = zext nneg i32 %49 to i64
  %51 = shl nuw i64 1, %50
  %52 = and i64 %48, %51
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %57, !prof !1895

54:                                               ; preds = %40
  tail call fastcc void @SET_BIT(ptr noundef nonnull %44, i32 noundef %41) #23
  %55 = load i32, ptr @changed_count, align 4, !tbaa !759
  %56 = add i32 %55, 1
  store i32 %56, ptr @changed_count, align 4, !tbaa !759
  br label %57

57:                                               ; preds = %25, %54, %40, %21, %13, %10, %11
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc zeroext i8 @set_union_with_increment(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #6 !prof !1896 !PGOFuncName !1897 {
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %5, label %7, !prof !1898

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
define internal fastcc void @free_topo_info(ptr nocapture noundef %0) unnamed_addr #17 !prof !1867 !PGOFuncName !1899 {
  %2 = load ptr, ptr %0, align 8, !tbaa !1869
  %3 = load ptr, ptr %2, align 8, !tbaa !1592
  tail call void @free(ptr noundef %3) #23
  %4 = load ptr, ptr %0, align 8, !tbaa !1869
  tail call void @free(ptr noundef %4) #23
  %5 = getelementptr inbounds %struct.topo_info, ptr %0, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_free(ptr noundef nonnull %5) #23
  tail call void @free(ptr noundef %0) #23
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @topo_visit(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) unnamed_addr #6 !prof !1900 !PGOFuncName !1901 {
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #24
  %6 = load ptr, ptr %1, align 8, !tbaa !1869
  tail call fastcc void @SET_BIT(ptr noundef %6, i32 noundef %2) #23
  %7 = getelementptr inbounds %struct.constraint_graph, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !908
  %9 = zext i32 %2 to i64
  %10 = getelementptr inbounds ptr, ptr %8, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !725
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13, !prof !1902

13:                                               ; preds = %3
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef nonnull %11, ptr noundef nonnull %5) #23
  %14 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !770
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %32, label %16, !prof !1903

16:                                               ; preds = %13, %29
  %17 = load ptr, ptr %1, align 8, !tbaa !1869
  %18 = load i32, ptr %5, align 4, !tbaa !759
  %19 = lshr i32 %18, 6
  %20 = zext nneg i32 %19 to i64
  %21 = getelementptr inbounds %struct.simple_bitmap_def, ptr %17, i64 0, i32 3, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !787
  %23 = and i32 %18, 63
  %24 = zext nneg i32 %23 to i64
  %25 = shl nuw i64 1, %24
  %26 = and i64 %25, %22
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29, !prof !1904

28:                                               ; preds = %16
  tail call fastcc void @topo_visit(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %18) #23
  br label %29

29:                                               ; preds = %16, %28
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %5) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %5) #23, !range !770
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %16, !prof !1905, !llvm.loop !1906

32:                                               ; preds = %29, %13, %3
  %33 = getelementptr inbounds %struct.topo_info, ptr %1, i64 0, i32 1
  tail call fastcc void @VEC_unsigned_heap_safe_push(ptr noundef nonnull %33, i32 noundef %2) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal fastcc noundef i32 @VEC_unsigned_base_iterate(ptr noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) unnamed_addr #5 !prof !1907 !PGOFuncName !1908 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %12, label %5, !prof !1909

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 4, !tbaa !1738
  %7 = icmp ugt i32 %6, %1
  br i1 %7, label %8, label %12, !prof !1910

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  %10 = getelementptr inbounds %struct.VEC_unsigned_base, ptr %0, i64 0, i32 2, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !759
  br label %12

12:                                               ; preds = %3, %5, %8
  %13 = phi i32 [ %11, %8 ], [ 0, %5 ], [ 0, %3 ]
  %14 = phi i32 [ 1, %8 ], [ 0, %5 ], [ 0, %3 ]
  store i32 %13, ptr %2, align 4, !tbaa !759
  ret i32 %14
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_ds_constraint(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #6 !prof !1911 !PGOFuncName !1912 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !740
  %7 = tail call fastcc ptr @get_varinfo(i32 noundef %6) #23
  %8 = getelementptr inbounds %struct.variable_info, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !769
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %10 = getelementptr inbounds %struct.constraint_expr, ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !738
  %12 = getelementptr inbounds %struct.constraint, ptr %0, i64 0, i32 1, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !741
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %16, label %15, !prof !1913

15:                                               ; preds = %2
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1624, ptr noundef nonnull @.str.27) #25
  br label %16

16:                                               ; preds = %2, %15
  %17 = tail call i32 @bitmap_bit_p(ptr noundef %9, i32 noundef 1) #25
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %24, label %19, !prof !1914

19:                                               ; preds = %16
  %20 = tail call fastcc i32 @find(i32 noundef 1) #23
  %21 = tail call fastcc ptr @get_varinfo(i32 noundef %20) #23
  %22 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 8
  %23 = load ptr, ptr %22, align 8, !tbaa !769
  br label %24

24:                                               ; preds = %19, %16
  %25 = phi ptr [ %23, %19 ], [ %9, %16 ]
  %26 = tail call i32 @bitmap_bit_p(ptr noundef %1, i32 noundef 1) #25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %53, label %28, !prof !1915

28:                                               ; preds = %24
  %29 = tail call fastcc i32 @find(i32 noundef 6) #23
  %30 = load ptr, ptr @graph, align 8, !tbaa !725
  %31 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %30, i32 noundef %29, i32 noundef %6) #23, !range !770
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %156, label %33, !prof !1916

33:                                               ; preds = %28
  %34 = tail call fastcc ptr @get_varinfo(i32 noundef %29) #23
  %35 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 8
  %36 = load ptr, ptr %35, align 8, !tbaa !769
  %37 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %36, ptr noundef %25) #25
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %156, label %39, !prof !1917

39:                                               ; preds = %33
  %40 = load ptr, ptr @changed, align 8, !tbaa !725
  %41 = lshr i32 %29, 6
  %42 = zext nneg i32 %41 to i64
  %43 = getelementptr inbounds %struct.simple_bitmap_def, ptr %40, i64 0, i32 3, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !787
  %45 = and i32 %29, 63
  %46 = zext nneg i32 %45 to i64
  %47 = shl nuw i64 1, %46
  %48 = and i64 %44, %47
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %156, !prof !1918

50:                                               ; preds = %39
  tail call fastcc void @SET_BIT(ptr noundef nonnull %40, i32 noundef %29) #23
  %51 = load i32, ptr @changed_count, align 4, !tbaa !759
  %52 = add i32 %51, 1
  store i32 %52, ptr @changed_count, align 4, !tbaa !759
  br label %156

53:                                               ; preds = %24
  %54 = icmp eq i64 %11, -9223372036854775808
  br i1 %54, label %55, label %56, !prof !1919

55:                                               ; preds = %53
  tail call fastcc void @solution_set_expand(ptr noundef %1, ptr noundef %1) #23
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i64 [ 0, %55 ], [ %11, %53 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %3) #23
  %58 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %156, label %60, !prof !1920

60:                                               ; preds = %56, %153
  %61 = load i32, ptr %3, align 4, !tbaa !759
  %62 = tail call fastcc ptr @get_varinfo(i32 noundef %61) #23
  %63 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !1058
  %65 = add i64 %64, %57
  %66 = getelementptr inbounds %struct.variable_info, ptr %62, i64 0, i32 1
  %67 = load i8, ptr %66, align 4
  %68 = icmp sgt i8 %67, -1
  br i1 %68, label %94, label %69, !prof !1921

69:                                               ; preds = %60
  %70 = tail call fastcc i32 @find(i32 noundef 3) #23
  %71 = load ptr, ptr @graph, align 8, !tbaa !725
  %72 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %71, i32 noundef %70, i32 noundef %6) #23, !range !770
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %94, label %74, !prof !1922

74:                                               ; preds = %69
  %75 = tail call fastcc ptr @get_varinfo(i32 noundef %70) #23
  %76 = getelementptr inbounds %struct.variable_info, ptr %75, i64 0, i32 8
  %77 = load ptr, ptr %76, align 8, !tbaa !769
  %78 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %77, ptr noundef %25) #25
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %94, label %80, !prof !1923

80:                                               ; preds = %74
  %81 = load ptr, ptr @changed, align 8, !tbaa !725
  %82 = lshr i32 %70, 6
  %83 = zext nneg i32 %82 to i64
  %84 = getelementptr inbounds %struct.simple_bitmap_def, ptr %81, i64 0, i32 3, i64 %83
  %85 = load i64, ptr %84, align 8, !tbaa !787
  %86 = and i32 %70, 63
  %87 = zext nneg i32 %86 to i64
  %88 = shl nuw i64 1, %87
  %89 = and i64 %85, %88
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94, !prof !1924

91:                                               ; preds = %80
  tail call fastcc void @SET_BIT(ptr noundef nonnull %81, i32 noundef %70) #23
  %92 = load i32, ptr @changed_count, align 4, !tbaa !759
  %93 = add i32 %92, 1
  store i32 %93, ptr @changed_count, align 4, !tbaa !759
  br label %94

94:                                               ; preds = %69, %74, %80, %91, %60
  %95 = load i8, ptr %66, align 4
  %96 = and i8 %95, 2
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %98, label %153, !prof !1925

98:                                               ; preds = %94
  %99 = and i8 %95, 8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %106, !prof !1926

101:                                              ; preds = %98
  %102 = icmp eq i64 %57, 0
  br i1 %102, label %110, label %103, !prof !1927

103:                                              ; preds = %101
  %104 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %62, i64 noundef %65) #23
  %105 = icmp eq ptr %104, null
  br i1 %105, label %153, label %110, !prof !1928

106:                                              ; preds = %98, %151
  %107 = phi ptr [ %152, %151 ], [ %63, %98 ]
  %108 = phi ptr [ %149, %151 ], [ %62, %98 ]
  %109 = load i64, ptr %107, align 8, !tbaa !1058
  br label %110

110:                                              ; preds = %106, %103, %101
  %111 = phi ptr [ %104, %103 ], [ %62, %101 ], [ %108, %106 ]
  %112 = phi i64 [ %65, %103 ], [ %65, %101 ], [ %109, %106 ]
  %113 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 1
  %114 = load i8, ptr %113, align 4
  %115 = and i8 %114, 64
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %143, label %117, !prof !1929

117:                                              ; preds = %110
  %118 = load i32, ptr %111, align 8, !tbaa !920
  %119 = tail call fastcc i32 @find(i32 noundef %118) #23
  %120 = load ptr, ptr @graph, align 8, !tbaa !725
  %121 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %120, i32 noundef %119, i32 noundef %6) #23, !range !770
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %143, label %123, !prof !1930

123:                                              ; preds = %117
  %124 = tail call fastcc ptr @get_varinfo(i32 noundef %119) #23
  %125 = getelementptr inbounds %struct.variable_info, ptr %124, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !769
  %127 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %126, ptr noundef %25) #25
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %143, label %129, !prof !1931

129:                                              ; preds = %123
  %130 = load ptr, ptr @changed, align 8, !tbaa !725
  %131 = lshr i32 %119, 6
  %132 = zext nneg i32 %131 to i64
  %133 = getelementptr inbounds %struct.simple_bitmap_def, ptr %130, i64 0, i32 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !787
  %135 = and i32 %119, 63
  %136 = zext nneg i32 %135 to i64
  %137 = shl nuw i64 1, %136
  %138 = and i64 %134, %137
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143, !prof !1932

140:                                              ; preds = %129
  tail call fastcc void @SET_BIT(ptr noundef nonnull %130, i32 noundef %119) #23
  %141 = load i32, ptr @changed_count, align 4, !tbaa !759
  %142 = add i32 %141, 1
  store i32 %142, ptr @changed_count, align 4, !tbaa !759
  br label %143

143:                                              ; preds = %117, %123, %129, %140, %110
  %144 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 3
  %145 = load i64, ptr %144, align 8, !tbaa !1058
  %146 = icmp eq i64 %145, %112
  br i1 %146, label %153, label %147, !prof !1933

147:                                              ; preds = %143
  %148 = getelementptr inbounds %struct.variable_info, ptr %111, i64 0, i32 2
  %149 = load ptr, ptr %148, align 8, !tbaa !923
  %150 = icmp eq ptr %149, null
  br i1 %150, label %153, label %151, !prof !1934

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.variable_info, ptr %149, i64 0, i32 3
  br label %106

153:                                              ; preds = %147, %143, %103, %94
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %154 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %156, label %60, !prof !1935, !llvm.loop !1936

156:                                              ; preds = %153, %56, %28, %39, %50, %33
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @do_sd_constraint(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #6 !prof !1937 !PGOFuncName !1938 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  %6 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !735
  %8 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %9 = getelementptr inbounds %struct.variable_info, ptr %8, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !769
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  %11 = getelementptr inbounds %struct.constraint, ptr %1, i64 0, i32 1, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !741
  %13 = getelementptr inbounds %struct.constraint_expr, ptr %1, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !738
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %17, label %16, !prof !1892

16:                                               ; preds = %3
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 1535, ptr noundef nonnull @.str.27) #25
  br label %17

17:                                               ; preds = %3, %16
  %18 = tail call i32 @bitmap_bit_p(ptr noundef %2, i32 noundef 1) #25
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20, !prof !1939

20:                                               ; preds = %17
  %21 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 1) #25
  br label %97

22:                                               ; preds = %17
  %23 = icmp eq i64 %12, -9223372036854775808
  br i1 %23, label %24, label %25, !prof !1940

24:                                               ; preds = %22
  tail call fastcc void @solution_set_expand(ptr noundef %2, ptr noundef %2) #23
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ 0, %24 ], [ %12, %22 ]
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %2, ptr noundef nonnull %4) #23
  %27 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %116, label %29, !prof !1941

29:                                               ; preds = %25
  %30 = icmp eq i64 %26, 0
  br label %31

31:                                               ; preds = %29, %93
  %32 = phi i8 [ 0, %29 ], [ %94, %93 ]
  %33 = load i32, ptr %4, align 4, !tbaa !759
  %34 = tail call fastcc ptr @get_varinfo(i32 noundef %33) #23
  %35 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 3
  %36 = load i64, ptr %35, align 8, !tbaa !1058
  %37 = add i64 %36, %26
  %38 = getelementptr inbounds %struct.variable_info, ptr %34, i64 0, i32 1
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 8
  %41 = icmp ne i8 %40, 0
  %42 = select i1 %41, i1 true, i1 %30
  %43 = select i1 %41, i64 %36, i64 %37, !prof !1942
  br i1 %42, label %47, label %44, !prof !1943

44:                                               ; preds = %31
  %45 = tail call fastcc ptr @first_vi_for_offset(ptr noundef nonnull %34, i64 noundef %37) #23
  %46 = icmp eq ptr %45, null
  br i1 %46, label %93, label %47, !prof !1944

47:                                               ; preds = %31, %44
  %48 = phi ptr [ %34, %31 ], [ %45, %44 ]
  %49 = phi i64 [ %43, %31 ], [ %37, %44 ]
  br label %50

50:                                               ; preds = %47, %90
  %51 = phi ptr [ %88, %90 ], [ %48, %47 ]
  %52 = phi i64 [ %92, %90 ], [ %49, %47 ]
  %53 = phi i8 [ %82, %90 ], [ %32, %47 ]
  %54 = load i32, ptr %51, align 8, !tbaa !920
  %55 = tail call fastcc i32 @find(i32 noundef %54) #23
  %56 = tail call fastcc ptr @get_varinfo(i32 noundef %55) #23
  %57 = getelementptr inbounds %struct.variable_info, ptr %56, i64 0, i32 1
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 2
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %66, label %61, !prof !1945

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.variable_info, ptr %56, i64 0, i32 8
  %63 = load ptr, ptr %62, align 8, !tbaa !769
  %64 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %63) #25
  %65 = or i8 %64, %53
  br label %81

66:                                               ; preds = %50
  %67 = load i32, ptr %51, align 8, !tbaa !920
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %72, !prof !1946

69:                                               ; preds = %66
  %70 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %10, i32 noundef 3) #25
  %71 = or i8 %70, %53
  br label %81

72:                                               ; preds = %66
  %73 = tail call fastcc zeroext i8 @add_graph_edge(ptr noundef %0, i32 noundef %7, i32 noundef %55) #23, !range !770
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75, !prof !1947

75:                                               ; preds = %72
  %76 = tail call fastcc ptr @get_varinfo(i32 noundef %55) #23
  %77 = getelementptr inbounds %struct.variable_info, ptr %76, i64 0, i32 8
  %78 = load ptr, ptr %77, align 8, !tbaa !769
  %79 = tail call zeroext i8 @bitmap_ior_into(ptr noundef %10, ptr noundef %78) #25
  %80 = or i8 %79, %53
  br label %81

81:                                               ; preds = %69, %75, %72, %61
  %82 = phi i8 [ %65, %61 ], [ %71, %69 ], [ %80, %75 ], [ %53, %72 ]
  %83 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 3
  %84 = load i64, ptr %83, align 8, !tbaa !1058
  %85 = icmp eq i64 %84, %52
  br i1 %85, label %93, label %86, !prof !1948

86:                                               ; preds = %81
  %87 = getelementptr inbounds %struct.variable_info, ptr %51, i64 0, i32 2
  %88 = load ptr, ptr %87, align 8, !tbaa !923
  %89 = icmp eq ptr %88, null
  br i1 %89, label %93, label %90, !prof !1949

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.variable_info, ptr %88, i64 0, i32 3
  %92 = load i64, ptr %91, align 8, !tbaa !1058
  br label %50

93:                                               ; preds = %86, %81, %44
  %94 = phi i8 [ %32, %44 ], [ %82, %81 ], [ %82, %86 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %95 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %97, label %31, !prof !1950, !llvm.loop !1951

97:                                               ; preds = %93, %20
  %98 = phi i8 [ %21, %20 ], [ %94, %93 ]
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %116, label %100, !prof !1952

100:                                              ; preds = %97
  %101 = tail call fastcc ptr @get_varinfo(i32 noundef %7) #23
  %102 = getelementptr inbounds %struct.variable_info, ptr %101, i64 0, i32 8
  store ptr %10, ptr %102, align 8, !tbaa !769
  %103 = load ptr, ptr @changed, align 8, !tbaa !725
  %104 = lshr i32 %7, 6
  %105 = zext nneg i32 %104 to i64
  %106 = getelementptr inbounds %struct.simple_bitmap_def, ptr %103, i64 0, i32 3, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !787
  %108 = and i32 %7, 63
  %109 = zext nneg i32 %108 to i64
  %110 = shl nuw i64 1, %109
  %111 = and i64 %107, %110
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %116, !prof !1953

113:                                              ; preds = %100
  tail call fastcc void @SET_BIT(ptr noundef nonnull %103, i32 noundef %7) #23
  %114 = load i32, ptr @changed_count, align 4, !tbaa !759
  %115 = add i32 %114, 1
  store i32 %115, ptr @changed_count, align 4, !tbaa !759
  br label %116

116:                                              ; preds = %25, %100, %113, %97
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solution_set_expand(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #6 !prof !1954 !PGOFuncName !1955 {
  %3 = alloca %struct.bitmap_iterator, align 8
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef %1, ptr noundef nonnull %4) #23
  %5 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %50, label %7, !prof !1956

7:                                                ; preds = %2, %26
  %8 = phi ptr [ %27, %26 ], [ null, %2 ]
  %9 = load i32, ptr %4, align 4, !tbaa !759
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %26, !prof !1957

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !896
  %18 = tail call fastcc ptr @lookup_vi_for_tree(ptr noundef %17) #23
  %19 = icmp eq ptr %8, null
  br i1 %19, label %20, label %22, !prof !1958

20:                                               ; preds = %15
  %21 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef null) #25
  br label %22

22:                                               ; preds = %20, %15
  %23 = phi ptr [ %21, %20 ], [ %8, %15 ]
  %24 = load i32, ptr %18, align 8, !tbaa !920
  %25 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %23, i32 noundef %24) #25
  br label %26

26:                                               ; preds = %7, %22
  %27 = phi ptr [ %23, %22 ], [ %8, %7 ]
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %28 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %30, label %7, !prof !1959, !llvm.loop !1960

30:                                               ; preds = %26
  %31 = icmp eq ptr %27, null
  br i1 %31, label %50, label %32, !prof !1961

32:                                               ; preds = %30
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %3, ptr noundef nonnull %27, ptr noundef nonnull %4) #23
  %33 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %49, label %35, !prof !1962

35:                                               ; preds = %32, %46
  %36 = load i32, ptr %4, align 4, !tbaa !759
  %37 = tail call fastcc ptr @get_varinfo(i32 noundef %36) #23
  %38 = icmp eq ptr %37, null
  br i1 %38, label %46, label %39, !prof !1963

39:                                               ; preds = %35, %39
  %40 = phi ptr [ %44, %39 ], [ %37, %35 ]
  %41 = load i32, ptr %40, align 8, !tbaa !920
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %41) #25
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 2
  %44 = load ptr, ptr %43, align 8, !tbaa !923
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %39, !prof !1964, !llvm.loop !1965

46:                                               ; preds = %39, %35
  call fastcc void @bmp_iter_next(ptr noundef nonnull %3, ptr noundef nonnull %4) #23
  %47 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %3, ptr noundef nonnull %4) #23, !range !770
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %49, label %35, !prof !1966, !llvm.loop !1967

49:                                               ; preds = %46, %32
  tail call void @bitmap_obstack_free(ptr noundef nonnull %27) #25
  br label %50

50:                                               ; preds = %2, %49, %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare void @bitmap_copy(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @solution_set_add(ptr noundef %0, i64 noundef %1) unnamed_addr #6 !prof !1968 !PGOFuncName !1969 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bitmap_iterator, align 8
  %5 = tail call ptr @bitmap_obstack_alloc_stat(ptr noundef nonnull @iteration_obstack) #25
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #24
  %6 = icmp eq i64 %1, -9223372036854775808
  br i1 %6, label %7, label %8, !prof !1970

7:                                                ; preds = %2
  tail call fastcc void @solution_set_expand(ptr noundef %0, ptr noundef %0) #23
  br label %47

8:                                                ; preds = %2
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %4, ptr noundef %0, ptr noundef nonnull %3) #23
  %9 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %46, label %11, !prof !1971

11:                                               ; preds = %8, %43
  %12 = load i32, ptr %3, align 4, !tbaa !759
  %13 = tail call fastcc ptr @get_varinfo(i32 noundef %12) #23
  %14 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 13
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %40, !prof !1972

18:                                               ; preds = %11
  %19 = icmp slt i64 %1, 0
  %20 = getelementptr inbounds %struct.variable_info, ptr %13, i64 0, i32 3
  %21 = load i64, ptr %20, align 8, !tbaa !1058
  %22 = add i64 %21, %1
  br i1 %19, label %23, label %26, !prof !1973

23:                                               ; preds = %18
  %24 = icmp ugt i64 %22, %21
  %25 = select i1 %24, i64 0, i64 %22, !prof !1974
  br label %26

26:                                               ; preds = %18, %23
  %27 = phi i64 [ %25, %23 ], [ %22, %18 ]
  %28 = tail call fastcc ptr @first_or_preceding_vi_for_offset(ptr noundef nonnull %13, i64 noundef %27) #23
  %29 = load i32, ptr %28, align 8, !tbaa !920
  %30 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %29) #25
  %31 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 3
  %32 = load i64, ptr %31, align 8, !tbaa !1058
  %33 = icmp eq i64 %32, %27
  br i1 %33, label %43, label %34, !prof !1975

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.variable_info, ptr %28, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !923
  %37 = icmp eq ptr %36, null
  br i1 %37, label %43, label %38, !prof !1976

38:                                               ; preds = %34
  %39 = load i32, ptr %36, align 8, !tbaa !920
  br label %40

40:                                               ; preds = %11, %38
  %41 = phi i32 [ %39, %38 ], [ %12, %11 ]
  %42 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %5, i32 noundef %41) #25
  br label %43

43:                                               ; preds = %40, %26, %34
  call fastcc void @bmp_iter_next(ptr noundef nonnull %4, ptr noundef nonnull %3) #23
  %44 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %4, ptr noundef nonnull %3) #23, !range !770
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %11, !prof !1977, !llvm.loop !1978

46:                                               ; preds = %43, %8
  tail call void @bitmap_copy(ptr noundef %0, ptr noundef %5) #25
  tail call void @bitmap_obstack_free(ptr noundef %5) #25
  br label %47

47:                                               ; preds = %46, %7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #24
  ret void
}

; Function Attrs: optsize
declare ptr @bitmap_gc_alloc_stat() local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @set_uids_in_ptset(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #6 !prof !1979 !PGOFuncName !1980 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bitmap_iterator, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #24
  call fastcc void @bmp_iter_set_init(ptr noundef nonnull %5, ptr noundef %1, ptr noundef nonnull %4) #23
  %6 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8, !prof !1981

8:                                                ; preds = %3, %29
  %9 = load i32, ptr %4, align 4, !tbaa !759
  %10 = tail call fastcc ptr @get_varinfo(i32 noundef %9) #23
  %11 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 1
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, 17
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %29, label %15, !prof !1982

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.variable_info, ptr %10, i64 0, i32 7
  %17 = load ptr, ptr %16, align 8, !tbaa !896
  %18 = load i64, ptr %17, align 8
  %19 = trunc i64 %18 to i16
  switch i16 %19, label %29 [
    i16 32, label %20
    i16 34, label %20
    i16 36, label %20
  ], !prof !1983

20:                                               ; preds = %15, %15, %15
  %21 = getelementptr inbounds %struct.tree_decl_minimal, ptr %17, i64 0, i32 2
  %22 = load i32, ptr %21, align 4, !tbaa !833
  %23 = tail call zeroext i8 @bitmap_set_bit(ptr noundef %0, i32 noundef %22) #25
  %24 = load i8, ptr %11, align 4
  %25 = icmp sgt i8 %24, -1
  br i1 %25, label %29, label %26, !prof !1984

26:                                               ; preds = %20
  %27 = load i8, ptr %2, align 8
  %28 = or i8 %27, 16
  store i8 %28, ptr %2, align 8
  br label %29

29:                                               ; preds = %26, %20, %15, %8
  call fastcc void @bmp_iter_next(ptr noundef nonnull %5, ptr noundef nonnull %4) #23
  %30 = call fastcc zeroext i8 @bmp_iter_set(ptr noundef nonnull %5, ptr noundef nonnull %4) #23, !range !770
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %8, !prof !1985, !llvm.loop !1986

32:                                               ; preds = %29, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #24
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc ptr @shared_bitmap_lookup(ptr noundef %0) unnamed_addr #6 !prof !1979 !PGOFuncName !1987 {
  %2 = alloca %struct.shared_bitmap_info, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #24
  store ptr %0, ptr %2, align 8, !tbaa !1056
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !1052
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !725
  %6 = call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 0) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %11, label %8, !prof !1032

8:                                                ; preds = %1
  %9 = load ptr, ptr %6, align 8, !tbaa !725
  %10 = load ptr, ptr %9, align 8, !tbaa !1056
  br label %11

11:                                               ; preds = %1, %8
  %12 = phi ptr [ %10, %8 ], [ null, %1 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #24
  ret ptr %12
}

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @shared_bitmap_add(ptr noundef %0) unnamed_addr #6 !prof !1988 !PGOFuncName !1989 {
  %2 = tail call ptr @xmalloc(i64 noundef 16) #25
  store ptr %0, ptr %2, align 8, !tbaa !1056
  %3 = tail call i32 @bitmap_hash(ptr noundef %0) #25
  %4 = getelementptr inbounds %struct.shared_bitmap_info, ptr %2, i64 0, i32 1
  store i32 %3, ptr %4, align 8, !tbaa !1052
  %5 = load ptr, ptr @shared_bitmap_table, align 8, !tbaa !725
  %6 = tail call ptr @htab_find_slot_with_hash(ptr noundef %5, ptr noundef nonnull %2, i32 noundef %3, i32 noundef 1) #25
  %7 = load ptr, ptr %6, align 8, !tbaa !725
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9, !prof !1990

9:                                                ; preds = %1
  tail call void @fancy_abort(ptr noundef nonnull @.str.26, i32 noundef 4754, ptr noundef nonnull @.str.27) #25
  br label %10

10:                                               ; preds = %1, %9
  store ptr %2, ptr %6, align 8, !tbaa !725
  ret void
}

; Function Attrs: optsize
declare void @bitmap_clear(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare ptr @get_ptr_info(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @pointer_map_destroy(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress noinline nounwind optsize willreturn uwtable
define internal fastcc void @VEC_varinfo_t_heap_free() unnamed_addr #17 !prof !871 !PGOFuncName !1991 {
  %1 = load ptr, ptr @varmap, align 8, !tbaa !725
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3, !prof !931

3:                                                ; preds = %0
  tail call void @free(ptr noundef nonnull %1) #23
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @varmap, align 8, !tbaa !725
  ret void
}

; Function Attrs: optsize
declare void @free_alloc_pool(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_tree_pta() #19 !prof !1992 !PGOFuncName !1993 {
  %1 = load i32, ptr @flag_tree_pta, align 4, !tbaa !759
  %2 = trunc i32 %1 to i8
  ret i8 %2
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal zeroext i8 @gate_ipa_pta() #2 !prof !1994 !PGOFuncName !1995 {
  %1 = load i32, ptr @optimize, align 4, !tbaa !759
  %2 = icmp ne i32 %1, 0
  %3 = load i32, ptr @flag_ipa_pta, align 4
  %4 = icmp ne i32 %3, 0
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %16, !prof !1996

6:                                                ; preds = %0
  %7 = load ptr, ptr @global_dc, align 8, !tbaa !725
  %8 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 4
  %9 = load i32, ptr %8, align 8, !tbaa !759
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.diagnostic_context, ptr %7, i64 0, i32 1, i64 5
  %13 = load i32, ptr %12, align 4, !tbaa !759
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i8
  br label %16

16:                                               ; preds = %6, %11, %0
  %17 = phi i8 [ 0, %0 ], [ 0, %6 ], [ %15, %11 ]
  ret i8 %17
}

; Function Attrs: noinline nounwind optsize uwtable
define internal noundef i32 @ipa_pta_execute() #6 !prof !724 !PGOFuncName !1997 {
  %1 = alloca %struct.gimple_stmt_iterator, align 8
  %2 = alloca %struct.gimple_stmt_iterator, align 8
  store i1 true, ptr @in_ipa_mode, align 4
  tail call fastcc void @init_alias_heapvars() #23
  tail call fastcc void @init_alias_vars() #23
  %3 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !725
  %4 = icmp eq ptr %3, null
  br i1 %4, label %96, label %8

5:                                                ; preds = %25
  %6 = load ptr, ptr @cgraph_nodes, align 8, !tbaa !725
  %7 = icmp eq ptr %6, null
  br i1 %7, label %96, label %29

8:                                                ; preds = %0, %25
  %9 = phi ptr [ %27, %25 ], [ %3, %0 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !1998
  %11 = tail call zeroext i8 @gimple_has_body_p(ptr noundef %10) #25
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !2006
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 18, i32 2
  %19 = load i8, ptr %18, align 8
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load ptr, ptr %9, align 8, !tbaa !1998
  %24 = tail call ptr @cgraph_node_name(ptr noundef nonnull %9) #25
  tail call fastcc void @create_function_info_for(ptr noundef %23, ptr noundef %24) #23
  br label %25

25:                                               ; preds = %17, %8, %13, %22
  %26 = getelementptr inbounds %struct.cgraph_node, ptr %9, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !725
  %28 = icmp eq ptr %27, null
  br i1 %28, label %5, label %8, !llvm.loop !2007

29:                                               ; preds = %5, %92
  %30 = phi ptr [ %94, %92 ], [ %6, %5 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !1998
  %32 = call zeroext i8 @gimple_has_body_p(ptr noundef %31) #25
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %92, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 12
  %36 = load ptr, ptr %35, align 8, !tbaa !2006
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %92

38:                                               ; preds = %34
  %39 = load ptr, ptr @dump_file, align 8, !tbaa !725
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = call ptr @cgraph_node_name(ptr noundef nonnull %30) #25
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %39, ptr noundef nonnull @.str.85, ptr noundef %42) #23
  br label %44

44:                                               ; preds = %41, %38
  %45 = load ptr, ptr %30, align 8, !tbaa !1998
  %46 = getelementptr inbounds %struct.tree_function_decl, ptr %45, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !833
  %48 = load ptr, ptr @current_function_decl, align 8, !tbaa !725
  call void @push_cfun(ptr noundef %47) #25
  %49 = load ptr, ptr %30, align 8, !tbaa !1998
  store ptr %49, ptr @current_function_decl, align 8, !tbaa !725
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
  %57 = load ptr, ptr %56, align 8, !tbaa !874
  %58 = load ptr, ptr %57, align 8, !tbaa !875
  %59 = getelementptr inbounds %struct.basic_block_def, ptr %58, i64 0, i32 6
  %60 = load ptr, ptr %59, align 8, !tbaa !877
  %61 = getelementptr inbounds %struct.control_flow_graph, ptr %57, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !879
  %63 = icmp eq ptr %60, %62
  br i1 %63, label %91, label %64

64:                                               ; preds = %55, %84
  %65 = phi ptr [ %86, %84 ], [ %60, %55 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #24
  call void @gsi_start_phis(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %1, ptr noundef %65) #25
  %66 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !770
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
  %75 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !770
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %68, label %77, !llvm.loop !2008

77:                                               ; preds = %74, %64
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #24
  call fastcc void @gsi_start_bb(ptr dead_on_unwind nonnull writable sret(%struct.gimple_stmt_iterator) align 8 %2, ptr noundef %65) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !885
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #24
  %78 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !770
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77, %80
  %81 = call fastcc ptr @gsi_stmt(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23
  call fastcc void @find_func_aliases(ptr noundef %81) #23
  call fastcc void @gsi_next(ptr noundef nonnull %1) #23
  %82 = call fastcc zeroext i8 @gsi_end_p(ptr noundef nonnull byval(%struct.gimple_stmt_iterator) align 8 %1) #23, !range !770
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %80, label %84, !llvm.loop !2009

84:                                               ; preds = %80, %77
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #24
  %85 = getelementptr inbounds %struct.basic_block_def, ptr %65, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !877
  %87 = load ptr, ptr %56, align 8, !tbaa !874
  %88 = getelementptr inbounds %struct.control_flow_graph, ptr %87, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !879
  %90 = icmp eq ptr %86, %89
  br i1 %90, label %91, label %64, !llvm.loop !2010

91:                                               ; preds = %84, %55
  store ptr %48, ptr @current_function_decl, align 8, !tbaa !725
  call void @pop_cfun() #25
  br label %92

92:                                               ; preds = %29, %34, %91
  %93 = getelementptr inbounds %struct.cgraph_node, ptr %30, i64 0, i32 3
  %94 = load ptr, ptr %93, align 8, !tbaa !725
  %95 = icmp eq ptr %94, null
  br i1 %95, label %96, label %29, !llvm.loop !2011

96:                                               ; preds = %92, %0, %5
  call fastcc void @solve_constraints() #23
  call fastcc void @delete_points_to_sets() #23
  store i1 false, ptr @in_ipa_mode, align 4
  ret i32 0
}

; Function Attrs: optsize
declare zeroext i8 @gimple_has_body_p(ptr noundef) local_unnamed_addr #9

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc void @create_function_info_for(ptr noundef %0, ptr noundef %1) unnamed_addr #6 !prof !724 !PGOFuncName !2012 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #24
  store i8 0, ptr %3, align 1, !tbaa !833
  %6 = tail call fastcc ptr @new_var_info(ptr noundef %0, ptr noundef %1) #23
  %7 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 3
  store i64 0, ptr %7, align 8, !tbaa !1058
  %8 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 4
  store i64 1, ptr %8, align 8, !tbaa !1059
  %9 = call fastcc i32 @count_num_arguments(ptr noundef %0, ptr noundef nonnull %3) #23
  %10 = add i32 %9, 1
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 5
  store i64 %11, ptr %12, align 8, !tbaa !1060
  %13 = getelementptr inbounds %struct.variable_info, ptr %6, i64 0, i32 7
  %14 = load ptr, ptr %13, align 8, !tbaa !896
  tail call fastcc void @insert_vi_for_tree(ptr noundef %14, ptr noundef %6) #23
  %15 = load i32, ptr @stats, align 4, !tbaa !860
  %16 = add i32 %15, 1
  store i32 %16, ptr @stats, align 4, !tbaa !860
  %17 = load i8, ptr %3, align 1, !tbaa !833
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
  %24 = load i64, ptr %12, align 8, !tbaa !1060
  %25 = icmp ugt i64 %24, 1
  br i1 %25, label %26, label %59

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !833
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
  %37 = load ptr, ptr %4, align 8, !tbaa !725
  %38 = call ptr @ggc_alloc_string(ptr noundef %37, i32 noundef -1) #25
  %39 = load ptr, ptr %4, align 8, !tbaa !725
  call void @free(ptr noundef %39) #23
  %40 = call fastcc ptr @new_var_info(ptr noundef %34, ptr noundef %38) #23
  %41 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 3
  store i64 %30, ptr %41, align 8, !tbaa !1058
  %42 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 4
  store i64 1, ptr %42, align 8, !tbaa !1059
  %43 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = or i8 %44, 8
  store i8 %45, ptr %43, align 4
  %46 = load i64, ptr %12, align 8, !tbaa !1060
  %47 = getelementptr inbounds %struct.variable_info, ptr %40, i64 0, i32 5
  store i64 %46, ptr %47, align 8, !tbaa !1060
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %40) #23
  %48 = load i32, ptr @stats, align 4, !tbaa !860
  %49 = add i32 %48, 1
  store i32 %49, ptr @stats, align 4, !tbaa !860
  br i1 %33, label %53, label %50

50:                                               ; preds = %29
  call fastcc void @insert_vi_for_tree(ptr noundef nonnull %31, ptr noundef nonnull %40) #23
  %51 = getelementptr inbounds %struct.tree_common, ptr %31, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !833
  br label %53

53:                                               ; preds = %50, %29
  %54 = phi ptr [ %52, %50 ], [ null, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #24
  %55 = add i32 %32, 1
  %56 = zext i32 %55 to i64
  %57 = load i64, ptr %12, align 8, !tbaa !1060
  %58 = icmp ugt i64 %57, %56
  br i1 %58, label %29, label %59, !llvm.loop !2013

59:                                               ; preds = %53, %23
  %60 = phi i64 [ 1, %23 ], [ %56, %53 ]
  %61 = phi i64 [ %24, %23 ], [ %57, %53 ]
  %62 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !833
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !833
  %68 = getelementptr inbounds %struct.tree_common, ptr %67, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !833
  %70 = load i64, ptr %69, align 8
  %71 = and i64 %70, 65535
  %72 = icmp eq i64 %71, 19
  br i1 %72, label %96, label %73

73:                                               ; preds = %65, %59
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #24
  %74 = add nuw nsw i64 %61, 1
  store i64 %74, ptr %12, align 8, !tbaa !1060
  %75 = load ptr, ptr %62, align 8, !tbaa !833
  %76 = icmp eq ptr %75, null
  %77 = select i1 %76, ptr %0, ptr %75
  %78 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef nonnull %5, ptr noundef nonnull @.str.87, ptr noundef %1) #25
  %79 = load ptr, ptr %5, align 8, !tbaa !725
  %80 = call ptr @ggc_alloc_string(ptr noundef %79, i32 noundef -1) #25
  %81 = load ptr, ptr %5, align 8, !tbaa !725
  call void @free(ptr noundef %81) #23
  %82 = call fastcc ptr @new_var_info(ptr noundef %77, ptr noundef %80) #23
  %83 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 3
  store i64 %60, ptr %83, align 8, !tbaa !1058
  %84 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 4
  store i64 1, ptr %84, align 8, !tbaa !1059
  %85 = load i64, ptr %12, align 8, !tbaa !1060
  %86 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 5
  store i64 %85, ptr %86, align 8, !tbaa !1060
  %87 = getelementptr inbounds %struct.variable_info, ptr %82, i64 0, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = or i8 %88, 8
  store i8 %89, ptr %87, align 4
  call fastcc void @insert_into_field_list_sorted(ptr noundef nonnull %6, ptr noundef %82) #23
  %90 = load i32, ptr @stats, align 4, !tbaa !860
  %91 = add i32 %90, 1
  store i32 %91, ptr @stats, align 4, !tbaa !860
  %92 = load ptr, ptr %62, align 8, !tbaa !833
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
declare ptr @cgraph_node_name(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @push_cfun(ptr noundef) local_unnamed_addr #9

; Function Attrs: optsize
declare void @pop_cfun() local_unnamed_addr #9

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @count_num_arguments(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) unnamed_addr #8 !prof !724 !PGOFuncName !2014 {
  %3 = getelementptr inbounds %struct.tree_decl_non_common, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !833
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ 0, %2 ]
  %9 = add i32 %8, 1
  %10 = getelementptr inbounds %struct.tree_common, ptr %7, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !833
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !2015

13:                                               ; preds = %6, %2
  %14 = phi i32 [ 0, %2 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct.tree_common, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !833
  %17 = getelementptr inbounds %struct.tree_type, ptr %16, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !833
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr getelementptr inbounds ([131 x ptr], ptr @global_trees, i64 0, i64 38), align 16, !tbaa !725
  br label %26

22:                                               ; preds = %26
  %23 = getelementptr inbounds %struct.tree_common, ptr %27, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !833
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26, !llvm.loop !2016

26:                                               ; preds = %20, %22
  %27 = phi ptr [ %18, %20 ], [ %24, %22 ]
  %28 = getelementptr inbounds %struct.tree_list, ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !833
  %30 = icmp eq ptr %29, %21
  br i1 %30, label %32, label %22

31:                                               ; preds = %22, %13
  store i8 1, ptr %1, align 1, !tbaa !833
  br label %32

32:                                               ; preds = %26, %31
  ret i32 %14
}

; Function Attrs: nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_into_field_list_sorted(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #20 !prof !724 !PGOFuncName !2017 {
  %3 = getelementptr inbounds %struct.variable_info, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !923
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !1058
  %9 = getelementptr inbounds %struct.variable_info, ptr %4, i64 0, i32 3
  %10 = load i64, ptr %9, align 8, !tbaa !1058
  %11 = icmp ugt i64 %8, %10
  br i1 %11, label %18, label %23

12:                                               ; preds = %2
  store ptr %1, ptr %3, align 8, !tbaa !923
  %13 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr null, ptr %13, align 8, !tbaa !923
  br label %28

14:                                               ; preds = %18
  %15 = getelementptr inbounds %struct.variable_info, ptr %21, i64 0, i32 3
  %16 = load i64, ptr %15, align 8, !tbaa !1058
  %17 = icmp ugt i64 %8, %16
  br i1 %17, label %18, label %23, !llvm.loop !2018

18:                                               ; preds = %6, %14
  %19 = phi ptr [ %21, %14 ], [ %4, %6 ]
  %20 = getelementptr inbounds %struct.variable_info, ptr %19, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !923
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %14, !llvm.loop !2018

23:                                               ; preds = %14, %18, %6
  %24 = phi ptr [ %4, %6 ], [ %21, %14 ], [ null, %18 ]
  %25 = phi ptr [ %0, %6 ], [ %19, %18 ], [ %19, %14 ]
  %26 = getelementptr inbounds %struct.variable_info, ptr %25, i64 0, i32 2
  %27 = getelementptr inbounds %struct.variable_info, ptr %1, i64 0, i32 2
  store ptr %24, ptr %27, align 8, !tbaa !923
  store ptr %1, ptr %26, align 8, !tbaa !923
  br label %28

28:                                               ; preds = %23, %12
  ret void
}

; Function Attrs: optsize
declare void @gt_ggc_mx_tree_map(ptr noundef) #9

; Function Attrs: optsize
declare void @gt_pch_nx_tree_map(ptr noundef) #9

; Function Attrs: optsize
declare i32 @tree_map_base_marked_p(ptr noundef) #9

; Function Attrs: optsize
declare void @gt_ggc_m_P8tree_map4htab(ptr noundef) #9

; Function Attrs: optsize
declare void @gt_pch_n_P8tree_map4htab(ptr noundef) #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #22

attributes #0 = { nofree noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noinline norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree noinline norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree noinline nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree noinline norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { optsize }
attributes #24 = { nounwind }
attributes #25 = { nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!723}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719, !720, !721, !722}
!36 = !{ptr @get_varinfo, ptr @VEC_varinfo_t_base_index, i64 20014426}
!37 = !{ptr @find, ptr @fancy_abort, i64 1}
!38 = !{ptr @find, ptr @find, i64 4031805}
!39 = !{ptr @pt_solution_set, ptr @bmp_iter_set_init, i64 242}
!40 = !{ptr @pt_solution_set, ptr @bmp_iter_set, i64 1066}
!41 = !{ptr @pt_solution_set, ptr @referenced_var_lookup, i64 825}
!42 = !{ptr @pt_solution_set, ptr @is_global_var, i64 825}
!43 = !{ptr @pt_solution_set, ptr @bmp_iter_next, i64 824}
!44 = !{ptr @pt_solution_includes, ptr @pt_solution_includes_1, i64 12275622}
!45 = !{ptr @pt_solution_includes_1, ptr @is_global_var, i64 12287995}
!46 = !{ptr @pt_solution_includes_1, ptr @bitmap_bit_p, i64 267805}
!47 = !{ptr @pt_solution_includes_1, ptr @pt_solution_includes_1, i64 107759}
!48 = !{ptr @pt_solutions_intersect, ptr @pt_solutions_intersect_1, i64 2026260}
!49 = !{ptr @pt_solutions_intersect_1, ptr @pt_solution_empty_p, i64 95013}
!50 = !{ptr @pt_solutions_intersect_1, ptr @pt_solutions_intersect_1, i64 93490}
!51 = !{ptr @pt_solutions_intersect_1, ptr @bitmap_intersect_p, i64 136907}
!52 = !{ptr @pt_solution_empty_p, ptr @pt_solution_empty_p, i64 1}
!53 = !{ptr @delete_alias_heapvars, ptr @htab_delete, i64 7555}
!54 = !{ptr @compute_may_aliases, ptr @compute_points_to_sets, i64 22268}
!55 = !{ptr @compute_may_aliases, ptr @dump_alias_info, i64 1}
!56 = !{ptr @compute_may_aliases, ptr @delete_points_to_sets, i64 22268}
!57 = !{ptr @compute_may_aliases, ptr @need_ssa_update_p, i64 22268}
!58 = !{ptr @compute_may_aliases, ptr @fancy_abort, i64 1}
!59 = !{ptr @compute_points_to_sets, ptr @timevar_push_1, i64 1}
!60 = !{ptr @compute_points_to_sets, ptr @init_alias_vars, i64 22268}
!61 = !{ptr @compute_points_to_sets, ptr @init_alias_heapvars, i64 22268}
!62 = !{ptr @compute_points_to_sets, ptr @intra_create_variable_infos, i64 22268}
!63 = !{ptr @compute_points_to_sets, ptr @gsi_start_phis, i64 900665}
!64 = !{ptr @compute_points_to_sets, ptr @gsi_end_p, i64 4299128}
!65 = !{ptr @compute_points_to_sets, ptr @gsi_stmt, i64 2497798}
!66 = !{ptr @compute_points_to_sets, ptr @gimple_phi_result, i64 272978}
!67 = !{ptr @compute_points_to_sets, ptr @is_gimple_reg, i64 272978}
!68 = !{ptr @compute_points_to_sets, ptr @find_func_aliases, i64 2370022}
!69 = !{ptr @compute_points_to_sets, ptr @gsi_next, i64 2497798}
!70 = !{ptr @compute_points_to_sets, ptr @gsi_start_bb, i64 900665}
!71 = !{ptr @compute_points_to_sets, ptr @solve_constraints, i64 22268}
!72 = !{ptr @compute_points_to_sets, ptr @get_varinfo, i64 44536}
!73 = !{ptr @compute_points_to_sets, ptr @find_what_var_points_to, i64 44536}
!74 = !{ptr @compute_points_to_sets, ptr @VEC_varinfo_t_base_iterate, i64 1040988}
!75 = !{ptr @compute_points_to_sets, ptr @VEC_tree_base_length, i64 2578446}
!76 = !{ptr @compute_points_to_sets, ptr @pt_solution_includes, i64 4970}
!77 = !{ptr @compute_points_to_sets, ptr @VEC_tree_base_index, i64 2556178}
!78 = !{ptr @compute_points_to_sets, ptr @find_what_p_points_to, i64 763128}
!79 = !{ptr @compute_points_to_sets, ptr @timevar_pop_1, i64 1}
!80 = !{ptr @delete_points_to_sets, ptr @htab_delete, i64 22268}
!81 = !{ptr @delete_points_to_sets, ptr @pointer_map_destroy, i64 22268}
!82 = !{ptr @delete_points_to_sets, ptr @bitmap_obstack_release, i64 22268}
!83 = !{ptr @delete_points_to_sets, ptr @VEC_constraint_t_heap_free, i64 1040988}
!84 = !{ptr @delete_points_to_sets, ptr @free, i64 155876}
!85 = !{ptr @delete_points_to_sets, ptr @VEC_varinfo_t_heap_free, i64 22268}
!86 = !{ptr @delete_points_to_sets, ptr @free_alloc_pool, i64 44536}
!87 = !{ptr @init_alias_vars, ptr @bitmap_obstack_initialize, i64 66804}
!88 = !{ptr @init_alias_vars, ptr @create_alloc_pool, i64 44536}
!89 = !{ptr @init_alias_vars, ptr @VEC_constraint_t_heap_alloc, i64 22268}
!90 = !{ptr @init_alias_vars, ptr @VEC_varinfo_t_heap_alloc, i64 22268}
!91 = !{ptr @init_alias_vars, ptr @pointer_map_create, i64 22268}
!92 = !{ptr @init_alias_vars, ptr @htab_create, i64 22268}
!93 = !{ptr @init_alias_vars, ptr @init_base_vars, i64 22268}
!94 = !{ptr @init_alias_heapvars, ptr @htab_create_alloc, i64 7555}
!95 = !{ptr @intra_create_variable_infos, ptr @could_have_pointers, i64 45585}
!96 = !{ptr @intra_create_variable_infos, ptr @get_vi_for_tree, i64 37062}
!97 = !{ptr @intra_create_variable_infos, ptr @make_constraint_from, i64 37158}
!98 = !{ptr @intra_create_variable_infos, ptr @make_constraint_from_restrict, i64 1}
!99 = !{ptr @find_func_aliases, ptr @gimple_code, i64 4929725}
!100 = !{ptr @find_func_aliases, ptr @gimple_phi_result, i64 290418}
!101 = !{ptr @find_func_aliases, ptr @fancy_abort, i64 4}
!102 = !{ptr @find_func_aliases, ptr @could_have_pointers, i64 1738036}
!103 = !{ptr @find_func_aliases, ptr @get_constraint_for, i64 1564559}
!104 = !{ptr @find_func_aliases, ptr @gimple_phi_num_args, i64 293971}
!105 = !{ptr @find_func_aliases, ptr @gimple_phi_arg_imm_use_ptr, i64 219768}
!106 = !{ptr @find_func_aliases, ptr @get_use_from_ptr, i64 219768}
!107 = !{ptr @find_func_aliases, ptr @tree_strip_nop_conversions, i64 219768}
!108 = !{ptr @find_func_aliases, ptr @gimple_phi_arg_def, i64 219768}
!109 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_iterate, i64 448456}
!110 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_length, i64 439804}
!111 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_last, i64 220023}
!112 = !{ptr @find_func_aliases, ptr @new_constraint, i64 225338}
!113 = !{ptr @find_func_aliases, ptr @process_constraint, i64 225338}
!114 = !{ptr @find_func_aliases, ptr @VEC_ce_s_base_pop, i64 220023}
!115 = !{ptr @find_func_aliases, ptr @is_gimple_call, i64 2224918}
!116 = !{ptr @find_func_aliases, ptr @gimple_call_fndecl, i64 276903}
!117 = !{ptr @find_func_aliases, ptr @gimple_call_lhs, i64 524541}
!118 = !{ptr @find_func_aliases, ptr @gimple_call_arg, i64 10978}
!119 = !{ptr @find_func_aliases, ptr @get_constraint_for_ptr_offset, i64 50865}
!120 = !{ptr @find_func_aliases, ptr @process_all_all_constraints, i64 659177}
!121 = !{ptr @find_func_aliases, ptr @VEC_ce_s_heap_free, i64 4993759}
!122 = !{ptr @find_func_aliases, ptr @do_deref, i64 7369}
!123 = !{ptr @find_func_aliases, ptr @integer_zerop, i64 3596}
!124 = !{ptr @find_func_aliases, ptr @lookup_vi_for_tree, i64 1}
!125 = !{ptr @find_func_aliases, ptr @gimple_call_flags, i64 266624}
!126 = !{ptr @find_func_aliases, ptr @handle_const_call, i64 276}
!127 = !{ptr @find_func_aliases, ptr @handle_pure_call, i64 15442}
!128 = !{ptr @find_func_aliases, ptr @handle_rhs_call, i64 250171}
!129 = !{ptr @find_func_aliases, ptr @handle_lhs_call, i64 88065}
!130 = !{ptr @find_func_aliases, ptr @gimple_call_num_args, i64 14}
!131 = !{ptr @find_func_aliases, ptr @first_vi_for_offset, i64 6}
!132 = !{ptr @find_func_aliases, ptr @is_gimple_assign, i64 1948016}
!133 = !{ptr @find_func_aliases, ptr @gimple_assign_lhs, i64 2085151}
!134 = !{ptr @find_func_aliases, ptr @gimple_num_ops, i64 659354}
!135 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs1, i64 871954}
!136 = !{ptr @find_func_aliases, ptr @do_structure_copy, i64 2092}
!137 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs_code, i64 1861910}
!138 = !{ptr @find_func_aliases, ptr @gimple_assign_rhs2, i64 43490}
!139 = !{ptr @find_func_aliases, ptr @gimple_expr_type, i64 23120}
!140 = !{ptr @find_func_aliases, ptr @gimple_assign_single_p, i64 591173}
!141 = !{ptr @find_func_aliases, ptr @VEC_ce_s_heap_safe_push, i64 520}
!142 = !{ptr @find_func_aliases, ptr @get_base_address, i64 659354}
!143 = !{ptr @find_func_aliases, ptr @is_global_var, i64 41680}
!144 = !{ptr @find_func_aliases, ptr @make_escape_constraint, i64 41191}
!145 = !{ptr @find_func_aliases, ptr @gimple_assign_cast_p, i64 1919807}
!146 = !{ptr @find_func_aliases, ptr @get_vi_for_tree, i64 680}
!147 = !{ptr @find_func_aliases, ptr @make_constraint_from_restrict, i64 680}
!148 = !{ptr @find_func_aliases, ptr @gimple_return_retval, i64 43581}
!149 = !{ptr @find_func_aliases, ptr @gimple_asm_noutputs, i64 1}
!150 = !{ptr @find_func_aliases, ptr @gimple_asm_ninputs, i64 21}
!151 = !{ptr @find_func_aliases, ptr @gimple_asm_output_op, i64 20}
!152 = !{ptr @find_func_aliases, ptr @parse_output_constraint, i64 20}
!153 = !{ptr @find_func_aliases, ptr @build_fold_addr_expr_loc, i64 20}
!154 = !{ptr @find_func_aliases, ptr @gimple_asm_input_op, i64 20}
!155 = !{ptr @find_func_aliases, ptr @parse_input_constraint, i64 20}
!156 = !{ptr @gsi_start_bb, ptr @bb_seq, i64 900704}
!157 = !{ptr @gsi_start_bb, ptr @gimple_seq_first, i64 900704}
!158 = !{ptr @solve_constraints, ptr @fwrite, i64 8}
!159 = !{ptr @solve_constraints, ptr @dump_constraints, i64 1}
!160 = !{ptr @solve_constraints, ptr @VEC_varinfo_t_base_length, i64 22268}
!161 = !{ptr @solve_constraints, ptr @init_graph, i64 22268}
!162 = !{ptr @solve_constraints, ptr @build_pred_graph, i64 22268}
!163 = !{ptr @solve_constraints, ptr @perform_var_substitution, i64 22268}
!164 = !{ptr @solve_constraints, ptr @rewrite_constraints, i64 22268}
!165 = !{ptr @solve_constraints, ptr @build_succ_graph, i64 22268}
!166 = !{ptr @solve_constraints, ptr @free_var_substitution_info, i64 22268}
!167 = !{ptr @solve_constraints, ptr @move_complex_constraints, i64 22268}
!168 = !{ptr @solve_constraints, ptr @unite_pointer_equivalences, i64 22268}
!169 = !{ptr @solve_constraints, ptr @find_indirect_cycles, i64 22268}
!170 = !{ptr @solve_constraints, ptr @remove_preds_and_fake_succs, i64 22268}
!171 = !{ptr @solve_constraints, ptr @solve_graph, i64 22268}
!172 = !{ptr @solve_constraints, ptr @dump_sa_points_to_info, i64 1}
!173 = !{ptr @find_what_var_points_to, ptr @find, i64 807390}
!174 = !{ptr @find_what_var_points_to, ptr @get_varinfo, i64 3125122}
!175 = !{ptr @find_what_var_points_to, ptr @bmp_iter_set_init, i64 807390}
!176 = !{ptr @find_what_var_points_to, ptr @bmp_iter_set, i64 3125122}
!177 = !{ptr @find_what_var_points_to, ptr @fancy_abort, i64 1}
!178 = !{ptr @find_what_var_points_to, ptr @bmp_iter_next, i64 2317732}
!179 = !{ptr @find_what_var_points_to, ptr @bitmap_gc_alloc_stat, i64 788701}
!180 = !{ptr @find_what_var_points_to, ptr @set_uids_in_ptset, i64 788701}
!181 = !{ptr @find_what_var_points_to, ptr @shared_bitmap_lookup, i64 788701}
!182 = !{ptr @find_what_var_points_to, ptr @shared_bitmap_add, i64 34278}
!183 = !{ptr @find_what_var_points_to, ptr @bitmap_clear, i64 754423}
!184 = !{ptr @find_what_p_points_to, ptr @lookup_vi_for_tree, i64 763161}
!185 = !{ptr @find_what_p_points_to, ptr @get_ptr_info, i64 762853}
!186 = !{ptr @find_what_p_points_to, ptr @find_what_var_points_to, i64 762853}
!187 = !{ptr @VEC_constraint_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 22268}
!188 = !{ptr @VEC_varinfo_t_heap_alloc, ptr @vec_heap_p_reserve_exact, i64 22268}
!189 = !{ptr @shared_bitmap_eq, ptr @bitmap_equal_p, i64 821649}
!190 = !{ptr @init_base_vars, ptr @new_var_info, i64 178144}
!191 = !{ptr @init_base_vars, ptr @fancy_abort, i64 8}
!192 = !{ptr @init_base_vars, ptr @new_constraint, i64 222680}
!193 = !{ptr @init_base_vars, ptr @VEC_constraint_t_heap_safe_push, i64 22268}
!194 = !{ptr @init_base_vars, ptr @process_constraint, i64 200412}
!195 = !{ptr @new_var_info, ptr @VEC_varinfo_t_base_length, i64 1018765}
!196 = !{ptr @new_var_info, ptr @pool_alloc, i64 1018765}
!197 = !{ptr @new_var_info, ptr @is_global_var, i64 97778}
!198 = !{ptr @new_var_info, ptr @bitmap_obstack_alloc_stat, i64 2037530}
!199 = !{ptr @new_var_info, ptr @VEC_varinfo_t_heap_safe_push, i64 1018765}
!200 = !{ptr @VEC_constraint_t_heap_safe_push, ptr @VEC_constraint_t_heap_reserve, i64 1707444}
!201 = !{ptr @VEC_constraint_t_heap_safe_push, ptr @VEC_constraint_t_base_quick_push, i64 1707444}
!202 = !{ptr @new_constraint, ptr @pool_alloc, i64 1721777}
!203 = !{ptr @process_constraint, ptr @VEC_varinfo_t_base_length, i64 3427930}
!204 = !{ptr @process_constraint, ptr @fancy_abort, i64 3}
!205 = !{ptr @process_constraint, ptr @new_scalar_tmp_constraint_exp, i64 14456}
!206 = !{ptr @process_constraint, ptr @new_constraint, i64 28912}
!207 = !{ptr @process_constraint, ptr @process_constraint, i64 14456}
!208 = !{ptr @process_constraint, ptr @VEC_constraint_t_heap_safe_push, i64 1699509}
!209 = !{ptr @VEC_varinfo_t_heap_safe_push, ptr @VEC_varinfo_t_heap_reserve, i64 1018765}
!210 = !{ptr @VEC_varinfo_t_heap_safe_push, ptr @VEC_varinfo_t_base_quick_push, i64 1018765}
!211 = !{ptr @VEC_varinfo_t_heap_reserve, ptr @VEC_varinfo_t_base_space, i64 1018765}
!212 = !{ptr @VEC_varinfo_t_heap_reserve, ptr @vec_heap_p_reserve, i64 58262}
!213 = !{ptr @VEC_constraint_t_heap_reserve, ptr @VEC_constraint_t_base_space, i64 2246531}
!214 = !{ptr @VEC_constraint_t_heap_reserve, ptr @vec_heap_p_reserve, i64 321758}
!215 = !{ptr @new_scalar_tmp_constraint_exp, ptr @new_var_info, i64 14333}
!216 = !{ptr @could_have_pointers, ptr @type_could_have_pointers, i64 3242570}
!217 = !{ptr @heapvar_lookup, ptr @heapvar_map_hash, i64 5650}
!218 = !{ptr @heapvar_lookup, ptr @htab_find_with_hash, i64 5650}
!219 = !{ptr @heapvar_insert, ptr @ggc_alloc_stat, i64 3576}
!220 = !{ptr @heapvar_insert, ptr @heapvar_map_hash, i64 3576}
!221 = !{ptr @heapvar_insert, ptr @htab_find_slot_with_hash, i64 3576}
!222 = !{ptr @heapvar_insert, ptr @fancy_abort, i64 1}
!223 = !{ptr @get_var_ann, ptr @create_var_ann, i64 3575}
!224 = !{ptr @get_vi_for_tree, ptr @pointer_map_contains, i64 2078516}
!225 = !{ptr @get_vi_for_tree, ptr @alias_get_name, i64 807517}
!226 = !{ptr @get_vi_for_tree, ptr @create_variable_info_for, i64 807517}
!227 = !{ptr @get_vi_for_tree, ptr @get_varinfo, i64 807517}
!228 = !{ptr @make_constraint_from, ptr @new_constraint, i64 47224}
!229 = !{ptr @make_constraint_from, ptr @process_constraint, i64 47224}
!230 = !{ptr @make_constraint_from_restrict, ptr @make_constraint_from_heapvar, i64 679}
!231 = !{ptr @heapvar_map_hash, ptr @iterative_hash_host_wide_int, i64 9226}
!232 = !{ptr @create_variable_info_for, ptr @var_can_have_subvars, i64 1611538}
!233 = !{ptr @create_variable_info_for, ptr @push_fields_onto_fieldstack, i64 6342}
!234 = !{ptr @create_variable_info_for, ptr @new_var_info, i64 814071}
!235 = !{ptr @create_variable_info_for, ptr @could_have_pointers, i64 807517}
!236 = !{ptr @create_variable_info_for, ptr @host_integerp, i64 804022}
!237 = !{ptr @create_variable_info_for, ptr @insert_vi_for_tree, i64 807517}
!238 = !{ptr @create_variable_info_for, ptr @make_constraint_from_restrict, i64 2}
!239 = !{ptr @create_variable_info_for, ptr @make_copy_constraint, i64 30236}
!240 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_length, i64 14125}
!241 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_iterate, i64 29391}
!242 = !{ptr @create_variable_info_for, ptr @sort_fieldstack, i64 3890}
!243 = !{ptr @create_variable_info_for, ptr @check_for_overlaps, i64 3890}
!244 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_base_index, i64 3891}
!245 = !{ptr @create_variable_info_for, ptr @VEC_fieldoff_s_heap_free, i64 807517}
!246 = !{ptr @create_variable_info_for, ptr @insert_into_field_list, i64 6554}
!247 = !{ptr @alias_get_name, ptr @get_name, i64 807517}
!248 = !{ptr @alias_get_name, ptr @alias_get_name, i64 1}
!249 = !{ptr @alias_get_name, ptr @asprintf, i64 1}
!250 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_base_length, i64 97867}
!251 = !{ptr @push_fields_onto_fieldstack, ptr @bitpos_of_field, i64 90978}
!252 = !{ptr @push_fields_onto_fieldstack, ptr @var_can_have_subvars, i64 90978}
!253 = !{ptr @push_fields_onto_fieldstack, ptr @push_fields_onto_fieldstack, i64 3641}
!254 = !{ptr @push_fields_onto_fieldstack, ptr @integer_zerop, i64 547}
!255 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_base_last, i64 97658}
!256 = !{ptr @push_fields_onto_fieldstack, ptr @host_integerp, i64 87882}
!257 = !{ptr @push_fields_onto_fieldstack, ptr @could_have_pointers, i64 89880}
!258 = !{ptr @push_fields_onto_fieldstack, ptr @VEC_fieldoff_s_heap_safe_push, i64 71767}
!259 = !{ptr @insert_vi_for_tree, ptr @pointer_map_insert, i64 813167}
!260 = !{ptr @insert_vi_for_tree, ptr @fancy_abort, i64 2}
!261 = !{ptr @make_copy_constraint, ptr @new_constraint, i64 33062}
!262 = !{ptr @make_copy_constraint, ptr @process_constraint, i64 33062}
!263 = !{ptr @sort_fieldstack, ptr @VEC_fieldoff_s_base_address, i64 3893}
!264 = !{ptr @sort_fieldstack, ptr @VEC_fieldoff_s_base_length, i64 3893}
!265 = !{ptr @sort_fieldstack, ptr @spec_qsort, i64 3893}
!266 = !{ptr @check_for_overlaps, ptr @VEC_fieldoff_s_base_iterate, i64 20899}
!267 = !{ptr @VEC_fieldoff_s_heap_free, ptr @free, i64 6343}
!268 = !{ptr @bitpos_of_field, ptr @host_integerp, i64 182009}
!269 = !{ptr @VEC_fieldoff_s_heap_safe_push, ptr @VEC_fieldoff_s_heap_reserve, i64 71786}
!270 = !{ptr @VEC_fieldoff_s_heap_safe_push, ptr @VEC_fieldoff_s_base_quick_push, i64 71786}
!271 = !{ptr @VEC_fieldoff_s_heap_reserve, ptr @VEC_fieldoff_s_base_space, i64 71786}
!272 = !{ptr @VEC_fieldoff_s_heap_reserve, ptr @vec_heap_o_reserve, i64 11524}
!273 = !{ptr @make_constraint_from_heapvar, ptr @heapvar_lookup, i64 5650}
!274 = !{ptr @make_constraint_from_heapvar, ptr @create_tmp_var_raw, i64 3576}
!275 = !{ptr @make_constraint_from_heapvar, ptr @heapvar_insert, i64 3576}
!276 = !{ptr @make_constraint_from_heapvar, ptr @get_var_ann, i64 3576}
!277 = !{ptr @make_constraint_from_heapvar, ptr @gimple_referenced_vars, i64 5650}
!278 = !{ptr @make_constraint_from_heapvar, ptr @add_referenced_var, i64 5649}
!279 = !{ptr @make_constraint_from_heapvar, ptr @new_var_info, i64 5650}
!280 = !{ptr @make_constraint_from_heapvar, ptr @insert_vi_for_tree, i64 5650}
!281 = !{ptr @make_constraint_from_heapvar, ptr @make_constraint_from, i64 5650}
!282 = !{ptr @get_constraint_for, ptr @VEC_ce_s_base_length, i64 2123161}
!283 = !{ptr @get_constraint_for, ptr @fancy_abort, i64 1}
!284 = !{ptr @get_constraint_for, ptr @get_constraint_for_1, i64 2123161}
!285 = !{ptr @gimple_phi_arg_imm_use_ptr, ptr @gimple_phi_arg, i64 219769}
!286 = !{ptr @gimple_phi_arg_def, ptr @gimple_phi_arg, i64 219769}
!287 = !{ptr @gimple_phi_arg_def, ptr @get_use_from_ptr, i64 219769}
!288 = !{ptr @is_gimple_call, ptr @gimple_code, i64 2224919}
!289 = !{ptr @gimple_call_fndecl, ptr @gimple_call_fn, i64 276901}
!290 = !{ptr @gimple_call_lhs, ptr @gimple_op, i64 524734}
!291 = !{ptr @gimple_call_arg, ptr @gimple_op, i64 572486}
!292 = !{ptr @get_constraint_for_ptr_offset, ptr @get_constraint_for, i64 50847}
!293 = !{ptr @get_constraint_for_ptr_offset, ptr @host_integerp, i64 43487}
!294 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_length, i64 50845}
!295 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_index, i64 50845}
!296 = !{ptr @get_constraint_for_ptr_offset, ptr @get_varinfo, i64 50845}
!297 = !{ptr @get_constraint_for_ptr_offset, ptr @lookup_vi_for_tree, i64 410}
!298 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_heap_safe_push, i64 1809}
!299 = !{ptr @get_constraint_for_ptr_offset, ptr @first_or_preceding_vi_for_offset, i64 1}
!300 = !{ptr @get_constraint_for_ptr_offset, ptr @VEC_ce_s_base_replace, i64 50845}
!301 = !{ptr @process_all_all_constraints, ptr @VEC_ce_s_base_length, i64 743521}
!302 = !{ptr @process_all_all_constraints, ptr @VEC_ce_s_base_iterate, i64 2978846}
!303 = !{ptr @process_all_all_constraints, ptr @new_constraint, i64 748206}
!304 = !{ptr @process_all_all_constraints, ptr @process_constraint, i64 748206}
!305 = !{ptr @process_all_all_constraints, ptr @new_scalar_tmp_constraint_exp, i64 1}
!306 = !{ptr @VEC_ce_s_heap_free, ptr @free, i64 2244024}
!307 = !{ptr @do_deref, ptr @VEC_ce_s_base_iterate, i64 817272}
!308 = !{ptr @lookup_vi_for_tree, ptr @pointer_map_contains, i64 808340}
!309 = !{ptr @handle_const_call, ptr @gimple_call_chain, i64 277}
!310 = !{ptr @handle_const_call, ptr @make_constraint_to, i64 1}
!311 = !{ptr @handle_const_call, ptr @VEC_ce_s_heap_safe_push, i64 342}
!312 = !{ptr @handle_const_call, ptr @gimple_call_num_args, i64 417}
!313 = !{ptr @handle_const_call, ptr @gimple_call_arg, i64 141}
!314 = !{ptr @handle_const_call, ptr @could_have_pointers, i64 141}
!315 = !{ptr @handle_const_call, ptr @get_constraint_for, i64 65}
!316 = !{ptr @handle_const_call, ptr @VEC_ce_s_base_iterate, i64 130}
!317 = !{ptr @handle_const_call, ptr @VEC_ce_s_heap_free, i64 65}
!318 = !{ptr @handle_pure_call, ptr @gimple_call_num_args, i64 41706}
!319 = !{ptr @handle_pure_call, ptr @gimple_call_arg, i64 26264}
!320 = !{ptr @handle_pure_call, ptr @could_have_pointers, i64 26264}
!321 = !{ptr @handle_pure_call, ptr @make_constraint_to, i64 18433}
!322 = !{ptr @handle_pure_call, ptr @gimple_call_chain, i64 15443}
!323 = !{ptr @handle_pure_call, ptr @VEC_ce_s_heap_safe_push, i64 29736}
!324 = !{ptr @handle_rhs_call, ptr @gimple_call_num_args, i64 785317}
!325 = !{ptr @handle_rhs_call, ptr @gimple_call_arg, i64 535125}
!326 = !{ptr @handle_rhs_call, ptr @could_have_pointers, i64 535125}
!327 = !{ptr @handle_rhs_call, ptr @make_escape_constraint, i64 355852}
!328 = !{ptr @handle_rhs_call, ptr @gimple_call_chain, i64 250193}
!329 = !{ptr @handle_rhs_call, ptr @gimple_call_return_slot_opt_p, i64 250192}
!330 = !{ptr @handle_rhs_call, ptr @gimple_call_lhs, i64 164}
!331 = !{ptr @handle_rhs_call, ptr @get_constraint_for_address_of, i64 1}
!332 = !{ptr @handle_rhs_call, ptr @VEC_ce_s_base_iterate, i64 21}
!333 = !{ptr @handle_rhs_call, ptr @new_constraint, i64 20}
!334 = !{ptr @handle_rhs_call, ptr @process_constraint, i64 20}
!335 = !{ptr @handle_rhs_call, ptr @VEC_ce_s_heap_free, i64 1}
!336 = !{ptr @handle_rhs_call, ptr @VEC_ce_s_heap_safe_push, i64 250192}
!337 = !{ptr @handle_lhs_call, ptr @get_constraint_for, i64 88072}
!338 = !{ptr @handle_lhs_call, ptr @get_vi_for_tree, i64 4972}
!339 = !{ptr @handle_lhs_call, ptr @make_constraint_from_heapvar, i64 4972}
!340 = !{ptr @handle_lhs_call, ptr @make_constraint_from, i64 4453}
!341 = !{ptr @handle_lhs_call, ptr @VEC_ce_s_base_length, i64 83100}
!342 = !{ptr @handle_lhs_call, ptr @get_base_address, i64 83099}
!343 = !{ptr @handle_lhs_call, ptr @is_global_var, i64 158}
!344 = !{ptr @handle_lhs_call, ptr @VEC_ce_s_heap_safe_push, i64 1}
!345 = !{ptr @handle_lhs_call, ptr @process_all_all_constraints, i64 83099}
!346 = !{ptr @handle_lhs_call, ptr @VEC_ce_s_heap_free, i64 88072}
!347 = !{ptr @gimple_call_fn, ptr @gimple_op, i64 276901}
!348 = !{ptr @gimple_call_num_args, ptr @gimple_num_ops, i64 827442}
!349 = !{ptr @first_vi_for_offset, ptr @lookup_vi_for_tree, i64 1}
!350 = !{ptr @is_gimple_assign, ptr @gimple_code, i64 3867827}
!351 = !{ptr @gimple_assign_lhs, ptr @gimple_op, i64 2085151}
!352 = !{ptr @gimple_assign_rhs1, ptr @gimple_op, i64 3623742}
!353 = !{ptr @do_structure_copy, ptr @get_constraint_for, i64 4176}
!354 = !{ptr @do_structure_copy, ptr @VEC_ce_s_base_index, i64 6193}
!355 = !{ptr @do_structure_copy, ptr @process_all_all_constraints, i64 1041}
!356 = !{ptr @do_structure_copy, ptr @get_ref_base_and_extent, i64 2090}
!357 = !{ptr @do_structure_copy, ptr @VEC_ce_s_base_iterate, i64 3058}
!358 = !{ptr @do_structure_copy, ptr @get_varinfo, i64 4034}
!359 = !{ptr @do_structure_copy, ptr @ranges_overlap_p, i64 1667}
!360 = !{ptr @do_structure_copy, ptr @new_constraint, i64 1339}
!361 = !{ptr @do_structure_copy, ptr @process_constraint, i64 1339}
!362 = !{ptr @do_structure_copy, ptr @VEC_ce_s_base_length, i64 491}
!363 = !{ptr @do_structure_copy, ptr @fancy_abort, i64 1}
!364 = !{ptr @do_structure_copy, ptr @VEC_ce_s_heap_free, i64 4176}
!365 = !{ptr @gimple_assign_rhs_code, ptr @gimple_expr_code, i64 3273094}
!366 = !{ptr @gimple_assign_rhs_code, ptr @get_gimple_rhs_class, i64 3273094}
!367 = !{ptr @gimple_assign_rhs_code, ptr @gimple_assign_rhs1, i64 2751788}
!368 = !{ptr @gimple_assign_rhs2, ptr @gimple_num_ops, i64 43489}
!369 = !{ptr @gimple_assign_rhs2, ptr @gimple_op, i64 43488}
!370 = !{ptr @gimple_expr_type, ptr @gimple_code, i64 23117}
!371 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs_code, i64 23116}
!372 = !{ptr @gimple_expr_type, ptr @gimple_assign_rhs1, i64 1}
!373 = !{ptr @gimple_expr_type, ptr @gimple_get_lhs, i64 23115}
!374 = !{ptr @VEC_ce_s_heap_safe_push, ptr @VEC_ce_s_heap_reserve, i64 2455676}
!375 = !{ptr @VEC_ce_s_heap_safe_push, ptr @VEC_ce_s_base_quick_push, i64 2455676}
!376 = !{ptr @make_escape_constraint, ptr @make_constraint_to, i64 397019}
!377 = !{ptr @gimple_assign_cast_p, ptr @is_gimple_assign, i64 1919809}
!378 = !{ptr @gimple_assign_cast_p, ptr @gimple_assign_rhs_code, i64 1388051}
!379 = !{ptr @gimple_return_retval, ptr @gimple_op, i64 43580}
!380 = !{ptr @get_constraint_for_1, ptr @integer_zerop, i64 50839}
!381 = !{ptr @get_constraint_for_1, ptr @VEC_ce_s_heap_safe_push, i64 87321}
!382 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_address_of, i64 83039}
!383 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_1, i64 400382}
!384 = !{ptr @get_constraint_for_1, ptr @do_deref, i64 400381}
!385 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_component_ref, i64 505036}
!386 = !{ptr @get_constraint_for_1, ptr @get_constraint_for_ssa_var, i64 2035802}
!387 = !{ptr @get_constraint_for_address_of, ptr @get_constraint_for_1, i64 83039}
!388 = !{ptr @get_constraint_for_address_of, ptr @VEC_ce_s_base_iterate, i64 166078}
!389 = !{ptr @get_constraint_for_component_ref, ptr @integer_zerop, i64 35376}
!390 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_heap_safe_push, i64 48373}
!391 = !{ptr @get_constraint_for_component_ref, ptr @get_ref_base_and_extent, i64 504995}
!392 = !{ptr @get_constraint_for_component_ref, ptr @get_constraint_for_1, i64 504995}
!393 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_length, i64 556548}
!394 = !{ptr @get_constraint_for_component_ref, ptr @fancy_abort, i64 1}
!395 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_last, i64 504995}
!396 = !{ptr @get_constraint_for_component_ref, ptr @get_varinfo, i64 231716}
!397 = !{ptr @get_constraint_for_component_ref, ptr @VEC_ce_s_base_pop, i64 48061}
!398 = !{ptr @get_constraint_for_component_ref, ptr @ranges_overlap_p, i64 313426}
!399 = !{ptr @get_constraint_for_component_ref, ptr @ref_contains_array_ref, i64 1}
!400 = !{ptr @get_constraint_for_ssa_var, ptr @fancy_abort, i64 2}
!401 = !{ptr @get_constraint_for_ssa_var, ptr @get_constraint_for_ssa_var, i64 172460}
!402 = !{ptr @get_constraint_for_ssa_var, ptr @get_vi_for_tree, i64 2035805}
!403 = !{ptr @get_constraint_for_ssa_var, ptr @VEC_ce_s_heap_safe_push, i64 2037650}
!404 = !{ptr @gimple_phi_arg, ptr @fancy_abort, i64 1}
!405 = !{ptr @gimple_op, ptr @gimple_has_ops, i64 7435993}
!406 = !{ptr @gimple_op, ptr @gimple_ops, i64 7435992}
!407 = !{ptr @gimple_has_ops, ptr @gimple_code, i64 7435993}
!408 = !{ptr @gimple_ops, ptr @gimple_statement_structure, i64 7435993}
!409 = !{ptr @gimple_ops, ptr @fancy_abort, i64 1}
!410 = !{ptr @gimple_statement_structure, ptr @gimple_code, i64 7435993}
!411 = !{ptr @gimple_statement_structure, ptr @gss_for_code, i64 7435993}
!412 = !{ptr @first_or_preceding_vi_for_offset, ptr @lookup_vi_for_tree, i64 9}
!413 = !{ptr @gimple_call_chain, ptr @gimple_op, i64 265910}
!414 = !{ptr @make_constraint_to, ptr @get_constraint_for, i64 415452}
!415 = !{ptr @make_constraint_to, ptr @VEC_ce_s_base_iterate, i64 831163}
!416 = !{ptr @make_constraint_to, ptr @new_constraint, i64 415711}
!417 = !{ptr @make_constraint_to, ptr @process_constraint, i64 415711}
!418 = !{ptr @make_constraint_to, ptr @VEC_ce_s_heap_free, i64 415452}
!419 = !{ptr @gimple_expr_code, ptr @gimple_code, i64 3273094}
!420 = !{ptr @VEC_ce_s_heap_reserve, ptr @VEC_ce_s_base_space, i64 2455676}
!421 = !{ptr @VEC_ce_s_heap_reserve, ptr @vec_heap_o_reserve, i64 2244507}
!422 = !{ptr @init_graph, ptr @xcalloc, i64 89072}
!423 = !{ptr @init_graph, ptr @xmalloc, i64 66804}
!424 = !{ptr @build_pred_graph, ptr @xcalloc, i64 133608}
!425 = !{ptr @build_pred_graph, ptr @xmalloc, i64 22268}
!426 = !{ptr @build_pred_graph, ptr @sbitmap_alloc, i64 22268}
!427 = !{ptr @build_pred_graph, ptr @bitmap_obstack_alloc_stat, i64 320793}
!428 = !{ptr @build_pred_graph, ptr @sbitmap_zero, i64 22268}
!429 = !{ptr @build_pred_graph, ptr @VEC_varinfo_t_base_length, i64 3361256}
!430 = !{ptr @build_pred_graph, ptr @get_varinfo, i64 1297269}
!431 = !{ptr @build_pred_graph, ptr @SET_BIT, i64 906705}
!432 = !{ptr @build_pred_graph, ptr @VEC_constraint_t_base_iterate, i64 1729636}
!433 = !{ptr @build_pred_graph, ptr @add_pred_graph_edge, i64 1000731}
!434 = !{ptr @build_pred_graph, ptr @RESET_BIT, i64 700459}
!435 = !{ptr @build_pred_graph, ptr @bitmap_set_bit, i64 835647}
!436 = !{ptr @build_pred_graph, ptr @add_implicit_graph_edge, i64 1145736}
!437 = !{ptr @build_pred_graph, ptr @lookup_vi_for_tree, i64 6529}
!438 = !{ptr @perform_var_substitution, ptr @init_scc_info, i64 22268}
!439 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_initialize, i64 22268}
!440 = !{ptr @perform_var_substitution, ptr @htab_create, i64 44536}
!441 = !{ptr @perform_var_substitution, ptr @VEC_varinfo_t_base_length, i64 4163962}
!442 = !{ptr @perform_var_substitution, ptr @condense_visit, i64 590541}
!443 = !{ptr @perform_var_substitution, ptr @sbitmap_zero, i64 22268}
!444 = !{ptr @perform_var_substitution, ptr @label_visit, i64 607875}
!445 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_alloc_stat, i64 117103}
!446 = !{ptr @perform_var_substitution, ptr @bmp_iter_set_init, i64 117103}
!447 = !{ptr @perform_var_substitution, ptr @bmp_iter_set, i64 333594}
!448 = !{ptr @perform_var_substitution, ptr @bitmap_set_bit, i64 216491}
!449 = !{ptr @perform_var_substitution, ptr @bmp_iter_next, i64 216491}
!450 = !{ptr @perform_var_substitution, ptr @bitmap_obstack_free, i64 126848}
!451 = !{ptr @perform_var_substitution, ptr @equiv_class_lookup, i64 117103}
!452 = !{ptr @perform_var_substitution, ptr @equiv_class_add, i64 107357}
!453 = !{ptr @perform_var_substitution, ptr @get_varinfo, i64 10}
!454 = !{ptr @perform_var_substitution, ptr @fprintf, i64 10}
!455 = !{ptr @perform_var_substitution, ptr @clear_edges_for_node, i64 23430}
!456 = !{ptr @rewrite_constraints, ptr @VEC_constraint_t_base_iterate, i64 1729636}
!457 = !{ptr @rewrite_constraints, ptr @find, i64 5452176}
!458 = !{ptr @rewrite_constraints, ptr @fancy_abort, i64 1}
!459 = !{ptr @rewrite_constraints, ptr @VEC_constraint_t_base_replace, i64 371}
!460 = !{ptr @rewrite_constraints, ptr @find_equivalent_node, i64 3413994}
!461 = !{ptr @build_succ_graph, ptr @VEC_constraint_t_base_iterate, i64 1729636}
!462 = !{ptr @build_succ_graph, ptr @find, i64 4095385}
!463 = !{ptr @build_succ_graph, ptr @VEC_varinfo_t_base_length, i64 996394}
!464 = !{ptr @build_succ_graph, ptr @add_graph_edge, i64 1165779}
!465 = !{ptr @build_succ_graph, ptr @fancy_abort, i64 1}
!466 = !{ptr @build_succ_graph, ptr @get_varinfo, i64 648314}
!467 = !{ptr @build_succ_graph, ptr @bitmap_set_bit, i64 278549}
!468 = !{ptr @free_var_substitution_info, ptr @free_scc_info, i64 22268}
!469 = !{ptr @free_var_substitution_info, ptr @free, i64 155876}
!470 = !{ptr @free_var_substitution_info, ptr @htab_delete, i64 44536}
!471 = !{ptr @free_var_substitution_info, ptr @bitmap_obstack_release, i64 22268}
!472 = !{ptr @move_complex_constraints, ptr @VEC_constraint_t_base_iterate, i64 1729636}
!473 = !{ptr @move_complex_constraints, ptr @get_varinfo, i64 376672}
!474 = !{ptr @move_complex_constraints, ptr @insert_into_complex, i64 560890}
!475 = !{ptr @unite_pointer_equivalences, ptr @VEC_varinfo_t_base_length, i64 1040988}
!476 = !{ptr @unite_pointer_equivalences, ptr @find, i64 234203}
!477 = !{ptr @unite_pointer_equivalences, ptr @unite, i64 117101}
!478 = !{ptr @unite_pointer_equivalences, ptr @unify_nodes, i64 18523}
!479 = !{ptr @find_indirect_cycles, ptr @init_scc_info, i64 22268}
!480 = !{ptr @find_indirect_cycles, ptr @find, i64 1568402}
!481 = !{ptr @find_indirect_cycles, ptr @scc_visit, i64 1213956}
!482 = !{ptr @find_indirect_cycles, ptr @VEC_varinfo_t_base_length, i64 2015173}
!483 = !{ptr @find_indirect_cycles, ptr @free_scc_info, i64 22268}
!484 = !{ptr @remove_preds_and_fake_succs, ptr @VEC_varinfo_t_base_length, i64 1063256}
!485 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_clear_range, i64 272674}
!486 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_obstack_free, i64 77556}
!487 = !{ptr @remove_preds_and_fake_succs, ptr @xrealloc, i64 22268}
!488 = !{ptr @remove_preds_and_fake_succs, ptr @free, i64 44536}
!489 = !{ptr @remove_preds_and_fake_succs, ptr @bitmap_obstack_release, i64 22268}
!490 = !{ptr @solve_graph, ptr @sbitmap_alloc, i64 22268}
!491 = !{ptr @solve_graph, ptr @sbitmap_zero, i64 22268}
!492 = !{ptr @solve_graph, ptr @get_varinfo, i64 3682661}
!493 = !{ptr @solve_graph, ptr @find, i64 6474470}
!494 = !{ptr @solve_graph, ptr @VEC_constraint_t_base_length, i64 109967}
!495 = !{ptr @solve_graph, ptr @SET_BIT, i64 162084}
!496 = !{ptr @solve_graph, ptr @bitmap_obstack_alloc_stat, i64 22268}
!497 = !{ptr @solve_graph, ptr @init_topo_info, i64 51470}
!498 = !{ptr @solve_graph, ptr @bitmap_obstack_initialize, i64 51470}
!499 = !{ptr @solve_graph, ptr @compute_topo_order, i64 51470}
!500 = !{ptr @solve_graph, ptr @VEC_unsigned_base_length, i64 2969364}
!501 = !{ptr @solve_graph, ptr @VEC_unsigned_base_pop, i64 2917894}
!502 = !{ptr @solve_graph, ptr @eliminate_indirect_cycles, i64 2900107}
!503 = !{ptr @solve_graph, ptr @RESET_BIT, i64 564130}
!504 = !{ptr @solve_graph, ptr @bitmap_and_compl, i64 564130}
!505 = !{ptr @solve_graph, ptr @bitmap_ior_into, i64 564129}
!506 = !{ptr @solve_graph, ptr @VEC_constraint_t_base_iterate, i64 1135375}
!507 = !{ptr @solve_graph, ptr @do_complex_constraint, i64 571245}
!508 = !{ptr @solve_graph, ptr @bmp_iter_set_init, i64 285776}
!509 = !{ptr @solve_graph, ptr @bmp_iter_set, i64 1115559}
!510 = !{ptr @solve_graph, ptr @bitmap_set_bit, i64 2533}
!511 = !{ptr @solve_graph, ptr @set_union_with_increment, i64 825336}
!512 = !{ptr @solve_graph, ptr @bmp_iter_next, i64 829783}
!513 = !{ptr @solve_graph, ptr @free_topo_info, i64 51470}
!514 = !{ptr @solve_graph, ptr @bitmap_obstack_release, i64 73738}
!515 = !{ptr @solve_graph, ptr @bitmap_obstack_free, i64 22268}
!516 = !{ptr @solve_graph, ptr @free, i64 44536}
!517 = !{ptr @add_pred_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 495988}
!518 = !{ptr @add_pred_graph_edge, ptr @bitmap_set_bit, i64 1000783}
!519 = !{ptr @add_implicit_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 544774}
!520 = !{ptr @add_implicit_graph_edge, ptr @bitmap_set_bit, i64 1145790}
!521 = !{ptr @init_scc_info, ptr @xmalloc, i64 89072}
!522 = !{ptr @init_scc_info, ptr @sbitmap_alloc, i64 89072}
!523 = !{ptr @init_scc_info, ptr @sbitmap_zero, i64 89072}
!524 = !{ptr @init_scc_info, ptr @xcalloc, i64 44536}
!525 = !{ptr @init_scc_info, ptr @VEC_unsigned_heap_alloc, i64 44536}
!526 = !{ptr @equiv_class_label_eq, ptr @bitmap_equal_p, i64 7077288}
!527 = !{ptr @condense_visit, ptr @fancy_abort, i64 3}
!528 = !{ptr @condense_visit, ptr @SET_BIT, i64 2744384}
!529 = !{ptr @condense_visit, ptr @bmp_iter_set_init, i64 753183}
!530 = !{ptr @condense_visit, ptr @bmp_iter_set, i64 2197053}
!531 = !{ptr @condense_visit, ptr @condense_visit, i64 873717}
!532 = !{ptr @condense_visit, ptr @bmp_iter_next, i64 1443870}
!533 = !{ptr @condense_visit, ptr @VEC_unsigned_base_length, i64 1325989}
!534 = !{ptr @condense_visit, ptr @VEC_unsigned_base_last, i64 364833}
!535 = !{ptr @condense_visit, ptr @VEC_unsigned_base_pop, i64 45891}
!536 = !{ptr @condense_visit, ptr @RESET_BIT, i64 42869}
!537 = !{ptr @condense_visit, ptr @bitmap_obstack_alloc_stat, i64 2933}
!538 = !{ptr @condense_visit, ptr @bitmap_ior_into, i64 49104}
!539 = !{ptr @condense_visit, ptr @VEC_unsigned_heap_safe_push, i64 184188}
!540 = !{ptr @label_visit, ptr @SET_BIT, i64 1073614}
!541 = !{ptr @label_visit, ptr @bitmap_obstack_alloc_stat, i64 892602}
!542 = !{ptr @label_visit, ptr @bmp_iter_set_init, i64 465196}
!543 = !{ptr @label_visit, ptr @bmp_iter_set, i64 1308035}
!544 = !{ptr @label_visit, ptr @label_visit, i64 465712}
!545 = !{ptr @label_visit, ptr @bitmap_ior_into, i64 813868}
!546 = !{ptr @label_visit, ptr @bmp_iter_next, i64 842839}
!547 = !{ptr @label_visit, ptr @VEC_varinfo_t_base_length, i64 592633}
!548 = !{ptr @label_visit, ptr @bitmap_set_bit, i64 592633}
!549 = !{ptr @label_visit, ptr @equiv_class_lookup, i64 1050194}
!550 = !{ptr @label_visit, ptr @equiv_class_add, i64 674667}
!551 = !{ptr @equiv_class_lookup, ptr @bitmap_hash, i64 1167302}
!552 = !{ptr @equiv_class_lookup, ptr @htab_find_slot_with_hash, i64 1167302}
!553 = !{ptr @equiv_class_add, ptr @xmalloc, i64 782030}
!554 = !{ptr @equiv_class_add, ptr @bitmap_hash, i64 782030}
!555 = !{ptr @equiv_class_add, ptr @htab_find_slot_with_hash, i64 782030}
!556 = !{ptr @equiv_class_add, ptr @fancy_abort, i64 1}
!557 = !{ptr @clear_edges_for_node, ptr @bitmap_obstack_free, i64 18111}
!558 = !{ptr @VEC_unsigned_heap_alloc, ptr @vec_heap_o_reserve_exact, i64 96007}
!559 = !{ptr @VEC_unsigned_heap_safe_push, ptr @VEC_unsigned_heap_reserve, i64 3104097}
!560 = !{ptr @VEC_unsigned_heap_safe_push, ptr @VEC_unsigned_base_quick_push, i64 3104097}
!561 = !{ptr @VEC_unsigned_heap_reserve, ptr @VEC_unsigned_base_space, i64 3104097}
!562 = !{ptr @VEC_unsigned_heap_reserve, ptr @vec_heap_o_reserve, i64 340265}
!563 = !{ptr @find_equivalent_node, ptr @bitmap_bit_p, i64 3414150}
!564 = !{ptr @find_equivalent_node, ptr @fancy_abort, i64 2}
!565 = !{ptr @find_equivalent_node, ptr @unite, i64 1837678}
!566 = !{ptr @find_equivalent_node, ptr @unify_nodes, i64 335938}
!567 = !{ptr @unite, ptr @fancy_abort, i64 2}
!568 = !{ptr @unify_nodes, ptr @find, i64 355809}
!569 = !{ptr @unify_nodes, ptr @fancy_abort, i64 3}
!570 = !{ptr @unify_nodes, ptr @merge_graph_nodes, i64 355810}
!571 = !{ptr @unify_nodes, ptr @merge_node_constraints, i64 355810}
!572 = !{ptr @unify_nodes, ptr @RESET_BIT, i64 172}
!573 = !{ptr @unify_nodes, ptr @SET_BIT, i64 73}
!574 = !{ptr @unify_nodes, ptr @get_varinfo, i64 2138239}
!575 = !{ptr @unify_nodes, ptr @bitmap_ior_into, i64 355809}
!576 = !{ptr @unify_nodes, ptr @bitmap_obstack_free, i64 712746}
!577 = !{ptr @unify_nodes, ptr @bitmap_obstack_alloc_stat, i64 1128}
!578 = !{ptr @unify_nodes, ptr @valid_graph_edge, i64 355810}
!579 = !{ptr @unify_nodes, ptr @bitmap_clear_bit, i64 17549}
!580 = !{ptr @merge_graph_nodes, ptr @bitmap_obstack_alloc_stat, i64 4186}
!581 = !{ptr @merge_graph_nodes, ptr @bitmap_ior_into, i64 18111}
!582 = !{ptr @merge_graph_nodes, ptr @clear_edges_for_node, i64 355810}
!583 = !{ptr @merge_node_constraints, ptr @find, i64 355810}
!584 = !{ptr @merge_node_constraints, ptr @fancy_abort, i64 1}
!585 = !{ptr @merge_node_constraints, ptr @VEC_constraint_t_base_iterate, i64 359622}
!586 = !{ptr @merge_node_constraints, ptr @constraint_set_union, i64 355810}
!587 = !{ptr @merge_node_constraints, ptr @VEC_constraint_t_heap_free, i64 355810}
!588 = !{ptr @valid_graph_edge, ptr @bitmap_bit_p, i64 19648}
!589 = !{ptr @constraint_set_union, ptr @VEC_constraint_t_base_iterate, i64 359622}
!590 = !{ptr @constraint_set_union, ptr @constraint_vec_find, i64 3812}
!591 = !{ptr @constraint_set_union, ptr @VEC_constraint_t_base_lower_bound, i64 3790}
!592 = !{ptr @constraint_set_union, ptr @VEC_constraint_t_heap_safe_insert, i64 3790}
!593 = !{ptr @VEC_constraint_t_heap_free, ptr @free, i64 239192}
!594 = !{ptr @constraint_vec_find, ptr @VEC_constraint_t_base_lower_bound, i64 3180}
!595 = !{ptr @constraint_vec_find, ptr @VEC_constraint_t_base_length, i64 3180}
!596 = !{ptr @constraint_vec_find, ptr @VEC_constraint_t_base_index, i64 1489}
!597 = !{ptr @constraint_vec_find, ptr @constraint_equal, i64 1489}
!598 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @VEC_constraint_t_base_length, i64 567885}
!599 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @VEC_constraint_t_base_index, i64 894283}
!600 = !{ptr @VEC_constraint_t_base_lower_bound, ptr @constraint_less, i64 894283}
!601 = !{ptr @constraint_less, ptr @constraint_expr_less, i64 1217888}
!602 = !{ptr @VEC_constraint_t_heap_safe_insert, ptr @VEC_constraint_t_heap_reserve, i64 539087}
!603 = !{ptr @VEC_constraint_t_heap_safe_insert, ptr @VEC_constraint_t_base_quick_insert, i64 539087}
!604 = !{ptr @constraint_equal, ptr @constraint_expr_equal, i64 209050}
!605 = !{ptr @add_graph_edge, ptr @bitmap_obstack_alloc_stat, i64 402714}
!606 = !{ptr @add_graph_edge, ptr @bitmap_set_bit, i64 2032458}
!607 = !{ptr @add_graph_edge, ptr @VEC_varinfo_t_base_length, i64 1396916}
!608 = !{ptr @free_scc_info, ptr @free, i64 311752}
!609 = !{ptr @free_scc_info, ptr @VEC_unsigned_heap_free, i64 44536}
!610 = !{ptr @VEC_unsigned_heap_free, ptr @free, i64 96349}
!611 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_lower_bound, i64 560914}
!612 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_length, i64 560914}
!613 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_base_index, i64 135240}
!614 = !{ptr @insert_into_complex, ptr @constraint_equal, i64 135240}
!615 = !{ptr @insert_into_complex, ptr @VEC_constraint_t_heap_safe_insert, i64 535296}
!616 = !{ptr @scc_visit, ptr @SET_BIT, i64 3321022}
!617 = !{ptr @scc_visit, ptr @bmp_iter_set_init, i64 350760}
!618 = !{ptr @scc_visit, ptr @bmp_iter_set, i64 1129250}
!619 = !{ptr @scc_visit, ptr @VEC_varinfo_t_base_length, i64 779372}
!620 = !{ptr @scc_visit, ptr @find, i64 1674620}
!621 = !{ptr @scc_visit, ptr @scc_visit, i64 446878}
!622 = !{ptr @scc_visit, ptr @fancy_abort, i64 2}
!623 = !{ptr @scc_visit, ptr @bmp_iter_next, i64 778490}
!624 = !{ptr @scc_visit, ptr @VEC_unsigned_base_length, i64 1660897}
!625 = !{ptr @scc_visit, ptr @VEC_unsigned_base_last, i64 8018}
!626 = !{ptr @scc_visit, ptr @bitmap_obstack_alloc_stat, i64 430}
!627 = !{ptr @scc_visit, ptr @bitmap_set_bit, i64 766}
!628 = !{ptr @scc_visit, ptr @VEC_unsigned_base_pop, i64 336}
!629 = !{ptr @scc_visit, ptr @bitmap_first_set_bit, i64 430}
!630 = !{ptr @scc_visit, ptr @unite, i64 1102}
!631 = !{ptr @scc_visit, ptr @unify_nodes, i64 222}
!632 = !{ptr @scc_visit, ptr @VEC_unsigned_heap_safe_push, i64 760}
!633 = !{ptr @init_topo_info, ptr @xmalloc, i64 51471}
!634 = !{ptr @init_topo_info, ptr @sbitmap_alloc, i64 51471}
!635 = !{ptr @init_topo_info, ptr @sbitmap_zero, i64 51471}
!636 = !{ptr @init_topo_info, ptr @VEC_unsigned_heap_alloc, i64 51471}
!637 = !{ptr @compute_topo_order, ptr @find, i64 1998981}
!638 = !{ptr @compute_topo_order, ptr @topo_visit, i64 638701}
!639 = !{ptr @eliminate_indirect_cycles, ptr @get_varinfo, i64 3001}
!640 = !{ptr @eliminate_indirect_cycles, ptr @find, i64 9114}
!641 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_set_init, i64 1452}
!642 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_set, i64 9114}
!643 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_base_iterate, i64 2579}
!644 = !{ptr @eliminate_indirect_cycles, ptr @unite, i64 1126}
!645 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_heap_safe_push, i64 1125}
!646 = !{ptr @eliminate_indirect_cycles, ptr @bmp_iter_next, i64 7662}
!647 = !{ptr @eliminate_indirect_cycles, ptr @unify_nodes, i64 1127}
!648 = !{ptr @eliminate_indirect_cycles, ptr @VEC_unsigned_heap_free, i64 1452}
!649 = !{ptr @do_complex_constraint, ptr @fancy_abort, i64 3}
!650 = !{ptr @do_complex_constraint, ptr @do_ds_constraint, i64 82983}
!651 = !{ptr @do_complex_constraint, ptr @get_varinfo, i64 653935}
!652 = !{ptr @do_complex_constraint, ptr @do_sd_constraint, i64 388863}
!653 = !{ptr @do_complex_constraint, ptr @set_union_with_increment, i64 99424}
!654 = !{ptr @do_complex_constraint, ptr @SET_BIT, i64 66222}
!655 = !{ptr @set_union_with_increment, ptr @bitmap_ior_into, i64 924803}
!656 = !{ptr @set_union_with_increment, ptr @bitmap_obstack_alloc_stat, i64 99425}
!657 = !{ptr @set_union_with_increment, ptr @bitmap_copy, i64 99425}
!658 = !{ptr @set_union_with_increment, ptr @solution_set_add, i64 99425}
!659 = !{ptr @set_union_with_increment, ptr @bitmap_obstack_free, i64 99425}
!660 = !{ptr @free_topo_info, ptr @free, i64 154413}
!661 = !{ptr @free_topo_info, ptr @VEC_unsigned_heap_free, i64 51471}
!662 = !{ptr @topo_visit, ptr @SET_BIT, i64 2918024}
!663 = !{ptr @topo_visit, ptr @bmp_iter_set_init, i64 1394842}
!664 = !{ptr @topo_visit, ptr @bmp_iter_set, i64 7009445}
!665 = !{ptr @topo_visit, ptr @topo_visit, i64 2279310}
!666 = !{ptr @topo_visit, ptr @bmp_iter_next, i64 5614603}
!667 = !{ptr @topo_visit, ptr @VEC_unsigned_heap_safe_push, i64 2918024}
!668 = !{ptr @do_ds_constraint, ptr @get_varinfo, i64 401196}
!669 = !{ptr @do_ds_constraint, ptr @fancy_abort, i64 1}
!670 = !{ptr @do_ds_constraint, ptr @bitmap_bit_p, i64 165966}
!671 = !{ptr @do_ds_constraint, ptr @find, i64 288227}
!672 = !{ptr @do_ds_constraint, ptr @add_graph_edge, i64 286310}
!673 = !{ptr @do_ds_constraint, ptr @bitmap_ior_into, i64 86418}
!674 = !{ptr @do_ds_constraint, ptr @SET_BIT, i64 16113}
!675 = !{ptr @do_ds_constraint, ptr @solution_set_expand, i64 6011}
!676 = !{ptr @do_ds_constraint, ptr @bmp_iter_set_init, i64 80833}
!677 = !{ptr @do_ds_constraint, ptr @bmp_iter_set, i64 310711}
!678 = !{ptr @do_ds_constraint, ptr @first_vi_for_offset, i64 9343}
!679 = !{ptr @do_ds_constraint, ptr @bmp_iter_next, i64 229878}
!680 = !{ptr @do_sd_constraint, ptr @get_varinfo, i64 3138812}
!681 = !{ptr @do_sd_constraint, ptr @fancy_abort, i64 1}
!682 = !{ptr @do_sd_constraint, ptr @bitmap_bit_p, i64 388865}
!683 = !{ptr @do_sd_constraint, ptr @bitmap_set_bit, i64 271504}
!684 = !{ptr @do_sd_constraint, ptr @solution_set_expand, i64 14380}
!685 = !{ptr @do_sd_constraint, ptr @bmp_iter_set_init, i64 381073}
!686 = !{ptr @do_sd_constraint, ptr @bmp_iter_set, i64 1350059}
!687 = !{ptr @do_sd_constraint, ptr @first_vi_for_offset, i64 57675}
!688 = !{ptr @do_sd_constraint, ptr @find, i64 945061}
!689 = !{ptr @do_sd_constraint, ptr @bitmap_ior_into, i64 611584}
!690 = !{ptr @do_sd_constraint, ptr @add_graph_edge, i64 584590}
!691 = !{ptr @do_sd_constraint, ptr @bmp_iter_next, i64 968986}
!692 = !{ptr @do_sd_constraint, ptr @SET_BIT, i64 319826}
!693 = !{ptr @solution_set_expand, ptr @bmp_iter_set_init, i64 93048}
!694 = !{ptr @solution_set_expand, ptr @bmp_iter_set, i64 434262}
!695 = !{ptr @solution_set_expand, ptr @get_varinfo, i64 341214}
!696 = !{ptr @solution_set_expand, ptr @lookup_vi_for_tree, i64 38233}
!697 = !{ptr @solution_set_expand, ptr @bitmap_obstack_alloc_stat, i64 3599}
!698 = !{ptr @solution_set_expand, ptr @bitmap_set_bit, i64 86355}
!699 = !{ptr @solution_set_expand, ptr @bmp_iter_next, i64 341214}
!700 = !{ptr @solution_set_expand, ptr @bitmap_obstack_free, i64 3599}
!701 = !{ptr @solution_set_add, ptr @bitmap_obstack_alloc_stat, i64 99424}
!702 = !{ptr @solution_set_add, ptr @solution_set_expand, i64 69060}
!703 = !{ptr @solution_set_add, ptr @bmp_iter_set_init, i64 30364}
!704 = !{ptr @solution_set_add, ptr @bmp_iter_set, i64 110912}
!705 = !{ptr @solution_set_add, ptr @get_varinfo, i64 80548}
!706 = !{ptr @solution_set_add, ptr @first_or_preceding_vi_for_offset, i64 7142}
!707 = !{ptr @solution_set_add, ptr @bitmap_set_bit, i64 82379}
!708 = !{ptr @solution_set_add, ptr @bmp_iter_next, i64 80548}
!709 = !{ptr @solution_set_add, ptr @bitmap_copy, i64 30364}
!710 = !{ptr @solution_set_add, ptr @bitmap_obstack_free, i64 30364}
!711 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_set_init, i64 788701}
!712 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_set, i64 2760460}
!713 = !{ptr @set_uids_in_ptset, ptr @get_varinfo, i64 1971759}
!714 = !{ptr @set_uids_in_ptset, ptr @bitmap_set_bit, i64 409815}
!715 = !{ptr @set_uids_in_ptset, ptr @bmp_iter_next, i64 1971759}
!716 = !{ptr @shared_bitmap_lookup, ptr @bitmap_hash, i64 788701}
!717 = !{ptr @shared_bitmap_lookup, ptr @htab_find_slot_with_hash, i64 788701}
!718 = !{ptr @shared_bitmap_add, ptr @xmalloc, i64 34277}
!719 = !{ptr @shared_bitmap_add, ptr @bitmap_hash, i64 34277}
!720 = !{ptr @shared_bitmap_add, ptr @htab_find_slot_with_hash, i64 34277}
!721 = !{ptr @shared_bitmap_add, ptr @fancy_abort, i64 1}
!722 = !{ptr @VEC_varinfo_t_heap_free, ptr @free, i64 22267}
!723 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!724 = !{!"function_entry_count", i64 0}
!725 = !{!726, !726, i64 0}
!726 = !{!"any pointer", !727, i64 0}
!727 = !{!"omnipotent char", !728, i64 0}
!728 = !{!"Simple C/C++ TBAA"}
!729 = !{!"tree-ssa-structalias.c:dump_constraint"}
!730 = !{!731, !733, i64 0}
!731 = !{!"constraint", !732, i64 0, !732, i64 16}
!732 = !{!"constraint_expr", !733, i64 0, !733, i64 4, !734, i64 8}
!733 = !{!"int", !727, i64 0}
!734 = !{!"long", !727, i64 0}
!735 = !{!731, !733, i64 4}
!736 = !{!737, !726, i64 40}
!737 = !{!"variable_info", !733, i64 0, !733, i64 4, !733, i64 4, !733, i64 4, !733, i64 4, !733, i64 4, !733, i64 4, !733, i64 4, !733, i64 4, !726, i64 8, !734, i64 16, !734, i64 24, !734, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64}
!738 = !{!731, !734, i64 8}
!739 = !{!731, !733, i64 16}
!740 = !{!731, !733, i64 20}
!741 = !{!731, !734, i64 24}
!742 = !{!"function_entry_count", i64 20014426}
!743 = !{!"tree-ssa-structalias.c:get_varinfo"}
!744 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_index"}
!745 = !{!"tree-ssa-structalias.c:dump_constraints"}
!746 = !{i32 0, i32 2}
!747 = distinct !{!747, !748}
!748 = !{!"llvm.loop.mustprogress"}
!749 = !{!"function_entry_count", i64 8773517}
!750 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_iterate"}
!751 = !{!"branch_weights", i32 1047672, i32 7725847}
!752 = !{!753, !733, i64 0}
!753 = !{!"VEC_constraint_t_base", !733, i64 0, !733, i64 4, !727, i64 8}
!754 = !{!"branch_weights", i32 7408671, i32 317177}
!755 = !{!"tree-ssa-structalias.c:dump_constraint_graph"}
!756 = !{!757, !733, i64 0}
!757 = !{!"constraint_graph", !733, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !726, i64 104, !726, i64 112, !726, i64 120}
!758 = !{!757, !726, i64 40}
!759 = !{!733, !733, i64 0}
!760 = distinct !{!760, !748}
!761 = distinct !{!761, !748}
!762 = !{!"function_entry_count", i64 29559998}
!763 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_length"}
!764 = !{!"branch_weights", i32 1, i32 29559999}
!765 = !{!766, !733, i64 0}
!766 = !{!"VEC_varinfo_t_base", !733, i64 0, !733, i64 4, !727, i64 8}
!767 = !{!"tree-ssa-structalias.c:dump_constraint_edge"}
!768 = !{!"tree-ssa-structalias.c:dump_solution_for_var"}
!769 = !{!737, !726, i64 56}
!770 = !{i8 0, i8 2}
!771 = distinct !{!771, !748}
!772 = !{!"function_entry_count", i64 28292309}
!773 = !{!"tree-ssa-structalias.c:find"}
!774 = !{!"branch_weights", i32 28292310, i32 1}
!775 = !{!"branch_weights", i32 24260506, i32 4031805}
!776 = !{!"function_entry_count", i64 5549979}
!777 = !{!"tree-ssa-structalias.c:bmp_iter_set_init"}
!778 = !{!779, !726, i64 0}
!779 = !{!"bitmap_head_def", !726, i64 0, !726, i64 8, !733, i64 16, !726, i64 24}
!780 = !{!781, !726, i64 0}
!781 = !{!"", !726, i64 0, !726, i64 8, !733, i64 16, !734, i64 24}
!782 = !{!781, !726, i64 8}
!783 = !{!"branch_weights", i32 66486, i32 5483495}
!784 = !{!785, !733, i64 16}
!785 = !{!"bitmap_element_def", !726, i64 0, !726, i64 8, !733, i64 16, !727, i64 24}
!786 = !{!781, !733, i64 16}
!787 = !{!734, !734, i64 0}
!788 = !{!781, !734, i64 24}
!789 = !{!"function_entry_count", i64 21194740}
!790 = !{!"tree-ssa-structalias.c:bmp_iter_set"}
!791 = !{!"branch_weights", i32 7033312, i32 14161430}
!792 = !{!"branch_weights", i32 15644761, i32 1}
!793 = !{!"branch_weights", i32 88965701, i32 15644761}
!794 = distinct !{!794, !748}
!795 = !{!"branch_weights", i32 1, i32 6096835}
!796 = !{!"branch_weights", i32 5160360, i32 1483333}
!797 = !{!"branch_weights", i32 6096835, i32 546857}
!798 = distinct !{!798, !748}
!799 = !{!785, !726, i64 0}
!800 = !{!"branch_weights", i32 5549980, i32 546857}
!801 = !{!"function_entry_count", i64 15644761}
!802 = !{!"tree-ssa-structalias.c:bmp_iter_next"}
!803 = !{!804, !734, i64 8}
!804 = !{!"", !734, i64 0, !734, i64 8, !734, i64 16, !734, i64 24}
!805 = !{!804, !734, i64 0}
!806 = !{!804, !734, i64 24}
!807 = !{!804, !734, i64 16}
!808 = !{!"function_entry_count", i64 487496}
!809 = !{!"function_entry_count", i64 242}
!810 = !{!811, !726, i64 8}
!811 = !{!"pt_solution", !733, i64 0, !733, i64 0, !733, i64 0, !733, i64 0, !733, i64 0, !733, i64 0, !726, i64 8}
!812 = !{!"branch_weights", i32 1, i32 242}
!813 = !{!"branch_weights", i32 831, i32 1}
!814 = !{!"branch_weights", i32 242, i32 589}
!815 = distinct !{!815, !748}
!816 = !{!"function_entry_count", i64 12428440}
!817 = !{!"tree-ssa-structalias.c:is_global_var"}
!818 = !{!"branch_weights", i32 329173, i32 12099269}
!819 = !{!"function_entry_count", i64 1246653}
!820 = !{!"branch_weights", i32 38496788, i32 -317101025}
!821 = !{!"branch_weights", i32 11089, i32 748}
!822 = !{!823, !726, i64 24}
!823 = !{!"function", !726, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !733, i64 104, !733, i64 108, !733, i64 112, !733, i64 116, !733, i64 120, !733, i64 124, !726, i64 128, !733, i64 136, !733, i64 137, !733, i64 138, !733, i64 138, !733, i64 138, !733, i64 138, !733, i64 138, !733, i64 138, !733, i64 138, !733, i64 139, !733, i64 139, !733, i64 139, !733, i64 139, !733, i64 139, !733, i64 139, !733, i64 139}
!824 = !{!"branch_weights", i32 0, i32 38496788}
!825 = !{!"function_entry_count", i64 12275622}
!826 = !{!"branch_weights", i32 32983, i32 12242641}
!827 = !{!"function_entry_count", i64 12383380}
!828 = !{!"tree-ssa-structalias.c:pt_solution_includes_1"}
!829 = !{!"branch_weights", i32 12298318, i32 85064}
!830 = !{!"branch_weights", i32 10321, i32 12287998}
!831 = !{!"branch_weights", i32 257485, i32 12030514}
!832 = !{!"branch_weights", i32 1, i32 267805}
!833 = !{!727, !727, i64 0}
!834 = !{!"branch_weights", i32 140741, i32 127065}
!835 = !{!"branch_weights", i32 32983, i32 107759}
!836 = !{!"branch_weights", i32 10531, i32 97229}
!837 = !{!"function_entry_count", i64 2026260}
!838 = !{!"branch_weights", i32 55157, i32 1971105}
!839 = !{!"function_entry_count", i64 2119751}
!840 = !{!"tree-ssa-structalias.c:pt_solutions_intersect_1"}
!841 = !{!"branch_weights", i32 1903162, i32 216591}
!842 = !{!"branch_weights", i32 1883674, i32 19489}
!843 = !{!"branch_weights", i32 350451927, i32 -1636783535}
!844 = !{!"branch_weights", i32 -1832168924, i32 291189000}
!845 = !{!"branch_weights", i32 -1117547307, i32 -1311842588}
!846 = !{!"branch_weights", i32 94928, i32 86}
!847 = !{!"branch_weights", i32 24380, i32 70549}
!848 = !{!"branch_weights", i32 69113, i32 1437}
!849 = !{!"branch_weights", i32 25666, i32 43448}
!850 = !{!"branch_weights", i32 25666, i32 24380}
!851 = !{!"branch_weights", i32 9957, i32 14424}
!852 = !{!"branch_weights", i32 1, i32 136909}
!853 = !{!"function_entry_count", i64 95012}
!854 = !{!"tree-ssa-structalias.c:pt_solution_empty_p"}
!855 = !{!"branch_weights", i32 5809392, i32 -467579379}
!856 = !{!"branch_weights", i32 1, i32 144}
!857 = !{!"branch_weights", i32 86, i32 59}
!858 = !{!"branch_weights", i32 86, i32 1}
!859 = !{!"tree-ssa-structalias.c:dump_sa_points_to_info"}
!860 = !{!861, !733, i64 0}
!861 = !{!"constraint_stats", !733, i64 0, !733, i64 4, !733, i64 8, !733, i64 12, !733, i64 16, !733, i64 20, !733, i64 24, !733, i64 28}
!862 = !{!861, !733, i64 4}
!863 = !{!861, !733, i64 8}
!864 = !{!861, !733, i64 12}
!865 = !{!861, !733, i64 16}
!866 = !{!861, !733, i64 20}
!867 = !{!861, !733, i64 24}
!868 = distinct !{!868, !748}
!869 = !{!"function_entry_count", i64 10775}
!870 = !{!"branch_weights", i32 3221, i32 7556}
!871 = !{!"function_entry_count", i64 22268}
!872 = !{!"branch_weights", i32 22269, i32 1}
!873 = !{!"tree-ssa-structalias.c:compute_points_to_sets"}
!874 = !{!823, !726, i64 8}
!875 = !{!876, !726, i64 0}
!876 = !{!"control_flow_graph", !726, i64 0, !726, i64 8, !726, i64 16, !733, i64 24, !733, i64 28, !733, i64 32, !726, i64 40, !733, i64 48, !727, i64 52, !727, i64 60, !733, i64 68, !733, i64 72}
!877 = !{!878, !726, i64 56}
!878 = !{!"basic_block_def", !726, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !727, i64 32, !726, i64 48, !726, i64 56, !727, i64 64, !734, i64 72, !733, i64 80, !733, i64 84, !733, i64 88, !733, i64 92, !733, i64 96}
!879 = !{!876, !726, i64 8}
!880 = !{!"branch_weights", i32 1, i32 22268}
!881 = !{!"branch_weights", i32 272990, i32 627715}
!882 = !{!"branch_weights", i32 127782, i32 145209}
!883 = !{!"branch_weights", i32 0, i32 272990}
!884 = distinct !{!884, !748}
!885 = !{i64 0, i64 8, !725, i64 8, i64 8, !725, i64 16, i64 8, !725}
!886 = !{!"branch_weights", i32 900704, i32 1}
!887 = !{!"branch_weights", i32 1324216, i32 900704}
!888 = distinct !{!888, !748}
!889 = !{!"branch_weights", i32 22268, i32 878437}
!890 = distinct !{!890, !748}
!891 = !{!892, !726, i64 16}
!892 = !{!"gimple_df", !726, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !811, i64 32, !811, i64 48, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !733, i64 96, !893, i64 104}
!893 = !{!"ssa_operands", !726, i64 0, !733, i64 8, !733, i64 12, !727, i64 16, !726, i64 24, !726, i64 32}
!894 = !{!"branch_weights", i32 1013116, i32 5651}
!895 = !{!"branch_weights", i32 24720784, i32 3386612}
!896 = !{!737, !726, i64 48}
!897 = !{!"branch_weights", i32 22268, i32 996498}
!898 = distinct !{!898, !748}
!899 = !{!"branch_weights", i32 366458, i32 2189836}
!900 = !{!"branch_weights", i32 -319573633, i32 2126533026, i32 2786}
!901 = !{!"branch_weights", i32 2534025, i32 22268}
!902 = distinct !{!902, !748}
!903 = !{!"tree-ssa-structalias.c:delete_points_to_sets"}
!904 = !{!861, !733, i64 28}
!905 = !{!757, !726, i64 120}
!906 = !{!"branch_weights", i32 996498, i32 22268}
!907 = distinct !{!907, !748}
!908 = !{!757, !726, i64 8}
!909 = !{!757, !726, i64 56}
!910 = !{!757, !726, i64 64}
!911 = !{!757, !726, i64 32}
!912 = !{!"tree-ssa-structalias.c:init_alias_vars"}
!913 = !{!914, !733, i64 8}
!914 = !{!"param_info", !726, i64 0, !733, i64 8, !727, i64 12, !733, i64 16, !733, i64 20, !726, i64 24}
!915 = !{!"tree-ssa-structalias.c:init_alias_heapvars"}
!916 = !{!"branch_weights", i32 7556, i32 14714}
!917 = !{!"tree-ssa-structalias.c:intra_create_variable_infos"}
!918 = !{!"branch_weights", i32 8526, i32 37062}
!919 = !{!"branch_weights", i32 37062, i32 1}
!920 = !{!737, !733, i64 0}
!921 = !{!"branch_weights", i32 1, i32 37061}
!922 = !{!"branch_weights", i32 49, i32 37122}
!923 = !{!737, !726, i64 8}
!924 = !{!"branch_weights", i32 37061, i32 109}
!925 = distinct !{!925, !748}
!926 = !{!"branch_weights", i32 21025, i32 5390028, i32 145}
!927 = !{!"branch_weights", i32 36918, i32 1}
!928 = !{!"branch_weights", i32 22268, i32 23319}
!929 = distinct !{!929, !748}
!930 = !{!823, !726, i64 48}
!931 = !{!"branch_weights", i32 1, i32 22269}
!932 = distinct !{!932, !748}
!933 = !{!823, !726, i64 56}
!934 = distinct !{!934, !748}
!935 = !{!"function_entry_count", i64 4299316}
!936 = !{!"tree-ssa-structalias.c:gsi_end_p"}
!937 = !{!938, !726, i64 0}
!938 = !{!"", !726, i64 0, !726, i64 8, !726, i64 16}
!939 = !{!"function_entry_count", i64 2497908}
!940 = !{!"tree-ssa-structalias.c:gsi_stmt"}
!941 = !{!942, !726, i64 0}
!942 = !{!"gimple_seq_node_d", !726, i64 0, !726, i64 8, !726, i64 16}
!943 = !{!"function_entry_count", i64 1073232}
!944 = !{!"tree-ssa-structalias.c:gimple_phi_result"}
!945 = !{!"function_entry_count", i64 2370127}
!946 = !{!"tree-ssa-structalias.c:find_func_aliases"}
!947 = !{i32 0, i32 256}
!948 = !{!"branch_weights", i32 145209, i32 2224920}
!949 = !{!"branch_weights", i32 89105, i32 -1060041682}
!950 = !{!"branch_weights", i32 71006, i32 74204}
!951 = !{!"branch_weights", i32 1, i32 74203}
!952 = !{!"branch_weights", i32 1, i32 219769}
!953 = !{!"branch_weights", i32 219769, i32 1}
!954 = distinct !{!954, !748}
!955 = distinct !{!955, !748}
!956 = !{!"branch_weights", i32 145567, i32 74203}
!957 = distinct !{!957, !748}
!958 = !{!"branch_weights", i32 1948019, i32 276902}
!959 = !{!"branch_weights", i32 8551, i32 268352}
!960 = !{!"branch_weights", i32 31109, i32 237244}
!961 = !{!"branch_weights", i32 20852, i32 93, i32 24, i32 1, i32 1687, i32 39, i32 4, i32 1, i32 1, i32 31, i32 7, i32 3600, i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 4778}
!962 = !{!"branch_weights", i32 1852, i32 28}
!963 = !{!"branch_weights", i32 15625, i32 2704, i32 650, i32 625}
!964 = !{!"branch_weights", i32 3600, i32 1}
!965 = !{!"branch_weights", i32 1, i32 3600}
!966 = !{!"branch_weights", i32 116, i32 3485}
!967 = !{!"branch_weights", i32 1, i32 3599}
!968 = !{!"branch_weights", i32 3599, i32 1557}
!969 = distinct !{!969, !748}
!970 = !{!"branch_weights", i32 1, i32 266645}
!971 = !{!"branch_weights", i32 265635, i32 1011}
!972 = !{!"branch_weights", i32 24, i32 988}
!973 = !{!"branch_weights", i32 712, i32 277}
!974 = !{!"branch_weights", i32 250193, i32 15443}
!975 = !{!"branch_weights", i32 104263, i32 162383}
!976 = !{!"branch_weights", i32 74311, i32 88073}
!977 = distinct !{!977, !748}
!978 = distinct !{!978, !748}
!979 = distinct !{!979, !748}
!980 = !{!"branch_weights", i32 531759, i32 1416261}
!981 = !{!"branch_weights", i32 756906, i32 659356}
!982 = !{!"branch_weights", i32 615867, i32 43490}
!983 = !{!"branch_weights", i32 0, i32 -2147483648}
!984 = !{!"branch_weights", i32 13796626, i32 -247139407}
!985 = !{i32 0, i32 65536}
!986 = !{!"branch_weights", i32 43490, i32 613779}
!987 = !{!"branch_weights", i32 22898, i32 590882}
!988 = !{!"branch_weights", i32 221, i32 590662}
!989 = !{!"branch_weights", i32 23118, i32 1}
!990 = !{!"branch_weights", i32 270400, i32 11774079, i32 520}
!991 = !{!"branch_weights", i32 520, i32 590662}
!992 = !{!732, !733, i64 0}
!993 = !{!732, !733, i64 4}
!994 = !{!732, !734, i64 8}
!995 = !{!"branch_weights", i32 1, i32 659356}
!996 = !{!"branch_weights", i32 41680, i32 617677}
!997 = !{!"branch_weights", i32 13471, i32 28210}
!998 = !{!"branch_weights", i32 608030, i32 23118}
!999 = !{!"branch_weights", i32 1, i32 45198, i32 1}
!1000 = !{!"branch_weights", i32 22598, i32 2}
!1001 = !{!"branch_weights", i32 21919, i32 680}
!1002 = !{!"branch_weights", i32 1182365, i32 106300}
!1003 = !{!"branch_weights", i32 4769, i32 101532}
!1004 = !{!"branch_weights", i32 1, i32 101532}
!1005 = !{!"branch_weights", i32 1, i32 4769}
!1006 = !{!"branch_weights", i32 22197, i32 1261700}
!1007 = !{!"branch_weights", i32 9003, i32 13195}
!1008 = !{!"branch_weights", i32 5005, i32 8191}
!1009 = !{!"branch_weights", i32 1, i32 1275706}
!1010 = distinct !{!1010, !748}
!1011 = distinct !{!1011, !748}
!1012 = distinct !{!1012, !748}
!1013 = !{!"tree-ssa-structalias.c:gsi_next"}
!1014 = !{!942, !726, i64 16}
!1015 = !{!"function_entry_count", i64 900704}
!1016 = !{!"tree-ssa-structalias.c:gsi_start_bb"}
!1017 = !{!938, !726, i64 8}
!1018 = !{!938, !726, i64 16}
!1019 = !{!"tree-ssa-structalias.c:solve_constraints"}
!1020 = !{!"function_entry_count", i64 807390}
!1021 = !{!"tree-ssa-structalias.c:find_what_var_points_to"}
!1022 = !{!"branch_weights", i32 1, i32 807390}
!1023 = !{!"branch_weights", i32 406271, i32 1911465}
!1024 = !{!"branch_weights", i32 1455957797, i32 355071087, i32 -1434064440, i32 4060, i32 -1205114569}
!1025 = !{!"branch_weights", i32 -1993949716, i32 130119777}
!1026 = !{!"branch_weights", i32 6, i32 134302, i32 36}
!1027 = !{!"branch_weights", i32 2305319, i32 12417}
!1028 = !{!"branch_weights", i32 807390, i32 1510345}
!1029 = distinct !{!1029, !748}
!1030 = !{!"branch_weights", i32 788204, i32 19188}
!1031 = !{!"branch_weights", i32 350344549, i32 9353256}
!1032 = !{!"branch_weights", i32 34278, i32 754425}
!1033 = !{!"function_entry_count", i64 1041033}
!1034 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_iterate"}
!1035 = !{!"branch_weights", i32 1, i32 1041034}
!1036 = !{!"branch_weights", i32 1018766, i32 22269}
!1037 = !{!"function_entry_count", i64 2578560}
!1038 = !{!"tree-ssa-structalias.c:VEC_tree_base_length"}
!1039 = !{!"branch_weights", i32 1, i32 2578561}
!1040 = !{!1041, !733, i64 0}
!1041 = !{!"VEC_tree_base", !733, i64 0, !733, i64 4, !727, i64 8}
!1042 = !{!"function_entry_count", i64 2556292}
!1043 = !{!"tree-ssa-structalias.c:VEC_tree_base_index"}
!1044 = !{!"function_entry_count", i64 763161}
!1045 = !{!"tree-ssa-structalias.c:find_what_p_points_to"}
!1046 = !{!"branch_weights", i32 763162, i32 1}
!1047 = !{!"branch_weights", i32 -1840561145, i32 116594600}
!1048 = !{!"branch_weights", i32 308, i32 762855}
!1049 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_alloc"}
!1050 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_alloc"}
!1051 = !{!"tree-ssa-structalias.c:shared_bitmap_hash"}
!1052 = !{!1053, !733, i64 8}
!1053 = !{!"shared_bitmap_info", !726, i64 0, !733, i64 8}
!1054 = !{!"function_entry_count", i64 821649}
!1055 = !{!"tree-ssa-structalias.c:shared_bitmap_eq"}
!1056 = !{!1053, !726, i64 0}
!1057 = !{!"tree-ssa-structalias.c:init_base_vars"}
!1058 = !{!737, !734, i64 16}
!1059 = !{!737, !734, i64 24}
!1060 = !{!737, !734, i64 32}
!1061 = !{!"function_entry_count", i64 1018765}
!1062 = !{!"tree-ssa-structalias.c:new_var_info"}
!1063 = !{!"branch_weights", i32 192478, i32 826289}
!1064 = !{!"branch_weights", i32 97778, i32 728512}
!1065 = !{!737, !726, i64 64}
!1066 = !{!"function_entry_count", i64 1707444}
!1067 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_safe_push"}
!1068 = !{!"function_entry_count", i64 1721777}
!1069 = !{!"tree-ssa-structalias.c:new_constraint"}
!1070 = !{i64 0, i64 4, !759, i64 4, i64 4, !759, i64 8, i64 8, !787}
!1071 = !{i64 0, i64 8, !787}
!1072 = !{!"function_entry_count", i64 1699509}
!1073 = !{!"tree-ssa-structalias.c:process_constraint"}
!1074 = !{!"branch_weights", i32 1699510, i32 1}
!1075 = !{!"branch_weights", i32 1, i32 1699510}
!1076 = !{!"branch_weights", i32 2124089, i32 2145359559}
!1077 = !{!"branch_weights", i32 1, i32 1681}
!1078 = !{!"branch_weights", i32 16005238, i32 2131478410}
!1079 = !{!"branch_weights", i32 2147482374, i32 1274}
!1080 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_safe_push"}
!1081 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_reserve"}
!1082 = !{!"branch_weights", i32 58262, i32 960505}
!1083 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_quick_push"}
!1084 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_base_space"}
!1085 = !{!"branch_weights", i32 1, i32 1018766}
!1086 = !{!766, !733, i64 4}
!1087 = !{!"function_entry_count", i64 2246531}
!1088 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_reserve"}
!1089 = !{!"branch_weights", i32 321758, i32 1924775}
!1090 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_quick_push"}
!1091 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_space"}
!1092 = !{!"branch_weights", i32 216924, i32 2029609}
!1093 = !{!753, !733, i64 4}
!1094 = !{!"function_entry_count", i64 14333}
!1095 = !{!"tree-ssa-structalias.c:new_scalar_tmp_constraint_exp"}
!1096 = !{!"function_entry_count", i64 5322}
!1097 = !{!"tree-ssa-structalias.c:heapvar_map_eq"}
!1098 = !{!1099, !726, i64 0}
!1099 = !{!"heapvar_map", !1100, i64 0, !734, i64 24}
!1100 = !{!"tree_map", !1101, i64 0, !733, i64 8, !726, i64 16}
!1101 = !{!"tree_map_base", !726, i64 0}
!1102 = !{!"branch_weights", i32 2075, i32 3249}
!1103 = !{!1099, !734, i64 24}
!1104 = !{!"function_entry_count", i64 3242570}
!1105 = !{!"tree-ssa-structalias.c:could_have_pointers"}
!1106 = !{!"function_entry_count", i64 5650}
!1107 = !{!"tree-ssa-structalias.c:heapvar_lookup"}
!1108 = !{!"branch_weights", i32 3577, i32 2075}
!1109 = !{!1099, !726, i64 16}
!1110 = !{!"function_entry_count", i64 3576}
!1111 = !{!"tree-ssa-structalias.c:heapvar_insert"}
!1112 = !{!1099, !733, i64 8}
!1113 = !{!"branch_weights", i32 3577, i32 1}
!1114 = !{!"tree-ssa-structalias.c:get_var_ann"}
!1115 = !{!"branch_weights", i32 3577, i32 12798506, i32 1}
!1116 = !{!"tree-ssa-structalias.c:gimple_referenced_vars"}
!1117 = !{!"branch_weights", i32 1, i32 5651}
!1118 = !{!892, !726, i64 0}
!1119 = !{!"function_entry_count", i64 2078516}
!1120 = !{!"tree-ssa-structalias.c:get_vi_for_tree"}
!1121 = !{!"branch_weights", i32 807518, i32 1271000}
!1122 = !{!"function_entry_count", i64 47224}
!1123 = !{!"tree-ssa-structalias.c:make_constraint_from"}
!1124 = !{!"function_entry_count", i64 679}
!1125 = !{!"tree-ssa-structalias.c:make_constraint_from_restrict"}
!1126 = !{!"function_entry_count", i64 3257934}
!1127 = !{!"tree-ssa-structalias.c:type_could_have_pointers"}
!1128 = !{!"branch_weights", i32 1678807900, i32 -1188752574, i32 1479, i32 22752948, i32 16056622, i32 623428}
!1129 = !{!"function_entry_count", i64 9226}
!1130 = !{!"tree-ssa-structalias.c:heapvar_map_hash"}
!1131 = !{!"function_entry_count", i64 807517}
!1132 = !{!"tree-ssa-structalias.c:create_variable_info_for"}
!1133 = !{!"branch_weights", i32 79007, i32 728512}
!1134 = !{!"branch_weights", i32 801176, i32 6343}
!1135 = !{!"branch_weights", i32 1, i32 6343}
!1136 = !{!"branch_weights", i32 3495, i32 804024}
!1137 = !{!"branch_weights", i32 1, i32 804024}
!1138 = !{!"branch_weights", i32 773711, i32 33808}
!1139 = !{!"branch_weights", i32 33808, i32 1}
!1140 = !{!"branch_weights", i32 40200, i32 27418}
!1141 = !{!"branch_weights", i32 6391, i32 27418}
!1142 = !{!"branch_weights", i32 96746896, i32 172963971, i32 9836}
!1143 = !{!"branch_weights", i32 17583, i32 1}
!1144 = !{!"branch_weights", i32 -1758780373, i32 11027667}
!1145 = !{!"branch_weights", i32 797682, i32 6343}
!1146 = !{!"branch_weights", i32 4383, i32 1961}
!1147 = !{!"branch_weights", i32 490, i32 3894}
!1148 = !{!"branch_weights", i32 1, i32 3893}
!1149 = !{!"branch_weights", i32 3893, i32 13122}
!1150 = distinct !{!1150, !748}
!1151 = !{!"branch_weights", i32 17015, i32 1}
!1152 = !{!1153, !734, i64 0}
!1153 = !{!"fieldoff", !734, i64 0, !734, i64 8, !733, i64 16, !733, i64 16, !733, i64 16}
!1154 = !{!"branch_weights", i32 1, i32 17015}
!1155 = !{!"branch_weights", i32 1, i32 3894}
!1156 = !{!"branch_weights", i32 7789, i32 15163236}
!1157 = !{!"branch_weights", i32 2199, i32 1696}
!1158 = !{!"branch_weights", i32 1696, i32 1}
!1159 = !{!"branch_weights", i32 1904, i32 1490}
!1160 = !{!"branch_weights", i32 207, i32 1490}
!1161 = !{!"branch_weights", i32 1490, i32 1}
!1162 = !{!"branch_weights", i32 3894, i32 13122}
!1163 = !{!"branch_weights", i32 13122, i32 1}
!1164 = !{!1153, !734, i64 8}
!1165 = !{!"branch_weights", i32 5517, i32 7606}
!1166 = !{!"branch_weights", i32 41948326, i32 623044}
!1167 = !{!"branch_weights", i32 1999, i32 5716}
!1168 = !{!"branch_weights", i32 5716, i32 1}
!1169 = !{!"branch_weights", i32 406583, i32 31877316}
!1170 = !{!"branch_weights", i32 3893, i32 9229}
!1171 = distinct !{!1171, !748}
!1172 = !{!"tree-ssa-structalias.c:alias_get_name"}
!1173 = !{!"branch_weights", i32 729057, i32 78462}
!1174 = !{!"branch_weights", i32 729057, i32 1}
!1175 = !{!"function_entry_count", i64 1702545}
!1176 = !{!"tree-ssa-structalias.c:var_can_have_subvars"}
!1177 = !{!"branch_weights", i32 1702542, i32 5}
!1178 = !{!"branch_weights", i32 245520, i32 1457023}
!1179 = !{!"function_entry_count", i64 9985}
!1180 = !{!"tree-ssa-structalias.c:push_fields_onto_fieldstack"}
!1181 = !{!"branch_weights", i32 9986, i32 1}
!1182 = !{!"branch_weights", i32 490, i32 9497}
!1183 = !{!"branch_weights", i32 1, i32 9496}
!1184 = !{!"branch_weights", i32 91006, i32 1}
!1185 = !{!"branch_weights", i32 87363, i32 3644}
!1186 = !{!"branch_weights", i32 7289, i32 13278736}
!1187 = !{!"branch_weights", i32 549, i32 3096}
!1188 = !{!"branch_weights", i32 1, i32 549}
!1189 = !{!"branch_weights", i32 2141404198, i32 6079450}
!1190 = !{!"branch_weights", i32 6343, i32 81569}
!1191 = !{!"branch_weights", i32 1, i32 87911}
!1192 = !{!"branch_weights", i32 18119, i32 63451}
!1193 = !{!"branch_weights", i32 16196, i32 1924}
!1194 = !{!"branch_weights", i32 32393, i32 262310416}
!1195 = !{!"branch_weights", i32 16125, i32 72}
!1196 = !{!"branch_weights", i32 71787, i32 1}
!1197 = !{!"branch_weights", i32 57183844, i32 485741238, i32 7562}
!1198 = !{!"branch_weights", i32 9496, i32 81510}
!1199 = distinct !{!1199, !748}
!1200 = !{!"function_entry_count", i64 813167}
!1201 = !{!"tree-ssa-structalias.c:insert_vi_for_tree"}
!1202 = !{!"branch_weights", i32 1, i32 813168}
!1203 = !{!"branch_weights", i32 813168, i32 1}
!1204 = !{!"function_entry_count", i64 33062}
!1205 = !{!"tree-ssa-structalias.c:make_copy_constraint"}
!1206 = !{!"function_entry_count", i64 120298}
!1207 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_length"}
!1208 = !{!"branch_weights", i32 13554, i32 106746}
!1209 = !{!1210, !733, i64 0}
!1210 = !{!"VEC_fieldoff_s_base", !733, i64 0, !733, i64 4, !727, i64 8}
!1211 = !{!"function_entry_count", i64 54935}
!1212 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_iterate"}
!1213 = !{!"branch_weights", i32 1, i32 54936}
!1214 = !{!"branch_weights", i32 47150, i32 7787}
!1215 = !{!"function_entry_count", i64 3893}
!1216 = !{!"tree-ssa-structalias.c:sort_fieldstack"}
!1217 = !{!"tree-ssa-structalias.c:check_for_overlaps"}
!1218 = distinct !{!1218, !748}
!1219 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_index"}
!1220 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_free"}
!1221 = !{!"function_entry_count", i64 13121}
!1222 = !{!"tree-ssa-structalias.c:insert_into_field_list"}
!1223 = !{!"function_entry_count", i64 91005}
!1224 = !{!"tree-ssa-structalias.c:bitpos_of_field"}
!1225 = !{!"branch_weights", i32 1, i32 91006}
!1226 = !{!"function_entry_count", i64 97692}
!1227 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_last"}
!1228 = !{!"function_entry_count", i64 71786}
!1229 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_safe_push"}
!1230 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_heap_reserve"}
!1231 = !{!"branch_weights", i32 11524, i32 60264}
!1232 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_quick_push"}
!1233 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_space"}
!1234 = !{!"branch_weights", i32 6343, i32 65445}
!1235 = !{!1210, !733, i64 4}
!1236 = !{!"tree-ssa-structalias.c:VEC_fieldoff_s_base_address"}
!1237 = !{!"function_entry_count", i64 25825}
!1238 = !{!"tree-ssa-structalias.c:fieldoff_compare"}
!1239 = !{!"branch_weights", i32 16016, i32 9811}
!1240 = !{!"branch_weights", i32 9811, i32 1}
!1241 = !{!"tree-ssa-structalias.c:make_constraint_from_heapvar"}
!1242 = !{!"function_entry_count", i64 36626663}
!1243 = !{!"tree-ssa-structalias.c:gimple_code"}
!1244 = !{!"function_entry_count", i64 2123161}
!1245 = !{!"tree-ssa-structalias.c:get_constraint_for"}
!1246 = !{!"branch_weights", i32 2123162, i32 1}
!1247 = !{!"function_entry_count", i64 293972}
!1248 = !{!"tree-ssa-structalias.c:gimple_phi_num_args"}
!1249 = !{!"function_entry_count", i64 439538}
!1250 = !{!"tree-ssa-structalias.c:get_use_from_ptr"}
!1251 = !{!1252, !726, i64 24}
!1252 = !{!"ssa_use_operand_d", !726, i64 0, !726, i64 8, !727, i64 16, !726, i64 24}
!1253 = !{!"function_entry_count", i64 219769}
!1254 = !{!"tree-ssa-structalias.c:gimple_phi_arg_imm_use_ptr"}
!1255 = !{!"tree-ssa-structalias.c:gimple_phi_arg_def"}
!1256 = !{!"function_entry_count", i64 5244809}
!1257 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_iterate"}
!1258 = !{!"branch_weights", i32 1, i32 5244810}
!1259 = !{!1260, !733, i64 0}
!1260 = !{!"VEC_ce_s_base", !733, i64 0, !733, i64 4, !727, i64 8}
!1261 = !{!"branch_weights", i32 2627126, i32 2617685}
!1262 = !{!"function_entry_count", i64 3995491}
!1263 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_length"}
!1264 = !{!"branch_weights", i32 1977596, i32 2017897}
!1265 = !{!"function_entry_count", i64 724765}
!1266 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_last"}
!1267 = !{!"function_entry_count", i64 267832}
!1268 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_pop"}
!1269 = !{!"function_entry_count", i64 2224919}
!1270 = !{!"tree-ssa-structalias.c:is_gimple_call"}
!1271 = !{!"function_entry_count", i64 276901}
!1272 = !{!"tree-ssa-structalias.c:gimple_call_fndecl"}
!1273 = !{!"branch_weights", i32 268352, i32 8551}
!1274 = !{!"function_entry_count", i64 524734}
!1275 = !{!"tree-ssa-structalias.c:gimple_call_lhs"}
!1276 = !{!"function_entry_count", i64 572486}
!1277 = !{!"tree-ssa-structalias.c:gimple_call_arg"}
!1278 = !{!"function_entry_count", i64 50847}
!1279 = !{!"tree-ssa-structalias.c:get_constraint_for_ptr_offset"}
!1280 = !{!"branch_weights", i32 1, i32 50848}
!1281 = !{!"branch_weights", i32 7359, i32 43490}
!1282 = !{!"branch_weights", i32 27303, i32 16188}
!1283 = !{!"branch_weights", i32 132663, i32 2147350985}
!1284 = !{!"branch_weights", i32 1, i32 50847}
!1285 = !{!"branch_weights", i32 1159, i32 49690}
!1286 = !{!"branch_weights", i32 411, i32 749}
!1287 = !{!"branch_weights", i32 411, i32 1}
!1288 = !{!"branch_weights", i32 411, i32 1815}
!1289 = distinct !{!1289, !748}
!1290 = !{!"branch_weights", i32 50847, i32 1}
!1291 = distinct !{!1291, !748}
!1292 = !{!"function_entry_count", i64 743313}
!1293 = !{!"tree-ssa-structalias.c:process_all_all_constraints"}
!1294 = !{!"branch_weights", i32 743107, i32 208}
!1295 = !{!"branch_weights", i32 208, i32 1}
!1296 = !{!"branch_weights", i32 1, i32 743313}
!1297 = !{!"branch_weights", i32 1, i32 743664}
!1298 = !{!"branch_weights", i32 743664, i32 4504}
!1299 = distinct !{!1299, !748}
!1300 = !{!"branch_weights", i32 743313, i32 352}
!1301 = distinct !{!1301, !748}
!1302 = distinct !{!1302, !748}
!1303 = distinct !{!1303, !748}
!1304 = !{!"function_entry_count", i64 5501558}
!1305 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_free"}
!1306 = !{!"branch_weights", i32 3257535, i32 2244025}
!1307 = !{!"function_entry_count", i64 407738}
!1308 = !{!"tree-ssa-structalias.c:do_deref"}
!1309 = !{!"branch_weights", i32 1, i32 407738}
!1310 = !{!"branch_weights", i32 2920, i32 -1919516624, i32 17052800, i32 2920}
!1311 = !{!"branch_weights", i32 407738, i32 1797}
!1312 = distinct !{!1312, !748}
!1313 = !{!"function_entry_count", i64 808340}
!1314 = !{!"tree-ssa-structalias.c:lookup_vi_for_tree"}
!1315 = !{!"branch_weights", i32 308, i32 808034}
!1316 = !{!"function_entry_count", i64 276}
!1317 = !{!"tree-ssa-structalias.c:handle_const_call"}
!1318 = !{!"branch_weights", i32 277, i32 1}
!1319 = !{!"branch_weights", i32 135, i32 142}
!1320 = !{!"branch_weights", i32 77, i32 66}
!1321 = !{!"branch_weights", i32 1, i32 131}
!1322 = !{!"branch_weights", i32 131, i32 1}
!1323 = distinct !{!1323, !748}
!1324 = !{!"branch_weights", i32 0, i32 142}
!1325 = distinct !{!1325, !748}
!1326 = !{!"function_entry_count", i64 15442}
!1327 = !{!"tree-ssa-structalias.c:handle_pure_call"}
!1328 = !{!"branch_weights", i32 1, i32 15442}
!1329 = !{!"branch_weights", i32 7833, i32 18434}
!1330 = !{!"branch_weights", i32 10824, i32 15442}
!1331 = distinct !{!1331, !748}
!1332 = !{!"branch_weights", i32 15443, i32 1}
!1333 = !{!"branch_weights", i32 159510668, i32 1987972980}
!1334 = !{!"function_entry_count", i64 250192}
!1335 = !{!"tree-ssa-structalias.c:handle_rhs_call"}
!1336 = !{!"branch_weights", i32 1, i32 250192}
!1337 = !{!"branch_weights", i32 179275, i32 355853}
!1338 = !{!"branch_weights", i32 284935, i32 250192}
!1339 = distinct !{!1339, !748}
!1340 = !{!"branch_weights", i32 250193, i32 1}
!1341 = !{!"branch_weights", i32 250112, i32 82}
!1342 = !{!"branch_weights", i32 1, i32 82}
!1343 = !{!"branch_weights", i32 82, i32 1}
!1344 = distinct !{!1344, !748}
!1345 = !{!"function_entry_count", i64 88072}
!1346 = !{!"tree-ssa-structalias.c:handle_lhs_call"}
!1347 = !{!"branch_weights", i32 83102, i32 4972}
!1348 = !{!"branch_weights", i32 1, i32 4972}
!1349 = !{!"branch_weights", i32 519, i32 4454}
!1350 = !{!"branch_weights", i32 1, i32 83102}
!1351 = !{!"branch_weights", i32 158, i32 82945}
!1352 = !{!"branch_weights", i32 158, i32 1}
!1353 = !{!"tree-ssa-structalias.c:gimple_call_fn"}
!1354 = !{!"function_entry_count", i64 827442}
!1355 = !{!"tree-ssa-structalias.c:gimple_call_num_args"}
!1356 = !{!"function_entry_count", i64 67018}
!1357 = !{!"tree-ssa-structalias.c:first_vi_for_offset"}
!1358 = !{!"branch_weights", i32 30304, i32 36716}
!1359 = !{!"branch_weights", i32 1, i32 30304}
!1360 = !{!"branch_weights", i32 -2147483648, i32 0}
!1361 = !{!"branch_weights", i32 1, i32 72067}
!1362 = !{!"branch_weights", i32 30304, i32 41764}
!1363 = !{!"branch_weights", i32 127, i32 9224449}
!1364 = distinct !{!1364, !748}
!1365 = !{!"function_entry_count", i64 3867827}
!1366 = !{!"tree-ssa-structalias.c:is_gimple_assign"}
!1367 = !{!"function_entry_count", i64 2085151}
!1368 = !{!"tree-ssa-structalias.c:gimple_assign_lhs"}
!1369 = !{!"function_entry_count", i64 1530286}
!1370 = !{!"tree-ssa-structalias.c:gimple_num_ops"}
!1371 = !{!"function_entry_count", i64 3623742}
!1372 = !{!"tree-ssa-structalias.c:gimple_assign_rhs1"}
!1373 = !{!"function_entry_count", i64 2088}
!1374 = !{!"tree-ssa-structalias.c:do_structure_copy"}
!1375 = !{!"branch_weights", i32 2424249, i32 830414, i32 1557}
!1376 = !{!"branch_weights", i32 509, i32 1049}
!1377 = !{!"branch_weights", i32 2146127391, i32 1356257}
!1378 = !{!"branch_weights", i32 1, i32 2098, i32 1}
!1379 = !{!"branch_weights", i32 1, i32 1045}
!1380 = !{!"branch_weights", i32 351, i32 1672}
!1381 = !{!"branch_weights", i32 329, i32 1344}
!1382 = !{!"branch_weights", i32 492, i32 1531}
!1383 = !{!"branch_weights", i32 489, i32 4}
!1384 = !{!"branch_weights", i32 1045, i32 977}
!1385 = !{!"function_entry_count", i64 3273094}
!1386 = !{!"tree-ssa-structalias.c:gimple_assign_rhs_code"}
!1387 = !{!"branch_weights", i32 2751790, i32 521306}
!1388 = !{!"function_entry_count", i64 43489}
!1389 = !{!"tree-ssa-structalias.c:gimple_assign_rhs2"}
!1390 = !{!"branch_weights", i32 43490, i32 1}
!1391 = !{!"function_entry_count", i64 23117}
!1392 = !{!"tree-ssa-structalias.c:gimple_expr_type"}
!1393 = !{!"branch_weights", i32 1, i32 2, i32 92472, i32 1}
!1394 = !{!"branch_weights", i32 1, i32 23118}
!1395 = !{!"function_entry_count", i64 2455676}
!1396 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_safe_push"}
!1397 = !{!"function_entry_count", i64 397019}
!1398 = !{!"tree-ssa-structalias.c:make_escape_constraint"}
!1399 = !{!"function_entry_count", i64 1919809}
!1400 = !{!"tree-ssa-structalias.c:gimple_assign_cast_p"}
!1401 = !{!"branch_weights", i32 531759, i32 1388052}
!1402 = !{!"function_entry_count", i64 43580}
!1403 = !{!"tree-ssa-structalias.c:gimple_return_retval"}
!1404 = !{!"tree-ssa-structalias.c:gimple_asm_noutputs"}
!1405 = !{!"tree-ssa-structalias.c:gimple_asm_output_op"}
!1406 = !{!"tree-ssa-structalias.c:gimple_asm_ninputs"}
!1407 = !{!"tree-ssa-structalias.c:gimple_asm_input_op"}
!1408 = !{!"function_entry_count", i64 3111579}
!1409 = !{!"tree-ssa-structalias.c:get_constraint_for_1"}
!1410 = !{!"branch_weights", i32 1, i32 3111580}
!1411 = !{!"branch_weights", i32 50839, i32 3060742}
!1412 = !{!"branch_weights", i32 216, i32 50624}
!1413 = !{!"branch_weights", i32 1, i32 3060957}
!1414 = !{!"branch_weights", i32 36478, i32 3024480}
!1415 = !{!"branch_weights", i32 216, i32 83040, i32 905421, i32 1844319, i32 191488}
!1416 = !{!"branch_weights", i32 83040, i32 1}
!1417 = !{!"branch_weights", i32 1, i32 400384, i32 149996, i32 1, i32 355043, i32 1}
!1418 = !{!"branch_weights", i32 1844319, i32 1}
!1419 = !{!"function_entry_count", i64 83039}
!1420 = !{!"tree-ssa-structalias.c:get_constraint_for_address_of"}
!1421 = !{!"branch_weights", i32 1, i32 83039}
!1422 = !{!"branch_weights", i32 18611, i32 64430}
!1423 = !{!"branch_weights", i32 83039, i32 1}
!1424 = distinct !{!1424, !748}
!1425 = !{!"function_entry_count", i64 505037}
!1426 = !{!"tree-ssa-structalias.c:get_constraint_for_component_ref"}
!1427 = !{!"branch_weights", i32 -674893701, i32 255117886, i32 300659, i32 38218, i32 941235798}
!1428 = !{!"branch_weights", i32 5008, i32 -1397319655, i32 802702278, i32 5008}
!1429 = !{!"branch_weights", i32 505038, i32 1385396}
!1430 = distinct !{!1430, !748}
!1431 = !{!"branch_weights", i32 35376, i32 469663}
!1432 = !{!"branch_weights", i32 35335, i32 42}
!1433 = !{!"branch_weights", i32 504997, i32 1}
!1434 = !{!"branch_weights", i32 4093, i32 1110760528, i32 4093, i32 -1268795910}
!1435 = !{!"branch_weights", i32 48064, i32 87528}
!1436 = !{!"branch_weights", i32 -1984819200, i32 96129}
!1437 = !{!"branch_weights", i32 1, i32 46289}
!1438 = !{!"branch_weights", i32 263664, i32 48068}
!1439 = !{!"branch_weights", i32 82171850, i32 3150625}
!1440 = !{!"branch_weights", i32 46289, i32 265442}
!1441 = distinct !{!1441, !748}
!1442 = !{!"branch_weights", i32 46290, i32 1775}
!1443 = !{!"branch_weights", i32 1, i32 1775}
!1444 = distinct !{!1444, !748}
!1445 = !{!"branch_weights", i32 1, i32 48064}
!1446 = !{!"branch_weights", i32 1, i32 369407}
!1447 = !{!"branch_weights", i32 356589, i32 12819}
!1448 = !{!"branch_weights", i32 58089935, i32 -805473775}
!1449 = !{!"function_entry_count", i64 2208265}
!1450 = !{!"tree-ssa-structalias.c:get_constraint_for_ssa_var"}
!1451 = !{!"branch_weights", i32 9387468, i32 282257323, i32 268460038, i32 266365, i32 -1455294120}
!1452 = !{!"branch_weights", i32 926, i32 -1317081573, i32 439450069, i32 926}
!1453 = !{!"branch_weights", i32 6097, i32 1}
!1454 = !{!"branch_weights", i32 1844319, i32 363948}
!1455 = !{!"branch_weights", i32 -1197181020, i32 319551370}
!1456 = !{!"branch_weights", i32 1, i32 2035806}
!1457 = !{!"branch_weights", i32 1547424, i32 488383}
!1458 = !{!"branch_weights", i32 1128, i32 1546297}
!1459 = !{!"branch_weights", i32 1128, i32 1845}
!1460 = distinct !{!1460, !748}
!1461 = !{!"function_entry_count", i64 313401}
!1462 = !{!"tree-ssa-structalias.c:ranges_overlap_p"}
!1463 = !{!"branch_weights", i32 58840, i32 254563}
!1464 = !{!"branch_weights", i32 448174071, i32 -692964487}
!1465 = !{!"branch_weights", i32 226396, i32 58840}
!1466 = !{!"branch_weights", i32 1250055801, i32 -2082759816}
!1467 = !{!"tree-ssa-structalias.c:ref_contains_array_ref"}
!1468 = distinct !{!1468, !748}
!1469 = !{!"tree-ssa-structalias.c:handled_component_p"}
!1470 = !{!"tree-ssa-structalias.c:gimple_phi_arg"}
!1471 = !{!"branch_weights", i32 1, i32 439539}
!1472 = !{!"function_entry_count", i64 7435993}
!1473 = !{!"tree-ssa-structalias.c:gimple_op"}
!1474 = !{!"branch_weights", i32 1, i32 7435994}
!1475 = !{!"tree-ssa-structalias.c:gimple_has_ops"}
!1476 = !{!"tree-ssa-structalias.c:gimple_ops"}
!1477 = !{!"tree-ssa-structalias.c:gimple_statement_structure"}
!1478 = !{!"tree-ssa-structalias.c:gss_for_code"}
!1479 = !{!"function_entry_count", i64 57044}
!1480 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_index"}
!1481 = !{!"function_entry_count", i64 7142}
!1482 = !{!"tree-ssa-structalias.c:first_or_preceding_vi_for_offset"}
!1483 = !{!"branch_weights", i32 9, i32 7135}
!1484 = !{!"branch_weights", i32 4442, i32 9485}
!1485 = !{!"branch_weights", i32 1, i32 9485}
!1486 = !{!"branch_weights", i32 7143, i32 6784}
!1487 = distinct !{!1487, !748}
!1488 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_replace"}
!1489 = !{!"function_entry_count", i64 265910}
!1490 = !{!"tree-ssa-structalias.c:gimple_call_chain"}
!1491 = !{!"function_entry_count", i64 415452}
!1492 = !{!"tree-ssa-structalias.c:make_constraint_to"}
!1493 = !{!"branch_weights", i32 1, i32 415452}
!1494 = !{!"branch_weights", i32 415452, i32 260}
!1495 = distinct !{!1495, !748}
!1496 = !{!"tree-ssa-structalias.c:gimple_call_return_slot_opt_p"}
!1497 = !{!"tree-ssa-structalias.c:gimple_expr_code"}
!1498 = !{!"branch_weights", i32 1, i32 13092380, i32 2, i32 1}
!1499 = !{!"tree-ssa-structalias.c:get_gimple_rhs_class"}
!1500 = !{!"tree-ssa-structalias.c:gimple_call_return_type"}
!1501 = !{!"tree-ssa-structalias.c:VEC_ce_s_heap_reserve"}
!1502 = !{!"branch_weights", i32 2244509, i32 211169}
!1503 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_quick_push"}
!1504 = !{!"branch_weights", i32 1, i32 2455677}
!1505 = !{!"tree-ssa-structalias.c:VEC_ce_s_base_space"}
!1506 = !{!"branch_weights", i32 2244025, i32 211653}
!1507 = !{!1260, !733, i64 4}
!1508 = !{!"tree-ssa-structalias.c:bb_seq"}
!1509 = !{!878, !733, i64 96}
!1510 = !{!"branch_weights", i32 900705, i32 1}
!1511 = !{!"branch_weights", i32 1, i32 900705}
!1512 = !{!1513, !726, i64 0}
!1513 = !{!"gimple_bb_info", !726, i64 0, !726, i64 8}
!1514 = !{!"tree-ssa-structalias.c:gimple_seq_first"}
!1515 = !{!1516, !726, i64 0}
!1516 = !{!"gimple_seq_d", !726, i64 0, !726, i64 8, !726, i64 16}
!1517 = !{!"tree-ssa-structalias.c:init_graph"}
!1518 = !{!"branch_weights", i32 2015263, i32 22268}
!1519 = distinct !{!1519, !748}
!1520 = !{!"tree-ssa-structalias.c:build_pred_graph"}
!1521 = !{!757, !726, i64 16}
!1522 = !{!757, !726, i64 24}
!1523 = !{!757, !726, i64 72}
!1524 = !{!757, !726, i64 80}
!1525 = !{!757, !726, i64 88}
!1526 = !{!757, !726, i64 96}
!1527 = !{!757, !726, i64 48}
!1528 = !{!757, !726, i64 104}
!1529 = !{!757, !726, i64 112}
!1530 = !{!"branch_weights", i32 906747, i32 112020}
!1531 = distinct !{!1531, !748}
!1532 = distinct !{!1532, !748}
!1533 = distinct !{!1533, !748}
!1534 = !{i64 0, i64 4, !759, i64 4, i64 8, !787}
!1535 = !{!"branch_weights", i32 78823, i32 1628623}
!1536 = !{!"branch_weights", i32 -1131739378, i32 -582086878}
!1537 = !{!"branch_weights", i32 -1914891606, i32 921076943, i32 681135232}
!1538 = !{!"branch_weights", i32 878276940, i32 -1772699282}
!1539 = !{!"branch_weights", i32 181432, i32 97131}
!1540 = !{!"branch_weights", i32 117108, i32 161455}
!1541 = !{!"branch_weights", i32 6529, i32 272034}
!1542 = !{!"branch_weights", i32 6529, i32 30529}
!1543 = distinct !{!1543, !748}
!1544 = !{!"branch_weights", i32 973372, i32 2}
!1545 = !{!"branch_weights", i32 -1511767688, i32 340647659}
!1546 = !{!"branch_weights", i32 -1496215208, i32 17885095}
!1547 = !{!"branch_weights", i32 105470, i32 1}
!1548 = !{!"branch_weights", i32 22268, i32 1685177}
!1549 = distinct !{!1549, !748}
!1550 = !{!"tree-ssa-structalias.c:perform_var_substitution"}
!1551 = !{!1552, !726, i64 0}
!1552 = !{!"scc_info", !726, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !733, i64 32, !726, i64 40}
!1553 = !{!1552, !726, i64 24}
!1554 = !{!"branch_weights", i32 590568, i32 428199}
!1555 = distinct !{!1555, !748}
!1556 = !{!"branch_weights", i32 607903, i32 410864}
!1557 = distinct !{!1557, !748}
!1558 = !{!"branch_weights", i32 901659, i32 117108}
!1559 = !{!"branch_weights", i32 1, i32 117107}
!1560 = !{!"branch_weights", i32 117107, i32 99394}
!1561 = distinct !{!1561, !748}
!1562 = !{!"branch_weights", i32 107363, i32 9746}
!1563 = !{!"branch_weights", i32 9746, i32 1}
!1564 = distinct !{!1564, !748}
!1565 = distinct !{!1565, !748}
!1566 = !{!"branch_weights", i32 23431, i32 995336}
!1567 = !{!"branch_weights", i32 23431, i32 1}
!1568 = distinct !{!1568, !748}
!1569 = !{!"tree-ssa-structalias.c:rewrite_constraints"}
!1570 = !{!"branch_weights", i32 2037531, i32 1}
!1571 = distinct !{!1571, !748}
!1572 = !{!"branch_weights", i32 34, i32 1707412}
!1573 = !{!"branch_weights", i32 34, i32 1}
!1574 = !{!"branch_weights", i32 337, i32 1707076}
!1575 = !{!"branch_weights", i32 337, i32 1}
!1576 = distinct !{!1576, !748}
!1577 = !{!"tree-ssa-structalias.c:build_succ_graph"}
!1578 = !{!"branch_weights", i32 370, i32 1707076}
!1579 = !{!"branch_weights", i32 78757, i32 1628320}
!1580 = !{!"branch_weights", i32 -1134736628, i32 -590978244}
!1581 = !{!"branch_weights", i32 -1916208357, i32 920854019, i32 680970380}
!1582 = !{!"branch_weights", i32 278562, i32 1}
!1583 = !{!"branch_weights", i32 973069, i32 2}
!1584 = !{!"branch_weights", i32 -1829110727, i32 1215993158}
!1585 = distinct !{!1585, !748}
!1586 = !{!"branch_weights", i32 22268, i32 1}
!1587 = !{!"branch_weights", i32 369782, i32 470841}
!1588 = !{!"branch_weights", i32 11462, i32 358321}
!1589 = !{!"branch_weights", i32 818354, i32 22268}
!1590 = distinct !{!1590, !748}
!1591 = !{!"tree-ssa-structalias.c:free_var_substitution_info"}
!1592 = !{!1593, !726, i64 0}
!1593 = !{!"simple_bitmap_def", !726, i64 0, !733, i64 8, !733, i64 12, !727, i64 16}
!1594 = !{!"tree-ssa-structalias.c:move_complex_constraints"}
!1595 = !{!"branch_weights", i32 376690, i32 1251631}
!1596 = !{!"branch_weights", i32 376690, i32 1}
!1597 = !{!"branch_weights", i32 -596278813, i32 1058838086}
!1598 = !{!"branch_weights", i32 400900626, i32 -997175639}
!1599 = distinct !{!1599, !748}
!1600 = !{!"tree-ssa-structalias.c:unite_pointer_equivalences"}
!1601 = !{!"branch_weights", i32 1, i32 117108}
!1602 = !{!"branch_weights", i32 117108, i32 1}
!1603 = !{!"branch_weights", i32 98585, i32 18524}
!1604 = distinct !{!1604, !748}
!1605 = !{!"tree-ssa-structalias.c:find_indirect_cycles"}
!1606 = !{!"branch_weights", i32 1568473, i32 446791}
!1607 = !{!"branch_weights", i32 1214012, i32 354462}
!1608 = !{!"branch_weights", i32 1992995, i32 22268}
!1609 = distinct !{!1609, !748}
!1610 = !{!"tree-ssa-structalias.c:remove_preds_and_fake_succs"}
!1611 = !{!"branch_weights", i32 746080, i32 272687}
!1612 = distinct !{!1612, !748}
!1613 = !{!"branch_weights", i32 941207, i32 77560}
!1614 = distinct !{!1614, !748}
!1615 = !{!"tree-ssa-structalias.c:solve_graph"}
!1616 = !{!"branch_weights", i32 664083, i32 354684}
!1617 = !{!"branch_weights", i32 515739, i32 148345}
!1618 = !{!"branch_weights", i32 98099, i32 50247}
!1619 = !{!"branch_weights", i32 11874, i32 38374}
!1620 = !{!"branch_weights", i32 90701, i32 19272}
!1621 = distinct !{!1621, !748}
!1622 = !{!1623, !726, i64 8}
!1623 = !{!"topo_info", !726, i64 0, !726, i64 8}
!1624 = !{!"branch_weights", i32 1, i32 51471}
!1625 = !{!"branch_weights", i32 2900238, i32 17788}
!1626 = !{!"branch_weights", i32 2898786, i32 1453}
!1627 = !{!"branch_weights", i32 1453, i32 1}
!1628 = !{!"branch_weights", i32 2336083, i32 564156}
!1629 = !{!"branch_weights", i32 1, i32 564156}
!1630 = distinct !{!1630, !748}
!1631 = !{!"branch_weights", i32 1, i32 564155}
!1632 = !{!"branch_weights", i32 1, i32 571273}
!1633 = !{!"branch_weights", i32 564155, i32 7118}
!1634 = distinct !{!1634, !748}
!1635 = !{!"branch_weights", i32 278366, i32 285791}
!1636 = !{!"branch_weights", i32 1, i32 285790}
!1637 = !{!"branch_weights", i32 1915, i32 827912}
!1638 = !{!"branch_weights", i32 2533, i32 825380}
!1639 = !{!"branch_weights", i32 686135, i32 141778}
!1640 = !{!"branch_weights", i32 104448, i32 37331}
!1641 = !{!"branch_weights", i32 285790, i32 544036}
!1642 = distinct !{!1642, !748}
!1643 = !{!"branch_weights", i32 51471, i32 2866554}
!1644 = !{!"branch_weights", i32 22268, i32 29204}
!1645 = distinct !{!1645, !748}
!1646 = !{!"function_entry_count", i64 11528118}
!1647 = !{!"tree-ssa-structalias.c:SET_BIT"}
!1648 = !{!"branch_weights", i32 11528119, i32 1}
!1649 = !{!"function_entry_count", i64 1000783}
!1650 = !{!"tree-ssa-structalias.c:add_pred_graph_edge"}
!1651 = !{!"branch_weights", i32 495989, i32 504796}
!1652 = !{!"function_entry_count", i64 1436870}
!1653 = !{!"tree-ssa-structalias.c:RESET_BIT"}
!1654 = !{!"branch_weights", i32 1436871, i32 1}
!1655 = !{!"function_entry_count", i64 1145791}
!1656 = !{!"tree-ssa-structalias.c:add_implicit_graph_edge"}
!1657 = !{!"branch_weights", i32 1, i32 1145792}
!1658 = !{!"branch_weights", i32 544775, i32 601018}
!1659 = !{!"branch_weights", i32 206740, i32 939053}
!1660 = !{!"function_entry_count", i64 44536}
!1661 = !{!"tree-ssa-structalias.c:init_scc_info"}
!1662 = !{!1552, !733, i64 32}
!1663 = !{!1552, !726, i64 8}
!1664 = !{!1552, !726, i64 16}
!1665 = !{!"branch_weights", i32 1, i32 44536}
!1666 = !{!"branch_weights", i32 44536, i32 979792}
!1667 = distinct !{!1667, !748, !1668, !1669}
!1668 = !{!"llvm.loop.isvectorized", i32 1}
!1669 = !{!"llvm.loop.unroll.runtime.disable"}
!1670 = !{!1552, !726, i64 40}
!1671 = !{!"function_entry_count", i64 82002}
!1672 = !{!"tree-ssa-structalias.c:equiv_class_label_hash"}
!1673 = !{!1674, !733, i64 0}
!1674 = !{!"equiv_class_label", !733, i64 0, !733, i64 4, !726, i64 8}
!1675 = !{!"function_entry_count", i64 14937573}
!1676 = !{!"tree-ssa-structalias.c:equiv_class_label_eq"}
!1677 = !{!"branch_weights", i32 7077289, i32 7860286}
!1678 = !{!1674, !726, i64 8}
!1679 = !{!"function_entry_count", i64 1464286}
!1680 = !{!"tree-ssa-structalias.c:condense_visit"}
!1681 = !{!"branch_weights", i32 1464287, i32 1}
!1682 = !{!"branch_weights", i32 974147, i32 490141}
!1683 = !{!"branch_weights", i32 1, i32 490140}
!1684 = !{!"branch_weights", i32 498605, i32 351169}
!1685 = !{!"branch_weights", i32 491127, i32 7479}
!1686 = !{!"branch_weights", i32 498605, i32 1}
!1687 = !{!"branch_weights", i32 13125, i32 485481}
!1688 = !{!"branch_weights", i32 490140, i32 359633}
!1689 = distinct !{!1689, !748}
!1690 = !{!"branch_weights", i32 1201245, i32 263043}
!1691 = !{!"branch_weights", i32 1, i32 263042}
!1692 = !{!"branch_weights", i32 504585, i32 89515}
!1693 = !{!"branch_weights", i32 382594, i32 121992}
!1694 = !{!"branch_weights", i32 504585, i32 1}
!1695 = !{!"branch_weights", i32 171973, i32 332613}
!1696 = !{!"branch_weights", i32 263042, i32 331057}
!1697 = distinct !{!1697, !748}
!1698 = !{!"branch_weights", i32 1280100, i32 184188}
!1699 = !{!"branch_weights", i32 814752, i32 324768}
!1700 = !{!"branch_weights", i32 172061, i32 12128}
!1701 = !{!"branch_weights", i32 159771, i32 24418}
!1702 = !{!"branch_weights", i32 9, i32 24410}
!1703 = !{!"branch_weights", i32 12548, i32 171641}
!1704 = !{!"branch_weights", i32 11162, i32 160480}
!1705 = !{!"branch_weights", i32 183165, i32 1024}
!1706 = !{!"branch_weights", i32 604, i32 421}
!1707 = !{!"branch_weights", i32 324768, i32 0}
!1708 = distinct !{!1708, !748}
!1709 = !{!"function_entry_count", i64 1073614}
!1710 = !{!"tree-ssa-structalias.c:label_visit"}
!1711 = !{!"branch_weights", i32 892604, i32 181012}
!1712 = !{!"branch_weights", i32 608419, i32 465197}
!1713 = !{!"branch_weights", i32 1, i32 465196}
!1714 = !{!"branch_weights", i32 465713, i32 377129}
!1715 = !{!"branch_weights", i32 28787, i32 814055}
!1716 = !{!"branch_weights", i32 184, i32 813872}
!1717 = !{!"branch_weights", i32 1, i32 813872}
!1718 = !{!"branch_weights", i32 465196, i32 377645}
!1719 = distinct !{!1719, !748}
!1720 = !{!"branch_weights", i32 592634, i32 480982}
!1721 = !{!"branch_weights", i32 23420, i32 1050196}
!1722 = !{!"branch_weights", i32 674669, i32 375528}
!1723 = !{!"function_entry_count", i64 1167302}
!1724 = !{!"tree-ssa-structalias.c:equiv_class_lookup"}
!1725 = !{!"branch_weights", i32 782031, i32 385273}
!1726 = !{!1674, !733, i64 4}
!1727 = !{!"function_entry_count", i64 782030}
!1728 = !{!"tree-ssa-structalias.c:equiv_class_add"}
!1729 = !{!"branch_weights", i32 782031, i32 1}
!1730 = !{!"function_entry_count", i64 379240}
!1731 = !{!"tree-ssa-structalias.c:clear_edges_for_node"}
!1732 = !{!"branch_weights", i32 361131, i32 18111}
!1733 = !{!"function_entry_count", i64 96007}
!1734 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_alloc"}
!1735 = !{!"function_entry_count", i64 6095014}
!1736 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_length"}
!1737 = !{!"branch_weights", i32 1, i32 6095015}
!1738 = !{!1739, !733, i64 0}
!1739 = !{!"VEC_unsigned_base", !733, i64 0, !733, i64 4, !727, i64 8}
!1740 = !{!"function_entry_count", i64 332905}
!1741 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_last"}
!1742 = !{!"function_entry_count", i64 3102883}
!1743 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_pop"}
!1744 = !{!"function_entry_count", i64 3104097}
!1745 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_safe_push"}
!1746 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_reserve"}
!1747 = !{!"branch_weights", i32 340265, i32 2763834}
!1748 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_quick_push"}
!1749 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_space"}
!1750 = !{!"branch_weights", i32 344, i32 3103755}
!1751 = !{!1739, !733, i64 4}
!1752 = !{!"function_entry_count", i64 369}
!1753 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_replace"}
!1754 = !{!"function_entry_count", i64 3414150}
!1755 = !{!"tree-ssa-structalias.c:find_equivalent_node"}
!1756 = !{!"branch_weights", i32 2363151, i32 1051001}
!1757 = !{!"branch_weights", i32 2363151, i32 1}
!1758 = !{!"branch_weights", i32 525472, i32 1837680}
!1759 = !{!"branch_weights", i32 1501742, i32 335939}
!1760 = !{!"branch_weights", i32 1051001, i32 1}
!1761 = !{!"branch_weights", i32 116986, i32 934016}
!1762 = !{!"function_entry_count", i64 1957014}
!1763 = !{!"tree-ssa-structalias.c:unite"}
!1764 = !{!"branch_weights", i32 -554823048, i32 3822}
!1765 = !{!"branch_weights", i32 1600743, i32 356273}
!1766 = !{!"branch_weights", i32 13, i32 356261}
!1767 = !{!"function_entry_count", i64 355810}
!1768 = !{!"tree-ssa-structalias.c:unify_nodes"}
!1769 = !{!"branch_weights", i32 1, i32 355811}
!1770 = !{!"branch_weights", i32 355811, i32 1}
!1771 = !{!"branch_weights", i32 354684, i32 1128}
!1772 = !{!"branch_weights", i32 1128, i32 354684}
!1773 = !{!"branch_weights", i32 957, i32 172}
!1774 = !{!"branch_weights", i32 18, i32 155}
!1775 = !{!"branch_weights", i32 1, i32 155}
!1776 = !{!"branch_weights", i32 1028125, i32 -1369263815}
!1777 = !{!"branch_weights", i32 55, i32 71}
!1778 = !{!"branch_weights", i32 338262, i32 17550}
!1779 = !{!"branch_weights", i32 1, i32 17550}
!1780 = !{!"tree-ssa-structalias.c:merge_graph_nodes"}
!1781 = !{!"branch_weights", i32 337701, i32 18111}
!1782 = !{!"branch_weights", i32 4186, i32 13926}
!1783 = !{!"tree-ssa-structalias.c:merge_node_constraints"}
!1784 = !{!"branch_weights", i32 351999, i32 3812}
!1785 = !{!"branch_weights", i32 1290, i32 2523}
!1786 = !{!"branch_weights", i32 1282, i32 1242}
!1787 = !{!"branch_weights", i32 3812, i32 0}
!1788 = distinct !{!1788, !748}
!1789 = !{!"tree-ssa-structalias.c:valid_graph_edge"}
!1790 = !{!"branch_weights", i32 336164, i32 19648}
!1791 = !{!"tree-ssa-structalias.c:constraint_set_union"}
!1792 = !{!"branch_weights", i32 3791, i32 22}
!1793 = distinct !{!1793, !748}
!1794 = !{!"function_entry_count", i64 1396843}
!1795 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_free"}
!1796 = !{!"branch_weights", i32 1157653, i32 239192}
!1797 = !{!"function_entry_count", i64 3811}
!1798 = !{!"tree-ssa-structalias.c:constraint_vec_find"}
!1799 = !{!"branch_weights", i32 631, i32 3182}
!1800 = !{!"branch_weights", i32 1490, i32 1693}
!1801 = !{!"branch_weights", i32 1469, i32 22}
!1802 = !{!"function_entry_count", i64 567885}
!1803 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_lower_bound"}
!1804 = !{!"branch_weights", i32 1, i32 567885}
!1805 = !{!"branch_weights", i32 214439, i32 679847}
!1806 = !{!"branch_weights", i32 567885, i32 326400}
!1807 = distinct !{!1807, !748}
!1808 = !{!"function_entry_count", i64 894284}
!1809 = !{!"tree-ssa-structalias.c:constraint_less"}
!1810 = !{!"branch_weights", i32 231811, i32 662475}
!1811 = !{!"branch_weights", i32 91795, i32 140017}
!1812 = !{!"function_entry_count", i64 539087}
!1813 = !{!"tree-ssa-structalias.c:VEC_constraint_t_heap_safe_insert"}
!1814 = !{!"function_entry_count", i64 1241951}
!1815 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_length"}
!1816 = !{!"branch_weights", i32 523917, i32 718036}
!1817 = !{!"function_entry_count", i64 1031012}
!1818 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_index"}
!1819 = !{!"function_entry_count", i64 136728}
!1820 = !{!"tree-ssa-structalias.c:constraint_equal"}
!1821 = !{!"branch_weights", i32 64407, i32 72323}
!1822 = !{!"function_entry_count", i64 209050}
!1823 = !{!"tree-ssa-structalias.c:constraint_expr_equal"}
!1824 = !{!"branch_weights", i32 -1051219131, i32 -1157873528}
!1825 = !{!"function_entry_count", i64 1217888}
!1826 = !{!"tree-ssa-structalias.c:constraint_expr_less"}
!1827 = !{!"branch_weights", i32 959866, i32 258024}
!1828 = !{!"branch_weights", i32 266346, i32 693521}
!1829 = !{!"tree-ssa-structalias.c:VEC_constraint_t_base_quick_insert"}
!1830 = !{!"function_entry_count", i64 2036747}
!1831 = !{!"tree-ssa-structalias.c:add_graph_edge"}
!1832 = !{!"branch_weights", i32 4289, i32 2032460}
!1833 = !{!"branch_weights", i32 402715, i32 1629746}
!1834 = !{!"branch_weights", i32 635543, i32 1396918}
!1835 = !{!"branch_weights", i32 -882511893, i32 304475947}
!1836 = !{!"tree-ssa-structalias.c:free_scc_info"}
!1837 = !{!"function_entry_count", i64 97459}
!1838 = !{!"tree-ssa-structalias.c:VEC_unsigned_heap_free"}
!1839 = !{!"branch_weights", i32 1110, i32 96351}
!1840 = !{!"function_entry_count", i64 560914}
!1841 = !{!"tree-ssa-structalias.c:insert_into_complex"}
!1842 = !{!"branch_weights", i32 135240, i32 425676}
!1843 = !{!"branch_weights", i32 109623, i32 25618}
!1844 = !{!"function_entry_count", i64 1660891}
!1845 = !{!"tree-ssa-structalias.c:scc_visit"}
!1846 = !{!"branch_weights", i32 1310563, i32 350330}
!1847 = !{!"branch_weights", i32 1, i32 350329}
!1848 = !{!"branch_weights", i32 1, i32 777391}
!1849 = !{!"branch_weights", i32 448618, i32 328774}
!1850 = !{!"branch_weights", i32 446881, i32 1738}
!1851 = !{!"branch_weights", i32 448618, i32 1}
!1852 = !{!"branch_weights", i32 760, i32 447859}
!1853 = !{!"branch_weights", i32 350329, i32 427062}
!1854 = distinct !{!1854, !748}
!1855 = !{!"branch_weights", i32 2142824919, i32 4658729}
!1856 = !{!"branch_weights", i32 1652667, i32 7467}
!1857 = !{!"branch_weights", i32 7038, i32 430}
!1858 = !{!"branch_weights", i32 1, i32 429}
!1859 = !{!"branch_weights", i32 430, i32 673}
!1860 = !{!"branch_weights", i32 429, i32 244}
!1861 = distinct !{!1861, !748}
!1862 = !{!"branch_weights", i32 430, i32 1}
!1863 = !{!"branch_weights", i32 652, i32 451}
!1864 = !{!"branch_weights", i32 430, i32 223}
!1865 = !{!"branch_weights", i32 429, i32 673}
!1866 = distinct !{!1866, !748}
!1867 = !{!"function_entry_count", i64 51471}
!1868 = !{!"tree-ssa-structalias.c:init_topo_info"}
!1869 = !{!1623, !726, i64 0}
!1870 = !{!"tree-ssa-structalias.c:compute_topo_order"}
!1871 = !{!"branch_weights", i32 1999020, i32 2275145}
!1872 = !{!"branch_weights", i32 638714, i32 1360307}
!1873 = !{!"branch_weights", i32 51471, i32 4222693}
!1874 = distinct !{!1874, !748}
!1875 = !{!"function_entry_count", i64 2900237}
!1876 = !{!"tree-ssa-structalias.c:eliminate_indirect_cycles"}
!1877 = !{!"branch_weights", i32 2898690, i32 1549}
!1878 = !{!"branch_weights", i32 97, i32 1453}
!1879 = !{!"branch_weights", i32 1, i32 1452}
!1880 = !{!"branch_weights", i32 325, i32 1128}
!1881 = !{!"branch_weights", i32 7482888, i32 1289304}
!1882 = !{!"branch_weights", i32 1, i32 1128}
!1883 = !{!"branch_weights", i32 1452, i32 6215}
!1884 = distinct !{!1884, !748}
!1885 = !{!"branch_weights", i32 1128, i32 0}
!1886 = distinct !{!1886, !748}
!1887 = !{!"function_entry_count", i64 571272}
!1888 = !{!"tree-ssa-structalias.c:do_complex_constraint"}
!1889 = !{!"branch_weights", i32 82984, i32 488290}
!1890 = !{!"branch_weights", i32 1, i32 82984}
!1891 = !{!"branch_weights", i32 6214, i32 -1878505364, i32 617833164}
!1892 = !{!"branch_weights", i32 388866, i32 1}
!1893 = !{!"branch_weights", i32 99425, i32 1}
!1894 = !{!"branch_weights", i32 33202, i32 66224}
!1895 = !{!"branch_weights", i32 66224, i32 1}
!1896 = !{!"function_entry_count", i64 924803}
!1897 = !{!"tree-ssa-structalias.c:set_union_with_increment"}
!1898 = !{!"branch_weights", i32 825380, i32 99425}
!1899 = !{!"tree-ssa-structalias.c:free_topo_info"}
!1900 = !{!"function_entry_count", i64 2918024}
!1901 = !{!"tree-ssa-structalias.c:topo_visit"}
!1902 = !{!"branch_weights", i32 1523183, i32 1394843}
!1903 = !{!"branch_weights", i32 1, i32 1394842}
!1904 = !{!"branch_weights", i32 2279312, i32 3335296}
!1905 = !{!"branch_weights", i32 1394842, i32 4219765}
!1906 = distinct !{!1906, !748}
!1907 = !{!"function_entry_count", i64 2579}
!1908 = !{!"tree-ssa-structalias.c:VEC_unsigned_base_iterate"}
!1909 = !{!"branch_weights", i32 1110, i32 1471}
!1910 = !{!"branch_weights", i32 1128, i32 344}
!1911 = !{!"function_entry_count", i64 82983}
!1912 = !{!"tree-ssa-structalias.c:do_ds_constraint"}
!1913 = !{!"branch_weights", i32 82984, i32 1}
!1914 = !{!"branch_weights", i32 81068, i32 1917}
!1915 = !{!"branch_weights", i32 80835, i32 2150}
!1916 = !{!"branch_weights", i32 773, i32 1378}
!1917 = !{!"branch_weights", i32 850, i32 529}
!1918 = !{!"branch_weights", i32 433, i32 97}
!1919 = !{!"branch_weights", i32 6011, i32 74825}
!1920 = !{!"branch_weights", i32 1, i32 80834}
!1921 = !{!"branch_weights", i32 73391, i32 156494}
!1922 = !{!"branch_weights", i32 126776, i32 29719}
!1923 = !{!"branch_weights", i32 21706, i32 8014}
!1924 = !{!"branch_weights", i32 3611, i32 4404}
!1925 = !{!"branch_weights", i32 148788, i32 81097}
!1926 = !{!"branch_weights", i32 25139, i32 123650}
!1927 = !{!"branch_weights", i32 15796, i32 9344}
!1928 = !{!"branch_weights", i32 1183875036, i32 963608612}
!1929 = !{!"branch_weights", i32 17015, i32 127675}
!1930 = !{!"branch_weights", i32 72350, i32 55326}
!1931 = !{!"branch_weights", i32 34873, i32 20454}
!1932 = !{!"branch_weights", i32 12072, i32 8383}
!1933 = !{!"branch_weights", i32 143529, i32 1161}
!1934 = !{!"branch_weights", i32 110, i32 1052}
!1935 = !{!"branch_weights", i32 80834, i32 149050}
!1936 = distinct !{!1936, !748}
!1937 = !{!"function_entry_count", i64 388865}
!1938 = !{!"tree-ssa-structalias.c:do_sd_constraint"}
!1939 = !{!"branch_weights", i32 381075, i32 7792}
!1940 = !{!"branch_weights", i32 14380, i32 366696}
!1941 = !{!"branch_weights", i32 1, i32 381074}
!1942 = !{!"branch_weights", i32 -2035288453, i32 60590451}
!1943 = !{!"branch_weights", i32 -1974698001, i32 146844898}
!1944 = !{!"branch_weights", i32 1175329448, i32 972154200}
!1945 = !{!"branch_weights", i32 848308, i32 96760}
!1946 = !{!"branch_weights", i32 263714, i32 584595}
!1947 = !{!"branch_weights", i32 69766, i32 514830}
!1948 = !{!"branch_weights", i32 936064, i32 9004}
!1949 = !{!"branch_weights", i32 1363, i32 7642}
!1950 = !{!"branch_weights", i32 381074, i32 587917}
!1951 = distinct !{!1951, !748}
!1952 = !{!"branch_weights", i32 374359725, i32 1773123923}
!1953 = !{!"branch_weights", i32 319829, i32 1249}
!1954 = !{!"function_entry_count", i64 89449}
!1955 = !{!"tree-ssa-structalias.c:solution_set_expand"}
!1956 = !{!"branch_weights", i32 1, i32 89449}
!1957 = !{!"branch_weights", i32 292528334, i32 -2043573079}
!1958 = !{!"branch_weights", i32 3599, i32 34636}
!1959 = !{!"branch_weights", i32 89449, i32 243040}
!1960 = distinct !{!1960, !748}
!1961 = !{!"branch_weights", i32 2061080143, i32 86403505}
!1962 = !{!"branch_weights", i32 1, i32 3598}
!1963 = !{!"branch_weights", i32 1, i32 8728}
!1964 = !{!"branch_weights", i32 8728, i32 39395}
!1965 = distinct !{!1965, !748}
!1966 = !{!"branch_weights", i32 3598, i32 5131}
!1967 = distinct !{!1967, !748}
!1968 = !{!"function_entry_count", i64 99424}
!1969 = !{!"tree-ssa-structalias.c:solution_set_add"}
!1970 = !{!"branch_weights", i32 69061, i32 30365}
!1971 = !{!"branch_weights", i32 1, i32 30364}
!1972 = !{!"branch_weights", i32 212819837, i32 -2107528436}
!1973 = !{!"branch_weights", i32 13, i32 7131}
!1974 = !{!"branch_weights", i32 5, i32 9}
!1975 = !{!"branch_weights", i32 1222, i32 5922}
!1976 = !{!"branch_weights", i32 4092, i32 1831}
!1977 = !{!"branch_weights", i32 30364, i32 50186}
!1978 = distinct !{!1978, !748}
!1979 = !{!"function_entry_count", i64 788701}
!1980 = !{!"tree-ssa-structalias.c:set_uids_in_ptset"}
!1981 = !{!"branch_weights", i32 1, i32 788701}
!1982 = !{!"branch_weights", i32 -1688735155, i32 749373439}
!1983 = !{!"branch_weights", i32 220253464, i32 -1340686936, i32 3420824, i32 7216}
!1984 = !{!"branch_weights", i32 179079, i32 230736}
!1985 = !{!"branch_weights", i32 788701, i32 1183061}
!1986 = distinct !{!1986, !748}
!1987 = !{!"tree-ssa-structalias.c:shared_bitmap_lookup"}
!1988 = !{!"function_entry_count", i64 34277}
!1989 = !{!"tree-ssa-structalias.c:shared_bitmap_add"}
!1990 = !{!"branch_weights", i32 34278, i32 1}
!1991 = !{!"tree-ssa-structalias.c:VEC_varinfo_t_heap_free"}
!1992 = !{!"function_entry_count", i64 15616}
!1993 = !{!"tree-ssa-structalias.c:gate_tree_pta"}
!1994 = !{!"function_entry_count", i64 1}
!1995 = !{!"tree-ssa-structalias.c:gate_ipa_pta"}
!1996 = !{!"branch_weights", i32 2, i32 7}
!1997 = !{!"tree-ssa-structalias.c:ipa_pta_execute"}
!1998 = !{!1999, !726, i64 0}
!1999 = !{!"cgraph_node", !726, i64 0, !726, i64 8, !726, i64 16, !726, i64 24, !726, i64 32, !726, i64 40, !726, i64 48, !726, i64 56, !726, i64 64, !726, i64 72, !726, i64 80, !726, i64 88, !726, i64 96, !726, i64 104, !726, i64 112, !726, i64 120, !726, i64 128, !726, i64 136, !2000, i64 144, !2002, i64 184, !2003, i64 224, !2004, i64 232, !2005, i64 256, !734, i64 288, !733, i64 296, !733, i64 300, !733, i64 304, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 308, !733, i64 309, !733, i64 309}
!2000 = !{!"cgraph_local_info", !726, i64 0, !2001, i64 8, !733, i64 32, !733, i64 32, !733, i64 32, !733, i64 32, !733, i64 32, !733, i64 32, !733, i64 32, !733, i64 32}
!2001 = !{!"inline_summary", !734, i64 0, !733, i64 8, !733, i64 12, !733, i64 16, !733, i64 20}
!2002 = !{!"cgraph_global_info", !734, i64 0, !734, i64 8, !726, i64 16, !733, i64 24, !733, i64 28, !733, i64 32, !727, i64 36}
!2003 = !{!"cgraph_rtl_info", !733, i64 0}
!2004 = !{!"cgraph_clone_info", !726, i64 0, !726, i64 8, !726, i64 16}
!2005 = !{!"cgraph_thunk_info", !734, i64 0, !734, i64 8, !726, i64 16, !727, i64 24, !727, i64 25, !727, i64 26}
!2006 = !{!1999, !726, i64 96}
!2007 = distinct !{!2007, !748}
!2008 = distinct !{!2008, !748}
!2009 = distinct !{!2009, !748}
!2010 = distinct !{!2010, !748}
!2011 = distinct !{!2011, !748}
!2012 = !{!"tree-ssa-structalias.c:create_function_info_for"}
!2013 = distinct !{!2013, !748}
!2014 = !{!"tree-ssa-structalias.c:count_num_arguments"}
!2015 = distinct !{!2015, !748}
!2016 = distinct !{!2016, !748}
!2017 = !{!"tree-ssa-structalias.c:insert_into_field_list_sorted"}
!2018 = distinct !{!2018, !748}
